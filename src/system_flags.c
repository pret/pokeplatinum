#include "system_flags.h"

#include "constants/savedata/vars_flags.h"
#include "generated/first_arrival_to_zones.h"
#include "generated/map_headers.h"
#include "generated/pokemon_contest_types.h"
#include "generated/sdat.h"

#include "rtc.h"
#include "vars_flags.h"

static void SetFlag(VarsFlags *varsFlags, u16 flagID);
static void ClearFlag(VarsFlags *varsFlags, u16 flagID);
static BOOL CheckFlag(VarsFlags *varsFlags, u16 flagID);
static BOOL HandleFlag(VarsFlags *varsFlags, enum HandleFlagOp op, u32 flagID);

static void SetFlag(VarsFlags *varsFlags, u16 flagID)
{
    VarsFlags_SetFlag(varsFlags, flagID);
}

static void ClearFlag(VarsFlags *varsFlags, u16 flagID)
{
    VarsFlags_ClearFlag(varsFlags, flagID);
}

static BOOL CheckFlag(VarsFlags *varsFlags, u16 flagID)
{
    return VarsFlags_CheckFlag(varsFlags, flagID);
}

static BOOL HandleFlag(VarsFlags *varsFlags, enum HandleFlagOp op, u32 flagID)
{
    switch (op) {
    case HANDLE_FLAG_SET:
        SetFlag(varsFlags, flagID);
        break;

    case HANDLE_FLAG_CLEAR:
        ClearFlag(varsFlags, flagID);
        break;

    case HANDLE_FLAG_CHECK:
        return CheckFlag(varsFlags, flagID);

    default:
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

void SystemFlag_SetBagAcquired(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_BAG_ACQUIRED);
}

BOOL SystemFlag_CheckBagAcquired(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_BAG_ACQUIRED);
}

void SystemFlag_SetGameCompleted(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_GAME_COMPLETED);
}

BOOL SystemFlag_CheckGameCompleted(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_GAME_COMPLETED);
}

void SystemFlag_SetHasPartner(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_HAS_PARTNER);
}

void SystemFlag_ClearHasPartner(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_HAS_PARTNER);
}

BOOL SystemFlag_CheckHasPartner(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_HAS_PARTNER);
}

void SystemFlag_SetStep(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_STEP);
}

void SystemFlag_ClearStep(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_STEP);
}

BOOL SystemFlag_CheckStep(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_STEP);
}

void SystemFlag_SetVsSeekerUsed(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_VS_SEEKER_USED);
}

void SystemFlag_ClearVsSeekerUsed(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_VS_SEEKER_USED);
}

BOOL SystemFlag_CheckVsSeekerUsed(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_VS_SEEKER_USED);
}

void SystemFlag_SetEnteredUnderground(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_ENTERED_UNDERGROUND);
}

void SystemFlag_SetDiggingForFossils(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_DIGGING_FOR_FOSSILS);
}

void SystemFlag_SetSphereAcquired(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_SPHERE_ACQUIRED);
}

void SystemFlag_SetCreatedSecretBase(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_CREATED_SECRET_BASE);
}

void SystemFlag_SetDecoratedSecretBase(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_DECORATED_SECRET_BASE);
}

void SystemFlag_SetDeliveredStolenFlag(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_DELIVERED_STOLEN_FLAG);
}

void SystemFlag_SetContestMaster(VarsFlags *varsFlags, enum PokemonContestType contestType)
{
    switch (contestType) {
    case CONTEST_TYPE_COOL:
        SetFlag(varsFlags, FLAG_CONTEST_MASTER_COOL);
        break;

    case CONTEST_TYPE_CUTE:
        SetFlag(varsFlags, FLAG_CONTEST_MASTER_CUTE);
        break;

    case CONTEST_TYPE_BEAUTY:
        SetFlag(varsFlags, FLAG_CONTEST_MASTER_BEAUTY);
        break;

    case CONTEST_TYPE_SMART:
        SetFlag(varsFlags, FLAG_CONTEST_MASTER_SMART);
        break;

    case CONTEST_TYPE_TOUGH:
        SetFlag(varsFlags, FLAG_CONTEST_MASTER_TOUGH);
        break;
    }
}

BOOL SystemFlag_CheckContestMaster(VarsFlags *varsFlags, enum PokemonContestType contestType)
{
    BOOL result;
    switch (contestType) {
    case CONTEST_TYPE_COOL:
        result = CheckFlag(varsFlags, FLAG_CONTEST_MASTER_COOL);
        break;

    case CONTEST_TYPE_CUTE:
        result = CheckFlag(varsFlags, FLAG_CONTEST_MASTER_CUTE);
        break;

    case CONTEST_TYPE_BEAUTY:
        result = CheckFlag(varsFlags, FLAG_CONTEST_MASTER_BEAUTY);
        break;

    case CONTEST_TYPE_SMART:
        result = CheckFlag(varsFlags, FLAG_CONTEST_MASTER_SMART);
        break;

    case CONTEST_TYPE_TOUGH:
        result = CheckFlag(varsFlags, FLAG_CONTEST_MASTER_TOUGH);
        break;
    }

    return result;
}

