#include "overlay005/ov5_021D431C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02055130.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay005/struct_ov5_021D3CE4_decl.h"
#include "overlay005/struct_ov5_021E1890_decl.h"

#include "camera.h"
#include "heap.h"
#include "map_object.h"
#include "player_avatar.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_02056B30.h"
#include "unk_020655F4.h"

typedef struct UnkStruct_ov5_021D432C_t {
    int unk_00;
    UnkStruct_02055130 unk_04;
    int unk_14;
    int unk_18;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    BOOL unk_20;
    u16 unk_24;
} UnkStruct_ov5_021D432C;

typedef struct UnkStruct_ov5_021D4E00_t {
    int unk_00;
    u8 unk_04;
    BOOL unk_08;
    u16 unk_0C;
} UnkStruct_ov5_021D4E00;

static void ov5_021D4798(Camera *camera, u8 *param1);
static void ov5_021D47DC(Camera *camera, u8 *param1);
static u8 ov5_021D481C(const int param0);

UnkStruct_ov5_021D432C *ov5_021D431C(void)
{
    UnkStruct_ov5_021D432C *v0;

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021D432C));
    v0->unk_00 = 0;

    return v0;
}

void ov5_021D432C(UnkStruct_ov5_021D432C *param0)
{
    Heap_FreeToHeap(param0);
}

void ov5_021D4334(const int param0, const int param1, UnkStruct_ov5_021D432C *param2)
{
    param2->unk_14 = param0;
    param2->unk_18 = param1;
}

BOOL ov5_021D433C(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        UnkStruct_ov5_021E1890 *v2;
        UnkStruct_02055130 v3;
        int v4;
        int v5[] = {
            66,
            67,
            68,
            69,
            246,
            70,
            427,
            456,
            260,
            312,
            313,
            438,
            444,
            441,
            442,
            298,
            484,
            128,
            527,
            75
        };

        param1->unk_20 = 0;
        param1->unk_1D = 0;

        sub_020550F4(param1->unk_14, param1->unk_18, -1, -1, 3, 1, &v3);

        param1->unk_1C = 1;

        v1 = sub_02055208(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            u8 v7;
            NNSG3dResTex *v8;

            v7 = ov5_021D3F94(fieldSystem->unk_50, v4);
            param1->unk_1E = v7;
            v8 = ov5_021EFAA0(fieldSystem->unk_30);

            ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, 1, v4, ov5_021E18BC(v2), ov5_021E18C0(v2), v8, v7, 1, 0);
        } else {
            GF_ASSERT(FALSE);
            return 1;
        }
        (param1->unk_00)++;
    } break;
    case 1: {
        int v9;
        int v10;
        int v11;

        v9 = ov5_021D4310(fieldSystem->unk_54, 1);

        if (v9 != 75) {
            Camera_ReleaseTarget(fieldSystem->camera);
            param1->unk_20 = 1;
        }

        if (ov5_021D481C(v9) == 1) {
            v10 = 1544;
        } else if (ov5_021D481C(v9) == 2) {
            v10 = 1492;
        } else {
            v10 = 1541;
        }

        if (param1->unk_1E == 2) {
            v11 = 0;
        } else if (param1->unk_1E == 4) {
            v11 = 0;
        } else {
            GF_ASSERT(0);
            v11 = 0;
        }

        ov5_021D4278(fieldSystem->unk_54, 1, v11, v10);
    }
        (param1->unk_00)++;
        break;
    case 2: {
        BOOL v12;

        v12 = ov5_021D42F0(fieldSystem->unk_54, 1);

        if (v12) {
            (param1->unk_00)++;
        }
    } break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        LocalMapObj_SetAnimationCode(v0, 0xc);
        (param1->unk_00)++;
        break;
    case 4:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            MapObject_SetHidden(v0, 1);
            {
                int v13;
                int v14;
                int v15;

                v13 = ov5_021D4310(fieldSystem->unk_54, 1);

                if (ov5_021D481C(v13) == 1) {
                    v14 = 0;
                } else if (ov5_021D481C(v13) == 2) {
                    v14 = 0;
                } else {
                    v14 = 1543;
                }

                if (param1->unk_1E == 2) {
                    v15 = 1;
                } else if (param1->unk_1E == 4) {
                    v15 = 1;
                } else {
                    GF_ASSERT(0);
                    v15 = 1;
                }

                ov5_021D4278(fieldSystem->unk_54, 1, v15, v14);
            }
            (param1->unk_00)++;
        }
        break;
    case 5: {
        BOOL v16;

        v16 = ov5_021D42F0(fieldSystem->unk_54, 1);

        if (v16) {
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 1);
            return 1;
        }
    } break;
    }

    if (param1->unk_20) {
        ov5_021D4798(fieldSystem->camera, &param1->unk_1D);
    }

    return 0;
}

