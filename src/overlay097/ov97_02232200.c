#include "overlay097/ov97_02232200.h"

#include <nitro.h>
#include <string.h>

#include "overlay097/ov97_02233408.h"
#include "overlay097/ov97_022337FC.h"
#include "overlay097/ov97_02233814.h"
#include "overlay097/struct_ov97_0223222C.h"
#include "overlay097/struct_ov97_02232254.h"
#include "overlay097/struct_ov97_02232620.h"
#include "overlay097/struct_ov97_02232AC8.h"
#include "overlay097/struct_ov97_02233268.h"
#include "overlay097/struct_ov97_022335A8.h"
#include "overlay097/struct_ov97_022335C8.h"
#include "overlay097/struct_ov97_02233674.h"
#include "overlay097/struct_ov97_022339EC.h"

static void ov97_02232200(void) {
    ov97_02233424(4);
    (void)ov97_02233AD8();
}

static UnkStruct_ov97_022335A8 ov97_02232210(u8 *param0) {
    return ov97_022335A8(param0);
}

static UnkStruct_ov97_022335C8 ov97_0223221C(u8 *param0) {
    return ov97_022335C8(param0);
}

static BOOL ov97_0223222C(void) {
    if (ov97_02233430() == 12) {
        UnkStruct_ov97_0223222C *v0 = ov97_02233410();

        if (v0->unk_1C == 0) {
            (void)ov97_02233AD8();
            v0->unk_1C = 1;
        }

        return 1;
    } else {
        return 0;
    }
}

static void ov97_02232254(u32 param0) {
    UnkStruct_ov97_02232254 *v0 = ov97_02233510();
    int v1;

    for (v1 = 0; v1 < 8; v1++) {
        if ((v0->unk_00[v1].unk_00.unk_00.val2) && (v0->unk_00[v1].unk_06 == param0)) {
            v0->unk_00[v1].unk_08 = 0;
            v0->unk_00[v1].unk_0A = 0;
        }
    }
}

static u32 ov97_0223227C(void) {
    UnkStruct_ov97_02232254 *v0 = ov97_02233510();

    if (v0->unk_62 & 1) {
        v0->unk_62 &= ~1;
        return 1;
    } else if (v0->unk_62 & (1 << 6)) {
        v0->unk_62 &= ~(1 << 6);
        return 7;
    } else if (v0->unk_62 & (1 << 12)) {
        v0->unk_62 &= ~(1 << 12);
        return 13;
    } else {
        return 0;
    }
}

static BOOL ov97_022322DC(void) {
    UnkStruct_ov97_02232254 *v0 = ov97_02233510();

    v0->unk_60 = 1;
    v0->unk_62 = WM_GetAllowedChannel();

    if ((v0->unk_62 == 0) || (v0->unk_62 == 0x8000)) {
        return 0;
    } else {
        v0->unk_61 = 102;
        v0->unk_64 = 0;
        return 1;
    }
}

static void ov97_0223231C(void) {
    WMParentParam *v0 = ov97_02233408();

    v0->beaconPeriod = WM_GetDispersionBeaconPeriod();
    v0->tgid = WM_GetNextTgid();
}

static void ov97_02232334(void) {
    WMScanParam *v0 = ov97_02233478();

    v0->scanBuf = ov97_022334B4();
    v0->channel = ov97_02233408()->channel;
    v0->maxChannelTime = WM_GetDispersionScanPeriod();
    v0->bssid[0] = 0xff;
    v0->bssid[1] = 0xff;
    v0->bssid[2] = 0xff;
    v0->bssid[3] = 0xff;
    v0->bssid[4] = 0xff;
    v0->bssid[5] = 0xff;
}

static void ov97_02232360(void) {
    WMScanParam *v0 = ov97_02233478();
    u16 v1;
    s32 v2;

    v1 = WM_GetAllowedChannel();

    if (v1 == 0) {
        return;
    }

    for (v2 = 0; v2 < 16; v2++) {
        if (v1 & (0x1 << ((v0->channel + v2) % 16))) {
            v0->channel = (u16)(((v0->channel + v2) % 16) + 1);
            break;
        }
    }
}

