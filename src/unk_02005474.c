#include "unk_02005474.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_defs/chatot_cry.h"

#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02003B60.h"
#include "unk_020041CC.h"
#include "unk_02006224.h"

typedef struct {
    int unk_00;
    SysTask *unk_04;
} UnkStruct_02005E64;

BOOL sub_02005474(u16 param0);
BOOL Sound_PlayBGM(u16 param0);
static void sub_020054EC(u16 param0, int param1);
static BOOL sub_02005508(u16 param0, u8 param1, int param2);
static BOOL sub_02005538(u16 param0, u8 param1, int param2);
BOOL sub_02005588(u8 param0, u16 param1);
void sub_020055D0(u16 param0, int param1);
static void sub_020055F4(void);
void sub_0200560C(int param0, int param1, int param2);
void sub_0200564C(int param0, int param1);
int Sound_CheckFade(void);
int sub_02005690(u16 param0);
void sub_0200569C(void);
void sub_020056D4(void);
BOOL Sound_PlayEffect(u16 param0);
BOOL sub_02005770(u16 param0, int param1);
BOOL sub_02005728(u16 param0, int param1);
void Sound_StopEffect(u16 param0, int param1);
void sub_020057AC(int param0, int param1);
void sub_020057BC(int param0);
int sub_020057E0(void);
void sub_020057FC(u16 param0, u16 param1, int param2);
void sub_02005818(int param0);
static void sub_02005E4C(u16 param0, int param1, int param2);
void sub_0200592C(int param0);
int sub_0200598C(void);
void sub_02005E64(int param0, int heapID);
static void sub_02005EB0(SysTask *param0, void *param1);
void sub_02005F24(void);
static BOOL sub_02006038(u16 species, u8 form);
void sub_0200605C(void);
static BOOL sub_020060EC(u16 species, s8 pitch, u8 form);
static BOOL sub_02006120(u16 param0, s8 param1, int param2, int param3, int heapID);
BOOL sub_02006150(u16 param0);
int sub_0200619C(void);
static void sub_020061C8(int param0);
int sub_020061E4(void);
static void sub_02006214(u16 param0);

BOOL sub_02005474(u16 param0)
{
    int v0;
    u8 v1 = sub_02004B18(param0);
    int v2 = SoundSystem_GetSoundHandleTypeFromPlayerID(v1);

    v0 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(v2), param0);

    if (v0 == 0) {
        (void)0;
    }

    sub_020054EC(param0, v2);
    return v0;
}

BOOL Sound_PlayBGM(u16 sdatID)
{
    int v0;
    u8 v1 = sub_02004B18(sdatID);
    int v2 = SoundSystem_GetSoundHandleTypeFromPlayerID(v1);

    if (v1 == 7) {
        v0 = sub_02005508(sdatID, v1, v2);
    } else if (v1 == 1) {
        v0 = sub_02005538(sdatID, v1, v2);
    } else {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    sub_0200501C(0);

    sub_020054EC(sdatID, v2);
    return v0;
}

static void sub_020054EC(u16 param0, int param1)
{
    sub_020041E8(param0);
    sub_02004AA0(param0, param1);
    SoundSystem_SetState(1);

    return;
}

static BOOL sub_02005508(u16 param0, u8 param1, int param2)
{
    int v0;

    SoundSystem_LoadHeapState(sub_02004974(3));
    SoundSystem_LoadSequence(param0);
    SoundSystem_SaveHeapState(SoundSystem_GetParam(27));

    v0 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(param2), param0);
    return v0;
}

static BOOL sub_02005538(u16 param0, u8 param1, int param2)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(19);
    u16 *v2 = SoundSystem_GetParam(32);

    v0 = sub_02004B34(SoundSystem_GetSoundHandle(0));
    sub_020047E8(param0, sub_02004B48(v0));

    return NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(param2), -1, sub_02004B48(*v2), -1, param0);
}

BOOL sub_02005588(u8 param0, u16 param1)
{
    int v0;

    if (param0 != 4) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (sub_02004B18(param1) != 7) {
        GF_ASSERT(FALSE);
        return 0;
    }

    v0 = SoundSystem_LoadSequenceEx(param1, NNS_SND_ARC_LOAD_SEQ);
    v0 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(7), param1);

    if (v0 == 0) {
        (void)0;
    }

    sub_020041E8(param1);
    SoundSystem_SetState(1);

    return v0;
}

