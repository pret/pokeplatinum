#include "system_vars.h"

#include "constants/savedata/vars_flags.h"
#include "generated/map_headers.h"
#include "generated/species.h"

#include "struct_decls/struct_0203A790_decl.h"

#include "field_overworld_state.h"
#include "location.h"
#include "math.h"
#include "record_mixed_rng.h"
#include "savedata.h"
#include "system_flags.h"
#include "vars_flags.h"

static BOOL TrySetVarToValue(VarsFlags *varsFlags, u16 varID, u16 value);
static u16 TryGetVarValue(VarsFlags *varsFlags, u16 varID);
static int GetDistributionEventMagicNumber(int eventID);
static int GetHiddenLocationMagicNumber(int eventID);
static u8 CalcVillaVisitorIndex(VarsFlags *varsFlags);

static BOOL TrySetVarToValue(VarsFlags *varsFlags, u16 varID, u16 value)
{
    u16 *varAddress = VarsFlags_GetVarAddress(varsFlags, varID);
    if (varID < VARS_START || varID > SPECIAL_VARS_START) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (varAddress == NULL) {
        return FALSE;
    }

    *varAddress = value;
    return TRUE;
}

static u16 TryGetVarValue(VarsFlags *varsFlags, u16 varID)
{
    u16 *varAddress = VarsFlags_GetVarAddress(varsFlags, varID);
    if (varAddress == NULL) {
        return 0;
    }

    return *varAddress;
}

