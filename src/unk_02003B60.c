#include "unk_02003B60.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_020052C8.h"

#include "game_options.h"
#include "sys_task_manager.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"



static void sub_0200413C(SoundSystem *param0);
static void sub_02004160(SoundSystem *param0);
static void sub_0200417C(SoundSystem *param0);
static void sub_020041A0(void);
static BOOL sub_02003D28(void);
static void sub_02003C64(void);
static void sub_020041B4(void);

static SoundSystem sSoundSystem;
static int Unk_02101DF0;
static NNSSndCaptureOutputEffectType Unk_02101DF4;

void SoundSystem_Init(ChatotCry *chatotCry, Options *options)
{
    SoundSystem *soundSys = SoundSystem_Get();

    NNS_SndInit();

    sub_020041A0();
    sub_0200413C(soundSys);

    soundSys->heap = NNS_SndHeapCreate(&soundSys->heapBuffer, sizeof(soundSys->heapBuffer));

    NNS_SndArcInit(&soundSys->arc, "data/sound/pl_sound_data.sdat", soundSys->heap, 0);
    (void)NNS_SndArcPlayerSetup(soundSys->heap);

    sub_02004160(soundSys);
    sub_0200417C(soundSys);

    Unk_02101DF4 = NNS_SND_CAPTURE_OUTPUT_EFFECT_NORMAL;
    soundSys->chatotCry = chatotCry;

    Sound_SetPlaybackMode(options->soundMode);

    return;
}

void UpdateSound(void)
{
    SoundSystem *v1 = SoundSystem_Get();

    if (sub_02003D28() == 0) {
        if (v1->unk_BCD4C > 0) {
            v1->unk_BCD4C--;
        }

        sub_02003C64();
    }

    CheckMicRecordingStatus();

    for (int i = 0; i < 2; i++) {
        if (v1->unk_BCDD0[i] != 0) {
            v1->unk_BCDD0[i]--;

            if (v1->unk_BCDD0[i] == 0) {
                Sound_PlayPokemonCry(v1->unk_BCDAC[i], v1->unk_BCDCC[i], v1->unk_BCDB4[i], v1->unk_BCDBC[i], v1->unk_BCDC4[i], 0);
            }
        }
    }

    NNS_SndMain();
    return;
}

static void sub_02003C64(void)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    switch (Unk_02101DF0) {
    case 0:
        break;
    case 1:
        sub_02003D0C(2);
        break;
    case 2:
        break;
    case 3:
        if (Sound_CheckFade() == 0) {
            sub_02003D0C(2);
        }
        break;
    case 4:
        if (Sound_CheckFade() == 0) {
            sub_02003D0C(2);
        }
        break;
    case 5:
        if (Sound_CheckFade() == 0) {
            if (sub_02004FEC() == 0) {
                sub_020041B4();
                Sound_PlayBGM(v1->unk_BCD5A);
            }
        }
        break;
    case 6:
        if (Sound_CheckFade() == 0) {
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

void sub_02003D0C(int param0)
{
    SoundSystem *v0 = SoundSystem_Get();

    v0->unk_BCD48 = 0;
    Unk_02101DF0 = param0;

    return;
}

static BOOL sub_02003D28(void)
{
    SoundSystem *v0 = SoundSystem_Get();

    if (sub_02004B04(2) != 0) {
        return 1;
    }

    if (v0->unk_BCD5E != 0) {
        return 1;
    }

    return 0;
}

SoundSystem *SoundSystem_Get()
{
    return &sSoundSystem;
}

void *sub_02003D5C(int param0)
{
    SoundSystem *v0 = SoundSystem_Get();

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
        return &v0->chatotCry;
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

int SoundSystem_SaveHeapState(int *heapState)
{
    SoundSystem *soundSys = SoundSystem_Get();

    int newState = NNS_SndHeapSaveState(soundSys->heap);
    if (newState == -1) {
        GF_ASSERT(FALSE);
    }

    if (heapState != NULL) {
        *heapState = newState;
    }

    return newState;
}

void SoundSystem_LoadHeapState(int heapState)
{
    SoundSystem *soundSys = SoundSystem_Get();
    NNS_SndHeapLoadState(soundSys->heap, heapState);
}

BOOL sub_02004050(u16 param0)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    v0 = NNS_SndArcLoadGroup(param0, v1->heap);
    return v0;
}

BOOL sub_02004068(u16 param0)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    v0 = NNS_SndArcLoadSeq(param0, v1->heap);
    return v0;
}

BOOL sub_02004080(u16 param0, u32 param1)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    v0 = NNS_SndArcLoadSeqEx(param0, param1, v1->heap);
    return v0;
}

BOOL sub_0200409C(u16 param0)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    v0 = NNS_SndArcLoadWaveArc(param0, v1->heap);
    return v0;
}

BOOL sub_020040B4(u16 param0)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    v0 = NNS_SndArcLoadBank(param0, v1->heap);
    return v0;
}

NNSSndHandle *sub_020040CC(int param0)
{
    SoundSystem *v0 = SoundSystem_Get();

    if (param0 >= 9) {
        GF_ASSERT(FALSE);
        param0 = 0;
    }

    return &v0->unk_BBCFC[param0];
}

int sub_020040F0(int param0)
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

static void sub_0200413C(SoundSystem *param0)
{
    int v0;

    memset(param0, 0, sizeof(SoundSystem));

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_BCD68[v0] = (v0 + 1);
    }

    return;
}

static void sub_02004160(SoundSystem *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        NNS_SndHandleInit(&param0->unk_BBCFC[v0]);
    }

    return;
}

static void sub_0200417C(SoundSystem *param0)
{
    int v0;

    SoundSystem_SaveHeapState(&param0->unk_BCD68[0]);
    v0 = sub_02004050(0);

    SoundSystem_SaveHeapState(&param0->unk_BCD68[1]);
    return;
}

static void sub_020041A0(void)
{
    MIC_Init();

    (void)PM_SetAmp(PM_AMP_ON);
    (void)PM_SetAmpGain(PM_AMPGAIN_80);

    return;
}

static void sub_020041B4(void)
{
    NNS_SndPlayerStopSeqByPlayerNo(7, 0);
    NNS_SndHandleReleaseSeq(sub_020040CC(7));

    return;
}
