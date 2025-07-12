#include "unk_0205C22C.h"

#include <nitro.h>
#include <string.h>

#include "generated/movement_actions.h"
#include "generated/movement_types.h"

#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_0205B4F8.h"
#include "struct_defs/struct_0205C22C.h"
#include "struct_defs/struct_0205C680.h"
#include "struct_defs/struct_0205C924.h"
#include "struct_defs/struct_0205C95C.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F134C.h"
#include "overlay005/ov5_021F600C.h"

#include "field_task.h"
#include "heap.h"
#include "map_object.h"
#include "pal_pad.h"
#include "player_avatar.h"
#include "savedata.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_020366A0.h"
#include "unk_0205B33C.h"
#include "unk_020655F4.h"
#include "unk_020711EC.h"

#include "constdata/const_020ED570.h"

static void sub_0205C304(SysTask *param0, void *param1);
static void sub_0205C44C(UnkStruct_0205C22C *param0, UnkStruct_0205B43C *param1, MapObjectManager *param2, PalPad *param3);
static int sub_0205C340(UnkStruct_0205C22C *param0, int param1, WMBssDesc *param2, PalPad *param3);
static void sub_0205C51C(UnkStruct_0205C22C *param0, MapObjectManager *param1);
static void sub_0205C680(UnkStruct_0205C680 *param0, int param1);
static void sub_0205C6BC(UnkStruct_0205C680 *param0);
static void sub_0205C6E0(UnkStruct_0205C680 *param0, MapObject *param1, int param2, int param3);
static void sub_0205C788(UnkStruct_0205C680 *param0, MapObject *param1);
static void sub_0205C7BC(UnkStruct_0205C680 *param0, MapObject *param1);
static void sub_0205C7E4(MapObjectManager *param0, int param1, int param2);
static void sub_0205C444(UnkStruct_0205C680 param0[], int param1, int param2);
void sub_0205C970(UnkStruct_0205C95C *param0);
UnkStruct_0205C95C *sub_0205C95C(int heapID);
static void sub_0205C944(UnkStruct_0205C95C *param0);
static void sub_0205C924(UnkStruct_0205C924 *param0);
static void sub_0205C900(UnkStruct_0205C95C *param0);
static void sub_0205C8DC(UnkStruct_0205C924 *param0);

UnkStruct_0205C22C *sub_0205C22C(UnkStruct_0205B43C *param0)
{
    UnkStruct_0205C22C *v0 = (UnkStruct_0205C22C *)Heap_Alloc(HEAP_ID_31, sizeof(UnkStruct_0205C22C));

    MI_CpuClearFast(v0, sizeof(UnkStruct_0205C22C));

    v0->unk_00 = param0;
    v0->unk_47C = 1;
    v0->unk_04 = SysTask_Start(sub_0205C304, v0, 11);
    v0->fieldSystem = sub_0205B770(param0);
    v0->unk_474 = SaveData_SaveTable(v0->fieldSystem->saveData, SAVE_TABLE_ENTRY_PAL_PAD);
    v0->playerAvatar = v0->fieldSystem->playerAvatar;

    Heap_CreateAtEnd(HEAP_ID_FIELDMAP, HEAP_ID_89, 10000);
    v0->unk_478 = sub_0205C95C(HEAP_ID_89);
    sub_0205C2C8(v0);

    return v0;
}

void sub_0205C2B0(UnkStruct_0205C22C *param0)
{
    int v0;

    for (v0 = 0; v0 < 50 + 1; v0++) {
        if (param0->unk_0C[v0].unk_01 != 0) {
            param0->unk_0C[v0].unk_00 = 3;
        }
    }
}

void sub_0205C2C8(UnkStruct_0205C22C *param0)
{
    int v0;

    for (v0 = 0; v0 < 50 + 1; v0++) {
        param0->unk_0C[v0].unk_00 = 0;
        param0->unk_0C[v0].unk_01 = 0;
        param0->unk_0C[v0].unk_02 = 0;
        param0->unk_0C[v0].unk_03 = 0;
    }
}

void sub_0205C2E0(UnkStruct_0205C22C *param0)
{
    SysTask_Done(param0->unk_04);
    sub_0205C970(param0->unk_478);
    Heap_Destroy(HEAP_ID_89);
    Heap_Free(param0);
}

