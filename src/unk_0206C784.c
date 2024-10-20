#include "unk_0206C784.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02055130.h"
#include "struct_defs/struct_0206C8D4.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay005/struct_ov5_021D5894.h"
#include "overlay005/struct_ov5_021E1890_decl.h"

#include "camera.h"
#include "field_map_change.h"
#include "heap.h"
#include "player_avatar.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[2];
    fx32 unk_08;
    int unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    VecFx32 unk_24;
    UnkStruct_ov5_021E1890 *unk_30;
    UnkStruct_ov5_021D5894 unk_34;
    fx32 unk_7C;
} UnkStruct_0206CAD0;

static void sub_0206C8D4(FieldSystem *fieldSystem, const u8 param1, UnkStruct_ov5_021D5894 *param2);
static BOOL sub_0206C8F8(TaskManager *param0);
static BOOL sub_0206C964(TaskManager *param0);
static BOOL sub_0206CAD0(UnkStruct_0206CAD0 *param0);
static BOOL sub_0206CB8C(const fx32 *param0, const fx32 *param1, u8 *param2);
static void sub_0206CBA0(FieldSystem *fieldSystem);
static void sub_0206CC64(UnkStruct_0206CAD0 *param0);

void sub_0206C784(FieldSystem *fieldSystem, const u8 param1, const u8 param2, const int param3, const int param4, const int param5)
{
    UnkStruct_0206CAD0 *v0;
    BOOL v1;
    BOOL v2;
    UnkStruct_02055130 v3;
    int v4;
    int v5;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206CAD0));

    v0->unk_01 = param1;
    v0->unk_04 = param2;
    v0->unk_18 = param3;
    v0->unk_1C = param4;
    v0->unk_20 = param5;
    v0->unk_34 = *(fieldSystem->unk_44);

    v1 = 0;

    v0->unk_10 = 0xffffffff;
    v0->unk_05 = 0;
    v0->unk_08 = 0;

    sub_02004550(64, 0, 0);

    if (param1 == 3) {
        v4 = 34;
        sub_020550F4(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), 1, -3, 3, 6, &v3);
        v1 = 1;
        v5 = (25 * 16 * FX32_ONE);
        v0->unk_10 = (14 * 16 * FX32_ONE);
    } else if (param1 == 2) {
        v4 = 538;
        sub_020550F4(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), -2, 2, 6, 3, &v3);
        v1 = 1;
        v5 = (12 * 16 * FX32_ONE);
    }

    if (v1) {
        v2 = sub_02055178(fieldSystem, v4, &v3, &v0->unk_30);

        if (v2) {
            v0->unk_0C = v5;
            v0->unk_14 = 0;
            v0->unk_03 = 0;
            v0->unk_7C = (FX32_ONE / 4);

            PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v0->unk_24);
            Camera_ReleaseTarget(fieldSystem->camera);
            Camera_TrackTarget(&v0->unk_24, fieldSystem->camera);

            if (v0->unk_10 != 0xffffffff) {
                v0->unk_02 = 0;
                v0->unk_00 = 1;

                sub_0206CBA0(fieldSystem);
                Sound_PlayEffect(1757);
            } else {
                v0->unk_00 = 0;
            }
        } else {
            GF_ASSERT(FALSE);
            Heap_FreeToHeap(v0);
            return;
        }
    } else {
        v0->unk_00 = 2;
    }

    FieldTask_Start(fieldSystem->unk_10, sub_0206C964, v0);
}

static void sub_0206C8D4(FieldSystem *fieldSystem, const u8 param1, UnkStruct_ov5_021D5894 *param2)
{
    UnkStruct_0206C8D4 *v0;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206C8D4));

    v0->unk_04 = param2;
    v0->unk_00 = param1;

    FieldTask_Start(fieldSystem->unk_10, sub_0206C8F8, v0);
}

static BOOL sub_0206C8F8(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_0206C8D4 *v1 = TaskManager_Environment(taskMan);
    int *v2 = FieldTask_GetState(taskMan);

    switch (*v2) {
    case 0:
        if ((v1->unk_00 == 1) || (v1->unk_00 == 2)) {
            sub_0203E2D4(fieldSystem, v1);
        } else {
            sub_0203E2AC(fieldSystem, v1);
        }
        break;
    case 1:
        if (sub_020509B4(fieldSystem)) {
            return 0;
        }
        break;
    case 2:
        Heap_FreeToHeap(v1);
        return 1;
    }

    (*v2)++;
    return 0;
}

