#include <nitroWiFi/socl.h>

static int SOCLi_ShutdownCallBack(void * arg);

int SOCL_Shutdown (int s) {
    SOCLSocket * socket = (SOCLSocket *)s;
    SOCLiSocketSendCommandPipe * send_pipe;
    SOCLiCommandPacket * command;
    s32 result;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (!SOCL_SocketIsConnected(socket) || SOCL_SocketIsClosing(socket)) {
        return SOCL_ENOTCONN;
    }

    socket->state |= SOCL_STATUS_CLOSING;

    send_pipe = socket->send_pipe;

    if (send_pipe && send_pipe->exe_socket) {
        command = SOCLi_CreateCommandPacket(SOCLi_ShutdownCallBack, send_pipe->exe_socket, socket->flag_block);
        if (NULL == command) {
            return SOCL_EMFILE;
        }

        result = SOCLi_ExecCommandPacketInSendPipe(send_pipe->exe_socket, command);
    } else {
        result = 0;
    }

    return result;
}

static int SOCLi_ShutdownCallBack (void * arg) {
    SOCLiCommandShutdown * cpacket = (SOCLiCommandShutdown *)arg;
    SOCLSocket * socket = (SOCLSocket *)cpacket->h.socket;

    if (SOCL_SocketIsTCP(socket)) {
        CPS_TcpShutdown();
    }

    return SOCL_ESUCCESS;
}
