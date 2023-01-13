#include <ac/dwc_ac.h>
#include <auth/dwc_auth.h>
#include <auth/dwc_netcheck.h>
#include <base/dwc_connectinet.h>
#include <base/dwc_error.h>
#include <base/dwc_memfunc.h>
#include <base/dwc_report.h>
#include <nitro.h>
#include <nitroWiFi/socl.h>


#define DWC_CONNECTINET_DMA_DEFAULT             3
#define DWC_CONNECTINET_POWERMODE_SAVE          0
#define DWC_CONNECTINET_POWERMODE_ACTIVE        1
#define DWC_CONNECTINET_SSL_DEFAULT_PRIORITY    20


static DWCInetControl *stpInetCntl;


extern u8 *WCM_GetApMacAddress(void);
extern u8 *WCM_GetApEssid(u16 *length);


void DWC_InitInetEx(DWCInetControl *inetCntl, u16 dmaNo, u16 powerMode, u16 ssl_priority) {
#ifdef SDK_FINALROM
#pragma unused(powerMode)
#endif
    SDK_ASSERT(powerMode == DWC_CONNECTINET_POWERMODE_ACTIVE);

    if (stpInetCntl == NULL) {
        DWC_Printf(DWC_REPORTFLAG_CONNECTINET, "InitInet dma : %d, powerMode: %d\n", dmaNo, powerMode);
        SDK_ASSERT(inetCntl);
        MI_CpuClear8(inetCntl, sizeof(DWCInetControl));

        inetCntl->dmaNo = dmaNo;
        inetCntl->powerMode = DWC_CONNECTINET_POWERMODE_ACTIVE;
        inetCntl->state = DWC_CONNECTINET_STATE_IDLE;
        inetCntl->online = FALSE;
        inetCntl->wontExecuteWDS = FALSE;
        inetCntl->processWDSstate = DWC_WDS_STATE_IDLE;

#ifndef SDK_FINALROM
        inetCntl->connectType = 0;
#endif

        stpInetCntl = inetCntl;

#if SDK_WIFI_VERSION_DATE >= 20051005
        CPS_SetSslLowThreadPriority(ssl_priority);
#else
        (void)ssl_priority;
#endif
    }
}

void DWC_InitInet(DWCInetControl *inetCntl) {
    DWC_InitInetEx(inetCntl, DWC_CONNECTINET_DMA_DEFAULT, DWC_CONNECTINET_POWERMODE_ACTIVE, DWC_CONNECTINET_SSL_DEFAULT_PRIORITY);
}

void DWC_SetAuthServer(DWCInetAuthType type) {
    switch (type) {
    case DWC_CONNECTINET_AUTH_TEST:
        DWC_Auth_SetCustomNas("https://nas.test.nintendowifi.net/ac");
        break;
    case DWC_CONNECTINET_AUTH_DEVELOP:
        DWC_Printf(DWC_REPORTFLAG_AC, "******************************************************************************************\n");
        DWC_Printf(DWC_REPORTFLAG_AC, " DWC_CONNECTINET_AUTH_DEVELOP: This setting is for authentication server developing ONLY. \n");
        DWC_Printf(DWC_REPORTFLAG_AC, "******************************************************************************************\n");
        DWC_Auth_SetCustomNas("https://nas.dev.nintendowifi.net/ac");
        break;
    case DWC_CONNECTINET_AUTH_RELEASE:
        DWC_Auth_SetCustomNas("https://nas.nintendowifi.net/ac");
        break;
    }
}

#ifndef SDK_FINALROM
void DWC_SetConnectApType(DWCApInfoType type) {
    SDK_ASSERTMSG(stpInetCntl, "DWC_InitInet[Ex] is not called.");
    SDK_ASSERTMSG(0 <= type && type <= DWC_APINFO_TYPE_NINTENDOWFC, "Invalid argument 'type'");

    DWC_Printf(DWC_REPORTFLAG_AC, "***************************************************************\n");
    DWC_Printf(DWC_REPORTFLAG_AC, " DWC_CONNECTINET_SET_AP_TYPE: This setting is debug ONLY. \n");
    DWC_Printf(DWC_REPORTFLAG_AC, "***************************************************************\n");

    stpInetCntl->connectType = type + 1;
    stpInetCntl->wontExecuteWDS = TRUE;
}

#endif

