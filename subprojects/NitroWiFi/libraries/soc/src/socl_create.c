#include <nitroWiFi/socl.h>

static int SOCLi_CreateSocketCallBack(void * arg);

static SOCLSocket * SOCLi_StartupSocket(const SOCLSocketParam * param);
static u32 SOCLi_GetSizeSocket(const SOCLSocketParam * param);
static u32 SOCLi_GetSizeCommandPipe(const SOCLSocketCommandPipeParam * param);
static u8 * SOCLi_InitSocket(SOCLSocket * socket, const SOCLSocketParam * param);
static u8 * SOCLi_InitSocketBuffer(u8 * ptr, CPSSocBuf * buf, u32 size);
static u8 * SOCLi_InitCommandPipe(u8 * ptr, SOCLiSocketCommandPipe * pipe, const SOCLSocketCommandPipeParam * param);

int SOCL_CreateSocket (const SOCLSocketParam * param) {
    SOCLSocket * socket;
    SOCLiCommandPacket * command;
    s32 result;

    SDK_ASSERT(param != NULL);

    socket = SOCLi_StartupSocket(param);
    if (socket == NULL) {
        return SOCL_ENOMEM;
    }

    command = SOCLi_CreateCommandPacket(SOCLi_CreateSocketCallBack, socket, OS_MESSAGE_BLOCK);

    result = SOCLi_ExecCommandPacketInCtrlPipe(socket, command);
    SDK_ASSERT(result >= 0);

    return (int)socket;
}

static int SOCLi_CreateSocketCallBack (void * arg) {
    SOCLiCommandCreateSocket * cpacket = (SOCLiCommandCreateSocket *)arg;
    SOCLSocket * socket = cpacket->h.socket;
    SOCLiSocketSendCommandPipe * send_pipe;
    SOCLiSocketRecvCommandPipe * recv_pipe;

    SDK_ASSERT(socket);
#ifdef SDK_MY_DEBUG
    OS_TPrintf("CPS_SocRegister\n");
#endif
    CPS_SocRegister(&socket->cps_socket);

    send_pipe = socket->send_pipe;
    recv_pipe = socket->recv_pipe;

    switch (socket->flag_mode) {
    case SOCL_FLAGMODE_TCP:
    case SOCL_FLAGMODE_SSL:
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocDup\n");
        OS_TPrintf("CPS_SocUse\n");
#endif
        CPS_SocDup(&send_pipe->h.thread);
        CPS_SocUse();
        break;

    case SOCL_FLAGMODE_UDP:
        CPS_SocUse();
        CPS_SocDatagramMode();
        CPS_SetUdpCallback(SOCLi_UdpRecvCallback);
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocUse\n");
        OS_TPrintf("CPS_SocDatagramMode\n");
        OS_TPrintf("CPS_SetUdpCallback\n");
#endif
        break;

    case SOCL_FLAGMODE_UDPSEND:
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocDatagramMode\n");
#endif
        CPS_SocDatagramMode();
        break;

    case SOCL_FLAGMODE_ICMP:
    default:
        SDK_ASSERT(0);
        break;
    }

    socket->state = SOCL_STATUS_CREATE;

    return SOCL_ESUCCESS;
}

static SOCLSocket * SOCLi_StartupSocket (const SOCLSocketParam * param) {
    SOCLSocket * socket;
    u32 size;
    OSIntrMode enable;

    size = SOCLi_GetSizeSocket(param);

    enable = OS_DisableInterrupts();
    socket = SOCLi_Alloc(size);

    if (socket) {
        MI_CpuClear8(socket, size);

        (void)SOCLi_InitSocket(socket, param);

        SOCLi_SocketRegister(socket);
    }

    (void)OS_RestoreInterrupts(enable);

    return socket;
}