BOOL ov5_021D453C(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        UnkStruct_ov5_021E1890 *v2;
        UnkStruct_02055130 v3;
        int v4;
        int v5[] = {
            66,
            67,
            68,
            69,
            246,
            70,
            427,
            456,
            260,
            312,
            313,
            438,
            444,
            441,
            442,
            298,
            484,
            128,
            527,
            75
        };

        param1->unk_20 = 0;
        param1->unk_1D = 0;
        sub_020550F4(param1->unk_14, param1->unk_18, -1, 0, 3, 1, &v3);
        param1->unk_1C = 1;

        v1 = sub_02055208(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            u8 v7;
            NNSG3dResTex *v8;

            v7 = ov5_021D3F94(fieldSystem->unk_50, v4);
            param1->unk_1E = v7;
            v8 = ov5_021EFAA0(fieldSystem->unk_30);

            ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, 1, v4, ov5_021E18BC(v2), ov5_021E18C0(v2), v8, v7, 1, 0);
        } else {
            GF_ASSERT(FALSE);

            ov5_021D1744(1);
            (param1->unk_00) = 6;
            return 0;
        }

        param1->unk_24 = Camera_GetFOV(fieldSystem->camera);

        if (v4 != 75) {
            Camera_AdjustFOV(-96, fieldSystem->camera);
        }

        (param1->unk_00)++;
    } break;
    case 1:
        sub_02056B30(fieldSystem->taskManager, 0, 9, 1, 0x0, 6, 1, 11);
        {
            int v9;
            int v10;
            int v11;

            v9 = ov5_021D4310(fieldSystem->unk_54, 1);

            if (v9 != 75) {
                param1->unk_20 = 1;
            }

            if (ov5_021D481C(v9) == 1) {
                v10 = 1544;
            } else if (ov5_021D481C(v9) == 2) {
                v10 = 1492;
            } else {
                v10 = 1541;
            }

            if (param1->unk_1E == 2) {
                v11 = 0;
            } else if (param1->unk_1E == 4) {
                v11 = 2;
            } else {
                GF_ASSERT(0);
                v11 = 0;
            }

            ov5_021D4278(fieldSystem->unk_54, 1, v11, v10);
        }

        (param1->unk_00)++;
        break;
    case 2: {
        BOOL v12;

        v12 = ov5_021D42F0(fieldSystem->unk_54, 1);

        if (v12) {
            v0 = Player_MapObject(fieldSystem->playerAvatar);
            MapObject_SetHidden(v0, 0);
            (param1->unk_00)++;
        }
    } break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        LocalMapObj_SetAnimationCode(v0, 0xd);
        (param1->unk_00)++;
        break;
    case 4:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);

            {
                int v13;
                int v14;
                int v15;

                v13 = ov5_021D4310(fieldSystem->unk_54, 1);

                if (ov5_021D481C(v13) == 1) {
                    v14 = 0;
                } else if (ov5_021D481C(v13) == 2) {
                    v14 = 0;
                } else {
                    v14 = 1543;
                }

                if (param1->unk_1E == 2) {
                    v15 = 1;
                } else if (param1->unk_1E == 4) {
                    v15 = 3;
                } else {
                    GF_ASSERT(0);
                    v15 = 1;
                }

                ov5_021D4278(fieldSystem->unk_54, 1, v15, v14);
            }
            (param1->unk_00)++;
        }
        break;
    case 5: {
        BOOL v16;

        v16 = ov5_021D42F0(fieldSystem->unk_54, 1);

        if (v16 && IsScreenTransitionDone() && (param1->unk_24 == Camera_GetFOV(fieldSystem->camera))) {
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 1);
            return 1;
        }
    } break;
    case 6:
        if (IsScreenTransitionDone()) {
            return 1;
        }
        break;
    }

    if (param1->unk_20) {
        ov5_021D47DC(fieldSystem->camera, &param1->unk_1D);
    }

    return 0;
}

