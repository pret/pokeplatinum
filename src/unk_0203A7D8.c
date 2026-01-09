#include "unk_0203A7D8.h"

#include <nitro.h>
#include <string.h>

#include "generated/first_arrival_to_zones.h"

#include "field/field_system.h"

#include "inlines.h"
#include "location.h"
#include "system_flags.h"
#include "vars_flags.h"

typedef struct {
    u16 whiteOutMapId;
    u16 whiteOutX;
    u16 whiteOutZ;
    u16 flyMapId;
    u16 flyX;
    u16 flyZ;
    u8 unk_0C;
    u8 unk_0D;
    u16 firstArrival;
} UnkStruct_020E97B4;

static const UnkStruct_020E97B4 sSpawnLocations[] = {
    { MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0x8, 0x8, MAP_HEADER_TWINLEAF_TOWN, 0x74, 0x376, 0x1, 0x1, FIRST_ARRIVAL_TWINLEAF_TOWN },
    { MAP_HEADER_SANDGEM_TOWN_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_SANDGEM_TOWN, 0xB1, 0x34B, 0x1, 0x1, FIRST_ARRIVAL_SANDGEM_TOWN },
    { MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_FLOAROMA_TOWN, 0xB0, 0x29B, 0x1, 0x1, FIRST_ARRIVAL_FLOAROMA_TOWN },
    { MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_SOLACEON_TOWN, 0x236, 0x291, 0x1, 0x1, FIRST_ARRIVAL_SOLACEON_TOWN },
    { MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_CELESTIC_TOWN, 0x1D8, 0x21B, 0x1, 0x1, FIRST_ARRIVAL_CELESTIC_TOWN },
    { MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_JUBILIFE_CITY, 0xB4, 0x309, 0x1, 0x1, FIRST_ARRIVAL_JUBILIFE_CITY },
    { MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_CANALAVE_CITY, 0x3A, 0x2D3, 0x1, 0x1, FIRST_ARRIVAL_CANALAVE_CITY },
    { MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_OREBURGH_CITY, 0x12F, 0x2F5, 0x1, 0x1, FIRST_ARRIVAL_OREBURGH_CITY },
    { MAP_HEADER_ETERNA_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_ETERNA_CITY, 0x131, 0x213, 0x1, 0x1, FIRST_ARRIVAL_ETERNA_CITY },
    { MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_HEARTHOME_CITY, 0x1D1, 0x2BA, 0x1, 0x1, FIRST_ARRIVAL_HEARTHOME_CITY },
    { MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_PASTORIA_CITY, 0x258, 0x330, 0x1, 0x1, FIRST_ARRIVAL_PASTORIA_CITY },
    { MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_VEILSTONE_CITY, 0x2CD, 0x264, 0x1, 0x1, FIRST_ARRIVAL_VEILSTONE_CITY },
    { MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_SUNYSHORE_CITY, 0x35C, 0x311, 0x1, 0x1, FIRST_ARRIVAL_SUNYSHORE_CITY },
    { MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_SNOWPOINT_CITY, 0x17B, 0xEA, 0x1, 0x1, FIRST_ARRIVAL_SNOWPOINT_CITY },
    { MAP_HEADER_POKEMON_LEAGUE_SOUTH_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_POKEMON_LEAGUE, 0x34A, 0x257, 0x1, 0x0, FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD },
    { MAP_HEADER_FIGHT_AREA_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_FIGHT_AREA, 0x287, 0x1AE, 0x1, 0x1, FIRST_ARRIVAL_FIGHT_AREA },
    { MAP_HEADER_SURVIVAL_AREA_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_SURVIVAL_AREA, 0x293, 0x153, 0x1, 0x1, FIRST_ARRIVAL_SURVIVAL_AREA },
    { MAP_HEADER_RESORT_AREA_POKECENTER_1F, 0x8, 0x6, MAP_HEADER_RESORT_AREA, 0x322, 0x1D9, 0x1, 0x1, FIRST_ARRIVAL_RESORT_AREA },
    { MAP_HEADER_PAL_PARK_LOBBY, 0x8, 0x6, MAP_HEADER_ROUTE_221, 0x132, 0x38E, 0x0, 0x0, FIRST_ARRIVAL_ROUTE_221 },
    { MAP_HEADER_POKEMON_LEAGUE_NORTH_POKECENTER_1F, 0x4, 0x3, MAP_HEADER_POKEMON_LEAGUE, 0x34F, 0x230, 0x1, 0x0, FIRST_ARRIVAL_POKEMON_LEAGUE }
};

static int MapSpawnIdToIndex(int spawnDestination)
{
    if ((spawnDestination <= 0) || (spawnDestination > NELEMS(sSpawnLocations))) {
        GF_ASSERT(FALSE);
        spawnDestination = 1;
    }

    spawnDestination--;
    return spawnDestination;
}

int FieldOverworldState_GetDefaultWarpID(void)
{
    return 1;
}

void Location_InitFly(int flyDestination, Location *location)
{
    flyDestination = MapSpawnIdToIndex(flyDestination);

    location->mapId = sSpawnLocations[flyDestination].flyMapId;
    location->warpId = WARP_ID_NONE;
    location->x = sSpawnLocations[flyDestination].flyX;
    location->z = sSpawnLocations[flyDestination].flyZ;
    location->faceDirection = FACE_DOWN;
}

void Location_InitWhiteOut(int whiteOutDestination, Location *location)
{
    whiteOutDestination = MapSpawnIdToIndex(whiteOutDestination);

    location->mapId = sSpawnLocations[whiteOutDestination].whiteOutMapId;
    location->warpId = WARP_ID_NONE;
    location->x = sSpawnLocations[whiteOutDestination].whiteOutX;
    location->z = sSpawnLocations[whiteOutDestination].whiteOutZ;
    location->faceDirection = FACE_UP;
}

int sub_0203A858(int param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(sSpawnLocations); v0++) {
        if ((sSpawnLocations[v0].whiteOutMapId == param0) && sSpawnLocations[v0].unk_0C) {
            return v0 + 1;
        }
    }

    return 0;
}

int sub_0203A87C(int param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(sSpawnLocations); v0++) {
        if ((sSpawnLocations[v0].flyMapId == param0) && sSpawnLocations[v0].unk_0C) {
            return v0 + 1;
        }
    }

    return 0;
}

int sub_0203A8A0(int mapID, int param1, int param2)
{
    int i;
    int v1 = param1 / 32;
    int v2 = param2 / 32;
    int destinationId = 0;

    for (i = 0; i < NELEMS(sSpawnLocations); i++) {
        if (sSpawnLocations[i].flyMapId == mapID) {
            destinationId = i + 1;

            if ((v1 == sSpawnLocations[i].flyX / 32) && (v2 == sSpawnLocations[i].flyZ / 32)) {
                return destinationId;
            }
        }
    }

    return destinationId;
}

void sub_0203A8E8(FieldSystem *fieldSystem, int param1)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(sSpawnLocations); v0++) {
        if ((sSpawnLocations[v0].flyMapId == param1) && sSpawnLocations[v0].unk_0D) {
            SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_SET, sSpawnLocations[v0].firstArrival);
            return;
        }
    }
}

BOOL sub_0203A920(FieldSystem *fieldSystem, int param1)
{
    int v0 = MapSpawnIdToIndex(param1);
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, sSpawnLocations[v0].firstArrival);
}
