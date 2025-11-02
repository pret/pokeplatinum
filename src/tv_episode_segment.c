#include "tv_episode_segment.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/overworld_weather.h"
#include "constants/species.h"
#include "constants/tv_broadcast.h"
#include "generated/first_arrival_to_zones.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
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
#include "overlay006/struct_ov6_022465F4_decl.h"
#include "overlay006/swarm.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "berry_patches.h"
#include "charcode_util.h"
#include "field_overworld_weather.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_util.h"
#include "math_util.h"
#include "message.h"
#include "party.h"
#include "poffin.h"
#include "pokedex.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "ribbon.h"
#include "roaming_pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "special_encounter.h"
#include "strbuf.h"
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

static void FieldSystem_SaveTVEpisodeSegment(FieldSystem *fieldSystem, int programTypeID, int segmentID, const void *segment);
static void SaveData_SaveTVEpisodeSegment(SaveData *saveData, int programTypeID, int segmentID, const void *segment);
static u8 sub_0206DE4C(Pokemon *param0);
static Strbuf *sub_0206F0D8(u16 param0, u32 heapID);

typedef struct {
    u8 unk_00[40];
} TVEpisodeSegment_sub1;

typedef struct UnkStruct_0206D140_t {
    int unk_00;
    u16 unk_04;
    u16 species;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u16 unk_0C[11];
    u16 unk_22;
} UnkStruct_0206D140;

typedef struct {
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u16 fishingRodItemID;
    BOOL unk_08;
} UnkStruct_0206D374;

typedef struct {
    u16 unk_00[11];
} UnkStruct_0206D43C;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206D4D4;

typedef struct {
    u16 unk_00;
    u8 unk_02;
} UnkStruct_0206D530;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06;
} UnkStruct_0206D5B0;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06[11];
} UnkStruct_0206D644;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206D6E0;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_0206D75C;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
} UnkStruct_0206D8B0;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06;
} TVEpisodeSegment_sub2;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u16 unk_04;
} UnkStruct_0206D94C;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
} UnkStruct_0206D9F4;

typedef struct {
    int unk_00;
    u8 unk_04[36];
} UnkStruct_0206DA6C;

typedef struct {
    u8 unk_00;
} UnkStruct_0206DB20;

typedef struct {
    u8 unk_00;
} UnkStruct_0206DB74;

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
    u16 unk_00[11];
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
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 nicknamed;
    u16 unk_06[11];
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
    TVEpisodeSegment_sub1 val1;
    UnkStruct_0206D140 val2;
    UnkStruct_0206D374 val3;
    UnkStruct_0206D43C val4;
    UnkStruct_0206D4D4 val5;
    UnkStruct_0206D530 val6;
    UnkStruct_0206D5B0 val7;
    UnkStruct_0206D644 val8;
    UnkStruct_0206D6E0 val9;
    UnkStruct_0206D75C val10;
    UnkStruct_0206D8B0 val11;
    TVEpisodeSegment_sub2 val12;
    UnkStruct_0206D94C val13;
    UnkStruct_0206D9F4 val14;
    UnkStruct_0206DA6C val15;
    UnkStruct_0206DB20 val16;
    UnkStruct_0206DB74 val17;
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

    GF_ASSERT(sizeof(TVEpisodeSegment) == 40);
    TVBroadcast_SaveSegmentData(broadcast, param1, param2, (const u8 *)param3);
}

static void FieldSystem_SaveTVEpisodeSegment(FieldSystem *fieldSystem, int programTypeID, int segmentID, const void *segment)
{
    SaveData_SaveTVEpisodeSegment(fieldSystem->saveData, programTypeID, segmentID, segment);
}

static void SaveData_SaveTVEpisodeSegment(SaveData *saveData, int programTypeID, int segmentID, const void *segment)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    GF_ASSERT(sizeof(TVEpisodeSegment) == 40);
    TVBroadcast_SaveSegmentData(broadcast, programTypeID, segmentID, (const u8 *)segment);
}

static void sub_0206CD94(StringTemplate *template, int idx, const u16 *param2, int unused3, int unused4, int unused5)
{
    Strbuf *strBuf = Strbuf_Init(64, HEAP_ID_FIELD1);

    Strbuf_CopyChars(strBuf, param2);
    StringTemplate_SetStrbuf(template, idx, strBuf, unused3, unused5, unused4);
    Strbuf_Free(strBuf);
}

static void TVEpisodeSegment_SetTemplateTrainerName(StringTemplate *template, int idx, const UnkStruct_ov6_022465F4 *param2)
{
    sub_0206CD94(template, idx, ov6_02246494(param2), ov6_0224648C(param2), ov6_02246490(param2), 1);
}

static void sub_0206CE08(int heapID, u16 *param1, Pokemon *mon)
{
    Strbuf *strBuf = Strbuf_Init(64, heapID);

    Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, strBuf);
    Strbuf_ToChars(strBuf, param1, 10 + 1);
    Strbuf_Free(strBuf);
}

static void sub_0206CE38(Pokemon *param0, u16 *species, u8 *gender, u8 *language, u8 *metGame)
{
    *species = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    *gender = Pokemon_GetValue(param0, MON_DATA_GENDER, NULL);
    *language = Pokemon_GetValue(param0, MON_DATA_LANGUAGE, NULL);
    *metGame = Pokemon_GetValue(param0, MON_DATA_MET_GAME, NULL);
}

static void TVEpisodeSegment_SetTemplatePokemonSpecies(StringTemplate *template, int idx, u16 species, u8 unused3, u8 unused4, u8 unused5)
{
    u16 speciesName[MON_NAME_LEN + 1];

    MessageLoader_GetSpeciesName(species, HEAP_ID_FIELD1, speciesName);
    sub_0206CD94(template, idx, speciesName, unused3, unused4, 1);
}

