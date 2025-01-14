#include "catching_show.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/species.h"
#include "consts/game_records.h"

#include "struct_decls/struct_02024440_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "field_battle_data_transfer.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "map_tile_behavior.h"
#include "narc.h"
#include "pokemon.h"
#include "rtc.h"
#include "unk_0202EEC0.h"
#include "unk_02054D00.h"

#define POINTS_LOST_PER_SECOND 2
#define WEIGHT_NO_ENCOUNTER    20
#define DISTINCT_TYPE_BONUS    50
#define DIFFERENT_TYPE_BONUS   200
#define MAX_TIME_SECONDS       1000

enum PAL_PARK_AREA {
    PAL_PARK_AREA_NONE = 0,
    PAL_PARK_AREA_LAND_NORTH_WEST,
    PAL_PARK_AREA_LAND_NORTH_EAST,
    PAL_PARK_AREA_LAND_SOUTH_WEST,
    PAL_PARK_AREA_LAND_SOUTH_EAST,
    PAL_PARK_AREA_WATER_NORTH_WEST,
    PAL_PARK_AREA_WATER_NORTH_EAST,
    PAL_PARK_AREA_WATER_SOUTH_WEST,
    PAL_PARK_AREA_WATER_SOUTH_EAST,
};

static void InitEncounterData(FieldSystem *fieldSystem, CatchingShow *catchingShow);
static void UpdateBattleResultInternal(FieldSystem *fieldSystem, FieldBattleDTO *dto, CatchingShow *catchingShow);
static BOOL TryStartEncounter(FieldSystem *fieldSystem, CatchingShow *catchingShow, int playerX, int playerY);
static FieldBattleDTO *SetupBattleDTO(FieldSystem *fieldSystem, CatchingShow *catchingShow);
static int NumMonsCaptured(CatchingShow *catchingShow);
static void ResetStepCount(CatchingShow *catchingShow);
static BOOL IsStepCountZero(CatchingShow *catchingShow);
static u32 CalculateTypePoints(CatchingShow *catchingShow);
static u32 CalcCatchingPoints(CatchingShow *catchingShow);
static u32 GetTimePoints(CatchingShow *catchingShow);

static CatchingShow sCatchingShow;

void CatchingShow_Start(FieldSystem *fieldSystem)
{
    CatchingShow *catchingShow = &sCatchingShow;

    MI_CpuClearFast(catchingShow, sizeof(CatchingShow));

    InitEncounterData(fieldSystem, catchingShow);
    ResetStepCount(catchingShow);

    catchingShow->startTime = GetTimestamp();
}

void CatchingShow_End(FieldSystem *fieldSystem)
{
    CatchingShow *catchingShow = &sCatchingShow;
    GameRecords *records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    s64 endTime = GetTimestamp();
    s64 elapsedTime = TimeElapsed(catchingShow->startTime, endTime);

    if (elapsedTime < MAX_TIME_SECONDS) {
        catchingShow->timePoints = ((MAX_TIME_SECONDS - elapsedTime) * POINTS_LOST_PER_SECOND);
    } else {
        catchingShow->timePoints = 0;
    }

    GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_FINISHED_CATCHING_SHOW);
}

BOOL CatchingShow_CheckWildEncounter(FieldSystem *fieldSystem, int playerX, int playerY)
{
    if (IsStepCountZero(&sCatchingShow) == TRUE) {
        return TryStartEncounter(fieldSystem, &sCatchingShow, playerX, playerY);
    } else {
        return FALSE;
    }
}

FieldBattleDTO *CatchingShow_GetBattleDTO(FieldSystem *fieldSystem)
{
    return SetupBattleDTO(fieldSystem, &sCatchingShow);
}

void CatchingShow_UpdateBattleResult(FieldSystem *fieldSystem, FieldBattleDTO *dto)
{
    UpdateBattleResultInternal(fieldSystem, dto, &sCatchingShow);
}

int CatchingShow_GetParkBallCount(FieldSystem *fieldSystem)
{
    return CATCHING_SHOW_MONS - NumMonsCaptured(&sCatchingShow);
}

int CatchingShow_CalcCatchingPoints(FieldSystem *fieldSystem)
{
    return CalcCatchingPoints(&sCatchingShow);
}

int CatchingShow_GetTimePoints(FieldSystem *fieldSystem)
{
    return GetTimePoints(&sCatchingShow);
}

int CatchingShow_GetTypePoints(FieldSystem *fieldSystem)
{
    return CalculateTypePoints(&sCatchingShow);
}

static void sub_02056400(u32 species, u8 *param1)
{
    GF_ASSERT(0 < species && species <= NATIONAL_DEX_COUNT);

    int v0 = (species - 1) * 6;

    NARC_ReadFromMemberByIndexPair(param1, NARC_INDEX_ARC__PPARK, 0, v0, sizeof(u8) * 6);
}

static void InitEncounterData(FieldSystem *fieldSystem, CatchingShow *catchingShow)
{
    int i;
    u8 v1[8];
    u16 monSpecies;
    PalParkTransfer *v4 = SaveData_PalParkTransfer(fieldSystem->saveData);
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        catchingShow->caughtMonsOrder[i] = 0;
        sub_0202F000(v4, i, mon);

        monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

        catchingShow->pokemon[i].species = monSpecies;
        sub_02056400(monSpecies, v1);

        if (v1[0] != 0) {
            catchingShow->pokemon[i].area = v1[0];
        } else {
            catchingShow->pokemon[i].area = PAL_PARK_AREA_WATER_NORTH_WEST - 1 + v1[1];
        }

        catchingShow->pokemon[i].rarity = v1[3];
        catchingShow->pokemon[i].catchingPoints = v1[2];
        catchingShow->pokemon[i].type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        catchingShow->pokemon[i].type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
    }

    Heap_FreeToHeap(mon);
}