static BOOL sub_0206C964(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_0206CAD0 *v1 = TaskManager_Environment(taskMan);

    switch (v1->unk_00) {
    case 0:
        sub_0206CC64(v1);

        if (sub_0206CAD0(v1)) {
            v1->unk_00 = 2;
        }
        break;
    case 1: {
        BOOL v2;

        sub_0206CC64(v1);
        v2 = sub_0206CAD0(v1);

        if (!v1->unk_02) {
            if (sub_0206CB8C(&v1->unk_10, &v1->unk_14, &v1->unk_02)) {
                ov5_021D4250(fieldSystem->unk_54, 1, 0);
                ov5_021D4250(fieldSystem->unk_54, 2, 0);
                Sound_PlayEffect(1758);
            }
        } else {
            if ((ov5_021D42F0(fieldSystem->unk_54, 1)) && (ov5_021D42F0(fieldSystem->unk_54, 2)) && v2) {
                v1->unk_00 = 2;
            }
        }
    } break;
    case 2:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 11);
        sub_0200564C(0, 6);
        v1->unk_00 = 3;
        break;
    case 3:
        if (!ScreenWipe_Done() || (Sound_CheckFade() != 0)) {
            return 0;
        }

        if (v1->unk_10 != 0xffffffff) {
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 1);
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 2);
        }

        FieldTask_FinishFieldMap(taskMan);
        v1->unk_00 = 4;
        break;
    case 4:
        sub_0206C8D4(fieldSystem, v1->unk_01, &v1->unk_34);
        v1->unk_00 = 5;
        break;
    case 5:
        FieldTask_ChangeMapToLocation(taskMan, v1->unk_18, -1, v1->unk_1C, v1->unk_20, v1->unk_04);
        v1->unk_00 = 6;
        break;
    case 6:
        Sound_PlayMapBGM(fieldSystem, v1->unk_18);
        FieldTask_StartFadeIn(taskMan);
        v1->unk_00 = 7;
        break;
    case 7:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static BOOL sub_0206CAD0(UnkStruct_0206CAD0 *param0)
{
    VecFx32 v0;

    v0 = ov5_021E1894(param0->unk_30);

    switch (param0->unk_01) {
    case 0:
        v0.z += param0->unk_7C;
        param0->unk_24.z += param0->unk_7C;
        break;
    case 3:
        v0.z -= param0->unk_7C;
        param0->unk_24.z -= param0->unk_7C;
        break;
    case 2:
        v0.x += param0->unk_7C;
        param0->unk_24.x += param0->unk_7C;
        break;
    case 1:
        v0.x -= param0->unk_7C;
        param0->unk_24.x -= param0->unk_7C;
        break;
    default:
        GF_ASSERT(0);
        return 1;
    }

    if (param0->unk_7C < (FX32_ONE)) {
        param0->unk_03++;

        if (param0->unk_03 >= 24) {
            param0->unk_7C += FX32_ONE;
            param0->unk_03 = 0;
        }
    }

    ov5_021E18A4(param0->unk_30, &v0);
    param0->unk_14 += param0->unk_7C;

    if (param0->unk_0C <= param0->unk_14) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL sub_0206CB8C(const fx32 *param0, const fx32 *param1, u8 *param2)
{
    if ((*param0) <= (*param1)) {
        (*param2) = 1;
        return 1;
    } else {
        return 0;
    }
}

static void sub_0206CBA0(FieldSystem *fieldSystem)
{
    u8 v0;
    BOOL v1;
    int v2[2] = { 31, 32 };
    int v3[2] = { 1, 2 };

    for (v0 = 0; v0 < 2; v0++) {
        v1 = sub_020552B4(fieldSystem, v2[v0], NULL, NULL);

        if (v1) {
            NNSG3dResMdl *v4;
            NNSG3dResFileHeader **v5;
            UnkStruct_ov5_021E1890 *v6;
            NNSG3dRenderObj *v7;

            v5 = ov5_021EF9E8(v2[v0], fieldSystem->unk_30);
            v4 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*v5), 0);
            v1 = sub_020552B4(fieldSystem, v2[v0], &v6, NULL);

            GF_ASSERT(v1);
            v7 = ov5_021E18BC(v6);

            ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, v3[v0], v2[v0], v7, v4, ov5_021EFAA0(fieldSystem->unk_30), 1, 1, 0);
        } else {
            GF_ASSERT(FALSE);
        }
    }
}

static void sub_0206CC64(UnkStruct_0206CAD0 *param0)
{
    switch (param0->unk_01) {
    case 3:
        if (param0->unk_08 < (FX32_ONE * 16 * 2)) {
            param0->unk_24.x += (FX32_ONE);
            param0->unk_08 += (FX32_ONE);
        }
        break;
    case 2:
        if (param0->unk_08 < (FX32_ONE * 16 * 3)) {
            param0->unk_24.z += (FX32_ONE / 2);
            param0->unk_08 += (FX32_ONE / 2);
        }
        break;
    default:
        GF_ASSERT(0);
        return;
    }
}
