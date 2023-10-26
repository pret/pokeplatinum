#include <nitro.h>
#include <string.h>
#include <nitro/wm.h>
#include <nitro/cht.h>

#include "functypes/funcptr_020312B8.h"
#include "functypes/funcptr_02031E6C.h"
#include "functypes/funcptr_02031E9C.h"
#include "functypes/funcptr_020320FC.h"
#include "functypes/funcptr_02032110.h"
#include "struct_defs/struct_0203330C.h"

#include "unk_02030EE0.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"

typedef struct {
    WMpparam unk_00 ATTRIBUTE_ALIGN(32);
    u8 unk_40[3840] ATTRIBUTE_ALIGN(32);
    u8 unk_F40[224] ATTRIBUTE_ALIGN(32);
    u8 unk_1020[512] ATTRIBUTE_ALIGN(32);
    WMbssDesc unk_1220 ATTRIBUTE_ALIGN(32);
    WMscanParam unk_1354 ATTRIBUTE_ALIGN(32);
    UnkFuncPtr_020312B8 unk_1374;
    s32 unk_1378;
    s32 unk_137C;
    u16 unk_1380;
    u16 unk_1382;
    int unk_1384;
    int unk_1388;
    UnkFuncPtr_02031E6C unk_138C;
    BOOL (* unk_1390)(WMStartParentCallback *);
    UnkFuncPtr_020320FC unk_1394;
    UnkFuncPtr_02032110 unk_1398;
    UnkFuncPtr_02032110 unk_139C;
    u16 unk_13A0;
    u16 unk_13A2;
    int unk_13A4;
    u8 unk_13A8;
    u8 unk_13A9;
    u32 unk_13AC;
    u16 unk_13B0;
    u16 unk_13B2;
    u16 unk_13B4;
    u8 unk_13B6;
    u8 unk_13B7;
    u8 unk_13B8;
    u8 unk_13B9;
} UnkStruct_021C07AC;

void include_unk_021C07A8(void);
static void sub_02031C58(void * param0);
static BOOL sub_02031C70(BOOL param0);
static void sub_02031CBC(void * param0);
static u16 sub_020319F8(u16 param0);
static void sub_02031A74(void * param0);
static WMErrCode sub_02031AF0(WMCallbackFunc param0, u16 param1);
static s16 sub_02031B30(u16 param0);
static BOOL sub_02030F10(void);
static void sub_02030F40(void * param0);
static BOOL sub_02030F64(void);
static void sub_02030FD0(void * param0);
static BOOL sub_020310DC(void);
static void sub_0203114C(void * param0);
static BOOL sub_02031320(void);
static void sub_020313E8(void * param0);
static BOOL sub_020314E4(void);
static void sub_02031500(void * param0);
static BOOL sub_02031538(void);
static void sub_020315A8(void * param0);
static BOOL sub_02031668(void);
static void sub_020316B8(void * param0);
static BOOL sub_020317E8(void * param0, u16 param1, int param2, UnkFuncPtr_02031E9C param3);
static void sub_02031840(void * param0);
static void sub_02031868(void * param0);
static BOOL sub_020311A8(void);
static void sub_020311CC(void * param0);
static BOOL sub_020311EC(void);
static void sub_02031208(void * param0);
static BOOL sub_0203171C(void);
static void sub_02031740(void * param0);
static BOOL sub_02031764(void);
static void sub_0203178C(void * param0);
static void sub_020318B0(void * param0);
static BOOL sub_020317A4(void);
static void sub_020317C8(void * param0);
static u16 sub_02031900(void);

static UnkStruct_021C07AC * Unk_021C07AC;
static void (* Unk_021C07A8) (const char *, ...) = NULL;

void include_unk_021C07A8 (void)
{
    Unk_021C07A8;
}

static void sub_02030EE0 (int param0)
{
    Unk_021C07AC->unk_1384 = param0;
}

static void sub_02030EF4 (int param0)
{
    if ((Unk_021C07AC->unk_1384 == 9) || (Unk_021C07AC->unk_1384 == 10)) {
        return;
    }

    Unk_021C07AC->unk_13A4 = param0;
}

static BOOL sub_02030F10 (void)
{
    WMErrCode v0;

    sub_02030EE0(3);

    v0 = WM_SetParentParameter(sub_02030F40, &Unk_021C07AC->unk_00);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        sub_02030EE0(9);
        return 0;
    }

    return 1;
}

static void sub_02030F40 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        sub_02030EE0(9);
        return;
    }

    {
        if (!sub_02030F64()) {
            sub_02030EE0(9);
        }
    }
}

