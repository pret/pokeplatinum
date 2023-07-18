#include <nitroWiFi/socl.h>

static int SOCLi_WriteBuffer(SOCLSocket *, const u8 *, s32, u16, SOCLInAddr, s32);
static int SOCLi_ExecWriteCommand(SOCLSocket *, const u8 *, s32, s32, u16, SOCLInAddr, s32);
static int SOCLi_WriteCallBack(void *);
static s32 SOCLi_AllocWriteBuffer(SOCLSocket *, s32, s32, s32 *, s32);
static int SOCLi_MemCpy(u8 *, int, SOCLiCommandWrite *);

#if SOCL_OPTIMIZE_TCP_SEND
static int SOCLi_GetOptimumSendBufLen(int);
#endif

int SOCL_Write (int s, const void * buffer, int buffer_len, u16 remote_port, SOCLInAddr remote_ip) {
    return SOCL_WriteTo(s, buffer, buffer_len, remote_port, remote_ip, 0);
}

int SOCL_WriteNoBlock (int s, const void * buffer, int buffer_len, u16 remote_port, SOCLInAddr remote_ip) {
    return SOCL_WriteTo(s, buffer, buffer_len, remote_port, remote_ip, SOCL_MSG_DONTWAIT);
}

int SOCL_WriteBlock (int s, const void * buffer, int buffer_len, u16 remote_port, SOCLInAddr remote_ip) {
    return SOCL_WriteTo(s, buffer, buffer_len, remote_port, remote_ip, 0);
}

int SOCL_WriteTo (int s, const void * buffer, int buffer_len, u16 remote_port, SOCLInAddr remote_ip, int flags) {
    SOCLSocket * socket = (SOCLSocket *)s;
    SOCLiSocketSendCommandPipe * send_pipe;
    int flag_block;
    int result;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsTCP(socket) && (!SOCL_SocketIsConnected(socket) || SOCL_SocketIsClosing(socket))) {
        return SOCL_ENOTCONN;
    }

    SDK_ASSERT(buffer && buffer_len);
    send_pipe = socket->send_pipe;
    SDK_ASSERT(send_pipe);

    if ((flags & SOCL_MSG_DONTWAIT) || SOCL_SocketIsNoBlock(socket)) {
        if (!OS_TryLockMutex(&send_pipe->h.in_use)) {
            return SOCL_EWOULDBLOCK;
        }

        flag_block = SOCL_FLAGBLOCK_NOBLOCK;
    } else {
        OS_LockMutex(&send_pipe->h.in_use);
        flag_block = SOCL_FLAGBLOCK_BLOCK;
    }

    result = SOCLi_WriteBuffer(socket, buffer, buffer_len, remote_port, remote_ip, flag_block);
    OS_UnlockMutex(&send_pipe->h.in_use);

    return result;
}

static int SOCLi_WriteBuffer (SOCLSocket * socket, const u8 * buffer, s32 buffer_len, u16 remote_port, SOCLInAddr remote_ip, s32 flag_block) {
    SOCLiSocketSendCommandPipe * send_pipe = socket->send_pipe;
    s32 sndbuf_len;
    s32 wrtbuf_in;
    s32 write_len;
    s32 buffer_min;
    s32 copied_len = 0;
#ifdef SDK_DEBUG
    s32 wrtbuf_size = (s32)send_pipe->buffer.area.size - 1;
#endif
    int result;

    SDK_ASSERT(send_pipe);
    SDK_ASSERT(send_pipe->exe_socket);

    sndbuf_len = (s32)send_pipe->exe_socket->cps_socket.sndbuf.size;

    if (SOCL_SocketIsUDP(socket)) {
        sndbuf_len -= SOCL_UDP_SNDBUF_NOCOPY_OFFSET;

        SDK_ASSERT(sndbuf_len >= 0);

        if (buffer_len > sndbuf_len) {
            return SOCL_EMSGSIZE;
        }

        buffer_min = buffer_len;
    } else {
        sndbuf_len -= SOCL_TCP_SNDBUF_NOCOPY_OFFSET;

#ifdef SDK_TCPSEND_DOIT_SOON

        buffer_min = (!SOCL_FLAGISBLOCK(flag_block)) ? 1 : MATH_MIN(buffer_len, sndbuf_len);
#else

        buffer_min = MATH_MIN(buffer_len, sndbuf_len);
#endif
    }

    SDK_ASSERT(wrtbuf_size >= sndbuf_len);

    while (buffer_len > 0) {
        write_len = SOCLi_AllocWriteBuffer(socket, buffer_len, buffer_min, &wrtbuf_in, flag_block);

        if (write_len > 0) {
            result = SOCLi_ExecWriteCommand(socket, buffer, write_len, wrtbuf_in, remote_port, remote_ip, flag_block);

            if (result <= 0) {
                return SOCL_EWOULDBLOCK;
            }

            buffer += write_len;
            buffer_len -= write_len;
            copied_len += write_len;
        }

        if (!SOCL_FLAGISBLOCK(flag_block)) {
            if (write_len <= 0) {
                return SOCL_EWOULDBLOCK;
            }
            break;
        }
    }

    return (int)copied_len;
}