static void ov5_021D4798(Camera *camera, u8 *param1)
{
    u8 v0;
    u16 v1;

    if ((*param1) * 12 > 96) {
        return;
    }

    v1 = (*param1) * 12;

    if (v1 > 96) {
        v0 = v1 - 96;
    } else {
        v0 = 12;
    }

    {
        u16 v2;

        v2 = Camera_GetFOV(camera);

        if ((u16)(v2 - v0) > 0x0) {
            Camera_AdjustFOV(-v0, camera);
        }

        (*param1)++;
    }
}

static void ov5_021D47DC(Camera *camera, u8 *param1)
{
    u8 v0;
    u16 v1;

    if ((*param1) * 16 >= 96) {
        return;
    }

    v1 = (*param1) * 16;

    if (v1 > 96) {
        v0 = v1 - 96;
    } else {
        v0 = 16;
    }

    {
        u16 v2;

        v2 = Camera_GetFOV(camera);

        if ((u16)(v2 + v0) > 0x0) {
            Camera_AdjustFOV(v0, camera);
        }

        (*param1)++;
    }
}

static u8 ov5_021D481C(const int param0)
{
    if (param0 == 442) {
        return 2;
    }

    if ((param0 == 70) || (param0 == 298) || (param0 == 456) || (param0 == 427) || (param0 == 484) || (param0 == 75)) {
        return 1;
    }

    return 0;
}

BOOL ov5_021D4858(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1, const u8 param2)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        UnkStruct_ov5_021E1890 *v2;
        UnkStruct_02055130 v3;
        int v4;
        int v5[] = { 130, 131, 425, 426 };

        if (param2 == 2) {
            sub_020550F4(param1->unk_14, param1->unk_18, -1, 0, 2, 1, &v3);
        } else {
            sub_020550F4(param1->unk_14, param1->unk_18, 0, 0, 2, 1, &v3);
        }

        param1->unk_1C = 2;
        v1 = sub_02055208(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            NNSG3dResTex *v7;

            v7 = ov5_021EFAA0(fieldSystem->unk_30);
            ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, 2, v4, ov5_021E18BC(v2), ov5_021E18C0(v2), v7, 1, 1, 1);
        } else {
            GF_ASSERT(FALSE);
            return 1;
        }

        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, 0x49);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
    } break;
    case 1:
        ov5_021D1744(1);
        ov5_021D4278(fieldSystem->unk_54, 2, 0, 1557);

        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            int v8;

            if (param2 == 3) {
                v8 = 0xb;
            } else {
                v8 = 0xa;
            }

            LocalMapObj_SetAnimationCode(v0, v8);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, 0x4a);
            (param1->unk_00)++;
        }
        break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            int v9;

            if (param2 == 3) {
                v9 = 0xb;
            } else {
                v9 = 0xa;
            }

            LocalMapObj_SetAnimationCode(v0, v9);
            (param1->unk_00)++;
        }
        break;
    case 4:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (param1->unk_00)++;
        }
        break;
    case 5: {
        BOOL v10;

        v10 = ov5_021D42F0(fieldSystem->unk_54, 2);

        if (v10 && IsScreenTransitionDone()) {
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 2);
            Sound_StopEffect(1557, 0);
            return 1;
        }
    } break;
    }

    return 0;
}