static BOOL sub_02030F64 (void)
{
    WMErrCode v0;

    if ((Unk_021C07AC->unk_1384 == 4) || (Unk_021C07AC->unk_1384 == 6) || (Unk_021C07AC->unk_1384 == 5)) {
        return 1;
    }

    {
        WMStatus * v1 = (WMStatus *)WMi_GetStatusAddress();

        DC_InvalidateRange(&v1->wep_flag, sizeof(v1->wep_flag));
        v1->wep_flag = 0;
        DC_FlushRange(&v1->wep_flag, sizeof(v1->wep_flag));
    }
    v0 = WM_StartParent(sub_02030FD0);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    Unk_021C07AC->unk_13A0 = 0;
    Unk_021C07AC->unk_13A2 = 1;

    return 1;
}

static void sub_02030FD0 (void * param0)
{
    WMStartParentCallback * v0 = (WMStartParentCallback *)param0;
    const u16 v1 = (u16)(1 << v0->aid);

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        sub_02030EE0(9);
        return;
    }

    switch (v0->state) {
    case WM_STATECODE_BEACON_SENT:
        Unk_021C07AC->unk_13B9++;
        break;
    case WM_STATECODE_CONNECTED:
    {
        if ((Unk_021C07AC->unk_13B7 == 1) || (Unk_021C07AC->unk_13B6 == 1) || (sub_02031900() >= Unk_021C07AC->unk_13A8) || (v0->ssid[0] != sub_0203895C()) || (0 != memcmp("DP", &v0->ssid[1], sizeof("DP")))) {
            WMErrCode v2;

            v2 = WM_Disconnect(NULL, v0->aid);

            if (v2 != WM_ERRCODE_OPERATING) {
                sub_02030EF4(v2);
                sub_02030EE0(9);
            }
            break;
        }

        Unk_021C07AC->unk_13A2 |= v1;

        if (Unk_021C07AC->unk_139C) {
            Unk_021C07AC->unk_139C(v0->aid);
        }
    }
    break;
    case WM_STATECODE_DISCONNECTED:
    {
        Unk_021C07AC->unk_13A2 &= ~v1;

        if (Unk_021C07AC->unk_1398) {
            Unk_021C07AC->unk_1398(v0->aid);
        }
    }
    break;
    case WM_STATECODE_DISCONNECTED_FROM_MYSELF:
        break;
    case WM_STATECODE_PARENT_START:
    {
        if (!sub_020310DC()) {
            sub_02030EE0(9);
        }
    }
    break;
    default:
        break;
    }
}

static BOOL sub_020310DC (void)
{
    WMErrCode v0;

    if ((Unk_021C07AC->unk_1384 == 4) || (Unk_021C07AC->unk_1384 == 6) || (Unk_021C07AC->unk_1384 == 5)) {
        return 1;
    }

    sub_02030EE0(4);

    v0 = WM_StartMP(sub_0203114C, (u16 *)Unk_021C07AC->unk_1020, (u16)Unk_021C07AC->unk_137C, (u16 *)Unk_021C07AC->unk_F40, (u16)Unk_021C07AC->unk_1378, 1);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_0203114C (void * param0)
{
    WMstartMPCallback * v0 = (WMstartMPCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        sub_02030EE0(9);
        return;
    }

    switch (v0->state) {
    case WM_STATECODE_MP_START:
        if (Unk_021C07AC->unk_1388 == 2) {
            if (Unk_021C07AC->unk_1384 == 4) {
                (void)0;
            } else if (Unk_021C07AC->unk_1384 == 6) {
                return;
            }
        } else if (Unk_021C07AC->unk_1388 == 4) {
            (void)0;
        }

        sub_02030EE0(4);
        break;
    case WM_STATECODE_MPEND_IND:
        break;
    case WM_STATECODE_MP_IND:
    case WM_STATECODE_MPACK_IND:
    default:

        break;
    }
}

static BOOL sub_020311A8 (void)
{
    WMErrCode v0;

    sub_02030EE0(3);

    v0 = WM_EndMP(sub_020311CC);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_020311CC (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        sub_02031ECC();
        return;
    }

    if (!sub_020311EC()) {
        sub_02031ECC();
        return;
    }
}

static BOOL sub_020311EC (void)
{
    WMErrCode v0;

    v0 = WM_EndParent(sub_02031208);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_02031208 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        return;
    }

    sub_02030EE0(1);
}

