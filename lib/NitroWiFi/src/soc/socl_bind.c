#include <nitroWiFi/socl.h>

static int SOCLi_BindCallBack(void * arg);
static int SOCLi_ExecBindCommand(SOCLSocket * socket);

int SOCL_Bind (int s, u16 local_port) {
    SOCLSocket * socket = (SOCLSocket *)s;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsConnecting(socket)) {
        return SOCL_EALREADY;
    }

    socket->local_port = local_port;

    return SOCL_SocketIsUDP(socket) ? SOCLi_ExecBindCommand(socket) : 0;
}

int SOCLiResultCodeInConnecting = SOCL_EINPROGRESS;
int SOCL_Connect (int s, u16 remote_port, SOCLInAddr remote_ip) {
    SOCLSocket * socket = (SOCLSocket *)s;
    int result;

    if (SOCL_SocketIsInvalid(socket) || SOCL_SocketIsClosing(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsTCP(socket)) {
        if (SOCL_SocketIsConnected(socket)) {
            return SOCL_SocketIsBlock(socket) ? SOCL_EISCONN : 0;
        }

        if (SOCL_SocketIsConnecting(socket)) {
            if (SOCL_SocketIsError(socket)) {
                return socket->result;
            } else {
                return SOCLiResultCodeInConnecting;
            }
        }

        socket->remote_port = remote_port;
        socket->remote_ip = remote_ip;

        result = SOCLi_ExecBindCommand(socket);

        return SOCL_SocketIsBlock(socket) ? result : SOCL_EINPROGRESS;
    } else {
        socket->remote_port = remote_port;
        socket->remote_ip = remote_ip;
        return 0;
    }
}

static int SOCLi_ExecBindCommand (SOCLSocket * socket) {
    SOCLiCommandPacket * command;
    s32 result;

    command = SOCLi_CreateCommandPacket(SOCLi_BindCallBack, socket, socket->flag_block);
    if (NULL == command) {
        return SOCL_EMFILE;
    }

    command->bind.local_port = socket->local_port;
    command->bind.remote_port = socket->remote_port;
    command->bind.remote_ip = socket->remote_ip;
    socket->state |= SOCL_STATUS_CONNECTING;

    result = SOCLi_ExecCommandPacketInRecvPipe(socket, command);

    return result;
}

static int SOCLi_BindCallBack (void * arg) {
    SOCLiCommandBind * cpacket = (SOCLiCommandBind *)arg;
    SOCLSocket * socket = cpacket->h.socket;
    SOCLiSocketRecvCommandPipe * recv_pipe;
    u32 retcode = 0;

    SDK_ASSERT(socket);
    recv_pipe = socket->recv_pipe;
    SDK_ASSERT(recv_pipe);

    OS_LockMutex(&recv_pipe->h.in_use);
    {
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocBind(\n");
        OS_TPrintf("   local  port=%d,\n", cpacket->local_port);
        OS_TPrintf("   remote_port=%d,\n", cpacket->remote_port);
        OS_TPrintf("   remote_ip  =%3d. %3d. %3d. %3d\n", CPS_CV_IPv4(cpacket->remote_ip));
#endif
        CPS_SocBind(cpacket->local_port, cpacket->remote_port, cpacket->remote_ip);
        recv_pipe->consumed = 0;

        if (cpacket->h.flag_mode == SOCL_FLAGMODE_TCP || cpacket->h.flag_mode == SOCL_FLAGMODE_SSL) {
#ifdef SDK_MY_DEBUG
            OS_TPrintf("CPS_TcpConnect\n");
#endif
            retcode = CPS_TcpConnect();
#ifdef SDK_MY_DEBUG
            OS_TPrintf("CPS_TcpConnect.retcode=%d\n", retcode);
#endif
        }
    }

    OS_UnlockMutex(&recv_pipe->h.in_use);

    if (retcode) {
        socket->state |= SOCL_STATUS_ERROR;
        return SOCL_ETIMEDOUT;
    }

    socket->state |= SOCL_STATUS_CONNECTED;
    return SOCL_ESUCCESS;
}
