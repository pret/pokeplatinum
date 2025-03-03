#include "unk_020041CC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02003D54_decl.h"
#include "struct_defs/struct_02004CB4.h"
#include "struct_defs/struct_020052C8.h"

#include "communication_system.h"
#include "heap.h"
#include "unk_02003B60.h"
#include "unk_02005474.h"

void sub_020041E8(u16 param0);
u16 sub_020041FC(void);
void sub_02004208(u16 param0);
u16 sub_02004218(void);
void sub_02004224(u16 param0);
void sub_02004964(void);
int sub_02004974(int param0);
void sub_02004234(u8 param0);
void sub_02004258(u8 param0);
int sub_0200426C(u8 param0);
BOOL sub_02004550(u8 param0, u16 param1, int param2);
static void sub_020046CC(u8 param0);
static void sub_020046F8(u16 param0, int param1);
static void sub_0200478C(u16 param0, u16 param1);
void sub_020047E8(u16 param0, u16 param1);
static void sub_02004874(u16 param0, int param1);
static void sub_020048AC(u16 param0, int param1);
static void sub_020048CC(u16 param0, int param1);
static void sub_020048F0(u16 param0, int param1);
static void sub_02004914(u8 param0);
static void sub_02004930(u8 param0, u16 param1, int param2);
void sub_02004950(u16 param0);
void sub_020049F4(u8 param0, BOOL param1);
void sub_02004A3C(void);
void sub_02004A54(int param0, int param1, int param2);
void sub_02004A68(int param0, int param1);
void sub_02004A84(int param0);
void sub_02004AA0(int param0, int param1);
void sub_02004AD4(u16 param0, int param1);
BOOL sub_02004AE8(int param0, int param1, u16 param2);
int sub_02004B04(int param0);
u8 sub_02004B18(u16 param0);
int sub_02004B34(NNSSndHandle *param0);
const NNSSndArcBankInfo *sub_02004B3C(int param0);
u16 sub_02004B48(int param0);
MICResult sub_02004B5C(MICAutoParam *param0);
MICResult sub_02004B64(void);
NNSSndWaveOutHandle *sub_02004B78(u32 param0);
BOOL sub_02004BCC(u32 param0);
void sub_02004C4C(u32 param0);
void sub_02004D14(u32 param0, u8 param1);
void sub_02004D2C(u32 param0, u32 param1);
void sub_02004D40(u32 param0, int param1);
BOOL sub_02004CB4(UnkStruct_02004CB4 *param0, u32 param1);
void sub_02004CF4(u32 param0);
BOOL sub_02004D04(u32 param0);
void sub_02004E84(u32 param0);
static void sub_02004E64(u8 *param0, u32 param1);
BOOL sub_02004EC0(void);
BOOL sub_02004EC8(int param0);
void sub_02004EEC(int param0);
void sub_02004EF4(int param0, int param1);
BOOL sub_02004EFC(void);
void sub_02004F44(void);
void sub_02004F4C(int param0);
void sub_020052C8(void *param0, void *param1, u32 param2, NNSSndCaptureFormat param3, void *param4);
void sub_02004F68(int param0, u16 param1, int param2);
void sub_02004F7C(u16 param0, u16 param1, int param2);
void sub_02004F94(int param0, u16 param1, int param2);
void sub_02004FA8(int param0, int param1);
void Sound_SetPlaybackMode(BOOL param0);
void sub_02004FCC(int param0);
void sub_02004FDC(int param0);
int sub_02004FEC(void);
void sub_0200500C(int param0);
void *sub_02005014(void);
void sub_0200501C(int param0);
BOOL sub_0200502C(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5);
BOOL sub_02005068(u8 param0, u16 param1, int param2, int param3, int param4, u8 param5, void *param6);
static void sub_020050A4(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5);
static void sub_020053C0(u16 param0);
void sub_020053CC(int param0);
static void sub_0200540C(void);
const u8 *sub_020050E0(const SNDWaveData *param0);
const u32 sub_020050EC(const SNDWaveData *param0);
const SNDWaveData *sub_020050F8(int param0);
static const SNDWaveData *sub_02005130(int param0);
u32 sub_02005188(int param0, const SNDWaveData *param1, int param2);
u32 sub_020051C4(int param0);
void sub_020051D0(const SNDWaveData *param0, u8 *param1, int param2, int param3);

static s8 Unk_021BEBA0[2000] ATTRIBUTE_ALIGN(32);
static int Unk_021BEB80;

void sub_020041CC(u8 param0)
{
    u8 *v0 = sub_02003D5C(5);

    *v0 = param0;
    return;
}

u8 sub_020041DC(void)
{
    u8 *v0 = sub_02003D5C(5);
    return *v0;
}