static void sub_0205C304(SysTask *task, void *param1)
{
    UnkStruct_0205C22C *v0 = (UnkStruct_0205C22C *)param1;
    UnkStruct_0205B43C *v1 = v0->unk_00;

    if (!FieldSystem_IsRunningTask(v0->fieldSystem)) {
        v0->playerAvatar = v0->fieldSystem->playerAvatar;
        sub_0205C44C(v0, v1, v0->fieldSystem->mapObjMan, v0->unk_474);
        sub_0205C51C(v0, v0->fieldSystem->mapObjMan);
    }
}

static int sub_0205C340(UnkStruct_0205C22C *param0, int param1, WMBssDesc *param2, PalPad *param3)
{
    int v0, v1, v2 = 0;
    UnkStruct_0203330C *v3;
    UnkStruct_0205B4F8 *v4;
    MapObject *v5;

    if (param2 == NULL) {
        for (v0 = 0; v0 < 4; v0++) {
            v1 = Unk_020ED570[param1] + v0;
            sub_0205C444(param0->unk_0C, v1, 3);
        }

        return 0;
    }

    v3 = (UnkStruct_0203330C *)param2->gameInfo.userGameInfo;
    v4 = (UnkStruct_0205B4F8 *)v3->unk_30;

    if (param0->unk_0C[param1].unk_0C != v3->unk_00) {
        for (v0 = 0; v0 < 4; v0++) {
            v1 = Unk_020ED570[param1] + v0;
            sub_0205C444(param0->unk_0C, v1, 3);
        }

        return 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1 = Unk_020ED570[param1] + v0;

        switch (param0->unk_0C[v1].unk_01) {
        case 0:
            if (v4->unk_18[v0] != 0) {
                param0->unk_0C[v1].unk_00 = 2;
                param0->unk_0C[v1].unk_08 = (v4->unk_18[v0] & 0x7f);
                param0->unk_0C[v1].unk_02 = PalPad_TrainerIsFriend(param3, v4->unk_00[v0]);
                v2 = 1;
            }
            break;
        case 2:
            if (v4->unk_18[v0] == 0) {
                sub_0205C444(param0->unk_0C, v1, 3);
                {
                    int v6;

                    for (v6 = 0; v6 < 4; v6++) {
                        (void)0;
                    }
                }
            } else {
                v2 = 1;
            }
            break;
        case 4:
            param0->unk_0C[v1].unk_00 = 0;
            break;
        }
    }

    return v2;
}

static void sub_0205C444(UnkStruct_0205C680 param0[], int param1, int param2)
{
    param0[param1].unk_00 = param2;
}

static void sub_0205C44C(UnkStruct_0205C22C *param0, UnkStruct_0205B43C *param1, MapObjectManager *param2, PalPad *param3)
{
    WMBssDesc *v0;
    int v1;
    UnkStruct_0203330C *v2;
    TrainerInfo *v3;

    for (v1 = 0; v1 < 10; v1++) {
        v0 = sub_0205B774(param1, v1);

        if (v0 != NULL) {
            v2 = (UnkStruct_0203330C *)v0->gameInfo.userGameInfo;
            v3 = (TrainerInfo *)v2->unk_10;
        } else {
            v2 = NULL;
            v3 = NULL;
        }

        switch (param0->unk_0C[v1].unk_01) {
        case 0:
            if (v0 != NULL) {
                param0->unk_0C[v1].unk_08 = TrainerInfo_Appearance(v3);
                param0->unk_0C[v1].unk_02 = PalPad_TrainerIsFriend(param3, TrainerInfo_ID(v3));
                param0->unk_0C[v1].unk_0C = v2->unk_00;

                if (sub_0205C340(param0, v1, v0, param3)) {
                    param0->unk_0C[v1].unk_00 = 2;
                } else {
                    param0->unk_0C[v1].unk_00 = 1;
                }
            }
            break;
        case 2:
            if (v0 == NULL) {
                sub_0205C444(param0->unk_0C, v1, 3);
            } else {
                if (param0->unk_0C[v1].unk_0C != v2->unk_00) {
                    sub_0205C444(param0->unk_0C, v1, 3);
                }
            }

            if (sub_0205C340(param0, v1, v0, param3)) {
                if (param0->unk_0C[v1].unk_09 == 1) {
                    param0->unk_0C[v1].unk_00 = 3;
                }
            }
            break;
        case 4:
            param0->unk_0C[v1].unk_00 = 0;
            break;
        }
    }
}

