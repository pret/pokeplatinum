#include "overlay006/ov6_02247100.h"

#include <nitro.h>
#include <string.h>

#include "generated/journal_location_events.h"

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay006/ov6_02243258.h"

#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_task.h"
#include "heap.h"
#include "journal.h"
#include "location.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_0203A7D8.h"
#include "unk_020655F4.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    SysTask *unk_0C;
    SysTask *unk_10;
    SysTask *unk_14;
    MapObject *unk_18;
    FieldSystem *fieldSystem;
    Pokemon *unk_20;
} UnkStruct_ov6_02247100;

static void *ov6_02247590(u32 heapID, u32 param1);
static void ov6_0224732C(FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param1);

int (*const Unk_ov6_022495CC[])(FieldTask *, FieldSystem *, UnkStruct_ov6_02247100 *);
int (*const Unk_ov6_022495BC[])(FieldTask *, FieldSystem *, UnkStruct_ov6_02247100 *);
int (*const Unk_ov6_022495F0[])(FieldTask *, FieldSystem *, UnkStruct_ov6_02247100 *);

const MapObjectAnimCmd Unk_ov6_02249608[];
const MapObjectAnimCmd Unk_ov6_022495DC[];
const MapObjectAnimCmd Unk_ov6_0224966C[];

void *ov6_02247100(FieldSystem *fieldSystem, u32 heapID)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(heapID, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 0;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);

    return v0;
}

BOOL ov6_02247120(FieldTask *task)
{
    int v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_ov6_02247100 *v2 = FieldTask_GetEnv(task);

    do {
        v0 = Unk_ov6_022495CC[v2->unk_00](task, fieldSystem, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static int ov6_0224715C(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    param2->unk_14 = ov5_021F0EB0(fieldSystem, HEAP_ID_FIELD);
    ov5_021F0F10(param2->unk_14, 1, (FX32_ONE * -150), 15);
    param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_02249608);
    param2->unk_00++;

    switch (param2->unk_08) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        break;
    case 1:
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        break;
    case 2:
        Sound_PlayEffect(SEQ_SE_DP_TELE);
        break;
    }

    return 0;
}

static int ov6_022471C0(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 0) {
        return 0;
    }

    MapObject_FinishAnimation(param2->unk_0C);

    param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    param2->unk_04++;

    if (param2->unk_04 < 8) {
        return 0;
    }

    if (param2->unk_08 == 2) {
        StartScreenTransition(0, 0, 0, 0x0, 6, 1, HEAP_ID_FIELD);
    } else {
        StartScreenTransition(0, 0, 0, 0x7fff, 6, 1, HEAP_ID_FIELD);
    }

    param2->unk_00++;
    return 0;
}

static int ov6_02247244(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 1) {
        MapObject_FinishAnimation(param2->unk_0C);
        param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    }

    if (IsScreenTransitionDone() == 0) {
        return 0;
    }

    MapObject_FinishAnimation(param2->unk_0C);
    ov5_021F0EFC(param2->unk_14);

    param2->unk_00++;

    return 1;
}

static int ov6_02247288(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    if (param2->unk_08 == 2) {
        u16 warpId;
        Location location;

        warpId = FieldOverworldState_GetWarpId(fieldState);
        sub_0203A7F0(warpId, &location);
        FieldTask_ChangeMapChangeByDig(task, &location, param2->unk_08);
    } else {
        Location *location = FieldOverworldState_GetExitLocation(fieldState);
        FieldTask_ChangeMapChangeByDig(task, location, param2->unk_08);
    }

    return 2;
}

static int (*const Unk_ov6_022495CC[])(FieldTask *, FieldSystem *, UnkStruct_ov6_02247100 *) = {
    ov6_0224715C,
    ov6_022471C0,
    ov6_02247244,
    ov6_02247288
};

void *ov6_022472C8(FieldSystem *fieldSystem, u32 heapID, int param2)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(heapID, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = param2;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);

    return v0;
}

BOOL ov6_022472E8(FieldTask *task)
{
    int v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_ov6_02247100 *v2 = FieldTask_GetEnv(task);

    do {
        v0 = Unk_ov6_022495BC[v2->unk_00](task, fieldSystem, v2);

        if (v0 == 2) {
            ov6_0224732C(fieldSystem, v2);
            Heap_FreeToHeap(v2);
            return 1;
        }
    } while (v0 == 1);

    return 0;
}

static void ov6_0224732C(FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param1)
{
    void *journalEntryLocationEvent;

    if (param1->unk_08 == 2) {
        journalEntryLocationEvent = JournalEntry_CreateEventUsedMove(LOCATION_EVENT_WARPED_TO_LOCATION - LOCATION_EVENT_USED_CUT, fieldSystem->location->mapId, HEAP_ID_FIELD);
    } else {
        return;
    }

    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
}

