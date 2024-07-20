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
void sub_020057A4(u16 param0, int param1);
void sub_020057AC(int param0, int param1);
void sub_020057BC(int param0);
int sub_020057E0(void);
void sub_020057FC(u16 param0, u16 param1, int param2);
void sub_02005818(int param0);
static void sub_02005E4C(u16 param0, int param1, int param2);
BOOL sub_02005844(u16 param0, u8 param1);
BOOL sub_0200590C(u16 param0, u8 param1, u8 param2);
void sub_0200592C(int param0);
int sub_0200598C(void);
BOOL Sound_PlayPokemonCry(int param0, u16 species, int param2, int param3, int param4, u8 param5);
void sub_02005E64(int param0, int param1);
static void sub_02005EB0(SysTask *param0, void *param1);
void sub_02005F24(void);
void Sound_PlayDelayedPokemonCry(int param0, u16 param1, int param2, int param3, int param4, u8 param5, u8 param6);
static BOOL sub_02006038(u16 param0, u8 param1);
void sub_0200605C(void);
static BOOL sub_020060EC(u16 param0, s8 param1, u8 param2);
static BOOL sub_02006120(u16 param0, s8 param1, int param2, int param3, int param4);
BOOL sub_02006150(u16 param0);
int sub_0200619C(void);
static void sub_020061C8(int param0);
int sub_020061E4(void);
static void sub_02006214(u16 param0);

BOOL sub_02005474(u16 param0)
{
    int v0;
    u8 v1 = sub_02004B18(param0);
    int v2 = sub_020040F0(v1);

    v0 = NNS_SndArcPlayerStartSeq(sub_020040CC(v2), param0);

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
    int v2 = sub_020040F0(v1);

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
    sub_02003D0C(1);

    return;
}

static BOOL sub_02005508(u16 param0, u8 param1, int param2)
{
    int v0;

    sub_0200403C(sub_02004974(3));
    sub_02004068(param0);
    sub_02004014(sub_02003D5C(27));

    v0 = NNS_SndArcPlayerStartSeq(sub_020040CC(param2), param0);
    return v0;
}

static BOOL sub_02005538(u16 param0, u8 param1, int param2)
{
    int v0;
    u8 *v1 = sub_02003D5C(19);
    u16 *v2 = sub_02003D5C(32);

    v0 = sub_02004B34(sub_020040CC(0));
    sub_020047E8(param0, sub_02004B48(v0));

    return NNS_SndArcPlayerStartSeqEx(sub_020040CC(param2), -1, sub_02004B48(*v2), -1, param0);
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

    v0 = sub_02004080(param1, NNS_SND_ARC_LOAD_SEQ);
    v0 = NNS_SndArcPlayerStartSeq(sub_020040CC(7), param1);

    if (v0 == 0) {
        (void)0;
    }

    sub_020041E8(param1);
    sub_02003D0C(1);

    return v0;
}

void sub_020055D0(u16 param0, int param1)
{
    u8 v0;
    int v1;

    NNS_SndPlayerStopSeqBySeqNo(param0, param1);

    v0 = sub_02004B18(param0);

    if (v0 != 0xff) {
        v1 = sub_020040F0(v0);
        NNS_SndHandleReleaseSeq(sub_020040CC(v1));
    }

    sub_020055F4();
    return;
}

static void sub_020055F4(void)
{
    sub_020041E8(0);
    sub_02004208(0);
    sub_02003D0C(0);

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

    v1 = sub_020040F0(v0);

    if (param2 == 0) {
        sub_02004A54(v1, 0, 0);
    }

    sub_02004A54(v1, param0, param1);
    sub_02004FCC(param1);
    sub_02003D0C(3);

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
        int v1 = sub_020040F0(v0);

        sub_02004A54(v1, targetVolume, frames);
        sub_02004FCC(frames);
    }

    sub_02003D0C(4);
}

int Sound_CheckFade()
{
    u16 *v0 = sub_02003D5C(7);
    return *v0;
}

int sub_02005690(u16 param0)
{
    u8 v0;

    v0 = sub_02004B18(param0);
    return sub_02004B04(v0);
}

void sub_0200569C(void)
{
    u8 *v0 = sub_02003D5C(16);
    u8 *v1 = sub_02003D5C(17);

    NNS_SndPlayerStopSeqAll(0);

    if (*v0 == 1) {
        sub_02004CF4(14);
    }

    if (*v1 == 1) {
        sub_02004CF4(15);
    }

    sub_02003D0C(0);
    return;
}