static s32 SOCLi_AllocWriteBuffer (SOCLSocket * socket, s32 max_size, s32 min_size, s32 * wrtbuf_in_ptr, s32 flag_block) {
    SOCLiSocketSendCommandPipe * send_pipe = socket->send_pipe;
#ifdef SDK_DEBUG
    s32 wrtbuf_size = (s32)send_pipe->buffer.area.size - 1;
#endif
    s32 free_size;
    OSIntrMode enable;

    SDK_ASSERT(send_pipe);
    SDK_ASSERT(wrtbuf_size >= min_size);

    if (min_size > max_size) {
        min_size = max_size;
    }

    enable = OS_DisableInterrupts();
    while (1) {
        free_size = SOCLi_GetWriteBufferFreeSize(socket);

        if (free_size >= min_size) {
            if (free_size >= max_size) {
                free_size = max_size;
            }

            *wrtbuf_in_ptr = (s32)send_pipe->buffer.in;
            break;
        }

        if (!SOCL_FLAGISBLOCK(flag_block)) {
            free_size = 0;
            break;
        }

        OS_SleepThread(&send_pipe->buffer.waiting);
    }
    (void)OS_RestoreInterrupts(enable);

    return free_size;
}

s32 SOCLi_GetWriteBufferFreeSize (SOCLSocket * socket) {
    SOCLiSocketSendCommandPipe * send_pipe = socket->send_pipe;
    s32 wrtbuf_size;
    s32 wrtbuf_in;
    s32 wrtbuf_out;
    s32 available_len;

    SDK_ASSERT(send_pipe);

    wrtbuf_size = (s32)send_pipe->buffer.area.size;
    wrtbuf_in = (s32)send_pipe->buffer.in;
    wrtbuf_out = (s32)send_pipe->buffer.out;
    available_len = wrtbuf_out - wrtbuf_in - 1;

    if (available_len < 0) {
        available_len += wrtbuf_size;
    }

    return available_len;
}