void sub_020041E8(u16 param0)
{
    u16 *v0 = sub_02003D5C(10);

    *v0 = param0;
    sub_02004208(0);

    return;
}

u16 sub_020041FC(void)
{
    u16 *v0 = sub_02003D5C(10);
    return *v0;
}

void sub_02004208(u16 param0)
{
    u16 *v0 = sub_02003D5C(11);

    *v0 = param0;
    return;
}

u16 sub_02004218(void)
{
    u16 *v0 = sub_02003D5C(11);
    return *v0;
}

void sub_02004224(u16 param0)
{
    u16 *v0 = sub_02003D5C(32);

    *v0 = param0;
    return;
}

void sub_02004234(u8 param0)
{
    u8 *v0 = sub_02003D5C(21);
    u8 *v1 = sub_02003D5C(22);

    if (param0 < 51) {
        *v0 = param0;
        *v1 = 0;
    } else {
        *v1 = param0;
    }

    return;
}

void sub_02004258(u8 param0)
{
    u8 *v0 = sub_02003D5C(21);
    u8 *v1 = sub_02003D5C(22);

    *v1 = param0;
    return;
}

int sub_0200426C(u8 param0)
{
    int v0;

    switch (param0) {
    case 1:
    case 9:
    case 10:
    case 17:
    case 20:
    case 23:
        v0 = sub_02004050(1);
        break;
    case 19:
        v0 = sub_02004050(1);

        sub_02004080(1399, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1401, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1403, NNS_SND_ARC_LOAD_SEQ);

        sub_02004080(1398, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1404, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1406, NNS_SND_ARC_LOAD_SEQ);

        sub_02004080(1616, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1386, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1826, NNS_SND_ARC_LOAD_SEQ);

        sub_02004080(1387, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1388, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1389, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1391, NNS_SND_ARC_LOAD_SEQ);

        sub_02004080(1598, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1603, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1394, NNS_SND_ARC_LOAD_SEQ);
        sub_02004080(1385, NNS_SND_ARC_LOAD_SEQ);
        break;
    case 14:
        v0 = sub_02004050(14);
        break;
    case 2:
    case 13:
        v0 = sub_02004050(2);
        break;
    case 18:
        v0 = sub_02004050(2);
        break;
    case 21:
        v0 = sub_020040B4(770);
        v0 = sub_0200409C(770);
        break;
    case 3:
        v0 = sub_02004050(13);
        break;
    case 4:
    case 22:
        v0 = sub_02004050(1);
        break;
    case 5:
        v0 = sub_02004050(2);
        break;
    case 11:
        v0 = sub_02004050(1);
        break;
    case 6:
        v0 = sub_02004050(11);
        break;
    case 8:
        v0 = sub_02004050(1);
        break;
    case 12:
        v0 = sub_02004050(14);
        break;
    case 16:
        v0 = sub_02004050(1);
        v0 = sub_02004050(8);
        break;
    case 15:
        v0 = sub_02004050(1);
        break;
    case 51:
        v0 = sub_02004050(3);
        break;
    case 66:
        v0 = sub_02004050(6);
        break;
    case 52:
        v0 = sub_02004050(5);
        break;
    case 7:
    case 53:
        v0 = sub_02004050(9);
        break;
    case 54:
        v0 = sub_02004050(10);
        break;
    case 55:
    case 67:
        v0 = sub_020040B4(759);
        v0 = sub_0200409C(759);
        break;
    case 56:
        v0 = sub_02004050(12);
        break;
    case 57:
        v0 = sub_02004050(7);
        break;
    case 58:
        v0 = sub_02004050(8);
        break;
    case 59:
        v0 = sub_02004050(15);
        break;
    case 60:
        v0 = sub_02004050(3);
        break;
    case 61:
        v0 = sub_02004050(5);
        break;
    case 62:
        v0 = sub_02004050(15);
        break;
    case 63:
        v0 = sub_02004050(4);
        break;
    case 64:
        v0 = sub_020040B4(767);
        v0 = sub_0200409C(767);
        break;
    case 65:
        v0 = sub_020040B4(766);
        v0 = sub_0200409C(766);
        break;
    case 68:
        v0 = sub_020040B4(769);
        v0 = sub_0200409C(769);
        break;
    }

    return v0;
}

