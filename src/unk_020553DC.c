#include "unk_020553DC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0205E884_decl.h"

#include "field/field_system.h"

#include "field_overworld_state.h"
#include "location.h"
#include "map_header.h"
#include "player_avatar.h"
#include "pokeradar.h"
#include "rtc.h"
#include "sound.h"
#include "sound_playback.h"
#include "system_flags.h"
#include "trainer_data.h"
#include "vars_flags.h"

const static u16 Unk_020EC3E0[][2] = {
    { 0x7, 0x450 },
    { 0x30, 0x451 },
    { 0x52, 0x458 },
    { 0x2D, 0x44D },
    { 0x2C, 0x44D },
    { 0x2F, 0x457 },
    { 0x19, 0x455 },
    { 0x18, 0x455 },
    { 0x21, 0x452 },
    { 0x24, 0x450 },
    { 0x20, 0x452 },
    { 0x2A, 0x457 },
    { 0xE, 0x44E },
    { 0x34, 0x44E },
    { 0x4, 0x44C },
    { 0x32, 0x44E },
    { 0x31, 0x44E },
    { 0x22, 0x452 },
    { 0x3D, 0x456 },
    { 0x3C, 0x44C },
    { 0x15, 0x458 },
    { 0x14, 0x458 },
    { 0x2, 0x44C },
    { 0xB, 0x453 },
    { 0x1D, 0x455 },
    { 0x1E, 0x457 },
    { 0x1C, 0x44D },
    { 0xA, 0x44E },
    { 0x50, 0x450 },
    { 0x2B, 0x450 },
    { 0x5, 0x456 },
    { 0x8, 0x44D },
    { 0x2E, 0x453 },
    { 0x25, 0x454 },
    { 0x11, 0x450 },
    { 0x10, 0x44C },
    { 0x28, 0x455 },
    { 0x27, 0x455 },
    { 0x3, 0x456 },
    { 0x6, 0x44C },
    { 0x9, 0x451 },
    { 0x17, 0x458 },
    { 0xC, 0x457 },
    { 0xD, 0x457 },
    { 0x49, 0x44F },
    { 0x59, 0x44F },
    { 0x48, 0x44F },
    { 0x57, 0x44F },
    { 0x58, 0x44F },
    { 0x23, 0x452 },
    { 0x51, 0x458 },
    { 0x1A, 0x458 },
    { 0x3B, 0x458 },
    { 0x47, 0x451 },
    { 0x12, 0x451 },
    { 0x46, 0x451 },
    { 0x3A, 0x458 },
    { 0x55, 0x456 },
    { 0xF, 0x458 },
    { 0x16, 0x44D },
    { 0x26, 0x44E },
    { 0x1F, 0x455 },
    { 0x37, 0x457 },
    { 0x38, 0x457 },
    { 0x39, 0x44E },
    { 0x29, 0x454 },
    { 0x13, 0x457 },
    { 0x1B, 0x455 },
    { 0x53, 0x458 },
    { 0x54, 0x458 },
    { 0x33, 0x452 },
    { 0x36, 0x455 },
    { 0x35, 0x455 },
    { 0x41, 0x459 },
    { 0x42, 0x459 },
    { 0x43, 0x459 },
    { 0x44, 0x459 },
    { 0x45, 0x45A },
    { 0x62, 0x458 }
};

void sub_020553DC(void);
u16 sub_02055428(FieldSystem *fieldSystem, int param1);
static u16 FieldSystem_GetAltMusicForCyclingRoad(FieldSystem *fieldSystem, int headerID);
BOOL sub_02055554(FieldSystem *fieldSystem, u16 param1, int param2);
static void sub_020555CC(FieldSystem *fieldSystem, int param1, int *param2, int *param3);
u16 sub_0205560C(int param0);

void sub_020553DC()
{
    Sound_StopWaveOutAndSequences();
    Sound_ClearBGMPauseFlags();
    Sound_SetScene(SOUND_SCENE_NONE);
}