static void TVEpisodeSegment_SetTemplateOwnPokemonSpecies(StringTemplate *template, int idx, u16 species)
{
    u16 speciesName[MON_NAME_LEN + 1];

    MessageLoader_GetSpeciesName(species, HEAP_ID_FIELD1, speciesName);
    sub_0206CD94(template, idx, speciesName, 0, GAME_LANGUAGE, 1);
}

static void sub_0206CED0(int heapID, Pokemon *mon, u8 *param2, u16 *param3)
{
    *param2 = Pokemon_GetValue(mon, MON_DATA_HAS_NICKNAME, NULL);

    if (*param2) {
        Strbuf *strBuf = Strbuf_Init(64, heapID);

        Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, strBuf);
        Strbuf_ToChars(strBuf, param3, 10 + 1);
        Strbuf_Free(strBuf);
    }
}

void sub_0206CF14(TVBroadcast *broadcast, Pokemon *param1, int param2, int param3, int param4)
{
    UnkStruct_0202E7D8 *v0 = sub_0202E7D8(broadcast);

    v0->unk_00 = 1;
    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_08 = param2;
    v0->unk_07 = param3;
    v0->unk_09 = param4;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CF48(TVBroadcast *broadcast, Pokemon *param1, int heapID)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_00 = 1;
    v0->unk_1F = 0;
    v0->unk_1E = Pokemon_GetNature(param1);

    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
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

void sub_0206D000(TVBroadcast *broadcast)
{
    UnkStruct_0202E808 *v0 = sub_0202E808(broadcast);

    v0->unk_00 = 1;
    v0->unk_07 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D018(TVBroadcast *broadcast, Pokemon *param1)
{
    UnkStruct_0202E808 *v0 = sub_0202E808(broadcast);

    if (v0->unk_07 == 0) {
        sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    }

    v0->unk_07++;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D048(TVBroadcast *broadcast, Pokemon *mon)
{
    UnkStruct_0202E810 *v0 = sub_0202E810(broadcast);

    v0->unk_00 = 1;
    sub_0206CE38(mon, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
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

UnkStruct_0206D140 *sub_0206D140(int heapID)
{
    UnkStruct_0206D140 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_0206D140));
    MI_CpuClearFast(v0, sizeof(UnkStruct_0206D140));

    return v0;
}

void sub_0206D158(UnkStruct_0206D140 *param0)
{
    Heap_Free(param0);
}

void sub_0206D160(UnkStruct_0206D140 *param0, Pokemon *mon, int param2, int param3, u32 heapID)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0206D140));

    param0->unk_00 = param2;
    param0->unk_04 = param3;

    sub_0206CE38(mon, &param0->species, &param0->unk_08, &param0->unk_09, &param0->unk_0A);

    param0->unk_22 = Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL);
    GF_ASSERT(param0->unk_22);

    sub_0206CED0(heapID, mon, &param0->unk_0B, param0->unk_0C);
}

void sub_0206D1B8(FieldSystem *fieldSystem, const UnkStruct_0206D140 *param1, int param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D140 *v1 = &segments.val2;

    *v1 = *param1;
    v1->unk_00 = param2;

    if (v1->unk_04 == 0) {
        return;
    }

    if (v1->unk_04 > 999) {
        v1->unk_04 = 999;
    }

    switch (param2) {
    case 0x4:
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 1, v1);
        break;
    case 0x1:
    case 0x5:
    case 0x6:
        if (v1->unk_04 > 2) {
            FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 2, v1);
        }
        break;
    }
}

static int sub_0206D230(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D140 *v0 = ov6_02246498(param2);

    if (v0->unk_0B) {
        TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->species, v0->unk_08, v0->unk_09, v0->unk_0A);
        StringTemplate_SetItemName(param1, 2, v0->unk_22);
        StringTemplate_SetNumber(param1, 3, v0->unk_04, 3, 0, 1);
        sub_0206CD94(param1, 4, v0->unk_0C, v0->unk_08, v0->unk_09, 1);
        return 0;
    } else {
        TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->species, v0->unk_08, v0->unk_09, v0->unk_0A);
        StringTemplate_SetItemName(param1, 2, v0->unk_22);
        StringTemplate_SetNumber(param1, 3, v0->unk_04, 3, 0, 1);
        return 1;
    }
}

static int sub_0206D2E0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D140 *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_04, 3, 0, 1);

    if (v0->unk_00 == 0x1) {
        return 2;
    } else {
        return 3;
    }
}

static BOOL sub_0206D320(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    UnkStruct_0206D140 *v1 = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, v1->species);
}

void sub_0206D340(FieldSystem *fieldSystem, BOOL monExists, u16 fishingRodItemID, Pokemon *mon)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D374 *v1 = &segments.val3;

    if (monExists) {
        sub_0206CE38(mon, &v1->species, &v1->gender, &v1->language, &v1->metGame);
    }

    v1->fishingRodItemID = fishingRodItemID;
    v1->unk_08 = monExists;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 3, v1);
}

static int sub_0206D374(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D374 *v0 = (UnkStruct_0206D374 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);

    if (v0->unk_08) {
        StringTemplate_SetItemName(param1, 1, v0->fishingRodItemID);
        TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 2, v0->species, v0->gender, v0->language, v0->metGame);
        return 4;
    } else {
        return 5;
    }
}

static BOOL sub_0206D3C0(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D374 *v0 = (UnkStruct_0206D374 *)ov6_02246498(param1);

    if (v0->unk_08 == 0) {
        return TRUE;
    }

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->species);
}

static void sub_0206D3E4(FieldSystem *fieldSystem, int param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D43C *v1 = &segments.val4;
    RecordMixedRNG *v2 = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    GF_ASSERT(sizeof(TVEpisodeSegment) == 40);
    MI_CpuClearFast(&segments, 40);

    CharCode_CopyNumChars(v1->unk_00, RecordMixedRNG_GetEntryName(v2, 1, 0), 10 + 1);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, param1, v1);
}

void sub_0206D424(FieldSystem *fieldSystem)
{
    sub_0206D3E4(fieldSystem, 20);
}