BOOL sub_02031220 (int param0, const u8 * param1, u16 param2)
{
    Unk_021C07AC->unk_137C = WM_SIZE_MP_CHILD_RECEIVE_BUFFER(MATH_MAX((12 * (1 + 7) + 4), 192), 0);
    Unk_021C07AC->unk_1378 = MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), WM_SIZE_MP_CHILD_SEND_BUFFER(38, 0)));

    sub_02030EE0(2);

    Unk_021C07AC->unk_1220.channel = 1;
    *(u16 *)(&Unk_021C07AC->unk_1354.bssid[4]) = *(u16 *)(param1 + 4);
    *(u16 *)(&Unk_021C07AC->unk_1354.bssid[2]) = *(u16 *)(param1 + 2);
    *(u16 *)(&Unk_021C07AC->unk_1354.bssid[0]) = *(u16 *)(param1 + 0);

    Unk_021C07AC->unk_1388 = param0;

    Unk_021C07AC->unk_1374 = NULL;
    Unk_021C07AC->unk_1380 = param2;
    Unk_021C07AC->unk_1354.channel = 0;
    Unk_021C07AC->unk_1382 = 1;

    if (!sub_02031320()) {
        sub_02030EE0(9);
        return 0;
    }

    return 1;
}

BOOL sub_020312B8 (UnkFuncPtr_020312B8 param0, const u8 * param1, u16 param2)
{
    sub_02030EE0(2);

    Unk_021C07AC->unk_1374 = param0;
    Unk_021C07AC->unk_1380 = param2;
    Unk_021C07AC->unk_1354.channel = 0;
    Unk_021C07AC->unk_1382 = 0;

    *(u16 *)(&Unk_021C07AC->unk_1354.bssid[4]) = *(u16 *)(param1 + 4);
    *(u16 *)(&Unk_021C07AC->unk_1354.bssid[2]) = *(u16 *)(param1 + 2);
    *(u16 *)(&Unk_021C07AC->unk_1354.bssid[0]) = *(u16 *)(param1);

    if (!sub_02031320()) {
        sub_02030EE0(9);
        return 0;
    }

    return 1;
}

static BOOL sub_02031320 (void)
{
    WMErrCode v0;
    u16 v1;

    v1 = WM_GetAllowedChannel();

    if (v1 == 0x8000) {
        sub_02030EF4(WM_ERRCODE_ILLEGAL_STATE);
        Link_SetErrorState(1);
        return 0;
    }

    if (v1 == 0) {
        sub_02030EF4(22);
        Link_SetErrorState(1);
        return 0;
    }

    if (Unk_021C07AC->unk_1380 == 0) {
        while (TRUE) {
            Unk_021C07AC->unk_1354.channel++;

            if (Unk_021C07AC->unk_1354.channel > 16) {
                Unk_021C07AC->unk_1354.channel = 1;
            }

            if (v1 & (0x1 << (Unk_021C07AC->unk_1354.channel - 1))) {
                break;
            }
        }
    } else {
        Unk_021C07AC->unk_1354.channel = (u16)Unk_021C07AC->unk_1380;
    }

    Unk_021C07AC->unk_1354.maxChannelTime = WM_GetDispersionScanPeriod() / 3;
    Unk_021C07AC->unk_1354.scanBuf = &Unk_021C07AC->unk_1220;

    v0 = WM_StartScan(sub_020313E8, &Unk_021C07AC->unk_1354);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_020313E8 (void * param0)
{
    WMstartScanCallback * v0 = (WMstartScanCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        sub_02030EE0(9);
        return;
    }

    if (Unk_021C07AC->unk_1384 != 2) {
        Unk_021C07AC->unk_1382 = 0;

        if (!sub_020314E4()) {
            sub_02030EE0(9);
        }

        return;
    }

    switch (v0->state) {
    case WM_STATECODE_SCAN_START:
        return;
    case WM_STATECODE_PARENT_NOT_FOUND:
        break;
    case WM_STATECODE_PARENT_FOUND:

        DC_InvalidateRange(&Unk_021C07AC->unk_1220, sizeof(WMbssDesc));

        if ((Unk_021C07AC->unk_1394 != NULL) && (v0->gameInfoLength >= 8)) {
            UnkStruct_0203330C * v1 = (UnkStruct_0203330C *)v0->gameInfo.userGameInfo;

            Unk_021C07AC->unk_1394(v0->gameInfo.ggid, v1->unk_04);
        }

        if ((v0->gameInfoLength < 8) || (v0->gameInfo.ggid != Unk_021C07AC->unk_00.ggid)) {
            break;
        }

        if ((v0->gameInfo.gameNameCount_attribute & (WM_ATTR_FLAG_ENTRY | WM_ATTR_FLAG_MB)) != WM_ATTR_FLAG_ENTRY) {
            break;
        }

        if (Unk_021C07AC->unk_1374 != NULL) {
            Unk_021C07AC->unk_1374(&Unk_021C07AC->unk_1220);
        }

        if (Unk_021C07AC->unk_1382) {
            if (!sub_020314E4()) {
                sub_02030EE0(9);
            }

            return;
        }
        break;
    }

    if (!sub_02031320()) {
        sub_02030EE0(9);
    }
}

BOOL sub_020314C0 (void)
{
    if (Unk_021C07AC->unk_1384 != 2) {
        return 0;
    }

    sub_02030EE0(3);
    return 1;
}

static BOOL sub_020314E4 (void)
{
    WMErrCode v0;

    v0 = WM_EndScan(sub_02031500);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_02031500 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        return;
    }

    sub_02030EE0(1);

    if (!Unk_021C07AC->unk_1382) {
        return;
    }

    {
        if (!sub_02031538()) {
            sub_02030EE0(9);
        }
    }
}

