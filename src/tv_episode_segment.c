#include "tv_episode_segment.h"

#include <nitro.h>
#include <string.h>

#include "constants/flavor.h"
#include "constants/heap.h"
#include "constants/overworld_weather.h"
#include "constants/species.h"
#include "constants/tv_broadcast.h"
#include "generated/first_arrival_to_zones.h"
#include "generated/natures.h"
#include "generated/pokemon_stats.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/dress_up_photo.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"

#include "applications/poketch/poketch_system.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/ov6_02246444.h"
#include "overlay006/swarm.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "berry_patches.h"
#include "charcode_util.h"
#include "field_battle_data_transfer.h"
#include "field_overworld_weather.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_util.h"
#include "math_util.h"
#include "message.h"
#include "party.h"
#include "poffin_types.h"
#include "pokedex.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "ribbon.h"
#include "roaming_pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "special_encounter.h"
#include "string_gf.h"
#include "string_template.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_020298BC.h"
#include "unk_0202E2CC.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"
#include "unk_02094EDC.h"
#include "vars_flags.h"

#include "res/text/bank/tv_programs_interviews.h"
#include "res/text/bank/tv_programs_sinnoh_now.h"
#include "res/text/bank/tv_programs_trainer_sightings.h"

static void FieldSystem_SaveTVEpisodeSegment(FieldSystem *fieldSystem, int programTypeID, int segmentID, const void *segment);
static void SaveData_SaveTVEpisodeSegment(SaveData *saveData, int programTypeID, int segmentID, const void *segment);
static u8 sub_0206DE4C(Pokemon *param0);
static String *sub_0206F0D8(u16 param0, enum HeapID heapID);

#define TV_EPISODE_SEGMENT_SIZE 40
#define TEMPLATE_NAME_SIZE      MON_NAME_LEN + 1

typedef struct TVEpisodeSegment_Dummy {
    u8 unused[TV_EPISODE_SEGMENT_SIZE];
} TVEpisodeSegment_Dummy;

typedef CaptureAttempt TVEpisodeSegment_CatchThatPokemonShow;

typedef struct TVEpisodeSegment_WhatsFishing {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u16 fishingRodItemID;
    BOOL caughtFish;
} TVEpisodeSegment_WhatsFishing;

typedef struct TVEpisodeSegment_LoveThatGroupCorner {
    u16 groupName[TEMPLATE_NAME_SIZE];
} TVEpisodeSegment_LoveThatGroupCorner;

typedef struct TVEpisodeSegment_HiddenItemBreakingNews {
    u16 item;
    u16 location;
} TVEpisodeSegment_HiddenItemBreakingNews;

typedef struct TVEpisodeSegment_SinnohShoppingChampCorner {
    u16 item;
    u8 amount;
} TVEpisodeSegment_SinnohShoppingChampCorner;

typedef struct TVEpisodeSegment_HappyHappyEggClub {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u16 location;
} TVEpisodeSegment_HappyHappyEggClub;

typedef struct TVEpisodeSegment_RateThatNameChange {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u16 nickname[TEMPLATE_NAME_SIZE];
} TVEpisodeSegment_RateThatNameChange;

typedef struct TVEpisodeSegment_UndergroundTreasuresCorner {
    u16 item;
    u16 amount;
} TVEpisodeSegment_UndergroundTreasuresCorner;

typedef struct TVEpisodeSegment_SafariGameSpecialNewsBulletin {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u8 numPokemonCaught;
} TVEpisodeSegment_SafariGameSpecialNewsBulletin;

typedef struct TVEpisodeSegment_PokemonStorageSpecialNewsBulletin {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
} TVEpisodeSegment_PokemonStorageSpecialNewsBulletin;

typedef struct TVEpisodeSegment_HerbalMedicineTrainerSightingDummy {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u16 item;
} TVEpisodeSegment_HerbalMedicineTrainerSightingDummy;

typedef struct TVEpisodeSegment_PlantingAndWateringShow {
    u16 berryItemID;
    u8 yieldRating;
    u16 yieldAmount;
} TVEpisodeSegment_PlantingAndWateringShow;

typedef struct TVEpisodeSegment_SealClubShow {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u8 dummy;
    u8 ballSeal;
} TVEpisodeSegment_SealClubShow;

typedef struct TVEpisodeSegment_CaptureTheFlagDigest {
    int trainerInfoSize;
    u8 trainerInfo[sizeof(TrainerInfo)];
} TVEpisodeSegment_CaptureTheFlagDigest;

typedef struct TVEpisodeSegment_HomeAndManor_NoFurniture {
    u8 dummy;
} TVEpisodeSegment_HomeAndManor_NoFurniture;

typedef struct TVEpisodeSegment_HomeAndManor {
    u8 furniture;
} TVEpisodeSegment_HomeAndManor;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_0206DBE8;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u32 unk_08;
} UnkStruct_0206DC9C;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_0206DD5C;

typedef struct {
    u16 unk_00[TEMPLATE_NAME_SIZE];
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u16 unk_1C;
} UnkStruct_0206DE80;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206DF14;

typedef struct {
    u16 unk_00;
} UnkStruct_0206DF88;

typedef struct {
    UnkStruct_0202E828 unk_00;
} UnkStruct_0206E018;

typedef struct {
    UnkStruct_0202E834 unk_00;
} UnkStruct_0206E098;

typedef struct TVEpisodeSegment_BattleTowerCorner {
    UnkStruct_0202E7FC outcome;
    u16 customMessageWord;
} TVEpisodeSegment_BattleTowerCorner;

typedef struct TVEpisodeSegment_YourPokemonCorner {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u8 hasNickname;
    u16 nickname[TEMPLATE_NAME_SIZE];
    u16 customMessageWord;
} TVEpisodeSegment_YourPokemonCorner;

typedef struct TVEpisodeSegment_ThePoketchWatch {
    int appID;
    u16 customMessageWord;
} TVEpisodeSegment_ThePoketchWatch;

typedef struct TVEpisodeSegment_ContestHall {
    UnkStruct_0202E7D8 unk_00;
    u16 customMessageWord;
} TVEpisodeSegment_ContestHall;

typedef struct TVEpisodeSegment_RightOnPhotoCorner {
    u16 species;
    u16 customMessageWord;
} TVEpisodeSegment_RightOnPhotoCorner;

typedef struct TVEpisodeSegment_StreetCornerPersonalityCheckup {
    int pokemonType;
} TVEpisodeSegment_StreetCornerPersonalityCheckup;

typedef struct TVEpisodeSegment_ThreeCheersForPoffinCorner {
    UnkStruct_0202E7F0 unk_00;
    u16 customMessageWord;
} TVEpisodeSegment_ThreeCheersForPoffinCorner;

typedef struct TVEpisodeSegment_AmitySquareWatch {
    UnkStruct_0202E7E4 unk_00;
    u16 customWordMessage;
} TVEpisodeSegment_AmitySquareWatch;

typedef struct TVEpisodeSegment_BattleFrontierFrontlineNews_Single {
    UnkStruct_0202E810 unk_00;
    u16 customWordMessage;
} TVEpisodeSegment_BattleFrontierFrontlineNews_Single;

typedef struct TVEpisodeSegment_InYourFaceInterview_Question1 {
    u16 customWordMessage;
} TVEpisodeSegment_InYourFaceInterview_Question1;

typedef struct TVEpisodeSegment_InYourFaceInterview_Question2 {
    u16 customWordMessage;
} TVEpisodeSegment_InYourFaceInterview_Question2;

typedef struct TVEpisodeSegment_InYourFaceInterview_Question3 {
    u16 customWordMessage;
} TVEpisodeSegment_InYourFaceInterview_Question3;

typedef struct TVEpisodeSegment_InYourFaceInterview_Question4 {
    u16 customWordMessage;
} TVEpisodeSegment_InYourFaceInterview_Question4;

typedef struct TVEpisodeSegment_BattleFrontierFrontlineNews_Multi {
    UnkStruct_0202E81C unk_00;
    u16 customWordMessage;
} TVEpisodeSegment_BattleFrontierFrontlineNews_Multi;

typedef union TVEpisodeSegment {
    TVEpisodeSegment_Dummy dummy1;
    TVEpisodeSegment_CatchThatPokemonShow catchThatPokemonShow;
    TVEpisodeSegment_WhatsFishing whatsFishing;
    TVEpisodeSegment_LoveThatGroupCorner loveThatGroupCorner;
    TVEpisodeSegment_HiddenItemBreakingNews hiddenItemBreakingNews;
    TVEpisodeSegment_SinnohShoppingChampCorner sinnohShoppingChampCorner;
    TVEpisodeSegment_HappyHappyEggClub happyHappyEggClub;
    TVEpisodeSegment_RateThatNameChange rateThatNameChange;
    TVEpisodeSegment_UndergroundTreasuresCorner undergroundTreasuresCorner;
    TVEpisodeSegment_SafariGameSpecialNewsBulletin safariGameSpecialNewsBulletin;
    TVEpisodeSegment_PokemonStorageSpecialNewsBulletin pokemonStorageSpecialNewsBulletin;
    TVEpisodeSegment_HerbalMedicineTrainerSightingDummy dummy2;
    TVEpisodeSegment_PlantingAndWateringShow plantingAndWateringShow;
    TVEpisodeSegment_SealClubShow sealClubShow;
    TVEpisodeSegment_CaptureTheFlagDigest captureTheFlagDigest;
    TVEpisodeSegment_HomeAndManor_NoFurniture homeAndManorNoFurniture;
    TVEpisodeSegment_HomeAndManor homeAndManor;
    UnkStruct_0206DBE8 val18;
    UnkStruct_0206DC9C val19;
    UnkStruct_0206DD5C val20;
    UnkStruct_0206DE80 val21;
    UnkStruct_0206DF14 val22;
    UnkStruct_0206DF88 val23;
    UnkStruct_0206E018 val24;
    UnkStruct_0206E098 val25;
    TVEpisodeSegment_BattleTowerCorner battleTowerCorner;
    TVEpisodeSegment_YourPokemonCorner yourPokemonCorner;
    TVEpisodeSegment_ThePoketchWatch thePoketchWatch;
    TVEpisodeSegment_ContestHall contestHall;
    TVEpisodeSegment_RightOnPhotoCorner rightOnPhotoCorner;
    TVEpisodeSegment_StreetCornerPersonalityCheckup streetCornerPersonalityCheckup;
    TVEpisodeSegment_ThreeCheersForPoffinCorner threeCheersForPoffinCorner;
    TVEpisodeSegment_AmitySquareWatch amitySquareWatch;
    TVEpisodeSegment_BattleFrontierFrontlineNews_Single battleFrontierFrontlineNewsSingle;
    TVEpisodeSegment_InYourFaceInterview_Question1 inYourFaceInterviewQuestion1;
    TVEpisodeSegment_InYourFaceInterview_Question2 inYourFaceInterviewQuestion2;
    TVEpisodeSegment_InYourFaceInterview_Question3 inYourFaceInterviewQuestion3;
    TVEpisodeSegment_InYourFaceInterview_Question4 inYourFaceInterviewQuestion4;
    TVEpisodeSegment_BattleFrontierFrontlineNews_Multi battleFrontierFrontlineNewsMulti;
} TVEpisodeSegment;

typedef int (*TVEpisodeSegment_LoadMessageFunction)(FieldSystem *, StringTemplate *, UnkStruct_ov6_022465F4 *);
typedef BOOL (*TVEpisodeSegment_IsEligibleFunction)(FieldSystem *, UnkStruct_ov6_022465F4 *);

typedef struct TVProgramSegment {
    TVEpisodeSegment_LoadMessageFunction loadMessageFn;
    TVEpisodeSegment_IsEligibleFunction isEligibleFn;
} TVProgramSegment;

typedef struct TVProgramType {
    int programTypeID;
    u16 bankID;
    u16 numSegments;
    const TVProgramSegment *segments;
} TVProgramType;

#define TV_PROGRAM_SEGMENT_NULL { NULL, NULL }

static const TVProgramSegment sTrainerSightingsSegments[TV_PROGRAM_TYPE_TRAINER_SIGHTINGS_NUM_SEGMENTS];
static const TVProgramSegment sRecordsSegments[TV_PROGRAM_TYPE_RECORDS_NUM_SEGMENTS];
static const TVProgramSegment sInterviewsSegments[TV_PROGRAM_TYPE_INTERVIEWS_NUM_SEGMENTS];
static const TVProgramSegment sSinnohNowSegments[TV_PROGRAM_TYPE_SINNOH_NOW_NUM_SEGMENTS];
static const TVProgramSegment sVarietyHourSegments[TV_PROGRAM_TYPE_VARIETY_HOUR_NUM_SEGMENTS];