void sub_0206D430(FieldSystem *fieldSystem)
{
    sub_0206D3E4(fieldSystem, 4);
}

static int sub_0206D43C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D43C *v0 = (UnkStruct_0206D43C *)ov6_02246498(param2);

    sub_0206CD94(param1, 1, v0->unk_00, 0, ov6_02246490(param2), 1);
    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);

    return 6;
}

static int sub_0206D474(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D43C *v0 = (UnkStruct_0206D43C *)ov6_02246498(param2);

    sub_0206CD94(param1, 1, v0->unk_00, 0, ov6_02246490(param2), 1);
    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);

    return 32;
}

void sub_0206D4AC(FieldSystem *fieldSystem, u16 param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D4D4 *v1 = &segments.val5;

    v1->unk_00 = param1;
    v1->unk_02 = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 6, v1);
}

static int sub_0206D4D4(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D4D4 *v0 = (UnkStruct_0206D4D4 *)ov6_02246498(param2);

    StringTemplate_SetLocationName(param1, 0, v0->unk_02);
    TVEpisodeSegment_SetTemplateTrainerName(param1, 1, param2);
    StringTemplate_SetItemName(param1, 2, v0->unk_00);

    return 10;
}

void sub_0206D504(SaveData *saveData, u16 param1, u8 param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D530 *v1 = &segments.val6;

    if (param2 >= 10) {
        v1->unk_00 = param1;
        v1->unk_02 = param2;

        if (v1->unk_02 > 999) {
            v1->unk_02 = 999;
        }

        SaveData_SaveTVEpisodeSegment(saveData, 2, 7, v1);
    }
}

static int sub_0206D530(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D530 *v0 = (UnkStruct_0206D530 *)ov6_02246498(param2);

    StringTemplate_SetItemName(param1, 0, v0->unk_00);
    StringTemplate_SetNumber(param1, 1, v0->unk_02, 3, 0, 1);
    TVEpisodeSegment_SetTemplateTrainerName(param1, 2, param2);
    StringTemplate_SetItemNamePlural(param1, 3, v0->unk_00);

    return 11;
}

void sub_0206D578(FieldSystem *fieldSystem, Pokemon *param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D5B0 *v1 = &segments.val7;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_06 = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 8, v1);
}

static int sub_0206D5B0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D5B0 *v0 = (UnkStruct_0206D5B0 *)ov6_02246498(param2);

    StringTemplate_SetLocationName(param1, 1, v0->unk_06);
    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    return 12;
}

static BOOL sub_0206D5F0(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D5B0 *v0 = (UnkStruct_0206D5B0 *)ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206D60C(FieldSystem *fieldSystem, Pokemon *mon)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D644 *v1 = &segments.val8;

    sub_0206CE38(mon, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0206CE08(HEAP_ID_FIELD1, v1->unk_06, mon);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 10, v1);
}

static int sub_0206D644(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D644 *v0 = (UnkStruct_0206D644 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
    sub_0206CD94(param1, 2, v0->unk_06, v0->unk_02, v0->unk_03, 1);

    return 17 + LCRNG_RandMod(5);
}

static BOOL sub_0206D6A8(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    UnkStruct_0206D644 *v1 = (UnkStruct_0206D644 *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, v1->unk_00);
}

void sub_0206D6C8(FieldSystem *fieldSystem, int param1, int param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D6E0 *v1 = &segments.val9;

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 13, v1);
}

static int sub_0206D6E0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D6E0 *v0 = (UnkStruct_0206D6E0 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetUndergroundItemName(param1, 1, v0->unk_00);
    StringTemplate_SetNumber(param1, 2, v0->unk_02, 3, 0, 1);

    return 24;
}

void sub_0206D720(FieldSystem *fieldSystem)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D75C *v1 = &segments.val10;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E808 *v3 = sub_0202E808(broadcast);

    if (v3->unk_07 == 0) {
        return;
    }

    v1->unk_00 = v3->unk_02;
    v1->unk_02 = v3->unk_04;
    v1->unk_03 = v3->unk_05;
    v1->unk_04 = v3->unk_06;
    v1->unk_05 = v3->unk_07;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 15, v1);
}

static int sub_0206D75C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D75C *v0 = (UnkStruct_0206D75C *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
    StringTemplate_SetNumber(param1, 2, v0->unk_05, 2, 0, 1);

    return 26;
}

static BOOL sub_0206D7A4(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    UnkStruct_0206D75C *v1 = (UnkStruct_0206D75C *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, v1->unk_00);
}

void sub_0206D7C4(FieldSystem *fieldSystem)
{
    u32 v0, v1, v2, v3;
    u8 v4, v5;
    Pokemon *pokemon;
    TVEpisodeSegment segments;
    Party *v8;
    UnkStruct_0206D8B0 *v9 = &segments.val11;

    v0 = 0;
    v1 = 0;
    v2 = 0;
    v8 = SaveData_GetParty(fieldSystem->saveData);
    v4 = Party_GetCurrentCount(v8);

    for (v5 = 0; v5 < v4; v5++) {
        pokemon = Party_GetPokemonBySlotIndex(v8, v5);

        if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) == 0) {
            v3 = Pokemon_GetValue(pokemon, MON_DATA_GENDER, NULL);

            if (v3 == 0) {
                v0 = 1;
            } else if (v3 == 1) {
                v1 = 1;
            } else if (v3 == 2) {
                v2 = 1;
            }
        }
    }

    if (v2 == 0) {
        if ((v0 == 1) && (v1 == 0)) {
            pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));
            sub_0206CE38(pokemon, &v9->unk_00, &v9->unk_02, &v9->unk_03, &v9->unk_04);
            FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 16, v9);
        } else if ((v0 == 0) && (v1 == 1)) {
            pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));
            sub_0206CE38(pokemon, &v9->unk_00, &v9->unk_02, &v9->unk_03, &v9->unk_04);
            FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 16, v9);
        }
    }

    return;
}