static BOOL sub_02031538 (void)
{
    u8 v0[32];
    WMErrCode v1;

    if ((Unk_021C07AC->unk_1384 == 4) || (Unk_021C07AC->unk_1384 == 6) || (Unk_021C07AC->unk_1384 == 5)) {
        return 1;
    }

    sub_02030EE0(3);
    MI_CpuCopy8("DP", &v0[1], sizeof("DP"));

    v0[0] = sub_0203895C();
    v1 = WM_StartConnectEx(sub_020315A8, &Unk_021C07AC->unk_1220, v0, 1, WM_AUTHMODE_OPEN_SYSTEM);

    if (v1 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v1);
        return 0;
    }

    return 1;
}

static void sub_020315A8 (void * param0)
{
    WMStartConnectCallback * v0 = (WMStartConnectCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);

        if (v0->errcode == WM_ERRCODE_OVER_MAX_ENTRY) {
            sub_02030EE0(9);
            return;
        } else if (v0->errcode == WM_ERRCODE_NO_ENTRY) {
            sub_02030EE0(9);
            return;
        } else if (v0->errcode == WM_ERRCODE_FAILED) {
            if (sub_02038938()) {
                sub_02030EE0(9);
            } else {
                sub_02030EE0(8);
            }

            return;
        } else {
            sub_02030EE0(9);
        }

        return;
    }

    if (v0->state == WM_STATECODE_BEACON_LOST) {
        return;
    }

    if (v0->state == WM_STATECODE_CONNECTED) {
        if (Unk_021C07AC->unk_13A9) {
            sub_02030EF4(20);
            sub_02030EE0(9);
            return;
        } else {
            sub_02030EE0(4);

            if (!sub_02031668()) {
                sub_02030EE0(3);
                return;
            }

            Unk_021C07AC->unk_13A0 = v0->aid;
            return;
        }
    } else if (v0->state == WM_STATECODE_CONNECT_START) {
        return;
    } else if (v0->state == WM_STATECODE_DISCONNECTED) {
        sub_02030EF4(20);
        sub_02030EE0(9);
        return;
    } else if (v0->state == WM_STATECODE_DISCONNECTED_FROM_MYSELF) {
        return;
    }

    sub_02030EE0(9);
}

static BOOL sub_02031668 (void)
{
    WMErrCode v0;

    v0 = WM_StartMP(sub_020316B8, (u16 *)Unk_021C07AC->unk_1020, (u16)Unk_021C07AC->unk_137C, (u16 *)Unk_021C07AC->unk_F40, (u16)Unk_021C07AC->unk_1378, 1);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_020316B8 (void * param0)
{
    WMstartMPCallback * v0 = (WMstartMPCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        if (v0->errcode == WM_ERRCODE_SEND_FAILED) {
            return;
        } else if (v0->errcode == WM_ERRCODE_TIMEOUT) {
            return;
        } else if (v0->errcode == WM_ERRCODE_INVALID_POLLBITMAP) {
            return;
        }

        sub_02030EF4(v0->errcode);
        sub_02030EE0(9);

        return;
    }

    switch (v0->state) {
    case WM_STATECODE_MP_START:
        if (Unk_021C07AC->unk_1388 == 3) {
            if (Unk_021C07AC->unk_1384 == 6) {
                return;
            }

            if (Unk_021C07AC->unk_1384 == 4) {
                (void)0;
            }
        } else if (Unk_021C07AC->unk_1388 == 5) {
            (void)0;
        }

        sub_02030EE0(4);
        break;
    case WM_STATECODE_MP_IND:
        break;
    case WM_STATECODE_MPACK_IND:
        break;
    case WM_STATECODE_MPEND_IND:
    default:

        break;
    }
}

static BOOL sub_0203171C (void)
{
    WMErrCode v0;

    sub_02030EE0(3);
    v0 = WM_EndMP(sub_02031740);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_02031740 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        (void)sub_02031EF4();
        return;
    }

    if (!sub_02031764()) {
        sub_02030EE0(9);
    }
}

