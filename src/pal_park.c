#include "pal_park.h"

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

static void InitEncounterData(FieldSystem *fieldSystem, PalParkCatchingShowData *catchingShowData);
static void sub_02056624(FieldSystem *fieldSystem, FieldBattleDTO *param1, PalParkCatchingShowData *catchingShowData);
static BOOL TryStartEncounter(FieldSystem *fieldSystem, PalParkCatchingShowData *catchingShowData, int param2, int param3);
static FieldBattleDTO *sub_0205664C(FieldSystem *fieldSystem, PalParkCatchingShowData *catchingShowData);
static NumMonsCaptured(PalParkCatchingShowData *catchingShowData);
static void ResetStepCount(PalParkCatchingShowData *catchingShowData);
static BOOL CanCheckEncounter(PalParkCatchingShowData *catchingShowData);
static u32 CalculateTypePoints(PalParkCatchingShowData *catchingShowData);
static u32 CalculateCatchingPoints(PalParkCatchingShowData *catchingShowData);
static u32 GetTimePoints(PalParkCatchingShowData *catchingShowData);

static PalParkCatchingShowData sCatchingShowData;

void PalPark_InitCatchingShowData(FieldSystem *fieldSystem)
{
    int v0;
    PalParkCatchingShowData *v1 = &sCatchingShowData;

    MI_CpuClearFast(v1, sizeof(PalParkCatchingShowData));

    InitEncounterData(fieldSystem, v1);
    ResetStepCount(v1);

    v1->unk_40 = GetTimestamp();
}

void sub_02056328(FieldSystem *fieldSystem)
{
    PalParkCatchingShowData *v0 = &sCatchingShowData;
    GameRecords *v1 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    s64 v2 = GetTimestamp();
    s64 v3 = TimeElapsed(v0->unk_40, v2);

    if (v3 < 1000) {
        v0->timePoints = ((1000 - v3) * 2);
    } else {
        v0->timePoints = 0;
    }

    GameRecords_IncrementTrainerScore(v1, TRAINER_SCORE_EVENT_UNK_17);
}

BOOL PalPark_CheckWildEncounter(FieldSystem *fieldSystem, int param1, int param2)
{
    if (CanCheckEncounter(&sCatchingShowData) == 1) {
        return TryStartEncounter(fieldSystem, &sCatchingShowData, param1, param2);
    } else {
        return FALSE;
    }
}

FieldBattleDTO *sub_0205639C(FieldSystem *fieldSystem)
{
    return sub_0205664C(fieldSystem, &sCatchingShowData);
}

void sub_020563AC(FieldSystem *fieldSystem, FieldBattleDTO *param1)
{
    sub_02056624(fieldSystem, param1, &sCatchingShowData);
}

int PalPark_GetParkBallCount(FieldSystem *fieldSystem)
{
    return 6 - NumMonsCaptured(&sCatchingShowData);
}

int PalPark_GetCatchingPoints(FieldSystem *fieldSystem)
{
    return CalculateCatchingPoints(&sCatchingShowData);
}

int PalPark_GetTimePoints(FieldSystem *fieldSystem)
{
    return GetTimePoints(&sCatchingShowData);
}

int PalPark_GetTypePoints(FieldSystem *fieldSystem)
{
    return CalculateTypePoints(&sCatchingShowData);
}

static void sub_02056400(u32 param0, u8 *param1)
{
    int v0;

    GF_ASSERT(0 < param0 && param0 <= NATIONAL_DEX_COUNT);
    v0 = (param0 - 1) * 6;

    NARC_ReadFromMemberByIndexPair(param1, NARC_INDEX_ARC__PPARK, 0, v0, sizeof(u8) * 6);
}

static void InitEncounterData(FieldSystem *fieldSystem, PalParkCatchingShowData *catchingShowData)
{
    int i;
    u8 v1[8];
    u16 monSpecies;
    Pokemon *mon;
    PalParkTransfer *v4;

    v4 = SaveData_PalParkTransfer(fieldSystem->saveData);
    mon = Pokemon_New(4);

    for (i = 0; i < 6; i++) {
        catchingShowData->unk_30[i] = 0;
        sub_0202F000(v4, i, mon);

        monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

        catchingShowData->palParkPokemon[i].unk_00 = monSpecies;
        sub_02056400(monSpecies, v1);

        if (v1[0] != 0) {
            catchingShowData->palParkPokemon[i].encounterType = v1[0];
        } else {
            catchingShowData->palParkPokemon[i].encounterType = 5 - 1 + v1[1];
        }

        catchingShowData->palParkPokemon[i].unk_03 = v1[3];
        catchingShowData->palParkPokemon[i].unk_04 = v1[2];
        catchingShowData->palParkPokemon[i].type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        catchingShowData->palParkPokemon[i].type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
    }

    Heap_FreeToHeap(mon);
}

static int NumMonsCaptured(PalParkCatchingShowData *catchingShowData)
{
    int i;
    int numMonsCaptured = 0;

    for (i = 0; i < 6; i++) {
        if (catchingShowData->unk_30[i] != 0) {
            numMonsCaptured++;
        }
    }

    return numMonsCaptured;
}