void Sound_SetSpecialBGM(FieldSystem *fieldSystem, u16 sdatID)
{
    u16 *bgm = FieldOverworldState_GetSpecialBGM(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    *bgm = sdatID;
}

u16 Sound_GetSpecialBGM(FieldSystem *fieldSystem)
{
    u16 *bgm = FieldOverworldState_GetSpecialBGM(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    return *bgm;
}

void Sound_ClearSpecialBGM(FieldSystem *fieldSystem)
{
    u16 *bgm = FieldOverworldState_GetSpecialBGM(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    *bgm = 0;
}

u16 sub_02055428(FieldSystem *fieldSystem, int param1)
{
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    int v1;
    u16 v2, v3;

    v1 = PlayerAvatar_GetPlayerState(playerAvatar);

    if (v1 == 0x2) {
        switch (param1) {
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
            break;
        default:
            return 1151;
        }
    }

    if (GetRadarChainActive(fieldSystem->chain) == 1) {
        return 1150;
    }

    v2 = sub_020554A4(fieldSystem, param1);

    if (Sound_GetSpecialBGM(fieldSystem) != 0) {
        v2 = Sound_GetSpecialBGM(fieldSystem);
    }

    return v2;
}

u16 sub_020554A4(FieldSystem *fieldSystem, int headerID)
{
    u16 sdatID;

    if (IsNight() == FALSE) {
        sdatID = MapHeader_GetDayMusicID(headerID);
    } else {
        sdatID = MapHeader_GetNightMusicID(headerID);
    }

    u16 altSdatID = SystemFlag_GetAltMusicForHeader(SaveData_GetVarsFlags(fieldSystem->saveData), headerID);

    if (altSdatID != SEQ_NONE) {
        sdatID = altSdatID;
    }

    altSdatID = FieldSystem_GetAltMusicForCyclingRoad(fieldSystem, headerID);

    if (altSdatID != SEQ_NONE) {
        sdatID = altSdatID;
    }

    return sdatID;
}

static u16 FieldSystem_GetAltMusicForCyclingRoad(FieldSystem *fieldSystem, int headerID)
{
    int x, y;
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *location = FieldOverworldState_GetPrevLocation(fieldState);

    x = Player_GetXPos(fieldSystem->playerAvatar);
    y = Player_GetZPos(fieldSystem->playerAvatar);

    if (headerID != MAP_HEADER_ROUTE_206) {
        return SEQ_NONE;
    }

    if ((location->mapId == 80) || (location->mapId == 351)) {
        if (x < 299) {
            return 0;
        }

        if (x > 306) {
            return 0;
        }

        if ((y == 576) || (y == 681)) {
            return SEQ_PL_BICYCLE;
        }
    }

    return 0;
}

BOOL sub_02055554(FieldSystem *fieldSystem, u16 param1, int param2)
{
    PlayerAvatar *playerAvatar;
    int v1, v2, v3;

    playerAvatar = fieldSystem->playerAvatar;
    v3 = PlayerAvatar_GetPlayerState(playerAvatar);

    if (Sound_IsBGMFixed() == 1) {
        return 0;
    }

    if (param1 == Sound_GetCurrentBGM1(fieldSystem)) {
        return 0;
    }

    Sound_ClearBGMPauseFlags();
    sub_020555CC(fieldSystem, param2, &v1, &v2);

    if ((v3 == 0x1) || (v3 == 0x1)) {
        Sound_FadeToBGM(4, param1, v1, v2, 30, 0, NULL);
    } else {
        Sound_FadeOutAndPlayBGM(4, param1, v1, v2, 0, NULL);
    }

    return 1;
}

static void sub_020555CC(FieldSystem *fieldSystem, int param1, int *param2, int *param3)
{
    switch (param1) {
    case 0:
        *param2 = 30;
        *param3 = 0;
        break;
    case 1:
        *param2 = 60;
        *param3 = 0;
        break;
    case 2:
        *param2 = 60;
        *param3 = 15;
        break;
    case 3:
        *param2 = 60;
        *param3 = 0;
        break;
    }
}

u16 sub_0205560C(int param0)
{
    u8 v0 = (u8)Trainer_LoadParam(param0, 1);
    u16 i, v1 = 1101;

    for (i = 0; i < 79; i++) {
        if (Unk_020EC3E0[i][0] == v0) {
            v1 = Unk_020EC3E0[i][1];
            break;
        }
    }

    return v1;
}

void Sound_TryFadeInBGM(FieldSystem *fieldSystem, int param1)
{
    if (Sound_IsBGMFixed() == 1) {
        return;
    }

    if (Sound_GetCurrentBGM() != sub_020554A4(fieldSystem, param1)) {
        Sound_FadeOutBGM(0, 40);
    }
}

void Sound_PlayMapBGM(FieldSystem *fieldSystem, int param1)
{
    u16 v0;

    if (Sound_IsBGMFixed() == 1) {
        return;
    }

    Sound_SetScene(0);

    v0 = sub_020554A4(fieldSystem, param1);

    Sound_SetFieldBGM(v0);
    Sound_SetSceneAndPlayBGM(4, v0, 1);
}

void sub_020556A0(FieldSystem *fieldSystem, int param1)
{
    u16 v0 = sub_02055428(fieldSystem, param1);

    Sound_SetFieldBGM(sub_020554A4(fieldSystem, param1));
    Sound_SetSceneAndPlayBGM(4, v0, 1);
}
