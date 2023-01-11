#include "include/wcm_private.h"

#define WCM_NETWORK_CAPABILITY_KIND_MASK 0x0003
#define WCM_NETWORK_CAPABILITY_KIND_ESS 0x0001
#define WCM_NETWORK_CAPABILITY_KIND_IBSS 0x0002
#define WCM_NETWORK_CAPABILITY_PRIVACY 0x0010
#define WCM_NETWORK_CAPABILITY_PREAMBLE_MASK 0x0020
#define WCM_NETWORK_CAPABILITY_PREAMBLE_LONG 0x0000
#define WCM_NETWORK_CAPABILITY_PREAMBLE_SHORT 0x0020

#define WCM_RSSI_COUNT_MAX 16
#define WCM_RSSI_BORDER_HIGH 28
#define WCM_RSSI_BORDER_MIDDLE 22
#define WCM_RSSI_BORDER_LOW 16

static WMLinkLevel WcmGetLinkLevel(void);

static u8 wcmRssi[WCM_RSSI_COUNT_MAX];
static u8 wcmRssiIndex = 0;

BOOL WCM_CompareBssID (u8 * a, u8 * b) {
    s32 i;

    for (i = 0; i < WCM_BSSID_SIZE; i++) {
        if (a[i] != b[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

WMLinkLevel WCM_GetLinkLevel (void) {
    OSIntrMode e = OS_DisableInterrupts();
    WCMWork * w = WCMi_GetSystemWork();
    WMLinkLevel ret = WM_LINK_LEVEL_0;

    if (w != NULL) {
        if (w->phase == WCM_PHASE_DCF) {
            ret = WcmGetLinkLevel();
        }
    }

    (void)OS_RestoreInterrupts(e);
    return ret;
}

BOOL WCM_IsInfrastructureNetwork (WMBssDesc * bssDesc) {
    if (bssDesc != NULL) {
        if ((bssDesc->capaInfo & WCM_NETWORK_CAPABILITY_KIND_MASK) == WCM_NETWORK_CAPABILITY_KIND_ESS) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL WCM_IsAdhocNetwork (WMBssDesc * bssDesc) {
    if (bssDesc != NULL) {
        if ((bssDesc->capaInfo & WCM_NETWORK_CAPABILITY_KIND_MASK) == WCM_NETWORK_CAPABILITY_KIND_IBSS) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL WCM_IsPrivacyNetwork (WMBssDesc * bssDesc) {
    if (bssDesc != NULL) {
        if (bssDesc->capaInfo & WCM_NETWORK_CAPABILITY_PRIVACY) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL WCM_IsShortPreambleNetwork (WMBssDesc * bssDesc) {
    if (bssDesc != NULL) {
        if ((bssDesc->capaInfo & WCM_NETWORK_CAPABILITY_PREAMBLE_MASK) == WCM_NETWORK_CAPABILITY_PREAMBLE_SHORT) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL WCM_IsLongPreambleNetwork (WMBssDesc * bssDesc) {
    if (bssDesc != NULL) {
        if ((bssDesc->capaInfo & WCM_NETWORK_CAPABILITY_PREAMBLE_MASK) == WCM_NETWORK_CAPABILITY_PREAMBLE_LONG) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL WCM_IsEssidHidden (WMBssDesc * bssDesc) {
    if (bssDesc != NULL) {
        s32 i;

        if (bssDesc->ssidLength == 0) {
            return TRUE;
        }

        for (i = 0; (i < bssDesc->ssidLength) && (i < WM_SIZE_SSID); i++) {
            if (bssDesc->ssid[i] != 0x00) {
                return FALSE;
            }
        }

        return TRUE;
    }

    return FALSE;
}

u8 WCMi_GetRssiAverage (void) {
    s32 sum = 0;
    s32 i;

    if (wcmRssiIndex > WCM_RSSI_COUNT_MAX) {
        for (i = 0; i < WCM_RSSI_COUNT_MAX; i++) {
            sum += wcmRssi[i];
        }

        sum /= WCM_RSSI_COUNT_MAX;
    } else if (wcmRssiIndex > 0) {
        for (i = 0; i < wcmRssiIndex; i++) {
            sum += wcmRssi[i];
        }

        sum /= wcmRssiIndex;
    }

    return (u8)sum;
}

static WMLinkLevel WcmGetLinkLevel (void) {
    u8 ave = WCMi_GetRssiAverage();
    WMLinkLevel level = WM_LINK_LEVEL_0;

    if (ave >= WCM_RSSI_BORDER_HIGH) {
        level = WM_LINK_LEVEL_3;
    } else if (ave >= WCM_RSSI_BORDER_MIDDLE) {
        level = WM_LINK_LEVEL_2;
    } else if (ave >= WCM_RSSI_BORDER_LOW) {
        level = WM_LINK_LEVEL_1;
    }

    return level;
}

void WCMi_ShelterRssi (u8 rssi) {
    u8 raw;

    if (rssi & 0x02) {
        raw = (u8)(rssi >> 2);
    } else {
        raw = (u8)(25 + (rssi >> 2));
    }

    wcmRssi[wcmRssiIndex % WCM_RSSI_COUNT_MAX] = raw;
    if (wcmRssiIndex >= WCM_RSSI_COUNT_MAX) {
        wcmRssiIndex = (u8)(((1 + wcmRssiIndex) % WCM_RSSI_COUNT_MAX) + WCM_RSSI_COUNT_MAX);
    } else {
        wcmRssiIndex++;
    }
}
