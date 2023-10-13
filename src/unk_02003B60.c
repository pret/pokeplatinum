#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02003D54_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0202CC84_decl.h"

#include "struct_defs/struct_020052C8.h"
#include "struct_defs/struct_020279FC.h"

#include "unk_02003B60.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"

struct UnkStruct_02003D54_t {
    NNSSndArc unk_00;
    NNSSndHeapHandle unk_F8;
    u8 unk_FC[769024];
    NNSSndHandle unk_BBCFC[9];
    NNSSndWaveOutHandle unk_BBD20[2];
    const NNSSndArcBankInfo * unk_BBD28;
    u8 unk_BBD2C[4096] ATTRIBUTE_ALIGN(32);
    UnkStruct_020052C8 unk_BCD2C;
    u16 unk_BCD48;
    u8 unk_BCD4A;
    u8 unk_BCD4B;
    int unk_BCD4C;
    int unk_BCD50;
    int unk_BCD54;
    u16 unk_BCD58;
    u16 unk_BCD5A;
    u8 unk_BCD5C;
    u8 unk_BCD5D;
    u16 unk_BCD5E;
    u8 unk_BCD60;
    u8 unk_BCD61;
    u8 unk_BCD62;
    u8 unk_BCD63;
    u8 unk_BCD64;
    u8 unk_BCD65;
    u8 unk_BCD66;
    u8 unk_BCD67;
    int unk_BCD68[7];
    u8 unk_BCD84;
    u8 unk_BCD85;
    u16 unk_BCD86;
    const SNDWaveData * unk_BCD88;
    void * unk_BCD8C;
    int unk_BCD90;
    SysTask * unk_BCD94;
    UnkStruct_0202CC84 * unk_BCD98;
    UnkStruct_0202CC84 * unk_BCD9C[4];
    int unk_BCDAC[2];
    int unk_BCDB4[2];
    int unk_BCDBC[2];
    int unk_BCDC4[2];
    u16 unk_BCDCC[2];
    u8 unk_BCDD0[2];
    u8 unk_BCDD2;
    u8 unk_BCDD3;
};

void sub_02003B60(UnkStruct_0202CC84 * param0, UnkStruct_020279FC * param1);
void sub_02003BD8(void);
void sub_02003D0C(int param0);
UnkStruct_02003D54 * sub_02003D54(void);
void * sub_02003D5C(int param0);
int sub_02004014(int * param0);
void sub_0200403C(int param0);
BOOL sub_02004050(u16 param0);
BOOL sub_02004068(u16 param0);
BOOL sub_02004080(u16 param0, u32 param1);
BOOL sub_0200409C(u16 param0);
BOOL sub_020040B4(u16 param0);
NNSSndHandle * sub_020040CC(int param0);
int sub_020040F0(int param0);
static void sub_0200413C(UnkStruct_02003D54 * param0);
static void sub_02004160(UnkStruct_02003D54 * param0);
static void sub_0200417C(UnkStruct_02003D54 * param0);
static void sub_020041A0(void);
static BOOL sub_02003D28(void);
static void sub_02003C64(void);
static void sub_020041B4(void);

static UnkStruct_02003D54 Unk_02101DF8;
static int Unk_02101DF0;
static NNSSndCaptureOutputEffectType Unk_02101DF4;

void sub_02003B60 (UnkStruct_0202CC84 * param0, UnkStruct_020279FC * param1)
{
    UnkStruct_02003D54 * v0 = sub_02003D54();

    NNS_SndInit();

    sub_020041A0();
    sub_0200413C(v0);

    v0->unk_F8 = NNS_SndHeapCreate(&v0->unk_FC, sizeof(v0->unk_FC));

    NNS_SndArcInit(&v0->unk_00, "data/sound/pl_sound_data.sdat", v0->unk_F8, 0);
    (void)NNS_SndArcPlayerSetup(v0->unk_F8);

    sub_02004160(v0);
    sub_0200417C(v0);

    Unk_02101DF4 = NNS_SND_CAPTURE_OUTPUT_EFFECT_NORMAL;
    v0->unk_BCD98 = param0;

    sub_02004FB8(param1->unk_00_4);

    return;
}

