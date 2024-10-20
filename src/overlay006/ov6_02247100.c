#include "overlay006/ov6_02247100.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay006/ov6_02243258.h"

#include "field_map_change.h"
#include "field_overworld_state.h"
#include "heap.h"
#include "journal.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_0203A7D8.h"
#include "unk_020508D4.h"
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

static void *ov6_02247590(u32 param0, u32 param1);
static void ov6_0224732C(FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param1);

int (*const Unk_ov6_022495CC[])(TaskManager *, FieldSystem *, UnkStruct_ov6_02247100 *);
int (*const Unk_ov6_022495BC[])(TaskManager *, FieldSystem *, UnkStruct_ov6_02247100 *);
int (*const Unk_ov6_022495F0[])(TaskManager *, FieldSystem *, UnkStruct_ov6_02247100 *);

const MapObjectAnimCmd Unk_ov6_02249608[];
const MapObjectAnimCmd Unk_ov6_022495DC[];
const MapObjectAnimCmd Unk_ov6_0224966C[];

void *ov6_02247100(FieldSystem *fieldSystem, u32 param1)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(param1, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 0;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);

    return v0;
}

BOOL ov6_02247120(TaskManager *taskMan)
{
    int v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_ov6_02247100 *v2 = TaskManager_Environment(taskMan);

    do {
        v0 = Unk_ov6_022495CC[v2->unk_00](taskMan, fieldSystem, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static int ov6_0224715C(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    param2->unk_14 = ov5_021F0EB0(fieldSystem, 4);
    ov5_021F0F10(param2->unk_14, 1, (FX32_ONE * -150), 15);
    param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_02249608);
    param2->unk_00++;

    switch (param2->unk_08) {
    case 0:
        Sound_PlayEffect(1539);
        break;
    case 1:
        Sound_PlayEffect(1539);
        break;
    case 2:
        Sound_PlayEffect(1614);
        break;
    }

    return 0;
}

static int ov6_022471C0(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
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
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 4);
    } else {
        sub_0200F174(0, 0, 0, 0x7fff, 6, 1, 4);
    }

    param2->unk_00++;
    return 0;
}

static int ov6_02247244(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 1) {
        MapObject_FinishAnimation(param2->unk_0C);
        param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    }

    if (ScreenWipe_Done() == 0) {
        return 0;
    }

    MapObject_FinishAnimation(param2->unk_0C);
    ov5_021F0EFC(param2->unk_14);

    param2->unk_00++;

    return 1;
}

static int ov6_02247288(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    FieldOverworldState *v0 = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    if (param2->unk_08 == 2) {
        u16 v1;
        Location v2;

        v1 = FieldOverworldState_GetWarpId(v0);
        sub_0203A7F0(v1, &v2);
        FieldTask_ChangeMapChangeByDig(taskMan, &v2, param2->unk_08);
    } else {
        Location *v3 = sub_0203A72C(v0);
        FieldTask_ChangeMapChangeByDig(taskMan, v3, param2->unk_08);
    }

    return 2;
}

static int (*const Unk_ov6_022495CC[])(TaskManager *, FieldSystem *, UnkStruct_ov6_02247100 *) = {
    ov6_0224715C,
    ov6_022471C0,
    ov6_02247244,
    ov6_02247288
};

void *ov6_022472C8(FieldSystem *fieldSystem, u32 param1, int param2)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(param1, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = param2;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);

    return v0;
}

BOOL ov6_022472E8(TaskManager *taskMan)
{
    int v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_ov6_02247100 *v2 = TaskManager_Environment(taskMan);

    do {
        v0 = Unk_ov6_022495BC[v2->unk_00](taskMan, fieldSystem, v2);

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
    void *v0;

    if (param1->unk_08 == 2) {
        v0 = sub_0202BE00((28 - 19), fieldSystem->location->mapId, 4);
    } else {
        return;
    }

    Journal_SaveData(fieldSystem->journal, v0, 1);
}

static int ov6_02247354(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (param2->unk_08 == 2) {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
    } else {
        sub_0200F174(0, 1, 1, 0x7fff, 6, 1, 4);
    }

    param2->unk_14 = ov5_021F0EB0(fieldSystem, 4);
    ov5_021F0F10(param2->unk_14, 1, (FX32_ONE * -150), 1);
    param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    param2->unk_00++;

    return 0;
}

static int ov6_022473C8(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (MapObject_HasAnimationEnded(param2->unk_0C) == 1) {
        MapObject_FinishAnimation(param2->unk_0C);
        param2->unk_0C = MapObject_StartAnimation(param2->unk_18, Unk_ov6_022495DC);
    }

    if (ScreenWipe_Done() == 0) {
        return 0;
    }

    ov5_021F0F10(param2->unk_14, 2, 0, 60);

    param2->unk_00++;
    return 1;
}

static int ov6_0224740C(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
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

static int ov6_02247458(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
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

static int (*const Unk_ov6_022495BC[])(TaskManager *, FieldSystem *, UnkStruct_ov6_02247100 *) = {
    ov6_02247354,
    ov6_022473C8,
    ov6_0224740C,
    ov6_02247458
};

void *ov6_02247488(FieldSystem *fieldSystem, Pokemon *param1, u32 param2)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(param2, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 1;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);
    v0->unk_20 = param1;

    return v0;
}

BOOL ov6_022474AC(TaskManager *taskMan)
{
    int v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_ov6_02247100 *v2 = TaskManager_Environment(taskMan);

    do {
        v0 = Unk_ov6_022495F0[v2->unk_00](taskMan, fieldSystem, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static int ov6_022474E8(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    int v0 = PlayerAvatar_Gender(fieldSystem->playerAvatar);

    param2->unk_10 = ov6_02243F88(fieldSystem, 0, param2->unk_20, v0);
    param2->unk_00++;

    return 0;
}

static int ov6_0224750C(TaskManager *taskMan, FieldSystem *fieldSystem, UnkStruct_ov6_02247100 *param2)
{
    if (ov6_02243FBC(param2->unk_10) == 0) {
        return 0;
    }

    ov6_02243FC8(param2->unk_10);
    param2->unk_00++;
    return 1;
}

static int (*const Unk_ov6_022495F0[])(TaskManager *, FieldSystem *, UnkStruct_ov6_02247100 *) = {
    ov6_022474E8,
    ov6_0224750C,
    ov6_0224715C,
    ov6_022471C0,
    ov6_02247244,
    ov6_02247288
};

void *ov6_02247530(FieldSystem *fieldSystem, Pokemon *param1, u32 param2)
{
    UnkStruct_ov6_02247100 *v0 = ov6_02247590(param2, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 2;
    v0->fieldSystem = fieldSystem;
    v0->unk_18 = Player_MapObject(fieldSystem->playerAvatar);
    v0->unk_20 = param1;

    return v0;
}

BOOL ov6_02247554(TaskManager *taskMan)
{
    int v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_ov6_02247100 *v2 = TaskManager_Environment(taskMan);

    do {
        v0 = Unk_ov6_022495F0[v2->unk_00](taskMan, fieldSystem, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static void *ov6_02247590(u32 param0, u32 param1)
{
    void *v0 = Heap_AllocFromHeapAtEnd(param0, param1);

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