static const TVProgramType sProgramTypes[] = {
    {
        TV_PROGRAM_TYPE_INTERVIEWS,
        TEXT_BANK_TV_PROGRAMS_INTERVIEWS,
        TV_PROGRAM_TYPE_INTERVIEWS_NUM_SEGMENTS + 1,
        sInterviewsSegments,
    },
    {
        TV_PROGRAM_TYPE_TRAINER_SIGHTINGS,
        TEXT_BANK_TV_PROGRAMS_TRAINER_SIGHTINGS,
        TV_PROGRAM_TYPE_TRAINER_SIGHTINGS_NUM_SEGMENTS + 1,
        sTrainerSightingsSegments,
    },
    {
        TV_PROGRAM_TYPE_RECORDS,
        TEXT_BANK_TV_PROGRAMS_RECORDS,
        TV_PROGRAM_TYPE_RECORDS_NUM_SEGMENTS + 1,
        sRecordsSegments,
    },
    {
        TV_PROGRAM_TYPE_SINNOH_NOW,
        TEXT_BANK_TV_PROGRAMS_SINNOH_NOW,
        TV_PROGRAM_TYPE_SINNOH_NOW_NUM_SEGMENTS + 1,
        sSinnohNowSegments,
    },
    {
        TV_PROGRAM_TYPE_VARIETY_HOUR,
        TEXT_BANK_TV_PROGRAMS_VARIETY_HOUR,
        TV_PROGRAM_TYPE_VARIETY_HOUR_NUM_SEGMENTS + 1,
        sVarietyHourSegments,
    },
};

static const TVProgramType *TVBroadcast_GetProgramType(int programTypeID)
{
    const TVProgramType *programType;

    GF_ASSERT(0 < programTypeID && programTypeID < TV_PROGRAM_TYPE_MAX);
    programType = &sProgramTypes[programTypeID - 1];
    GF_ASSERT(programType->programTypeID == programTypeID);

    return programType;
}

static const TVProgramSegment *TVProgramType_GetSegment(const TVProgramType *programType, const UnkStruct_ov6_022465F4 *param1)
{
    int segmentID = ov6_022464A4(param1);
    GF_ASSERT(0 < segmentID && segmentID < programType->numSegments);

    return &(programType->segments[segmentID - 1]);
}

int TVEpisodeSegment_LoadMessage(int programTypeID, FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param3, u16 *bankDestVar)
{
    TVEpisodeSegment_LoadMessageFunction loadMessageFn;
    const TVProgramType *programType;
    const TVProgramSegment *segment;

    programType = TVBroadcast_GetProgramType(programTypeID);
    *bankDestVar = programType->bankID;
    segment = TVProgramType_GetSegment(programType, param3);
    loadMessageFn = segment->loadMessageFn;

    GF_ASSERT(loadMessageFn != NULL);
    return loadMessageFn(fieldSystem, template, param3);
}

BOOL TVEpisodeSegment_IsEligible(int programTypeID, FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_IsEligibleFunction isEligibleFn;
    const TVProgramType *programType;
    const TVProgramSegment *segment;

    programType = TVBroadcast_GetProgramType(programTypeID);
    segment = TVProgramType_GetSegment(programType, param2);

    if (segment->loadMessageFn == NULL) {
        return FALSE;
    }

    isEligibleFn = segment->isEligibleFn;

    if (isEligibleFn == NULL) {
        return TRUE;
    }

    return isEligibleFn(fieldSystem, param2);
}

static void sub_0206CD58(SaveData *saveData, int param1, int param2, const void *param3)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    GF_ASSERT(sizeof(TVEpisodeSegment) == TV_EPISODE_SEGMENT_SIZE);
    TVBroadcast_SaveSegmentData(broadcast, param1, param2, (const u8 *)param3);
}

static void FieldSystem_SaveTVEpisodeSegment(FieldSystem *fieldSystem, int programTypeID, int segmentID, const void *segment)
{
    SaveData_SaveTVEpisodeSegment(fieldSystem->saveData, programTypeID, segmentID, segment);
}

static void SaveData_SaveTVEpisodeSegment(SaveData *saveData, int programTypeID, int segmentID, const void *segment)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    GF_ASSERT(sizeof(TVEpisodeSegment) == TV_EPISODE_SEGMENT_SIZE);
    TVBroadcast_SaveSegmentData(broadcast, programTypeID, segmentID, (const u8 *)segment);
}

static void sub_0206CD94(StringTemplate *template, int idx, const u16 *param2, int unused3, int unused4, int unused5)
{
    String *string = String_Init(64, HEAP_ID_FIELD1);

    String_CopyChars(string, param2);
    StringTemplate_SetString(template, idx, string, unused3, unused5, unused4);
    String_Free(string);
}

static void TVEpisodeSegment_SetTemplateTrainerName(StringTemplate *template, int idx, const UnkStruct_ov6_022465F4 *param2)
{
    sub_0206CD94(template, idx, ov6_02246494(param2), ov6_0224648C(param2), ov6_02246490(param2), 1);
}

static void sub_0206CE08(enum HeapID heapID, u16 *param1, Pokemon *mon)
{
    String *string = String_Init(64, heapID);

    Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, string);
    String_ToChars(string, param1, TEMPLATE_NAME_SIZE);
    String_Free(string);
}

static void TVEpisodeSegment_CopyPokemonValues(Pokemon *mon, u16 *species, u8 *gender, u8 *language, u8 *metGame)
{
    *species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    *gender = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
    *language = Pokemon_GetValue(mon, MON_DATA_LANGUAGE, NULL);
    *metGame = Pokemon_GetValue(mon, MON_DATA_MET_GAME, NULL);
}

static void TVEpisodeSegment_SetTemplatePokemonSpecies(StringTemplate *template, int idx, u16 species, u8 unused3, u8 unused4, u8 unused5)
{
    u16 speciesName[TEMPLATE_NAME_SIZE];

    MessageLoader_GetSpeciesName(species, HEAP_ID_FIELD1, speciesName);
    sub_0206CD94(template, idx, speciesName, unused3, unused4, 1);
}

static void TVEpisodeSegment_SetTemplateOwnPokemonSpecies(StringTemplate *template, int idx, u16 species)
{
    u16 speciesName[TEMPLATE_NAME_SIZE];

    MessageLoader_GetSpeciesName(species, HEAP_ID_FIELD1, speciesName);
    sub_0206CD94(template, idx, speciesName, 0, GAME_LANGUAGE, 1);
}

static void sub_0206CED0(enum HeapID heapID, Pokemon *mon, u8 *param2, u16 *param3)
{
    *param2 = Pokemon_GetValue(mon, MON_DATA_HAS_NICKNAME, NULL);

    if (*param2) {
        String *string = String_Init(64, heapID);

        Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, string);
        String_ToChars(string, param3, TEMPLATE_NAME_SIZE);
        String_Free(string);
    }
}

void sub_0206CF14(TVBroadcast *broadcast, Pokemon *param1, int param2, int param3, int param4)
{
    UnkStruct_0202E7D8 *v0 = sub_0202E7D8(broadcast);

    v0->unk_00 = 1;
    TVEpisodeSegment_CopyPokemonValues(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_08 = param2;
    v0->unk_07 = param3;
    v0->unk_09 = param4;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CF48(TVBroadcast *broadcast, Pokemon *param1, enum HeapID heapID)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_00 = 1;
    v0->unk_1F = 0;
    v0->unk_1E = Pokemon_GetNature(param1);

    TVEpisodeSegment_CopyPokemonValues(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_07 = Pokemon_GetValue(param1, MON_DATA_HAS_NICKNAME, NULL);

    sub_0206CED0(heapID, param1, &v0->unk_07, v0->unk_08);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CF9C(TVBroadcast *broadcast, int param1)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_1F = 2;
    v0->unk_20 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CFB4(TVBroadcast *broadcast, int param1)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_1F = 1;
    v0->unk_22 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CFCC(TVBroadcast *broadcast, int param1)
{
    UnkStruct_0202E7F0 *v0 = sub_0202E7F0(broadcast);

    v0->unk_00 = 1;
    v0->unk_01 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CFE4(TVBroadcast *broadcast, BOOL param1, u16 param2)
{
    UnkStruct_0202E7FC *v0 = sub_0202E7FC(broadcast);

    v0->unk_00 = 1;
    v0->win = param1;
    v0->winStreak = param2;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void TVBroadcast_ResetSafariGameData(TVBroadcast *broadcast)
{
    UnkStruct_0202E808 *safariGame = TVBroadcast_GetSafariGameData(broadcast);

    safariGame->dummy = 1;
    safariGame->numPokemonCaught = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void TVBroadcast_UpdateSafariGameData(TVBroadcast *broadcast, Pokemon *mon)
{
    UnkStruct_0202E808 *safariGame = TVBroadcast_GetSafariGameData(broadcast);

    if (safariGame->numPokemonCaught == 0) {
        TVEpisodeSegment_CopyPokemonValues(mon, &safariGame->species, &safariGame->gender, &safariGame->language, &safariGame->metGame);
    }

    safariGame->numPokemonCaught++;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D048(TVBroadcast *broadcast, Pokemon *mon)
{
    UnkStruct_0202E810 *v0 = sub_0202E810(broadcast);

    v0->unk_00 = 1;
    TVEpisodeSegment_CopyPokemonValues(mon, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_07 = Pokemon_GetValue(mon, MON_DATA_HAS_NICKNAME, NULL);

    sub_0206CED0(HEAP_ID_FIELD2, mon, &v0->unk_07, v0->unk_08);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D088(TVBroadcast *broadcast, u8 param1, const TrainerInfo *param2)
{
    UnkStruct_0202E81C *v0 = sub_0202E81C(broadcast);

    v0->unk_00 = 1;
    v0->unk_01 = param1;

    CharCode_Copy(v0->unk_06, TrainerInfo_Name(param2));

    v0->unk_03 = TrainerInfo_RegionCode(param2);
    v0->unk_04 = TrainerInfo_GameCode(param2);
    v0->unk_02 = TrainerInfo_Gender(param2);

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D0C8(TVBroadcast *broadcast, u16 param1)
{
    UnkStruct_0202E828 *v0 = sub_0202E828(broadcast);

    v0->unk_00 = 1;
    v0->unk_04 += param1;

    if (v0->unk_04 > 9999) {
        v0->unk_04 = 9999;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D0F0(TVBroadcast *broadcast)
{
    UnkStruct_0202E828 *v0 = sub_0202E828(broadcast);

    v0->unk_04 = 0;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D104(TVBroadcast *broadcast)
{
    UnkStruct_0202E834 *v0 = sub_0202E834(broadcast);

    v0->unk_00 = 1;
    v0->unk_02++;

    if (v0->unk_02 > 9999) {
        v0->unk_02 = 9999;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D12C(TVBroadcast *broadcast)
{
    UnkStruct_0202E834 *v0 = sub_0202E834(broadcast);

    v0->unk_02 = 0;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

CaptureAttempt *CaptureAttempt_New(enum HeapID heapID)
{
    CaptureAttempt *captureAttempt = Heap_Alloc(heapID, sizeof(CaptureAttempt));
    MI_CpuClearFast(captureAttempt, sizeof(CaptureAttempt));

    return captureAttempt;
}

void CaptureAttempt_Free(CaptureAttempt *captureAttempt)
{
    Heap_Free(captureAttempt);
}

void CaptureAttempt_Init(CaptureAttempt *captureAttempt, Pokemon *mon, int resultMask, int ballsThrown, enum HeapID heapID)
{
    MI_CpuClear32(captureAttempt, sizeof(CaptureAttempt));

    captureAttempt->resultMask = resultMask;
    captureAttempt->ballsThrown = ballsThrown;

    TVEpisodeSegment_CopyPokemonValues(mon, &captureAttempt->species, &captureAttempt->gender, &captureAttempt->language, &captureAttempt->metGame);

    captureAttempt->pokeballItemID = Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL);
    GF_ASSERT(captureAttempt->pokeballItemID);

    sub_0206CED0(heapID, mon, &captureAttempt->hasNickname, captureAttempt->nickname);
}

void FieldSystem_SaveTVEpisodeSegment_CatchThatPokemonShow(FieldSystem *fieldSystem, const CaptureAttempt *captureAttempt, int resultMask)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_CatchThatPokemonShow *catchThatPokemonShow = &segments.catchThatPokemonShow;

    *catchThatPokemonShow = *captureAttempt;
    catchThatPokemonShow->resultMask = resultMask;

    if (catchThatPokemonShow->ballsThrown == 0) {
        return;
    }

    if (catchThatPokemonShow->ballsThrown > 999) {
        catchThatPokemonShow->ballsThrown = 999;
    }

    switch (resultMask) {
    case BATTLE_RESULT_CAPTURED_MON:
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_CATCH_THAT_POKEMON_SHOW_SUCCESS, catchThatPokemonShow);
        break;
    case BATTLE_RESULT_WIN:
    case BATTLE_RESULT_PLAYER_FLED:
    case BATTLE_RESULT_ENEMY_FLED:
        if (catchThatPokemonShow->ballsThrown > 2) {
            FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_CATCH_THAT_POKEMON_SHOW_FAILURE, catchThatPokemonShow);
        }
        break;
    }
}

static int TVEpisodeSegment_LoadMessage_CatchThatPokemonShow_Success(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_CatchThatPokemonShow *catchThatPokemonShow = ov6_02246498(param2);

    if (catchThatPokemonShow->hasNickname) {
        TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, catchThatPokemonShow->species, catchThatPokemonShow->gender, catchThatPokemonShow->language, catchThatPokemonShow->metGame);
        StringTemplate_SetItemName(template, 2, catchThatPokemonShow->pokeballItemID);
        StringTemplate_SetNumber(template, 3, catchThatPokemonShow->ballsThrown, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        sub_0206CD94(template, 4, catchThatPokemonShow->nickname, catchThatPokemonShow->gender, catchThatPokemonShow->language, 1);
        return TVProgramTrainerSightings_Text_CatchThatPokemonShow_Nicknamed;
    } else {
        TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, catchThatPokemonShow->species, catchThatPokemonShow->gender, catchThatPokemonShow->language, catchThatPokemonShow->metGame);
        StringTemplate_SetItemName(template, 2, catchThatPokemonShow->pokeballItemID);
        StringTemplate_SetNumber(template, 3, catchThatPokemonShow->ballsThrown, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        return TVProgramTrainerSightings_Text_CatchThatPokemonShow_NotNicknamed;
    }
}

static int TVEpisodeSegment_LoadMessage_CatchThatPokemonShow_Failure(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_CatchThatPokemonShow *catchThatPokemonShow = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetNumber(template, 1, catchThatPokemonShow->ballsThrown, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);

    if (catchThatPokemonShow->resultMask == BATTLE_RESULT_WIN) {
        return TVProgramTrainerSightings_Text_CatchThatPokemonShow_Fainted;
    } else {
        return TVProgramTrainerSightings_Text_CatchThatPokemonShow_RanAway;
    }
}

static BOOL TVEpisodeSegment_IsEligible_CatchThatPokemonShow_Success(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    TVEpisodeSegment_CatchThatPokemonShow *catchThatPokemonShow = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, catchThatPokemonShow->species);
}

void FieldSystem_SaveTVEpisodeSegment_WhatsFishing(FieldSystem *fieldSystem, BOOL caughtFish, u16 fishingRodItemID, Pokemon *mon)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_WhatsFishing *whatsFishing = &segments.whatsFishing;

    if (caughtFish) {
        TVEpisodeSegment_CopyPokemonValues(mon, &whatsFishing->species, &whatsFishing->gender, &whatsFishing->language, &whatsFishing->metGame);
    }

    whatsFishing->fishingRodItemID = fishingRodItemID;
    whatsFishing->caughtFish = caughtFish;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_WHATS_FISHING, whatsFishing);
}

static int TVEpisodeSegment_LoadMessage_WhatsFishing(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_WhatsFishing *whatsFishing = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);

    if (whatsFishing->caughtFish) {
        StringTemplate_SetItemName(template, 1, whatsFishing->fishingRodItemID);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 2, whatsFishing->species, whatsFishing->gender, whatsFishing->language, whatsFishing->metGame);
        return TVProgramTrainerSightings_Text_WhatsFishing_Success;
    } else {
        return TVProgramTrainerSightings_Text_WhatsFishing_Failure;
    }
}

static BOOL TVEpisodeSegment_IsEligible_WhatsFishing(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_WhatsFishing *whatsFishing = ov6_02246498(param1);

    if (whatsFishing->caughtFish == FALSE) {
        return TRUE;
    }

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), whatsFishing->species);
}

static void FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner(FieldSystem *fieldSystem, int segmentID)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_LoveThatGroupCorner *loveThatGroupCorner = &segments.loveThatGroupCorner;
    RecordMixedRNG *rngCollection = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    GF_ASSERT(sizeof(TVEpisodeSegment) == TV_EPISODE_SEGMENT_SIZE);
    MI_CpuClearFast(&segments, TV_EPISODE_SEGMENT_SIZE);

    CharCode_CopyNumChars(loveThatGroupCorner->groupName, RecordMixedRNG_GetEntryName(rngCollection, RECORD_MIXED_RNG_PLAYER_OVERRIDE, RECORD_MIXED_RNG_GROUP_NAME), TEMPLATE_NAME_SIZE);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, segmentID, loveThatGroupCorner);
}

void FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner_NewGroup(FieldSystem *fieldSystem)
{
    FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner(fieldSystem, TV_PROGRAM_SEGMENT_LOVE_THAT_GROUP_CORNER_NEW_GROUP);
}

void FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner_SwitchGroup(FieldSystem *fieldSystem)
{
    FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner(fieldSystem, TV_PROGRAM_SEGMENT_LOVE_THAT_GROUP_CORNER_SWITCH_GROUP);
}

static int TVEpisodeSegment_LoadMessage_LoveThatGroupCorner_SwitchGroup(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_LoveThatGroupCorner *loveThatGroupCorner = ov6_02246498(param2);

    sub_0206CD94(template, 1, loveThatGroupCorner->groupName, 0, ov6_02246490(param2), 1);
    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);

    return TVProgramTrainerSightings_Text_LoveThatGroupCorner_SwitchGroup;
}

static int TVEpisodeSegment_LoadMessage_LoveThatGroupCorner_NewGroup(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_LoveThatGroupCorner *loveThatGroupCorner = ov6_02246498(param2);

    sub_0206CD94(template, 1, loveThatGroupCorner->groupName, 0, ov6_02246490(param2), 1);
    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);

    return TVProgramTrainerSightings_Text_LoveThatGroupCorner_NewGroup;
}

void FieldSystem_SaveTVEpisodeSegment_HiddenItemBreakingNews(FieldSystem *fieldSystem, u16 item)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_HiddenItemBreakingNews *hiddenItemBreakingNews = &segments.hiddenItemBreakingNews;

    hiddenItemBreakingNews->item = item;
    hiddenItemBreakingNews->location = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_HIDDEN_ITEM_BREAKING_NEWS, hiddenItemBreakingNews);
}

