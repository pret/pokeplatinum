#include <nitroWiFi/socl.h>
#include <nitroWiFi/soc.h>

static int SOCL_ExecListenAcceptCommand(int s, vu16 * remote_port_ptr, volatile SOCLInAddr * remote_ip_ptr);
static int SOCLi_ListenAcceptCallBack(void * arg);

int SOCL_Listen (int s, int backlog) {
    SOCLSocket * socket = (SOCLSocket *)s;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsConnecting(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsTCP(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsBlock(socket)) {
        return SOCL_EWOULDBLOCK;
    }

    (void)backlog;
    (void)socket;

    return 0;
}

int SOCL_Accept (int s_listen, vu16 * remote_port_ptr, volatile SOCLInAddr * remote_ip_ptr) {
    SOCLSocket * socket_listen = (SOCLSocket *)s_listen;
    int s_accept;
    s32 result;

    if (SOCL_SocketIsInvalid(socket_listen)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket_listen)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsConnecting(socket_listen)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsTCP(socket_listen)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsBlock(socket_listen)) {
        return SOCL_EWOULDBLOCK;
    }

    s_accept = SOCL_TcpSocket();

    if (s_accept < 0) {
        return s_accept;
    }

    result = SOCL_Bind(s_accept, socket_listen->local_port);

    if (result < 0) {
        return result;
    }

    result = SOCL_ListenAccept(s_accept, remote_port_ptr, remote_ip_ptr);

    if (result < 0) {
        return result;
    }

    return s_accept;
}

int SOCL_ListenAccept (int s, vu16 * remote_port_ptr, volatile SOCLInAddr * remote_ip_ptr) {
    SOCLSocket * socket = (SOCLSocket *)s;
    SOCLiCommandPacket * command;
    s32 result;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsConnecting(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsTCP(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsBlock(socket)) {
        return SOCL_EWOULDBLOCK;
    }

    if (socket->local_port == 0) {
        return SOCL_EINVAL;
    }

    command = SOCLi_CreateCommandPacket(SOCLi_ListenAcceptCallBack, socket, socket->flag_block);

    SDK_ASSERT(command);

    command->listen_accept.local_port = socket->local_port;
    command->listen_accept.remote_port_ptr = remote_port_ptr;
    command->listen_accept.remote_ip_ptr = remote_ip_ptr;
    socket->state |= SOCL_STATUS_CONNECTING;

    result = SOCLi_ExecCommandPacketInRecvPipe(socket, command);

    return result;
}

static int SOCLi_ListenAcceptCallBack (void * arg) {
    SOCLiCommandListenAccept * cpacket = (SOCLiCommandListenAccept *)arg;
    SOCLSocket * socket = (SOCLSocket *)cpacket->h.socket;
    SOCLiSocketRecvCommandPipe * recv_pipe;
    u16 remote_port;
    CPSInAddr remote_ip;
    CPSInAddr local_ip;

    SDK_ASSERT(socket);
    recv_pipe = socket->recv_pipe;
    SDK_ASSERT(recv_pipe);

    OS_LockMutex(&recv_pipe->h.in_use);
    {
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocBind(%d,0,0)\n", cpacket->local_port);
#endif
        CPS_SocBind(cpacket->local_port, 0, 0);

#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_TcpListen()\n");
#endif
        CPS_TcpListen();

        recv_pipe->consumed = 0;

#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SocWho()\n");
#endif
        remote_ip = CPS_SocWho(&remote_port, &local_ip);

        *cpacket->remote_port_ptr = remote_port;
        *cpacket->remote_ip_ptr = remote_ip;

        socket->state |= SOCL_STATUS_CONNECTED;
    }

    OS_UnlockMutex(&recv_pipe->h.in_use);

    return SOCL_ESUCCESS;
}
