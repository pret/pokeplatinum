#include "map_header.h"

#include <nitro.h>
#include <string.h>

#include "data/map_headers.h"

u32 MapHeader_IDBoundsCheck(u32 headerID)
{
    if (headerID >= NELEMS(sMapHeaders)) {
        GF_ASSERT(0);
        return 3;
    }

    return headerID;
}

const u16 sub_0203A038(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].unk_00;
}

const u16 sub_0203A04C(u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return sMapHeaders[headerID].unk_01;
}

const u16 MapHeader_GetMapMatrixID(u32 headerID)
{
    u16 mapMatrixID;

    headerID = MapHeader_IDBoundsCheck(headerID);
    mapMatrixID = sMapHeaders[headerID].mapMatrixID;

    if (mapMatrixID == 22) {
        if (gGameVersion == 11) {
            mapMatrixID = 23;
        }
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

u32 MapHeader_GetBattleBG(u32 headerID)
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
    if (MapHeader_IsFlyAllowed(headerID) == 0) {
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
    return headerID == 466;
}

BOOL MapHeader_HasFeebasTiles(const u32 headerID)
{
    return headerID == 219;
}

BOOL MapHeader_IsTrophyGarden(const u32 headerID)
{
    return headerID == 287;
}

BOOL MapHeader_IsAmitySquare(const u32 headerID)
{
    return headerID == 253;
}

BOOL MapHeader_IsAzureFluteAllowed(const u32 headerID)
{
    if ((headerID == 220) || (headerID == 584) || (headerID == 585)) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsPokemonCenter2F(const u32 headerID)
{
    static const u16 v0[] = {
        0x1A5,
        0x1AD,
        0x1B4,
        0x1BC,
        0x1C5,
        0x1CC,
        0x7,
        0x25,
        0x31,
        0x1EF,
        0x46,
        0x66,
        0x7C,
        0x87,
        0x98,
        0xA9,
        0xAE,
        0xBE
    };
    int i;

    for (i = 0; i < NELEMS(v0); i++) {
        if (headerID == v0[i]) {
            return 1;
        }
    }

    return 0;
}

u32 MapHeader_GetMapEvolutionMethod(u32 headerID)
{
    static const u16 v0[] = {
        0x181,
        0x1A,
        0xCB,
        0x19,
        0xCF,
        0x18,
        0xD0,
        0x18,
        0xD1,
        0x18,
        0xD2,
        0x18,
        0xD3,
        0x18,
        0xD4,
        0x18,
        0xD5,
        0x18,
        0xD6,
        0x18,
        0xD7,
        0x18,
        0xD8,
        0x18,
        0xD9,
        0x18,
        0xDA,
        0x18,
        0xDB,
        0x18,
        0xDC,
        0x18,
        0xDD,
        0x18,
        0x1FE,
        0x18,
        0x1FF,
        0x18,
        0x248,
        0x18,
        0x249,
        0x18
    };
    int i;

    for (i = 0; i < NELEMS(v0); i += 2) {
        if (v0[i] == headerID) {
            return v0[i + 1];
        }
    }

    return 0;
}