static int SOCLi_ExecWriteCommand (SOCLSocket * socket, const u8 * buffer, s32 buffer_len, s32 wrtbuf_in, u16 remote_port, SOCLInAddr remote_ip, s32 flag_block) {
    SOCLiSocketSendCommandPipe * send_pipe = socket->send_pipe;
    SOCLiCommandPacket * command;
    u8 * wrtbuf;
    s32 wrtbuf_size;
    int result;
    u16 saved_send_buffer_in;

#ifdef SDK_MY_DEBUG
    OS_TPrintf("socket=%08x exe_socket=%08x\n", socket, send_pipe->exe_socket);
#endif

    command = SOCLi_CreateCommandPacket(SOCLi_WriteCallBack, send_pipe->exe_socket, flag_block);
    if (NULL == command) {
        return SOCL_EMFILE;
    }

    if (SOCL_FLAGISBLOCK(flag_block) && !SOCL_SocketIsUDP(socket)) {
        command->h.flag_block = SOCL_FLAGBLOCK_NORESULT;
    } else {
        command->h.flag_block = SOCL_FLAGBLOCK_NOBLOCK;
    }

    wrtbuf = (u8 *)send_pipe->buffer.area.data;
    wrtbuf_size = (s32)send_pipe->buffer.area.size;

    if (wrtbuf_in + buffer_len < wrtbuf_size) {
        command->write.buffer1 = wrtbuf + wrtbuf_in;
        command->write.buffer1_len = buffer_len;
        command->write.buffer2 = NULL;
        command->write.buffer2_len = 0;
        wrtbuf_in += buffer_len;
    } else {
        const u8 * buffer2;

        command->write.buffer1 = wrtbuf + wrtbuf_in;
        command->write.buffer1_len = wrtbuf_size - wrtbuf_in;
        command->write.buffer2 = wrtbuf;
        command->write.buffer2_len = buffer_len - command->write.buffer1_len;
        wrtbuf_in = command->write.buffer2_len;
        buffer2 = buffer + command->write.buffer1_len;
        MI_CpuCopy8(buffer2, command->write.buffer2, (u32)command->write.buffer2_len);
    }

    MI_CpuCopy8(buffer, command->write.buffer1, (u32)command->write.buffer1_len);

    saved_send_buffer_in = send_pipe->buffer.in;
    send_pipe->buffer.in = command->write.wrtbuf_after = (u16)wrtbuf_in;

    if (SOCL_SocketIsUDP(socket)) {
        if (socket->local_port == 0) {
            socket->local_port = CPS_SocGetEport();
            socket->cps_socket.local_port = socket->local_port;
        }

        command->write.local_port = socket->local_port;

        if (socket->remote_ip == 0 || remote_ip != 0) {
            command->write.remote_ip = remote_ip;
            command->write.remote_port = remote_port;
        } else {
            command->write.remote_ip = socket->remote_ip;
            command->write.remote_port = socket->remote_port;
        }
    } else {
        command->write.remote_ip = 0;
    }

    result = SOCLi_ExecCommandPacketInSendPipe(send_pipe->exe_socket, command);

    if (result != SOCL_ESUCCESS) {
        send_pipe->buffer.in = saved_send_buffer_in;
        buffer_len = 0;
    }

    return (int)buffer_len;
}