static int sub_0206D8B0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D8B0 *v0 = (UnkStruct_0206D8B0 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    if (v0->unk_02 == 0) {
        return 27;
    }

    return 28;
}

static BOOL sub_0206D8F0(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D8B0 *v0 = (UnkStruct_0206D8B0 *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206D90C(TVBroadcast *broadcast, Pokemon *param1, u16 param2)
{
    return;
}

static BOOL sub_0206D910(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 0;
}

void FieldSystem_SaveTVEpisodeSegment_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D94C *v1 = &segments.val13;

    v1->unk_00 = berryItemID;
    v1->unk_02 = yieldRating;
    v1->unk_04 = yieldAmount;

    if (yieldRating == 5) {
        (void)0;
    } else if (yieldRating == 4) {
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 18, v1);
    } else if (yieldRating == 0) {
        FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 19, v1);
    }
}

static int sub_0206D94C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D94C *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetItemName(param1, 1, v0->unk_00);
    StringTemplate_SetNumber(param1, 2, v0->unk_04, 2, 0, 1);

    return 30;
}

static int sub_0206D98C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D94C *v0 = ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetItemName(param1, 1, v0->unk_00);

    return 31;
}

void sub_0206D9B4(TVBroadcast *broadcast, Pokemon *param1, u8 param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206D9F4 *v1 = &segments.val14;

    v1->unk_06 = param2;
    v1->unk_05 = MTRNG_Next() % 3;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    TVBroadcast_SaveSegmentData(broadcast, 2, 21, (const u8 *)v1);
}

static int sub_0206D9F4(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D9F4 *v0 = (UnkStruct_0206D9F4 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetBallSealName(param1, 1, v0->unk_06);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    return 33 + LCRNG_RandMod(3);
}

static BOOL sub_0206DA50(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D9F4 *v0 = (UnkStruct_0206D9F4 *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

static void sub_0206DA6C(UnkStruct_0206DA6C *param0, const TrainerInfo *param1)
{
    param0->unk_00 = TrainerInfo_Size();
    TrainerInfo_Copy(param1, (TrainerInfo *)param0->unk_04);
}

static void sub_0206DA84(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DA6C *v0 = (UnkStruct_0206DA6C *)ov6_02246498(param2);
    TrainerInfo *v1 = (TrainerInfo *)&v0->unk_04;

    GF_ASSERT(TrainerInfo_Size() == v0->unk_00);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetPlayerName(param1, 1, v1);
}

void sub_0206DAB8(FieldSystem *fieldSystem, const TrainerInfo *param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DA6C *v1 = &segments.val15;

    sub_0206DA6C(v1, param1);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 22, v1);
}

void sub_0206DAD4(FieldSystem *fieldSystem, const TrainerInfo *param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DA6C *v1 = &segments.val15;

    sub_0206DA6C(v1, param1);
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 23, v1);
}

static int sub_0206DAF0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    sub_0206DA84(fieldSystem, param1, param2);
    return 36;
}

static int sub_0206DAFC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    sub_0206DA84(fieldSystem, param1, param2);
    return 37;
}

static BOOL sub_0206DB08(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_EXPLORER_KIT, 1, HEAP_ID_FIELD3);
}

void sub_0206DB20(FieldSystem *fieldSystem)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DB20 *v1 = &segments.val16;

    v1->unk_00 = 1;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 25, v1);
}

static int sub_0206DB38(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    return 38;
}

static BOOL sub_0206DB48(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_RESORT_AREA);
}

void sub_0206DB5C(FieldSystem *fieldSystem, u8 param1)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DB74 *v1 = &segments.val17;

    v1->unk_00 = param1;

    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_TRAINER_SIGHTINGS, 26, v1);
}

static int sub_0206DB74(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DB74 *v0 = (UnkStruct_0206DB74 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    StringTemplate_SetFurniture(param1, 1, v0->unk_00);

    return 39;
}

static BOOL sub_0206DB9C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_RESORT_AREA);
}

void sub_0206DBB0(SaveData *saveData, u32 param1, Pokemon *param2, BOOL param3)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DBE8 *v1 = &segments.val18;

    sub_0206CE38(param2, &v1->unk_02, &v1->unk_04, &v1->unk_05, &v1->unk_06);

    v1->unk_00 = param1;
    v1->unk_07 = param3;

    sub_0206CD58(saveData, 3, 1, v1);
}

static int sub_0206DBE8(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DBE8 *v0 = (UnkStruct_0206DBE8 *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_02, v0->unk_04, v0->unk_05, v0->unk_06);
    StringTemplate_SetNumber(param1, 2, v0->unk_00, 4, 0, 1);

    if (v0->unk_07) {
        return 0;
    } else {
        return 1;
    }
}

static BOOL sub_0206DC3C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206DBE8 *v0 = (UnkStruct_0206DBE8 *)ov6_02246498(param1);

    if (Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_02) == 0) {
        return 0;
    }

    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206DC6C(FieldSystem *fieldSystem, u32 param1, Pokemon *param2)
{
    TVEpisodeSegment segments;
    UnkStruct_0206DC9C *v1 = &segments.val19;

    sub_0206CE38(param2, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_08 = param1;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_RECORDS, 3, v1);
}

static int sub_0206DC9C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DC9C *v0 = (UnkStruct_0206DC9C *)ov6_02246498(param2);

    TVEpisodeSegment_SetTemplateTrainerName(param1, 0, param2);
    TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    {
        u32 v1 = (((v0->unk_08 * 1000) / 254 + 5) / 10);

        StringTemplate_SetNumber(param1, 2, v1 / 10, 3, 0, 1);
        StringTemplate_SetNumber(param1, 3, v1 % 10, 1, 0, 1);
    }

    return 2;
}

