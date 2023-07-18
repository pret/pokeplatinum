#include <nitroWiFi/socl.h>

static int SOCLi_ReadAndConsumeBuffer(SOCLSocket *, void *, int, u16 *, SOCLInAddr *, s32, s32);
static int SOCLi_ReadBuffer(SOCLSocket *, void *, int, u16 *, SOCLInAddr *, s32);
static int SOCLi_ReadUdpBuffer(SOCLSocket *, void *, int, u16 *, SOCLInAddr *, s32);
static int SOCLi_CopyCPSBuffer(SOCLSocket *, void *, int, u16 *, SOCLInAddr *);
static u8 * SOCLi_ReadCPSBuffer(SOCLSocket *, s32 *, u16 *, u16 *, SOCLInAddr *);
static int SOCLi_ExecReadCommand(SOCLSocket *, void *, int, u16 *, SOCLInAddr *);
static int SOCLi_ReadCallBack(void *);
static int SOCLi_ConsumeBuffer(SOCLSocket *);
static int SOCLi_ConsumeCallBack(void *);
static int SOCLi_ConsumeCPSBuffer(SOCLSocket *);

u32 SOCLi_CheckCount[SOCL_CHECKCOUNT_MAX] = {0};

int SOCL_Read (int s, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip) {
    return SOCL_ReadFrom(s, buffer, buffer_len, remote_port, remote_ip, 0);
}

int SOCL_ReadNoBlock (int s, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip) {
    return SOCL_ReadFrom(s, buffer, buffer_len, remote_port, remote_ip, SOCL_MSG_DONTWAIT);
}

int SOCL_ReadBlock (int s, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip) {
    return SOCL_ReadFrom(s, buffer, buffer_len, remote_port, remote_ip, 0);
}

int SOCL_ReadFrom (int s, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip, int flags) {
    SOCLSocket * socket = (SOCLSocket *)s;
    SOCLiSocketRecvCommandPipe * recv_pipe;
    int flag_block;
    int result;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if ((flags & SOCL_MSG_DONTWAIT) || SOCL_SocketIsNoBlock(socket)) {
        if (SOCL_SocketIsSSL(socket)) {
            return SOCL_EINVAL;
        }

        flag_block = SOCL_FLAGBLOCK_NOBLOCK;
    } else {
        if (OS_GetProcMode() == OS_PROCMODE_IRQ) {
            return SOCL_EINVAL;
        }

        flag_block = SOCL_FLAGBLOCK_BLOCK;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsTCP(socket) && (!SOCL_SocketIsConnected(socket) || SOCL_SocketIsClosing(socket))) {
        return SOCL_ENOTCONN;
    }

    SDK_ASSERT(buffer && buffer_len);
    recv_pipe = socket->recv_pipe;
    SDK_ASSERT(recv_pipe);
    if (!SOCL_FLAGISBLOCK(flag_block)) {
        if (!OS_TryLockMutex(&recv_pipe->h.in_use)) {
            return SOCL_EWOULDBLOCK;
        }
    } else {
        OS_LockMutex(&recv_pipe->h.in_use);
    }

    result = SOCLi_ReadAndConsumeBuffer(socket, buffer, buffer_len, remote_port, remote_ip, flag_block, flags);

    OS_UnlockMutex(&recv_pipe->h.in_use);
    return result;
}

static int SOCLi_ReadAndConsumeBuffer (SOCLSocket * socket, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip, s32 flag_block, s32 flags) {
    SOCLiSocketRecvCommandPipe * recv_pipe = socket->recv_pipe;
    BOOL is_noconsumed = ((flags & SOCL_MSG_PEEK) && recv_pipe);
    int result;
    s8 flag_noconsume;

    if (is_noconsumed) {
        flag_noconsume = recv_pipe->flag_noconsume;
        recv_pipe->flag_noconsume = TRUE;
    }

    if (SOCL_SocketIsUDP(socket)) {
        result = SOCLi_ReadUdpBuffer(socket, buffer, buffer_len, remote_port, remote_ip, flag_block);
    } else {
        result = SOCLi_ReadBuffer(socket, buffer, buffer_len, remote_port, remote_ip, flag_block);

        if (result >= 0) {
            (void)SOCLi_ConsumeBuffer(socket);
        }
    }

    if (is_noconsumed) {
        recv_pipe->flag_noconsume = flag_noconsume;
    }

    return result;
}