static int SOCLi_WriteCallBack (void * arg) {
    SOCLiCommandWrite * cpacket = (SOCLiCommandWrite *)arg;
    SOCLSocket * socket = cpacket->h.socket;
    SOCLiSocketSendCommandPipe * send_pipe = socket->send_pipe;
    u8 * sndbuf;
    int sndbuf_len;
    int sndbuf_offset;
    int copied = 0;
    int result;

    SDK_ASSERT(send_pipe);

    if ((!SOCL_SocketIsTCP(socket)) || SOCL_SocketIsConnected(socket)) {
        if (cpacket->remote_ip) {
#ifdef SDK_MY_DEBUG
            OS_TPrintf("WriteCallBack-BIND:%d %d %08x\n", cpacket->local_port, cpacket->remote_port, cpacket->remote_ip);
#endif
            CPS_SocBind(cpacket->local_port, cpacket->remote_port, cpacket->remote_ip);
        }

#ifdef SDK_MY_DEBUG
        OS_TPrintf("WriteCallBack-WRITE 1: %08x %d\n", cpacket->buffer1, cpacket->buffer1_len);
        OS_TPrintf("                    2: %08x %d\n", cpacket->buffer2, cpacket->buffer2_len);
        OS_DumpThreadList();
        OS_TPrintf("  CPS->rcvbuf %08x%5d\n", socket->cps_socket.rcvbuf.data, socket->cps_socket.rcvbuf.size);
        OS_TPrintf("  CPS->sndbuf %08x%5d\n", socket->cps_socket.sndbuf.data, socket->cps_socket.sndbuf.size);
        OS_TPrintf("  CPS->linbuf %08x%5d\n", socket->cps_socket.linbuf.data, socket->cps_socket.linbuf.size);
        OS_TPrintf("  CPS->outbuf %08x%5d\n", socket->cps_socket.outbuf.data, socket->cps_socket.outbuf.size);
#endif

        sndbuf_offset = SOCL_SocketIsTCP(socket) ? SOCL_TCP_SNDBUF_NOCOPY_OFFSET : SOCL_UDP_SNDBUF_NOCOPY_OFFSET;
        sndbuf = socket->cps_socket.sndbuf.data + sndbuf_offset;
#if SOCL_OPTIMIZE_TCP_SEND
        if (SOCL_SocketIsTCP(socket)) {
            sndbuf_len = SOCLi_GetOptimumSendBufLen((int)socket->cps_socket.sndbuf.size - sndbuf_offset);
        } else {
            sndbuf_len = (int)socket->cps_socket.sndbuf.size - sndbuf_offset;
        }

#else
        sndbuf_len = (int)socket->cps_socket.sndbuf.size - sndbuf_offset;
#endif

        for (;;) {
            result = SOCLi_MemCpy(sndbuf, sndbuf_len, cpacket);
            if (result <= 0) {
                break;
            }

#ifdef SDK_MY_DEBUG
            OS_TPrintf("CPS_SocWrite.sendbuf      =%d\n", sndbuf);
            OS_TPrintf("            .sendlen      =%d\n", result);
#endif
            result = (int)CPS_SocWrite(sndbuf, (u32)result);

#ifdef SDK_MY_DEBUG
            OS_TPrintf("CPS_SocWrite.result       =%d\n", result);
#endif

            if (result <= 0) {
                if (SOCL_SocketIsTCP(socket)) {
                    socket->state &= ~(SOCL_STATUS_CONNECTING | SOCL_STATUS_CONNECTED | SOCL_STATUS_CLOSING);
                    socket->state |= SOCL_STATUS_RESET;

                    CPS_TcpClose();
                }

                copied = SOCL_ETIMEDOUT;
                break;
            }

            copied += result;
        }
    } else {
        copied = SOCL_ETIMEDOUT;
    }

#ifdef SDK_MY_DEBUG
    OS_TPrintf("WriteCallBack-WRITE.copied=%d\n", copied);
#endif

    send_pipe->buffer.out = cpacket->wrtbuf_after;
    OS_WakeupThread(&send_pipe->buffer.waiting);

    return copied;
}

#if SOCL_OPTIMIZE_TCP_SEND

static int SOCLi_GetOptimumSendBufLen (int len) {
    CPSSoc * soc = CPS_CURSOC;
    int temp = 0;
    OSIntrMode enabled = OS_DisableInterrupts();

    if (soc != NULL) {
        if ((soc->remote_mss > 0) && (soc->remote_win > 0)) {
            temp = 2 * MATH_IMin(MATH_IMin(soc->remote_mss, soc->remote_win), (int)SOCLiCPSConfig.mymss);
        } else {
            temp = 2 * (int)SOCLiCPSConfig.mymss;
        }
    } else {
        temp = 2 * (int)SOCLiCPSConfig.mymss;
    }
    (void)OS_RestoreInterrupts(enabled);

    if (temp > 0) {
        int count = len / temp;

        if (count > 0) {
            return temp * count;
        }
    }

    return len;
}
#endif

static int SOCLi_MemCpy (u8 * sndbuf_ptr, int sndbuf_len, SOCLiCommandWrite * cpacket) {
    s32 buffer1_len = cpacket->buffer1_len;
    s32 buffer2_len = cpacket->buffer2_len;

    if (buffer1_len > sndbuf_len) {
        buffer1_len = sndbuf_len;
        buffer2_len = 0;
    } else if (buffer2_len > sndbuf_len - buffer1_len) {
        buffer2_len = sndbuf_len - buffer1_len;
    } else {
    }

    if (buffer1_len > 0) {
        MI_CpuCopy8(cpacket->buffer1, sndbuf_ptr, (u32)buffer1_len);
        cpacket->buffer1 += buffer1_len;
        cpacket->buffer1_len -= buffer1_len;
    }

    if (buffer2_len > 0) {
        MI_CpuCopy8(cpacket->buffer2, sndbuf_ptr + buffer1_len, (u32)buffer2_len);
        cpacket->buffer2 += buffer2_len;
        cpacket->buffer2_len -= buffer2_len;
    }

    return buffer1_len + buffer2_len;
}
