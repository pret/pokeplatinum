#include "overlay097/ov97_02238534.h"

#include <nitro.h>
#include <nitro/cht.h>
#include <nitro/wm.h>
#include <string.h>

#include "overlay097/funcptr_ov97_02238A4C.h"

#include "crypto.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08[104];
} UnkStruct_ov97_02238AB4;

typedef struct {
    u8 unk_00[3840] ATTRIBUTE_ALIGN(32);
    WMbssDesc unk_F00 ATTRIBUTE_ALIGN(32);
    WMscanParam unk_1034 ATTRIBUTE_ALIGN(32);
    u8 unk_1054[104];
    int unk_10BC;
    CRYPTORC4Context unk_10C0;
    int unk_11C4;
    int unk_11C8;
    u16 unk_11CC;
    u16 unk_11CE;
    u16 unk_11D0;
    u16 unk_11D2;
    u32 unk_11D4;
    u32 unk_11D8;
    int unk_11DC;
    int unk_11E0;
    u8 unk_11E4[6];
    u16 unk_11EA;
    u8 *unk_11EC;
    UnkFuncPtr_ov97_02238A4C unk_11F0;
    u8 unk_11F4[1261];
} UnkStruct_ov97_022403F8;

typedef void (*UnkFuncPtr_020312B8)(WMBssDesc *);

static void ov97_02238AB4(UnkStruct_ov97_02238AB4 *param0);
static int ov97_02238B34(UnkStruct_ov97_02238AB4 *param0);
static void ov97_022388E0(void *param0);
static BOOL ov97_02238908(void);
static void ov97_0223893C(void *param0);
static BOOL ov97_02238624(void);
static void ov97_02238720(void *param0);
static BOOL ov97_02238858(void);
static void ov97_02238874(void *param0);
static void ov97_0223888C(void *param0);
static BOOL ov97_022389EC(void);
static void ov97_02238A10(void *param0);

static UnkStruct_ov97_022403F8 *Unk_ov97_022403F8;
static void (*Unk_ov97_022403FC)(const char *, ...) = NULL;

static void ov97_02238534(int param0) {
    static const char *v0[] = {
        "mywh_SYSSTATE_STOP",
        "mywh_SYSSTATE_IDLE",
        "mywh_SYSSTATE_SCANNING",
        "mywh_SYSSTATE_BUSY",
        "mywh_SYSSTATE_CONNECTED",
        "mywh_SYSSTATE_DATASHARING",
        "mywh_SYSSTATE_KEYSHARING",
        "mywh_SYSSTATE_MEASURECHANNEL",
        "mywh_SYSSTATE_CONNECT_FAIL",
        "mywh_SYSSTATE_ERROR"
    };

    if (Unk_ov97_022403FC) {
        Unk_ov97_022403FC("%s -> ", v0[(*Unk_ov97_022403F8).unk_11C4]);
    }

    (*Unk_ov97_022403F8).unk_11C4 = param0;

    if (Unk_ov97_022403FC) {
        Unk_ov97_022403FC("%s\n", v0[(*Unk_ov97_022403F8).unk_11C4]);
    }
}

static void ov97_02238584(int param0) {
    if (((*Unk_ov97_022403F8).unk_11C4 == 9) || ((*Unk_ov97_022403F8).unk_11C4 == 10)) {
        return;
    }

    (*Unk_ov97_022403F8).unk_11C8 = param0;
}

static BOOL ov97_022385A0(void) {
    Unk_ov97_022403F8->unk_11C4 != 4 ? (void)0 : OS_Terminate();

    ov97_02238534(2);

    *(u16 *)(&((*Unk_ov97_022403F8).unk_1034).bssid[4]) = 0xffff;
    *(u16 *)(&((*Unk_ov97_022403F8).unk_1034).bssid[2]) = 0xffff;
    *(u16 *)(&((*Unk_ov97_022403F8).unk_1034).bssid[0]) = 0xffff;

    if (!ov97_02238624()) {
        ov97_02238534(9);

        if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
            (*Unk_ov97_022403F8).unk_11F0(4);
        }

        return 0;
    }

    (*Unk_ov97_022403F8).unk_11CC = 2;

    if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
        (*Unk_ov97_022403F8).unk_11F0(0);
    }

    return 1;
}