BOOL sub_02004550(u8 param0, u16 param1, int param2)
{
    u8 *v0 = sub_02003D5C(21);
    u8 *v1 = sub_02003D5C(22);
    u16 *v2 = sub_02003D5C(14);

    if (param0 < 51) {
        if (*v0 == param0) {
            return 0;
        }
    } else {
        if (*v1 == param0) {
            return 0;
        }
    }

    sub_02004234(param0);

    switch (param0) {
    case 4:
        sub_020053CC(0);
        sub_020046F8(param1, param2);
        (*v2) = 0;
        break;
    case 5:
        sub_02004874(param1, param2);
        break;
    case 11:
        sub_020048AC(param1, param2);
        break;
    case 6:
        sub_020048CC(param1, param2);
        break;
    case 7:
        sub_020048F0(param1, param2);
        break;
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
        sub_02004914(param0);
        break;
    case 1:
        sub_020053CC(1);
        sub_02004930(param0, param1, param2);
        break;
    case 14:
        sub_020053CC(2);
        sub_02004930(param0, param1, param2);
        break;
    case 2:
        sub_020053CC(0);
        sub_02004930(param0, param1, param2);
        break;
    case 3:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
        sub_02004930(param0, param1, param2);
        break;
    case 22:
        sub_02004930(param0, param1, param2);
        break;
    }

    return 1;
}

static void sub_020046CC(u8 param0)
{
    int *v0 = sub_02003D5C(24);

    sub_0200403C(*v0);
    sub_02004014(sub_02003D5C(25));
    sub_0200426C(param0);
    sub_02004014(sub_02003D5C(26));

    return;
}

static void sub_020046F8(u16 param0, int param1)
{
    int v0, v1;
    u16 v2;
    u8 *v3 = sub_02003D5C(12);
    int *v4 = sub_02003D5C(24);
    u16 *v5 = sub_02003D5C(32);

    v1 = sub_02004B34(sub_020040CC(0));

    if (*v3 == 0) {
        if (v1 == param0) {
            if (sub_02004218() != 1152) {
                return;
            }
        }
    }

    sub_0200501C(1);
    sub_020056D4();

    if (v1 != param0) {
        sub_020049F4(1, 0);
        sub_0200569C();
    }

    if (*v3 == 1) {
        sub_0200403C(sub_02004974(2));
        sub_0200426C(4);
        sub_02004014(sub_02003D5C(26));

        if (v1 != param0) {
            sub_020049F4(1, 0);
        }

        sub_0200478C(param0, v1);
        return;
    }

    Sound_PlayBGM(param0);

    return;
}

static void sub_0200478C(u16 param0, u16 param1)
{
    u16 *v0 = sub_02003D5C(32);
    u16 v1 = sub_02004B48(*v0);

    if ((v1 != 701) && (v1 != 703)) {
        sub_02004080(param0, NNS_SND_ARC_LOAD_WAVE);
        GF_ASSERT(FALSE);
    } else {
        sub_02004080(*v0, NNS_SND_ARC_LOAD_WAVE | NNS_SND_ARC_LOAD_BANK);
    }

    sub_02004014(sub_02003D5C(27));
    sub_020049F4(1, 0);
    sub_0200560C(127, 40, 0);
    sub_0200501C(0);

    return;
}

void sub_020047E8(u16 param0, u16 param1)
{
    u16 v0;
    u8 *v1 = sub_02003D5C(19);
    u16 *v2 = sub_02003D5C(32);

    if ((*v1 == 1) || (param1 == 0)) {
        sub_0200403C(sub_02004974(1));
        sub_02004258(0);
        sub_02004080(*v2, NNS_SND_ARC_LOAD_BANK);
        sub_02004014(sub_02003D5C(25));
        sub_0200426C(4);
        sub_02004014(sub_02003D5C(26));

        v0 = sub_02004B48(*v2);

        if ((v0 != 701) && (v0 != 703)) {
            sub_02004080(param0, NNS_SND_ARC_LOAD_WAVE);
            GF_ASSERT(FALSE);
        } else {
            sub_02004080(*v2, NNS_SND_ARC_LOAD_WAVE);
        }

        sub_02004014(sub_02003D5C(27));
    }

    return;
}

static void sub_02004874(u16 param0, int param1)
{
    int *v0 = sub_02003D5C(24);

    sub_0200540C();
    sub_0200403C(sub_02004974(2));
    sub_0200426C(5);
    sub_02004014(sub_02003D5C(26));
    sub_0200501C(1);
    Sound_PlayBGM(param0);

    return;
}

static void sub_020048AC(u16 param0, int param1)
{
    int *v0 = sub_02003D5C(24);

    sub_0200569C();
    sub_02004A3C();
    sub_020046CC(4);
    Sound_PlayBGM(param0);

    return;
}

void sub_020048CC(u16 param0, int param1)
{
    int *v0 = sub_02003D5C(24);

    sub_0200569C();
    sub_020046CC(6);
    sub_0200501C(1);
    Sound_PlayBGM(param0);

    return;
}

void sub_020048F0(u16 param0, int param1)
{
    int *v0 = sub_02003D5C(24);

    sub_0200569C();
    sub_020046CC(7);
    sub_0200501C(1);
    Sound_PlayBGM(param0);

    return;
}