static int SOCLi_ReadBuffer (SOCLSocket * socket, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip, s32 flag_block) {
    int result;

#ifdef SDK_MY_DEBUG
    OS_TPrintf("\n===\nReadBuffer.buffer                 =%d-%d %d\n", buffer, (u32)buffer + buffer_len, buffer_len);
#endif

    if (SOCL_SocketIsSSL(socket)) {
        result = SOCLi_ExecReadCommand(socket, buffer, buffer_len, remote_port, remote_ip);
        return result;
    }

    result = SOCLi_CopyCPSBuffer(socket, buffer, buffer_len, remote_port, remote_ip);

    if (result == SOCL_EWOULDBLOCK && SOCL_FLAGISBLOCK(flag_block)) {
        result = SOCLi_ExecReadCommand(socket, buffer, buffer_len, remote_port, remote_ip);
    }

    return result;
}

static int SOCLi_CopyCPSBuffer (SOCLSocket * socket, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip) {
    OSIntrMode enable;
    SOCLiSocketRecvCommandPipe * recv_pipe;
    u8 * cpsbuffer;
    s32 cpsbuffer_len;
    s32 copy_len;
    s32 consume_len;
    u16 my_port;
    u16 his_port;
    SOCLInAddr his_ip;
    int result = 0;

    SDK_ASSERT(buffer && buffer_len > 0);

    enable = OS_DisableInterrupts();
    {
        cpsbuffer = SOCLi_ReadCPSBuffer(socket, &cpsbuffer_len, &my_port, &his_port, &his_ip);

        if (cpsbuffer) {
            if (cpsbuffer_len == 0) {
                result = SOCL_EWOULDBLOCK;
            } else {
                copy_len = MATH_MIN(buffer_len, cpsbuffer_len);
                consume_len = SOCL_SocketIsTCP(socket) ? copy_len : cpsbuffer_len;

                MI_CpuCopy8(cpsbuffer, buffer, (u32)copy_len);
#ifdef SDK_MY_DEBUG
                OS_TPrintf("MI_CPUCOPY    .buffer             =%d-%d %d\n", buffer, (u32)buffer + copy_len, copy_len);
                OS_TPrintf("              .copy_len           =%d\n", copy_len);
#endif
                recv_pipe = socket->recv_pipe;
                SDK_ASSERT(recv_pipe);
                if (!recv_pipe->flag_noconsume) {
                    recv_pipe->consumed += consume_len;
                }

#ifdef SDK_MY_DEBUG
                OS_TPrintf("              .recv_pipe->consumed=%d\n", recv_pipe->consumed);
#endif
                result = (int)consume_len;
            }
        } else {
            if (cpsbuffer_len == 0) {
                result = 0;
            } else {
                result = SOCL_EINVAL;
            }

            socket->state &= ~(SOCL_STATUS_CONNECTING | SOCL_STATUS_CONNECTED);
        }

        if (result >= 0) {
            if (remote_port && remote_ip) {
                *remote_port = his_port;
                *remote_ip = his_ip;
            }

            if (socket->local_port == 0) {
                socket->local_port = my_port;
            }
        }
    }
    (void)OS_RestoreInterrupts(enable);

    return result;
}

static u8 * SOCLi_ReadCPSBuffer (SOCLSocket * socket, s32 * buffer_len, u16 * local_port, u16 * remote_port, SOCLInAddr * remote_ip) {
    SOCLiSocketRecvCommandPipe * recv_pipe;
    CPSSoc * cpsoc;
    s32 consumed;
    s32 len;

    recv_pipe = socket->recv_pipe;
    cpsoc = (CPSSoc *)OSi_GetSpecificData(&recv_pipe->h.thread, OSi_SPECIFIC_CPS);

    consumed = recv_pipe->consumed;
    len = (s32)cpsoc->rcvbufp - consumed;

    if (len >= 0) {
        (*local_port) = cpsoc->local_port;
        (*remote_port) = cpsoc->remote_port;
        (*remote_ip) = (SOCLInAddr)cpsoc->remote_ip;
        (*buffer_len) = len;

        if (len == 0 && cpsoc->state != CPS_STT_ESTABLISHED) {
            return NULL;
        }
    } else {
        (*buffer_len) = -1;
        return NULL;
    }

    return ((u8 *)cpsoc->rcvbuf.data) + consumed;
}