void DWC_ConnectInetAsync(void) {
    DWCACConfig inp;

    if (stpInetCntl != NULL) {
        if (stpInetCntl->state != DWC_CONNECTINET_STATE_IDLE) {
            return;
        }

        MI_CpuClear8(&inp, sizeof(DWCACConfig));

        inp.dmaNo = (u8)stpInetCntl->dmaNo;
        inp.powerMode = (u8)stpInetCntl->powerMode;
        inp.alloc = (DWCACAlloc)DWC_Alloc;
        inp.free = (DWCACFree)DWC_Free;

#ifndef SDK_FINALROM
        inp.option.connectType = (u8)stpInetCntl->connectType;
#endif

        DWC_Printf(DWC_REPORTFLAG_CONNECTINET, "ConnectInet Async\n");
        stpInetCntl->state = DWC_CONNECTINET_STATE_OPERATING;

        if (!DWC_AC_Create(&inp)) {
            DWCi_SetError(DWC_ERROR_FATAL, -50199);
        }
    }
    else {
        DWCi_SetError(DWC_ERROR_FATAL, -50199);
    }
}

void DWC_DebugConnectInetAsync(const void *ssid, const void *wep, int wepMode) {
    DWC_DebugConnectInetExAsync(ssid, wep, wepMode, NULL, DWC_AC_AP_TYPE_USER1);
}

void DWC_DebugConnectInetExAsync(const void *ssid, const void *wep, int wepMode, const char *apSpotInfo, int overrideType) {
    DWC_ConnectInetAsync();

    if (stpInetCntl != NULL) {
        stpInetCntl->wontExecuteWDS = TRUE;
    }

    if (DWC_GetInetStatus() == DWC_CONNECTINET_STATE_OPERATING) {
        DWC_AC_SetSpecifyApEx(ssid, wep, wepMode, apSpotInfo, overrideType);
    }
}

BOOL DWC_CheckInet(void) {
    if (stpInetCntl == NULL) {
        DWC_Printf(DWC_REPORTFLAG_CONNECTINET, "ConnectInet library is not initialized.\n");

        return FALSE;
    }

    if (stpInetCntl->ac_state != 0) {
        stpInetCntl->state = DWC_CONNECTINET_STATE_OPERATED;
        (void)DWC_GetInetStatus();

        if (stpInetCntl->wontExecuteWDS) {
            return TRUE;
        }
        else {
            return FALSE;
        }
    }

    return FALSE;
}

void DWC_ProcessInet(void) {
    if (stpInetCntl == NULL) {
        return;
    }

    switch (stpInetCntl->processWDSstate) {
    case DWC_WDS_STATE_IDLE:
        break;
    case DWC_WDS_STATE_PROCESS:
        stpInetCntl->ac_state = 0;
        stpInetCntl->processWDSstate = DWC_AC_ProcessGetWDSInfo();

        return;
    case DWC_WDS_STATE_COMPLETED:
        DWC_AC_CleanupGetWDSInfo();
        DWC_DebugConnectInetExAsync(
            stpInetCntl->nspotInfo.ssid, stpInetCntl->nspotInfo.wep, stpInetCntl->nspotInfo.wepMode, stpInetCntl->nspotInfo.apnum, DWC_AC_AP_TYPE_NINTENDOSPOT);
        stpInetCntl->processWDSstate = DWC_WDS_STATE_IDLE;

        return;
    case DWC_WDS_STATE_FAILED:
        DWC_AC_CleanupGetWDSInfo();
        stpInetCntl->ac_state = -1;
        stpInetCntl->wontExecuteWDS = TRUE;

        return;
    case DWC_WDS_STATE_ERROR:
        return;
    default:
        break;
    }

    if (stpInetCntl->state == DWC_CONNECTINET_STATE_OPERATING) {
        stpInetCntl->ac_state = DWC_AC_Process();
    }
    else if (stpInetCntl->state == DWC_CONNECTINET_STATE_CONNECTED) {
        if (stpInetCntl->online) {
            if (WCM_GetPhase() != WCM_PHASE_DCF) {
                stpInetCntl->online = FALSE;
                stpInetCntl->state = DWC_CONNECTINET_STATE_DISCONNECTED;
            }
        }
    }
}

