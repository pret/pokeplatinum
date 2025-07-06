#include "unk_02067A84.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "generated/movement_actions.h"
#include "generated/movement_types.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay008/ov8_02249960.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_020655F4.h"
#include "unk_020711EC.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    MapObject *unk_14;
} UnkStruct_02067C28;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_ov101_021D5D90 *unk_20;
    MapObject *unk_24;
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem;
} UnkStruct_020EF6D0;

static int sub_02067BA8(FieldSystem *fieldSystem, MapObjectManager *param1, PlayerAvatar *playerAvatar, const MapObject *param3, UnkStruct_02067C28 *param4);
static void sub_02067C28(UnkStruct_02067C28 *param0, MapObject *param1, int param2, int param3);
static int sub_02067C54(const MapObject *param0);
static int sub_02067C80(const MapObject *param0, PlayerAvatar *playerAvatar, int *param2);
static int sub_02067DA8(const MapObject *param0, int param1, int param2, int param3, int param4, int param5);
static int sub_02067E74(const MapObject *param0, int param1, int param2);
static int sub_02067F14(MapObject *param0);
static MapObject *sub_02067F2C(FieldSystem *fieldSystem, MapObjectManager *param1, MapObject *param2, int param3);
static SysTask *sub_02067FF0(FieldSystem *fieldSystem, MapObject *param1, PlayerAvatar *playerAvatar, int param3, int param4, int param5, int param6, int param7);
static int sub_02068048(SysTask *param0);
static void sub_02068054(SysTask *param0);
static void sub_0206806C(SysTask *param0, void *param1);

int (*const Unk_020EF6C0[])(const MapObject *, int, int, int, int);
int (*const Unk_020EF6D0[])(UnkStruct_020EF6D0 *);