static void ResetStepCount(PalParkCatchingShowData *catchingShowData)
{
    catchingShowData->steps = inline_020564D0(10) + 5;
}

static BOOL CanCheckEncounter(PalParkCatchingShowData *catchingShowData)
{
    catchingShowData->steps--;

    if (catchingShowData->steps == 0) {
        ResetStepCount(catchingShowData);
        return TRUE;
    }

    return FALSE;
}

static int sub_0205650C(FieldSystem *fieldSystem, int param1, int param2)
{
    u16 v0 = FieldSystem_GetTileBehavior(fieldSystem, param1, param2);
    int v1;

    v1 = (param1 < 32) ? 0 : 1;
    v1 += (param2 < 32) ? 0 : 2;

    if (TileBehavior_IsTallGrass(v0)) {
        return 1 + v1;
    } else if (TileBehavior_IsSurfable(v0)) {
        return 5 + v1;
    }

    return 0;
}

static BOOL TryStartEncounter(FieldSystem *fieldSystem, PalParkCatchingShowData *catchingShowData, int param2, int param3)
{
    int v0;
    int v1, v2 = 0;
    int v3 = sub_0205650C(fieldSystem, param2, param3);

    if (v3 == 0) {
        return FALSE;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if ((catchingShowData->unk_30[v0] == 0) && (catchingShowData->palParkPokemon[v0].encounterType == v3)) {
            v2 += catchingShowData->palParkPokemon[v0].unk_03;
        }
    }

    if (v2 == 0) {
        return FALSE;
    }

    v1 = inline_020564D0(v2 + 20);

    if (v1 < 20) {
        return FALSE;
    }

    v1 -= 20;

    for (v0 = 0; v0 < 6; v0++) {
        if ((catchingShowData->unk_30[v0] == 0) && (catchingShowData->palParkPokemon[v0].encounterType == v3)) {
            if (v1 < catchingShowData->palParkPokemon[v0].unk_03) {
                catchingShowData->unk_3C = v0;
                return 1;
            } else {
                v1 -= catchingShowData->palParkPokemon[v0].unk_03;
            }
        }
    }

    GF_ASSERT(0);
    return FALSE;
}

static void sub_02056624(FieldSystem *fieldSystem, FieldBattleDTO *param1, PalParkCatchingShowData *catchingShowData)
{
    switch (param1->resultMask) {
    case BATTLE_RESULT_CAPTURED_MON:
        catchingShowData->unk_30[catchingShowData->unk_3C] = NumMonsCaptured(catchingShowData) + 1;
        break;
    case BATTLE_RESULT_PLAYER_FLED:
        break;
    default:
        GF_ASSERT(0);
    }
}

static FieldBattleDTO *sub_0205664C(FieldSystem *fieldSystem, PalParkCatchingShowData *catchingShowData)
{
    FieldBattleDTO *v0;
    Pokemon *v1 = Pokemon_New(32);
    PalParkTransfer *v2 = SaveData_PalParkTransfer(fieldSystem->saveData);
    int parkBallCount = PalPark_GetParkBallCount(fieldSystem);

    v0 = FieldBattleDTO_NewPalPark(11, parkBallCount);

    FieldBattleDTO_Init(v0, fieldSystem);
    sub_0202F000(v2, catchingShowData->unk_3C, v1);
    FieldBattleDTO_AddPokemonToBattler(v0, v1, 1);
    Heap_FreeToHeap(v1);

    return v0;
}

static u32 CalculateCatchingPoints(PalParkCatchingShowData *catchingShowData)
{
    int i;
    u32 catchingPoints = 0;

    for (i = 0; i < 6; i++) {
        catchingPoints += catchingShowData->palParkPokemon[i].unk_04;
    }

    return catchingPoints;
}

static u32 CalculateTypePoints(PalParkCatchingShowData *catchingShowData)
{
    int i, j;
    int typeToCheck1, typeToCheck2, typeAlreadyOwned1, typeAlreadyOwned2;
    u32 distinctTypeTracker = 0;
    u32 totalTypePoints = 0;

    for (i = 1; i < 6 + 1; i++) {
        for (j = 0; j < 6; j++) {
            if (catchingShowData->unk_30[j] == i) {
                typeAlreadyOwned1 = catchingShowData->palParkPokemon[j].type1;
                typeAlreadyOwned2 = catchingShowData->palParkPokemon[j].type2;

                if ((i != 1) && (typeToCheck1 != typeAlreadyOwned1) && (typeToCheck1 != typeAlreadyOwned2) && (typeToCheck2 != typeAlreadyOwned1) && (typeToCheck2 != typeAlreadyOwned2)) {
                    totalTypePoints += 200;
                }

                typeToCheck1 = typeAlreadyOwned1;
                typeToCheck2 = typeAlreadyOwned2;
                distinctTypeTracker |= (1 << typeToCheck1);
                distinctTypeTracker |= (1 << typeToCheck2);

                break;
            }
        }
    }

    for (; distinctTypeTracker != 0; distinctTypeTracker >>= 1) {
        if (distinctTypeTracker & 1) {
            totalTypePoints += 50;
        }
    }

    return totalTypePoints;
}

static u32 GetTimePoints(PalParkCatchingShowData *catchingShowData)
{
    return catchingShowData->timePoints;
}