DWCInetResult DWC_GetInetStatus(void) {
    int state;
    static int stateOld;
    DWCInetResult result = DWC_CONNECTINET_STATE_NOT_INITIALIZED;

    if (stpInetCntl == NULL) {
        return result;
    }

    switch (stpInetCntl->processWDSstate) {
    case DWC_WDS_STATE_IDLE:
        break;
    case DWC_WDS_STATE_PROCESS:
        return DWC_CONNECTINET_STATE_OPERATING;
    case DWC_WDS_STATE_COMPLETED:
        return DWC_CONNECTINET_STATE_OPERATING;
    case DWC_WDS_STATE_FAILED:
        DWC_ProcessInet();
        DWCi_SetError(DWC_ERROR_AC_ANY, stateOld);

        result = DWC_CONNECTINET_STATE_ERROR;
        stpInetCntl->state = result;
        stpInetCntl->processWDSstate = DWC_WDS_STATE_ERROR;

        return result;
    case DWC_WDS_STATE_ERROR:
        result = DWC_CONNECTINET_STATE_ERROR;

        return result;
    default:
        break;
    }

    result = (DWCInetResult)stpInetCntl->state;

    if (result == DWC_CONNECTINET_STATE_IDLE) {
        return result;
    }

    state = DWC_AC_GetStatus();

    if (state == DWC_AC_STATE_COMPLETE) {
        result = DWC_CONNECTINET_STATE_CONNECTED;
        stpInetCntl->state = result;
        stpInetCntl->online = TRUE;
        stpInetCntl->wontExecuteWDS = TRUE;
    }
    else if (state < 0) {
        if (state >= -10) {
            DWCi_SetError(DWC_ERROR_FATAL, -50199);

            result = DWC_CONNECTINET_STATE_FATAL_ERROR;
            stpInetCntl->state = result;
        }
        else if (!stpInetCntl->wontExecuteWDS) {
            DWCInetControl *stepInetCntlTemp = stpInetCntl;
            u16 dmaNoTemp = stpInetCntl->dmaNo;
            u32 ssl_priority_Temp = CPS_GetSslLowThreadPriority();

            stateOld = state;

            DWC_CleanupInet();
            DWC_InitInetEx(stepInetCntlTemp, dmaNoTemp, DWC_CONNECTINET_POWERMODE_ACTIVE, (u16)ssl_priority_Temp);
            DWC_AC_StartupGetWDSInfo(&(stpInetCntl->nspotInfo));

            stpInetCntl->processWDSstate = DWC_WDS_STATE_PROCESS;
            result = DWC_CONNECTINET_STATE_OPERATING;
            stpInetCntl->ac_state = 0;
        }
        else {
            if (stateOld < state) {
                state = stateOld;
            }

            DWCi_SetError(DWC_ERROR_AC_ANY, state);

            result = DWC_CONNECTINET_STATE_ERROR;
            stpInetCntl->state = result;
        }
    }
    else {
        result = DWC_CONNECTINET_STATE_OPERATING;
    }

    return result;
}

void DWC_CleanupInet(void) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "!!DWC_CleanupInet() was called!!\n");

    if (stpInetCntl == NULL) {
        DWC_Printf(DWC_REPORTFLAG_CONNECTINET, "ConnectInet library is not initialized.\n");
        return;
    }

    if (stpInetCntl->state == DWC_CONNECTINET_STATE_IDLE) {
        stpInetCntl = NULL;
        return;
    }

    while (!DWC_AC_Destroy()) {
        OS_Sleep(10);
    }

    stpInetCntl = NULL;
}

BOOL DWC_CleanupInetAsync(void) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "!!DWC_CleanupInetAsync() was called!!\n");

    if (stpInetCntl == NULL) {
        DWC_Printf(DWC_REPORTFLAG_CONNECTINET, "ConnectInet library is not initialized.\n");
        return TRUE;
    }

    if (stpInetCntl->state == DWC_CONNECTINET_STATE_FATAL_ERROR) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "CleanupInet Status: FATAL ERROR.\n");
        return FALSE;
    }
    else if (stpInetCntl->state == DWC_CONNECTINET_STATE_IDLE) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "CleanupInet Status: %d\n", stpInetCntl->state);
        stpInetCntl = NULL;
        return TRUE;
    }
    else {
        stpInetCntl->state = DWC_CONNECTINET_STATE_DISCONNECTING;
    }

#if 0
#if SDK_WIFI_VERSION_DATE >= 20050929
    if (SOCL_CalmDown() != SOCL_ESUCCESS) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "CleanupInet Status: %d %d\n", stpInetCntl->state, SOCL_CalmDown());

        return FALSE;
    }
#endif
#endif

    if (DWC_AC_Destroy()) {
        stpInetCntl = NULL;
        return TRUE;
    }

    return FALSE;
}

BOOL DWCi_CheckDisconnected(void) {
    if ((stpInetCntl != NULL) && (stpInetCntl->state == DWC_CONNECTINET_STATE_DISCONNECTED)) {
        return TRUE;
    }

    return FALSE;
}

WMLinkLevel DWC_GetLinkLevel(void) {
#if SDK_WIFI_VERSION_DATE >= 20050914
    return WCM_GetLinkLevel();
#else
    return WM_GetLinkLevel();
#endif
}

int DWC_GetUdpPacketDropNum(void) {
#if SDK_WIFI_VERSION_DATE >= 20050914
    return (int)SOCLi_CheckCount[SOCL_CHECKCOUNT_UDPRCVCB_2];
#else
    return 0;
#endif
}