static BOOL sub_02031764 (void)
{
    WMErrCode v0;

    sub_02030EE0(3);

    v0 = WM_Disconnect(sub_0203178C, 0);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        sub_02031ECC();
        return 0;
    }

    return 1;
}

static void sub_0203178C (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
        return;
    }

    sub_02030EE0(1);
}

static BOOL sub_020317A4 (void)
{
    WMErrCode v0;

    sub_02030EE0(3);
    v0 = WM_Reset(sub_020317C8);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        return 0;
    }

    return 1;
}

static void sub_020317C8 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EE0(9);
        sub_02030EF4(v0->errcode);

        return;
    }

    sub_02030EE0(1);
}

static BOOL sub_020317E8 (void * param0, u16 param1, int param2, UnkFuncPtr_02031E9C param3)
{
    WMErrCode v0;

    DC_FlushRange(Unk_021C07AC->unk_F40, (u32)Unk_021C07AC->unk_1378);

    v0 = WM_SetMPDataToPortEx(sub_02031840, (void *)param3, param0, param1, 0xffff, param2, WM_PRIORITY_NORMAL);

    if (v0 != WM_ERRCODE_OPERATING) {
        return 0;
    }

    return 1;
}

static void sub_02031840 (void * param0)
{
    WMPortSendCallback * v0 = (WMPortSendCallback *)param0;

    if ((v0->errcode != WM_ERRCODE_SUCCESS) && (v0->errcode != WM_ERRCODE_SEND_FAILED)) {
        sub_02030EF4(v0->errcode);
        return;
    }

    if (v0->arg != NULL) {
        UnkFuncPtr_02031E9C v1 = (UnkFuncPtr_02031E9C)v0->arg;

        (*v1)((v0->errcode == WM_ERRCODE_SUCCESS));
    }
}

static void sub_02031868 (void * param0)
{
    WMPortRecvCallback * v0 = (WMPortRecvCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0->errcode);
    } else if (Unk_021C07AC->unk_138C != NULL) {
        if (v0->state == WM_STATECODE_PORT_INIT) {
            (void)0;
        } else if (v0->state == WM_STATECODE_PORT_RECV) {
            (*Unk_021C07AC->unk_138C)(v0->aid, v0->data, v0->length);
        } else if (v0->state == WM_STATECODE_DISCONNECTED) {
            (*Unk_021C07AC->unk_138C)(v0->aid, NULL, 0);
        } else if (v0->state == WM_STATECODE_DISCONNECTED_FROM_MYSELF) {
            (void)0;
        } else if (v0->state == WM_STATECODE_CONNECTED) {
            (void)0;
        }
    }
}

static void sub_020318B0 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;

    if (v0->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EE0(10);
        return;
    }

    WVR_TerminateAsync(NULL, NULL);
    sub_02030EE0(0);
}

void sub_020318D0 (u32 param0)
{
    Unk_021C07AC->unk_00.ggid = param0;
}

void sub_020318DC (u16 * param0, u16 param1)
{
    Unk_021C07AC->unk_00.userGameInfo = param0;
    Unk_021C07AC->unk_00.userGameInfoLength = param1;
}

u16 sub_020318EC (void)
{
    return Unk_021C07AC->unk_13A2;
}

static u16 sub_02031900 (void)
{
    int v0 = 0, v1;
    u16 v2 = Unk_021C07AC->unk_13A2;

    for (v1 = 0; v1 < 16; v1++) {
        if (v2 & 0x1) {
            v0++;
        }

        v2 = v2 >> 1;
    }

    return v0;
}

int sub_02031934 (void)
{
    return Unk_021C07AC->unk_1384;
}

int sub_02031948 (void)
{
    return Unk_021C07AC->unk_13A4;
}

BOOL sub_0203195C (void)
{
    u16 v0;
    u8 v1[6];

    OS_GetMacAddress(v1);

    Unk_021C07AC->unk_13AC = (u32)(OS_GetVBlankCount() + *(u16 *)&v1[0] + *(u16 *)&v1[2] + *(u16 *)&v1[4]);
    Unk_021C07AC->unk_13AC = Unk_021C07AC->unk_13AC * 69069UL + 12345;
    Unk_021C07AC->unk_13B0 = 0;
    Unk_021C07AC->unk_13B2 = 100 + 1;

    sub_02030EE0(3);

    v0 = sub_020319F8(1);

    if (v0 == 24) {
        sub_02030EF4(24);
        sub_02030EE0(9);
        Link_SetErrorState(1);
        return 0;
    }

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        sub_02030EE0(9);
        return 0;
    }

    return 1;
}