static int ov6_02247354(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (param2->unk_08 == 2) {
        StartScreenTransition(0, 1, 1, 0x0, 6, 1, HEAP_ID_FIELD);
    } else {
        StartScreenTransition(0, 1, 1, 0x7fff, 6, 1, HEAP_ID_FIELD);
    }

    param2->unk_14 = ov5_021F0EB0(fieldSystem, HEAP_ID_FIELD);
    ov5_021F0F10(param2->unk_14, 1, (FX32_ONE * -150), 1);
    param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    param2->unk_00++;

    return 0;
}

static int ov6_022473C8(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 1) {
        MapObject_FinishAnimation(param2->unk_0C);
        param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    }

    if (IsScreenTransitionDone() == 0) {
        return 0;
    }

    ov5_021F0F10(param2->unk_14, 2, 0, 60);

    param2->unk_00++;
    return 1;
}

static int ov6_0224740C(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 0) {
        return 0;
    }

    MapObject_FinishAnimation(param2->unk_0C);
    param2->unk_04++;

    if (param2->unk_04 < 4) {
        param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
        return 0;
    }

    param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_0224966C);
    param2->unk_00++;

    return 0;
}

static int ov6_02247458(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 0) {
        return 0;
    }

    if (ov5_021F0EF0(param2->unk_14) == 0) {
        return 0;
    }

    ov5_021F0EFC(param2->unk_14);
    MapObject_FinishAnimation(param2->unk_0C);

    return 2;
}

static int (*const Unk_ov6_022495BC[])(FieldTask *, FieldSystem *, UnkStruct_ov6_02247100 *) = {
    ov6_02247354,
    ov6_022473C8,
    ov6_0224740C,
    ov6_02247458
};

void *ov6_02247488(FieldSystem *fieldSystem, Pokemon *param1, u32 heapID)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(heapID, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 1;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);
    v0->unk_20 = param1;

    return v0;
}

BOOL ov6_022474AC(FieldTask *task)
{
    int v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_ov6_02247100 *v2 = FieldTask_GetEnv(task);

    do {
        v0 = Unk_ov6_022495F0[v2->unk_00](task, fieldSystem, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static int ov6_022474E8(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    int v0 = PlayerAvatar_Gender(fieldSystem->playerAvatar);

    param2->unk_10 = ov6_02243F88(fieldSystem, 0, param2->unk_20, v0);
    param2->unk_00++;

    return 0;
}

static int ov6_0224750C(FieldTask *task, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (ov6_02243FBC(param2->unk_10) == 0) {
        return 0;
    }

    ov6_02243FC8(param2->unk_10);
    param2->unk_00++;
    return 1;
}

static int (*const Unk_ov6_022495F0[])(FieldTask *, FieldSystem *, UnkStruct_ov6_02247100 *) = {
    ov6_022474E8,
    ov6_0224750C,
    ov6_0224715C,
    ov6_022471C0,
    ov6_02247244,
    ov6_02247288
};

void *ov6_02247530(FieldSystem *fieldSystem, Pokemon *param1, u32 heapID)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(heapID, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 2;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);
    v0->unk_20 = param1;

    return v0;
}

BOOL ov6_02247554(FieldTask *task)
{
    int v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_ov6_02247100 *v2 = FieldTask_GetEnv(task);

    do {
        v0 = Unk_ov6_022495F0[v2->unk_00](task, fieldSystem, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static void *ov6_02247590(u32 heapID, u32 param1)
{
    void *v0 = Heap_AllocFromHeapAtEnd(heapID, param1);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param1);
    return v0;
}

static const MapObjectAnimCmd Unk_ov6_02249608[] = {
    { 0x1, 0x1 },
    { 0x3C, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x2 },
    { 0x0, 0x1 },
    { 0x3C, 0x2 },
    { 0x3, 0x1 },
    { 0x3C, 0x2 },
    { 0x1, 0x1 },
    { 0x3C, 0x1 },
    { 0x2, 0x1 },
    { 0x3C, 0x1 },
    { 0x0, 0x1 },
    { 0x3C, 0x1 },
    { 0x3, 0x1 },
    { 0x3C, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov6_022495DC[] = {
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov6_0224966C[] = {
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x3C, 0x1 },
    { 0x2, 0x1 },
    { 0x3C, 0x1 },
    { 0x0, 0x1 },
    { 0x3C, 0x1 },
    { 0x3, 0x1 },
    { 0x3C, 0x1 },
    { 0x1, 0x1 },
    { 0x3C, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x4 },
    { 0x3, 0x1 },
    { 0x3C, 0x5 },
    { 0x1, 0x1 },
    { 0xfe, 0x0 }
};
