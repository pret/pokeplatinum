#include <nitroWiFi/soc.h>

static OSMessage * SOCLiCommandPackets;
static OSMessageQueue SOCLiCommandPacketQueue;

int SOCLi_StartupCommandPacketQueue (s32 cp_max_count) {
    SOCLiCommandPacket * cp_array;
    u32 cp_array_size;
    OSMessage * cp_message_array;
    u32 cp_message_size;

    SDK_ASSERT(cp_max_count > 0);

    cp_message_size = MATH_ROUNDUP(cp_max_count * sizeof(OSMessage), 4);
    cp_array_size = MATH_ROUNDUP(cp_max_count * sizeof(SOCLiCommandPacket), 4);
    cp_message_array = (OSMessage *)SOCLi_Alloc(cp_array_size + cp_message_size);

    if (NULL == cp_message_array) {
        return -1;
    }

    OS_InitMessageQueue(&SOCLiCommandPacketQueue, cp_message_array, cp_max_count);

    cp_array = (SOCLiCommandPacket *)((u32)cp_message_array + cp_message_size);

    while (cp_max_count > 0) {
        SOCLi_FreeCommandPacket(cp_array);

        cp_array++;
        cp_max_count--;
    }

    SOCLiCommandPackets = cp_message_array;
    return 0;
}

int SOCLi_CleanupCommandPacketQueue (void) {
    if (!OS_IsMessageQueueFull(&SOCLiCommandPacketQueue)) {
        return -1;
    }

    SOCLi_Free(SOCLiCommandPackets);
    SOCLiCommandPackets = NULL;
    return 0;
}

SOCLiCommandPacket * SOCLi_AllocCommandPacket (s32 flag) {
    SOCLiCommandPacket * cp;

    return (OS_ReceiveMessage(&SOCLiCommandPacketQueue, (void *)&cp, flag) ? cp : NULL);
}

SOCLiCommandPacket * SOCLi_CreateCommandPacket (SOCLiCommandHandler handler, SOCLSocket * socket, s32 flag) {
    SOCLiCommandPacket * cp;

    cp = SOCLi_AllocCommandPacket(flag);

    if (cp) {
        cp->h.handler = handler;
        cp->h.socket = socket;
        cp->h.response = NULL;
        cp->h.flag_mode = socket->flag_mode;
        cp->h.flag_block = (s8)flag;
    }

    return cp;
}

void SOCLi_FreeCommandPacket (SOCLiCommandPacket * command) {
    if (command) {
        (void)OS_SendMessage(&SOCLiCommandPacketQueue, command, OS_MESSAGE_NOBLOCK);
    }
}

SOCLiSocketCommandPipe * SOCLi_GetCtrlPipe (SOCLSocket * socket) {
    return (socket->recv_pipe) ? &socket->recv_pipe->h : &socket->send_pipe->h;
}

int SOCLi_SendCommandPacket (SOCLiSocketCommandPipe * pipe, SOCLiCommandPacket * command) {
    s32 result;
    s32 flag_block;

    SDK_ASSERT(pipe);

    flag_block = (command && !SOCL_FLAGISBLOCK(command->h.flag_block)) ? OS_MESSAGE_NOBLOCK : OS_MESSAGE_BLOCK;
    result = OS_SendMessage(&pipe->queue, command, flag_block);

    if (!result) {
        SOCLi_FreeCommandPacket(command);
    }

    return result ? SOCL_ESUCCESS : SOCL_ENOBUFS;
}

int SOCLi_SendCommandPacketToCtrlPipe (SOCLSocket * socket, SOCLiCommandPacket * command) {
    SOCLiSocketCommandPipe * pipe = SOCLi_GetCtrlPipe(socket);

    SDK_ASSERT(pipe);
    return SOCLi_SendCommandPacket(pipe, command);
}

int SOCLi_ExecCommandPacket (SOCLiSocketCommandPipe * pipe, SOCLiCommandPacket * command) {
    s32 result;

    SDK_ASSERT(pipe);
    SDK_ASSERT(command);

    if (command->h.flag_block == OS_MESSAGE_BLOCK) {
        OSMessage response;
        OSMessageQueue response_queue;

        OS_InitMessageQueue(&response_queue, &response, 1);
        command->h.response = &response_queue;

        (void)SOCLi_SendCommandPacket(pipe, command);
        (void)OS_ReceiveMessage(&response_queue, (void * *)&result, OS_MESSAGE_BLOCK);
    } else {
        command->h.response = NULL;
        result = SOCLi_SendCommandPacket(pipe, command);
    }

    return result;
}

int SOCLi_ExecCommandPacketInRecvPipe (SOCLSocket * socket, SOCLiCommandPacket * command) {
    SOCLiSocketRecvCommandPipe * pipe = socket->recv_pipe;

    SDK_ASSERT(pipe);
    return SOCLi_ExecCommandPacket(&pipe->h, command);
}

int SOCLi_ExecCommandPacketInSendPipe (SOCLSocket * socket, SOCLiCommandPacket * command) {
    SOCLiSocketSendCommandPipe * pipe = socket->send_pipe;

    SDK_ASSERT(pipe);
    return SOCLi_ExecCommandPacket(&pipe->h, command);
}

int SOCLi_ExecCommandPacketInCtrlPipe (SOCLSocket * socket, SOCLiCommandPacket * command) {
    SOCLiSocketCommandPipe * pipe = SOCLi_GetCtrlPipe(socket);

    SDK_ASSERT(pipe);
    return SOCLi_ExecCommandPacket(pipe, command);
}

void SOCLi_CommandPacketHandler (void * arg) {
    SOCLiSocketCommandPipe * cpipe = (SOCLiSocketCommandPipe *)arg;
    SOCLiCommandPacket * command;
    OSIntrMode enable;
    s32 result;

    while (1) {
        (void)OS_ReadMessage(&cpipe->queue, (void *)&command, OS_MESSAGE_BLOCK);

        if (command) {
            result = command->h.handler(command);

            enable = OS_DisableInterrupts();
            (void)OS_DisableScheduler();
            (void)OS_ReceiveMessage(&cpipe->queue, (void *)NULL, OS_MESSAGE_NOBLOCK);

            if (command->h.socket) {
                command->h.socket->result = result;
            }

            if (command->h.response) {
                (void)OS_SendMessage(command->h.response, (void *)result, OS_MESSAGE_NOBLOCK);
            }

            SOCLi_FreeCommandPacket(command);
            (void)OS_EnableScheduler();
            (void)OS_RestoreInterrupts(enable);
        } else {
            break;
        }
    }

    return;
}