static int TVEpisodeSegment_LoadMessage_HiddenItemBreakingNews(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_HiddenItemBreakingNews *hiddenItemBreakingNews = ov6_02246498(param2);

    StringTemplate_SetLocationName(template, 0, hiddenItemBreakingNews->location);
    TVEpisodeSegment_SetTemplateTrainerName(template, 1, param2);
    StringTemplate_SetItemName(template, 2, hiddenItemBreakingNews->item);

    return TVProgramTrainerSightings_Text_HiddenItemBreakingNews;
}

void FieldSystem_SaveTVEpisodeSegment_SinnohShoppingChampCorner(SaveData *saveData, u16 item, u8 amount)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_SinnohShoppingChampCorner *sinnohShoppingChampCorner = &segments.sinnohShoppingChampCorner;

    if (amount >= 10) {
        sinnohShoppingChampCorner->item = item;
        sinnohShoppingChampCorner->amount = amount;

        if (sinnohShoppingChampCorner->amount > 999) {
            sinnohShoppingChampCorner->amount = 999;
        }

        SaveData_SaveTVEpisodeSegment(saveData, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_SINNOH_SHOPPING_CHAMP_CORNER, sinnohShoppingChampCorner);
    }
}

static int TVEpisodeSegment_LoadMessage_SinnohShoppingChampCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_SinnohShoppingChampCorner *sinnohShoppingChampCorner = ov6_02246498(param2);

    StringTemplate_SetItemName(template, 0, sinnohShoppingChampCorner->item);
    StringTemplate_SetNumber(template, 1, sinnohShoppingChampCorner->amount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    TVEpisodeSegment_SetTemplateTrainerName(template, 2, param2);
    StringTemplate_SetItemNamePlural(template, 3, sinnohShoppingChampCorner->item);

    return TVProgramTrainerSightings_Text_SinnohShoppingChampCorner;
}

void FieldSystem_SaveTVEpisodeSegment_HappyHappyEggClub(FieldSystem *fieldSystem, Pokemon *mon)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_HappyHappyEggClub *happyHappyEggClub = &segments.happyHappyEggClub;

    TVEpisodeSegment_CopyPokemonValues(mon, &happyHappyEggClub->species, &happyHappyEggClub->gender, &happyHappyEggClub->language, &happyHappyEggClub->metGame);
    happyHappyEggClub->location = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_HAPPY_HAPPY_EGG_CLUB, happyHappyEggClub);
}

static int TVEpisodeSegment_LoadMessage_HappyHappyEggClub(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_HappyHappyEggClub *happyHappyEggClub = ov6_02246498(param2);

    StringTemplate_SetLocationName(template, 1, happyHappyEggClub->location);
    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 2, happyHappyEggClub->species, happyHappyEggClub->gender, happyHappyEggClub->language, happyHappyEggClub->metGame);

    return TVProgramTrainerSightings_Text_HappyHappyEggClub;
}

static BOOL TVEpisodeSegment_IsEligible_HappyHappyEggClub(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_HappyHappyEggClub *happyHappyEggClub = ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), happyHappyEggClub->species);
}

void FieldSystem_SaveTVEpisodeSegment_RateThatNameChange(FieldSystem *fieldSystem, Pokemon *mon)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_RateThatNameChange *rateThatNameChange = &segments.rateThatNameChange;

    TVEpisodeSegment_CopyPokemonValues(mon, &rateThatNameChange->species, &rateThatNameChange->gender, &rateThatNameChange->language, &rateThatNameChange->metGame);
    sub_0206CE08(HEAP_ID_FIELD1, rateThatNameChange->nickname, mon);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_RATE_THAT_NAME_CHANGE, rateThatNameChange);
}

static int TVEpisodeSegment_LoadMessage_RateThatNameChange(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_RateThatNameChange *rateThatNameChange = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, rateThatNameChange->species, rateThatNameChange->gender, rateThatNameChange->language, rateThatNameChange->metGame);
    sub_0206CD94(template, 2, rateThatNameChange->nickname, rateThatNameChange->gender, rateThatNameChange->language, 1);

    return TVProgramTrainerSightings_Text_RateThatNameChange_MoreAttractive + LCRNG_RandMod(5);
}

static BOOL TVEpisodeSegment_IsEligible_RateThatNameChange(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    TVEpisodeSegment_RateThatNameChange *rateThatNameChange = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, rateThatNameChange->species);
}

void FieldSystem_SaveTVEpisodeSegment_UndergroundTreasuresCorner(FieldSystem *fieldSystem, int item, int amount)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_UndergroundTreasuresCorner *undergroundTreasuresCorner = &segments.undergroundTreasuresCorner;

    undergroundTreasuresCorner->item = item;
    undergroundTreasuresCorner->amount = amount;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_UNDERGROUND_TREASURES_CORNER, undergroundTreasuresCorner);
}

static int TVEpisodeSegment_LoadMessage_UndergroundTreasuresCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_UndergroundTreasuresCorner *undergroundTreasuresCorner = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetUndergroundItemName(template, 1, undergroundTreasuresCorner->item);
    StringTemplate_SetNumber(template, 2, undergroundTreasuresCorner->amount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return TVProgramTrainerSightings_Text_UndergroundTreasuresCorner;
}

void FieldSystem_SaveTVEpisodeSegment_SafariGameSpecialNewsBulletin(FieldSystem *fieldSystem)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_SafariGameSpecialNewsBulletin *safariGameSpecialNewsBulletin = &segments.safariGameSpecialNewsBulletin;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E808 *safariGame = TVBroadcast_GetSafariGameData(broadcast);

    if (safariGame->numPokemonCaught == 0) {
        return;
    }

    safariGameSpecialNewsBulletin->species = safariGame->species;
    safariGameSpecialNewsBulletin->gender = safariGame->gender;
    safariGameSpecialNewsBulletin->language = safariGame->language;
    safariGameSpecialNewsBulletin->metGame = safariGame->metGame;
    safariGameSpecialNewsBulletin->numPokemonCaught = safariGame->numPokemonCaught;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_SAFAR_GAME_SPECIAL_NEWS_BULLETIN, safariGameSpecialNewsBulletin);
}

static int TVEpisodeSegment_LoadMessage_SafariGameSpecialNewsBulletin(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_SafariGameSpecialNewsBulletin *safariGameSpecialNewsBulletin = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, safariGameSpecialNewsBulletin->species, safariGameSpecialNewsBulletin->gender, safariGameSpecialNewsBulletin->language, safariGameSpecialNewsBulletin->metGame);
    StringTemplate_SetNumber(template, 2, safariGameSpecialNewsBulletin->numPokemonCaught, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return TVProgramTrainerSightings_Text_SafariGameSpecialNewsBulletin;
}

static BOOL TVEpisodeSegment_IsEligible_SafariGameSpecialNewsBulletin(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    TVEpisodeSegment_SafariGameSpecialNewsBulletin *safariGameSpecialNewsBulletin = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, safariGameSpecialNewsBulletin->species);
}

void FieldSystem_SaveTVEpisodeSegment_PokemonStorageSpecialNewsBulletin(FieldSystem *fieldSystem)
{
    u32 hasMale, hasFemale, hasGenderless, gender;
    u8 partyCount, partyIndex;
    Pokemon *pokemon;
    TVEpisodeSegment segments;
    Party *party;
    TVEpisodeSegment_PokemonStorageSpecialNewsBulletin *pokemonStorageSpecialNewsBulletin = &segments.pokemonStorageSpecialNewsBulletin;

    hasMale = FALSE;
    hasFemale = FALSE;
    hasGenderless = FALSE;
    party = SaveData_GetParty(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);

    for (partyIndex = 0; partyIndex < partyCount; partyIndex++) {
        pokemon = Party_GetPokemonBySlotIndex(party, partyIndex);

        if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) == FALSE) {
            gender = Pokemon_GetValue(pokemon, MON_DATA_GENDER, NULL);

            if (gender == GENDER_MALE) {
                hasMale = TRUE;
            } else if (gender == GENDER_FEMALE) {
                hasFemale = TRUE;
            } else if (gender == GENDER_NONE) {
                hasGenderless = TRUE;
            }
        }
    }

    if (hasGenderless == FALSE) {
        if (hasMale == TRUE && hasFemale == FALSE) {
            pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));
            TVEpisodeSegment_CopyPokemonValues(pokemon, &pokemonStorageSpecialNewsBulletin->species, &pokemonStorageSpecialNewsBulletin->gender, &pokemonStorageSpecialNewsBulletin->language, &pokemonStorageSpecialNewsBulletin->metGame);
            FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_POKEMON_STORAGE_SPECIAL_NEWS_BULLETIN, pokemonStorageSpecialNewsBulletin);
        } else if (hasMale == FALSE && hasFemale == TRUE) {
            pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));
            TVEpisodeSegment_CopyPokemonValues(pokemon, &pokemonStorageSpecialNewsBulletin->species, &pokemonStorageSpecialNewsBulletin->gender, &pokemonStorageSpecialNewsBulletin->language, &pokemonStorageSpecialNewsBulletin->metGame);
            FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_POKEMON_STORAGE_SPECIAL_NEWS_BULLETIN, pokemonStorageSpecialNewsBulletin);
        }
    }

    return;
}

