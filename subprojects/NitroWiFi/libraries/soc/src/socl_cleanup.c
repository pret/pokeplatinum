#include <nitroWiFi/socl.h>
#include "wcm_cpsif.h"

int SOCL_Cleanup (void) {
    int result;

    SDK_ASSERT(SOCLiConfigPtr);

    if (SOCLiRequestedIP == 0) {
        SOCLiRequestedIP = CPSMyIp;
    }

    while (SOCL_EINPROGRESS == SOCL_CalmDown()) {
        OS_Sleep(100);
    }

    result = SOCLi_CleanupCommandPacketQueue();

    if (result >= 0) {
#ifdef SDK_MY_DEBUG
        OS_TPrintf("CPS_Cleanup\n");
#endif

        CPS_Cleanup();

        CPS_SetScavengerCallback(NULL);

        if (!SOCLiConfigPtr->lan_buffer) {
            SOCLi_Free(SOCLiCPSConfig.lan_buf);
        }

        SOCLiConfigPtr = NULL;
    }

    return result;
}

int SOCL_CloseAll (void) {
    SOCLSocket * socket;
    OSIntrMode enable;

    for (;;) {
        enable = OS_DisableInterrupts();
        for (socket = SOCLiSocketList; socket; socket = socket->next) {
            if ((int)socket != SOCLiUDPSendSocket && !SOCL_SocketIsWaitingClose(socket)) {
                break;
            }
        }
        (void)OS_RestoreInterrupts(enable);

        if (!socket) {
            break;
        }

        (void)SOCL_Close((int)socket);
    }

    if (SOCLiSocketList == NULL || ((int)SOCLiSocketList == SOCLiUDPSendSocket && SOCLiSocketList->next == NULL)) {
        if (SOCLiSocketListTrash == NULL) {
            return SOCL_ESUCCESS;
        }
    }

    return SOCL_EINPROGRESS;
}

int SOCL_CalmDown (void) {
    int result;

    if (SOCLiUDPSendSocket) {
        result = SOCL_CloseAll();

        if (result == SOCL_ESUCCESS) {
            (void)SOCL_Close(SOCLiUDPSendSocket);

            if (SOCL_IsClosed(SOCLiUDPSendSocket)) {
                SOCLiUDPSendSocket = NULL;
            }

            result = SOCL_EINPROGRESS;
        }

        SOCLi_TrashSocket();
    } else {
        if (CPS_CalmDown()) {
            WCM_SetRecvDCFCallback(NULL);
            result = SOCL_ESUCCESS;
        } else {
            result = SOCL_EINPROGRESS;
        }
    }

    return result;
}