static u16 sub_020319F8 (u16 param0)
{
    u16 v0;
    u16 v1;

    v0 = WM_GetAllowedChannel();

    if (v0 == 0x8000) {
        sub_02030EF4(WM_ERRCODE_ILLEGAL_STATE);

        sub_02030EE0(9);
        Link_SetErrorState(1);

        return WM_ERRCODE_ILLEGAL_STATE;
    }

    if (v0 == 0) {
        sub_02030EF4(22);

        sub_02030EE0(9);
        Link_SetErrorState(1);

        return 24;
    }

    while (((1 << (param0 - 1)) & v0) == 0) {
        param0++;

        if (param0 > 16) {
            return 24;
        }
    }

    v1 = sub_02031AF0(sub_02031A74, param0);

    if (v1 != WM_ERRCODE_OPERATING) {
        return v1;
    }

    return v1;
}

static void sub_02031A74 (void * param0)
{
    u16 v0;
    u16 v1;
    WMMeasureChannelCallback * v2 = (WMMeasureChannelCallback *)param0;

    if (v2->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v2->errcode);

        sub_02030EE0(9);
        Link_SetErrorState(1);

        return;
    }

    v1 = v2->channel;

    if (Unk_021C07AC->unk_13B2 > v2->ccaBusyRatio) {
        Unk_021C07AC->unk_13B2 = v2->ccaBusyRatio;
        Unk_021C07AC->unk_13B4 = (u16)(1 << (v1 - 1));
    } else if (Unk_021C07AC->unk_13B2 == v2->ccaBusyRatio) {
        Unk_021C07AC->unk_13B4 |= 1 << (v1 - 1);
    }

    v0 = sub_020319F8(++v1);

    if (v0 == 24) {
        sub_02030EE0(7);
        return;
    }

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EE0(9);
        return;
    }
}

static WMErrCode sub_02031AF0 (WMCallbackFunc param0, u16 param1)
{
    return WM_MeasureChannel(param0, 3, 17, param1, 30);
}

u16 sub_02031B04 (void)
{
    sub_02030EE0(1);
    Unk_021C07AC->unk_13B0 = (u16)sub_02031B30(Unk_021C07AC->unk_13B4);

    return Unk_021C07AC->unk_13B0;
}

static s16 sub_02031B30 (u16 param0)
{
    s16 v0;
    s16 v1 = 0;
    u16 v2 = 0;
    u16 v3;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0 & (1 << v0)) {
            v1 = (s16)(v0 + 1);
            v2++;
        }
    }

    if (v2 <= 1) {
        return v1;
    }

    v3 = (u16)((((Unk_021C07AC->unk_13AC = Unk_021C07AC->unk_13AC * 69069UL + 12345) & 0xFF) * v2) / 0x100);
    v1 = 1;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0 & 1) {
            if (v3 == 0) {
                return (s16)(v0 + 1);
            }

            v3--;
        }

        param0 >>= 1;
    }

    return 0;
}

BOOL sub_02031BC4 (void * param0, BOOL param1)
{
    u32 v0 = (u32)param0;

    if (v0 % 32) {
        v0 += 32 - (v0 % 32);
    }

    Unk_021C07AC = (UnkStruct_021C07AC *)v0;
    Unk_021C07AC->unk_137C = 0;
    Unk_021C07AC->unk_1378 = 0;
    Unk_021C07AC->unk_138C = NULL;
    Unk_021C07AC->unk_13A0 = 0;
    Unk_021C07AC->unk_13A2 = 1;
    Unk_021C07AC->unk_13A4 = WM_ERRCODE_SUCCESS;
    Unk_021C07AC->unk_1384 = 0;
    Unk_021C07AC->unk_00.userGameInfo = NULL;
    Unk_021C07AC->unk_00.userGameInfoLength = 0;
    Unk_021C07AC->unk_1390 = NULL;
    Unk_021C07AC->unk_13A8 = (7 + 1);
    Unk_021C07AC->unk_13A9 = 0;
    Unk_021C07AC->unk_13B6 = 0;

    if (!sub_02031C70(param1)) {
        return 0;
    }

    return 1;
}

int sub_02031C50 (void)
{
    return sizeof(UnkStruct_021C07AC) + 32;
}