static int TVEpisodeSegment_LoadMessage_PokemonStorageSpecialNewsBulletin(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_PokemonStorageSpecialNewsBulletin *pokemonStorageSpecialNewsBulletin = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, pokemonStorageSpecialNewsBulletin->species, pokemonStorageSpecialNewsBulletin->gender, pokemonStorageSpecialNewsBulletin->language, pokemonStorageSpecialNewsBulletin->metGame);

    if (pokemonStorageSpecialNewsBulletin->gender == GENDER_MALE) {
        return TVProgramTrainerSightings_Text_PokemonStorageSpecialNewsBulletin_Male;
    }

    return TVProgramTrainerSightings_Text_PokemonStorageSpecialNewsBulletin_Female;
}

static BOOL TVEpisodeSegment_IsEligible_PokemonStorageSpecialNewsBulletin(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_PokemonStorageSpecialNewsBulletin *pokemonStorageSpecialNewsBulletin = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), pokemonStorageSpecialNewsBulletin->species);
}

void FieldSystem_SaveTVEpisodeSegment_HerbalMedicineTrainerSightingDummy(TVBroadcast *broadcast, Pokemon *mon, u16 item)
{
    return;
}

static BOOL TVEpisodeSegment_IsEligible_HerbalMedicineTrainerSightingDummy(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return FALSE;
}

void FieldSystem_SaveTVEpisodeSegment_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_PlantingAndWateringShow *plantingAndWateringShow = &segments.plantingAndWateringShow;

    plantingAndWateringShow->berryItemID = berryItemID;
    plantingAndWateringShow->yieldRating = yieldRating;
    plantingAndWateringShow->yieldAmount = yieldAmount;

    if (yieldRating == 5) {
        (void)0;
    } else if (yieldRating == 4) {
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_PLANTING_AND_WATERING_SHOW, plantingAndWateringShow);
    } else if (yieldRating == 0) {
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_PLANTING_AND_WATERING_SHOW_NO_BERRIES, plantingAndWateringShow);
    }
}

static int TVEpisodeSegment_LoadMessage_PlantingAndWateringShow(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_PlantingAndWateringShow *plantingAndWateringShow = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetItemName(template, 1, plantingAndWateringShow->berryItemID);
    StringTemplate_SetNumber(template, 2, plantingAndWateringShow->yieldAmount, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return TVProgramTrainerSightings_Text_PlantingAndWateringShow;
}

static int TVEpisodeSegment_LoadMessage_PlantingAndWateringShow_NoBerries(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_PlantingAndWateringShow *plantingAndWateringShow = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetItemName(template, 1, plantingAndWateringShow->berryItemID);

    return TVProgramTrainerSightings_Text_PlantingAndWateringShow_NoBerries;
}

void FieldSystem_SaveTVEpisodeSegment_SealClubShow(TVBroadcast *broadcast, Pokemon *param1, u8 ballSeal)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_SealClubShow *sealClubShow = &segments.sealClubShow;

    sealClubShow->ballSeal = ballSeal;
    sealClubShow->dummy = MTRNG_Next() % 3;

    TVEpisodeSegment_CopyPokemonValues(param1, &sealClubShow->species, &sealClubShow->gender, &sealClubShow->language, &sealClubShow->metGame);
    TVBroadcast_SaveSegmentData(broadcast, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_SEAL_CLUB_SHOW, (const u8 *)sealClubShow);
}

static int TVEpisodeSegment_LoadMessage_SealClubShow(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_SealClubShow *sealClubShow = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetBallSealName(template, 1, sealClubShow->ballSeal);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 2, sealClubShow->species, sealClubShow->gender, sealClubShow->language, sealClubShow->metGame);

    return TVProgramTrainerSightings_Text_SealClubShow_CleverlyCalculated + LCRNG_RandMod(3);
}

static BOOL TVEpisodeSegment_IsEligible_SealClubShow(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_SealClubShow *sealClubShow = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), sealClubShow->species);
}

static void sub_0206DA6C(TVEpisodeSegment_CaptureTheFlagDigest *captureTheFlagDigest, const TrainerInfo *param1)
{
    captureTheFlagDigest->trainerInfoSize = TrainerInfo_Size();
    TrainerInfo_Copy(param1, (TrainerInfo *)captureTheFlagDigest->trainerInfo);
}

static void TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_CaptureTheFlagDigest *captureTheFlagDigest = ov6_02246498(param2);
    TrainerInfo *trainerInfo = (TrainerInfo *)&captureTheFlagDigest->trainerInfo;

    GF_ASSERT(TrainerInfo_Size() == captureTheFlagDigest->trainerInfoSize);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetPlayerName(template, 1, trainerInfo);
}

void FieldSystem_SaveTVEpisodeSegment_CaptureTheFlagDigest_TakeFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_CaptureTheFlagDigest *captureTheFlagDigest = &segments.captureTheFlagDigest;

    sub_0206DA6C(captureTheFlagDigest, trainerInfo);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_CAPTURE_THE_FLAG_DIGEST_TAKE_FLAG, captureTheFlagDigest);
}

void FieldSystem_SaveTVEpisodeSegment_CaptureTheFlagDigest_LoseFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_CaptureTheFlagDigest *captureTheFlagDigest = &segments.captureTheFlagDigest;

    sub_0206DA6C(captureTheFlagDigest, trainerInfo);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_CAPTURE_THE_FLAG_DIGEST_LOSE_FLAG, captureTheFlagDigest);
}

static int TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest_TakeFlag(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest(fieldSystem, template, param2);
    return TVProgramTrainerSightings_Text_CaptureTheFlagDigest_TakeFlag;
}

static int TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest_LoseFlag(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest(fieldSystem, template, param2);
    return TVProgramTrainerSightings_Text_CaptureTheFlagDigest_LoseFlag;
}

static BOOL TVEpisodeSegment_IsEligible_HasExplorerKit(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_EXPLORER_KIT, 1, HEAP_ID_FIELD3);
}

void FieldSystem_SaveTVEpisodeSegment_HomeAndManor_NoFurniture(FieldSystem *fieldSystem)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_HomeAndManor_NoFurniture *homeAndManorNoFurniture = &segments.homeAndManorNoFurniture;

    homeAndManorNoFurniture->dummy = 1;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_HOME_AND_MANOR_NO_FURNITURE, homeAndManorNoFurniture);
}

static int TVEpisodeSegment_LoadMessage_HomeAndManor_NoFurniture(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    return TVProgramTrainerSightings_Text_HomeAndManor_NoFurniture;
}

static BOOL TVEpisodeSegment_IsEligible_HomeAndManor_NoFurniture(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_RESORT_AREA);
}

void FieldSystem_SaveTVEpisodeSegment_HomeAndManor(FieldSystem *fieldSystem, u8 furniture)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_HomeAndManor *homeAndManor = &segments.homeAndManor;

    homeAndManor->furniture = furniture;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, TV_PROGRAM_SEGMENT_HOME_AND_MANOR, homeAndManor);
}

static int TVEpisodeSegment_LoadMessage_HomeAndManor(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_HomeAndManor *homeAndManor = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetFurniture(template, 1, homeAndManor->furniture);

    return TVProgramTrainerSightings_Text_HomeAndManor;
}

static BOOL TVEpisodeSegment_IsEligible_HomeAndManor(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_RESORT_AREA);
}

void sub_0206DBB0(SaveData *saveData, u32 param1, Pokemon *param2, BOOL param3)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DBE8 *v1 = &segments.val18;

    TVEpisodeSegment_CopyPokemonValues(param2, &v1->unk_02, &v1->unk_04, &v1->unk_05, &v1->unk_06);

    v1->unk_00 = param1;
    v1->unk_07 = param3;

    sub_0206CD58(saveData, 3, 1, v1);
}

static int sub_0206DBE8(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DBE8 *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_02, v0->unk_04, v0->unk_05, v0->unk_06);
    StringTemplate_SetNumber(param1, 2, v0->unk_00, 4, PADDING_MODE_NONE, CHARSET_MODE_EN);

    if (v0->unk_07) {
        return 0;
    } else {
        return 1;
    }
}

static BOOL sub_0206DC3C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206DBE8 *v0 = ov6_02246498(param1);

    if (Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_02) == 0) {
        return 0;
    }

    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206DC6C(FieldSystem *fieldSystem, u32 param1, Pokemon *param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DC9C *v1 = &segments.val19;

    TVEpisodeSegment_CopyPokemonValues(param2, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_08 = param1;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_RECORDS, 3, v1);
}

static int sub_0206DC9C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DC9C *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    {
        u32 v1 = (((v0->unk_08 * 1000) / 254 + 5) / 10);

        StringTemplate_SetNumber(param1, 2, v1 / 10, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_SetNumber(param1, 3, v1 % 10, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    }

    return 2;
}

static BOOL sub_0206DD1C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206DC9C *v0 = ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206DD38(FieldSystem *fieldSystem, u32 param1, u32 param2, u32 param3)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DD5C *v1 = &segments.val20;

    if (param2 < 1000 + param1) {
        return;
    }

    v1->unk_00 = param1;
    v1->unk_04 = param2;
    v1->unk_08 = param3;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_RECORDS, 4, v1);
}

static int sub_0206DD5C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DD5C *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_08, 10, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(param1, 2, v0->unk_00, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(param1, 3, v0->unk_04, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return 3;
}

void sub_0206DDB8(SaveData *saveData, Pokemon *mon, u32 monDataParam)
{
    u8 v0, v1;
    TVEpisodeSegment segments;
    UnkStruct_0206DE80 *v3 = &segments.val21;

    v1 = sub_0206DE4C(mon);

    switch (v1) {
    case 15:
    case 20:
    case 25:
    case 30:
    case 35:
    case 40:
        if (Ribbon_MonDataParamToNameID(monDataParam) > 0xff) {
            GF_ASSERT(FALSE);
            return;
        }

        TVEpisodeSegment_CopyPokemonValues(mon, &v3->unk_1C, &v3->unk_19, &v3->unk_1A, &v3->unk_1B);
        sub_0206CED0(HEAP_ID_FIELD3, mon, &v3->unk_18, v3->unk_00);

        v3->unk_16 = Ribbon_MonDataParamToNameID(monDataParam);
        v3->unk_17 = v1;

        SaveData_SaveTVEpisodeSegment(saveData, 3, 5, v3);
        break;
    }
}

static const u16 Unk_020EFDDC[] = {
    0x66,
    0x19,
    0x7B,
    0x7C,
    0x7D,
    0x7E,
    0x7F,
    0x80,
    0x81,
    0x82,
    0x83,
    0x84,
    0x85,
    0x86,
    0x87,
    0x88,
    0x89,
    0x8A,
    0x8B,
    0x8C,
    0x8D,
    0x8E,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F,
    0x20,
    0x21,
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x28,
    0x29,
    0x2A
};

static u8 sub_0206DE4C(Pokemon *param0)
{
    u8 v0 = 0, v1;

    for (v1 = 0; v1 < (NELEMS(Unk_020EFDDC)); v1++) {
        if (Pokemon_GetValue(param0, Unk_020EFDDC[v1], NULL) == 1) {
            v0++;
        }
    }

    return v0;
}

static int sub_0206DE80(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DE80 *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);

    if (v0->unk_18) {
        sub_0206CD94(param1, 1, v0->unk_00, v0->unk_19, v0->unk_1A, 1);
    } else {
        TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_1C, v0->unk_19, v0->unk_1A, v0->unk_1B);
    }

    StringTemplate_SetRibbonName(param1, 2, v0->unk_16);
    StringTemplate_SetNumber(param1, 3, v0->unk_17, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return 4;
}

void sub_0206DEEC(FieldSystem *fieldSystem, u16 param1, u16 param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DF14 *v1 = &segments.val22;

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    if (v1->unk_02 > 999) {
        v1->unk_02 = 999;
    }

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_RECORDS, 8, v1);
}

static int sub_0206DF14(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0;
    UnkStruct_0206DF14 *v1 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetUndergroundTrapName(param1, 1, v1->unk_00);

    v0 = v1->unk_02;

    if (v0 > 999) {
        v0 = 999;
    }

    StringTemplate_SetNumber(param1, 2, v0, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    return 7;
}

void sub_0206DF60(FieldSystem *fieldSystem, u16 param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DF88 *v1 = &segments.val23;

    v1->unk_00 = param1;

    if (v1->unk_00 > 999) {
        v1->unk_00 = 999;
    }

    if (param1 > 1) {
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_RECORDS, 9, v1);
    }
}