static BOOL ov97_02238624(void) {
    WMErrCode v0;
    u16 v1;

    (void)(((*Unk_ov97_022403F8).unk_11C4 == 2) || (OS_Terminate(), 0));

    v1 = WM_GetAllowedChannel();

    if (v1 == 0x8000) {
        do {
            ov97_02238584(WM_ERRCODE_ILLEGAL_STATE);
        } while (0);

        return 0;
    }

    if (v1 == 0) {
        do {
            ov97_02238584(22);
        } while (0);

        return 0;
    }

    if ((*Unk_ov97_022403F8).unk_11EA >= 16) {
        int v2 = (*Unk_ov97_022403F8).unk_11EA - 16;
        int v3;

        for (v3 = 0; v3 < 13; v3++) {
            v2 = (v2 + 1) % 13;

            if (v1 & (1 << v2)) {
                break;
            }
        }

        (*Unk_ov97_022403F8).unk_11EA = (u16)(16 + v2);
        (*Unk_ov97_022403F8).unk_1034.channel = (u16)(v2 + 1);
    } else {
        (*Unk_ov97_022403F8).unk_1034.channel = (*Unk_ov97_022403F8).unk_11EA;
    }

    (*Unk_ov97_022403F8).unk_1034.maxChannelTime = 220;
    (*Unk_ov97_022403F8).unk_1034.scanBuf = &((*Unk_ov97_022403F8).unk_F00);

    if ((*Unk_ov97_022403F8).unk_11CC == 3) {
        int v4;

        for (v4 = 0; v4 < 6; v4++) {
            (*Unk_ov97_022403F8).unk_1034.bssid[v4] = (*Unk_ov97_022403F8).unk_11E4[v4];
        }
    }

    v0 = WM_StartScan(ov97_02238720, &((*Unk_ov97_022403F8).unk_1034));

    if (v0 != WM_ERRCODE_OPERATING) {
        do {
            ov97_02238584(v0);
        } while (0);

        return 0;
    }

    return 1;
}

static void ov97_02238720(void *param0) {
    WMstartScanCallback *v0 = (WMstartScanCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        do {
            ov97_02238584(v0->errcode);
        } while (0);

        ov97_02238534(9);

        if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
            (*Unk_ov97_022403F8).unk_11F0(4);
        }

        return;
    }

    if ((*Unk_ov97_022403F8).unk_11C4 != 2) {
        if (!ov97_02238858()) {
            ov97_02238534(9);

            if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
                (*Unk_ov97_022403F8).unk_11F0(4);
            }
        }

        return;
    }

    switch (v0->state) {
    case WM_STATECODE_SCAN_START:
        return;
    case WM_STATECODE_PARENT_NOT_FOUND:
        break;
    case WM_STATECODE_PARENT_FOUND:
        DC_InvalidateRange(&((*Unk_ov97_022403F8).unk_F00), sizeof(WMbssDesc));

        if ((v0->gameInfoLength < 8) || (v0->gameInfo.ggid != 0x400318)) {
            if (Unk_ov97_022403FC) {
                Unk_ov97_022403FC("not my parent ggid (%d != %d)\n", v0->gameInfo.ggid, 0x400318);
            }
            break;
        }

        (*Unk_ov97_022403F8).unk_11E0 = v0->linkLevel;

        if ((*Unk_ov97_022403F8).unk_11CC == 2) {
            ov97_02238AB4((UnkStruct_ov97_02238AB4 *)&(v0->gameInfo.userGameInfo[0]));

            {
                int v1;

                for (v1 = 0; v1 < 6; v1++) {
                    (*Unk_ov97_022403F8).unk_11E4[v1] = v0->macAddress[v1];
                }
            }

            (*Unk_ov97_022403F8).unk_11EA = (u16)((*Unk_ov97_022403F8).unk_11EA - 16 + 1);

            if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
                (*Unk_ov97_022403F8).unk_11F0(1);
            }
        }

        if (ov97_02238B34((UnkStruct_ov97_02238AB4 *)&(v0->gameInfo.userGameInfo[0]))) {
            (*Unk_ov97_022403F8).unk_11CC = 4;
            ov97_022389C8();

            return;
        }
        break;
    }

    if (!ov97_02238624()) {
        ov97_02238534(9);

        if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
            (*Unk_ov97_022403F8).unk_11F0(4);
        }
    }
}

static BOOL ov97_02238858(void) {
    WMErrCode v0;

    v0 = WM_EndScan(ov97_02238874);

    if (v0 != WM_ERRCODE_OPERATING) {
        do {
            ov97_02238584(v0);
        } while (0);

        return 0;
    }

    return 1;
}

static void ov97_02238874(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        do {
            ov97_02238584(v0->errcode);
        } while (0);

        return;
    }

    ov97_02238534(1);
}

static void ov97_0223888C(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        ov97_02238534(10);
        return;
    }

    ov97_02238534(0);

    if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
        (*Unk_ov97_022403F8).unk_11F0(3);
    }
}