void sub_020056D4(void)
{
    int v0;
    u8 *v1 = sub_02003D5C(16);
    u8 *v2 = sub_02003D5C(17);

    NNS_SndPlayerStopSeq(sub_020040CC(7), 0);
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
    int v0;

    v0 = Sound_PlayEffect(param0);
    sub_020057FC(param0, 0xffff, param1);

    return v0;
}

BOOL Sound_PlayEffect(u16 sdatID)
{
    int v0 = sub_020040F0(sub_02004B18(sdatID));
    int v1 = NNS_SndArcPlayerStartSeq(sub_020040CC(v0), sdatID);

    sub_02004AA0(sdatID, v0);

    return v1;
}

BOOL sub_02005770(u16 param0, int param1)
{
    int v0, v1;

    v0 = sub_020040F0(param1);
    v1 = NNS_SndArcPlayerStartSeqEx(sub_020040CC(v0), param1, -1, -1, param0);

    sub_02004AA0(param0, v0);

    if (v1 == 0) {
        (void)0;
    }

    return v1;
}

void sub_020057A4(u16 param0, int param1)
{
    NNS_SndPlayerStopSeqBySeqNo(param0, param1);
    return;
}

void sub_020057AC(int param0, int param1)
{
    NNS_SndPlayerStopSeq(sub_020040CC(param0), param1);
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
    int v0;

    v0 = sub_020040F0(sub_02004B18(param0));

    NNS_SndPlayerSetTrackPan(sub_020040CC(v0), param1, param2);
    return;
}

void sub_02005818(int param0)
{
    int v0, v1;

    v0 = sub_020040F0(3);

    for (v1 = 0; v1 < 4; v1++) {
        NNS_SndPlayerSetTrackPan(sub_020040CC(v0 + v1), 0xffff, param0);
    }

    return;
}

BOOL sub_02005844(u16 param0, u8 param1)
{
    u16 v0;
    int v1;
    u8 *v2 = sub_02003D5C(18);
    ChatotCry **v3 = sub_02003D5C(36);
    u8 *v4 = sub_02003D5C(53);

    v0 = param0;

    if (sub_02006038(v0, param1) == 1) {
        v0 = SPECIES_EGG;
    }

    if (v0 != SPECIES_EGG) {
        if ((v0 > MAX_SPECIES) || (v0 == 0)) {
            v0 = 1;
        }
    }

    if (v0 == 441) {
        if (ProcessAudioInput(*v3, 0, 127, 0) == 1) {
            Sound_FlagDefaultChatotCry(0);
            return 1;
        }
    }

    if (*v2 == 0) {
        if (*v4 == 0) {
            sub_0200592C(0);
        }

        v1 = NNS_SndArcPlayerStartSeqEx(sub_020040CC(1), -1, v0, -1, 2);
        sub_02004AA0(v0, 1);
    } else {
        v1 = NNS_SndArcPlayerStartSeqEx(sub_020040CC(8), -1, v0, -1, 2);
        sub_02004AA0(v0, 8);
    }

    Sound_FlagDefaultChatotCry(0);

    if (v1 == 0) {
        (void)0;
    }

    return v1;
}

BOOL sub_0200590C(u16 param0, u8 param1, u8 param2)
{
    Sound_PlayDelayedPokemonCry(0, param0, 0, 127, 11, param1, param2);
    return 1;
}

void sub_0200592C(int param0)
{
    u8 *v0 = sub_02003D5C(16);
    u8 *v1 = sub_02003D5C(17);
    u8 *v2 = sub_02003D5C(15);

    NNS_SndPlayerStopSeq(sub_020040CC(1), param0);
    NNS_SndPlayerStopSeq(sub_020040CC(8), param0);

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
    u8 *v0 = sub_02003D5C(16);
    u8 *v1 = sub_02003D5C(17);
    u8 *v2 = sub_02003D5C(15);
    u8 *v3 = sub_02003D5C(46);

    if (*v0 == 1) {
        return sub_02004D04(14);
    }

    if (*v1 == 1) {
        return sub_02004D04(15);
    }

    return sub_02004B04(0);
}