static int sub_0206DF88(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0;
    UnkStruct_0206DF88 *v1 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);

    v0 = v1->unk_00;

    if (v0 > 999) {
        v0 = 999;
    }

    StringTemplate_SetNumber(param1, 1, v0, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return 8;
}

static BOOL sub_0206DFC8(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_EXPLORER_KIT, 1, HEAP_ID_FIELD3);
}

void sub_0206DFE0(SaveData *saveData)
{
    TVEpisodeSegment segments;
    UnkStruct_0206E018 *v1 = &segments.val24;
    UnkStruct_0202E828 *v2 = sub_0202E828(SaveData_GetTVBroadcast(saveData));

    if (v2->unk_04 >= 30) {
        v1->unk_00 = *v2;
        v2->unk_00 = 0;

        SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
        SaveData_SaveTVEpisodeSegment(saveData, 3, 10, v1);
    }
}

static int sub_0206E018(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E018 *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_00.unk_04, 4, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return 9;
}

static BOOL sub_0206E04C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206E060(SaveData *saveData)
{
    TVEpisodeSegment segments;
    UnkStruct_0206E098 *v1 = &segments.val25;
    UnkStruct_0202E834 *v2 = sub_0202E834(SaveData_GetTVBroadcast(saveData));

    if (v2->unk_02 >= 10) {
        v1->unk_00 = *v2;
        v2->unk_00 = 0;

        SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
        SaveData_SaveTVEpisodeSegment(saveData, 3, 11, v1);
    }
}

static int sub_0206E098(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E098 *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_00.unk_02, 4, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return 10;
}

static BOOL sub_0206E0CC(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_CITY);
}

void FieldSystem_SaveTVEpisodeSegment_BattleTowerCorner(FieldSystem *fieldSystem, u16 customMessageWord)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_BattleTowerCorner *battleTowerCorner = &segments.battleTowerCorner;
    UnkStruct_0202E7FC *outcome = sub_0202E7FC(SaveData_GetTVBroadcast(fieldSystem->saveData));

    battleTowerCorner->outcome = *outcome;
    outcome->unk_00 = 0;
    battleTowerCorner->customMessageWord = customMessageWord;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_BATTLE_TOWER_CORNER, battleTowerCorner);
}

static int TVEpisodeSegment_LoadMessage_BattleTowerCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_BattleTowerCorner *battleTowerCorner = ov6_02246498(param2);

    StringTemplate_SetNumber(template, 0, battleTowerCorner->outcome.winStreak, 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    TVEpisodeSegment_SetTemplateTrainerName(template, 1, param2);
    StringTemplate_SetCustomMessageWord(template, 2, battleTowerCorner->customMessageWord);

    if (battleTowerCorner->outcome.win == TRUE) {
        return TVProgramInterviews_Text_BattleTowerCorner_Win;
    } else {
        return TVProgramInterviews_Text_BattleTowerCorner_Lose;
    }
}

static BOOL TVEpisodeSegment_IsEligible_BattleTowerCorner(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void FieldSystem_SaveTVEpisodeSegment_YourPokemonCorner(FieldSystem *fieldSystem, u16 customMessageWord)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_YourPokemonCorner *yourPokemonCorner = &segments.yourPokemonCorner;
    Pokemon *pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));

    TVEpisodeSegment_CopyPokemonValues(pokemon, &yourPokemonCorner->species, &yourPokemonCorner->gender, &yourPokemonCorner->language, &yourPokemonCorner->metGame);
    sub_0206CED0(HEAP_ID_FIELD3, pokemon, &yourPokemonCorner->hasNickname, yourPokemonCorner->nickname);

    yourPokemonCorner->customMessageWord = customMessageWord;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_YOUR_POKEMON_CORNER, yourPokemonCorner);
}

static int TVEpisodeSegment_LoadMessage_YourPokemonCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_YourPokemonCorner *yourPokemonCorner = ov6_02246498(param2);

    if (yourPokemonCorner->hasNickname) {
        TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, yourPokemonCorner->species, yourPokemonCorner->gender, yourPokemonCorner->language, yourPokemonCorner->metGame);
        sub_0206CD94(template, 2, yourPokemonCorner->nickname, yourPokemonCorner->gender, yourPokemonCorner->language, 1);
        StringTemplate_SetCustomMessageWord(template, 3, yourPokemonCorner->customMessageWord);
        return TVProgramInterviews_Text_YourPokemonCorner_Nickname;
    } else {
        TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, yourPokemonCorner->species, yourPokemonCorner->gender, yourPokemonCorner->language, yourPokemonCorner->metGame);

        StringTemplate_SetCustomMessageWord(template, 3, yourPokemonCorner->customMessageWord);
        return TVProgramInterviews_Text_YourPokemonCorner_NoNickname;
    }
}

static BOOL TVEpisodeSegment_IsEligible_YourPokemonCorner(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_YourPokemonCorner *yourPokemonCorner = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), yourPokemonCorner->species);
}

void FieldSystem_SaveTVEpisodeSegment_ThePoketchWatch(FieldSystem *fieldSystem, u16 customMessageWord)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_ThePoketchWatch *thePoketchWatch = &segments.thePoketchWatch;

    thePoketchWatch->appID = PoketchSystem_CurrentAppID(fieldSystem->unk_04->poketchSys);
    thePoketchWatch->customMessageWord = customMessageWord;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_THE_POKETCH_WATCH, thePoketchWatch);
}

static int TVEpisodeSegment_LoadMessage_ThePoketchWatch(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_ThePoketchWatch *thePoketchWatch = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetPoketchAppName(template, 1, thePoketchWatch->appID);
    StringTemplate_SetCustomMessageWord(template, 2, thePoketchWatch->customMessageWord);

    return TVProgramInterviews_Text_ThePoketchWatch;
}

void FieldSystem_SaveTVEpisodeSegment_ContestHall(FieldSystem *fieldSystem, u16 customMessageWord)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_ContestHall *contestHall = &segments.contestHall;
    UnkStruct_0202E7D8 *v2 = sub_0202E7D8(SaveData_GetTVBroadcast(fieldSystem->saveData));

    contestHall->unk_00 = *v2;
    v2->unk_00 = 0;
    contestHall->customMessageWord = customMessageWord;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_CONTEST_HALL, contestHall);
}

static int TVEpisodeSegment_LoadMessage_ContestHall(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_ContestHall *contestHall = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 0, contestHall->unk_00.unk_02, contestHall->unk_00.unk_04, contestHall->unk_00.unk_05, contestHall->unk_00.unk_06);
    StringTemplate_SetContestTypeName(template, 1, Contest_GetContestTypeMessageID(contestHall->unk_00.unk_08));
    StringTemplate_SetContestRankName(template, 2, Contest_GetRankMessageID(contestHall->unk_00.unk_07));
    StringTemplate_SetNumber(template, 3, contestHall->unk_00.unk_09, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    TVEpisodeSegment_SetTemplateTrainerName(template, 4, param2);
    StringTemplate_SetCustomMessageWord(template, 5, contestHall->customMessageWord);

    if (contestHall->unk_00.unk_09 == TRUE) {
        return TVProgramInterviews_Text_ContestHall_Win;
    } else {
        return TVProgramInterviews_Text_ContestHall_Lose;
    }
}

static BOOL TVEpisodeSegment_IsEligible_ContestHall(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_ContestHall *contestHall = ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), contestHall->unk_00.unk_02);
}

void FieldSystem_SaveTVEpisodeSegment_RightOnPhotoCorner(FieldSystem *fieldSystem, u16 customMessageWord)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_RightOnPhotoCorner *rightOnPhotoCorner = &segments.rightOnPhotoCorner;

    rightOnPhotoCorner->customMessageWord = customMessageWord;

    ImageClips *imageClips = SaveData_GetImageClips(fieldSystem->saveData);
    DressUpPhoto *photo = ImageClips_GetDressUpPhoto(imageClips, 0);

    rightOnPhotoCorner->species = DressUpPhoto_GetMonSpecies(photo);

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_RIGHT_ON_PHOTO_CORNER, rightOnPhotoCorner);
}

static int TVEpisodeSegment_LoadMessage_RightOnPhotoCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_RightOnPhotoCorner *rightOnPhotoCorner = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplateOwnPokemonSpecies(template, 1, rightOnPhotoCorner->species);
    StringTemplate_SetCustomMessageWord(template, 2, rightOnPhotoCorner->customMessageWord);

    return TVProgramInterviews_Text_RightOnPhotoCorner;
}

static BOOL TVEpisodeSegment_IsEligible_RightOnPhotoCorner(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_RightOnPhotoCorner *rightOnPhotoCorner = ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), rightOnPhotoCorner->species);
}

void FieldSystem_SaveTVEpisodeSegment_StreetCornerPersonalityCheckup(FieldSystem *fieldSystem, u16 pokemonType)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_StreetCornerPersonalityCheckup *streetCornerPersonalityCheckup = &segments.streetCornerPersonalityCheckup;

    streetCornerPersonalityCheckup->pokemonType = pokemonType;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_STREET_CORNER_PERSONALITY_CHECKUP, streetCornerPersonalityCheckup);
}

static int TVEpisodeSegment_LoadMessage_StreetCornerPersonalityCheckup(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_StreetCornerPersonalityCheckup *streetCornerPersonalityCheckup = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    return TVProgramInterviews_Text_StreetCornerPersonalityCheckup_NormalType + streetCornerPersonalityCheckup->pokemonType - 1;
}

void FieldSystem_SaveTVEpisodeSegment_ThreeCheersForPoffinCorner(FieldSystem *fieldSystem, u16 customMessageWord)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_ThreeCheersForPoffinCorner *threeCheersForPoffinCorner = &segments.threeCheersForPoffinCorner;
    UnkStruct_0202E7F0 *v2 = sub_0202E7F0(SaveData_GetTVBroadcast(fieldSystem->saveData));

    threeCheersForPoffinCorner->unk_00 = *v2;
    threeCheersForPoffinCorner->customMessageWord = customMessageWord;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER, threeCheersForPoffinCorner);
}

static int TVEpisodeSegment_LoadMessage_ThreeCheersForPoffinCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_ThreeCheersForPoffinCorner *threeCheersForPoffinCorner = ov6_02246498(param2);
    int poffin = threeCheersForPoffinCorner->unk_00.unk_01;

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetPoffinName(template, 1, poffin);
    StringTemplate_SetCustomMessageWord(template, 2, threeCheersForPoffinCorner->customMessageWord);

    switch (poffin) {
    case POFFIN_TYPE_RICH:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_RichPoffin;
    case POFFIN_TYPE_OVERRIPE:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_OverripePoffin;
    case POFFIN_TYPE_FOUL:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_FoulPoffin;
    case POFFIN_TYPE_MILD:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_MildPoffin;
    default:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_RegularPoffin;
    }
}

void FieldSystem_SaveTVEpisodeSegment_AmitySquareWatch(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_AmitySquareWatch *amitySquareWatch = &segments.amitySquareWatch;
    UnkStruct_0202E7E4 *v2 = sub_0202E7E4(SaveData_GetTVBroadcast(fieldSystem->saveData));

    amitySquareWatch->unk_00 = *v2;
    amitySquareWatch->customWordMessage = customWordMessage;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_AMITY_SQUARE_WATCH, amitySquareWatch);
}

static int TVEpisodeSegment_LoadMessage_AmitySquareWatch(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_AmitySquareWatch *amitySquareWatch = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, amitySquareWatch->unk_00.unk_02, amitySquareWatch->unk_00.unk_04, amitySquareWatch->unk_00.unk_05, amitySquareWatch->unk_00.unk_06);
    StringTemplate_SetNatureName(template, 2, amitySquareWatch->unk_00.unk_1E);
    StringTemplate_SetCustomMessageWord(template, 5, amitySquareWatch->customWordMessage);

    switch (amitySquareWatch->unk_00.unk_1F) {
    case 0:
        return TVProgramInterviews_Text_AmitySquareWatch;
    case 2:
        StringTemplate_SetContestAccessoryName(template, 3, amitySquareWatch->unk_00.unk_20);
        return TVProgramInterviews_Text_AmitySquareWatch_FoundAccessory;
    case 1:
        StringTemplate_SetItemName(template, 3, amitySquareWatch->unk_00.unk_22);
        return TVProgramInterviews_Text_AmitySquareWatch_FoundItem;
    }

    return TVProgramInterviews_Text_AmitySquareWatch;
}

void FieldSystem_SaveTVEpisodeSegment_BattleFrontierFrontlineNews_Single(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_BattleFrontierFrontlineNews_Single *battleFrontierFrontlineNewsSingle = &segments.battleFrontierFrontlineNewsSingle;
    UnkStruct_0202E810 *v2 = sub_0202E810(SaveData_GetTVBroadcast(fieldSystem->saveData));

    battleFrontierFrontlineNewsSingle->unk_00 = *v2;
    battleFrontierFrontlineNewsSingle->customWordMessage = customWordMessage;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE, battleFrontierFrontlineNewsSingle);
}