void sub_020055D0(u16 param0, int param1)
{
    u8 v0;
    int v1;

    NNS_SndPlayerStopSeqBySeqNo(param0, param1);

    v0 = sub_02004B18(param0);

    if (v0 != 0xff) {
        v1 = SoundSystem_GetSoundHandleTypeFromPlayerID(v0);
        NNS_SndHandleReleaseSeq(SoundSystem_GetSoundHandle(v1));
    }

    sub_020055F4();
    return;
}

static void sub_020055F4(void)
{
    sub_020041E8(0);
    sub_02004208(0);
    SoundSystem_SetState(0);

    return;
}

void sub_0200560C(int param0, int param1, int param2)
{
    u8 v0;
    int v1;
    u16 v2 = sub_020041FC();

    v0 = sub_02004B18(v2);

    if (v0 == 0xff) {
        return;
    }

    v1 = SoundSystem_GetSoundHandleTypeFromPlayerID(v0);

    if (param2 == 0) {
        sub_02004A54(v1, 0, 0);
    }

    sub_02004A54(v1, param0, param1);
    sub_02004FCC(param1);
    SoundSystem_SetState(3);

    return;
}

void sub_0200564C(int targetVolume, int frames)
{
    u16 v2 = sub_020041FC();
    u8 v0 = sub_02004B18(v2);

    if (v0 == 0xff) {
        return;
    }

    if (Sound_CheckFade() == 0) {
        int v1 = SoundSystem_GetSoundHandleTypeFromPlayerID(v0);

        sub_02004A54(v1, targetVolume, frames);
        sub_02004FCC(frames);
    }

    SoundSystem_SetState(4);
}

int Sound_CheckFade()
{
    u16 *v0 = SoundSystem_GetParam(7);
    return *v0;
}

int sub_02005690(u16 param0)
{
    u8 v0 = sub_02004B18(param0);
    return sub_02004B04(v0);
}

void sub_0200569C(void)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);

    NNS_SndPlayerStopSeqAll(0);

    if (*v0 == 1) {
        sub_02004CF4(14);
    }

    if (*v1 == 1) {
        sub_02004CF4(15);
    }

    SoundSystem_SetState(0);
    return;
}

void sub_020056D4(void)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(16);
    u8 *v2 = SoundSystem_GetParam(17);

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(7), 0);
    sub_020055F4();

    for (v0 = 0; v0 < 4; v0++) {
        sub_020057AC((3 + v0), 0);
    }

    sub_0200592C(0);

    if (*v1 == 1) {
        sub_02004CF4(14);
    }

    if (*v2 == 1) {
        sub_02004CF4(15);
    }

    return;
}

BOOL sub_02005728(u16 param0, int param1)
{
    int v0 = Sound_PlayEffect(param0);
    sub_020057FC(param0, 0xffff, param1);

    return v0;
}

BOOL Sound_PlayEffect(u16 sdatID)
{
    int v0 = SoundSystem_GetSoundHandleTypeFromPlayerID(sub_02004B18(sdatID));
    int v1 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(v0), sdatID);

    sub_02004AA0(sdatID, v0);

    return v1;
}

BOOL sub_02005770(u16 param0, int param1)
{
    int v0 = SoundSystem_GetSoundHandleTypeFromPlayerID(param1);
    int v1 = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(v0), param1, -1, -1, param0);

    sub_02004AA0(param0, v0);

    if (v1 == 0) {
        (void)0;
    }

    return v1;
}

void Sound_StopEffect(u16 param0, int param1)
{
    NNS_SndPlayerStopSeqBySeqNo(param0, param1);
    return;
}

void sub_020057AC(int param0, int param1)
{
    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(param0), param1);
    return;
}

void sub_020057BC(int param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_020057AC((3 + v0), 0);
    }

    return;
}

int Sound_IsEffectPlaying(u16 param0)
{
    return sub_02004B04(sub_02004B18(param0));
}

int sub_020057E0()
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_02004B04(3 + v0) == 1) {
            return 1;
        }
    }

    return 0;
}

void sub_020057FC(u16 param0, u16 param1, int param2)
{
    int v0 = SoundSystem_GetSoundHandleTypeFromPlayerID(sub_02004B18(param0));

    NNS_SndPlayerSetTrackPan(SoundSystem_GetSoundHandle(v0), param1, param2);
    return;
}

void sub_02005818(int param0)
{
    int v0, v1;

    v0 = SoundSystem_GetSoundHandleTypeFromPlayerID(3);

    for (v1 = 0; v1 < 4; v1++) {
        NNS_SndPlayerSetTrackPan(SoundSystem_GetSoundHandle(v0 + v1), 0xffff, param0);
    }

    return;
}

