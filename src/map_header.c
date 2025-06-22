#include "map_header.h"

#include "generated/map_headers.h"

#include "data/map_headers.h"

u32 MapHeader_IDBoundsCheck(u32 headerID)
{
    if (headerID >= NELEMS(sMapHeaders)) {
        GF_ASSERT(FALSE);
        return 3;
    }

    return headerID;
}

const u16 MapHeader_GetAreaDataArchiveID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].areaDataArchiveID;
}

const u16 sub_0203A04C(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].unk_01;
}

const u16 MapHeader_GetMapMatrixID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    u16 mapMatrixID = sMapHeaders[headerID].mapMatrixID;

    if (mapMatrixID == 22 && gGameVersion == VERSION_PEARL) {
        mapMatrixID = 23;
    }

    return mapMatrixID;
}

u32 MapHeader_GetMsgArchiveID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].msgArchiveID;
}

u32 MapHeader_GetScriptsArchiveID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].scriptsArchiveID;
}

u32 MapHeader_GetInitScriptsArchiveID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].initScriptsArchiveID;
}

u16 MapHeader_GetDayMusicID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].dayMusicID;
}

u16 MapHeader_GetNightMusicID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].nightMusicID;
}

BOOL MapHeader_HasWildEncounters(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].wildEncountersArchiveID != 65535;
}

u32 MapHeader_GetWildEncountersArchiveID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].wildEncountersArchiveID;
}

u32 MapHeader_GetEventsArchiveID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].eventsArchiveID;
}

u32 MapHeader_GetMapLabelTextID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].mapLabelTextID;
}

u8 MapHeader_GetMapLabelWindowID(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].mapLabelWindowID;
}

u32 MapHeader_GetWeatherType(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].weather;
}

u32 MapHeader_GetCameraType(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].cameraType;
}

enum BattleBackground MapHeader_GetBattleBG(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].battleBG;
}

BOOL MapHeader_IsEscapeRopeAllowed(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].isEscapeRopeAllowed;
}

BOOL MapHeader_IsFlyAllowed(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].isFlyAllowed;
}

BOOL MapHeader_IsBikeAllowed(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].isBikeAllowed;
}

u32 MapHeader_GetMapType(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].mapType;
}

BOOL MapHeader_IsTeleportAllowed(u32 headerID)
{
    if (MapHeader_IsFlyAllowed(headerID) == FALSE) {
        return FALSE;
    }

    return MapHeader_GetMapType(headerID) != 1;
}

BOOL MapHeader_IsOnMainMatrix(u32 headerID)
{
    return MapHeader_GetMapMatrixID(headerID) == 0;
}

BOOL MapHeader_IsPokemonCenter(u32 headerID)
{
    return MapHeader_GetMapType(headerID) == 5;
}

BOOL MapHeader_IsCave(u32 headerID)
{
    return MapHeader_GetMapType(headerID) == 3;
}

BOOL MapHeader_IsBuilding(u32 headerID)
{
    return (MapHeader_GetMapType(headerID) == 4) || (MapHeader_GetMapType(headerID) == 5);
}

BOOL MapHeader_IsOutdoors(u32 headerID)
{
    return (MapHeader_GetMapType(headerID) == 1) || (MapHeader_GetMapType(headerID) == 2);
}

BOOL sub_0203A2C8(u32 headerID)
{
    if (MapHeader_IsPokemonCenter(headerID)) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsUnionRoom(const u32 headerID)
{
    return headerID == MAP_HEADER_UNION_ROOM;
}

BOOL MapHeader_HasFeebasTiles(const u32 headerID)
{
    return headerID == MAP_HEADER_MT_CORONET_B1F;
}

BOOL MapHeader_IsTrophyGarden(const u32 headerID)
{
    return headerID == MAP_HEADER_TROPHY_GARDEN;
}

BOOL MapHeader_IsAmitySquare(const u32 headerID)
{
    return headerID == MAP_HEADER_AMITY_SQUARE;
}

BOOL MapHeader_IsAzureFluteAllowed(const u32 headerID)
{
    if (headerID == MAP_HEADER_SPEAR_PILLAR || headerID == MAP_HEADER_SPEAR_PILLAR_DIALGA || headerID == MAP_HEADER_SPEAR_PILLAR_PALKIA) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsPokemonCenter2F(const u32 headerID)
{
    static const u16 pokecenters2F[] = {
        MAP_HEADER_SANDGEM_TOWN_POKECENTER_2F,
        MAP_HEADER_FLOAROMA_TOWN_POKECENTER_2F,
        MAP_HEADER_SOLACEON_TOWN_POKECENTER_2F,
        MAP_HEADER_CELESTIC_TOWN_POKECENTER_2F,
        MAP_HEADER_SURVIVAL_AREA_POKECENTER_2F,
        MAP_HEADER_RESORT_AREA_POKECENTER_2F,
        MAP_HEADER_JUBILIFE_CITY_POKECENTER_2F,
        MAP_HEADER_CANALAVE_CITY_POKECENTER_2F,
        MAP_HEADER_OREBURGH_CITY_POKECENTER_2F,
        MAP_HEADER_POKEMON_LEAGUE_NORTH_POKECENTER_2F,
        MAP_HEADER_ETERNA_CITY_POKECENTER_2F,
        MAP_HEADER_HEARTHOME_CITY_POKECENTER_2F,
        MAP_HEADER_PASTORIA_CITY_POKECENTER_2F,
        MAP_HEADER_VEILSTONE_CITY_POKECENTER_2F,
        MAP_HEADER_SUNYSHORE_CITY_POKECENTER_2F,
        MAP_HEADER_SNOWPOINT_CITY_POKECENTER_2F,
        MAP_HEADER_POKEMON_LEAGUE_SOUTH_POKECENTER_2F,
        MAP_HEADER_FIGHT_AREA_POKECENTER_2F
    };
    int i;

    for (i = 0; i < NELEMS(pokecenters2F); i++) {
        if (headerID == pokecenters2F[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

enum EvolutionMethod MapHeader_GetMapEvolutionMethod(u32 headerID)
{
    static const u16 mapEvolutionMethods[] = {
        MAP_HEADER_ROUTE_217,
        EVO_LEVEL_ICE_ROCK,
        MAP_HEADER_ETERNA_FOREST,
        EVO_LEVEL_MOSS_ROCK,
        MAP_HEADER_MT_CORONET_1F_SOUTH,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_2F,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_3F,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_OUTSIDE_NORTH,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_OUTSIDE_SOUTH,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_4F_ROOMS_1_AND_2,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_4F_ROOM_3,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_5F,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_6F,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_1F_TUNNEL_ROOM,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_1F_NORTH_ROOM_2,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_1F_NORTH_ROOM_1,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_MT_CORONET_B1F,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_SPEAR_PILLAR,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_SPEAR_PILLAR_DISTORTED,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_HALL_OF_ORIGIN,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_UNKNOWN_511,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_SPEAR_PILLAR_DIALGA,
        EVO_LEVEL_MAGNETIC_FIELD,
        MAP_HEADER_SPEAR_PILLAR_PALKIA,
        EVO_LEVEL_MAGNETIC_FIELD
    };

    for (int i = 0; i < NELEMS(mapEvolutionMethods); i += 2) {
        if (mapEvolutionMethods[i] == headerID) {
            return mapEvolutionMethods[i + 1];
        }
    }

    return EVO_NONE;
}
