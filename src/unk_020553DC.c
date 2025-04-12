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

// clang-format off
// Class, Eyes meet theme
const static u16 sTrainerEncounterBGMs[][2] = {
    { TRAINER_CLASS_AROMA_LADY,              SEQ_EYE_LADY },
    { TRAINER_CLASS_RUIN_MANIAC,             SEQ_EYE_MOUNT },
    { TRAINER_CLASS_INTERVIEWERS,            SEQ_EYE_FUN },
    { TRAINER_CLASS_TUBER_FEMALE,            SEQ_EYE_KID },
    { TRAINER_CLASS_TUBER_MALE,              SEQ_EYE_KID },
    { TRAINER_CLASS_SIS_AND_BRO,             SEQ_EYE_SPORT },
    { TRAINER_CLASS_ACE_TRAINER_FEMALE,      SEQ_EYE_ELITE },
    { TRAINER_CLASS_ACE_TRAINER_MALE,        SEQ_EYE_ELITE },
    { TRAINER_CLASS_LADY,                    SEQ_EYE_RICH },
    { TRAINER_CLASS_BEAUTY,                  SEQ_EYE_LADY },
    { TRAINER_CLASS_RICH_BOY,                SEQ_EYE_RICH },
    { TRAINER_CLASS_SWIMMER_MALE,            SEQ_EYE_SPORT },
    { TRAINER_CLASS_BLACK_BELT,              SEQ_EYE_FIGHT },
    { TRAINER_CLASS_GUITARIST,               SEQ_EYE_FIGHT },
    { TRAINER_CLASS_CAMPER,                  SEQ_EYE_BOY },
    { TRAINER_CLASS_PSYCHIC_FEMALE,          SEQ_EYE_FIGHT },
    { TRAINER_CLASS_PSYCHIC_MALE,            SEQ_EYE_FIGHT },
    { TRAINER_CLASS_GENTLEMAN,               SEQ_EYE_RICH },
    { TRAINER_CLASS_SCHOOL_KID_FEMALE,       SEQ_EYE_GIRL },
    { TRAINER_CLASS_SCHOOL_KID_MALE,         SEQ_EYE_BOY },
    { TRAINER_CLASS_POKEFAN_FEMALE,          SEQ_EYE_FUN },
    { TRAINER_CLASS_POKEFAN_MALE,            SEQ_EYE_FUN },
    { TRAINER_CLASS_YOUNGSTER,               SEQ_EYE_BOY },
    { TRAINER_CLASS_FISHERMAN,               SEQ_EYE_ENKA },
    { TRAINER_CLASS_DRAGON_TAMER,            SEQ_EYE_ELITE },
    { TRAINER_CLASS_BIRD_KEEPER,             SEQ_EYE_SPORT },
    { TRAINER_CLASS_NINJA_BOY,               SEQ_EYE_KID },
    { TRAINER_CLASS_BATTLE_GIRL,             SEQ_EYE_FIGHT },
    { TRAINER_CLASS_PARASOL_LADY,            SEQ_EYE_LADY },
    { TRAINER_CLASS_SWIMMER_FEMALE,          SEQ_EYE_LADY },
    { TRAINER_CLASS_PICNICKER,               SEQ_EYE_GIRL },
    { TRAINER_CLASS_TWINS,                   SEQ_EYE_KID },
    { TRAINER_CLASS_SAILOR,                  SEQ_EYE_ENKA },
    { TRAINER_CLASS_COLLECTOR,               SEQ_EYE_MYS },
    { TRAINER_CLASS_BREEDER_FEMALE,          SEQ_EYE_LADY },
    { TRAINER_CLASS_BREEDER_MALE,            SEQ_EYE_BOY },
    { TRAINER_CLASS_RANGER_FEMALE,           SEQ_EYE_ELITE },
    { TRAINER_CLASS_RANGER_MALE,             SEQ_EYE_ELITE },
    { TRAINER_CLASS_LASS,                    SEQ_EYE_GIRL },
    { TRAINER_CLASS_BUG_CATCHER,             SEQ_EYE_BOY },
    { TRAINER_CLASS_HIKER,                   SEQ_EYE_MOUNT },
    { TRAINER_CLASS_YOUNG_COUPLE,            SEQ_EYE_FUN },
    { TRAINER_CLASS_CYCLIST_MALE,            SEQ_EYE_SPORT },
    { TRAINER_CLASS_CYCLIST_FEMALE,          SEQ_EYE_SPORT },
    { TRAINER_CLASS_GALACTIC_GRUNT_MALE,     SEQ_EYE_GINGA },
    { TRAINER_CLASS_GALACTIC_GRUNT_FEMALE,   SEQ_EYE_GINGA },
    { TRAINER_CLASS_COMMANDER_MARS,          SEQ_EYE_GINGA },
    { TRAINER_CLASS_COMMANDER_JUPITER,       SEQ_EYE_GINGA },
    { TRAINER_CLASS_COMMANDER_SATURN,        SEQ_EYE_GINGA },
    { TRAINER_CLASS_SOCIALITE,               SEQ_EYE_RICH },
    { TRAINER_CLASS_WAITER,                  SEQ_EYE_FUN },
    { TRAINER_CLASS_WAITRESS,                SEQ_EYE_FUN },
    { TRAINER_CLASS_WORKER,                  SEQ_EYE_FUN },
    { TRAINER_CLASS_RANCHER,                 SEQ_EYE_MOUNT },
    { TRAINER_CLASS_COWGIRL,                 SEQ_EYE_MOUNT },
    { TRAINER_CLASS_BELLE_AND_PA,            SEQ_EYE_MOUNT },
    { TRAINER_CLASS_CLOWN,                   SEQ_EYE_FUN },
    { TRAINER_CLASS_IDOL,                    SEQ_EYE_GIRL },
    { TRAINER_CLASS_ARTIST,                  SEQ_EYE_FUN },
    { TRAINER_CLASS_POKE_KID,                SEQ_EYE_KID },
    { TRAINER_CLASS_POLICEMAN,               SEQ_EYE_FIGHT },
    { TRAINER_CLASS_DOUBLE_TEAM,             SEQ_EYE_ELITE },
    { TRAINER_CLASS_SKIER_MALE,              SEQ_EYE_SPORT },
    { TRAINER_CLASS_SKIER_FEMALE,            SEQ_EYE_SPORT },
    { TRAINER_CLASS_ROUGHNECK,               SEQ_EYE_FIGHT },
    { TRAINER_CLASS_SCIENTIST,               SEQ_EYE_MYS },
    { TRAINER_CLASS_JOGGER,                  SEQ_EYE_SPORT },
    { TRAINER_CLASS_VETERAN,                 SEQ_EYE_ELITE },
    { TRAINER_CLASS_CAMERAMAN,               SEQ_EYE_FUN },
    { TRAINER_CLASS_REPORTER,                SEQ_EYE_FUN },
    { TRAINER_CLASS_PI,                      SEQ_EYE_RICH },
    { TRAINER_CLASS_ACE_TRAINER_SNOW_FEMALE, SEQ_EYE_ELITE },
    { TRAINER_CLASS_ACE_TRAINER_SNOW_MALE,   SEQ_EYE_ELITE },
    { TRAINER_CLASS_ELITE_FOUR_AARON,        SEQ_EYE_TENNO },
    { TRAINER_CLASS_ELITE_FOUR_BERTHA,       SEQ_EYE_TENNO },
    { TRAINER_CLASS_ELITE_FOUR_FLINT,        SEQ_EYE_TENNO },
    { TRAINER_CLASS_ELITE_FOUR_LUCIAN,       SEQ_EYE_TENNO },
    { TRAINER_CLASS_CHAMPION_CYNTHIA,        SEQ_EYE_CHAMP },
    { TRAINER_CLASS_MAID,                    SEQ_EYE_FUN }
};
// clang-format on