static void sub_02031C58 (void * param0)
{
    WMindCallback * v0 = (WMindCallback *)param0;

    if (v0->errcode == WM_ERRCODE_FIFO_ERROR) {
        sub_02030EE0(9);
        sub_02030EF4(25);
    }
}

static BOOL sub_02031C70 (BOOL param0)
{
    WMErrCode v0;

    sub_02030EE0(3);

    if (param0 == 1) {
        v0 = WM_Initialize(&Unk_021C07AC->unk_40, sub_02031CBC, 2);
    } else {
        v0 = WM_InitializeForListening(&Unk_021C07AC->unk_40, sub_02031CBC, 2, 0);
    }

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EF4(v0);
        sub_02030EE0(10);
        return 0;
    }

    return 1;
}

static void sub_02031CBC (void * param0)
{
    WMErrCode v0;
    WMCallback * v1 = (WMCallback *)param0;

    if (v1->errcode != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v1->errcode);

        sub_02030EE0(10);
        Link_SetErrorState(1);

        return;
    }

    v0 = WM_SetIndCallback(sub_02031C58);

    if (v0 != WM_ERRCODE_SUCCESS) {
        sub_02030EF4(v0);

        sub_02030EE0(10);
        Link_SetErrorState(1);

        return;
    }

    sub_02030EE0(1);
}

static void sub_02031D00 (void * param0)
{
    WMCallback * v0 = (WMCallback *)param0;
}

BOOL sub_02031D04 (int param0, u16 param1, u16 param2, u16 param3, u16 param4, BOOL param5)
{
    if (sub_0203276C(sub_0203895C())) {
        WM_SetLifeTime(sub_02031D00, 0xffff, 100, 5, 100);
    }

    Unk_021C07AC->unk_137C = MATH_MAX(WM_SIZE_MP_PARENT_RECEIVE_BUFFER(12, 7, 0), MATH_MAX(WM_SIZE_MP_PARENT_RECEIVE_BUFFER(12, 7, 0), WM_SIZE_MP_PARENT_RECEIVE_BUFFER(38, (5 - 1), 0)));
    Unk_021C07AC->unk_1378 = WM_SIZE_MP_PARENT_SEND_BUFFER(MATH_MAX((12 * (1 + 7) + 4), 192), 0);

    Unk_021C07AC->unk_1388 = param0;
    sub_02030EE0(3);

    Unk_021C07AC->unk_00.tgid = param1;
    Unk_021C07AC->unk_00.channel = param2;
    Unk_021C07AC->unk_00.beaconPeriod = param4;

    switch (param0) {
    case 0:
        Unk_021C07AC->unk_00.parentMaxSize = 192;

        if (param3 >= 5) {
            Unk_021C07AC->unk_00.childMaxSize = 12;
        } else {
            Unk_021C07AC->unk_00.childMaxSize = 38;
        }

        break;
    case 4:
        Unk_021C07AC->unk_00.parentMaxSize = (12 * (1 + 7) + 4);
        Unk_021C07AC->unk_00.childMaxSize = 12;
        break;
    }

    Unk_021C07AC->unk_00.maxEntry = param3;
    Unk_021C07AC->unk_00.CS_Flag = 0;
    Unk_021C07AC->unk_00.multiBootFlag = 0;
    Unk_021C07AC->unk_00.entryFlag = param5;
    Unk_021C07AC->unk_00.KS_Flag = (u16)((param0 == 2) ? 1 : 0);

    switch (param0) {
    case 0:
    case 2:
    case 4:
        return sub_02030F10();
    default:
        break;
    }

    return 0;
}

BOOL sub_02031DD8 (int param0, WMBssDesc * param1)
{
    if (sub_0203276C(sub_0203895C())) {
        WM_SetLifeTime(sub_02031D00, 0xffff, 100, 5, 100);
    }

    Unk_021C07AC->unk_137C = WM_SIZE_MP_CHILD_RECEIVE_BUFFER(MATH_MAX((12 * (1 + 7) + 4), 192), 0);
    Unk_021C07AC->unk_1378 = MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), WM_SIZE_MP_CHILD_SEND_BUFFER(38, 0)));

    Unk_021C07AC->unk_1388 = param0;
    sub_02030EE0(3);

    switch (param0) {
    case 1:
    case 3:
    case 5:
        MI_CpuCopy8(param1, &Unk_021C07AC->unk_1220, sizeof(Unk_021C07AC->unk_1220));
        DC_FlushRange(&Unk_021C07AC->unk_1220, sizeof(Unk_021C07AC->unk_1220));
        DC_WaitWriteBufferEmpty();
        {
            return sub_02031538();
        }
    default:
        break;
    }

    return 0;
}