BOOL SystemFlag_CheckUnlockedVsSeekerLevel(VarsFlags *varsFlags, int level)
{
    BOOL result = FALSE;

    switch (level) {
    case 1:
        result = CheckFlag(varsFlags, FLAG_UNLOCKED_VS_SEEKER_LVL_1);
        break;

    case 2:
        result = CheckFlag(varsFlags, FLAG_UNLOCKED_VS_SEEKER_LVL_2);
        break;

    case 3:
        result = CheckFlag(varsFlags, FLAG_UNLOCKED_VS_SEEKER_LVL_3);
        break;

    case 4:
        result = CheckFlag(varsFlags, FLAG_UNLOCKED_VS_SEEKER_LVL_4);
        break;

    case 5:
        result = CheckFlag(varsFlags, FLAG_UNLOCKED_VS_SEEKER_LVL_5);
        break;
    }

    return result;
}

u16 SystemFlag_GetAltMusicForHeader(VarsFlags *varsFlags, enum MapHeader mapHeader)
{
    u16 sdatID = 0;
    switch (mapHeader) {
    case MAP_HEADER_LAKE_VALOR_DRAINED:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_LAKE_VALOR) == TRUE) {
            sdatID = SEQ_D_LAKE;
        }
        break;

    case MAP_HEADER_VALOR_CAVERN:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_LAKE_VALOR) == TRUE) {
            sdatID = SEQ_D_RYAYHY;
        }
        break;

    case MAP_HEADER_LAKE_VERITY:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_LAKE_VERITY) == TRUE) {
            sdatID = SEQ_D_LAKE;
        }
        break;

    case MAP_HEADER_LAKE_ACUITY:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_LAKE_ACUITY) == TRUE) {
            sdatID = SEQ_D_LAKE;
        }
        break;

    case MAP_HEADER_PAL_PARK:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_PAL_PARK) == TRUE) {
            sdatID = SEQ_D_SAFARI;
        }
        break;

    case MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_ROWANS_LAB) == TRUE) {
            sdatID = SEQ_OPENING2;
        }
        break;

    case MAP_HEADER_GALACTIC_HQ_1F:
    case MAP_HEADER_GALACTIC_HQ_2F:
    case MAP_HEADER_GALACTIC_HQ_3F:
    case MAP_HEADER_GALACTIC_HQ_4F:
    case MAP_HEADER_GALACTIC_HQ_B1F:
    case MAP_HEADER_GALACTIC_HQ_B2F:
    case MAP_HEADER_GALACTIC_HQ_CONTROL_ROOM:
    case MAP_HEADER_GALACTIC_HQ_LABORATORY:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_GALACTIC_HQ) == TRUE) {
            if (!IsNight()) {
                sdatID = SEQ_CITY07_D;
            } else {
                sdatID = SEQ_CITY07_N;
            }
            break;
        }

        if (mapHeader == MAP_HEADER_GALACTIC_HQ_1F) {
            if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_GALACTIC_HQ_1F) == TRUE) {
                sdatID = SEQ_D_AGITO;
            }
        }
        break;

    case MAP_HEADER_TEAM_GALACTIC_ETERNA_BUILDING_1F:
    case MAP_HEADER_TEAM_GALACTIC_ETERNA_BUILDING_2F:
    case MAP_HEADER_TEAM_GALACTIC_ETERNA_BUILDING_3F:
    case MAP_HEADER_TEAM_GALACTIC_ETERNA_BUILDING_4F:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_GALACTIC_ETERNA_BUILDING) == TRUE) {
            if (!IsNight()) {
                sdatID = SEQ_CITY04_D;
            } else {
                sdatID = SEQ_CITY04_N;
            }
        }
        break;

    case MAP_HEADER_VALLEY_WINDWORKS_BUILDING:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_VALLEY_WINDWORKS_BUILDING) == TRUE) {
            if (!IsNight()) {
                sdatID = SEQ_ROAD_C_D;
            } else {
                sdatID = SEQ_ROAD_C_N;
            }
        }
        break;

    case MAP_HEADER_FLOAROMA_MEADOW:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_FLOAROMA_MEADOW) == TRUE) {
            if (!IsNight()) {
                sdatID = SEQ_TOWN03_D;
            } else {
                sdatID = SEQ_TOWN03_N;
            }
        }
        break;

    case MAP_HEADER_ROUTE_224:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_ROUTE_224) == TRUE) {
            if (!IsNight()) {
                sdatID = SEQ_TOWN03_D;
            } else {
                sdatID = SEQ_TOWN03_N;
            }
        }
        break;

    case MAP_HEADER_POKEMON_LEAGUE_CHAMPION_ROOM:
        if (CheckFlag(varsFlags, FLAG_ALT_MUSIC_CHAMPION_ROOM) == TRUE) {
            sdatID = SEQ_SILENCE_FIELD;
        }
        break;

    default:
        break;
    }

    return sdatID;
}

void SystemFlag_SetCommunicationClubAccessible(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_COMMUNICATION_CLUB_ACCESSIBLE);
    return;
}

