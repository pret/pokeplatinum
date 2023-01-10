#include <nitroWiFi/socl.h>
#include <nitroWiFi/soc.h>

int SOCL_GetStatus (int s) {
    SOCLSocket * socket = (SOCLSocket *)s;
    int result = 0;
    OSIntrMode enable;

    if (SOCL_SocketIsInvalid(socket)) {
        result |= SOC_POLLNVAL;
    } else {
        if (SOCL_SocketIsError(socket)) {
            result |= SOC_POLLERR;
        }

        if (SOCL_SocketIsUDP(socket) || SOCL_SocketIsConnected(socket)) {
            enable = OS_DisableInterrupts();
            if (SOCLi_GetReadBufferOccpiedSize(socket) > 0) {
                result |= SOC_POLLRDNORM;
            }

            if (SOCLi_GetWriteBufferFreeSize(socket) > 0) {
                result |= SOC_POLLWRNORM;
            }
            (void)OS_RestoreInterrupts(enable);
        }

        if (SOCL_SocketIsTCP(socket)) {
            if (SOCL_SocketIsConnected(socket) && socket->cps_socket.state != CPS_STT_ESTABLISHED &&
                !(result & SOC_POLLRDNORM)) {
                socket->state &= ~(SOCL_STATUS_CONNECTING | SOCL_STATUS_CONNECTED);
            }

            if (!SOCL_SocketIsConnecting(socket) && !SOCL_SocketIsConnected(socket)) {
                result |= SOC_POLLHUP;
            }
        }
    }

    return result;
}

s32 SOCLi_GetReadBufferOccpiedSize (SOCLSocket * socket) {
    SOCLiSocketRecvCommandPipe * recv_pipe = socket->recv_pipe;
    s32 size = 0;

    if (recv_pipe) {
        if (SOCL_SocketIsUDP(socket)) {
            SOCLiSocketUdpData * udpout = recv_pipe->udpdata.out;
            size = (s32)(udpout ? udpout->size : 0);
        } else if (SOCL_SocketIsTCP(socket)) {
            size = (s32)socket->cps_socket.rcvbufp - (s32)recv_pipe->consumed;
        }
    }

    return size;
}
