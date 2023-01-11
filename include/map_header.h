#ifndef POKEPLATINUM_UNK_0203A024_H
#define POKEPLATINUM_UNK_0203A024_H

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 matrixID;
    u16 scriptsBank;
    u16 mapScriptBank;
    u16 msgBank;
    u16 dayMusicID;
    u16 nightMusicID;
    u16 wildEncountersBank;
    u16 eventsBank;
    u16 unk_12_0 : 8;
    u16 unk_12_8 : 8;
    u8 weather;
    u8 cameraType;
    u16 mapType : 7;
    u16 battleBG : 5;
    u16 isBikeAllowed : 1;
    u16 isRunningAllowed : 1;
    u16 isEscapeRopeAllowed : 1;
    u16 isFlyAllowed : 1;
} MapHeader;

u32 MapNumberBoundsCheck(u32 param0);
const u16 sub_0203A038(u32 param0);
const u16 sub_0203A04C(u32 param0);
const u16 MapHeader_GetMatrixId(u32 param0);
u32 MapHeader_GetMsgBank(u32 param0);
u32 MapHeader_GetScriptsBank(u32 param0);
u32 MapHeader_GetMapScriptBank(u32 param0);
u16 MapHeader_GetDayMusicId(u32 param0);
u16 MapHeader_GetNightMusicId(u32 param0);
BOOL MapHeader_HasWildEncounters(u32 param0);
u32 MapHeader_GetWildEncountersBank(u32 param0);
u32 MapHeader_GetEventsBank(u32 param0);
u32 sub_0203A138(u32 param0);
u8 sub_0203A154(u32 param0);
u32 MapHeader_GetWeatherType(u32 param0);
u32 MapHeader_GetCameraType(u32 param0);
u32 MapHeader_GetBattleBg(u32 param0);
BOOL MapHeader_IsEscapeRopeAllowed(u32 param0);
BOOL MapHeader_IsFlyAllowed(u32 param0);
BOOL MapHeader_IsBikeAllowed(u32 param0);
u32 MapHeader_GetMapType(u32 headerID);
BOOL MapHeader_IsTeleportAllowed(u32 param0);
BOOL MapHeader_MapIsOnMainMatrix(u32 param0);
BOOL MapHeader_IsPokemonCenter(u32 param0);
BOOL MapHeader_IsCave(u32 param0);
BOOL sub_0203A288(u32 param0);
BOOL MapHeader_IsOutdoors(u32 param0);
BOOL sub_0203A2C8(u32 param0);
BOOL MapHeader_MapIsUnionRoom(const u32 param0);
BOOL MapHeader_MapHasFeebasTiles(const u32 param0);
BOOL MapHeader_MapIsTrophyGarden(const u32 param0);
BOOL MapHeader_MapIsAmitySquare(const u32 param0);
BOOL MapHeader_IsAzureFluteAllowed(const u32 param0);
BOOL MapHeader_IsPokemonCenter2F(const u32 param0);
u32 MapHeader_GetMapEvolutionMethod(u32 param0);

#endif // POKEPLATINUM_UNK_0203A024_H