BOOL Sound_PlayPokemonCry(int param0, u16 species, int param2, int param3, int param4, u8 param5)
{
    int v0, v1;
    u16 v2;
    u16 v3;
    int v4, v5, v6, v7;
    u8 *v8 = sub_02003D5C(16);
    u8 *v9 = sub_02003D5C(17);
    u8 *v10 = sub_02003D5C(18);
    u8 *v11 = sub_02003D5C(30);
    ChatotCry **v12 = sub_02003D5C(36);

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v2 = species;

    if (sub_02006038(v2, param5) == 1) {
        v2 = SPECIES_EGG;
    }

    if (v2 != SPECIES_EGG) {
        if ((v2 > MAX_SPECIES) || (v2 == 0)) {
            v2 = SPECIES_BULBASAUR;
        }
    }

    if (param2 < 0) {
        v0 = 64 + (param2 / 2);
    } else {
        v0 = 64 + (param2 / 2);
    }

    v1 = param3 - 30;

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

    if (v2 == SPECIES_CHATOT) {
        switch (param0) {
        case 0:
        case 1:
        case 2:
        case 5:
        case 11:
        case 12:
            sub_02005844(441, param5);

            if (*v11 == 0) {
                sub_02004F94(1, 0xffff, param2);
                sub_02005E4C(v2, 1, param3);
            } else {
                if (*v8 == 1) {
                    sub_02004D14(14, v0);
                    sub_02004D40(14, param3);
                } else {
                    sub_02004F94(1, 0xffff, param2);
                    sub_02005E4C(v2, 1, param3);
                }
            }

            return 1;
        default:
            Sound_FlagDefaultChatotCry(1);
            break;
        }
    }

    switch (param0) {
    case 0:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        break;
    case 1:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02005E64(20, param4);
        break;
    case 2:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02004F68(1, 0xffff, 64);
        v6 = sub_020060EC(v2, 20, param5);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(v2, 8, v1);
        break;
    case 3:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02005E64(30, param4);
        sub_02004F68(1, 0xffff, 192);
        v6 = sub_020060EC(v2, 16, param5);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(v2, 8, v1);
        break;
    case 4:
        v5 = sub_02004BCC(14);
        v5 = sub_02004D78(v2, param3, v0, 14, param4);
        sub_02004D14(14, v0);
        sub_02005E64(15, param4);
        sub_02004D2C(14, (32768 + 1536));
        v7 = sub_02006120(v2, -64, v1, v0, param4);
        sub_02004D2C(15, (32768 + 1536));
        break;
    case 5:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02004F68(1, 0xffff, -224);
        break;
    case 6:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02004F68(1, 0xffff, 44);
        v6 = sub_020060EC(v2, -64, param5);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(v2, 8, v1);
        break;
    case 7:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02005E64(11, param4);
        sub_02004F68(1, 0xffff, -128);
        break;
    case 8:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02005E64(60, param4);
        sub_02004F68(1, 0xffff, 60);
        break;
    case 9:
        v5 = sub_02004BCC(14);
        v5 = sub_02004D78(v2, param3, v0, 14, param4);
        sub_02004D14(14, v0);
        sub_02005E64(13, param4);
        sub_02004D2C(14, (32768 - 6144));
        break;
    case 10:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02005E64(100, param4);
        sub_02004F68(1, 0xffff, -44);
        break;
    case 11:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02004F68(1, 0xffff, -96);
        break;
    case 12:
        v4 = sub_02005844(v2, param5);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(v2, 1, param3);
        sub_02005E64(20, param4);
        sub_02004F68(1, 0xffff, -96);
        break;
    case 13:
        sub_02005844(v2, param5);
        sub_02005E4C(v2, 1, 127);
        sub_020060EC(v2, 20, param5);
        sub_02004F94(8, 0xffff, param2);
        sub_02004A54(8, param3, 0);
        break;
    case 14:
        v4 = sub_02005844(v2, param5);
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

void sub_02005E64(int param0, int param1)
{
    UnkStruct_02005E64 *v0 = NULL;
    SysTask **v1 = sub_02003D5C(35);

    if (*v1 != NULL) {
        (void)0;
    }

    sub_02005F24();

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02005E64));

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
    u8 *v0 = sub_02003D5C(16);
    u8 *v1 = sub_02003D5C(17);
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
    SysTask **v1 = sub_02003D5C(35);

    if (*v1 != NULL) {
        v0 = SysTask_GetParam(*v1);
        SysTask_Done(*v1);
        Heap_FreeToHeap(v0);
    }

    *v1 = NULL;
    return;
}

