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



static void SoundSystem_InitHeapStates(SoundSystem *soundSys);
static void SoundSystem_InitSoundHandles(SoundSystem *soundSys);
static void SoundSystem_LoadPersistentGroup(SoundSystem *soundSys);
static void SoundSystem_InitMic();
static BOOL sub_02003D28();
static void sub_02003C64();
static void sub_020041B4();

static SoundSystem sSoundSystem;
static int Unk_02101DF0;
static NNSSndCaptureOutputEffectType Unk_02101DF4;

void SoundSystem_Init(ChatotCry *chatotCry, Options *options)
{
    SoundSystem *soundSys = SoundSystem_Get();

    NNS_SndInit();

    SoundSystem_InitMic();
    SoundSystem_InitHeapStates(soundSys);

    soundSys->heap = NNS_SndHeapCreate(&soundSys->heapBuffer, sizeof(soundSys->heapBuffer));

    NNS_SndArcInit(&soundSys->arc, "data/sound/pl_sound_data.sdat", soundSys->heap, 0);
    NNS_SndArcPlayerSetup(soundSys->heap);

    SoundSystem_InitSoundHandles(soundSys);
    SoundSystem_LoadPersistentGroup(soundSys);

    Unk_02101DF4 = NNS_SND_CAPTURE_OUTPUT_EFFECT_NORMAL;
    soundSys->chatotCry = chatotCry;

    Sound_SetPlaybackMode(options->soundMode);
}

void UpdateSound()
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

static void sub_02003C64()
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

static BOOL sub_02003D28()
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
        return &v0->heapStates[0];
    case 24:
        return &v0->heapStates[1];
    case 25:
        return &v0->heapStates[2];
    case 26:
        return &v0->heapStates[3];
    case 27:
        return &v0->heapStates[4];
    case 28:
        return &v0->heapStates[5];
    case 29:
        return &v0->heapStates[6];
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

enum SoundHeapState SoundSystem_SaveHeapState(enum SoundHeapState *state)
{
    enum SoundHeapState newState = NNS_SndHeapSaveState(SoundSystem_Get()->heap);
    if (newState == SOUND_HEAP_STATE_INVALID) {
        GF_ASSERT(FALSE);
    }

    if (state != NULL) {
        *state = newState;
    }

    return newState;
}

void SoundSystem_LoadHeapState(enum SoundHeapState state)
{
    NNS_SndHeapLoadState(SoundSystem_Get()->heap, state);
}

BOOL SoundSystem_LoadSoundGroup(u16 group)
{
    return NNS_SndArcLoadGroup(group, SoundSystem_Get()->heap);
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

    return &v0->soundHandles[param0];
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

static void SoundSystem_InitHeapStates(SoundSystem *soundSys)
{
    memset(soundSys, 0, sizeof(SoundSystem));

    for (int i = 0; i < SOUND_HEAP_STATE_COUNT; i++) {
        soundSys->heapStates[i] = (i + 1);
    }
}

static void SoundSystem_InitSoundHandles(SoundSystem *soundSys)
{
    for (int i = 0; i < SOUND_SYSTEM_HANDLE_COUNT; i++) {
        NNS_SndHandleInit(&soundSys->soundHandles[i]);
    }
}

static void SoundSystem_LoadPersistentGroup(SoundSystem *soundSys)
{
    SoundSystem_SaveHeapState(&soundSys->heapStates[SOUND_HEAP_STATE_EMPTY]);
    SoundSystem_LoadSoundGroup(0);
    SoundSystem_SaveHeapState(&soundSys->heapStates[SOUND_HEAP_STATE_PERSISTENT]);
}

static void SoundSystem_InitMic()
{
    MIC_Init();
    PM_SetAmp(PM_AMP_ON);
    PM_SetAmpGain(PM_AMPGAIN_80);
}

static void sub_020041B4()
{
    NNS_SndPlayerStopSeqByPlayerNo(7, 0);
    NNS_SndHandleReleaseSeq(sub_020040CC(7));
}