static int SOCLi_ExecReadCommand (SOCLSocket * socket, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip) {
    SOCLiCommandPacket * command;
    s32 result;

    command = SOCLi_CreateCommandPacket(SOCLi_ReadCallBack, socket, SOCL_FLAGBLOCK_BLOCK);
    SDK_ASSERT(command);

    command->read.buffer = buffer;
    command->read.buffer_len = buffer_len;
    command->read.remote_port = remote_port;
    command->read.remote_ip = remote_ip;

    result = SOCLi_ExecCommandPacketInRecvPipe(socket, command);

    return result;
}

static int SOCLi_ReadCallBack (void * arg) {
    SOCLiCommandRead * cpacket = (SOCLiCommandRead *)arg;
    SOCLSocket * socket = cpacket->h.socket;
    SOCLiSocketRecvCommandPipe * recv_pipe = socket->recv_pipe;
    u8 * buffer = cpacket->buffer;
    s32 buffer_len = cpacket->buffer_len;
    u16 * remote_port = cpacket->remote_port;
    SOCLInAddr * remote_ip = cpacket->remote_ip;
    u8 * cpsbuffer;
    u32 cpsbuffer_len;
    s32 consumed;
    int result;

    consumed = recv_pipe->consumed;
    for (;;) {
        cpsbuffer = CPS_SocRead(&cpsbuffer_len);
        if (cpsbuffer == NULL || (s32)cpsbuffer_len - consumed > 0) {
            break;
        }

        if (SOCL_SocketIsTCP(socket) && socket->cps_socket.state != CPS_STT_ESTABLISHED) {
            cpsbuffer = NULL;
            break;
        }

        OS_Sleep(10);
    }

    if (SOCL_SocketIsReset(socket)) {
        return SOCL_ECONNRESET;
    }

    if (SOCL_SocketIsSSL(socket)) {
        u32 len;

        if (cpsbuffer == NULL) {
            return 0;
        }

        len = MATH_MIN(buffer_len, cpsbuffer_len);
        MI_CpuCopy8(cpsbuffer, buffer, len);
        CPS_SocConsume(len);
        return (int)len;
    }

    if (cpsbuffer) {
        result = SOCLi_CopyCPSBuffer(socket, buffer, buffer_len, remote_port, remote_ip);
    } else {
        result = 0;
    }

    if (result <= 0) {
        return result;
    }

    SDK_ASSERT(recv_pipe->consumed_min > 0);
    if (recv_pipe->consumed >= (s32)recv_pipe->consumed_min) {
        (void)SOCLi_ConsumeCPSBuffer(socket);
    }

    return result;
}

static int SOCLi_ConsumeBuffer (SOCLSocket * socket) {
    SOCLiSocketRecvCommandPipe * recv_pipe = socket->recv_pipe;
    SOCLiCommandPacket * command;
    s32 result;

    SDK_ASSERT(recv_pipe->consumed_min > 0);
    if (recv_pipe->consumed < (s32)recv_pipe->consumed_min) {
        return SOCL_ESUCCESS;
    }

    command = SOCLi_CreateCommandPacket(SOCLi_ConsumeCallBack, socket, SOCL_FLAGBLOCK_NOBLOCK);
    if (NULL == command) {
        return SOCL_EMFILE;
    }

    result = SOCLi_ExecCommandPacketInRecvPipe(socket, command);

    return result;
}

static int SOCLi_ConsumeCallBack (void * arg) {
    SOCLiCommandConsume * cpacket = (SOCLiCommandConsume *)arg;

    return SOCLi_ConsumeCPSBuffer(cpacket->h.socket);
}