static int NumMonsCaptured(CatchingShow *catchingShow)
{
    int i;
    int numMonsCaptured = 0;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        if (catchingShow->caughtMonsOrder[i] != 0) {
            numMonsCaptured++;
        }
    }

    return numMonsCaptured;
}

static void ResetStepCount(CatchingShow *catchingShow)
{
    catchingShow->steps = inline_020564D0(10) + 5;
}

static BOOL IsStepCountZero(CatchingShow *catchingShow)
{
    catchingShow->steps--;

    if (catchingShow->steps == 0) {
        ResetStepCount(catchingShow);
        return TRUE;
    }

    return FALSE;
}

static int GetEncounterArea(FieldSystem *fieldSystem, int playerX, int playerY)
{
    u16 tileBehavior = FieldSystem_GetTileBehavior(fieldSystem, playerX, playerY);
    int area = (playerX < 32) ? 0 : 1;
    area += (playerY < 32) ? 0 : 2;

    if (TileBehavior_IsTallGrass(tileBehavior)) {
        return PAL_PARK_AREA_LAND_NORTH_WEST + area;
    } else if (TileBehavior_IsSurfable(tileBehavior)) {
        return PAL_PARK_AREA_WATER_NORTH_WEST + area;
    }

    return PAL_PARK_AREA_NONE;
}

static BOOL TryStartEncounter(FieldSystem *fieldSystem, CatchingShow *catchingShow, int playerX, int playerY)
{
    int i;
    int encounterChance, totalRarity = 0;
    int area = GetEncounterArea(fieldSystem, playerX, playerY);

    if (area == PAL_PARK_AREA_NONE) {
        return FALSE;
    }

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        if (catchingShow->caughtMonsOrder[i] == 0 && catchingShow->pokemon[i].area == area) {
            totalRarity += catchingShow->pokemon[i].rarity;
        }
    }

    if (totalRarity == 0) {
        return FALSE;
    }

    encounterChance = inline_020564D0(totalRarity + WEIGHT_NO_ENCOUNTER);

    if (encounterChance < WEIGHT_NO_ENCOUNTER) {
        return FALSE;
    }

    encounterChance -= WEIGHT_NO_ENCOUNTER;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        if (catchingShow->caughtMonsOrder[i] == 0 && catchingShow->pokemon[i].area == area) {
            if (encounterChance < catchingShow->pokemon[i].rarity) {
                catchingShow->currentEncounterIndex = i;
                return TRUE;
            } else {
                encounterChance -= catchingShow->pokemon[i].rarity;
            }
        }
    }

    GF_ASSERT(FALSE);
    return FALSE;
}

static void UpdateBattleResultInternal(FieldSystem *fieldSystem, FieldBattleDTO *dto, CatchingShow *catchingShow)
{
    switch (dto->resultMask) {
    case BATTLE_RESULT_CAPTURED_MON:
        catchingShow->caughtMonsOrder[catchingShow->currentEncounterIndex] = NumMonsCaptured(catchingShow) + 1;
        break;
    case BATTLE_RESULT_PLAYER_FLED:
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

static FieldBattleDTO *SetupBattleDTO(FieldSystem *fieldSystem, CatchingShow *catchingShow)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD_TASK);
    PalParkTransfer *v2 = SaveData_PalParkTransfer(fieldSystem->saveData);
    int parkBallCount = CatchingShow_GetParkBallCount(fieldSystem);
    FieldBattleDTO *dto = FieldBattleDTO_NewPalPark(HEAP_ID_FIELDMAP, parkBallCount);

    FieldBattleDTO_Init(dto, fieldSystem);
    sub_0202F000(v2, catchingShow->currentEncounterIndex, mon);
    FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_ENEMY_1);
    Heap_FreeToHeap(mon);

    return dto;
}

static u32 CalcCatchingPoints(CatchingShow *catchingShow)
{
    int i;
    u32 totalCatchingPoints = 0;

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        totalCatchingPoints += catchingShow->pokemon[i].catchingPoints;
    }

    return totalCatchingPoints;
}

static u32 CalculateTypePoints(CatchingShow *catchingShow)
{
    int i, j;
    int prevMonType1, prevMonType2, currMonType1, currMonType2;
    u32 distinctTypeTracker = 0;
    u32 totalTypePoints = 0;

    for (i = 1; i < CATCHING_SHOW_MONS + 1; i++) {
        for (j = 0; j < CATCHING_SHOW_MONS; j++) {
            if (catchingShow->caughtMonsOrder[j] == i) {
                currMonType1 = catchingShow->pokemon[j].type1;
                currMonType2 = catchingShow->pokemon[j].type2;

                if (i != 1
                    && prevMonType1 != currMonType1
                    && prevMonType1 != currMonType2
                    && prevMonType2 != currMonType1
                    && prevMonType2 != currMonType2) {
                    totalTypePoints += DIFFERENT_TYPE_BONUS;
                }

                prevMonType1 = currMonType1;
                prevMonType2 = currMonType2;
                distinctTypeTracker |= (1 << prevMonType1);
                distinctTypeTracker |= (1 << prevMonType2);

                break;
            }
        }
    }

    for (; distinctTypeTracker != 0; distinctTypeTracker >>= 1) {
        if (distinctTypeTracker & 1) {
            totalTypePoints += DISTINCT_TYPE_BONUS;
        }
    }

    return totalTypePoints;
}

static u32 GetTimePoints(CatchingShow *catchingShow)
{
    return catchingShow->timePoints;
}