static BOOL sub_0206DD1C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206DC9C *v0 = (UnkStruct_0206DC9C *)ov6_02246498(param1);
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
    StringTemplate_SetNumber(param1, 1, v0->unk_08, 10, 0, 1);
    StringTemplate_SetNumber(param1, 2, v0->unk_00, 6, 0, 1);
    StringTemplate_SetNumber(param1, 3, v0->unk_04, 6, 0, 1);

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
            GF_ASSERT(0);
            return;
        }

        sub_0206CE38(mon, &v3->unk_1C, &v3->unk_19, &v3->unk_1A, &v3->unk_1B);
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
    StringTemplate_SetNumber(param1, 3, v0->unk_17, 3, 0, 1);

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

    StringTemplate_SetNumber(param1, 2, v0, 3, 0, 1);
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

    StringTemplate_SetNumber(param1, 1, v0, 3, 0, 1);

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
    StringTemplate_SetNumber(param1, 1, v0->unk_00.unk_04, 4, 0, 1);

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
    StringTemplate_SetNumber(param1, 1, v0->unk_00.unk_02, 4, 0, 1);

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

    StringTemplate_SetNumber(template, 0, battleTowerCorner->outcome.winStreak, 4, 0, 1);
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

    sub_0206CE38(pokemon, &yourPokemonCorner->unk_00, &yourPokemonCorner->unk_02, &yourPokemonCorner->unk_03, &yourPokemonCorner->unk_04);
    sub_0206CED0(HEAP_ID_FIELD3, pokemon, &yourPokemonCorner->nicknamed, yourPokemonCorner->unk_06);

    yourPokemonCorner->customMessageWord = customMessageWord;
    FieldSystem_SaveTVEpisodeSegment(fieldSystem, TV_PROGRAM_TYPE_INTERVIEWS, TV_PROGRAM_SEGMENT_YOUR_POKEMON_CORNER, yourPokemonCorner);
}

static int TVEpisodeSegment_LoadMessage_YourPokemonCorner(FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param2)
{
    TVEpisodeSegment_YourPokemonCorner *yourPokemonCorner = ov6_02246498(param2);

    if (yourPokemonCorner->nicknamed) {
        TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, yourPokemonCorner->unk_00, yourPokemonCorner->unk_02, yourPokemonCorner->unk_03, yourPokemonCorner->unk_04);
        sub_0206CD94(template, 2, yourPokemonCorner->unk_06, yourPokemonCorner->unk_02, yourPokemonCorner->unk_03, 1);
        StringTemplate_SetCustomMessageWord(template, 3, yourPokemonCorner->customMessageWord);
        return TVProgramInterviews_Text_YourPokemonCorner_Nickname;
    } else {
        TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
        TVEpisodeSegment_SetTemplatePokemonSpecies(template, 1, yourPokemonCorner->unk_00, yourPokemonCorner->unk_02, yourPokemonCorner->unk_03, yourPokemonCorner->unk_04);

        StringTemplate_SetCustomMessageWord(template, 3, yourPokemonCorner->customMessageWord);
        return TVProgramInterviews_Text_YourPokemonCorner_NoNickname;
    }
}

static BOOL TVEpisodeSegment_IsEligible_YourPokemonCorner(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    TVEpisodeSegment_YourPokemonCorner *yourPokemonCorner = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), yourPokemonCorner->unk_00);
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
    StringTemplate_SetContestTypeName(template, 1, sub_020958B8(contestHall->unk_00.unk_08));
    StringTemplate_SetContestRankName(template, 2, sub_02095888(contestHall->unk_00.unk_07));
    StringTemplate_SetNumber(template, 3, contestHall->unk_00.unk_09, 1, 0, 1);
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

    UnkStruct_0202A750 *v2 = sub_0202A750(fieldSystem->saveData);
    UnkStruct_02029C68 *v3 = sub_02029CA8(v2, 0);

    rightOnPhotoCorner->species = sub_0202A184(v3);

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
    case POFFIN_FLAVOR_RICH:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_RichPoffin;
    case POFFIN_FLAVOR_OVERRIPE:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_OverripePoffin;
    case POFFIN_FLAVOR_FOUL:
        return TVProgramInterviews_Text_ThreeCheersForPoffinCorner_FoulPoffin;
    case POFFIN_FLAVOR_MILD:
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
    Strbuf *v2 = Strbuf_Init(64, HEAP_ID_FIELD1);

    TVEpisodeSegment_SetTemplateTrainerName(template, 0, param2);
    Strbuf_CopyChars(v2, battleFrontierFrontlineNewsMulti->unk_00.unk_06);
    StringTemplate_SetStrbuf(template, 1, v2, battleFrontierFrontlineNewsMulti->unk_00.unk_02, 0, battleFrontierFrontlineNewsMulti->unk_00.unk_03);
    Strbuf_Free(v2);
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

static const u8 Unk_020EFD34[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5
};

static int sub_0206E848(RecordMixedRNG *param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < NELEMS(Unk_020EFD34); v0++) {
        if (RecordMixedRNG_IsEntryValid(param0, Unk_020EFD34[v0])) {
            v1++;
        }
    }

    return v1;
}

static int sub_0206E870(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    int v0, v1, v2;
    int v3;
    RecordMixedRNG *v4 = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    v1 = sub_0206E848(v4);
    GF_ASSERT(v1 > 0);

    if (v1 > 1) {
        v1 = MTRNG_Next() % v1;
    } else {
        v1 = 0;
    }

    for (v0 = 0; v0 < NELEMS(Unk_020EFD34); v0++) {
        if (RecordMixedRNG_IsEntryValid(v4, Unk_020EFD34[v0])) {
            if (v1 == 0) {
                v2 = Unk_020EFD34[v0];
                break;
            } else {
                v1--;
            }
        }
    }

    GF_ASSERT(v1 == 0);

    v3 = LCRNG_RandMod(17);

    if (v3 >= 9) {
        v3++;
    }

    StringTemplate_SetUnionGroupName(param1, fieldSystem->saveData, v2, 0, 1);
    StringTemplate_SetUnionGroupName(param1, fieldSystem->saveData, v2, 1, 0);
    StringTemplate_SetPokemonTypeName(param1, 2, v3);

    return 0;
}