static BOOL ov97_022388BC(void) {
    (*Unk_ov97_022403F8).unk_11C8 = WM_ERRCODE_SUCCESS;

    if (!ov97_02238908()) {
        return 0;
    }

    return 1;
}

static void ov97_022388E0(void *param0) {
    WMindCallback *v0 = (WMindCallback *)param0;

    if (v0->errcode == WM_ERRCODE_FIFO_ERROR) {
        ov97_02238534(9);

        if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
            (*Unk_ov97_022403F8).unk_11F0(4);
        }
    }
}

static BOOL ov97_02238908(void) {
    WMErrCode v0;

    ov97_02238534(3);
    v0 = WM_Initialize(&((*Unk_ov97_022403F8).unk_00[0]), ov97_0223893C, 2);

    if (v0 != WM_ERRCODE_OPERATING) {
        do {
            ov97_02238584(v0);
        } while (0);

        ov97_02238534(10);
        return 0;
    }

    return 1;
}

static void ov97_0223893C(void *param0) {
    WMErrCode v0;
    WMCallback *v1 = (WMCallback *)param0;

    if (v1->errcode != WM_ERRCODE_SUCCESS) {
        do {
            ov97_02238584(v1->errcode);
        } while (0);

        ov97_02238534(10);
        return;
    }

    v0 = WM_SetIndCallback(ov97_022388E0);

    if (v0 != WM_ERRCODE_SUCCESS) {
        do {
            ov97_02238584(v0);
        } while (0);

        ov97_02238534(10);
        return;
    }

    ov97_02238534(1);
    (void)ov97_022385A0();
}

static BOOL ov97_02238978(void) {
    (void)(((*Unk_ov97_022403F8).unk_11C4 == 1) || (OS_Terminate(), 0));

    ov97_02238534(3);

    if (WM_End(ov97_0223888C) != WM_ERRCODE_OPERATING) {
        ov97_02238534(9);

        if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
            (*Unk_ov97_022403F8).unk_11F0(4);
        }

        return 0;
    }

    return 1;
}

BOOL ov97_022389C8(void) {
    if ((*Unk_ov97_022403F8).unk_11C4 == 1) {
        return ov97_02238978();
    }

    return ov97_022389EC();
}

static BOOL ov97_022389EC(void) {
    WMErrCode v0;

    ov97_02238534(3);
    v0 = WM_Reset(ov97_02238A10);

    if (v0 != WM_ERRCODE_OPERATING) {
        do {
            ov97_02238584(v0);
        } while (0);

        return 0;
    }

    return 1;
}

static void ov97_02238A10(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        ov97_02238534(9);
        do {
            ov97_02238584(v0->errcode);
        } while (0);

        if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
            (*Unk_ov97_022403F8).unk_11F0(4);
        }

        return;
    }

    ov97_02238534(1);
    ov97_02238978();
}

BOOL ov97_02238A4C(void *param0, UnkFuncPtr_ov97_02238A4C param1, void *param2) {
    Unk_ov97_022403F8 = (UnkStruct_ov97_022403F8 *)(((u32)param2 + 31) / 32 * 32);
    (*Unk_ov97_022403F8).unk_11C4 = 0;
    (*Unk_ov97_022403F8).unk_11CC = 1;
    (*Unk_ov97_022403F8).unk_11EC = (u8 *)param0;
    (*Unk_ov97_022403F8).unk_11D0 = 0;
    (*Unk_ov97_022403F8).unk_11D2 = 0;
    (*Unk_ov97_022403F8).unk_11F0 = param1;
    (*Unk_ov97_022403F8).unk_11EA = 16 + 0;
    (*Unk_ov97_022403F8).unk_10BC = 0;
    (*Unk_ov97_022403F8).unk_11E0 = -1;

    return ov97_022388BC();
}

static void ov97_02238AB4(UnkStruct_ov97_02238AB4 *param0) {
    int v0;

    (*Unk_ov97_022403F8).unk_10BC = 0;
    (*Unk_ov97_022403F8).unk_11CC = 3;
    (*Unk_ov97_022403F8).unk_11CE = param0->unk_00;
    (*Unk_ov97_022403F8).unk_11D4 = param0->unk_04;
    (*Unk_ov97_022403F8).unk_11D0 = (u16)(((*Unk_ov97_022403F8).unk_11D4 - 1) / (WM_SIZE_USER_GAMEINFO - 8) + 1);
    (*Unk_ov97_022403F8).unk_11D2 = 0;
    (*Unk_ov97_022403F8).unk_11D8 = 0;

    for (v0 = 0; v0 < (*Unk_ov97_022403F8).unk_11D0; v0++) {
        (*Unk_ov97_022403F8).unk_11F4[v0] = 0;
    }
}