void Sound_PlayDelayedPokemonCry(int param0, u16 param1, int param2, int param3, int param4, u8 param5, u8 param6)
{
    u16 v0;
    int *v1;
    u16 *v2;
    int *v3;
    int *v4;
    int *v5;
    u8 *v6;
    u8 *v7 = sub_02003D5C(6);
    u8 *v8 = sub_02003D5C(53);

    if (*v7 == 0) {
        v1 = sub_02003D5C(41);
        v2 = sub_02003D5C(45);
        v3 = sub_02003D5C(42);
        v4 = sub_02003D5C(43);
        v5 = sub_02003D5C(44);
        v6 = sub_02003D5C(46);
    } else {
        v1 = sub_02003D5C(47);
        v2 = sub_02003D5C(51);
        v3 = sub_02003D5C(48);
        v4 = sub_02003D5C(49);
        v5 = sub_02003D5C(50);
        v6 = sub_02003D5C(52);
    }

    if (*v8 == 1) {
        *v7 ^= 1;
    }

    v0 = param1;

    if (sub_02006038(v0, param6) == 1) {
        v0 = SPECIES_EGG;
    }

    if (v0 == 0) {
        return;
    }

    if (param5 == 0) {
        Sound_PlayPokemonCry(param0, v0, param2, param3, param4, param6);
        return;
    }

    *v1 = param0;
    *v2 = v0;
    *v3 = param2;
    *v4 = param3;
    *v5 = param4;
    *v6 = param5;

    return;
}

static BOOL sub_02006038(u16 param0, u8 param1)
{
    if (param0 == 492) {
        if (param1 == 1) {
            return 1;
        }
    }

    if (param0 == SPECIES_EGG) {
        return 1;
    }

    return 0;
}

void sub_0200605C(void)
{
    int *v0 = sub_02003D5C(41);
    u16 *v1 = sub_02003D5C(45);
    int *v2 = sub_02003D5C(42);
    int *v3 = sub_02003D5C(43);
    int *v4 = sub_02003D5C(44);
    u8 *v5 = sub_02003D5C(46);
    int *v6 = sub_02003D5C(47);
    u16 *v7 = sub_02003D5C(51);
    int *v8 = sub_02003D5C(48);
    int *v9 = sub_02003D5C(49);
    int *v10 = sub_02003D5C(50);
    u8 *v11 = sub_02003D5C(52);

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

static BOOL sub_020060EC(u16 param0, s8 param1, u8 param2)
{
    int v0;
    u8 *v1 = sub_02003D5C(18);

    *v1 = 1;

    Sound_FlagDefaultChatotCry(1);
    v0 = sub_02005844(param0, param2);
    sub_02004F68(8, 0xffff, param1);

    return v0;
}

static BOOL sub_02006120(u16 param0, s8 param1, int param2, int param3, int param4)
{
    int v0;
    u8 *v1 = sub_02003D5C(18);

    *v1 = 1;

    v0 = sub_02004BCC(15);
    v0 = sub_02004D78(param0, param2, param3, 15, param4);

    return v0;
}

BOOL sub_02006150(u16 param0)
{
    u16 v0;
    u8 v1;
    int v2, v3;
    const NNSSndArcBankInfo *v4;

    v4 = sub_02004B3C(param0);

    sub_02006214(param0);

    v0 = sub_020041FC();
    v1 = sub_02004B18(v0);

    if (v1 != 0xff) {
        sub_020049F4(v1, 1);
    }

    sub_02004014(sub_02003D5C(29));

    v2 = sub_02004080(param0, (NNS_SND_ARC_LOAD_SEQ | NNS_SND_ARC_LOAD_BANK));
    v2 = NNS_SndArcPlayerStartSeq(sub_020040CC(2), param0);

    sub_02004AA0(param0, 2);

    return v2;
}

int sub_0200619C(void)
{
    u16 *v0 = sub_02003D5C(14);

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

    NNS_SndPlayerStopSeq(sub_020040CC(2), param0);
    sub_0200403C(sub_02004974(6));

    return;
}

int sub_020061E4(void)
{
    u8 v0;
    u16 v1;
    u16 *v2 = sub_02003D5C(14);

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
    u16 *v0 = sub_02003D5C(14);

    (*v0) = 15;
    return;
}
