#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A3E8_decl.h"

#include "struct_defs/struct_0203A4AC.h"
#include "struct_defs/struct_0203A55C.h"
#include "struct_defs/struct_0203A594.h"
#include "field/field_system.h"
#include "struct_defs/struct_020619DC.h"
#include "overlay006/struct_ov6_02242634.h"

#include "narc.h"
#include "heap.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "map_object.h"

struct UnkStruct_0203A3E8_t {
    u32 unk_00;
    u32 npcCount;
    u32 unk_08;
    u32 unk_0C;
    const BgEvent * unk_10;
    const ObjectEvent * unk_14;
    const UnkStruct_0203A55C * unk_18;
    const UnkStruct_0203A4AC * unk_1C;
    u32 unk_20[512];
    u32 unk_820[64];
    UnkStruct_ov6_02242634 unk_920;
};

static void sub_0203A3E8(UnkStruct_0203A3E8 * param0, int param1);
static void sub_0203A5B0(UnkStruct_0203A3E8 * param0);
static void sub_0203A64C(UnkStruct_0203A3E8 * param0, int param1);
BOOL sub_0203A4FC(FieldSystem * fieldSystem, int param1, int param2);
BOOL sub_0203A52C(FieldSystem * fieldSystem, int param1, int param2);
BOOL sub_0203A55C(FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3);
BOOL sub_0203A574(FieldSystem * fieldSystem, u16 param1, u16 param2);
BOOL sub_0203A584(FieldSystem * fieldSystem, u16 param1, u16 param2);
BOOL sub_0203A594(FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3);

void sub_0203A378 (FieldSystem * fieldSystem, int param1)
{
    UnkStruct_0203A3E8 * v0;

    GF_ASSERT(fieldSystem->unk_14 == NULL);
    fieldSystem->unk_14 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203A3E8));
}

void sub_0203A398 (FieldSystem * fieldSystem)
{
    GF_ASSERT(fieldSystem->unk_14 != NULL);
    Heap_FreeToHeap(fieldSystem->unk_14);
}

void FieldSystem_LoadMapData (FieldSystem * fieldSystem, int param1)
{
    GF_ASSERT(fieldSystem->unk_14 != NULL);

    sub_0203A3E8(fieldSystem->unk_14, param1);
    sub_0203A5B0(fieldSystem->unk_14);
    sub_0203A614(&fieldSystem->unk_14->unk_920, param1);
    sub_0203A64C(fieldSystem->unk_14, param1);
}

static void sub_0203A3E8 (UnkStruct_0203A3E8 * param0, int param1)
{
    int v0;

    v0 = MapHeader_GetEventsArchiveID(param1);
    GF_ASSERT(NARC_GetMemberSizeByIndexPair(NARC_INDEX_FIELDDATA__EVENTDATA__ZONE_EVENT, v0) < sizeof(param0->unk_20));
    NARC_ReadWholeMemberByIndexPair(param0->unk_20, NARC_INDEX_FIELDDATA__EVENTDATA__ZONE_EVENT, v0);
}

void sub_0203A418 (FieldSystem * fieldSystem)
{
    int v0 = fieldSystem->unk_14->npcCount;

    GF_ASSERT(fieldSystem->unk_14 != NULL);

    if (v0 != 0) {
        sub_02062068(fieldSystem->mapObjMan, fieldSystem->location->mapId, v0, fieldSystem->unk_14->unk_14);
    }
}

const BgEvent * sub_0203A440 (const FieldSystem * fieldSystem)
{
    return fieldSystem->unk_14->unk_10;
}

int sub_0203A448 (const FieldSystem * fieldSystem)
{
    return fieldSystem->unk_14->unk_00;
}

const UnkStruct_0203A55C * sub_0203A450 (const FieldSystem * fieldSystem, int param1)
{
    if (param1 >= fieldSystem->unk_14->unk_08) {
        return NULL;
    }

    return &fieldSystem->unk_14->unk_18[param1];
}

int sub_0203A468 (const FieldSystem * fieldSystem, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < fieldSystem->unk_14->unk_08; v0++) {
        if ((fieldSystem->unk_14->unk_18[v0].unk_00 == param1) && (fieldSystem->unk_14->unk_18[v0].unk_02 == param2)) {
            return v0;
        }
    }

    return -1;
}

int sub_0203A4A4 (const FieldSystem * fieldSystem)
{
    return fieldSystem->unk_14->unk_0C;
}

const UnkStruct_0203A4AC * sub_0203A4AC (const FieldSystem * fieldSystem)
{
    return fieldSystem->unk_14->unk_1C;
}

u32 FieldSystem_GetNPCCount (const FieldSystem * fieldSystem)
{
    return fieldSystem->unk_14->npcCount;
}

const ObjectEvent * sub_0203A4BC (const FieldSystem * fieldSystem)
{
    return fieldSystem->unk_14->unk_14;
}