int sub_02067A84(FieldSystem *fieldSystem, BOOL param1)
{
    UnkStruct_02067C28 v0;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;

    if (sub_02067BA8(fieldSystem, mapObjMan, playerAvatar, NULL, &v0) == 0) {
        return 0;
    }

    if (v0.unk_10 == 0) {
        MapObject *v3;
        UnkStruct_02067C28 v4;

        ScriptManager_Set(fieldSystem, 3928, v0.unk_14);

        if ((param1 == 0) || (sub_02067BA8(fieldSystem, mapObjMan, playerAvatar, v0.unk_14, &v4) == 0)) {
            ScriptManager_SetApproachingTrainer(fieldSystem, v0.unk_14, v0.unk_00, v0.unk_04, v0.unk_08, v0.unk_0C, 0, 0);
            return 1;
        }

        ScriptManager_SetApproachingTrainer(fieldSystem, v0.unk_14, v0.unk_00, v0.unk_04, v0.unk_08, v0.unk_0C, 2, 0);
        ScriptManager_SetApproachingTrainer(fieldSystem, v4.unk_14, v4.unk_00, v4.unk_04, v4.unk_08, v4.unk_0C, 2, 1);

        return 1;
    }

    if (v0.unk_10 == 1) {
        MapObject *v5;
        UnkStruct_02067C28 v6;

        if (param1 == 0) {
            return 0;
        }

        v5 = sub_02067F2C(fieldSystem, mapObjMan, v0.unk_14, v0.unk_0C);

        sub_02067C28(&v6, v5, v0.unk_00, v0.unk_04);
        ScriptManager_Set(fieldSystem, 3928, v0.unk_14);
        ScriptManager_SetApproachingTrainer(fieldSystem, v0.unk_14, v0.unk_00, v0.unk_04, v0.unk_08, v0.unk_0C, 1, 0);
        ScriptManager_SetApproachingTrainer(fieldSystem, v6.unk_14, v6.unk_00, v6.unk_04, v6.unk_08, v6.unk_0C, 1, 1);

        return 1;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_02067BA8(FieldSystem *fieldSystem, MapObjectManager *param1, PlayerAvatar *playerAvatar, const MapObject *param3, UnkStruct_02067C28 *param4)
{
    int v0, v1, v2;
    MapObject *v3;

    v0 = 0;
    v3 = NULL;
    v1 = -1;

    while (sub_020625B0(param1, &v3, &v0, (1 << 0))) {
        if ((param3 == NULL) || (param3 != v3)) {
            v1 = sub_02067C80(v3, playerAvatar, &v2);

            if (v1 != -1) {
                if (Script_IsTrainerDefeated(fieldSystem, sub_02067F14(v3)) == 0) {
                    sub_02067C28(param4, v3, v1, v2);
                    return 1;
                }
            }
        }
    }

    return 0;
}

static void sub_02067C28(UnkStruct_02067C28 *param0, MapObject *param1, int param2, int param3)
{
    param0->unk_00 = param2;
    param0->unk_04 = param3;
    param0->unk_08 = MapObject_GetScript(param1);
    param0->unk_0C = Script_GetTrainerID(param0->unk_08);
    param0->unk_10 = Script_IsTrainerDoubleBattle(param0->unk_0C);
    param0->unk_14 = param1;
}

static int sub_02067C54(const MapObject *param0)
{
    int v0 = MapObject_GetTrainerType(param0);

    switch (v0) {
    case 0x4:
    case 0x5:
    case 0x6:
    case 0x7:
    case 0x8:
        v0 = 0x1;
        break;
    }

    return v0;
}

static int sub_02067C80(const MapObject *param0, PlayerAvatar *playerAvatar, int *param2)
{
    int v0, v1, v2, v3, v4, v5;

    v0 = sub_02067C54(param0);

    if (v0 == 0x1) {
        v3 = Player_GetXPos(playerAvatar);
        v4 = Player_GetZPos(playerAvatar);
        v2 = MapObject_GetFacingDir(param0);
        v1 = MapObject_GetDataAt(param0, 0);
        v5 = sub_02067DA8(param0, v2, v1, v3, v4, 0);

        if (v5 != -1) {
            if (sub_02067E74(param0, v2, v5) == 0) {
                *param2 = v2;
                return v5;
            }
        }

        return -1;
    }

    if (v0 == 0x2) {
        v3 = Player_GetXPos(playerAvatar);
        v4 = Player_GetZPos(playerAvatar);
        v1 = MapObject_GetDataAt(param0, 0);
        v2 = 0;

        do {
            v5 = sub_02067DA8(param0, v2, v1, v3, v4, 0);

            if (v5 != -1) {
                if (sub_02067E74(param0, v2, v5) == 0) {
                    *param2 = v2;
                    return v5;
                }
            }

            v2++;
        } while (v2 < 4);

        return -1;
    }

    return -1;
}

int sub_02067D58(const MapObject *mapObj, PlayerAvatar *playerAvatar, int param2, int param3)
{
    int v0 = Player_GetXPos(playerAvatar);
    int v1 = Player_GetZPos(playerAvatar);
    int v2 = sub_02067DA8(mapObj, param2, param3, v0, v1, 0);

    if (v2 != -1) {
        if (sub_02067E74(mapObj, param2, v2) == 1) {
            v2 = -1;
        }
    }

    return v2;
}

static int sub_02067DA8(const MapObject *mapObj, int param1, int param2, int param3, int param4, int param5)
{
    return Unk_020EF6C0[param1](mapObj, param2, param3, param4, param5);
}

static int sub_02067DC4(const MapObject *mapObj, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v0 = MapObject_GetX(mapObj);

    if (v0 == param2) {
        v1 = MapObject_GetZ(mapObj);

        if ((param3 < v1) && (param3 >= (v1 - param1))) {
            return v1 - param3;
        }
    }

    return -1;
}

static int sub_02067DF0(const MapObject *mapObj, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v0 = MapObject_GetX(mapObj);

    if (v0 == param2) {
        v1 = MapObject_GetZ(mapObj);

        if ((param3 > v1) && (param3 <= (v1 + param1))) {
            return param3 - v1;
        }
    }

    return -1;
}

static int sub_02067E1C(const MapObject *mapObj, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v1 = MapObject_GetZ(mapObj);

    if (v1 == param3) {
        v0 = MapObject_GetX(mapObj);

        if ((param2 < v0) && (param2 >= (v0 - param1))) {
            return v0 - param2;
        }
    }

    return -1;
}

static int sub_02067E48(const MapObject *mapObj, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v1 = MapObject_GetZ(mapObj);

    if (v1 == param3) {
        v0 = MapObject_GetX(mapObj);

        if ((param2 > v0) && (param2 <= (v0 + param1))) {
            return param2 - v0;
        }
    }

    return -1;
}

static int (*const Unk_020EF6C0[])(const MapObject *, int, int, int, int) = {
    sub_02067DC4,
    sub_02067DF0,
    sub_02067E1C,
    sub_02067E48
};

static int sub_02067E74(const MapObject *mapObj, int param1, int param2)
{
    int v0, v1, v2, v3;
    u32 v4;

    if (param2 == 0) {
        return 1;
    }

    v1 = MapObject_GetX(mapObj);
    v2 = MapObject_GetZ(mapObj);
    v3 = MapObject_GetY(mapObj);
    v1 += MapObject_GetDxFromDir(param1);
    v2 += MapObject_GetDzFromDir(param1);

    for (v0 = 0; v0 < (param2 - 1); v0++) {
        v4 = sub_02063E94(mapObj, v1, v3, v2, param1);
        v4 &= ~(1 << 0);

        if (v4) {
            return 1;
        }

        v1 += MapObject_GetDxFromDir(param1);
        v2 += MapObject_GetDzFromDir(param1);
    }

    v4 = sub_02063E94(mapObj, v1, v3, v2, param1);
    v4 &= ~(1 << 0);

    if (v4 == (1 << 2)) {
        return 0;
    }

    return 1;
}

static int sub_02067F14(MapObject *mapObj)
{
    return Script_GetTrainerID(MapObject_GetScript(mapObj));
}

int sub_02067F24(MapObject *mapObj)
{
    return sub_02067F14(mapObj);
}

static MapObject *sub_02067F2C(FieldSystem *fieldSystem, MapObjectManager *param1, MapObject *param2, int param3)
{
    int v0;
    MapObject *v1;

    v0 = 0;

    while (sub_020625B0(param1, &v1, &v0, MAP_OBJ_STATUS_0)) {
        if (v1 != param2) {
            int v2 = sub_02067C54(v1);

            if ((v2 == 0x1) || (v2 == 0x2)) {
                if (param3 == sub_02067F14(v1)) {
                    return v1;
                }
            }
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

int sub_02067F88(FieldSystem *fieldSystem, MapObject *param1)
{
    int v0 = sub_02067C54(param1);

    if ((v0 == 0x1) || (v0 == 0x2)) {
        if (Script_IsTrainerDefeated(fieldSystem, sub_02067F14(param1)) == 0) {
            return 1;
        }
    }

    return 0;
}

SysTask *sub_02067FB8(FieldSystem *fieldSystem, MapObject *param1, PlayerAvatar *playerAvatar, int param3, int param4, int param5, int param6, int param7)
{
    return sub_02067FF0(fieldSystem, param1, playerAvatar, param3, param4, param5, param6, param7);
}

int sub_02067FD4(SysTask *task)
{
    GF_ASSERT(task != NULL);
    return sub_02068048(task);
}

void sub_02067FE8(SysTask *task)
{
    sub_02068054(task);
}

static SysTask *sub_02067FF0(FieldSystem *fieldSystem, MapObject *param1, PlayerAvatar *playerAvatar, int param3, int param4, int param5, int param6, int param7)
{
    SysTask *v0;
    UnkStruct_020EF6D0 *v1 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(UnkStruct_020EF6D0)));
    GF_ASSERT(v1 != NULL);

    memset(v1, 0, (sizeof(UnkStruct_020EF6D0)));

    v1->unk_08 = param3;
    v1->unk_0C = param4;
    v1->unk_10 = param5;
    v1->unk_14 = param6;
    v1->unk_18 = param7;
    v1->fieldSystem = fieldSystem;
    v1->unk_24 = param1;
    v1->playerAvatar = playerAvatar;

    v0 = SysTask_Start(sub_0206806C, v1, 0xff);
    GF_ASSERT(v0 != NULL);

    return v0;
}

static int sub_02068048(SysTask *task)
{
    UnkStruct_020EF6D0 *v0 = SysTask_GetParam(task);
    return v0->unk_04;
}

static void sub_02068054(SysTask *task)
{
    UnkStruct_020EF6D0 *v0 = SysTask_GetParam(task);

    Heap_FreeToHeapExplicit(HEAP_ID_FIELD, v0);
    SysTask_Done(task);
}

static void sub_0206806C(SysTask *task, void *param1)
{
    UnkStruct_020EF6D0 *v0 = param1;

    while (Unk_020EF6D0[v0->unk_00](v0) == 1) {
        (void)0;
    }
}

static int sub_02068088(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = param0->unk_24;

    if (MapObject_IsMoving(v0) == 1) {
        MapObject_SetPauseMovementOff(v0);
    }

    param0->unk_00 = 1;
    return 1;
}

static int sub_020680A4(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = param0->unk_24;

    if (MapObject_IsMoving(v0) == 1) {
        return 0;
    }

    ov5_021ECDFC(param0->unk_24, param0->unk_08);
    MapObject_SetStatusFlagOn(v0, MAP_OBJ_STATUS_PAUSE_MOVEMENT);

    param0->unk_00 = 2;
    return 1;
}

static int sub_020680D0(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = Player_MapObject(param0->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(v0) == 0) {
        return 0;
    }

    {
        u32 v1 = MapObject_GetMovementType(param0->unk_24);

        switch (v1) {
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
            param0->unk_00 = 7;
            return 1;
        }
    }

    param0->unk_00 = 3;
    return 1;
}

static int sub_02068118(UnkStruct_020EF6D0 *param0)
{
    int v0;

    if (LocalMapObj_IsAnimationSet(param0->unk_24) == 0) {
        return 0;
    }

    GF_ASSERT(param0->unk_08 != -1);

    v0 = MovementAction_TurnActionTowardsDir(param0->unk_08, MOVEMENT_ACTION_FACE_NORTH);
    LocalMapObj_SetAnimationCode(param0->unk_24, v0);
    param0->unk_00 = 4;

    return 0;
}

static int sub_02068150(UnkStruct_020EF6D0 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_24) == 0) {
        return 0;
    }

    param0->unk_00 = 5;
    return 1;
}

static int sub_0206816C(UnkStruct_020EF6D0 *param0)
{
    param0->unk_20 = ov5_021F5D8C(param0->unk_24, 0, 0, 0);
    param0->unk_00 = 6;

    return 0;
}

static int sub_02068188(UnkStruct_020EF6D0 *param0)
{
    if (ov5_021F5C4C(param0->unk_20) == 1) {
        sub_0207136C(param0->unk_20);
        param0->unk_00 = 9;
    }

    return 0;
}

static int sub_020681A4(UnkStruct_020EF6D0 *param0)
{
    LocalMapObj_SetAnimationCode(param0->unk_24, MOVEMENT_ACTION_REVEAL_TRAINER);
    param0->unk_00 = 8;

    return 0;
}

static int sub_020681B8(UnkStruct_020EF6D0 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_24) == 1) {
        param0->unk_00 = 9;
    }

    return 0;
}

