#ifndef POKEPLATINUM_SYSTEM_FLAGS_H
#define POKEPLATINUM_SYSTEM_FLAGS_H

#include "constants/savedata/vars_flags.h"
#include "consts/map.h"
#include "consts/pokemon.h"

#include "vars_flags.h"

enum HandleFlagOp {
    HANDLE_FLAG_CLEAR = 0,
    HANDLE_FLAG_SET,
    HANDLE_FLAG_CHECK,
};

void SystemFlag_SetBagAcquired(VarsFlags *varsFlags);
BOOL SystemFlag_CheckBagAcquired(VarsFlags *varsFlags);
void SystemFlag_SetGameCompleted(VarsFlags *varsFlags);
BOOL SystemFlag_CheckGameCompleted(VarsFlags *varsFlags);
void SystemFlag_SetHasPartner(VarsFlags *varsFlags);
void SystemFlag_ClearHasPartner(VarsFlags *varsFlags);
BOOL SystemFlag_CheckHasPartner(VarsFlags *varsFlags);
void SystemFlag_SetStep(VarsFlags *varsFlags);
void SystemFlag_ClearStep(VarsFlags *varsFlags);
BOOL SystemFlag_CheckStep(VarsFlags *varsFlags);
void SystemFlag_SetVsSeekerUsed(VarsFlags *varsFlags);
void SystemFlag_ClearVsSeekerUsed(VarsFlags *varsFlags);
BOOL SystemFlag_CheckVsSeekerUsed(VarsFlags *varsFlags);
void SystemFlag_SetEnteredUnderground(VarsFlags *varsFlags);
void SystemFlag_SetDiggingForFossils(VarsFlags *varsFlags);
void SystemFlag_SetSphereAcquired(VarsFlags *varsFlags);
void SystemFlag_SetCreatedSecretBase(VarsFlags *varsFlags);
void SystemFlag_SetDecoratedSecretBase(VarsFlags *varsFlags);
void SystemFlag_SetDeliveredStolenFlag(VarsFlags *varsFlags);
void SystemFlag_SetContestMaster(VarsFlags *varsFlags, enum PokemonContestType contestType);
BOOL SystemFlag_CheckContestMaster(VarsFlags *varsFlags, enum PokemonContestType contestType);
BOOL SystemFlag_CheckUnlockedVsSeekerLevel(VarsFlags *varsFlags, int level);
u16 SystemFlag_GetAltMusicForHeader(VarsFlags *varsFlags, enum MapHeader mapHeader);
void SystemFlag_SetCommunicationClubAccessible(VarsFlags *varsFlags);
void SystemFlag_ClearCommunicationClubAccessible(VarsFlags *varsFlags);
BOOL SystemFlag_CheckCommunicationClubAccessible(VarsFlags *varsFlags);
BOOL SystemFlag_CheckContestHallVisited(VarsFlags *varsFlags);
BOOL SystemFlag_CheckUndergroundFirstEntered(VarsFlags *varsFlags);
BOOL SystemFlag_CheckFreedGalacticHQPokemon(VarsFlags *varsFlags);
BOOL SystemFlag_CheckMetBebe(VarsFlags *varsFlags);
void SystemFlag_SetPoketchHidden(VarsFlags *varsFlags);
void SystemFlag_ClearPoketchHidden(VarsFlags *varsFlags);
BOOL SystemFlag_CheckPoketchHidden(VarsFlags *varsFlags);
void SystemFlag_SetSafariGameActive(VarsFlags *varsFlags);
void SystemFlag_ClearSafariGameActive(VarsFlags *varsFlags);
BOOL SystemFlag_CheckSafariGameActive(VarsFlags *varsFlags);
void SystemFlag_SetInPalPark(VarsFlags *varsFlags);
void SystemFlag_ClearInPalPark(VarsFlags *varsFlags);
BOOL SystemFlag_CheckInPalPark(VarsFlags *varsFlags);
void SystemFlag_CheckOnCyclingRoad(VarsFlags *varsFlags);
BOOL SystemFlag_HandleStrengthActive(VarsFlags *varsFlags, enum HandleFlagOp op);
void SystemFlag_SetFlashActive(VarsFlags *varsFlags);
void SystemFlag_ClearFlashActive(VarsFlags *varsFlags);
BOOL SystemFlag_CheckFlashActive(VarsFlags *varsFlags);
void SystemFlag_SetDefogActive(VarsFlags *varsFlags);
void SystemFlag_ClearDefogActive(VarsFlags *varsFlags);
BOOL SystemFlag_CheckDefogActive(VarsFlags *varsFlags);
BOOL SystemFlag_HandleForceBikingInGate(VarsFlags *varsFlags, enum HandleFlagOp op);
BOOL SystemFlag_HandleJournalAcquired(VarsFlags *varsFlags, enum HandleFlagOp op);
BOOL SystemFlag_HandleFirstArrivalToZone(VarsFlags *varsFlags, enum HandleFlagOp op, u32 firstArrival);
void SystemFlag_SetConnectedToWiFi(VarsFlags *varsFlags);
BOOL SystemFlag_HandleOwnsVillaFurniture(VarsFlags *varsFlags, enum HandleFlagOp op, enum VillaFurniture furniture);
void SystemFlag_ClearVillaVisitorInside(VarsFlags *varsFlags);
void SystemFlag_ClearVillaVisitorOutside(VarsFlags *varsFlags);
BOOL SystemFlag_HandleGiratinaAnimation(VarsFlags *varsFlags, enum HandleFlagOp op, enum GiratinaShadowAnimation anim);
BOOL SystemFlag_HandleDistortionWorldPuzzleFinished(VarsFlags *varsFlags, enum HandleFlagOp op);
BOOL SystemFlag_CheckDistortionWorldSteppingStones(VarsFlags *varsFlags);

#endif // POKEPLATINUM_SYSTEM_FLAGS_H