BOOL sub_02005844(u16 species, u8 form)
{
    int v1;
    u8 *v2 = SoundSystem_GetParam(18);
    ChatotCry **chatotCry = SoundSystem_GetParam(36);
    u8 *v4 = SoundSystem_GetParam(53);

    if (sub_02006038(species, form) == 1) {
        species = SPECIES_EGG;
    }

    if (species != SPECIES_EGG) {
        if ((species > MAX_SPECIES) || (species == SPECIES_NONE)) {
            species = SPECIES_BULBASAUR;
        }
    }

    if (species == SPECIES_CHATOT) {
        if (ProcessAudioInput(*chatotCry, 0, 127, 0) == TRUE) {
            Sound_FlagDefaultChatotCry(FALSE);
            return 1;
        }
    }

    if (*v2 == 0) {
        if (*v4 == 0) {
            sub_0200592C(0);
        }

        v1 = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(1), -1, species, -1, 2);
        sub_02004AA0(species, 1);
    } else {
        v1 = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(8), -1, species, -1, 2);
        sub_02004AA0(species, 8);
    }

    Sound_FlagDefaultChatotCry(FALSE);

    if (v1 == 0) {
        (void)0;
    }

    return v1;
}

BOOL sub_0200590C(u16 species, u8 delay, u8 form)
{
    Sound_PlayDelayedPokemonCry(POKECRY_NORMAL, species, 0, 127, HEAP_ID_FIELDMAP, delay, form);
    return 1;
}

void sub_0200592C(int param0)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);
    u8 *v2 = SoundSystem_GetParam(15);

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(1), param0);
    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(8), param0);

    if (*v0 == 1) {
        sub_02004E84(14);
        sub_02004C4C(14);
    }

    if (*v1 == 1) {
        sub_02004E84(15);
        sub_02004C4C(15);
    }

    ResetMicStatusFlags();
    sub_0200605C();

    return;
}

int sub_0200598C(void)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);
    u8 *v2 = SoundSystem_GetParam(15);
    u8 *v3 = SoundSystem_GetParam(46);

    if (*v0 == 1) {
        return sub_02004D04(14);
    }

    if (*v1 == 1) {
        return sub_02004D04(15);
    }

    return sub_02004B04(0);
}