static void sub_0205C51C(UnkStruct_0205C22C *param0, MapObjectManager *param1)
{
    MapObject *v0;
    int v1, v2, v3;

    GF_ASSERT(param0->playerAvatar != NULL);

    v2 = Player_GetXPos(param0->playerAvatar);
    v3 = Player_GetZPos(param0->playerAvatar);

    for (v1 = 0; v1 < 50; v1++) {
        v0 = MapObjMan_LocalMapObjByIndex(param1, v1 + 1);

        if (v0 == NULL) {
            GF_ASSERT(0);
        }

        switch (param0->unk_0C[v1].unk_01) {
        case 0:
            if (LocalMapObj_IsAnimationSet(v0) == 1) {
                int v4 = param0->unk_0C[v1].unk_00;

                if ((v4 == 1) || (v4 == 2)) {
                    sub_0205C6E0(&param0->unk_0C[v1], v0, v2, v3);
                }
            }
            break;
        case 1:
            if (LocalMapObj_IsAnimationSet(v0) == 1) {
                if (param0->unk_0C[v1].unk_00 == 3) {
                    param0->unk_0C[v1].unk_01 = 0;
                    param0->unk_0C[v1].unk_00 = 0;
                    sub_0205C680(&param0->unk_0C[v1], 1);
                    continue;
                }

                sub_020656AC(v0);
                sub_02062DB4(v0, 0);

                if ((param0->unk_0C[v1].unk_00 == 1) && (param0->unk_0C[v1].unk_09 == 0)) {
                    MapObject_SetMoveCode(v0, MOVEMENT_TYPE_WANDER_AROUND);
                    MapObject_SetMovementRangeX(v0, 1);
                    MapObject_SetMovementRangeZ(v0, 1);
                    param0->unk_0C[v1].unk_09 = 1;
                }

                param0->unk_0C[v1].unk_01 = 2;
                param0->unk_0C[v1].unk_00 = 0;
            }
            break;
        case 2:
            if (LocalMapObj_IsAnimationSet(v0) == 1) {
                sub_0205C7BC(&param0->unk_0C[v1], v0);

                if (param0->unk_0C[v1].unk_00 == 3) {
                    sub_0205C788(&param0->unk_0C[v1], v0);
                }

                sub_0205C6BC(&param0->unk_0C[v1]);
            }
            break;
        case 3:
            if (LocalMapObj_IsAnimationSet(v0) == 1) {
                sub_020656AC(v0);

                param0->unk_0C[v1].unk_01 = 4;
                param0->unk_0C[v1].unk_00 = 0;
                param0->unk_0C[v1].unk_09 = 0;

                MapObject_SetHidden(v0, 1);
                sub_02062D80(v0, 0);
            }
            break;
        case 4:
            param0->unk_0C[v1].unk_01 = 0;
            break;
        }
    }

    sub_0205C7BC(&param0->unk_0C[50], Player_MapObject(param0->playerAvatar));
    sub_0205C6BC(&param0->unk_0C[50]);
}

static void sub_0205C680(UnkStruct_0205C680 *param0, int param1)
{
    if (param0->unk_10 != NULL) {
        if (sub_020714F0(param0->unk_10)) {
            sub_0207136C(param0->unk_10);
        }

        param0->unk_10 = NULL;
    }

    if (param1) {
        if (param0->unk_14 != NULL) {
            if (sub_020714F0(param0->unk_14)) {
                sub_0207136C(param0->unk_14);
            }

            param0->unk_14 = NULL;
        }
    }
}

static void sub_0205C6BC(UnkStruct_0205C680 *param0)
{
    if (param0->unk_04) {
        param0->unk_06--;

        if (param0->unk_06 == 0) {
            sub_0205C680(param0, 0);
            param0->unk_04 = 0;
        }
    }
}

static void sub_0205C6E0(UnkStruct_0205C680 *param0, MapObject *param1, int param2, int param3)
{
    int v0 = MapObject_GetXInitial(param1);
    int v1 = MapObject_GetYInitial(param1);
    int v2 = MapObject_GetZInitial(param1);

    if ((v0 == param2) && (v2 == param3)) {
        return;
    }

    Sound_PlayEffect(SEQ_SE_DP_TELE2);
    sub_02061AD4(param1, param0->unk_08);
    sub_0205C680(param0, 0);
    MapObject_SetPosDirFromCoords(param1, v0, v1, v2, 1);
    MapObject_Face(param1, 1);
    LocalMapObj_SetAnimationCode(param1, MOVEMENT_ACTION_WARP_IN);
    MapObject_SetHidden(param1, 0);
    sub_02062D80(param1, 1);

    param0->unk_01 = 1;

    if (param0->unk_02 != 0) {
        if (param0->unk_02 == 1) {
            param0->unk_14 = ov5_021F16D4(param1, 1);
        } else if (param0->unk_02 >= 2) {
            param0->unk_14 = ov5_021F16D4(param1, 2);
        }

        param0->unk_02 = 0;
    }
}