void sub_02003BD8 (void)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    if (sub_02003D28() == 0) {
        if (v1->unk_BCD4C > 0) {
            v1->unk_BCD4C--;
        }

        sub_02003C64();
    }

    sub_02006224();

    for (v0 = 0; v0 < 2; v0++) {
        if (v1->unk_BCDD0[v0] != 0) {
            v1->unk_BCDD0[v0]--;

            if (v1->unk_BCDD0[v0] == 0) {
                sub_020059D0(v1->unk_BCDAC[v0], v1->unk_BCDCC[v0], v1->unk_BCDB4[v0], v1->unk_BCDBC[v0], v1->unk_BCDC4[v0], 0);
            }
        }
    }

    NNS_SndMain();
    return;
}

static void sub_02003C64 (void)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    switch (Unk_02101DF0) {
    case 0:
        break;
    case 1:
        sub_02003D0C(2);
        break;
    case 2:
        break;
    case 3:
        if (sub_02005684() == 0) {
            sub_02003D0C(2);
        }
        break;
    case 4:
        if (sub_02005684() == 0) {
            sub_02003D0C(2);
        }
        break;
    case 5:
        if (sub_02005684() == 0) {
            if (sub_02004FEC() == 0) {
                sub_020041B4();
                Sound_PlayBGM(v1->unk_BCD5A);
            }
        }
        break;
    case 6:
        if (sub_02005684() == 0) {
            if (sub_02004FEC() == 0) {
                sub_020041B4();
                Sound_PlayBGM(v1->unk_BCD5A);
                sub_0200560C(127, v1->unk_BCD54, 0);
            }
        }
        break;
    }

    return;
}

void sub_02003D0C (int param0)
{
    UnkStruct_02003D54 * v0 = sub_02003D54();

    v0->unk_BCD48 = 0;
    Unk_02101DF0 = param0;

    return;
}

static BOOL sub_02003D28 (void)
{
    UnkStruct_02003D54 * v0 = sub_02003D54();

    if (sub_02004B04(2) != 0) {
        return 1;
    }

    if (v0->unk_BCD5E != 0) {
        return 1;
    }

    return 0;
}

UnkStruct_02003D54 * sub_02003D54 ()
{
    return (UnkStruct_02003D54 *)&Unk_02101DF8;
}

void * sub_02003D5C (int param0)
{
    UnkStruct_02003D54 * v0 = sub_02003D54();

    switch (param0) {
    case 5:
        return &v0->unk_BCD4A;
    case 6:
        return &v0->unk_BCD4B;
    case 0:
        return &v0->unk_BBD20[0];
    case 1:
        return &v0->unk_BBD20[1];
    case 2:
        return &v0->unk_BBD28;
    case 3:
        return &v0->unk_BBD2C;
    case 4:
        return &v0->unk_BCD2C;
    case 7:
        return &v0->unk_BCD4C;
    case 8:
        return &v0->unk_BCD50;
    case 9:
        return &v0->unk_BCD54;
    case 10:
        return &v0->unk_BCD58;
    case 11:
        return &v0->unk_BCD5A;
    case 12:
        return &v0->unk_BCD5C;
    case 13:
        return &v0->unk_BCD5D;
    case 14:
        return &v0->unk_BCD5E;
    case 15:
        return &v0->unk_BCD60;
    case 16:
        return &v0->unk_BCD61;
    case 17:
        return &v0->unk_BCD62;
    case 18:
        return &v0->unk_BCD63;
    case 19:
        return &v0->unk_BCD64;
    case 20:
        return &v0->unk_BCD65;
    case 21:
        return &v0->unk_BCD66;
    case 22:
        return &v0->unk_BCD67;
    case 23:
        return &v0->unk_BCD68[0];
    case 24:
        return &v0->unk_BCD68[1];
    case 25:
        return &v0->unk_BCD68[2];
    case 26:
        return &v0->unk_BCD68[3];
    case 27:
        return &v0->unk_BCD68[4];
    case 28:
        return &v0->unk_BCD68[5];
    case 29:
        return &v0->unk_BCD68[6];
    case 30:
        return &v0->unk_BCD84;
    case 31:
        return &v0->unk_BCD85;
    case 32:
        return &v0->unk_BCD86;
    case 33:
        return &v0->unk_BCD88;
    case 34:
        return &v0->unk_BCD8C;
    case 35:
        return &v0->unk_BCD94;
    case 36:
        return &v0->unk_BCD98;
    case 37:
        return &v0->unk_BCD9C[0];
    case 38:
        return &v0->unk_BCD9C[1];
    case 39:
        return &v0->unk_BCD9C[2];
    case 40:
        return &v0->unk_BCD9C[3];
    case 41:
        return &v0->unk_BCDAC[0];
    case 42:
        return &v0->unk_BCDB4[0];
    case 43:
        return &v0->unk_BCDBC[0];
    case 44:
        return &v0->unk_BCDC4[0];
    case 45:
        return &v0->unk_BCDCC[0];
    case 46:
        return &v0->unk_BCDD0[0];
    case 47:
        return &v0->unk_BCDAC[1];
    case 48:
        return &v0->unk_BCDB4[1];
    case 49:
        return &v0->unk_BCDBC[1];
    case 50:
        return &v0->unk_BCDC4[1];
    case 51:
        return &v0->unk_BCDCC[1];
    case 52:
        return &v0->unk_BCDD0[1];
    case 53:
        return &v0->unk_BCDD2;
    case 54:
        return &v0->unk_BCDD3;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

int sub_02004014 (int * param0)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    v0 = NNS_SndHeapSaveState(v1->unk_F8);

    if (v0 == -1) {
        GF_ASSERT(FALSE);
    }

    if (param0 != NULL) {
        *param0 = v0;
    }

    return v0;
}

void sub_0200403C (int param0)
{
    UnkStruct_02003D54 * v0 = sub_02003D54();

    NNS_SndHeapLoadState(v0->unk_F8, param0);
    return;
}

BOOL sub_02004050 (u16 param0)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    v0 = NNS_SndArcLoadGroup(param0, v1->unk_F8);
    return v0;
}