BOOL Sound_PlayPokemonCry(enum PokemonCryMod cryMod, u16 species, int param2, int volume, int heapID, u8 form)
{
    int v0, v1;
    u16 v3;
    int v4, v5, v6, v7;
    u8 *v8 = SoundSystem_GetParam(16);
    u8 *v9 = SoundSystem_GetParam(17);
    u8 *v10 = SoundSystem_GetParam(18);
    u8 *v11 = SoundSystem_GetParam(30);
    ChatotCry **v12 = SoundSystem_GetParam(36);

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;

    if (sub_02006038(species, form) == 1) {
        species = SPECIES_EGG;
    }

    if (species != SPECIES_EGG) {
        if ((species > MAX_SPECIES) || (species == SPECIES_NONE)) {
            species = SPECIES_BULBASAUR;
        }
    }

    if (param2 < 0) {
        v0 = 64 + (param2 / 2);
    } else {
        v0 = 64 + (param2 / 2);
    }

    v1 = volume - 30;

    if (v1 <= 0) {
        v1 = 1;
    }

    v3 = 0;
    *v10 = 0;

    if (*v8 == 1) {
        sub_02004E84(14);
        sub_02004C4C(14);
    }

    if (*v9 == 1) {
        sub_02004E84(15);
        sub_02004C4C(15);
    }

    if (species == SPECIES_CHATOT) {
        switch (cryMod) {
        case POKECRY_NORMAL:
        case POKECRY_HALF_DURATION:
        case POKECRY_FIELD_EVENT:
        case POKECRY_FAINT:
        case POKECRY_PINCH_NORMAL:
        case POKECRY_PINCH_HALF_DURATION:
            sub_02005844(SPECIES_CHATOT, form);

            if (*v11 == 0) {
                sub_02004F94(1, 0xffff, param2);
                sub_02005E4C(species, 1, volume);
            } else {
                if (*v8 == 1) {
                    sub_02004D14(14, v0);
                    sub_02004D40(14, volume);
                } else {
                    sub_02004F94(1, 0xffff, param2);
                    sub_02005E4C(species, 1, volume);
                }
            }

            return 1;
        default:
            Sound_FlagDefaultChatotCry(TRUE);
            break;
        }
    }

    switch (cryMod) {
    case POKECRY_NORMAL:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        break;
    case POKECRY_HALF_DURATION:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(20, heapID);
        break;
    case POKECRY_FIELD_EVENT:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, 64);
        v6 = sub_020060EC(species, 20, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(species, 8, v1);
        break;
    case POKECRY_MID_MOVE:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(30, heapID);
        sub_02004F68(1, 0xffff, 192);
        v6 = sub_020060EC(species, 16, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(species, 8, v1);
        break;
    case POKECRY_HYPERVOICE_1:
        v5 = sub_02004BCC(14);
        v5 = sub_02004D78(species, volume, v0, 14, heapID);
        sub_02004D14(14, v0);
        sub_02005E64(15, heapID);
        sub_02004D2C(14, (32768 + 1536));
        v7 = sub_02006120(species, -64, v1, v0, heapID);
        sub_02004D2C(15, (32768 + 1536));
        break;
    case POKECRY_FAINT:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, -224);
        break;
    case POKECRY_HYPERVOICE_2:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, 44);
        v6 = sub_020060EC(species, -64, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(species, 8, v1);
        break;
    case POKECRY_HOWL_1:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(11, heapID);
        sub_02004F68(1, 0xffff, -128);
        break;
    case POKECRY_HOWL_2:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(60, heapID);
        sub_02004F68(1, 0xffff, 60);
        break;
    case POKECRY_UPROAR_1:
        v5 = sub_02004BCC(14);
        v5 = sub_02004D78(species, volume, v0, 14, heapID);
        sub_02004D14(14, v0);
        sub_02005E64(13, heapID);
        sub_02004D2C(14, (32768 - 6144));
        break;
    case POKECRY_UPROAR_2:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(100, heapID);
        sub_02004F68(1, 0xffff, -44);
        break;
    case POKECRY_PINCH_NORMAL:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, -96);
        break;
    case POKECRY_PINCH_HALF_DURATION:
        v4 = sub_02005844(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(20, heapID);
        sub_02004F68(1, 0xffff, -96);
        break;
    case POKECRY_POKEDEX_CHORUS:
        sub_02005844(species, form);
        sub_02005E4C(species, 1, 127);
        sub_020060EC(species, 20, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02004A54(8, volume, 0);
        break;
    case POKECRY_POKEDEX:
        v4 = sub_02005844(species, form);
        break;
    }

    return 1;
}

static void sub_02005E4C(u16 param0, int param1, int param2)
{
    sub_02004A68(param1, param2);
    sub_02004AA0(param0, param1);

    return;
}

void sub_02005E64(int param0, int heapID)
{
    UnkStruct_02005E64 *v0 = NULL;
    SysTask **v1 = SoundSystem_GetParam(35);

    if (*v1 != NULL) {
        (void)0;
    }

    sub_02005F24();

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02005E64));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    memset(v0, 0, sizeof(UnkStruct_02005E64));

    v0->unk_00 = param0;
    v0->unk_04 = SysTask_Start(sub_02005EB0, v0, 0);
    *v1 = v0->unk_04;

    return;
}

static void sub_02005EB0(SysTask *param0, void *param1)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);
    UnkStruct_02005E64 *v2 = (UnkStruct_02005E64 *)param1;

    if (v2->unk_00 == 10) {
        sub_02004A54(1, 0, v2->unk_00);
        sub_02004A54(8, 0, v2->unk_00);
    }

    v2->unk_00--;

    if (sub_0200598C() == 0) {
        v2->unk_00 = 0;
    }

    if (v2->unk_00 <= 0) {
        sub_0200592C(0);

        if (*v0 == 1) {
            sub_02004E84(14);
            sub_02004C4C(14);
        }

        if (*v1 == 1) {
            sub_02004E84(15);
            sub_02004C4C(15);
        }

        sub_02005F24();
    }

    return;
}

void sub_02005F24()
{
    void *v0;
    SysTask **v1 = SoundSystem_GetParam(35);

    if (*v1 != NULL) {
        v0 = SysTask_GetParam(*v1);
        SysTask_Done(*v1);
        Heap_FreeToHeap(v0);
    }

    *v1 = NULL;
    return;
}