BOOL ov5_021D4A24(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1, const u8 param2)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        UnkStruct_ov5_021E1890 *v2;
        UnkStruct_02055130 v3;
        int v4;
        int v5[] = { 130, 131, 425, 426 };

        if (param2 == 2) {
            sub_020550F4(param1->unk_14, param1->unk_18, -1, 0, 2, 1, &v3);
        } else {
            sub_020550F4(param1->unk_14, param1->unk_18, 0, 0, 2, 1, &v3);
        }

        param1->unk_1C = 2;
        v1 = sub_02055208(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            NNSG3dResTex *v7;

            v7 = ov5_021EFAA0(fieldSystem->unk_30);
            ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, 2, v4, ov5_021E18BC(v2), ov5_021E18C0(v2), v7, 1, 1, 0);
        } else {
            GF_ASSERT(FALSE);
            return 1;
        }

        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, 0x49);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
    } break;
    case 1:
        ov5_021D4278(fieldSystem->unk_54, 2, 0, 1557);
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            int v8;

            if (param2 == 2) {
                v8 = 0xa;
            } else {
                v8 = 0xb;
            }

            LocalMapObj_SetAnimationCode(v0, v8);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, 0x4a);

            ov5_021D1744(0);
            (param1->unk_00)++;
        }
        break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (param1->unk_00)++;
        }
        break;
    case 4: {
        BOOL v9;

        v9 = ov5_021D42F0(fieldSystem->unk_54, 2);

        if (v9 && IsScreenTransitionDone()) {
            ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, 2);

            Sound_StopEffect(1557, 0);
            return 1;
        }
    } break;
    }

    return 0;
}

