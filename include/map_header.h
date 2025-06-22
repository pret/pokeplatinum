#ifndef POKEPLATINUM_MAP_HEADER_H
#define POKEPLATINUM_MAP_HEADER_H

#include "generated/battle_backgrounds.h"
#include "generated/evolution_methods.h"

typedef struct {
    u8 areaDataArchiveID;
    u8 unk_01;
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

u32 MapHeader_IDBoundsCheck(u32 headerID);
const u16 MapHeader_GetAreaDataArchiveID(u32 headerID);
const u16 sub_0203A04C(u32 headerID);
const u16 MapHeader_GetMapMatrixID(u32 headerID);
u32 MapHeader_GetMsgArchiveID(u32 headerID);
u32 MapHeader_GetScriptsArchiveID(u32 headerID);
u32 MapHeader_GetInitScriptsArchiveID(u32 headerID);
u16 MapHeader_GetDayMusicID(u32 headerID);
u16 MapHeader_GetNightMusicID(u32 headerID);
BOOL MapHeader_HasWildEncounters(u32 headerID);
u32 MapHeader_GetWildEncountersArchiveID(u32 headerID);
u32 MapHeader_GetEventsArchiveID(u32 headerID);
u32 MapHeader_GetMapLabelTextID(u32 headerID);
u8 MapHeader_GetMapLabelWindowID(u32 headerID);
u32 MapHeader_GetWeatherType(u32 headerID);
u32 MapHeader_GetCameraType(u32 headerID);
enum BattleBackground MapHeader_GetBattleBG(u32 headerID);
BOOL MapHeader_IsEscapeRopeAllowed(u32 headerID);
BOOL MapHeader_IsFlyAllowed(u32 headerID);
BOOL MapHeader_IsBikeAllowed(u32 headerID);
u32 MapHeader_GetMapType(u32 headerID);
BOOL MapHeader_IsTeleportAllowed(u32 headerID);
BOOL MapHeader_IsOnMainMatrix(u32 headerID);
BOOL MapHeader_IsPokemonCenter(u32 headerID);
BOOL MapHeader_IsCave(u32 headerID);
BOOL MapHeader_IsBuilding(u32 headerID);
BOOL MapHeader_IsOutdoors(u32 headerID);
BOOL sub_0203A2C8(u32 headerID);
BOOL MapHeader_IsUnionRoom(const u32 headerID);
BOOL MapHeader_HasFeebasTiles(const u32 headerID);
BOOL MapHeader_IsTrophyGarden(const u32 headerID);
BOOL MapHeader_IsAmitySquare(const u32 headerID);
BOOL MapHeader_IsAzureFluteAllowed(const u32 headerID);
BOOL MapHeader_IsPokemonCenter2F(const u32 headerID);
enum EvolutionMethod MapHeader_GetMapEvolutionMethod(u32 headerID);

#endif // POKEPLATINUM_MAP_HEADER_H