static int SOCLi_ConsumeCPSBuffer (SOCLSocket * socket) {
    SOCLiSocketRecvCommandPipe * recv_pipe = socket->recv_pipe;
    OSIntrMode enable;
    s32 consumed;

    SDK_ASSERT(recv_pipe);

    enable = OS_DisableInterrupts();
    consumed = recv_pipe->consumed;

    if (consumed) {
#ifdef SDK_MY_DEBUG
        OS_TPrintf("\nCPS_SocConsume(%d)\n", consumed);
#endif

#if 1
        recv_pipe->consumed = 0;
        CPS_SocConsume((u32)consumed);
#else
        CPS_SocConsume((u32)consumed);
        recv_pipe->consumed -= consumed;
#endif

#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocConsume.cpssoc.state      =%d\n", socket->cps_socket.state);
        OS_TPrintf("              .cpssoc.rcvbufp    =%d\n", socket->cps_socket.rcvbufp);
        OS_TPrintf("              .recv_pipe.consumed=%d\n", consumed);
#endif
    }
    (void)OS_RestoreInterrupts(enable);

    return (int)consumed;
}

static int SOCLi_ReadUdpBuffer (SOCLSocket * socket, void * buffer, int buffer_len, u16 * remote_port, SOCLInAddr * remote_ip, s32 flag_block) {
    SOCLiSocketRecvCommandPipe * pipe = socket->recv_pipe;
    SOCLiSocketUdpData * udpdata = pipe->udpdata.out;
    OSIntrMode enable;
    int result;

    enable = OS_DisableInterrupts();
    while (NULL == (udpdata = pipe->udpdata.out)) {
        if (!SOCL_FLAGISBLOCK(flag_block)) {
            result = SOCL_EWOULDBLOCK;
            break;
        }

        OS_SleepThread(&pipe->udpdata.waiting);

        if (SOCL_SocketIsInvalid(socket) || !SOCL_SocketIsCreated(socket)) {
            result = SOCL_ENOTCONN;
            break;
        }
    }

    if (udpdata) {
        MI_CpuCopy8((u8 *)&udpdata[1], buffer, (u32)MATH_MIN(buffer_len, udpdata->size));

        if (remote_port) {
            (*remote_port) = udpdata->remote_port;
        }

        if (remote_ip) {
            (*remote_ip) = udpdata->remote_ip;
        }

        result = udpdata->size;

        if (!pipe->flag_noconsume) {
            pipe->udpdata.out = udpdata->next;
            if (udpdata->next == NULL) {
                pipe->udpdata.in = NULL;
            }

            SOCLi_Free(udpdata);
            pipe->udpdata.size -= result;
        }
    }
    (void)OS_RestoreInterrupts(enable);

    return result;
}

int SOCLi_UdpRecvCallback (u8 * data, u32 len, CPSSoc * soc) {
    SOCLSocket * socket = (SOCLSocket *)soc;
    SOCLiSocketRecvCommandPipe * pipe = socket->recv_pipe;
    SOCLiSocketUdpData * udpheader;
    OSIntrMode enable = OS_DisableInterrupts();

    if (pipe->udpdata.size_max >= pipe->udpdata.size + len) {
        udpheader = SOCLi_Alloc(sizeof(SOCLiSocketUdpData) + len);

        if (udpheader) {
            pipe->udpdata.size += len;
            udpheader->next = NULL;
            udpheader->size = (u16)len;
            udpheader->remote_port = soc->remote_port;
            udpheader->remote_ip = soc->remote_ip;
            MI_CpuCopy8(data, (void *)&udpheader[1], len);

            if (pipe->udpdata.in) {
                pipe->udpdata.in->next = udpheader;
            }

            pipe->udpdata.in = udpheader;

            if (pipe->udpdata.out == NULL) {
                pipe->udpdata.out = udpheader;
            }
        } else {
            SOCLi_CheckCount[SOCL_CHECKCOUNT_UDPRCVCB_1]++;
        }
    } else {
        SOCLi_CheckCount[SOCL_CHECKCOUNT_UDPRCVCB_2]++;
    }

    if (socket->local_port == 0) {
        socket->local_port = soc->local_port;
    }

    soc->remote_port = soc->remote_port_bound;
    soc->remote_ip = soc->remote_ip_bound;

    OS_WakeupThread(&pipe->udpdata.waiting);

    (void)OS_RestoreInterrupts(enable);

    return 1;
}