static BOOL ov5_021D4BC8(TaskManager *param0)
{
    BOOL v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    u8 *v2 = TaskManager_Environment(param0);

    v0 = ov5_021D42F0(fieldSystem->unk_54, *v2);

    if (v0) {
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

void ov5_021D4BF4(FieldSystem *fieldSystem, const int param1, const int param2, const u8 param3)
{
    BOOL v0;
    UnkStruct_ov5_021E1890 *v1;
    UnkStruct_02055130 v2;
    int v3;
    int v4[] = {
        66,
        67,
        68,
        69,
        246,
        70,
        427,
        456,
        260,
        312,
        313,
        438,
        444,
        441,
        442,
        298,
        484,
        128,
        527,
        75
    };

    sub_020550F4(param1, param2, -1, 0, 3, 1, &v2);
    v0 = sub_02055208(fieldSystem, v4, NELEMS(v4), &v2, &v1, &v3);

    if (v0) {
        u8 v5;
        u8 v6;
        NNSG3dResTex *v7;

        v6 = ov5_021D3F94(fieldSystem->unk_50, v3);
        v7 = ov5_021EFAA0(fieldSystem->unk_30);

        ov5_021D41C8(fieldSystem->unk_50, fieldSystem->unk_54, param3, v3, ov5_021E18BC(v1), ov5_021E18C0(v1), v7, v6, 1, 0);
    } else {
        GF_ASSERT(FALSE);
    }
}

void ov5_021D4C88(FieldSystem *fieldSystem, const u8 param1)
{
    int v0;
    int v1;
    int v2;
    u8 v3;

    v0 = ov5_021D4310(fieldSystem->unk_54, param1);
    v3 = ov5_021D3F94(fieldSystem->unk_50, v0);

    if (ov5_021D481C(v0) == 1) {
        v1 = 1544;
    } else if (ov5_021D481C(v0) == 2) {
        v1 = 1492;
    } else {
        v1 = 1541;
    }

    if (v3 == 2) {
        v2 = 0;
    } else if (v3 == 4) {
        v2 = 0;
    } else {
        GF_ASSERT(0);
        v2 = 0;
    }

    ov5_021D4278(fieldSystem->unk_54, param1, v2, v1);
}

void ov5_021D4CEC(FieldSystem *fieldSystem, const u8 param1)
{
    int v0;
    int v1;
    int v2;
    u8 v3;

    v0 = ov5_021D4310(fieldSystem->unk_54, param1);
    v3 = ov5_021D3F94(fieldSystem->unk_50, v0);

    if (ov5_021D481C(v0) == 1) {
        v1 = 0;
    } else if (ov5_021D481C(v0) == 2) {
        v1 = 0;
    } else {
        v1 = 1543;
    }

    if (v3 == 2) {
        v2 = 1;
    } else if (v3 == 4) {
        v2 = 1;
    } else {
        GF_ASSERT(0);
        v2 = 1;
    }

    ov5_021D4278(fieldSystem->unk_54, param1, v2, v1);
}

void ov5_021D4D48(FieldSystem *fieldSystem, const u8 param1)
{
    u8 *v0 = Heap_AllocFromHeapAtEnd(4, sizeof(u8));

    *v0 = param1;
    FieldTask_Start(fieldSystem->taskManager, ov5_021D4BC8, v0);
}

void ov5_021D4D68(FieldSystem *fieldSystem, const u8 param1)
{
    ov5_021D42B0(fieldSystem->unk_50, fieldSystem->unk_54, param1);
}

void ov5_021D4D78(const int param0, const int param1, const int param2, FieldSystem *fieldSystem)
{
    BOOL v0;
    UnkStruct_ov5_021E1890 *v1;
    UnkStruct_02055130 v2;
    int v3;
    int v4[] = { 303, 304 };

    sub_020550F4(param0, param1, 0, -1, 1, 3, &v2);

    v0 = sub_02055208(fieldSystem, v4, NELEMS(v4), &v2, &v1, &v3);
    GF_ASSERT(v0);

    {
        NNSG3dRenderObj *v5;

        v5 = ov5_021E18BC(v1);
        v0 = ov5_021D3B24(v3, param2, 1, v5, fieldSystem->unk_50);
        GF_ASSERT(v0);
    }
    {
        UnkStruct_ov5_021D3CE4 *v6;

        v6 = ov5_021D3DE4(v3, param2, fieldSystem->unk_50);

        ov5_021D3E7C(v6);
        ov5_021D3E40(v6, 0);
        ov5_021D3E44(v6);
    }
}

UnkStruct_ov5_021D4E00 *ov5_021D4E00(void)
{
    UnkStruct_ov5_021D4E00 *v0;

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021D4E00));
    v0->unk_00 = 0;

    return v0;
}

BOOL ov5_021D4E10(TaskManager *param0)
{
    MapObject *v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v2 = TaskManager_Environment(param0);

    switch (v2->unk_00) {
    case 0:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) == 1) {
            MapObject_SetHidden(v0, 1);
            (v2->unk_00) = 1;
        } else {
            MapObject_SetHidden(v0, 0);
            (v2->unk_00) = 3;
        }

        v2->unk_08 = 0;
        v2->unk_04 = 0;

        {
            v2->unk_0C = Camera_GetFOV(fieldSystem->camera);
            Camera_AdjustFOV(-96, fieldSystem->camera);
        }

        StartScreenTransition(0, 1, 1, 0x7fff, 6, 1, 11);
        v2->unk_08 = 1;
        break;
    case 1:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        MapObject_SetHidden(v0, 0);
        LocalMapObj_SetAnimationCode(v0, 0xd);
        (v2->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (v2->unk_00)++;
        }
        break;
    case 3:
        if (IsScreenTransitionDone() && (v2->unk_0C == Camera_GetFOV(fieldSystem->camera))) {
            Heap_FreeToHeap(v2);
            return 1;
        }
        break;
    }

    if (v2->unk_08) {
        ov5_021D47DC(fieldSystem->camera, &v2->unk_04);
    }

    return 0;
}