void sub_020553DC(void);
static u16 FieldSystem_GetAltMusicForCyclingRoad(FieldSystem *fieldSystem, int headerID);
BOOL sub_02055554(FieldSystem *fieldSystem, u16 param1, int param2);
static void sub_020555CC(FieldSystem *fieldSystem, int param1, int *param2, int *param3);

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

u16 Sound_GetOverrideBGM(FieldSystem *fieldSystem, enum MapHeader mapID)
{
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    int playerState = PlayerAvatar_GetPlayerState(playerAvatar);

    if (playerState == PLAYER_STATE_SURFING) {
        switch (mapID) {
        case MAP_HEADER_DISTORTION_WORLD_1F:
        case MAP_HEADER_DISTORTION_WORLD_B1F:
        case MAP_HEADER_DISTORTION_WORLD_B2F:
        case MAP_HEADER_DISTORTION_WORLD_B3F:
        case MAP_HEADER_DISTORTION_WORLD_B4F:
        case MAP_HEADER_DISTORTION_WORLD_B5F:
        case MAP_HEADER_DISTORTION_WORLD_B6F:
        case MAP_HEADER_DISTORTION_WORLD_B7F:
        case MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM:
        case MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM:
            break;
        default:
            return SEQ_NAMINORI;
        }
    }

    if (GetRadarChainActive(fieldSystem->chain) == TRUE) {
        return SEQ_POKERADAR;
    }

    u16 bgmID = Sound_GetBGMByMapID(fieldSystem, mapID);

    if (Sound_GetSpecialBGM(fieldSystem) != SEQ_NONE) {
        bgmID = Sound_GetSpecialBGM(fieldSystem);
    }

    return bgmID;
}