static void sub_0205C788(UnkStruct_0205C680 *param0, MapObject *param1)
{
    LocalMapObj_SetAnimationCode(param1, MOVEMENT_ACTION_WARP_OUT);
    sub_02062DB4(param1, 1);
    MapObject_SetMoveCode(param1, MOVEMENT_TYPE_NONE);
    sub_0205C680(param0, 1);

    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_01 = 3;
}

static void sub_0205C7BC(UnkStruct_0205C680 *param0, MapObject *param1)
{
    if (param0->unk_03 == 1) {
        if (param0->unk_04 == 0) {
            param0->unk_10 = ov5_021F6094(param1);
            param0->unk_06 = 30;
            param0->unk_03 = 0;
            param0->unk_04 = 1;
        }
    }
}

static void sub_0205C7E4(MapObjectManager *mapObjMan, int param1, int param2)
{
    int v0;
    MapObject *v1;

    for (v0 = param1; v0 < param2; v0++) {
        v1 = MapObjMan_LocalMapObjByIndex(mapObjMan, v0);

        if (v1 == NULL) {
            GF_ASSERT(0);
        }

        MapObject_SetHidden(v1, 1);
        sub_02062D80(v1, 0);
        sub_02062DB4(v1, 1);
    }
}

void sub_0205C820(MapObjectManager *mapObjMan, UnkStruct_0205C22C *param1)
{
    MapObject *mapObj;
    UnkStruct_0205C680 *v1;

    mapObj = MapObjMan_LocalMapObjByIndex(mapObjMan, 0);

    if (mapObj == NULL) {
        GF_ASSERT(0);
    }

    if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
        if (sub_02036AA0() || sub_02036A68()) {
            int v2;

            for (v2 = 0; v2 < 10; v2++) {
                v1 = &param1->unk_0C[v2];

                if (v1->unk_01 != 1) {
                    continue;
                }

                mapObj = MapObjMan_LocalMapObjByIndex(mapObjMan, v2 + 1);

                if (mapObj == NULL) {
                    GF_ASSERT(0);
                }

                sub_02061AD4(mapObj, v1->unk_08);
                MapObject_Face(mapObj, 1);
                LocalMapObj_SetAnimationCode(mapObj, MOVEMENT_ACTION_WARP_IN);
                MapObject_SetHidden(mapObj, 0);
                sub_02062D80(mapObj, 1);

                v1->unk_01 = 1;

                if (v1->unk_02 != 0) {
                    if (v1->unk_02 == 1) {
                        v1->unk_14 = ov5_021F16D4(mapObj, 1);
                    } else if (v1->unk_02 >= 2) {
                        v1->unk_14 = ov5_021F16D4(mapObj, 2);
                    }

                    v1->unk_02 = 0;
                }
            }

            sub_0205C7E4(mapObjMan, 11, 51);
        } else {
            sub_0205C7E4(mapObjMan, 1, 51);
        }
    }
}

static void sub_0205C8DC(UnkStruct_0205C924 *param0)
{
    param0->unk_00 = Strbuf_Init(7 + 1, HEAP_ID_89);
    param0->unk_04 = NULL;
    param0->unk_08 = NULL;

    sub_02014A9C(&param0->unk_14, 0);

    param0->unk_10 = 0;
    param0->unk_0C = 0;
}

static void sub_0205C900(UnkStruct_0205C95C *param0)
{
    int v0;

    for (v0 = 0; v0 < 30; v0++) {
        sub_0205C8DC(&param0->unk_00[v0]);
    }

    param0->unk_348 = 0;
    param0->unk_34C = 0;
}

static void sub_0205C924(UnkStruct_0205C924 *param0)
{
    Heap_Free(param0->unk_00);

    if (param0->unk_04 != NULL) {
        Strbuf_Free(param0->unk_04);
    }

    if (param0->unk_08 != NULL) {
        Strbuf_Free(param0->unk_08);
    }
}

static void sub_0205C944(UnkStruct_0205C95C *param0)
{
    int v0;

    for (v0 = 0; v0 < 30; v0++) {
        sub_0205C924(&param0->unk_00[v0]);
    }
}

UnkStruct_0205C95C *sub_0205C95C(int heapID)
{
    UnkStruct_0205C95C *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_0205C95C));

    sub_0205C900(v0);
    return v0;
}

void sub_0205C970(UnkStruct_0205C95C *param0)
{
    sub_0205C944(param0);
    Heap_Free(param0);
}