BOOL ov5_021D4F14(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0: {
        MapObject *v2;

        v2 = Player_MapObject(fieldSystem->playerAvatar);

        MapObject_SetHidden(v2, 1);

        v1->unk_08 = 0;
        v1->unk_04 = 0;

        Sound_PlayEffect(1539);
        StartScreenTransition(0, 0, 0, 0x7fff, 6, 1, 11);

        v1->unk_08 = 1;
        (v1->unk_00)++;
    } break;
    case 1:
        if (IsScreenTransitionDone()) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    if (v1->unk_08) {
        ov5_021D4798(fieldSystem->camera, &v1->unk_04);
    }

    return 0;
}

BOOL ov5_021D4FA0(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0: {
        v1->unk_08 = 0;
        v1->unk_04 = 0;

        Sound_PlayEffect(1539);
        sub_02056B30(param0, 0, 16, 0, 0x0, 6, 1, 11);

        v1->unk_08 = 1;
        (v1->unk_00)++;
    } break;
    case 1:
        if (IsScreenTransitionDone()) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    if (v1->unk_08) {
        ov5_021D4798(fieldSystem->camera, &v1->unk_04);
    }

    return 0;
}

BOOL ov5_021D5020(TaskManager *param0)
{
    MapObject *v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v2 = TaskManager_Environment(param0);

    switch (v2->unk_00) {
    case 0: {
        u8 v3;
        u8 v4;

        v0 = Player_MapObject(fieldSystem->playerAvatar);
        v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (v3 == 1) {
            MapObject_SetHidden(v0, 1);
            (v2->unk_00) = 1;
        } else {
            MapObject_SetHidden(v0, 0);
            (v2->unk_00) = 3;
        }

        v2->unk_08 = 0;
        v2->unk_04 = 0;

        {
            v2->unk_0C = Camera_GetFOV(fieldSystem->camera);
            Camera_AdjustFOV(-96, fieldSystem->camera);
        }

        switch (v3) {
        case 0:
            v4 = 3;
            break;
        case 1:
            v4 = 5;
            break;
        case 2:
            v4 = 7;
            break;
        case 3:
            v4 = 39;
            break;
        default:
            GF_ASSERT(0);
        }

        sub_02056B30(param0, 0, v4, 1, 0x0, 6, 1, 11);
        v2->unk_08 = 1;
    } break;
    case 1:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        MapObject_SetHidden(v0, 0);
        LocalMapObj_SetAnimationCode(v0, 0xd);
        (v2->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (v2->unk_00)++;
        }
        break;
    case 3:
        if (IsScreenTransitionDone() && (v2->unk_0C == Camera_GetFOV(fieldSystem->camera))) {
            Heap_FreeToHeap(v2);
            return 1;
        }
        break;
    }

    if (v2->unk_08) {
        ov5_021D47DC(fieldSystem->camera, &v2->unk_04);
    }

    return 0;
}

BOOL ov5_021D5150(TaskManager *param0)
{
    MapObject *v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v2 = TaskManager_Environment(param0);

    switch (v2->unk_00) {
    case 0: {
        u8 v3;
        u8 v4;

        v0 = Player_MapObject(fieldSystem->playerAvatar);
        v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (v3 == 1) {
            MapObject_SetHidden(v0, 1);
            (v2->unk_00) = 1;
        } else {
            MapObject_SetHidden(v0, 0);
            (v2->unk_00) = 3;
        }

        sub_02056B30(param0, 0, 1, 1, 0x0, 6, 1, 11);
    } break;
    case 1:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        MapObject_SetHidden(v0, 0);
        LocalMapObj_SetAnimationCode(v0, 0xd);
        (v2->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (v2->unk_00)++;
        }
        break;
    case 3:
        if (IsScreenTransitionDone()) {
            Heap_FreeToHeap(v2);
            return 1;
        }
        break;
    }

    return 0;
}