u16 Sound_GetBGMByMapID(FieldSystem *fieldSystem, int mapID)
{
    u16 sdatID;

    if (IsNight() == FALSE) {
        sdatID = MapHeader_GetDayMusicID(mapID);
    } else {
        sdatID = MapHeader_GetNightMusicID(mapID);
    }

    u16 altSdatID = SystemFlag_GetAltMusicForHeader(SaveData_GetVarsFlags(fieldSystem->saveData), mapID);

    if (altSdatID != SEQ_NONE) {
        sdatID = altSdatID;
    }

    altSdatID = FieldSystem_GetAltMusicForCyclingRoad(fieldSystem, mapID);

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

BOOL sub_02055554(FieldSystem *fieldSystem, u16 bgmID, int param2)
{
    PlayerAvatar *playerAvatar;
    int v1, v2, playerState;

    playerAvatar = fieldSystem->playerAvatar;
    playerState = PlayerAvatar_GetPlayerState(playerAvatar);

    if (Sound_IsBGMFixed() == 1) {
        return 0;
    }

    if (bgmID == Sound_GetCurrentBGM1(fieldSystem)) {
        return 0;
    }

    Sound_ClearBGMPauseFlags();
    sub_020555CC(fieldSystem, param2, &v1, &v2);

    if ((playerState == PLAYER_STATE_CYCLING) || (playerState == PLAYER_STATE_CYCLING)) { // Yes, it's checking bike twice. Maybe there was a point were Acro and Mach Bikes were still a thing?
        Sound_FadeToBGM(4, bgmID, v1, v2, 30, 0, NULL);
    } else {
        Sound_FadeOutAndPlayBGM(4, bgmID, v1, v2, 0, NULL);
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

u16 Trainer_GetEncounterBGM(enum TrainerId trainerID)
{
    u8 class = (u8)Trainer_LoadParam(trainerID, TRDATA_CLASS);
    u16 i, bgmID = SEQ_EYE_KID;

    for (i = 0; i < NELEMS(sTrainerEncounterBGMs); i++) {
        if (sTrainerEncounterBGMs[i][0] == class) {
            bgmID = sTrainerEncounterBGMs[i][1];
            break;
        }
    }

    return bgmID;
}

void Sound_TryFadeInBGM(FieldSystem *fieldSystem, int mapID)
{
    if (Sound_IsBGMFixed() == 1) {
        return;
    }

    if (Sound_GetCurrentBGM() != Sound_GetBGMByMapID(fieldSystem, mapID)) {
        Sound_FadeOutBGM(0, 40);
    }
}

void Sound_PlayMapBGM(FieldSystem *fieldSystem, int mapID)
{
    u16 bgmID;

    if (Sound_IsBGMFixed() == 1) {
        return;
    }

    Sound_SetScene(SOUND_SCENE_NONE);

    bgmID = Sound_GetBGMByMapID(fieldSystem, mapID);

    Sound_SetFieldBGM(bgmID);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, bgmID, 1);
}

void sub_020556A0(FieldSystem *fieldSystem, int mapID)
{
    u16 bgmID = Sound_GetOverrideBGM(fieldSystem, mapID);

    Sound_SetFieldBGM(Sound_GetBGMByMapID(fieldSystem, mapID));
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, bgmID, 1);
}