void sub_02031E6C (UnkFuncPtr_02031E6C param0, int param1)
{
    Unk_021C07AC->unk_138C = param0;

    if (WM_SetPortCallback(param1, sub_02031868, NULL) != WM_ERRCODE_SUCCESS) {
        sub_02030EE0(9);

        while (TRUE) {
            (void)0;
        }
    }
}

BOOL sub_02031E9C (void * param0, u16 param1, int param2, UnkFuncPtr_02031E9C param3)
{
    if ((sub_02031F90() == 0) && !(0xfe & sub_020318EC())) {
        return 0;
    }

    return sub_020317E8(param0, param1, param2, param3);
}

void sub_02031ECC (void)
{
    if (2 == Unk_021C07AC->unk_1384) {
        while (TRUE) {
            (void)0;
        }
    }

    if (!sub_020317A4()) {
        sub_02030EE0(10);
    }
}

void sub_02031EF4 (void)
{
    if (Unk_021C07AC->unk_1384 == 1) {
        return;
    }

    if ((Unk_021C07AC->unk_1384 != 6) && (Unk_021C07AC->unk_1384 != 5) && (Unk_021C07AC->unk_1384 != 4)) {
        sub_02030EE0(3);
        sub_02031ECC();
        return;
    }

    sub_02030EE0(3);

    switch (Unk_021C07AC->unk_1388) {
    case 3:
        break;
    case 5:
    case 1:
        if (!sub_0203171C()) {
            sub_02031ECC();
        }
        break;
    case 2:
        break;
    case 4:
    case 0:
        if (!sub_020311A8()) {
            sub_02031ECC();
        }
    }
}

BOOL sub_02031F6C (void)
{
    int v0;

    sub_02030EE0(3);
    v0 = WM_End(sub_020318B0);

    if (v0 != WM_ERRCODE_OPERATING) {
        sub_02030EE0(9);

        return 0;
    }

    return 1;
}

u16 sub_02031F90 (void)
{
    return Unk_021C07AC->unk_13A0;
}

void sub_02031FA4 (int param0)
{
    if (Unk_021C07AC) {
        Unk_021C07AC->unk_13A8 = param0;
    }
}

BOOL sub_02031FBC (void)
{
    return Unk_021C07AC->unk_1384 == 1;
}

BOOL sub_02031FD8 (void)
{
    return Unk_021C07AC->unk_1384 == 3;
}

BOOL sub_02031FF4 (void)
{
    return Unk_021C07AC->unk_1384 == 9;
}

BOOL sub_02032010 (void)
{
    if (Unk_021C07AC) {
        return Unk_021C07AC->unk_1384 == 2;
    }

    return 0;
}

void sub_02032034 (void * param0, int param1, int param2, int param3)
{
    if (Unk_021C07AC->unk_1384 == 4) {
        WM_SetGameInfo(NULL, param0, param1, param2, param3, WM_ATTR_FLAG_ENTRY);
    } else {
        (void)0;
    }
}

static void sub_02032070 (void * param0)
{
    WMCallback * v0 = param0;

    if (v0->errcode == WM_ERRCODE_SUCCESS) {
        Unk_021C07AC->unk_13B8 = 1;
    }
}

BOOL sub_0203208C (BOOL param0)
{
    Unk_021C07AC->unk_13B8 = 0;

    if (Unk_021C07AC->unk_1384 == 4) {
        if (WM_ERRCODE_OPERATING == WM_SetEntry(sub_02032070, param0)) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_020320C4 (void)
{
    if (Unk_021C07AC) {
        return Unk_021C07AC->unk_13B9 >= 6;
    }

    return 0;
}

void sub_020320E8 (void)
{
    Unk_021C07AC->unk_13B9 = 0;
}

void sub_020320FC (UnkFuncPtr_020320FC param0)
{
    Unk_021C07AC->unk_1394 = param0;
}

void sub_02032110 (UnkFuncPtr_02032110 param0)
{
    Unk_021C07AC->unk_1398 = param0;
}

void sub_02032124 (UnkFuncPtr_02032110 param0)
{
    Unk_021C07AC->unk_139C = param0;
}

void sub_02032138 (BOOL param0)
{
    Unk_021C07AC->unk_13B6 = param0;
}

BOOL sub_0203214C (void)
{
    return Unk_021C07AC->unk_13B6;
}

void sub_02032160 (BOOL param0)
{
    Unk_021C07AC->unk_13B7 = param0;
}

void sub_02032174 (BOOL param0)
{
    Unk_021C07AC->unk_13A9 = param0;
}