BOOL DWC_GetApInfo(DWCApInfo *apinfo) {
    OSIntrMode preirq;
    unsigned char *wcmapbssid;
    unsigned char *wcmapessid;
    unsigned short essidlen;
    u8 apSpotInfo[10];

    MI_CpuClear8(apinfo, sizeof(DWCApInfo));
    apinfo->area = DWC_APINFO_AREA_UNKNOWN;

    if (DWC_GetInetStatus() != DWC_CONNECTINET_STATE_CONNECTED) {
        return FALSE;
    }

    apinfo->aptype = (DWCApInfoType)DWC_AC_GetApType();

    if ((apinfo->aptype == DWC_AC_AP_TYPE_FALSE) || (apinfo->aptype > DWC_AC_AP_TYPE_UNKNOWN)) {
        apinfo->aptype = (DWCApInfoType)DWC_AC_AP_TYPE_UNKNOWN;
        return FALSE;
    }

    preirq = OS_DisableInterrupts();
    wcmapbssid = WCM_GetApMacAddress();
    DC_InvalidateRange(wcmapbssid, WM_SIZE_BSSID);

    if (wcmapbssid == NULL) {
        preirq = OS_RestoreInterrupts(preirq);
        return FALSE;
    }

    MI_CpuCopy8(wcmapbssid, apinfo->bssid, 6);

    if ((apinfo->aptype >= 0) && (apinfo->aptype < 3)) {
        wcmapessid = WCM_GetApEssid(&essidlen);
        DC_InvalidateRange(wcmapessid, WM_SIZE_SSID);

        if (wcmapessid == NULL) {
            preirq = OS_RestoreInterrupts(preirq);
            return FALSE;
        }

        MI_CpuCopy8(wcmapessid, apinfo->essid, essidlen);
    }

    preirq = OS_RestoreInterrupts(preirq);

    if (DWC_AC_GetApSpotInfo(apSpotInfo)) {
        apinfo->area = ((apSpotInfo[0] >= '0') && (apSpotInfo[0] <= '9')) ? (DWCApInfoArea)(apSpotInfo[0] - '0') : DWC_APINFO_AREA_UNKNOWN;
        MI_CpuCopy8(&apSpotInfo[1], apinfo->spotinfo, DWC_SIZE_SPOTINFO);
    }
    else {
        apinfo->area = DWC_APINFO_AREA_UNKNOWN;
    }

    return TRUE;
}

void DWC_EnableHotspot(void) {
    DWC_Netcheck_SetAllow302(TRUE);
}

BOOL DWC_CheckWiFiStation(const void *ssid, u16 len) {
    return DWC_AC_CheckWiFiStation(ssid, len);
}

BOOL DWC_UpdateConnection(void) {
    DWC_ProcessInet();

    if (DWCi_CheckDisconnected()) {
        u8 aptype = DWC_AC_GetApType();

        if ((aptype == DWC_AC_AP_TYPE_FALSE) || (aptype > DWC_AC_AP_TYPE_UNKNOWN)) {
            aptype = DWC_AC_AP_TYPE_UNKNOWN;
        }

        DWCi_SetError(DWC_ERROR_DISCONNECTED, -54000 - aptype);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Detected DCF shutdown.\n");

        return TRUE;
    }

    return FALSE;
}

void DWC_ForceShutdown(void) {
}

BOOL DWC_TestInetAsync(int timeout) {
    if (stpInetCntl == NULL) {
        return FALSE;
    }
    else if (stpInetCntl->state != DWC_CONNECTINET_STATE_CONNECTED) {
        return FALSE;
    }

    return DWC_SimpleNetcheckAsync(timeout);
}

DWCTestInetResult DWC_TestInetProcess(void) {
    DWCSimpleNetcheckResult result;
    u8 aptype;

    result = DWC_SimpleNetcheckProcess();

    switch (result) {
    case DWC_SIMPLENETCHECK_PROCESSING:
        return DWC_TESTINET_OPERATING;
    case DWC_SIMPLENETCHECK_SUCCESS:
        return DWC_TESTINET_CONNECTED;
    case DWC_SIMPLENETCHECK_FAIL:
    case DWC_SIMPLENETCHECK_SYSFAIL:
        aptype = DWC_AC_GetApType();

        if ((aptype == DWC_AC_AP_TYPE_FALSE) || (aptype > DWC_AC_AP_TYPE_UNKNOWN)) {
            aptype = DWC_AC_AP_TYPE_UNKNOWN;
        }

        DWCi_SetError(DWC_ERROR_DISCONNECTED, -54100 - aptype);
        return DWC_TESTINET_DISCONNECTED;
    case DWC_SIMPLENETCHECK_NOTINITIALIZED:
        return DWC_TESTINET_NOT_INITIALIZED;
    }

    return DWC_TESTINET_DISCONNECTED;
}