BOOL sub_02004068 (u16 param0)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    v0 = NNS_SndArcLoadSeq(param0, v1->unk_F8);
    return v0;
}

BOOL sub_02004080 (u16 param0, u32 param1)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    v0 = NNS_SndArcLoadSeqEx(param0, param1, v1->unk_F8);
    return v0;
}

BOOL sub_0200409C (u16 param0)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    v0 = NNS_SndArcLoadWaveArc(param0, v1->unk_F8);
    return v0;
}

BOOL sub_020040B4 (u16 param0)
{
    int v0;
    UnkStruct_02003D54 * v1 = sub_02003D54();

    v0 = NNS_SndArcLoadBank(param0, v1->unk_F8);
    return v0;
}

NNSSndHandle * sub_020040CC (int param0)
{
    UnkStruct_02003D54 * v0 = sub_02003D54();

    if (param0 >= 9) {
        GF_ASSERT(FALSE);
        param0 = 0;
    }

    return &v0->unk_BBCFC[param0];
}

int sub_020040F0 (int param0)
{
    int v0;

    switch (param0) {
    case 1:
        v0 = 0;
        break;
    case 0:
        v0 = 1;
        break;
    case 2:
        v0 = 2;
        break;
    case 3:
        v0 = 3;
        break;
    case 4:
        v0 = 4;
        break;
    case 5:
        v0 = 5;
        break;
    case 6:
        v0 = 6;
        break;
    case 7:
        v0 = 7;
        break;
    default:
        GF_ASSERT(FALSE);
        v0 = 3;
        break;
    }

    return v0;
}

static void sub_0200413C (UnkStruct_02003D54 * param0)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_02003D54));

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_BCD68[v0] = (v0 + 1);
    }

    return;
}

static void sub_02004160 (UnkStruct_02003D54 * param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        NNS_SndHandleInit(&param0->unk_BBCFC[v0]);
    }

    return;
}

static void sub_0200417C (UnkStruct_02003D54 * param0)
{
    int v0;

    sub_02004014(&param0->unk_BCD68[0]);
    v0 = sub_02004050(0);

    sub_02004014(&param0->unk_BCD68[1]);
    return;
}

static void sub_020041A0 (void)
{
    MIC_Init();

    (void)PM_SetAmp(PM_AMP_ON);
    (void)PM_SetAmpGain(PM_AMPGAIN_80);

    return;
}

static void sub_020041B4 (void)
{
    NNS_SndPlayerStopSeqByPlayerNo(7, 0);
    NNS_SndHandleReleaseSeq(sub_020040CC(7));

    return;
}