static int sub_020681D0(UnkStruct_020EF6D0 *param0)
{
    param0->unk_1C++;

    if (param0->unk_1C >= 30) {
        param0->unk_1C = 0;
        param0->unk_00 = 10;
    }

    return 0;
}

static int sub_020681E8(UnkStruct_020EF6D0 *param0)
{
    if (param0->unk_0C <= 1) {
        param0->unk_00 = 13;
        return 1;
    }

    param0->unk_00 = 11;
    return 1;
}

static int sub_02068200(UnkStruct_020EF6D0 *param0)
{
    int v0;

    if (LocalMapObj_IsAnimationSet(param0->unk_24) == 1) {
        v0 = MovementAction_TurnActionTowardsDir(param0->unk_08, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
        LocalMapObj_SetAnimationCode(param0->unk_24, v0);
        param0->unk_00 = 12;
    }

    return 0;
}

static int sub_02068228(UnkStruct_020EF6D0 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_24) == 0) {
        return 0;
    }

    param0->unk_0C--;
    param0->unk_00 = 10;

    return 1;
}

static int sub_02068248(UnkStruct_020EF6D0 *param0)
{
    param0->unk_1C++;

    if (param0->unk_1C < 8) {
        return 0;
    }

    param0->unk_1C = 0;
    param0->unk_00 = 14;

    return 1;
}