void Sound_PlayDelayedPokemonCry(enum PokemonCryMod cryMod, u16 species, int param2, int volume, int heapID, u8 delay, u8 form)
{
    int *v1;
    u16 *v2;
    int *v3;
    int *v4;
    int *v5;
    u8 *v6;
    u8 *v7 = SoundSystem_GetParam(6);
    u8 *v8 = SoundSystem_GetParam(53);

    if (*v7 == 0) {
        v1 = SoundSystem_GetParam(41);
        v2 = SoundSystem_GetParam(45);
        v3 = SoundSystem_GetParam(42);
        v4 = SoundSystem_GetParam(43);
        v5 = SoundSystem_GetParam(44);
        v6 = SoundSystem_GetParam(46);
    } else {
        v1 = SoundSystem_GetParam(47);
        v2 = SoundSystem_GetParam(51);
        v3 = SoundSystem_GetParam(48);
        v4 = SoundSystem_GetParam(49);
        v5 = SoundSystem_GetParam(50);
        v6 = SoundSystem_GetParam(52);
    }

    if (*v8 == 1) {
        *v7 ^= 1;
    }

    if (sub_02006038(species, form) == 1) {
        species = SPECIES_EGG;
    }

    if (species == 0) {
        return;
    }

    if (delay == 0) {
        Sound_PlayPokemonCry(cryMod, species, param2, volume, heapID, form);
        return;
    }

    *v1 = cryMod;
    *v2 = species;
    *v3 = param2;
    *v4 = volume;
    *v5 = heapID;
    *v6 = delay;

    return;
}

static BOOL sub_02006038(u16 species, u8 form)
{
    if (species == SPECIES_SHAYMIN) {
        if (form == 1) {
            return TRUE;
        }
    }

    if (species == SPECIES_EGG) {
        return TRUE;
    }

    return FALSE;
}

void sub_0200605C(void)
{
    int *v0 = SoundSystem_GetParam(41);
    u16 *v1 = SoundSystem_GetParam(45);
    int *v2 = SoundSystem_GetParam(42);
    int *v3 = SoundSystem_GetParam(43);
    int *v4 = SoundSystem_GetParam(44);
    u8 *v5 = SoundSystem_GetParam(46);
    int *v6 = SoundSystem_GetParam(47);
    u16 *v7 = SoundSystem_GetParam(51);
    int *v8 = SoundSystem_GetParam(48);
    int *v9 = SoundSystem_GetParam(49);
    int *v10 = SoundSystem_GetParam(50);
    u8 *v11 = SoundSystem_GetParam(52);

    *v0 = 0;
    *v1 = 0;
    *v2 = 0;
    *v3 = 0;
    *v4 = 0;
    *v5 = 0;

    *v6 = 0;
    *v7 = 0;
    *v8 = 0;
    *v9 = 0;
    *v10 = 0;
    *v11 = 0;

    return;
}

static BOOL sub_020060EC(u16 species, s8 pitch, u8 form)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(18);

    *v1 = 1;

    Sound_FlagDefaultChatotCry(TRUE);
    v0 = sub_02005844(species, form);
    sub_02004F68(8, 0xffff, pitch);

    return v0;
}

static BOOL sub_02006120(u16 param0, s8 param1, int param2, int param3, int heapID)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(18);

    *v1 = 1;

    v0 = sub_02004BCC(15);
    v0 = sub_02004D78(param0, param2, param3, 15, heapID);

    return v0;
}

BOOL sub_02006150(u16 param0)
{
    u16 v0;
    u8 v1;
    int v2, v3;
    const NNSSndArcBankInfo *v4 = sub_02004B3C(param0);

    sub_02006214(param0);

    v0 = sub_020041FC();
    v1 = sub_02004B18(v0);

    if (v1 != 0xff) {
        sub_020049F4(v1, 1);
    }

    SoundSystem_SaveHeapState(SoundSystem_GetParam(29));

    v2 = SoundSystem_LoadSequenceEx(param0, (NNS_SND_ARC_LOAD_SEQ | NNS_SND_ARC_LOAD_BANK));
    v2 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(2), param0);

    sub_02004AA0(param0, 2);

    return v2;
}

int sub_0200619C(void)
{
    u16 *v0 = SoundSystem_GetParam(14);

    if (sub_02004B04(2) != 0) {
        return 1;
    }

    if (*v0 > 0) {
        (*v0)--;
        return 1;
    }

    return 0;
}

static void sub_020061C8(int param0)
{
    int v0, v1;
    u16 v2;

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(2), param0);
    SoundSystem_LoadHeapState(sub_02004974(6));

    return;
}

int sub_020061E4(void)
{
    u8 v0;
    u16 v1;
    u16 *v2 = SoundSystem_GetParam(14);

    if (sub_0200619C() == 1) {
        return 1;
    }

    sub_020061C8(0);

    v1 = sub_020041FC();
    v0 = sub_02004B18(v1);

    if (v0 != 0xff) {
        sub_020049F4(v0, 0);
    }

    return 0;
}

static void sub_02006214(u16 param0)
{
    u16 *v0 = SoundSystem_GetParam(14);

    (*v0) = 15;
    return;
}