static BOOL sub_0206E928(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    RecordMixedRNG *v0 = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    if (sub_0206E848(v0) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static u16 Unk_02100BA4[] = {
    0x173,
    0x175,
    0x17F,
    0x154,
    0xA5
};

static int sub_0206E940(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    int mapHeaderID = Unk_02100BA4[LCRNG_RandMod(NELEMS(Unk_02100BA4))];
    int weather = FieldSystem_GetWeather(fieldSystem, mapHeaderID);
    StringTemplate_SetLocationName(param1, 0, MapHeader_GetMapLabelTextID(mapHeaderID));

    switch (weather) {
    case OVERWORLD_WEATHER_CLEAR:
        switch (LCRNG_RandMod(4)) {
        case 0:
            return 1;
        case 1:
            return 2;
        case 2:
            return 3;
        case 3:
            return 4;
        }
    case OVERWORLD_WEATHER_CLOUDY:
        return 5;
    case OVERWORLD_WEATHER_RAINING:
        return 6;
    case OVERWORLD_WEATHER_HEAVY_RAIN:
        return 7;
    case OVERWORLD_WEATHER_SNOWING:
        return 8;
    case OVERWORLD_WEATHER_HEAVY_SNOW:
        return 9;
    case OVERWORLD_WEATHER_BLIZZARD:
        return 10;
    case OVERWORLD_WEATHER_THUNDERSTORM:
        return 11;
    case OVERWORLD_WEATHER_HAILING:
        return 12;
    default:
        GF_ASSERT(0);
    }

    return 1;
}

static BOOL sub_0206EA0C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 1;
}

static int sub_0206EA10(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
    int v1 = fieldSystem->location->mapId;

    if ((v1 == 411) || ((v1 >= 412) && (v1 <= 417))) {
        StringTemplate_SetPlayerName(param1, 0, v0);
        StringTemplate_SetRivalName(param1, 1, fieldSystem->saveData);
        return 13;
    }

    if ((v1 == 418) || ((v1 >= 422) && (v1 <= 425))) {
        StringTemplate_SetCounterpartName(param1, 1, fieldSystem->saveData);
        return 14;
    }

    if ((v1 == 426) || ((v1 >= 430) && (v1 <= 432)) || (v1 == 257)) {
        return 15;
    }

    if ((v1 == 433) || ((v1 >= 437) && (v1 <= 441))) {
        return 16;
    }

    if ((v1 == 442) || ((v1 >= 445) && (v1 <= 449))) {
        return 17;
    }

    if ((v1 == 3) || ((v1 >= 8) && (v1 <= 32))) {
        return 18;
    }

    if ((v1 == 33) || ((v1 >= 38) && (v1 <= 44)) || (v1 == 491)) {
        return 19;
    }

    if ((v1 == 45) || ((v1 >= 50) && (v1 <= 64))) {
        return 20;
    }

    if ((v1 == 65) || ((v1 >= 71) && (v1 <= 85))) {
        return 21;
    }

    if ((v1 == 86) || ((v1 >= 103) && (v1 <= 119))) {
        return 22;
    }

    if ((v1 == 120) || ((v1 >= 125) && (v1 <= 131))) {
        return 23;
    }

    if ((v1 == 132) || ((v1 >= 136) && (v1 <= 149)) || ((v1 >= 305) && (v1 <= 310))) {
        return 24;
    }

    if ((v1 == 150) || ((v1 >= 157) && (v1 <= 164)) || (v1 == 516)) {
        return 25;
    }

    if ((v1 == 165) || ((v1 >= 170) && (v1 <= 171))) {
        return 26;
    }

    StringTemplate_SetPlayerName(param1, 0, v0);
    StringTemplate_SetRivalName(param1, 1, fieldSystem->saveData);

    return 27;
}

static int sub_0206EB94(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 mapID, species;
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    Swarm_GetMapIdAndSpecies(SpecialEncounter_GetDailyMon(speEnc, DAILY_SWARM), &mapID, &species);
    StringTemplate_SetLocationName(param1, 0, MapHeader_GetMapLabelTextID(mapID));
    TVEpisodeSegment_SetTemplateOwnPokemonSpecies(param1, 1, species);

    return 29;
}

static BOOL FieldSystem_IsSwarmEnabled(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *unused)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);
    return SpecialEncounter_IsSwarmEnabled(speEnc);
}

static BOOL sub_0206EBE4(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 0;
}

static const u16 Unk_020EFD3C[] = {
    FIRST_ARRIVAL_TWINLEAF_TOWN,
    FIRST_ARRIVAL_SANDGEM_TOWN,
    FIRST_ARRIVAL_FLOAROMA_TOWN,
    FIRST_ARRIVAL_SOLACEON_TOWN,
    FIRST_ARRIVAL_CELESTIC_TOWN,
    FIRST_ARRIVAL_SURVIVAL_AREA,
    FIRST_ARRIVAL_RESORT_AREA,
    FIRST_ARRIVAL_JUBILIFE_CITY,
    FIRST_ARRIVAL_CANALAVE_CITY,
    FIRST_ARRIVAL_OREBURGH_CITY,
    FIRST_ARRIVAL_ETERNA_CITY,
    FIRST_ARRIVAL_HEARTHOME_CITY,
    FIRST_ARRIVAL_PASTORIA_CITY,
    FIRST_ARRIVAL_VEILSTONE_CITY,
    FIRST_ARRIVAL_SUNYSHORE_CITY,
    FIRST_ARRIVAL_SNOWPOINT_CITY,
    FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD,
    FIRST_ARRIVAL_FIGHT_AREA,
};