BOOL sub_0203A4C4 (FieldSystem * fieldSystem, int param1, u16 param2, u16 param3)
{
    int v0;
    ObjectEvent * v1 = (ObjectEvent *)fieldSystem->unk_14->unk_14;
    u32 v2 = fieldSystem->unk_14->npcCount;

    for (v0 = 0; v0 < v2; v0++) {
        if (v1[v0].localID == param1) {
            v1[v0].x = param2;
            v1[v0].z = param3;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_0203A4FC (FieldSystem * fieldSystem, int param1, int param2)
{
    int v0;
    ObjectEvent * v1 = (ObjectEvent *)fieldSystem->unk_14->unk_14;
    u32 v2 = fieldSystem->unk_14->npcCount;

    for (v0 = 0; v0 < v2; v0++) {
        if (v1[v0].localID == param1) {
            v1[v0].dir = param2;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_0203A52C (FieldSystem * fieldSystem, int param1, int param2)
{
    int v0;
    ObjectEvent * v1 = (ObjectEvent *)fieldSystem->unk_14->unk_14;
    u32 v2 = fieldSystem->unk_14->npcCount;

    for (v0 = 0; v0 < v2; v0++) {
        if (v1[v0].localID == param1) {
            v1[v0].movementType = param2;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_0203A55C (FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3)
{
    UnkStruct_0203A55C * v0 = (UnkStruct_0203A55C *)fieldSystem->unk_14->unk_18;

    v0[param1].unk_00 = param2;
    v0[param1].unk_02 = param3;

    return 1;
}

BOOL sub_0203A574 (FieldSystem * fieldSystem, u16 param1, u16 param2)
{
    UnkStruct_0203A55C * v0 = (UnkStruct_0203A55C *)fieldSystem->unk_14->unk_18;

    v0[param1].unk_04 = param2;
    return 1;
}

BOOL sub_0203A584 (FieldSystem * fieldSystem, u16 param1, u16 param2)
{
    UnkStruct_0203A55C * v0 = (UnkStruct_0203A55C *)fieldSystem->unk_14->unk_18;

    v0[param1].unk_06 = param2;
    return 1;
}

BOOL sub_0203A594 (FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3)
{
    BgEvent * v0 = sub_0203A440(fieldSystem);

    (v0) += param1;
    v0->x = param2;
    v0->z = param3;

    return 1;
}

static void sub_0203A5B0 (UnkStruct_0203A3E8 * param0)
{
    const u8 * v0 = (const u8 *)param0->unk_20;

    param0->unk_00 = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_00 != 0) {
        param0->unk_10 = (const BgEvent *)v0;
    } else {
        param0->unk_10 = NULL;
    }

    v0 += sizeof(BgEvent) * param0->unk_00;
    param0->npcCount = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->npcCount != 0) {
        param0->unk_14 = (const ObjectEvent *)v0;
    } else {
        param0->unk_14 = NULL;
    }

    v0 += sizeof(ObjectEvent) * param0->npcCount;
    param0->unk_08 = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_08 != 0) {
        param0->unk_18 = (const UnkStruct_0203A55C *)v0;
    } else {
        param0->unk_18 = NULL;
    }

    v0 += sizeof(UnkStruct_0203A55C) * param0->unk_08;
    param0->unk_0C = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_0C != 0) {
        param0->unk_1C = (const UnkStruct_0203A4AC *)v0;
    } else {
        param0->unk_1C = NULL;
    }

    v0 += sizeof(UnkStruct_0203A4AC) * param0->unk_0C;
}

void sub_0203A614 (UnkStruct_ov6_02242634 * param0, int param1)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_ov6_02242634));

    if (MapHeader_HasWildEncounters(param1)) {
        if ((GAME_VERSION == 10) || (GAME_VERSION == 12)) {
            v0 = 161;
        } else {
            v0 = 143;
        }

        NARC_ReadWholeMemberByIndexPair(param0, v0, MapHeader_GetWildEncountersArchiveID(param1));
    }
}

const UnkStruct_ov6_02242634 * sub_0203A640 (const FieldSystem * fieldSystem)
{
    return &fieldSystem->unk_14->unk_920;
}

static void sub_0203A64C (UnkStruct_0203A3E8 * param0, int param1)
{
    int v0;

    v0 = MapHeader_GetMapScriptArchiveID(param1);

    MI_CpuClearFast(param0->unk_820, sizeof(param0->unk_820));
    GF_ASSERT(NARC_GetMemberSizeByIndexPair(NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, v0) < sizeof(param0->unk_820));

    NARC_ReadWholeMemberByIndexPair(param0->unk_820, NARC_INDEX_FIELDDATA__SCRIPT__SCR_SEQ, v0);
}

void * sub_0203A68C (const FieldSystem * fieldSystem)
{
    GF_ASSERT(fieldSystem->unk_14 != NULL);
    return &fieldSystem->unk_14->unk_820;
}

BOOL sub_0203A6A4 (const FieldSystem * fieldSystem, u16 param1, u16 param2)
{
    const UnkStruct_0203A3E8 * v0 = fieldSystem->unk_14;
    u32 v1;

    for (v1 = 0; v1 < v0->npcCount; v1++) {
        if ((v0->unk_14[v1].x == param1) && (v0->unk_14[v1].z == param2)) {
            return 0;
        }
    }

    return 1;
}
