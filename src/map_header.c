#include "map_header.h"

#include "constants/versions.h"
#include "generated/map_headers.h"

#include "data/map_headers.h"

enum MapHeaderID MapHeader_IDBoundsCheck(enum MapHeaderID mapHeaderID)
{
    if (mapHeaderID >= NELEMS(sMapHeaders)) {
        GF_ASSERT(FALSE);
        return MAP_HEADER_JUBILIFE_CITY;
    }

    return mapHeaderID;
}

u16 MapHeader_GetAreaDataArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].areaDataArchiveID;
}

u16 MapHeader_GetPreloadedMapObjectsArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].preloadedMapObjectsArchiveID;
}

u16 MapHeader_GetMapMatrixID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    u16 mapMatrixID = sMapHeaders[mapHeaderID].mapMatrixID;

    if (mapMatrixID == 22 && gGameVersion == VERSION_PEARL) {
        mapMatrixID = 23;
    }

    return mapMatrixID;
}

u32 MapHeader_GetMsgArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].msgArchiveID;
}

u32 MapHeader_GetScriptsArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].scriptsArchiveID;
}

u32 MapHeader_GetInitScriptsArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].initScriptsArchiveID;
}

u16 MapHeader_GetDayMusicID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].dayMusicID;
}

u16 MapHeader_GetNightMusicID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].nightMusicID;
}

BOOL MapHeader_HasWildEncounters(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].wildEncountersArchiveID != 65535;
}

u32 MapHeader_GetWildEncountersArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].wildEncountersArchiveID;
}

u32 MapHeader_GetEventsArchiveID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].eventsArchiveID;
}

u32 MapHeader_GetMapLabelTextID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].mapLabelTextID;
}

u8 MapHeader_GetMapLabelWindowID(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].mapLabelWindowID;
}

u32 MapHeader_GetWeatherType(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].weather;
}

u32 MapHeader_GetCameraType(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].cameraType;
}

enum BattleBackground MapHeader_GetBattleBG(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].battleBG;
}

BOOL MapHeader_IsEscapeRopeAllowed(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].isEscapeRopeAllowed;
}

BOOL MapHeader_IsFlyAllowed(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].isFlyAllowed;
}

BOOL MapHeader_IsBikeAllowed(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].isBikeAllowed;
}

u32 MapHeader_GetMapType(enum MapHeaderID mapHeaderID)
{
    mapHeaderID = MapHeader_IDBoundsCheck(mapHeaderID);
    return sMapHeaders[mapHeaderID].mapType;
}

BOOL MapHeader_IsTeleportAllowed(enum MapHeaderID mapHeaderID)
{
    if (MapHeader_IsFlyAllowed(mapHeaderID) == FALSE) {
        return FALSE;
    }

    return MapHeader_GetMapType(mapHeaderID) != MAP_TYPE_TOWN_CITY;
}

BOOL MapHeader_IsOnMainMatrix(enum MapHeaderID mapHeaderID)
{
    return MapHeader_GetMapMatrixID(mapHeaderID) == 0;
}

BOOL MapHeader_IsPokemonCenter(enum MapHeaderID mapHeaderID)
{
    return MapHeader_GetMapType(mapHeaderID) == MAP_TYPE_POKECENTER;
}

BOOL MapHeader_IsCave(enum MapHeaderID mapHeaderID)
{
    return MapHeader_GetMapType(mapHeaderID) == MAP_TYPE_CAVE;
}

BOOL MapHeader_IsBuilding(enum MapHeaderID mapHeaderID)
{
    return MapHeader_GetMapType(mapHeaderID) == MAP_TYPE_INDOORS
        || MapHeader_GetMapType(mapHeaderID) == MAP_TYPE_POKECENTER;
}

BOOL MapHeader_IsOutdoors(enum MapHeaderID mapHeaderID)
{
    return MapHeader_GetMapType(mapHeaderID) == MAP_TYPE_TOWN_CITY
        || MapHeader_GetMapType(mapHeaderID) == MAP_TYPE_OUTDOORS;
}

BOOL MapHeader_IsPokemonCenter2(enum MapHeaderID mapHeaderID)
{
    if (MapHeader_IsPokemonCenter(mapHeaderID)) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsUnionRoom(const enum MapHeaderID mapHeaderID)
{
    return mapHeaderID == MAP_HEADER_UNION_ROOM;
}

BOOL MapHeader_HasFeebasTiles(const enum MapHeaderID mapHeaderID)
{
    return mapHeaderID == MAP_HEADER_MT_CORONET_B1F;
}

BOOL MapHeader_IsTrophyGarden(const enum MapHeaderID mapHeaderID)
{
    return mapHeaderID == MAP_HEADER_TROPHY_GARDEN;
}

BOOL MapHeader_IsAmitySquare(const enum MapHeaderID mapHeaderID)
{
    return mapHeaderID == MAP_HEADER_AMITY_SQUARE;
}

BOOL MapHeader_IsAzureFluteAllowed(const enum MapHeaderID mapHeaderID)
{
    if (mapHeaderID == MAP_HEADER_SPEAR_PILLAR || mapHeaderID == MAP_HEADER_SPEAR_PILLAR_DIALGA || mapHeaderID == MAP_HEADER_SPEAR_PILLAR_PALKIA) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsPokemonCenter2F(const enum MapHeaderID mapHeaderID)
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
        if (mapHeaderID == pokecenters2F[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

enum EvolutionMethod MapHeader_GetMapEvolutionMethod(enum MapHeaderID mapHeaderID)
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
        if (mapEvolutionMethods[i] == mapHeaderID) {
            return mapEvolutionMethods[i + 1];
        }
    }

    return EVO_NONE;
}