static const u16 Unk_020F0074[] = {
    0x2,
    0x1AA,
    0x2,
    0x1AA,
    0x2,
    0x15B,
    0x2,
    0x15B,
    0x2,
    0x15B,
    0x2,
    0x15B,
    0x2,
    0xCA,
    0x2,
    0xCA,
    0x2,
    0xCA,
    0x2,
    0xCA,
    0x4,
    0xCC,
    0x4,
    0xCC,
    0x4,
    0xCC,
    0x4,
    0xCC,
    0x2,
    0x15D,
    0x2,
    0x15D,
    0x2,
    0x15D,
    0x2,
    0x15D,
    0x9,
    0x15E,
    0x9,
    0x15E,
    0x9,
    0x15E,
    0x9,
    0x15E,
    0x9,
    0x161,
    0x9,
    0x161,
    0x9,
    0x161,
    0x9,
    0x161,
    0x9,
    0x162,
    0x9,
    0x162,
    0x9,
    0x162,
    0x9,
    0x162,
    0xB,
    0x164,
    0xB,
    0x164,
    0xB,
    0x164,
    0xB,
    0x164,
    0x3,
    0x1B1,
    0x3,
    0x1B1,
    0x3,
    0x1B1,
    0x3,
    0x1B1,
    0x3,
    0x16A,
    0x3,
    0x16A,
    0x3,
    0x16A,
    0x3,
    0x16A,
    0x4,
    0x16B,
    0x4,
    0x16B,
    0x4,
    0x16B,
    0x4,
    0x16B,
    0x4,
    0x16E,
    0x4,
    0x16E,
    0x4,
    0x16E,
    0x4,
    0x16E,
    0xB,
    0x16F,
    0xB,
    0x16F,
    0xB,
    0x16F,
    0xB,
    0x16F,
    0xC,
    0x173,
    0xC,
    0x173,
    0xC,
    0x173,
    0xC,
    0x173,
    0xC,
    0x78,
    0xC,
    0x78,
    0xC,
    0x78,
    0xC,
    0x78,
    0xC,
    0x175,
    0xC,
    0x175,
    0xC,
    0x175,
    0xC,
    0x175,
    0xD,
    0x17C,
    0xD,
    0x17C,
    0xD,
    0x17C,
    0xD,
    0x17C,
    0xD,
    0x17E,
    0xD,
    0x17E,
    0xD,
    0x17E,
    0xD,
    0x17E,
    0x4,
    0x184,
    0x4,
    0x184,
    0x4,
    0x184,
    0x4,
    0x184,
    0x4,
    0x188,
    0x4,
    0x188,
    0x4,
    0x188,
    0x4,
    0x188,
    0xD,
    0x18B,
    0xD,
    0x18B,
    0xD,
    0x18B,
    0xD,
    0x18B,
    0x10,
    0x18F,
    0x10,
    0x18F,
    0x10,
    0x18F,
    0x10,
    0x18F,
    0x11,
    0xBC,
    0x11,
    0xBC,
    0x11,
    0xBC,
    0x11,
    0xBC,
    0x11,
    0x190,
    0x11,
    0x190,
    0x11,
    0x190,
    0x11,
    0x190,
    0x5,
    0x1D5,
    0x5,
    0x1D5,
    0x5,
    0x1D5,
    0x5,
    0x1D5,
    0x5,
    0x196,
    0x5,
    0x196,
    0x5,
    0x196,
    0x5,
    0x196,
    0x5,
    0x197,
    0x5,
    0x197,
    0x5,
    0x197,
    0x5,
    0x197,
    0x6,
    0x1C9,
    0x6,
    0x1C9,
    0x6,
    0x1C9,
    0x6,
    0x1C9,
    0x5,
    0x1D7,
    0x5,
    0x1D7,
    0x5,
    0x1D7,
    0x5,
    0x1D7
};

static int sub_0206EBE8(FieldSystem *fieldSystem)
{
    u8 v0[NELEMS(Unk_020EFD3C)];
    u8 v1[NELEMS(Unk_020F0074) / 2];
    int v2, v3;
    VarsFlags *v4 = SaveData_GetVarsFlags(fieldSystem->saveData);

    for (v2 = 0; v2 < NELEMS(Unk_020EFD3C); v2++) {
        v0[v2] = SystemFlag_HandleFirstArrivalToZone(v4, HANDLE_FLAG_CHECK, Unk_020EFD3C[v2]);
    }

    for (v2 = 0, v3 = 0; v2 < NELEMS(Unk_020F0074) / 2; v2++) {
        if (v0[Unk_020F0074[v2 * 2]]) {
            v1[v3] = v2;
            v3++;
        }
    }

    return v1[LCRNG_RandMod(v3)];
}

static int sub_0206EC90(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    BerryPatch *v0 = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int v1 = sub_0206EBE8(fieldSystem);
    int v2 = Unk_020F0074[v1 * 2 + 1];
    StringTemplate_SetLocationName(param1, 0, MapHeader_GetMapLabelTextID(v2));

    switch (BerryPatches_GetPatchGrowthStage(v0, v1)) {
    case 5:
        return 36;
    case 4:
        return 37;
    case 3:
        return 38;
    case 2:
        return 39;
    case 0:
    case 1:
    default:
        return 40;
    }
}

static BOOL sub_0206ECFC(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return SystemFlag_HandleFirstArrivalToZone(v0, HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_CITY);
}

static BOOL sub_0206ED10(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 0;
}

static int sub_0206ED14(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u32 v0, v1;
    u8 v2;
    Pokemon *v3;
    BoxPokemon *v4;
    int v5 = 0xff, v6;
    v6 = 0xff;
    v0 = (LCRNG_Next() % 0xffff);
    v2 = Pokemon_GetNatureOf(v0);

    StringTemplate_SetNatureName(param1, 0, v2);

    if ((v2 == 0) || (v2 == 6) || (v2 == 12) || (v2 == 18) || (v2 == 24)) {
        return 46;
    }

    if ((v0 % 2) == 0) {
        for (v1 = 0; v1 < 5; v1++) {
            if (Pokemon_GetFlavorAffinityOf(v0, v1) == 1) {
                v5 = v1;
                break;
            }
        }

        StringTemplate_SetFlavorName(param1, 2, v5);
        return 45;
    }

    for (v1 = 0; v1 < 5; v1++) {
        if (Pokemon_GetStatAffinityOf(v2, 1 + v1) > 0) {
            v6 = v1;
            break;
        }
    }

    StringTemplate_SetPokemonStatName(param1, 1, 1 + v6);
    return 44;
}

