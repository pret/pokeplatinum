#include <nitroWiFi/socl.h>

static int SOCLi_CloseCallBack(void * arg);
static void SOCLi_FreeCommandPipe(SOCLiSocketCommandPipe * pipe);

int SOCL_IsClosed (int s) {
    SOCLSocket * socket = (SOCLSocket *)s;

    if ((int)socket >= 0 && SOCL_SocketIsInvalid(socket) && !SOCL_SocketIsInTrash(socket)) {
        return TRUE;
    }

    return FALSE;
}

int SOCL_Close (int s) {
    SOCLSocket * socket = (SOCLSocket *)s;
    SOCLiCommandPacket * command;

    if ((int)socket <= 0) {
        return SOCL_EINVAL;
    }

    if (SOCL_SocketIsInTrash(socket)) {
        return SOCL_EINPROGRESS;
    }

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_ESUCCESS;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsWaitingClose(socket)) {
        return SOCL_EINPROGRESS;
    }

    socket->state |= (SOCL_STATUS_CLOSING | SOCL_STATUS_WAIT_CLOSE);

    if (SOCL_SocketIsTCP(socket)) {
        (void)SOCLi_SendCommandPacket(&socket->send_pipe->h, NULL);
    }

    command = SOCLi_CreateCommandPacket(SOCLi_CloseCallBack, socket, SOCL_FLAGBLOCK_BLOCK);
    command->h.response = NULL;
    (void)SOCLi_SendCommandPacketToCtrlPipe(socket, command);

    return SOCL_ESUCCESS;
}

static int SOCLi_CloseCallBack (void * arg) {
    SOCLiCommandClose * cpacket = (SOCLiCommandClose *)arg;
    SOCLSocket * socket = (SOCLSocket *)cpacket->h.socket;
    OSIntrMode enable;

    if (SOCL_SocketIsTCP(socket)) {
        OS_JoinThread(&socket->send_pipe->h.thread);

        CPS_TcpShutdown();
        CPS_TcpClose();
        CPS_SocRelease();
    }

    CPS_SocUnRegister();

    socket->state &= ~(SOCL_STATUS_CONNECTING | SOCL_STATUS_CONNECTED);

    (void)SOCLi_SendCommandPacket(SOCL_SocketIsUDPSend(socket) ? &socket->send_pipe->h : &socket->recv_pipe->h, NULL);

    enable = OS_DisableInterrupts();
    SOCLi_SocketUnregister(socket);
    SOCLi_SocketRegisterTrash(socket);
    (void)OS_RestoreInterrupts(enable);

    socket->state |= SOCL_STATUS_WAIT_RELEASE;

    return SOCL_ESUCCESS;
}

void SOCLi_CleanupSocket (SOCLSocket * socket) {
    OSIntrMode enable;

    if (socket) {
        socket->state = 0;

        if (SOCL_SocketIsTCP(socket)) {
            SOCLi_FreeCommandPipe(&socket->send_pipe->h);
            SOCLi_FreeCommandPipe(&socket->recv_pipe->h);
        } else if (SOCL_SocketIsUDP(socket)) {
            SOCLiSocketUdpData * udpdata = socket->recv_pipe->udpdata.out;
            SOCLiSocketUdpData * udpdata_next;

            while (udpdata) {
                udpdata_next = udpdata->next;
                SOCLi_Free(udpdata);
                udpdata = udpdata_next;
            }

            socket->recv_pipe->udpdata.size = 0;
            socket->recv_pipe->udpdata.in = NULL;
            socket->recv_pipe->udpdata.out = NULL;
            OS_WakeupThread(&socket->recv_pipe->udpdata.waiting);

            SOCLi_FreeCommandPipe(&socket->recv_pipe->h);
        } else if (SOCL_SocketIsUDPSend(socket)) {
            SOCLi_FreeCommandPipe(&socket->send_pipe->h);
        }

        enable = OS_DisableInterrupts();
        SOCLi_SocketUnregister(socket);
        SOCLi_SocketUnregisterTrash(socket);

#ifdef SDK_DEBUG
        MI_CpuFill8(socket, 0xaa, sizeof(*socket));
#endif

        SOCLi_Free(socket);
        (void)OS_RestoreInterrupts(enable);
    }

    return;
}

static void SOCLi_FreeCommandPipe (SOCLiSocketCommandPipe * pipe) {
    SOCLiCommandPacket * command;
    OSIntrMode enable;

    if (pipe == NULL) {
        return;
    }

    SDK_ASSERT(OS_GetCurrentThread() != &pipe->thread);

    OS_JoinThread(&pipe->thread);

    enable = OS_DisableInterrupts();
    (void)OS_DisableScheduler();

    while (OS_ReceiveMessage(&pipe->queue, (void *)&command, OS_MESSAGE_NOBLOCK)) {
        if (command) {
            if (command->h.response) {
                (void)OS_SendMessage(command->h.response, (void *)SOCL_ECANCELED, OS_MESSAGE_NOBLOCK);
            }

            SOCLi_FreeCommandPacket(command);
        }
    }

    (void)OS_EnableScheduler();
    OS_RescheduleThread();
    (void)OS_RestoreInterrupts(enable);

    return;
}

void SOCLi_TrashSocket (void) {
    OSIntrMode enable = OS_DisableInterrupts();

    while (SOCLiSocketListTrash != NULL) {
        SOCLi_CleanupSocket(SOCLiSocketListTrash);
    }
    (void)OS_RestoreInterrupts(enable);
}