BOOL sub_0206B024(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (15 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B034(VarsFlags *param0)
{
    return TryGetVarValue(param0, (15 + (((0 + VARS_START) + 32) + 16)));
}

BOOL VarsFlags_SetPlayerStarterSpecies(VarsFlags *var, u16 species)
{
    return TrySetVarToValue(var, (0 + (((0 + VARS_START) + 32) + 16)), species);
}

u16 VarsFlags_GetPlayerStarterSpecies(VarsFlags *param0)
{
    return TryGetVarValue(param0, (0 + (((0 + VARS_START) + 32) + 16)));
}

u16 VarsFlags_GetRivalStarterSpecies(VarsFlags *vars)
{
    u16 rivalStarter;
    u16 playerStarter = TryGetVarValue(vars, (0 + (((0 + VARS_START) + 32) + 16)));

    if (playerStarter == SPECIES_TURTWIG) {
        rivalStarter = SPECIES_CHIMCHAR;
    } else if (playerStarter == SPECIES_CHIMCHAR) {
        rivalStarter = SPECIES_PIPLUP;
    } else {
        rivalStarter = SPECIES_TURTWIG;
    }

    return rivalStarter;
}

u16 VarsFlags_GetPlayerCounterpartStarterSpecies(VarsFlags *param0)
{
    u16 v0;
    u16 v1 = TryGetVarValue(param0, (0 + (((0 + VARS_START) + 32) + 16)));

    if (v1 == 387) {
        v0 = 393;
    } else if (v1 == 390) {
        v0 = 387;
    } else {
        v0 = 390;
    }

    return v0;
}

u16 sub_0206B0B4(VarsFlags *param0)
{
    return TryGetVarValue(param0, (5 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B0C4(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (5 + (((0 + VARS_START) + 32) + 16)), param1);
}

void VsSeeker_Reset(VarsFlags *param0)
{
    SystemFlag_ClearVsSeekerUsed(param0);
    VsSeeker_SetActiveStepCount(param0, 0);
}

u16 VsSeeker_GetBattery(VarsFlags *param0)
{
    return TryGetVarValue(param0, (3 + (((0 + VARS_START) + 32) + 16)));
}

BOOL VsSeeker_SetBattery(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (3 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 VsSeeker_GetActiveStepCount(VarsFlags *param0)
{
    return TryGetVarValue(param0, (4 + (((0 + VARS_START) + 32) + 16)));
}

BOOL VsSeeker_SetActiveStepCount(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (4 + (((0 + VARS_START) + 32) + 16)), param1);
}

static const u16 sDistributionEventMagicNumbers[] = {
    0x1209,
    0x1112,
    0x1123,
    0x1103,
};

static int GetDistributionEventMagicNumber(int eventID)
{
    GF_ASSERT(0 <= eventID && eventID < NELEMS(sDistributionEventMagicNumbers));
    return sDistributionEventMagicNumbers[eventID];
}

void sub_0206B144(VarsFlags *param0, int param1)
{
    TrySetVarToValue(param0, (19 + (((0 + VARS_START) + 32) + 16)) + param1, GetDistributionEventMagicNumber(param1));
}

BOOL sub_0206B16C(VarsFlags *param0, int param1)
{
    return TryGetVarValue(param0, (19 + (((0 + VARS_START) + 32) + 16)) + param1) == GetDistributionEventMagicNumber(param1);
}

static const u16 sHiddenLocationMagicNumbers[] = {
    0x0208,
    0x0229,
    0x0312,
    0x1028,
};

static int GetHiddenLocationMagicNumber(int eventID)
{
    GF_ASSERT(0 <= eventID && eventID < 4);
    return sHiddenLocationMagicNumbers[eventID];
}

void sub_0206B1B0(VarsFlags *param0, int param1)
{
    TrySetVarToValue(param0, (6 + (((0 + VARS_START) + 32) + 16)) + param1, GetHiddenLocationMagicNumber(param1));
}

void sub_0206B1D8(VarsFlags *param0, int param1)
{
    TrySetVarToValue(param0, (6 + (((0 + VARS_START) + 32) + 16)) + param1, 0);
}

BOOL VarFlags_HiddenLocationsUnlocked(VarsFlags *varFlags, int hiddenLocation)
{
    return TryGetVarValue(varFlags, (6 + (((0 + VARS_START) + 32) + 16)) + hiddenLocation) == GetHiddenLocationMagicNumber(hiddenLocation);
}

BOOL sub_0206B218(VarsFlags *param0)
{
    return TrySetVarToValue(param0, (10 + (((0 + VARS_START) + 32) + 16)), 0);
}

u16 sub_0206B228(VarsFlags *param0)
{
    return TryGetVarValue(param0, (10 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B238(VarsFlags *param0)
{
    u16 v0 = TryGetVarValue(param0, (10 + (((0 + VARS_START) + 32) + 16)));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return TrySetVarToValue(param0, (10 + (((0 + VARS_START) + 32) + 16)), v0);
}

u16 sub_0206B260(VarsFlags *param0)
{
    return TryGetVarValue(param0, (11 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B270(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (11 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B280(VarsFlags *param0, u32 param1)
{
    u16 v1 = (param1 >> 16) & 0xffff;
    u16 v0 = param1 & 0xffff;
    TrySetVarToValue(param0, (12 + (((0 + VARS_START) + 32) + 16)), v0);
    TrySetVarToValue(param0, (12 + (((0 + VARS_START) + 32) + 16)), v1);
}

u32 sub_0206B2A4(VarsFlags *param0)
{
    u16 v0 = TryGetVarValue(param0, (12 + (((0 + VARS_START) + 32) + 16)));
    u16 v1 = TryGetVarValue(param0, (13 + (((0 + VARS_START) + 32) + 16)));

    return (v1 << 16) | v0;
}

void sub_0206B2C8(VarsFlags *param0)
{
    u16 v0 = LCRNG_Next();
    u16 v1 = LCRNG_Next();

    sub_0206B280(param0, (v1 << 16) | v0);
}

void sub_0206B2E4(SaveData *param0, u16 param1)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0);
    u32 v1 = RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(param0)) * 1103515245L + 12345;

    sub_0206B280(v0, v1);
}

u16 sub_0206B314(VarsFlags *param0)
{
    return TryGetVarValue(param0, (17 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B324(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (17 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B334(SaveData *param0)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0);
    u32 v1 = (LCRNG_Next() % 98) + 2;
    sub_0206B324(v0, v1);
}

u16 sub_0206B354(VarsFlags *param0)
{
    return TryGetVarValue(param0, (14 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B364(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (14 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B374(VarsFlags *param0)
{
    return TryGetVarValue(param0, (25 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B384(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (25 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B394(VarsFlags *param0)
{
    return TryGetVarValue(param0, (16 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B3A4(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (16 + (((0 + VARS_START) + 32) + 16)), param1);
}

BOOL sub_0206B3B4(VarsFlags *param0)
{
    u16 v0 = TryGetVarValue(param0, (18 + (((0 + VARS_START) + 32) + 16)));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return TrySetVarToValue(param0, (18 + (((0 + VARS_START) + 32) + 16)), v0);
}

u16 sub_0206B3DC(VarsFlags *param0)
{
    return TryGetVarValue(param0, (18 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B3EC(VarsFlags *param0)
{
    return TryGetVarValue(param0, (36 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B3FC(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (36 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B40C(VarsFlags *param0)
{
    return TryGetVarValue(param0, (23 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B41C(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (23 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B42C(VarsFlags *param0)
{
    return TryGetVarValue(param0, (24 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B43C(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (24 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B44C(VarsFlags *param0)
{
    return TryGetVarValue(param0, (26 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B45C(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (26 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B46C(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (27 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B47C(VarsFlags *param0)
{
    return TryGetVarValue(param0, (27 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B48C(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (29 + (((0 + VARS_START) + 32) + 16)), (param1 + 1));
}

static const u8 sVillaVisitorPercentChances[] = {
    25,
    75,
    90,
};

static const u8 sNumPossibleVillaVisitors[] = {
    4,
    12,
    15,
};

static u8 CalcVillaVisitorIndex(VarsFlags *varsFlags)
{
    // must pre-declare to match
    int i;
    u16 ownedFurniturePieces = 0, rngPercent, index;

    for (i = 0; i < VILLA_FURNITURE_MAX; i++) {
        if (SystemFlag_HandleOwnsVillaFurniture(varsFlags, HANDLE_FLAG_CHECK, i) == TRUE) {
            ownedFurniturePieces++;
        }
    }

    if (ownedFurniturePieces >= 12) {
        index = 2;
    } else if (ownedFurniturePieces >= 8) {
        index = 1;
    } else {
        index = 0;
    }

    rngPercent = (LCRNG_Next() % 100);
    if (rngPercent > sVillaVisitorPercentChances[index]) {
        return 0xFF;
    }

    rngPercent = (LCRNG_Next() % sNumPossibleVillaVisitors[index]);
    return rngPercent;
}

void sub_0206B514(SaveData *param0)
{
    VarsFlags *v1 = SaveData_GetVarsFlags(param0);
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(param0);
    Location *location = FieldOverworldState_GetPlayerLocation(fieldState);

    if ((location->mapId != MAP_HEADER_RESORT_AREA) && (location->mapId != MAP_HEADER_VILLA)) {
        SystemFlag_ClearVillaVisitorInside(v1);
        SystemFlag_ClearVillaVisitorOutside(v1);
        sub_0206B558(v1, CalcVillaVisitorIndex(v1));
    }

    return;
}

void sub_0206B558(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (30 + (((0 + VARS_START) + 32) + 16)), param1);
    TrySetVarToValue(param0, (42 + (((0 + VARS_START) + 32) + 16)), (LCRNG_Next() % 5));
}

u16 sub_0206B588(VarsFlags *param0)
{
    return TryGetVarValue(param0, (32 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B598(VarsFlags *param0)
{
    return TryGetVarValue(param0, (33 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5A8(VarsFlags *param0)
{
    return TryGetVarValue(param0, (34 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5B8(VarsFlags *param0)
{
    return TryGetVarValue(param0, (35 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5C8(VarsFlags *param0)
{
    return TryGetVarValue(param0, (31 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5D8(VarsFlags *param0)
{
    return TryGetVarValue(param0, (37 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B5E8(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (37 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B5F8(VarsFlags *param0)
{
    return TryGetVarValue(param0, (38 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B608(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (38 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B618(VarsFlags *param0)
{
    return TryGetVarValue(param0, (39 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B628(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (39 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B638(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (40 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B648(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (41 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B658(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (46 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B668(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (47 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B678(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (48 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B688(VarsFlags *param0, u16 param1, u16 param2)
{
    switch (param1) {
    case 481:
        sub_0206B648(param0, param2);
        break;
    case 488:
        sub_0206B638(param0, param2);
        break;
    case 146:
        sub_0206B658(param0, param2);
        break;
    case 145:
        sub_0206B668(param0, param2);
        break;
    case 144:
        sub_0206B678(param0, param2);
        break;
    }

    return;
}

u16 sub_0206B6DC(VarsFlags *param0)
{
    return TryGetVarValue(param0, (43 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B6EC(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (43 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B6FC(VarsFlags *param0)
{
    return TryGetVarValue(param0, (52 + (((0 + VARS_START) + 32) + 16)));
}
