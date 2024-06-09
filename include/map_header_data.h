#ifndef POKEPLATINUM_MAP_HEADER_DATA_H
#define POKEPLATINUM_MAP_HEADER_DATA_H

#include "constants/heap.h"
#include "field/field_system_decl.h"
#include "overlay006/struct_ov6_02242634.h"

typedef struct BgEvent {
    u16 script;
    u16 type;
    int x;
    int z;
    int y;
    u16 playerFacingDir;
    u8 padding[2];
} BgEvent;

typedef struct ObjectEvent {
    u16 localID;
    u16 graphicsID;
    u16 movementType;
    u16 trainerType;
    u16 flag;
    u16 script;
    s16 dir;
    u16 data[3];
    s16 movementRangeX;
    s16 movementRangeZ;
    u16 x;
    u16 z;
    fx32 y;
} ObjectEvent;

typedef struct WarpEvent {
    u16 x;
    u16 z;
    u16 destHeaderID;
    u16 destWarpID;
    u8 unused[4];
} WarpEvent;

typedef struct CoordEvent {
    u16 script;
    u16 x;
    u16 z;
    u16 width;
    u16 length;
    u16 y;
    u16 value;
    u16 var;
} CoordEvent;

typedef struct MapHeaderData {
    u32 numBgEvents;
    u32 numObjectEvents;
    u32 numWarpEvents;
    u32 numCoordEvents;
    const BgEvent * bgEvents;
    const ObjectEvent * objectEvents;
    const WarpEvent * warpEvents;
    const CoordEvent * coordEvents;
    u32 tmpEventsBuf[512];
    u32 scripts[64];
    UnkStruct_ov6_02242634 wildEncounters;
} MapHeaderData;

void MapHeaderData_Init(FieldSystem * fieldSystem, enum HeapId heapID);
void MapHeaderData_Free(FieldSystem * fieldSystem);
void MapHeaderData_Load(FieldSystem * fieldSystem, int headerID);
void sub_0203A418(FieldSystem * fieldSystem);
const BgEvent * MapHeaderData_GetBgEvents(const FieldSystem * fieldSystem);
int MapHeaderData_GetNumBgEvents(const FieldSystem * fieldSystem);
const WarpEvent * MapHeaderData_GetWarpEventByIndex(const FieldSystem * fieldSystem, int index);
int MapHeaderData_GetIndexOfWarpEventAtPos(const FieldSystem * fieldSystem, int x, int z);
int MapHeaderData_GetNumCoordEvents(const FieldSystem * fieldSystem);
const CoordEvent * MapHeaderData_GetCoordEvents(const FieldSystem * fieldSystem);
u32 MapHeaderData_GetNumObjectEvents(const FieldSystem * fieldSystem);
const ObjectEvent * MapHeaderData_GetObjectEvents(const FieldSystem * fieldSystem);
BOOL MapHeaderData_SetObjectEventPos(FieldSystem * fieldSystem, int index, u16 x, u16 z);
BOOL MapHeaderData_SetObjectEventDir(FieldSystem * fieldSystem, int localID, int dir);
BOOL MapHeaderData_SetObjectEventMovementType(FieldSystem * fieldSystem, int localID, int movementType);
BOOL MapHeaderData_SetWarpEventPos(FieldSystem * fieldSystem, u16 index, u16 x, u16 z);
BOOL MapHeaderData_SetWarpEventDestHeaderID(FieldSystem * fieldSystem, u16 index, u16 destHeaderID);
BOOL MapHeaderData_SetWarpEventDestWarpID(FieldSystem * fieldSystem, u16 index, u16 destWarpID);
BOOL MapHeaderData_SetBgEventPos(FieldSystem * fieldSystem, u16 index, u16 x, u16 z);
void MapHeaderData_LoadWildEncounters(UnkStruct_ov6_02242634 * param0, int headerID);
const UnkStruct_ov6_02242634 * MapHeaderData_GetWildEncounters(const FieldSystem * fieldSystem);
const u8 * MapHeaderData_GetScripts(const FieldSystem * fieldSystem);
BOOL MapHeaderData_IsAnyObjectEventAtPos(const FieldSystem * fieldSystem, u16 x, u16 z);

#endif // POKEPLATINUM_MAP_HEADER_DATA_H