static int TVEpisodeSegment_LoadMessage_BattleFrontierFrontlineNews_Single(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_BattleFrontierFrontlineNews_Single *battleFrontierFrontlineNewsSingle = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, battleFrontierFrontlineNewsSingle->unk_00.unk_02, battleFrontierFrontlineNewsSingle->unk_00.unk_04, battleFrontierFrontlineNewsSingle->unk_00.unk_05, battleFrontierFrontlineNewsSingle->unk_00.unk_06);

    if (battleFrontierFrontlineNewsSingle->unk_00.unk_07) {
        sub_0206CD94(template, 2, battleFrontierFrontlineNewsSingle->unk_00.unk_08, battleFrontierFrontlineNewsSingle->unk_00.unk_04, battleFrontierFrontlineNewsSingle->unk_00.unk_05, 1);
    } else {
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 2, battleFrontierFrontlineNewsSingle->unk_00.unk_02, battleFrontierFrontlineNewsSingle->unk_00.unk_04, battleFrontierFrontlineNewsSingle->unk_00.unk_05, battleFrontierFrontlineNewsSingle->unk_00.unk_06);
    }

    StringTemplate_SetCustomMessageWord(template, 3, battleFrontierFrontlineNewsSingle->customWordMessage);
    return TVProgramInterviews_Text_BattleFrontierFrontlineNews_Single;
}

static BOOL TVEpisodeSegment_IsEligible_BattleFrontierFrontlineNews_Single(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question1(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_InYourFaceInterview_Question1 *inYourFaceInterviewQuestion1 = &segments.inYourFaceInterviewQuestion1;

    inYourFaceInterviewQuestion1->customWordMessage = customWordMessage;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_1, inYourFaceInterviewQuestion1);
}

static int TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question1(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_InYourFaceInterview_Question1 *inYourFaceInterviewQuestion1 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetCustomMessageWord(template, 1, inYourFaceInterviewQuestion1->customWordMessage);

    return TVProgramInterviews_Text_InYourFaceInterview_Question1;
}

void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question2(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_InYourFaceInterview_Question2 *inYourFaceInterviewQuestion2 = &segments.inYourFaceInterviewQuestion2;

    inYourFaceInterviewQuestion2->customWordMessage = customWordMessage;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_2, inYourFaceInterviewQuestion2);
}

static int TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question2(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_InYourFaceInterview_Question2 *inYourFaceInterviewQuestion2 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetCustomMessageWord(template, 1, inYourFaceInterviewQuestion2->customWordMessage);

    return TVProgramInterviews_Text_InYourFaceInterview_Question2;
}

void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question3(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_InYourFaceInterview_Question3 *inYourFaceInterviewQuestion3 = &segments.inYourFaceInterviewQuestion3;

    inYourFaceInterviewQuestion3->customWordMessage = customWordMessage;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_3, inYourFaceInterviewQuestion3);
}

static int TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question3(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_InYourFaceInterview_Question3 *inYourFaceInterviewQuestion3 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetCustomMessageWord(template, 1, inYourFaceInterviewQuestion3->customWordMessage);

    return TVProgramInterviews_Text_InYourFaceInterview_Question3;
}

void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question4(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_InYourFaceInterview_Question4 *inYourFaceInterviewQuestion4 = &segments.inYourFaceInterviewQuestion4;

    inYourFaceInterviewQuestion4->customWordMessage = customWordMessage;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_4, inYourFaceInterviewQuestion4);
}

static int TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question4(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_InYourFaceInterview_Question4 *inYourFaceInterviewQuestion4 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    StringTemplate_SetCustomMessageWord(template, 1, inYourFaceInterviewQuestion4->customWordMessage);

    return TVProgramInterviews_Text_InYourFaceInterview_Question4;
}

void FieldSystem_SaveTVEpisodeSegment_BattleFrontierFrontlineNews_Multi(FieldSystem *fieldSystem, u16 customWordMessage)
{
    TVEpisodeSegment segments;
    TVEpisodeSegment_BattleFrontierFrontlineNews_Multi *battleFrontierFrontlineNewsMulti = &segments.battleFrontierFrontlineNewsMulti;
    UnkStruct_0202E81C *v2 = sub_0202E81C(SaveData_GetTVBroadcast(fieldSystem->saveData));

    battleFrontierFrontlineNewsMulti->unk_00 = *v2;
    battleFrontierFrontlineNewsMulti->customWordMessage = customWordMessage;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, battleFrontierFrontlineNewsMulti);
}

static int TVEpisodeSegment_LoadMessage_BattleFrontierFrontlineNews_Multi(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    int messageID;
    TVEpisodeSegment_BattleFrontierFrontlineNews_Multi *battleFrontierFrontlineNewsMulti = ov6_02246498(param2);
    String *v2 = String_Init(64, HEAP_ID_FIELD1);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    String_CopyChars(v2, battleFrontierFrontlineNewsMulti->unk_00.unk_06);
    StringTemplate_SetString(template, 1, v2, battleFrontierFrontlineNewsMulti->unk_00.unk_02, 0, battleFrontierFrontlineNewsMulti->unk_00.unk_03);
    String_Free(v2);
    StringTemplate_SetCustomMessageWord(template, 2, battleFrontierFrontlineNewsMulti->customWordMessage);

    switch (battleFrontierFrontlineNewsMulti->unk_00.unk_01) {
    case 1:
        messageID = TVProgramInterviews_Text_BattleFrontierFrontlineNews_Multi_BattleTower;
        break;
    case 4:
        messageID = TVProgramInterviews_Text_BattleFrontierFrontlineNews_Multi_BattleCastle;
        break;
    case 5:
        messageID = TVProgramInterviews_Text_BattleFrontierFrontlineNews_Multi_BattleHall;
        break;
    case 2:
    case 3:
        messageID = TVProgramInterviews_Text_BattleFrontierFrontlineNews_Multi_BattleFactory;
        break;
    case 6:
        messageID = TVProgramInterviews_Text_BattleFrontierFrontlineNews_Multi_BattleArcade;
        break;
    }

    return messageID;
}

static BOOL TVEpisodeSegment_IsEligible_BattleFrontierFrontlineNews_Multi(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

static const u8 sGroupRNGEntries[] = {
    RECORD_MIXED_RNG_PLAYER_OVERRIDE,
    RECORD_MIXED_RNG_QUEUE_0,
    RECORD_MIXED_RNG_QUEUE_1,
    RECORD_MIXED_RNG_QUEUE_2,
    RECORD_MIXED_RNG_QUEUE_3,
};

static int RecordMixedRNG_CountValidEntries(RecordMixedRNG *rngCollection)
{
    int i, count;

    for (i = 0, count = 0; i < NELEMS(sGroupRNGEntries); i++) {
        if (RecordMixedRNG_IsEntryValid(rngCollection, sGroupRNGEntries[i])) {
            count++;
        }
    }

    return count;
}

static int TVEpisodeSegment_LoadMessage_DiscoveringGroups(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    int i, validEntries, entry;
    enum PokemonType type;
    RecordMixedRNG *rngCollection = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    validEntries = RecordMixedRNG_CountValidEntries(rngCollection);
    GF_ASSERT(validEntries > 0);

    if (validEntries > 1) {
        validEntries = MTRNG_Next() % validEntries;
    } else {
        validEntries = 0;
    }

    for (i = 0; i < NELEMS(sGroupRNGEntries); i++) {
        if (RecordMixedRNG_IsEntryValid(rngCollection, sGroupRNGEntries[i])) {
            if (validEntries == 0) {
                entry = sGroupRNGEntries[i];
                break;
            } else {
                validEntries--;
            }
        }
    }

    GF_ASSERT(validEntries == 0);

    type = LCRNG_RandMod(NUM_POKEMON_TYPES - 1);

    if (type >= TYPE_MYSTERY) {
        type++;
    }

    StringTemplate_SetUnionGroupName(template, fieldSystem->saveData, entry, 0, 1);
    StringTemplate_SetUnionGroupName(template, fieldSystem->saveData, entry, 1, 0);
    StringTemplate_SetPokemonTypeName(template, 2, type);

    return pl_msg_00000418_00000;
}

static BOOL TVEpisodeSegment_IsEligible_DiscoveringGroups(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    RecordMixedRNG *rngCollection = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    if (RecordMixedRNG_CountValidEntries(rngCollection) != 0) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static u16 sOnTheSpotWeatherLocations[] = {
    MAP_HEADER_ROUTE_212_SOUTH,
    MAP_HEADER_ROUTE_213,
    MAP_HEADER_ROUTE_216,
    MAP_HEADER_ACUITY_LAKEFRONT,
    MAP_HEADER_SNOWPOINT_CITY
};

static int TVEpisodeSegment_LoadMessage_OnTheSpotWeather(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    int mapHeaderID = sOnTheSpotWeatherLocations[LCRNG_RandMod(NELEMS(sOnTheSpotWeatherLocations))];
    int weather = FieldSystem_GetWeather(fieldSystem, mapHeaderID);
    StringTemplate_SetLocationName(template, 0, MapHeader_GetMapLabelTextID(mapHeaderID));

    switch (weather) {
    case OVERWORLD_WEATHER_CLEAR:
        switch (LCRNG_RandMod(4)) {
        case 0:
            return pl_msg_00000418_00001;
        case 1:
            return pl_msg_00000418_00002;
        case 2:
            return pl_msg_00000418_00003;
        case 3:
            return pl_msg_00000418_00004;
        }
    case OVERWORLD_WEATHER_CLOUDY:
        return pl_msg_00000418_00005;
    case OVERWORLD_WEATHER_RAINING:
        return pl_msg_00000418_00006;
    case OVERWORLD_WEATHER_HEAVY_RAIN:
        return pl_msg_00000418_00007;
    case OVERWORLD_WEATHER_SNOWING:
        return pl_msg_00000418_00008;
    case OVERWORLD_WEATHER_HEAVY_SNOW:
        return pl_msg_00000418_00009;
    case OVERWORLD_WEATHER_BLIZZARD:
        return pl_msg_00000418_00010;
    case OVERWORLD_WEATHER_THUNDERSTORM:
        return pl_msg_00000418_00011;
    case OVERWORLD_WEATHER_HAILING:
        return pl_msg_00000418_00012;
    default:
        GF_ASSERT(FALSE);
    }

    return pl_msg_00000418_00001;
}

static BOOL FieldSystem_AlwaysTrue(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return TRUE;
}

// Skips Marts, Gyms and Pokémon Centers
static int TVEpisodeSegment_LoadMessage_YourTownsBestThree(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
    int mapID = fieldSystem->location->mapId;

    if (mapID == MAP_HEADER_TWINLEAF_TOWN || (mapID >= MAP_HEADER_TWINLEAF_TOWN_RIVAL_HOUSE_1F && mapID <= MAP_HEADER_TWINLEAF_TOWN_SOUTHWEST_HOUSE)) {
        StringTemplate_SetPlayerName(template, 0, trainerInfo);
        StringTemplate_SetRivalName(template, 1, fieldSystem->saveData);
        return pl_msg_00000418_00013;
    }

    if (mapID == MAP_HEADER_SANDGEM_TOWN || (mapID >= MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB && mapID <= MAP_HEADER_SANDGEM_TOWN_HOUSE)) {
        StringTemplate_SetCounterpartName(template, 1, fieldSystem->saveData);
        return pl_msg_00000418_00014;
    }

    if (mapID == MAP_HEADER_FLOAROMA_TOWN || (mapID >= MAP_HEADER_FLOWER_SHOP && mapID <= MAP_HEADER_FLOAROMA_TOWN_MIDDLE_HOUSE) || mapID == MAP_HEADER_FLOAROMA_MEADOW_HOUSE) {
        return pl_msg_00000418_00015;
    }

    if (mapID == MAP_HEADER_SOLACEON_TOWN || (mapID >= MAP_HEADER_POKEMON_DAY_CARE && mapID <= MAP_HEADER_SOLACEON_TOWN_EAST_HOUSE)) {
        return pl_msg_00000418_00016;
    }

    if (mapID == MAP_HEADER_CELESTIC_TOWN || (mapID >= MAP_HEADER_CELESTIC_TOWN_NORTH_HOUSE && mapID <= MAP_HEADER_CELESTIC_TOWN_CAVE)) {
        return pl_msg_00000418_00017;
    }

    if (mapID == MAP_HEADER_JUBILIFE_CITY || (mapID >= MAP_HEADER_POKETCH_CO_1F && mapID <= MAP_HEADER_JUBILIFE_CITY_UNKNOWN_HOUSE_4)) {
        return pl_msg_00000418_00018;
    }

    if (mapID == MAP_HEADER_CANALAVE_CITY || (mapID >= MAP_HEADER_CANALAVE_LIBRARY_1F && mapID <= MAP_HEADER_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE) || mapID == MAP_HEADER_CANALAVE_CITY_WEST_HOUSE) {
        return pl_msg_00000418_00019;
    }

    if (mapID == MAP_HEADER_OREBURGH_CITY || (mapID >= MAP_HEADER_OREBURGH_CITY_NORTHWEST_HOUSE_1F && mapID <= MAP_HEADER_OREBURGH_CITY_SOUTH_HOUSE)) {
        return pl_msg_00000418_00020;
    }

    if (mapID == MAP_HEADER_ETERNA_CITY || (mapID >= MAP_HEADER_CYCLE_SHOP && mapID <= MAP_HEADER_ETERNA_CITY_UNKNOWN_HOUSE)) {
        return pl_msg_00000418_00021;
    }

    if (mapID == MAP_HEADER_HEARTHOME_CITY || (mapID >= MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_1F && mapID <= MAP_HEADER_FOREIGN_BUILDING)) {
        return pl_msg_00000418_00022;
    }

    if (mapID == MAP_HEADER_PASTORIA_CITY || (mapID >= MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F && mapID <= MAP_HEADER_PASTORIA_CITY_NORTHEAST_HOUSE)) {
        return pl_msg_00000418_00023;
    }

    if (mapID == MAP_HEADER_VEILSTONE_CITY || (mapID >= MAP_HEADER_GAME_CORNER && mapID <= MAP_HEADER_ROUTE_215_GATE_TO_VEILSTONE_CITY) || (mapID >= MAP_HEADER_GALACTIC_HQ_1F && mapID <= MAP_HEADER_GALACTIC_HQ_B2F)) {
        return pl_msg_00000418_00024;
    }

    if (mapID == MAP_HEADER_SUNYSHORE_CITY || (mapID >= MAP_HEADER_SUNYSHORE_MARKET && mapID <= MAP_HEADER_VISTA_LIGHTHOUSE) || mapID == MAP_HEADER_VISTA_LIGHTHOUSE_ELEVATOR) {
        return pl_msg_00000418_00025;
    }

    if (mapID == MAP_HEADER_SNOWPOINT_CITY || (mapID >= MAP_HEADER_SNOWPOINT_CITY_WEST_HOUSE && mapID <= MAP_HEADER_SNOWPOINT_CITY_EAST_HOUSE)) {
        return pl_msg_00000418_00026;
    }

    StringTemplate_SetPlayerName(template, 0, trainerInfo);
    StringTemplate_SetRivalName(template, 1, fieldSystem->saveData);

    return pl_msg_00000418_00027;
}

static int TVEpisodeSegment_LoadMessage_SwarmNewsFlash(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    u16 mapID, species;
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    Swarm_GetMapIdAndSpecies(SpecialEncounter_GetDailyMon(speEnc, DAILY_SWARM), &mapID, &species);
    StringTemplate_SetLocationName(template, 0, MapHeader_GetMapLabelTextID(mapID));
    TVEpisodeSegment_SetTemplateOwnPokemonSpecies(template, 1, species);

    return pl_msg_00000418_00029;
}

static BOOL TVEpisodeSegment_IsEligible_SwarmNewsFlash(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *unused)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);
    return SpecialEncounter_IsSwarmEnabled(speEnc);
}