static void sub_02004914(u8 param0)
{
    sub_02004964();
    sub_0200426C(param0);
    sub_02004014(sub_02003D5C(28));

    return;
}

static void sub_02004930(u8 param0, u16 param1, int param2)
{
    int *v0 = sub_02003D5C(24);

    sub_0200569C();
    sub_020046CC(param0);
    Sound_PlayBGM(param1);

    return;
}

void sub_02004950(u16 param0)
{
    int v0;
    UnkStruct_02003D54 *v1 = sub_02003D54();

    sub_0200540C();

    v0 = Sound_PlayBGM(param0);
    return;
}

void sub_02004964(void)
{
    sub_0200403C(sub_02004974(4));
    return;
}

int sub_02004974(int param0)
{
    int *v0;
    UnkStruct_02003D54 *v1 = sub_02003D54();

    if (param0 >= 7) {
        GF_ASSERT(FALSE);
        v0 = sub_02003D5C(27);
        return *v0;
    }

    switch (param0) {
    case 0:
        v0 = sub_02003D5C(23);
        break;
    case 1:
        v0 = sub_02003D5C(24);
        break;
    case 2:
        v0 = sub_02003D5C(25);
        break;
    case 3:
        v0 = sub_02003D5C(26);
        break;
    case 4:
        v0 = sub_02003D5C(27);
        break;
    case 5:
        v0 = sub_02003D5C(28);
        break;
    case 6:
        v0 = sub_02003D5C(29);
        break;
    }

    return *v0;
}

void sub_020049F4(u8 param0, BOOL param1)
{
    u8 v0;
    u8 *v1;

    if (param0 == 1) {
        v1 = sub_02003D5C(12);
        v0 = 0;
    } else if (param0 == 7) {
        v1 = sub_02003D5C(13);
        v0 = 7;
    } else {
        return;
    }

    if (param1 == 0) {
        sub_020041E8(sub_02004B34(sub_020040CC(v0)));
    }

    NNS_SndPlayerPause(sub_020040CC(v0), param1);
    *v1 = param1;

    return;
}

void sub_02004A3C(void)
{
    u8 *v0 = sub_02003D5C(12);
    u8 *v1 = sub_02003D5C(13);

    *v0 = 0;
    *v1 = 0;

    return;
}

void sub_02004A54(int param0, int param1, int param2)
{
    NNS_SndPlayerMoveVolume(sub_020040CC(param0), param1, param2);
    return;
}

void sub_02004A68(int param0, int param1)
{
    if (param1 < 0) {
        param1 = 0;
    }

    if (param1 > 127) {
        param1 = 127;
    }

    NNS_SndPlayerSetInitialVolume(sub_020040CC(param0), param1);
    return;
}

void sub_02004A84(int param0)
{
    u8 v0 = sub_02004B18(param0);
    int v1 = sub_020040F0(v0);

    sub_02004AA0(param0, v1);
    return;
}

void sub_02004AA0(int param0, int param1)
{
    u8 v0;
    const NNSSndSeqParam *v1 = NNS_SndArcGetSeqParam(param0);

    switch (param1) {
    case 1:
    case 8:
        v0 = 127;
        break;
    default:
        if (v1 == NULL) {
            return;
        }

        v0 = v1->volume;
        break;
    }

    if (sub_02036314() == 1) {
        sub_02004A68(param1, (v0 / 5));
    }

    return;
}

void sub_02004AD4(u16 param0, int param1)
{
    u8 v0 = sub_02004B18(param0);
    int v1 = sub_020040F0(v0);

    sub_02004A68(v1, param1);
    return;
}

BOOL sub_02004AE8(int param0, int param1, u16 param2)
{
    return NNS_SndArcPlayerStartSeqEx(sub_020040CC(param0), param1, -1, -1, param2);
}

int sub_02004B04(int param0)
{
    if (param0 < 0) {
        GF_ASSERT(FALSE);
    }

    return NNS_SndPlayerCountPlayingSeqByPlayerNo(param0);
}

u8 sub_02004B18(u16 param0)
{
    const NNSSndSeqParam *v0;

    if (param0 == 0) {
        return 0xff;
    }

    v0 = NNS_SndArcGetSeqParam(param0);

    if (v0 == NULL) {
        return 0xff;
    }

    return v0->playerNo;
}

int sub_02004B34(NNSSndHandle *param0)
{
    return NNS_SndPlayerGetSeqNo(param0);
}