static int sub_02068264(UnkStruct_020EF6D0 *param0)
{
    int v0, v1;
    MapObject *v2 = Player_MapObject(param0->playerAvatar);
    v1 = sub_02064488(MapObject_GetX(v2), MapObject_GetZ(v2), MapObject_GetX(param0->unk_24), MapObject_GetZ(param0->unk_24));

    if ((PlayerAvatar_GetDir(param0->playerAvatar) != v1) && ((param0->unk_18 == 0) || (param0->unk_14 == 2))) {
        if (LocalMapObj_IsAnimationSet(v2) == 1) {
            MapObject_SetStatusFlagOff(v2, MAP_OBJ_STATUS_LOCK_DIR);
            v0 = MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_FACE_NORTH);
            LocalMapObj_SetAnimationCode(v2, v0);
            param0->unk_00 = 15;
        }
    } else {
        param0->unk_00 = 16;
    }

    return 0;
}

static int sub_020682E0(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = Player_MapObject(param0->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(v0) == 0) {
        return 0;
    }

    sub_020656AC(v0);
    param0->unk_00 = 16;

    return 1;
}

static int sub_02068308(UnkStruct_020EF6D0 *param0)
{
    sub_020656AC(param0->unk_24);

    if ((PersistedMapFeatures_IsCurrentDynamicMap(param0->fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == 0) || (ov8_0224C5DC(param0->fieldSystem, param0->unk_24) == 0)) {
        MapObject_SetMoveCode(param0->unk_24, MOVEMENT_TYPE_NONE);
    }

    param0->unk_00 = 17;
    return 1;
}

static int sub_0206833C(UnkStruct_020EF6D0 *param0)
{
    param0->unk_04 = 1;
    return 0;
}

static int (*const Unk_020EF6D0[])(UnkStruct_020EF6D0 *) = {
    sub_02068088,
    sub_020680A4,
    sub_020680D0,
    sub_02068118,
    sub_02068150,
    sub_0206816C,
    sub_02068188,
    sub_020681A4,
    sub_020681B8,
    sub_020681D0,
    sub_020681E8,
    sub_02068200,
    sub_02068228,
    sub_02068248,
    sub_02068264,
    sub_020682E0,
    sub_02068308,
    sub_0206833C
};