// Leftover from DP
static BOOL MatchupChannelDummy(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return FALSE;
}

enum BerryLookoutArrival {
    BERRY_LOOKOUT_ARRIVAL_TWINLEAF_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SANDGEM_TOWN,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA,
    BERRY_LOOKOUT_ARRIVAL_RESORT_AREA,
    BERRY_LOOKOUT_ARRIVAL_JUBILIFE_CITY,
    BERRY_LOOKOUT_ARRIVAL_CANALAVE_CITY,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY,
    BERRY_LOOKOUT_ARRIVAL_ETERNA_CITY,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY,
    BERRY_LOOKOUT_ARRIVAL_SUNYSHORE_CITY,
    BERRY_LOOKOUT_ARRIVAL_SNOWPOINT_CITY,
    BERRY_LOOKOUT_ARRIVAL_OUTSIDE_VICTORY_ROAD,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA,
    BERRY_LOOKOUT_ARRIVAL_COUNT
};

static const u16 sBerryLookoutArrivalFlags[BERRY_LOOKOUT_ARRIVAL_COUNT] = {
    [BERRY_LOOKOUT_ARRIVAL_TWINLEAF_TOWN] = FIRST_ARRIVAL_TWINLEAF_TOWN,
    [BERRY_LOOKOUT_ARRIVAL_SANDGEM_TOWN] = FIRST_ARRIVAL_SANDGEM_TOWN,
    [BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN] = FIRST_ARRIVAL_FLOAROMA_TOWN,
    [BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN] = FIRST_ARRIVAL_SOLACEON_TOWN,
    [BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN] = FIRST_ARRIVAL_CELESTIC_TOWN,
    [BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA] = FIRST_ARRIVAL_SURVIVAL_AREA,
    [BERRY_LOOKOUT_ARRIVAL_RESORT_AREA] = FIRST_ARRIVAL_RESORT_AREA,
    [BERRY_LOOKOUT_ARRIVAL_JUBILIFE_CITY] = FIRST_ARRIVAL_JUBILIFE_CITY,
    [BERRY_LOOKOUT_ARRIVAL_CANALAVE_CITY] = FIRST_ARRIVAL_CANALAVE_CITY,
    [BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY] = FIRST_ARRIVAL_OREBURGH_CITY,
    [BERRY_LOOKOUT_ARRIVAL_ETERNA_CITY] = FIRST_ARRIVAL_ETERNA_CITY,
    [BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY] = FIRST_ARRIVAL_HEARTHOME_CITY,
    [BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY] = FIRST_ARRIVAL_PASTORIA_CITY,
    [BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY] = FIRST_ARRIVAL_VEILSTONE_CITY,
    [BERRY_LOOKOUT_ARRIVAL_SUNYSHORE_CITY] = FIRST_ARRIVAL_SUNYSHORE_CITY,
    [BERRY_LOOKOUT_ARRIVAL_SNOWPOINT_CITY] = FIRST_ARRIVAL_SNOWPOINT_CITY,
    [BERRY_LOOKOUT_ARRIVAL_OUTSIDE_VICTORY_ROAD] = FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD,
    [BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA] = FIRST_ARRIVAL_FIGHT_AREA,
};

// clang-format off
static const u16 sBerryLookoutPatchInfo[] = {
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_FLOAROMA_TOWN,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_FLOAROMA_TOWN,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ETERNA_FOREST_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ETERNA_FOREST_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ETERNA_FOREST_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ETERNA_FOREST_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_NORTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_NORTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_NORTH,
    BERRY_LOOKOUT_ARRIVAL_FLOAROMA_TOWN, MAP_HEADER_ROUTE_205_NORTH,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_206,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_206,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_206,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_206,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_207,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_207,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_207,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_207,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_208,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_208,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_208,
    BERRY_LOOKOUT_ARRIVAL_OREBURGH_CITY, MAP_HEADER_ROUTE_208,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_209,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_209,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_209,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_209,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_SOLACEON_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_SOLACEON_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_SOLACEON_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_SOLACEON_TOWN,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_ROUTE_210_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_ROUTE_210_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_ROUTE_210_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_SOLACEON_TOWN, MAP_HEADER_ROUTE_210_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_210_NORTH,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_210_NORTH,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_210_NORTH,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_210_NORTH,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_211_EAST,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_211_EAST,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_211_EAST,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_211_EAST,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_212_NORTH,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_212_NORTH,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_212_NORTH,
    BERRY_LOOKOUT_ARRIVAL_HEARTHOME_CITY, MAP_HEADER_ROUTE_212_NORTH,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_212_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_212_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_212_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_212_SOUTH,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_PASTORIA_CITY,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_PASTORIA_CITY,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_PASTORIA_CITY,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_PASTORIA_CITY,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_213,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_213,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_213,
    BERRY_LOOKOUT_ARRIVAL_PASTORIA_CITY, MAP_HEADER_ROUTE_213,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_214,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_214,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_214,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_214,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_215,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_215,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_215,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_215,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_218,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_218,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_218,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_218,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_221,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_221,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_221,
    BERRY_LOOKOUT_ARRIVAL_CELESTIC_TOWN, MAP_HEADER_ROUTE_221,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_222,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_222,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_222,
    BERRY_LOOKOUT_ARRIVAL_VEILSTONE_CITY, MAP_HEADER_ROUTE_222,
    BERRY_LOOKOUT_ARRIVAL_OUTSIDE_VICTORY_ROAD, MAP_HEADER_ROUTE_224,
    BERRY_LOOKOUT_ARRIVAL_OUTSIDE_VICTORY_ROAD, MAP_HEADER_ROUTE_224,
    BERRY_LOOKOUT_ARRIVAL_OUTSIDE_VICTORY_ROAD, MAP_HEADER_ROUTE_224,
    BERRY_LOOKOUT_ARRIVAL_OUTSIDE_VICTORY_ROAD, MAP_HEADER_ROUTE_224,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_FIGHT_AREA,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_FIGHT_AREA,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_FIGHT_AREA,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_FIGHT_AREA,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_ROUTE_225,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_ROUTE_225,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_ROUTE_225,
    BERRY_LOOKOUT_ARRIVAL_FIGHT_AREA, MAP_HEADER_ROUTE_225,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_226,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_226,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_226,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_226,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_228,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_228,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_228,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_228,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_229,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_229,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_229,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_229,
    BERRY_LOOKOUT_ARRIVAL_RESORT_AREA, MAP_HEADER_RESORT_AREA,
    BERRY_LOOKOUT_ARRIVAL_RESORT_AREA, MAP_HEADER_RESORT_AREA,
    BERRY_LOOKOUT_ARRIVAL_RESORT_AREA, MAP_HEADER_RESORT_AREA,
    BERRY_LOOKOUT_ARRIVAL_RESORT_AREA, MAP_HEADER_RESORT_AREA,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_230,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_230,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_230,
    BERRY_LOOKOUT_ARRIVAL_SURVIVAL_AREA, MAP_HEADER_ROUTE_230,
};
// clang-format on

static int BerryLookout_GetVisitedPatch(FieldSystem *fieldSystem)
{
    u8 arrivals[NELEMS(sBerryLookoutArrivalFlags)];
    u8 patches[NELEMS(sBerryLookoutPatchInfo) / 2];
    int i, count;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    for (i = 0; i < NELEMS(sBerryLookoutArrivalFlags); i++) {
        arrivals[i] = SystemFlag_HandleFirstArrivalToZone(varsFlags, HANDLE_FLAG_CHECK, sBerryLookoutArrivalFlags[i]);
    }

    for (i = 0, count = 0; i < NELEMS(sBerryLookoutPatchInfo) / 2; i++) {
        if (arrivals[sBerryLookoutPatchInfo[i * 2]]) {
            patches[count] = i;
            count++;
        }
    }

    return patches[LCRNG_RandMod(count)];
}

static int TVEpisodeSegment_LoadMessage_BerryLookout(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = BerryLookout_GetVisitedPatch(fieldSystem);
    enum MapHeader headerID = sBerryLookoutPatchInfo[patchID * 2 + 1];
    StringTemplate_SetLocationName(template, 0, MapHeader_GetMapLabelTextID(headerID));

    switch (BerryPatches_GetPatchGrowthStage(berryPatches, patchID)) {
    case BERRY_GROWTH_STAGE_FRUIT:
        return pl_msg_00000418_00036;
    case BERRY_GROWTH_STAGE_BLOOMING:
        return pl_msg_00000418_00037;
    case BERRY_GROWTH_STAGE_GROWING:
        return pl_msg_00000418_00038;
    case BERRY_GROWTH_STAGE_SPROUTED:
        return pl_msg_00000418_00039;
    case BERRY_GROWTH_STAGE_NONE:
    case BERRY_GROWTH_STAGE_PLANTED:
    default:
        return pl_msg_00000418_00040;
    }
}

static BOOL TVEpisodeSegment_IsEligible_BerryLookout(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    return SystemFlag_HandleFirstArrivalToZone(varsFlags, HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_CITY);
}

// Leftover from DP
static BOOL PokemonResearchCornerDummy(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return FALSE;
}

static int TVEpisodeSegment_LoadMessage_RichBoyNatureCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    u32 personality, i;
    u8 nature;
    int flavor = 0xff, stat = 0xff;
    personality = (LCRNG_Next() % 0xffff);
    nature = Pokemon_GetNatureOf(personality);

    StringTemplate_SetNatureName(template, 0, nature);

    if (nature == NATURE_HARDY
        || nature == NATURE_DOCILE
        || nature == NATURE_SERIOUS
        || nature == NATURE_BASHFUL
        || nature == NATURE_QUIRKY) {
        return pl_msg_00000418_00046;
    }

    if ((personality % 2) == 0) {
        for (i = 0; i < FLAVOR_MAX; i++) {
            if (Pokemon_GetFlavorAffinityOf(personality, i) == 1) {
                flavor = i;
                break;
            }
        }

        StringTemplate_SetFlavorName(template, 2, flavor);
        return pl_msg_00000418_00045;
    }

    for (i = 0; i < STAT_MAX - 1; i++) {
        if (Pokemon_GetStatAffinityOf(nature, 1 + i) > 0) {
            stat = i;
            break;
        }
    }

    StringTemplate_SetPokemonStatName(template, 1, 1 + stat);
    return pl_msg_00000418_00044;
}

static int TVEpisodeSegment_LoadMessage_RoamerNewsFlash(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    Roamer *roamer;
    SpecialEncounter *speEnc;
    u16 roamingRouteIndex, i;
    u32 species, personality;
    String *string = String_Init(22, HEAP_ID_FIELD1);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));

    speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);
    roamingRouteIndex = (LCRNG_Next() % RI_MAX);

    MapHeader_LoadName(RoamingPokemon_GetRouteFromId(roamingRouteIndex), HEAP_ID_FIELD1, string);
    StringTemplate_SetString(template, 0, string, 0, 1, GAME_LANGUAGE);
    String_Free(string);

    for (i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (SpecialEncounter_IsRoamerActive(speEnc, i)) {
            roamer = SpecialEncounter_GetRoamer(speEnc, i);

            species = Roamer_GetData(roamer, ROAMER_DATA_SPECIES);
            personality = Roamer_GetData(roamer, ROAMER_DATA_PERSONALITY);

            TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, species, Pokemon_GetGenderOf(species, personality), TrainerInfo_RegionCode(trainerInfo), TrainerInfo_GameCode(trainerInfo));
            break;
        }
    }

    return pl_msg_00000418_00049;
}

