#ifndef POKEPLATINUM_MAP_HEADER_H
#define POKEPLATINUM_MAP_HEADER_H

#include "generated/battle_backgrounds.h"
#include "generated/evolution_methods.h"
#include "generated/map_headers.h"

#define ENCOUNTERS_NONE 0xFFFF

typedef struct MapHeader {
    u8 areaDataArchiveID;
    u8 preloadedMapObjectsArchiveID;
    u16 mapMatrixID;
    u16 scriptsArchiveID;
    u16 initScriptsArchiveID;
    u16 msgArchiveID;
    u16 dayMusicID;
    u16 nightMusicID;
    u16 wildEncountersArchiveID;
    u16 eventsArchiveID;
    u16 mapLabelTextID : 8;
    u16 mapLabelWindowID : 8;
    u8 weather;
    u8 cameraType;
    u16 mapType : 7;
    u16 battleBG : 5;
    u16 isBikeAllowed : 1;
    u16 isRunningAllowed : 1;
    u16 isEscapeRopeAllowed : 1;
    u16 isFlyAllowed : 1;
} MapHeader;

enum MapHeaderID MapHeader_IDBoundsCheck(enum MapHeaderID mapHeaderID);
u16 MapHeader_GetAreaDataArchiveID(enum MapHeaderID mapHeaderID);
u16 MapHeader_GetPreloadedMapObjectsArchiveID(enum MapHeaderID mapHeaderID);
u16 MapHeader_GetMapMatrixID(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetMsgArchiveID(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetScriptsArchiveID(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetInitScriptsArchiveID(enum MapHeaderID mapHeaderID);
u16 MapHeader_GetDayMusicID(enum MapHeaderID mapHeaderID);
u16 MapHeader_GetNightMusicID(enum MapHeaderID mapHeaderID);
BOOL MapHeader_HasWildEncounters(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetWildEncountersArchiveID(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetEventsArchiveID(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetMapLabelTextID(enum MapHeaderID mapHeaderID);
u8 MapHeader_GetMapLabelWindowID(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetWeatherType(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetCameraType(enum MapHeaderID mapHeaderID);
enum BattleBackground MapHeader_GetBattleBG(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsEscapeRopeAllowed(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsFlyAllowed(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsBikeAllowed(enum MapHeaderID mapHeaderID);
u32 MapHeader_GetMapType(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsTeleportAllowed(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsOnMainMatrix(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsPokemonCenter(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsCave(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsBuilding(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsOutdoors(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsPokemonCenter2(enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsUnionRoom(const enum MapHeaderID mapHeaderID);
BOOL MapHeader_HasFeebasTiles(const enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsTrophyGarden(const enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsAmitySquare(const enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsAzureFluteAllowed(const enum MapHeaderID mapHeaderID);
BOOL MapHeader_IsPokemonCenter2F(const enum MapHeaderID mapHeaderID);
enum EvolutionMethod MapHeader_GetMapEvolutionMethod(enum MapHeaderID mapHeaderID);

#endif // POKEPLATINUM_MAP_HEADER_H