const NNSSndArcBankInfo *sub_02004B3C(int param0)
{
    const NNSSndArcBankInfo *v0;

    v0 = NNS_SndArcGetBankInfo(sub_02004B48(param0));

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

u16 sub_02004B48(int param0)
{
    const NNSSndSeqParam *v0;

    v0 = NNS_SndArcGetSeqParam(param0);

    if (v0 == NULL) {
        return 0;
    }

    return v0->bankNo;
}

MICResult sub_02004B5C(MICAutoParam *param0)
{
    MICResult v0;

    v0 = MIC_StartAutoSampling(param0);

    if (v0 != MIC_RESULT_SUCCESS) {
        (void)0;
    }

    return v0;
}

MICResult sub_02004B64(void)
{
    MICResult v0;
    UnkStruct_02003D54 *v1 = sub_02003D54();

    v0 = MIC_StopAutoSampling();

    if (v0 != MIC_RESULT_SUCCESS) {
        (void)0;
    }

    return v0;
}

MICResult sub_02004B70(MICSamplingType param0, void *param1, MICCallback param2, void *param3)
{
    MICResult v0;

    v0 = MIC_DoSamplingAsync(param0, param1, param2, param3);

    if (v0 != MIC_RESULT_SUCCESS) {
        (void)0;
    }

    return v0;
}

NNSSndWaveOutHandle *sub_02004B78(u32 param0)
{
    UnkStruct_02003D54 *v0 = sub_02003D54();
    u8 *v1 = sub_02003D5C(16);
    u8 *v2 = sub_02003D5C(17);

    if ((param0 != 14) && (param0 != 15)) {
        GF_ASSERT(FALSE);
    }

    if ((param0 == 14) && (*v1 == 0)) {
        GF_ASSERT(FALSE);
    }

    if ((param0 == 15) && (*v2 == 0)) {
        GF_ASSERT(FALSE);
    }

    if (param0 == 14) {
        return sub_02003D5C(0);
    } else {
        return sub_02003D5C(1);
    }
}

BOOL sub_02004BCC(u32 param0)
{
    u8 *v0;
    u8 *v1;
    NNSSndWaveOutHandle *v2;
    UnkStruct_02003D54 *v3 = sub_02003D54();

    v0 = sub_02003D5C(16);
    v1 = sub_02003D5C(17);

    if ((param0 != 14) && (param0 != 15)) {
        GF_ASSERT(FALSE);
    }

    if (param0 == 14) {
        if (*v0 == 0) {
            v2 = sub_02003D5C(0);
            *v2 = NNS_SndWaveOutAllocChannel(param0);

            if (*v2 == NNS_SND_WAVEOUT_INVALID_HANDLE) {
                return 0;
            }

            *v0 = 1;
        } else {
            GF_ASSERT(FALSE);
        }
    } else {
        if (*v1 == 0) {
            v2 = sub_02003D5C(1);
            *v2 = NNS_SndWaveOutAllocChannel(param0);

            if (*v2 == NNS_SND_WAVEOUT_INVALID_HANDLE) {
                return 0;
            }

            *v1 = 1;
        } else {
            GF_ASSERT(FALSE);
        }
    }

    return 1;
}

void sub_02004C4C(u32 param0)
{
    NNSSndWaveOutHandle *v0;
    UnkStruct_02003D54 *v1 = sub_02003D54();
    u8 *v2 = sub_02003D5C(16);
    u8 *v3 = sub_02003D5C(17);

    if ((param0 != 14) && (param0 != 15)) {
        GF_ASSERT(FALSE);
        return;
    }

    if (param0 == 14) {
        if (*v2 == 1) {
            v0 = sub_02004B78(param0);
            NNS_SndWaveOutFreeChannel(*v0);
            *v2 = 0;
        } else {
            GF_ASSERT(FALSE);
        }
    } else {
        if (*v3 == 1) {
            v0 = sub_02004B78(param0);
            NNS_SndWaveOutFreeChannel(*v0);
            *v3 = 0;
        } else {
            GF_ASSERT(FALSE);
        }
    }

    return;
}

BOOL sub_02004CB4(UnkStruct_02004CB4 *param0, u32 param1)
{
    int v0;

    v0 = NNS_SndWaveOutStart(*param0->unk_00, param0->unk_04, param0->unk_08, param0->unk_0C, param0->unk_10, param0->unk_14, param0->unk_18, param0->unk_1C, param0->unk_20, param0->unk_24);

    if (v0 == 0) {
        sub_02004C4C(param1);
    }

    return v0;
}

void sub_02004CF4(u32 param0)
{
    NNS_SndWaveOutStop(*sub_02004B78(param0));
    return;
}

BOOL sub_02004D04(u32 param0)
{
    return NNS_SndWaveOutIsPlaying(*sub_02004B78(param0));
}

void sub_02004D14(u32 param0, u8 param1)
{
    u8 v0;

    if (param1 > 127) {
        v0 = 127;
    } else {
        v0 = param1;
    }

    NNS_SndWaveOutSetPan(*sub_02004B78(param0), v0);
    return;
}

void sub_02004D2C(u32 param0, u32 param1)
{
    NNS_SndWaveOutSetSpeed(*sub_02004B78(param0), param1);
    return;
}

void sub_02004D40(u32 param0, int param1)
{
    if (sub_02036314() == 1) {
        NNS_SndWaveOutSetVolume(*sub_02004B78(param0), (param1 / 5));
    } else {
        NNS_SndWaveOutSetVolume(*sub_02004B78(param0), param1);
    }

    return;
}

BOOL sub_02004D78(u16 param0, int param1, int param2, u32 param3, int heapID)
{
    u8 *v0;
    const NNSSndArcWaveArcInfo *v1;
    u32 v2;
    int v3, v4;
    UnkStruct_02003D54 *v5 = sub_02003D54();
    void **v6 = sub_02003D5C(34);

    if ((param3 != 14) && (param3 != 15)) {
        GF_ASSERT(FALSE);
    }

    v1 = NNS_SndArcGetWaveArcInfo(param0);

    if (v1 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    v2 = NNS_SndArcGetFileSize(v1->fileId);

    if (v2 == 0) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (param3 == 14) {
        *v6 = Heap_AllocFromHeap(heapID, v2);

        if (*v6 == NULL) {
            GF_ASSERT(FALSE);
            return 0;
        }

        memset(*v6, 0, v2);

        v3 = NNS_SndArcReadFile(v1->fileId, *v6, v2, 0);

        if (v3 == -1) {
            GF_ASSERT(FALSE);
            return 0;
        }

        sub_02004E64(*v6, v2);
    }

    {
        UnkStruct_02004CB4 v7;

        v7.unk_00 = sub_02004B78(param3);
        v7.unk_04 = NNS_SND_WAVE_FORMAT_PCM8;
        v7.unk_08 = *v6;
        v7.unk_0C = 0;
        v7.unk_10 = 0;
        v7.unk_14 = v2;
        v7.unk_18 = 13379;
        v7.unk_1C = param1;
        v7.unk_20 = 24576;
        v7.unk_24 = param2;

        v4 = sub_02004CB4(&v7, param3);

        sub_02004D40(param3, param1);
    }

    v0 = sub_02003D5C(15);
    *v0 = 1;

    return v4;
}

static void sub_02004E64(u8 *param0, u32 param1)
{
    int v0;
    u8 v1;

    for (v0 = 0; v0 < (param1 / 2); v0++) {
        v1 = param0[v0];
        param0[v0] = param0[param1 - 1 - v0];
        param0[param1 - 1 - v0] = v1;
    }

    return;
}

void sub_02004E84(u32 param0)
{
    UnkStruct_02003D54 *v0 = sub_02003D54();
    u8 *v1 = sub_02003D5C(15);
    void **v2 = sub_02003D5C(34);

    if ((param0 != 14) && (param0 != 15)) {
        GF_ASSERT(FALSE);
    }

    sub_02004CF4(param0);

    if (*v1 == 1) {
        *v1 = 0;
        Heap_FreeToHeap(*v2);
    }

    return;
}

BOOL sub_02004EC0(void)
{
    int v0, v1;

    v1 = NNS_SndCaptureIsActive();

    return v1;
}

BOOL sub_02004EC8(int param0)
{
    UnkStruct_02003D54 *v0 = sub_02003D54();
    s8 *v1 = sub_02003D5C(3);

    return NNS_SndCaptureStartReverb(v1, 0x1000, (NNS_SND_CAPTURE_FORMAT_PCM16), 16000, param0);
}

void sub_02004EEC(int param0)
{
    NNS_SndCaptureStopReverb(param0);
    return;
}

void sub_02004EF4(int param0, int param1)
{
    NNS_SndCaptureSetReverbVolume(param0, param1);
    return;
}

BOOL sub_02004EFC(void)
{
    UnkStruct_02003D54 *v1 = sub_02003D54();

    MI_CpuClear8(sub_02003D5C(4), sizeof(UnkStruct_020052C8));
    return NNS_SndCaptureStartEffect(sub_02003D5C(3), 0x1000, NNS_SND_CAPTURE_FORMAT_PCM16, 22000, 2, sub_020052C8, sub_02003D5C(4));
}

void sub_02004F44(void)
{
    NNS_SndCaptureStopEffect();
    return;
}

void sub_02004F4C(int param0)
{
    u8 *v0 = sub_02003D5C(20);

    if (param0 > 8) {
        param0 = 8;
    } else if (param0 < 0) {
        param0 = 0;
    }

    *v0 = param0;
    return;
}

void sub_02004F68(int param0, u16 param1, int param2)
{
    NNS_SndPlayerSetTrackPitch(sub_020040CC(param0), param1, param2);
    return;
}

void sub_02004F7C(u16 param0, u16 param1, int param2)
{
    u8 v0 = sub_02004B18(param0);
    int v1 = sub_020040F0(v0);

    sub_02004F68(v1, param1, param2);
    return;
}

void sub_02004F94(int param0, u16 param1, int param2)
{
    NNS_SndPlayerSetTrackPan(sub_020040CC(param0), param1, param2);
    return;
}

void sub_02004FA8(int param0, int param1)
{
    NNS_SndPlayerSetTempoRatio(sub_020040CC(param0), param1);
    return;
}

void Sound_SetPlaybackMode(BOOL param0)
{
    NNS_SndSetMonoFlag(param0);
    Unk_021BEB80 = param0;
    return;
}

void sub_02004FCC(int param0)
{
    int *v0 = sub_02003D5C(7);

    *v0 = param0;
    return;
}

void sub_02004FDC(int param0)
{
    int *v0 = sub_02003D5C(8);

    *v0 = param0;
    return;
}

int sub_02004FEC()
{
    u16 *v0 = sub_02003D5C(8);

    if (*v0 <= 0) {
        *v0 = 0;
        return 0;
    }

    (*v0)--;
    return *v0;
}

void sub_0200500C(int param0)
{
    NNS_SndSetMasterVolume(param0);
    return;
}

void *sub_02005014(void)
{
    return &Unk_021BEBA0[0];
}

void sub_0200501C(int param0)
{
    u8 *v0 = sub_02003D5C(19);

    *v0 = param0;
    return;
}

BOOL sub_0200502C(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5)
{
    u8 *v0 = sub_02003D5C(22);

    sub_020050A4(param0, param1, param2, param3, param4, param5);
    *v0 = 0;
    sub_02003D0C(5);

    return 1;
}

BOOL sub_02005068(u8 param0, u16 param1, int param2, int param3, int param4, u8 param5, void *param6)
{
    int *v0 = sub_02003D5C(9);

    sub_020050A4(param0, param1, param2, param3, param5, param6);
    *v0 = param4;
    sub_02003D0C(6);

    return 1;
}

static void sub_020050A4(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5)
{
    const NNSSndArcBankInfo **v0 = sub_02003D5C(2);

    sub_0200564C(0, param2);
    sub_020041E8(0);

    sub_02004208(param1);
    sub_02004FDC(param3);

    *v0 = sub_02004B3C(param1);
    sub_0200501C(param4);

    return;
}

const u8 *sub_020050E0(const SNDWaveData *param0)
{
    if (param0 == NULL) {
        return NULL;
    }

    return &param0->samples[0];
}

const u32 sub_020050EC(const SNDWaveData *param0)
{
    if (param0 == NULL) {
        return 0;
    }

    return param0->param.looplen;
}

const SNDWaveData *sub_020050F8(int param0)
{
    u16 v0;

    sub_0200403C(sub_02004974(5));

    v0 = param0;

    if (v0 != 441) {
        if ((param0 > 495) || (param0 == 0)) {
            v0 = 1;
        }
    }

    sub_0200409C(v0);

    return sub_02005130(v0);
}

static const SNDWaveData *sub_02005130(int param0)
{
    u16 v0;
    const NNSSndArcWaveArcInfo *v1;
    SNDWaveArc *v2 = NULL;
    const SNDWaveData **v3 = sub_02003D5C(33);

    v0 = param0;

    if (v0 != 441) {
        if ((param0 > 495) || (param0 == 0)) {
            v0 = 1;
        }
    }

    v1 = NNS_SndArcGetWaveArcInfo(v0);

    if (v1 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    v2 = (SNDWaveArc *)NNS_SndArcGetFileAddress(v1->fileId);

    if (v2 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    *v3 = SND_GetWaveDataAddress(v2, 0);

    return *v3;
}

u32 sub_02005188(int param0, const SNDWaveData *param1, int param2)
{
    int v0;
    u32 v1;
    u32 v2 = sub_020051C4(1);
    u32 v3 = param1->param.looplen;

    v0 = param2 / (64 * 12);
    v0 = v0 * 2;

    if (v0 < 0) {
        v0 = 32 / v0 * -1;
    } else if (v0 == 0) {
        v0 = 32;
    } else {
        v0 = 32 * v0;
    }

    v1 = (v2 * v0);

    if (v1 >= v3) {
        v1 = 0;
    }

    return v1;
}

u32 sub_020051C4(int param0)
{
    u32 v0 = NNS_SndPlayerGetTick(sub_020040CC(param0));
    return v0;
}

static const u8 Unk_020E4D0C[9] = {
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

void sub_020051D0(const SNDWaveData *param0, u8 *param1, int param2, int param3)
{
    int v0;
    int v1;
    s8 v2;
    int v3, v4, v5, v6;
    u32 v7 = sub_02005188(1, param0, param3);

    v1 = v7 - 100;

    if (v1 < 0) {
        v1 = 0;
    }

    v6 = 0;
    v5 = 0;
    v2 = ((param0)->samples[v1] < 128) ? 1 : -1;

    for (v3 = v1; v3 < v7; v3 += 2) {
        v0 = 0;

        if (v2 > 0) {
            if ((param0)->samples[v3] > 128) {
                v0 = 1;
            } else {
                v6++;
            }
        } else {
            if ((param0)->samples[v3] < 128) {
                v0 = 1;
            } else {
                v6++;
            }
        }

        if (v0 == 1) {
            for (v4 = 0; v4 < 9; v4++) {
                if (v6 < Unk_020E4D0C[v4]) {
                    v5 = v4;
                    break;
                }
            }

            if (v5 >= param2) {
                v5 = (param2 - 1);
            }

            if (v6 != 0) {
                param1[param2 - 1 - v5]++;
            } else {
                (void)0;
            }

            v6 = 0;
            v0 = 0;
            v2 = ((param0)->samples[v3] < 128) ? 1 : -1;
        }
    }

    for (v3 = 0; v3 < param2; v3++) {
        if (param1[v3] >= 10) {
            param1[v3] = 9;
        }
    }

    for (v3 = 0; v3 < (param2 - 1); v3++) {
        if ((param1[v3] == 0) && (param1[v3 + 1] != 0)) {
            param1[v3] = (param1[v3 + 1] / 2);
            break;
        }
    }

    return;
}

static void sub_020052C8(void *param0, void *param1, u32 param2, NNSSndCaptureFormat param3, void *param4)
{
    s16 v0[8][2];
    s16 *v1 = (s16 *)param0;
    s16 *v2 = (s16 *)param1;
    UnkStruct_020052C8 *v3 = (UnkStruct_020052C8 *)param4;
    u8 *v4 = sub_02003D5C(20);
    int v5;
    int v6;
    int v7, v8;

    v5 = (param3 == NNS_SND_CAPTURE_FORMAT_PCM8) ? param2 : (param2 >> 1);

    if ((*v4) == 0) {
        return;
    }

    for (v7 = 0; v7 < (*v4); v7++) {
        v0[v7][0] = v1[v5 - (*v4) + v7];
        v0[v7][1] = v2[v5 - (*v4) + v7];
    }

    for (v7 = v5 - 1; v7 >= (*v4) - 1; v7--) {
        v6 = 0;

        for (v8 = 0; v8 < (*v4); v8++) {
            v6 += v1[v7 - v8];
        }

        v1[v7] = (s16)(v6 /= (*v4));

        v6 = 0;

        for (v8 = 0; v8 < (*v4); v8++) {
            v6 += v2[v7 - v8];
        }

        v2[v7] = (s16)(v6 /= (*v4));
    }

    for (v7 = 0; v7 < (*v4); v7++) {
        v3->unk_00[v7][0] = v0[v7][0];
        v3->unk_00[v7][1] = v0[v7][1];
    }

    DC_FlushRange(param0, v5);
    DC_FlushRange(param1, v5);
}

static void sub_020053C0(u16 param0)
{
    NNS_SndPlayerSetAllocatableChannel(7, param0);
    return;
}

void sub_020053CC(int param0)
{
    if (param0 == 0) {
        sub_020053C0(0x7ff);
        sub_02004EEC(0);
    } else if (param0 == 1) {
        sub_020053C0(0x7fff);

        if (sub_02004EC8(30) == 0) {
            (void)0;
        } else {
            (void)0;
        }
    } else {
        sub_020053C0(0x7fff);

        if (sub_02004EC8(15) == 0) {
            (void)0;
        } else {
            (void)0;
        }
    }

    sub_02004EC0();

    return;
}

static void sub_0200540C(void)
{
    if ((Sound_CheckFade() == 0) && (sub_02004B34(sub_020040CC(0)) != -1) && (sub_020041FC() != 1150)) {
        sub_020056D4();
        sub_020049F4(1, 1);
    } else {
        sub_0200569C();
    }

    return;
}

void sub_0200544C(int param0, int param1)
{
    NNS_SndPlayerSetPlayerVolume(param0, param1);
    return;
}

void sub_02005454(BOOL param0)
{
    u8 *v0 = sub_02003D5C(53);

    *v0 = param0;
    return;
}

void sub_02005464(BOOL param0)
{
    u8 *v0 = sub_02003D5C(54);

    *v0 = param0;
    return;
}