static BOOL TVEpisodeSegment_IsEligible_RoamerNewsFlash(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    int i;
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    for (i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (SpecialEncounter_IsRoamerActive(speEnc, i)) {
            return TRUE;
        }
    }

    return FALSE;
}

static int ImageClips_CountDressUpPhotosWithData(ImageClips *imageClips)
{
    int i, count;

    for (i = 0, count = 0; i < SAVED_PHOTOS_COUNT; i++) {
        if (ImageClips_DressUpPhotoHasData(imageClips, i) == TRUE) {
            count++;
        }
    }

    return count;
}

static int sub_0206EEBC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    DressUpPhoto *photo;
    int i, count, v3, v4;
    ImageClips *imageClips = SaveData_GetImageClips(fieldSystem->saveData);

    count = ImageClips_CountDressUpPhotosWithData(imageClips);

    if (count > 1) {
        v3 = MTRNG_Next() % count;
    } else {
        v3 = 0;
    }

    for (i = 0; i < SAVED_PHOTOS_COUNT; i++) {
        if (ImageClips_DressUpPhotoHasData(imageClips, i) == TRUE) {
            if (v3 == 0) {
                v4 = i;
                break;
            } else {
                v3--;
            }
        }
    }

    GF_ASSERT(i < SAVED_PHOTOS_COUNT);
    photo = ImageClips_GetDressUpPhoto(imageClips, v4);

    u16 word;
    String *v7 = String_Init(7 + 1, HEAP_ID_FIELD1);
    int gender = DressUpPhoto_GetTrainerGender(photo);

    DressUpPhoto_SetTrainerName(photo, v7);
    StringTemplate_SetString(param1, 0, v7, gender, 1, DressUpPhoto_GetLanguage(photo));
    String_Free(v7);

    word = DressUpPhoto_GetTitleWord(photo);
    StringTemplate_SetCustomMessageWord(param1, 1, word);

    return 52;
}

static BOOL sub_0206EF64(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    ImageClips *imageClips = SaveData_GetImageClips(fieldSystem->saveData);

    if (ImageClips_CountDressUpPhotosWithData(imageClips) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206EF7C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = 0;

    if (SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(fieldSystem->saveData)) == 1) {
        v0 = (LCRNG_Next() % 8);
    } else if (SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_HEARTHOME_CITY) == TRUE) {
        v0 = (LCRNG_Next() % 5);
    } else if (SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_ETERNA_CITY) == TRUE) {
        v0 = (LCRNG_Next() % 4);
    } else if (SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_MINE) == TRUE) {
        v0 = (LCRNG_Next() % 2);
    }

    return 0 + v0;
}

static int sub_0206F01C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    String *v0;
    u16 v1, v2, v3;
    const Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    v1 = (LCRNG_Next() % (NATIONAL_DEX_COUNT - 1)) + 1;

    for (v2 = 1; v2 <= NATIONAL_DEX_COUNT; v2++) {
        if (Pokedex_HasSeenSpecies(pokedex, v1) == TRUE) {
            v3 = v1;
            break;
        }

        v1++;

        if (v1 == NATIONAL_DEX_COUNT) {
            v1 = 1;
        }
    }

    v0 = sub_0206F0D8(v3, HEAP_ID_FIELD1);

    StringTemplate_SetString(param1, 0, v0, 0, 1, GAME_LANGUAGE);
    String_Free(v0);

    v1 = (LCRNG_Next() % 3);

    if (v1 == 0) {
        return 8;
    } else if (v1 == 1) {
        v1 = (LCRNG_Next() % 34) + 25;
        StringTemplate_SetNumber(param1, 1, v1, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
        return 9;
    } else {
        return 10;
    }
}

static String *sub_0206F0D8(u16 param0, enum HeapID heapID)
{
    MessageLoader *v0 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);
    String *v1 = MessageLoader_GetNewString(v0, param0);

    MessageLoader_Free(v0);
    return v1;
}

static BOOL sub_0206F100(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    const Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    if (Pokedex_IsObtained(pokedex) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static int sub_0206F118(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = (LCRNG_Next() % 3);

    if (v0 == 0) {
        return 11;
    } else if (v0 == 1) {
        return 12;
    } else {
        return 13;
    }
}

static int sub_0206F13C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = (LCRNG_Next() % 3);

    if (v0 == 0) {
        return 14;
    } else if (v0 == 1) {
        return 15;
    } else {
        return 16;
    }
}

static int sub_0206F160(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    String *v0;
    u16 v1, v2;
    Pokemon *pokemon;
    Party *party;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    party = SaveData_GetParty(fieldSystem->saveData);
    pokemon = Party_GetPokemonBySlotIndex(party, SaveData_GetFirstNonEggInParty(fieldSystem->saveData));

    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 0, Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL), Pokemon_GetValue(pokemon, MON_DATA_GENDER, NULL), TrainerInfo_RegionCode(trainerInfo), TrainerInfo_GameCode(trainerInfo));
    StringTemplate_SetContestAccessoryName(param1, 1, LCRNG_Next() % 100);

    v1 = (LCRNG_Next() % (NATIONAL_DEX_COUNT - 2) + 1);

    for (v2 = 1; v2 <= NATIONAL_DEX_COUNT; v2++) {
        if (Pokedex_HasSeenSpecies(pokedex, v1) == TRUE) {
            v0 = sub_0206F0D8(v1, HEAP_ID_FIELD1);
            StringTemplate_SetString(param1, 2, v0, 0, 1, GAME_LANGUAGE);
            String_Free(v0);
            break;
        }

        v1++;

        if (v1 >= NATIONAL_DEX_COUNT) {
            v1 = 1;
        }
    }

    StringTemplate_SetMoveName(param1, 3, (LCRNG_Next() % 467 - 2) + 1);

    return 17;
}

static BOOL sub_0206F260(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    const Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    if (Pokedex_IsObtained(pokedex) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static int sub_0206F278(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    return 18;
}

static int sub_0206F27C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    return 19;
}

static BOOL sub_0206F280(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(fieldSystem->saveData), 0) == 1) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206F29C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = (LCRNG_Next() % 9);

    if (v0 == 0) {
        return 20;
    } else if (v0 == 1) {
        return 21;
    } else if (v0 == 2) {
        return 22;
    } else if (v0 == 3) {
        return 23;
    } else if (v0 == 4) {
        return 24;
    } else if (v0 == 5) {
        return 25;
    } else if (v0 == 6) {
        return 26;
    } else if (v0 == 7) {
        return 27;
    } else {
        return 28;
    }
}

static const TVProgramSegment sTrainerSightingsSegments[TV_PROGRAM_TYPE_TRAINER_SIGHTINGS_NUM_SEGMENTS] = {
    {
        TVEpisodeSegment_LoadMessage_CatchThatPokemonShow_Success,
        TVEpisodeSegment_IsEligible_CatchThatPokemonShow_Success,
    },
    {
        TVEpisodeSegment_LoadMessage_CatchThatPokemonShow_Failure,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_WhatsFishing,
        TVEpisodeSegment_IsEligible_WhatsFishing,
    },
    {
        TVEpisodeSegment_LoadMessage_LoveThatGroupCorner_SwitchGroup,
        NULL,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_HiddenItemBreakingNews,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_SinnohShoppingChampCorner,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_HappyHappyEggClub,
        TVEpisodeSegment_IsEligible_HappyHappyEggClub,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_RateThatNameChange,
        TVEpisodeSegment_IsEligible_RateThatNameChange,
    },
    TV_PROGRAM_SEGMENT_NULL,
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_UndergroundTreasuresCorner,
        TVEpisodeSegment_IsEligible_HasExplorerKit,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_SafariGameSpecialNewsBulletin,
        TVEpisodeSegment_IsEligible_SafariGameSpecialNewsBulletin,
    },
    {
        TVEpisodeSegment_LoadMessage_PokemonStorageSpecialNewsBulletin,
        TVEpisodeSegment_IsEligible_PokemonStorageSpecialNewsBulletin,
    },
    {
        NULL,
        TVEpisodeSegment_IsEligible_HerbalMedicineTrainerSightingDummy,
    },
    {
        TVEpisodeSegment_LoadMessage_PlantingAndWateringShow,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_PlantingAndWateringShow_NoBerries,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_LoveThatGroupCorner_NewGroup,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_SealClubShow,
        TVEpisodeSegment_IsEligible_SealClubShow,
    },
    {
        TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest_TakeFlag,
        TVEpisodeSegment_IsEligible_HasExplorerKit,
    },
    {
        TVEpisodeSegment_LoadMessage_CaptureTheFlagDigest_LoseFlag,
        TVEpisodeSegment_IsEligible_HasExplorerKit,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_HomeAndManor_NoFurniture,
        TVEpisodeSegment_IsEligible_HomeAndManor_NoFurniture,
    },
    {
        TVEpisodeSegment_LoadMessage_HomeAndManor,
        TVEpisodeSegment_IsEligible_HomeAndManor,
    }
};

static const TVProgramSegment sRecordsSegments[TV_PROGRAM_TYPE_RECORDS_NUM_SEGMENTS] = {
    { sub_0206DBE8, sub_0206DC3C },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206DC9C, sub_0206DD1C },
    { sub_0206DD5C, NULL },
    { sub_0206DE80, NULL },
    TV_PROGRAM_SEGMENT_NULL,
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206DF14, sub_0206DFC8 },
    { sub_0206DF88, sub_0206DFC8 },
    { sub_0206E018, sub_0206E04C },
    { sub_0206E098, sub_0206E0CC }
};

static const TVProgramSegment sInterviewsSegments[TV_PROGRAM_TYPE_INTERVIEWS_NUM_SEGMENTS] = {
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_BattleTowerCorner,
        TVEpisodeSegment_IsEligible_BattleTowerCorner,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_YourPokemonCorner,
        TVEpisodeSegment_IsEligible_YourPokemonCorner,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_ThePoketchWatch,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_ContestHall,
        TVEpisodeSegment_IsEligible_ContestHall,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_RightOnPhotoCorner,
        TVEpisodeSegment_IsEligible_RightOnPhotoCorner,
    },
    {
        TVEpisodeSegment_LoadMessage_StreetCornerPersonalityCheckup,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_ThreeCheersForPoffinCorner,
        NULL,
    },
    TV_PROGRAM_SEGMENT_NULL,
    {
        TVEpisodeSegment_LoadMessage_AmitySquareWatch,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_BattleFrontierFrontlineNews_Single,
        TVEpisodeSegment_IsEligible_BattleFrontierFrontlineNews_Single,
    },
    {
        TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question1,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question2,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question3,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_InYourFaceInterview_Question4,
        NULL,
    },
    {
        TVEpisodeSegment_LoadMessage_BattleFrontierFrontlineNews_Multi,
        TVEpisodeSegment_IsEligible_BattleFrontierFrontlineNews_Multi,
    }
};

static const TVProgramSegment sSinnohNowSegments[TV_PROGRAM_TYPE_SINNOH_NOW_NUM_SEGMENTS] = {
    { TVEpisodeSegment_LoadMessage_DiscoveringGroups, TVEpisodeSegment_IsEligible_DiscoveringGroups },
    { TVEpisodeSegment_LoadMessage_OnTheSpotWeather, FieldSystem_AlwaysTrue },
    { TVEpisodeSegment_LoadMessage_YourTownsBestThree, NULL },
    TV_PROGRAM_SEGMENT_NULL,
    { TVEpisodeSegment_LoadMessage_SwarmNewsFlash, TVEpisodeSegment_IsEligible_SwarmNewsFlash },
    TV_PROGRAM_SEGMENT_NULL,
    { NULL, MatchupChannelDummy },
    TV_PROGRAM_SEGMENT_NULL,
    { TVEpisodeSegment_LoadMessage_BerryLookout, TVEpisodeSegment_IsEligible_BerryLookout },
    TV_PROGRAM_SEGMENT_NULL,
    { NULL, PokemonResearchCornerDummy },
    { TVEpisodeSegment_LoadMessage_RichBoyNatureCorner, NULL },
    TV_PROGRAM_SEGMENT_NULL,
    TV_PROGRAM_SEGMENT_NULL,
    { TVEpisodeSegment_LoadMessage_RoamerNewsFlash, TVEpisodeSegment_IsEligible_RoamerNewsFlash },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206EEBC, sub_0206EF64 }
};

static const TVProgramSegment sVarietyHourSegments[TV_PROGRAM_TYPE_VARIETY_HOUR_NUM_SEGMENTS] = {
    { sub_0206EF7C, NULL },
    { sub_0206F01C, sub_0206F100 },
    { sub_0206F118, NULL },
    { sub_0206F13C, NULL },
    { sub_0206F160, sub_0206F260 },
    { sub_0206F278, NULL },
    { sub_0206F27C, sub_0206F280 },
    { sub_0206F29C, NULL }
};

void sub_0206F2F0(SaveData *saveData)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    sub_0206DFE0(saveData);
    sub_0206E060(saveData);

    sub_0206D0F0(broadcast);
    sub_0206D12C(broadcast);

    return;
}