void SystemFlag_ClearCommunicationClubAccessible(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_COMMUNICATION_CLUB_ACCESSIBLE);
    return;
}

BOOL SystemFlag_CheckCommunicationClubAccessible(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_COMMUNICATION_CLUB_ACCESSIBLE);
}

BOOL SystemFlag_CheckContestHallVisited(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_CONTEST_HALL_VISITED);
}

BOOL SystemFlag_CheckUndergroundFirstEntered(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_UNDERGROUND_FIRST_ENTERED);
}

BOOL SystemFlag_CheckFreedGalacticHQPokemon(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_FREED_GALACTIC_HQ_POKEMON);
}

BOOL SystemFlag_CheckMetBebe(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_MET_BEBE);
}

void SystemFlag_SetPoketchHidden(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_POKETCH_HIDDEN);
}

void SystemFlag_ClearPoketchHidden(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_POKETCH_HIDDEN);
}

BOOL SystemFlag_CheckPoketchHidden(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_POKETCH_HIDDEN);
}

void SystemFlag_SetSafariGameActive(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_SAFARI_GAME_ACTIVE);
}

void SystemFlag_ClearSafariGameActive(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_SAFARI_GAME_ACTIVE);
}

BOOL SystemFlag_CheckSafariGameActive(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_SAFARI_GAME_ACTIVE);
}

void SystemFlag_SetInPalPark(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_IN_PAL_PARK);
}

void SystemFlag_ClearInPalPark(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_IN_PAL_PARK);
}

BOOL SystemFlag_CheckInPalPark(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_IN_PAL_PARK);
}

void SystemFlag_CheckOnCyclingRoad(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_ON_CYCLING_ROAD);
}

BOOL SystemFlag_HandleStrengthActive(VarsFlags *varsFlags, enum HandleFlagOp op)
{
    return HandleFlag(varsFlags, op, FLAG_STRENGTH_ACTIVE);
}

void SystemFlag_SetFlashActive(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_FLASH_ACTIVE);
}

void SystemFlag_ClearFlashActive(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_FLASH_ACTIVE);
}

BOOL SystemFlag_CheckFlashActive(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_FLASH_ACTIVE);
}

void SystemFlag_SetDefogActive(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_DEFOG_ACTIVE);
}

void SystemFlag_ClearDefogActive(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_DEFOG_ACTIVE);
}

BOOL SystemFlag_CheckDefogActive(VarsFlags *varsFlags)
{
    return CheckFlag(varsFlags, FLAG_DEFOG_ACTIVE);
}

BOOL SystemFlag_HandleForceBikingInGate(VarsFlags *varsFlags, enum HandleFlagOp op)
{
    return HandleFlag(varsFlags, op, FLAG_FORCE_BIKING_IN_GATE);
}

BOOL SystemFlag_HandleJournalAcquired(VarsFlags *varsFlags, enum HandleFlagOp op)
{
    return HandleFlag(varsFlags, op, FLAG_JOURNAL_ACQUIRED);
}

BOOL SystemFlag_HandleFirstArrivalToZone(VarsFlags *varsFlags, enum HandleFlagOp op, u32 firstArrival)
{
    GF_ASSERT(firstArrival < FIRST_ARRIVAL_MAX);
    return HandleFlag(varsFlags, op, SYSTEM_FLAGS_FIRST_ARRIVAL_TO_ZONE + firstArrival);
}

void SystemFlag_SetConnectedToWiFi(VarsFlags *varsFlags)
{
    SetFlag(varsFlags, FLAG_CONNECTED_TO_WIFI);
}

BOOL SystemFlag_HandleOwnsVillaFurniture(VarsFlags *varsFlags, enum HandleFlagOp op, enum VillaFurniture furniture)
{
    GF_ASSERT(furniture < VILLA_FURNITURE_MAX);
    return HandleFlag(varsFlags, op, FLAG_VILLA_FURNITURE_UNK_00 + furniture);
}

void SystemFlag_ClearVillaVisitorInside(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_VILLA_VISITOR_INSIDE);
}

void SystemFlag_ClearVillaVisitorOutside(VarsFlags *varsFlags)
{
    ClearFlag(varsFlags, FLAG_VILLA_VISITOR_OUTSIDE);
}

BOOL SystemFlag_HandleGiratinaAnimation(VarsFlags *varsFlags, enum HandleFlagOp op, enum GiratinaShadowAnimation anim)
{
    return HandleFlag(varsFlags, op, FLAG_DISTORTION_WORLD_GIRATINA_SHADOW_1 + anim);
}

BOOL SystemFlag_HandleDistortionWorldPuzzleFinished(VarsFlags *varsFlags, enum HandleFlagOp op)
{
    return HandleFlag(varsFlags, op, FLAG_DISTORTION_WORLD_PUZZLE_FINISHED);
}

BOOL SystemFlag_CheckDistortionWorldSteppingStones(VarsFlags *varsFlags)
{
    return HandleFlag(varsFlags, HANDLE_FLAG_CHECK, FLAG_DISTORTION_WORLD_STEPPING_STONES);
}