static int ov97_02238B34(UnkStruct_ov97_02238AB4 *param0) {
    if (((*Unk_ov97_022403F8).unk_11CE != param0->unk_00) || ((*Unk_ov97_022403F8).unk_11D4 != param0->unk_04)) {
        if ((*Unk_ov97_022403F8).unk_11D8++ >= 16) {
            ov97_02238AB4(param0);

            if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
                (*Unk_ov97_022403F8).unk_11F0(5);
            }
        } else {
            return 0;
        }
    }

    if (param0->unk_02 == 0xffff) {
        MI_CpuCopy32(&(param0->unk_08[0]), &((*Unk_ov97_022403F8).unk_1054[0]), (WM_SIZE_USER_GAMEINFO - 8));
        (*Unk_ov97_022403F8).unk_10BC = 1;
    } else {
        (*Unk_ov97_022403F8).unk_11DC = param0->unk_02;

        if (param0->unk_02 >= (*Unk_ov97_022403F8).unk_11D0) {
            if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
                (*Unk_ov97_022403F8).unk_11F0(4);
            }

            ov97_02238534(9);
        }

        if ((*Unk_ov97_022403F8).unk_11F4[param0->unk_02] == 0) {
            (*Unk_ov97_022403F8).unk_11F4[param0->unk_02] = 1;

            if (param0->unk_02 == (*Unk_ov97_022403F8).unk_11D0 - 1) {
                MI_CpuCopy32(&(param0->unk_08[0]), &((*Unk_ov97_022403F8).unk_11EC[param0->unk_02 * (WM_SIZE_USER_GAMEINFO - 8)]), (*Unk_ov97_022403F8).unk_11D4 - param0->unk_02 * (WM_SIZE_USER_GAMEINFO - 8));
            } else {
                MI_CpuCopy32(&(param0->unk_08[0]), &((*Unk_ov97_022403F8).unk_11EC[param0->unk_02 * (WM_SIZE_USER_GAMEINFO - 8)]), (WM_SIZE_USER_GAMEINFO - 8));
            }

            (*Unk_ov97_022403F8).unk_11D2++;

            if ((*Unk_ov97_022403F8).unk_11D2 == (*Unk_ov97_022403F8).unk_11D0) {
                if ((*Unk_ov97_022403F8).unk_11F0 != NULL) {
                    (*Unk_ov97_022403F8).unk_11F0(2);
                }

                return 1;
            }
        }
    }

    return 0;
}

static u16 ov97_02238C70(u8 *param0, u32 param1) {
    u16 v0, v1;
    u16 *v2 = (u16 *)param0;

    v0 = 0;

    for (v1 = 0; v1 < param1 / 2; v1++) {
        v0 += v2[v1];
        v0 = (u16)((v0 << 1) | (v0 >> 15));
    }

    return v0;
}

int ov97_02238CA0(void) {
    {
        u16 v0[4];
        u16 *v1;

        v1 = (u16 *)&((*Unk_ov97_022403F8).unk_11E4[0]);
        v0[0] = v1[0];
        v0[3] = v1[1];
        v0[2] = v1[2];
        v0[1] = (*Unk_ov97_022403F8).unk_11CE;

        {
            int v2;
            u16 v5 = 0x3fa2;

            for (v2 = 0; v2 < 4; v2++) {
                v0[v2] = v0[v2] ^ v5;
                v5 = v0[v2];
            }
        }

        {
            u8 *v3 = (u8 *)&(v0[0]);
            int v4;

            for (v4 = 0; v4 < 8; v4++) {
                (void)0;
            }
        }

        CRYPTO_RC4Init(&((*Unk_ov97_022403F8).unk_10C0), &(v0[0]), 8);
        CRYPTO_RC4Encrypt(&((*Unk_ov97_022403F8).unk_10C0), (*Unk_ov97_022403F8).unk_11EC, (*Unk_ov97_022403F8).unk_11D4, (*Unk_ov97_022403F8).unk_11EC);

        MI_CpuClear32(&((*Unk_ov97_022403F8).unk_10C0), sizeof((*Unk_ov97_022403F8).unk_10C0));
    }

    return ov97_02238C70((*Unk_ov97_022403F8).unk_11EC, (*Unk_ov97_022403F8).unk_11D4) == (*Unk_ov97_022403F8).unk_11CE;
}

int ov97_02238D4C(void) {
    return sizeof(UnkStruct_ov97_022403F8) + 32;
}

void *ov97_02238D54(void) {
    if ((*Unk_ov97_022403F8).unk_10BC) {
        return &((*Unk_ov97_022403F8).unk_1054[0]);
    }

    return NULL;
}
