#include <nitroWiFi/socl.h>

static int SOCLi_EnableSslCallBack(void * arg);
static int SOCLi_ExecEnableSslCommand(SOCLSocket * socket, SOCLSslConnection * con);

int SOCL_EnableSsl (int s, SOCLSslConnection * con) {
    SOCLSocket * socket = (SOCLSocket *)s;

    if (SOCL_SocketIsInvalid(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsTCP(socket)) {
        return SOCL_EINVAL;
    }

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsConnecting(socket)) {
        return SOCL_EINVAL;
    }

    return SOCLi_ExecEnableSslCommand(socket, con);
}

static int SOCLi_ExecEnableSslCommand (SOCLSocket * socket, SOCLSslConnection * con) {
    SOCLiCommandPacket * command;
    s32 result;

    command = SOCLi_CreateCommandPacket(SOCLi_EnableSslCallBack, socket, OS_MESSAGE_BLOCK);
    if (NULL == command) {
        return SOCL_EMFILE;
    }

    command->enable_ssl.connection = con;

    result = SOCLi_ExecCommandPacketInRecvPipe(socket, command);

    return result;
}

static int SOCLi_EnableSslCallBack (void * arg) {
    SOCLiCommandEnableSsl * cpacket = (SOCLiCommandEnableSsl *)arg;
    SOCLSocket * socket = cpacket->h.socket;
    SOCLiSocketRecvCommandPipe * recv_pipe;
    CPSSoc * cpsoc;

    SDK_ASSERT(socket);
    recv_pipe = socket->recv_pipe;
    SDK_ASSERT(recv_pipe);
    cpsoc = (CPSSoc *)OSi_GetSpecificData(&recv_pipe->h.thread, OSi_SPECIFIC_CPS);
    SDK_ASSERT(cpsoc);

    OS_LockMutex(&recv_pipe->h.in_use);
    {
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_SetSsl(%d)\n", (cpacket->connection != NULL) ? 1 : 0);
#endif

        if (cpacket->connection != NULL) {
            cpsoc->con = cpacket->connection;
            CPS_SetSsl(1);
            socket->flag_mode = SOCL_FLAGMODE_SSL;
        } else {
            socket->flag_mode = SOCL_FLAGMODE_TCP;
            CPS_SetSsl(0);
            cpsoc->con = NULL;
        }
    }

    OS_UnlockMutex(&recv_pipe->h.in_use);

    return SOCL_ESUCCESS;
}