static u32 SOCLi_GetSizeSocket (const SOCLSocketParam * param) {
    u32 size;

    size = SOCLi_ROUNDUP4(sizeof(SOCLSocket));

    if (param->buffer.rcvbuf_size) {
        size += SOCLi_ROUNDUP4(sizeof(SOCLiSocketRecvCommandPipe));
        size += SOCLi_RoundUp4(param->buffer.rcvbuf_size);
        size += SOCLi_RoundUp4(param->buffer.linbuf_size);
        size += SOCLi_GetSizeCommandPipe(&param->recv_pipe);
    }

    if (param->buffer.sndbuf_size) {
        size += SOCLi_ROUNDUP4(sizeof(SOCLiSocketSendCommandPipe));
        size += SOCLi_RoundUp4(param->buffer.sndbuf_size);
        size += SOCLi_RoundUp4(param->buffer.outbuf_size);
        size += SOCLi_RoundUp4(param->buffer.wrtbuf_size);
        size += SOCLi_GetSizeCommandPipe(&param->send_pipe);
    }

    return size;
}

static u32 SOCLi_GetSizeCommandPipe (const SOCLSocketCommandPipeParam * param) {
    u32 size;

    size = SOCLi_RoundUp4(param->queue_max * sizeof(OSMessage));
    size += SOCLi_RoundUp4(param->stack_size);

    return size;
}

static u8 * SOCLi_InitSocket (SOCLSocket * socket, const SOCLSocketParam * param) {
    u8 * ptr;
    CPSSoc * cps = &socket->cps_socket;

    socket->flag_mode = param->flag_mode;
    socket->flag_block = param->flag_block;

    ptr = (u8 *)socket;
    ptr = ptr + SOCLi_ROUNDUP4(sizeof(SOCLSocket));

    if (param->buffer.rcvbuf_size) {
        SOCLiSocketRecvCommandPipe * pipe = (SOCLiSocketRecvCommandPipe *)ptr;

        socket->recv_pipe = pipe;
        pipe->consumed_min = param->buffer.rcvbuf_consume_min;
        ptr += SOCLi_ROUNDUP4(sizeof(SOCLiSocketRecvCommandPipe));
        ptr = SOCLi_InitCommandPipe(ptr, &pipe->h, &param->recv_pipe);

        ptr = SOCLi_InitSocketBuffer(ptr, &cps->rcvbuf, param->buffer.rcvbuf_size);
        ptr = SOCLi_InitSocketBuffer(ptr, &cps->linbuf, param->buffer.linbuf_size);

        pipe->udpdata.size_max = param->buffer.udpbuf_size;
        OS_InitThreadQueue(&pipe->udpdata.waiting);
    }

    if (param->buffer.sndbuf_size) {
        SOCLiSocketSendCommandPipe * pipe = (SOCLiSocketSendCommandPipe *)ptr;

        socket->send_pipe = pipe;
        pipe->exe_socket = socket;
        ptr += SOCLi_ROUNDUP4(sizeof(SOCLiSocketSendCommandPipe));
        ptr = SOCLi_InitCommandPipe(ptr, &pipe->h, &param->send_pipe);

        ptr = SOCLi_InitSocketBuffer(ptr, &cps->sndbuf, param->buffer.sndbuf_size);
        ptr = SOCLi_InitSocketBuffer(ptr, &cps->outbuf, param->buffer.outbuf_size);
        ptr = SOCLi_InitSocketBuffer(ptr, &pipe->buffer.area, param->buffer.wrtbuf_size);
        OS_InitThreadQueue(&pipe->buffer.waiting);
    } else {
        socket->send_pipe = ((SOCLSocket *)SOCLiUDPSendSocket)->send_pipe;
    }

    return ptr;
}

static u8 * SOCLi_InitSocketBuffer (u8 * ptr, CPSSocBuf * buf, u32 size) {
    buf->data = size ? ptr : NULL;
    buf->size = size;
    return ptr + SOCLi_RoundUp4(size);
}

static u8 * SOCLi_InitCommandPipe (u8 * ptr, SOCLiSocketCommandPipe * pipe, const SOCLSocketCommandPipeParam * param) {
    OSMessage * messages;
    u8 * stack_bottom;

    messages = (OSMessage *)ptr;
    stack_bottom = ptr + SOCLi_GetSizeCommandPipe(param);

    OS_InitMessageQueue(&pipe->queue, messages, param->queue_max);

    OS_InitMutex(&pipe->in_use);

    OS_CreateThread(&pipe->thread, SOCLi_CommandPacketHandler, pipe, stack_bottom, param->stack_size, param->priority);
    OS_WakeupThreadDirect(&pipe->thread);

    return stack_bottom;
}