static int sub_0206EDAC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    Roamer *v0;
    SpecialEncounter *v1;
    u16 v2, v3;
    u32 v4, v5;
    Strbuf *v6 = Strbuf_Init(22, HEAP_ID_FIELD1);
    TrainerInfo *v7 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));

    v1 = SaveData_GetSpecialEncounters(fieldSystem->saveData);
    v2 = (LCRNG_Next() % 29);

    MapHeader_LoadName(RoamingPokemon_GetRouteFromId(v2), HEAP_ID_FIELD1, v6);
    StringTemplate_SetStrbuf(param1, 0, v6, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v6);

    for (v3 = 0; v3 < 6; v3++) {
        if (SpecialEncounter_IsRoamerActive(v1, v3)) {
            v0 = SpecialEncounter_GetRoamer(v1, v3);

            v4 = Roamer_GetData(v0, ROAMER_DATA_SPECIES);
            v5 = Roamer_GetData(v0, ROAMER_DATA_PERSONALITY);

            TVEpisodeSegment_SetTemplatePokemonSpecies(param1, 1, v4, Pokemon_GetGenderOf(v4, v5), TrainerInfo_RegionCode(v7), TrainerInfo_GameCode(v7));
            break;
        }
    }

    return 49;
}

static BOOL sub_0206EE74(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    int v0;
    SpecialEncounter *v1 = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    for (v0 = 0; v0 < 6; v0++) {
        if (SpecialEncounter_IsRoamerActive(v1, v0)) {
            return 1;
        }
    }

    return 0;
}

static int sub_0206EE9C(UnkStruct_0202A750 *param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < 11; v0++) {
        if (sub_02029D10(param0, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

static int sub_0206EEBC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_02029C68 *v0;
    int v1, v2, v3, v4;
    UnkStruct_0202A750 *v5 = sub_0202A750(fieldSystem->saveData);

    v2 = sub_0206EE9C(v5);

    if (v2 > 1) {
        v3 = MTRNG_Next() % v2;
    } else {
        v3 = 0;
    }

    for (v1 = 0; v1 < 11; v1++) {
        if (sub_02029D10(v5, v1) == 1) {
            if (v3 == 0) {
                v4 = v1;
                break;
            } else {
                v3--;
            }
        }
    }

    GF_ASSERT(v1 < 11);
    v0 = sub_02029CA8(v5, v4);

    {
        u16 v6;
        Strbuf *v7 = Strbuf_Init(7 + 1, HEAP_ID_FIELD1);
        int v8 = sub_0202A1C0(v0);

        sub_0202A1A0(v0, v7);
        StringTemplate_SetStrbuf(param1, 0, v7, v8, 1, sub_0202A200(v0));
        Strbuf_Free(v7);

        v6 = sub_0202A1F4(v0);
        StringTemplate_SetCustomMessageWord(param1, 1, v6);
    }

    return 52;
}

static BOOL sub_0206EF64(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0202A750 *v0 = sub_0202A750(fieldSystem->saveData);

    if (sub_0206EE9C(v0) != 0) {
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
    Strbuf *v0;
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

    StringTemplate_SetStrbuf(param1, 0, v0, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);

    v1 = (LCRNG_Next() % 3);

    if (v1 == 0) {
        return 8;
    } else if (v1 == 1) {
        v1 = (LCRNG_Next() % 34) + 25;
        StringTemplate_SetNumber(param1, 1, v1, 2, 0, 1);
        return 9;
    } else {
        return 10;
    }
}

static Strbuf *sub_0206F0D8(u16 param0, u32 heapID)
{
    MessageLoader *v0 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);
    Strbuf *v1 = MessageLoader_GetNewStrbuf(v0, param0);

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
    Strbuf *v0;
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
            StringTemplate_SetStrbuf(param1, 2, v0, 0, 1, GAME_LANGUAGE);
            Strbuf_Free(v0);
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
    { sub_0206D230, sub_0206D320 },
    { sub_0206D2E0, NULL },
    { sub_0206D374, sub_0206D3C0 },
    { sub_0206D43C, NULL },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206D4D4, NULL },
    { sub_0206D530, NULL },
    { sub_0206D5B0, sub_0206D5F0 },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206D644, sub_0206D6A8 },
    TV_PROGRAM_SEGMENT_NULL,
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206D6E0, sub_0206DB08 },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206D75C, sub_0206D7A4 },
    { sub_0206D8B0, sub_0206D8F0 },
    { NULL, sub_0206D910 },
    { sub_0206D94C, NULL },
    { sub_0206D98C, NULL },
    { sub_0206D474, NULL },
    { sub_0206D9F4, sub_0206DA50 },
    { sub_0206DAF0, sub_0206DB08 },
    { sub_0206DAFC, sub_0206DB08 },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206DB38, sub_0206DB48 },
    { sub_0206DB74, sub_0206DB9C }
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
    { sub_0206E870, sub_0206E928 },
    { sub_0206E940, sub_0206EA0C },
    { sub_0206EA10, NULL },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206EB94, FieldSystem_IsSwarmEnabled },
    TV_PROGRAM_SEGMENT_NULL,
    { NULL, sub_0206EBE4 },
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206EC90, sub_0206ECFC },
    TV_PROGRAM_SEGMENT_NULL,
    { NULL, sub_0206ED10 },
    { sub_0206ED14, NULL },
    TV_PROGRAM_SEGMENT_NULL,
    TV_PROGRAM_SEGMENT_NULL,
    { sub_0206EDAC, sub_0206EE74 },
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