void ov97_022323B0(void *param0) {
    WMindCallback *v0 = (WMindCallback *)param0;
    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_FIFO_ERROR) {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

void ov97_022323CC(void *param0) {
    WMPortSendCallback *v0 = (WMPortSendCallback *)param0;

    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        (void)0;
    } else {
        WMPortSendCallback *v1 = (WMPortSendCallback *)v0;
        ov97_022337FC((WMErrCode)v0->errcode);
    }
}

void ov97_022323E4(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        ov97_02233424(2);

        if (ov97_02233430() == 12) {
            ov97_02233870();
            ov97_02233424(2);
            return;
        }

        if (ov97_02233A9C() == 0) {
            ov97_02233870();
            ov97_02233424(2);
            return;
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02233870();
    }
}

void ov97_02232424(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        if (ov97_02233430() == 12) {
            WM_Finish();
            ov97_02233424(12);
            ov97_022334F0(1);
            return;
        }

        ov97_02233424(1);
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02233424(4);
    }
}

void ov97_0223245C(void *param0) {
    WMMeasureChannelCallback *v0 = (WMMeasureChannelCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        UnkStruct_ov97_02232254 *v1 = ov97_02233510();

        if (v1->unk_61 > v0->ccaBusyRatio) {
            v1->unk_61 = (u8)v0->ccaBusyRatio;
            v1->unk_64 = (u8)v0->channel;
        }

        {
            u32 v2 = ov97_0223227C();

            if (v2) {
                if (ov97_02233890(v2) == 0) {
                    ov97_02232200();
                }
            } else {
                if (v1->unk_61 < 102) {
                    ov97_0223231C();

                    if (ov97_022338BC() == 0) {
                        ov97_02232200();
                    }
                } else {
                    ov97_02232200();
                }
            }
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

void ov97_022324C4(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        if (ov97_0223222C()) {
            return;
        }

        if (ov97_022338F8() == 0) {
            ov97_02232200();
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

void ov97_022324EC(void *param0) {
    WMstartParentCallback *v0 = (WMstartParentCallback *)param0;

    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        UnkStruct_ov97_02232254 *v1 = ov97_02233510();

        ov97_02233424(8);

        if (ov97_0223222C()) {
            return;
        }

        if (v1->unk_60 == 1) {
            v1->unk_60 = 2;
        }

        switch (v0->state) {
        case WM_STATECODE_PARENT_START:
            if (ov97_02233A24() == 0) {
                ov97_02232200();
            } else {
                ov97_022334C0(0);
            }
            break;
        case WM_STATECODE_CONNECTED:
            ov97_0223380C(ov97_02233510());

            if (v1->unk_60 == 2) {
                UnkStruct_ov97_022339EC *v2 = (UnkStruct_ov97_022339EC *)v0->ssid;

                if ((v2->unk_00.unk_00.unk_00_0 == ov97_02233560()) && (v2->unk_00.unk_00.unk_00_8 <= ov97_02233570()) && (v2->unk_00.unk_04.unk_00_16 == ov97_02233580())) {
                    int v3;
                    UnkStruct_ov97_02232254 *v4 = ov97_02233510();
                    UnkStruct_ov97_022335A8 v5 = ov97_02232210(v0->macAddress);
                    UnkStruct_ov97_022335C8 v6 = ov97_0223221C(v0->macAddress);

                    for (v3 = 0; v3 < 8; v3++) {
                        UnkStruct_ov97_022335A8 *v7 = &v4->unk_00[v3].unk_00;

                        if (v7->unk_00.val2 == v5.unk_00.val2) {
                            v4->unk_00[v3].unk_06 = v0->aid;
                            v4->unk_00[v3].unk_0A = 1;
                            break;
                        }

                        if (v7->unk_00.val2 == 0) {
                            v4->unk_00[v3].unk_00.unk_00.val2 = v5.unk_00.val2;
                            v4->unk_00[v3].unk_04.unk_00.val2 = v6.unk_00.val2;
                            v4->unk_00[v3].unk_06 = v0->aid;
                            v4->unk_00[v3].unk_0A = 1;
                            break;
                        }
                    }
                }
            }
            break;
        case WM_STATECODE_BEACON_SENT:
            break;
        case WM_STATECODE_DISCONNECTED:
            ov97_02232254((u32)v0->aid);
            break;
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

static BOOL ov97_02232620(WMstartScanCallback *param0, WMBssDesc *param1) {
    int v0;
    UnkStruct_ov97_02232620 *v1 = ov97_02233508();
    UnkStruct_ov97_022335A8 v2 = ov97_02232210(param1->bssid);
    UnkStruct_ov97_022335C8 v3 = ov97_0223221C(param1->bssid);

    for (v0 = 0; v0 < 8; v0++) {
        UnkStruct_ov97_022335A8 *v4 = &v1->unk_00[v0].unk_00;
        UnkStruct_ov97_022335C8 *v5 = &v1->unk_00[v0].unk_34;

        if ((v4->unk_00.val2 == v2.unk_00.val2) && (v5->unk_00.val2 == v3.unk_00.val2)) {
            return 1;
        }

        if (v4->unk_00.val2 == 0) {
            v1->unk_00[v0].unk_00.unk_00.val2 = v2.unk_00.val2;
            v1->unk_00[v0].unk_04 = ((UnkStruct_ov97_02233268 *)param1->gameInfo.userGameInfo)->unk_08.unk_00;
            v1->unk_00[v0].unk_1C = ((UnkStruct_ov97_02233268 *)param1->gameInfo.userGameInfo)->unk_08.unk_18;
            v1->unk_00[v0].unk_34.unk_00.val2 = v3.unk_00.val2;
            v1->unk_00[v0].unk_36 = (u8)param0->linkLevel;
            return 1;
        }
    }

    return 0;
}

static void ov97_022326C0(void) {
    ov97_02232360();

    if (ov97_02233914() == 0) {
        ov97_02232200();
    }
}

static BOOL ov97_022326D4(WMstartScanCallback *param0) {
    WMBssDesc *v0 = ov97_022334B4();
    UnkStruct_ov97_02232620 *v1 = ov97_02233508();

    if (ov97_0223222C()) {
        return 1;
    }

    {
        int v2 = 0;
        int v3;

        for (v3 = 0; v3 < 8; v3++) {
            UnkStruct_ov97_022335A8 *v4 = &v1->unk_00[v3].unk_00;

            if (v4->unk_00.val2) {
                v2 = 1;
                break;
            }
        }

        if ((v2 != 0) && (v1->unk_1C0 == 0)) {
            if (ov97_022339D0() == 0) {
                ov97_02232200();
            }

            return 1;
        }
    }

    DC_InvalidateRange(v0, sizeof(WMbssDesc));
    ov97_02233808(ov97_02233508());

    if ((param0->gameInfoLength >= 8) && (v0->gameInfo.ggid == ov97_02233554())) {
        UnkStruct_ov97_02233268 *v5 = (UnkStruct_ov97_02233268 *)v0->gameInfo.userGameInfo;

        if ((v5->unk_00.unk_00.unk_00_0 == ov97_02233560()) && (v5->unk_00.unk_00.unk_00_8 <= ov97_02233570()) && (v5->unk_00.unk_04.unk_00_16 == ov97_02233580())) {
            if (ov97_02232620(param0, v0)) {
                UnkStruct_ov97_02232620 *v6 = ov97_02233508();

                if (++v6->unk_1C2 > 28) {
                    if (ov97_022339D0() == 0) {
                        ov97_02232200();
                        return 1;
                    }
                }
            } else {
                if (ov97_022339D0() == 0) {
                    ov97_02232200();
                }

                return 1;
            }
        }
    }

    return 0;
}

void ov97_022327B8(void *param0) {
    WMstartScanCallback *v0 = (WMstartScanCallback *)param0;
    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        {
            WMBssDesc *v1 = ov97_022334B4();
            ov97_02233804(v1);
        }

        ov97_02233424(6);

        if (ov97_0223222C()) {
            return;
        }

        switch (ov97_02233448()) {
        case 1: {
            UnkStruct_ov97_02232620 *v2 = ov97_02233508();
            v2->unk_1C3_4 = 1;
        } break;
        }

        switch (v0->state) {
        case WM_STATECODE_PARENT_FOUND:
            if (ov97_022326D4(v0) != 0) {
                break;
            }
        case WM_STATECODE_PARENT_NOT_FOUND:
            ov97_022326C0();
            break;
        default:
            ov97_022337FC((WMErrCode)v0->errcode);
            ov97_02232200();
            break;
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

static BOOL ov97_0223282C(void) {
    WMBssDesc *v0 = ov97_022334B4();
    UnkStruct_ov97_02232620 *v1 = ov97_02233508();
    WMParentParam *v2 = ov97_02233408();

    if (ov97_0223222C()) {
        return 1;
    }

    DC_InvalidateRange(v0, sizeof(WMbssDesc));
    ov97_02233808(ov97_02233508());

    if ((v0->gameInfoLength >= 8) && (v0->gameInfo.ggid == ov97_02233554())) {
        UnkStruct_ov97_02233268 *v3 = (UnkStruct_ov97_02233268 *)v0->gameInfo.userGameInfo;

        if ((v3->unk_00.unk_00.unk_00_0 == ov97_02233560()) && (v3->unk_00.unk_00.unk_00_8 <= ov97_02233570()) && (v3->unk_00.unk_04.unk_00_16 == ov97_02233580())) {
            UnkStruct_ov97_022335A8 v4 = ov97_02232210(v0->bssid);
            UnkStruct_ov97_022335A8 *v5 = &v1->unk_00[v1->unk_1C3_0].unk_00;

            if (v5->unk_00.val2 == v4.unk_00.val2) {
                if (ov97_022339D0() == 0) {
                    ov97_02232200();
                }

                return 1;
            }
        }
    }

    return 0;
}

void ov97_022328D4(void *param0) {
    WMstartScanCallback *v0 = (WMstartScanCallback *)param0;

    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        UnkStruct_ov97_02232620 *v1 = ov97_02233508();

        v1->unk_1C3_4 = 2;
        ov97_02233424(6);

        if (ov97_0223222C()) {
            return;
        }

        switch (v0->state) {
        case WM_STATECODE_PARENT_FOUND:
            if (ov97_0223282C() != 0) {
                break;
            }
        case WM_STATECODE_PARENT_NOT_FOUND:
            ov97_02232360();

            if (ov97_02233938() == 0) {
                ov97_02232200();
            }
            break;
        default:
            ov97_022337FC((WMErrCode)v0->errcode);
            ov97_02232200();
            break;
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

void ov97_02232944(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        ov97_02233424(7);

        if (ov97_0223222C()) {
            return;
        }

        if (ov97_02233448() == 1) {
            UnkStruct_ov97_02232620 *v1 = ov97_02233508();

            if (v1->unk_1C3_4 == 2) {
                if (ov97_022339EC() == 0) {
                    ov97_02232200();
                } else {
                    ov97_02233424(3);
                }
            }
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

void ov97_02232998(void *param0) {
    WMstartConnectCallback *v0 = (WMstartConnectCallback *)param0;

    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        ov97_02233424(9);

        if (ov97_0223222C()) {
            return;
        }

        switch (v0->state) {
        case WM_STATECODE_CONNECT_START:
            break;
        case WM_STATECODE_CONNECTED:
            ov97_022334C0(v0->aid);
            ov97_022334D8(1);
            ov97_022334E4(0);

            if (ov97_02233A24() == 0) {
                ov97_02232200();
            }
            break;
        case WM_STATECODE_BEACON_LOST:
            break;
        case WM_STATECODE_DISCONNECTED:
            if (ov97_022334CC()) {
                ov97_022334E4(1);
            }

            ov97_022334D8(0);
            break;
        default:
            ov97_022337FC((WMErrCode)v0->errcode);
            ov97_02232200();
        }
    } else {
        if (v0->errcode == WM_ERRCODE_NO_ENTRY) {
            (void)0;
        }

        if (v0->errcode == WM_ERRCODE_OVER_MAX_ENTRY) {
            (void)0;
        }

        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

static void ov97_02232A28(void) {
    switch (ov97_02233448()) {
    case 2:
        if ((ov97_022322DC() != 0) && (ov97_02233890(ov97_0223227C()) != 0)) {
            UnkStruct_ov97_02232254 *v0 = ov97_02233510();
            v0->unk_60 = 1;
            ov97_02233424(3);
        } else {
            ov97_02232200();
        }
        break;
    case 1:
        ov97_02232334();

        if (ov97_02233914() == 0) {
            ov97_02232200();
        } else {
            ov97_02233424(3);
        }
        break;
    }
}

void ov97_02232A7C(void *param0) {
    WMstartMPCallback *v0 = (WMstartMPCallback *)param0;

    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        if (v0->apiid == WM_APIID_START_MP) {
            if (ov97_0223222C()) {
                return;
            }
        }

        switch (ov97_02233448()) {
        case 2:
            ov97_02233424(10);
            break;
        case 1:
            ov97_02233424(11);
            break;
        }

        switch (v0->state) {
        case WM_STATECODE_MP_START:
            break;
        case WM_STATECODE_MPEND_IND:
            break;
        case WM_STATECODE_MP_IND:
            break;
        }
    } else {
        switch (v0->errcode) {
        case WM_ERRCODE_SEND_FAILED:
        case WM_ERRCODE_TIMEOUT:
            break;
        case WM_ERRCODE_INVALID_POLLBITMAP:
            break;
        default:
            ov97_02232200();
        }
    }
}

static void ov97_02232AC8(WMPortRecvCallback *param0) {
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    if (v0->unk_19 == 1) {
        UnkStruct_ov97_02233674 *v1 = (UnkStruct_ov97_02233674 *)v0->unk_0C;

        DC_FlushRange(param0->data, param0->length);
        MI_CpuCopy8(param0->data, v0->unk_0C, param0->length);

        if ((v1->unk_00.unk_00_0 == ov97_02233560()) && (v1->unk_00.unk_00_8 <= ov97_02233570())) {
            ov97_022337A4(v0->unk_0C);

            if (v1->unk_08.unk_00_0 != v0->unk_1C) {
                return;
            }

            ov97_02233810((UnkStruct_ov97_02233674 *)v0->unk_0C);

            if ((ov97_022337D8(v0->unk_0C)) && (v1->unk_08.unk_00_8 != 1)) {
                v0->unk_19 = 2;
            } else {
                v0->unk_19 = 0;
            }
        }
    }
}

static void ov97_02232B40(WMPortRecvCallback *param0) {
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    if ((ov97_02233448() == 2) && (v0->unk_19 != 2)) {
        UnkStruct_ov97_02233674 *v1 = (UnkStruct_ov97_02233674 *)v0->unk_0C;

        DC_FlushRange(param0->data, param0->length);
        MI_CpuCopy8(param0->data, v0->unk_0C, param0->length);

        if ((v1->unk_00.unk_00_0 == ov97_02233560()) && (v1->unk_00.unk_00_8 <= ov97_02233570())) {
            ov97_022337A4(v0->unk_0C);

            if (v1->unk_08.unk_00_0 != 0xFD) {
                return;
            } else {
                UnkStruct_ov97_02232254 *v2 = ov97_02233510();
                int v3;

                for (v3 = 0; v3 < 8; v3++) {
                    if (v2->unk_00[v3].unk_06 == param0->aid) {
                        v2->unk_00[v3].unk_08 = 1;
                        v2->unk_00[v3].unk_09 = 3;
                        v0->unk_1A = 180;
                        v0->unk_19 = 0;
                        break;
                    }
                }
            }
        }
    }
}

static void ov97_02232BCC(WMPortRecvCallback *param0) {
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    if (v0->unk_1C == 0xFD) {
        ov97_02232B40(param0);
    } else {
        if (((v0->unk_19 == 1) || (v0->unk_19 == 3)) && (v0->unk_1B == 0)) {
            UnkStruct_ov97_02233674 *v1 = (UnkStruct_ov97_02233674 *)v0->unk_0C;

            DC_FlushRange(param0->data, param0->length);
            MI_CpuCopy8(param0->data, v0->unk_0C, param0->length);

            if ((v1->unk_00.unk_00_0 == ov97_02233560()) && (v1->unk_00.unk_00_8 <= ov97_02233570())) {
                ov97_022337A4(v0->unk_0C);

                if (v1->unk_08.unk_00_0 != v0->unk_1C) {
                    return;
                }

                ov97_02233810((UnkStruct_ov97_02233674 *)v0->unk_0C);

                v0->unk_19 = 0;

                if (ov97_022337D8(v0->unk_0C)) {
                    if (v1->unk_08.unk_00_0 == 0xFD) {
                        ov97_02232B40(param0);
                    } else {
                        MI_CpuCopy8((u8 *)v0->unk_0C + v1->unk_0C.unk_00_0, v0->unk_04, v1->unk_0C.unk_00_8);
                    }

                    v1->unk_08.unk_00_8 = 0;
                    v0->unk_1B = 4;
                } else {
                    v1->unk_08.unk_00_8 = 1;
                }
            }
        }
    }
}

void ov97_02232C94(void *param0) {
    WMPortRecvCallback *v0 = (WMPortRecvCallback *)param0;

    ov97_02233800((WMStateCode)v0->state);

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        switch (v0->state) {
        case WM_STATECODE_PORT_RECV:
            switch (ov97_02233418()) {
            case 10:
            case 11: {
                UnkStruct_ov97_02232AC8 *v1 = ov97_02233538();

                switch (v1->unk_18) {
                case 1:
                    ov97_02232AC8(v0);
                    break;
                case 2:
                    ov97_02232BCC(v0);
                    break;
                }
            } break;
            }
            break;
        case WM_STATECODE_CONNECTED:
            ov97_022334D8(1);
            ov97_022334E4(0);
            break;
        case WM_STATECODE_DISCONNECTED:
            if (ov97_022334CC()) {
                ov97_022334E4(1);
            }

            switch (ov97_02233418()) {
            case 10:
                ov97_02232254((u32)v0->aid);
                break;
            case 11:
                ov97_022334D8(0);
                break;
            }
            break;
        }
    } else {
        (void)0;
    }
}

void ov97_02232D18(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        if (ov97_0223222C()) {
            return;
        }

        ov97_02232A28();
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02233424(4);
    }
}

void ov97_02232D3C(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        if (ov97_02233870() == 0) {
            (void)0;
        } else {
            ov97_02233424(2);
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02232200();
    }
}

void ov97_02232D60(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        ov97_022334C0(0);

        if (ov97_02233430() == 12) {
            if (ov97_02233AF8() == 0) {
                (void)0;
            } else {
                ov97_02233424(3);
            }
        } else {
            if (ov97_02233AB8() == 0) {
                (void)0;
            } else {
                ov97_02233424(3);
            }
        }
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02233424(4);
    }
}

void ov97_02232DA4(void *param0) {
    WMCallback *v0 = (WMCallback *)param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        ov97_02233424(12);
        ov97_022334F0(1);
    } else {
        ov97_022337FC((WMErrCode)v0->errcode);
        ov97_02233424(4);
    }
}
