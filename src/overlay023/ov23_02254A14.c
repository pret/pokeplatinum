#include "overlay023/ov23_02254A14.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029894_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021EAFA4.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay005/struct_ov5_021E1890_decl.h"
#include "overlay005/struct_ov5_021EB0E0_decl.h"
#include "overlay006/struct_ov6_0223E6EC.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_022542CC.h"
#include "overlay023/struct_ov23_022542D8_decl.h"
#include "overlay023/struct_ov23_02254594_decl.h"

#include "core_sys.h"
#include "easy3d.h"
#include "heap.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_0202854C.h"
#include "unk_020508D4.h"
#include "unk_020573FC.h"

typedef struct {
    int unk_00;
    u8 unk_04;
} UnkStruct_ov23_02256098_sub2;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BOOL unk_0C;
    BOOL unk_10;
} UnkStruct_ov23_02256228;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_ov23_02255C30;

typedef struct {
    UnkStruct_ov23_02255C30 unk_00;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_ov23_02255A98;

typedef struct {
    int unk_00;
    VecFx32 unk_04;
    UnkStruct_ov23_02255A98 unk_10;
} UnkStruct_ov23_02256098_sub1;

typedef struct {
    BOOL unk_00;
    UnkStruct_ov23_02255A98 unk_04;
} UnkStruct_ov23_02255BF4;

typedef struct {
    NNSG3dRenderObj unk_00;
    NNSG3dResFileHeader *unk_54;
    VecFx32 unk_58;
    int unk_64;
    int unk_68;
    BOOL unk_6C;
} UnkStruct_ov23_02255EC4;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
} UnkStruct_ov23_02256000;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov23_02256098_sub1 unk_0C;
    UnkStruct_ov23_02255A98 unk_3C;
    UnkStruct_ov23_02255BF4 unk_5C[32];
    UnkStruct_ov23_02256228 unk_4DC;
    UnkStruct_ov23_02256000 unk_4F0;
    UnkStruct_ov23_02255EC4 *unk_4FC;
    FieldSystem *fieldSystem;
    UnkStruct_ov23_022542D8 *unk_504;
    UnkStruct_ov23_02254594 *unk_508;
    UnkStruct_ov5_021D1BEC *unk_50C;
    UnkStruct_ov23_02256098_sub2 unk_510;
    u16 unk_516;
    u16 unk_518;
    u16 unk_51A;
    u16 unk_51C;
    u8 unk_51E;
    u8 unk_51F;
    u8 unk_520;
    u8 unk_521;
    u8 unk_522;
} UnkStruct_ov23_02256098;

static BOOL ov23_02254C84(TaskManager *param0);
static BOOL ov23_02254AD4(TaskManager *param0);
static BOOL ov23_02254DF8(TaskManager *param0);
static BOOL ov23_02255100(TaskManager *param0);
static BOOL ov23_02255580(TaskManager *param0);
static BOOL ov23_02255850(TaskManager *param0);
static void ov23_02254A14(FieldSystem *fieldSystem, const int param1, UnkStruct_ov23_02256098 *param2);
static void ov23_02254A94(FieldSystem *fieldSystem, const int param1);
static void ov23_02254AA4(const int param0, UnkStruct_ov23_02256098 *param1);
static BOOL ov23_02255A98(const UnkStruct_ov23_02255A98 *param0, const UnkStruct_ov23_02255BF4 *param1);
static BOOL ov23_02255B14(const int param0, const int param1, const UnkStruct_ov23_02255BF4 *param2, int *param3);
static int ov23_02255B78(const UnkStruct_ov23_02255A98 *param0, UnkStruct_ov23_02255BF4 *param1);
static void ov23_02255BB8(const UnkStruct_ov23_02255A98 *param0, const int param1, UnkStruct_ov23_02255BF4 *param2);
static void ov23_02255BF4(const int param0, UnkStruct_ov23_02255BF4 *param1);
static BOOL ov23_02255C30(const UnkStruct_ov23_02255C30 *param0, const UnkStruct_ov23_02255C30 *param1);
static BOOL ov23_02255C58(const UnkStruct_ov23_02255C30 *param0, const int param1, const int param2);
static BOOL ov23_02255B58(const UnkStruct_ov23_02255C30 *param0);
static void ov23_02255C78(FieldSystem *fieldSystem, UnkStruct_ov23_02256098 *param1, UnkStruct_ov23_02255BF4 *param2);
static void ov23_02255D1C(const int param0, const int param1, const int param2, const int param3, UnkStruct_ov23_02255BF4 *param4);
static void ov23_02255D78(FieldSystem *fieldSystem, UnkStruct_ov23_02255BF4 *param1);
static void ov23_02255DDC(FieldSystem *fieldSystem, const UnkStruct_ov23_02255BF4 *param1);
static const int ov23_02255E14(FieldSystem *fieldSystem, const int param1);
static void ov23_02255E2C(const int param0, UnkStruct_ov23_02256098 *param1);
static void ov23_02255E8C(UnkStruct_ov23_02256098 *param0);
static void ov23_02255EBC(const int param0, UnkStruct_ov23_02256098 *param1);
static void ov23_02255EC4(UnkStruct_ov23_02255EC4 *param0);
static void ov23_02255EF0(UnkStruct_ov23_02255EC4 *param0);
static void ov23_02255EFC(UnkStruct_ov23_02255EC4 *param0);
static void ov23_02255F04(const int param0, const int param1, UnkStruct_ov23_02255EC4 *param2);
static void ov23_02255F20(UnkStruct_ov23_02255EC4 *param0);
static BOOL ov23_02256098(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2);
static BOOL ov23_02256104(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2);
static BOOL ov23_02256174(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2);
static BOOL ov23_022561BC(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2);
static void ov23_02256228(UnkStruct_ov23_02256228 *param0);
static void ov23_0225623C(const int param0, const int param1, UnkStruct_ov23_02256228 *param2);
static void ov23_0225624C(FieldSystem *fieldSystem, UnkStruct_ov23_02256228 *param1);
static void ov23_0225628C(FieldSystem *fieldSystem, UnkStruct_ov23_02256228 *param1);
static const int ov23_022562A8(UnkStruct_ov23_02256228 *param0);
static void ov23_022562AC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);
static void ov23_022562B8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);
static void ov23_022562BC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);
static void ov23_022562C8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);

static const UnkStruct_ov6_0223E6EC Unk_ov23_02256B88 = {
    0x0,
    sizeof(UnkStruct_ov23_02255EC4),
    ov23_022562AC,
    ov23_022562BC,
    ov23_022562B8,
    ov23_022562C8
};

static void ov23_02254A14(FieldSystem *fieldSystem, const int param1, UnkStruct_ov23_02256098 *param2)
{
    UnkStruct_ov23_02255A98 *v0;
    VecFx32 v1;

    GF_ASSERT(param1 != 0);

    v0 = &param2->unk_3C;

    v0->unk_18 = sub_020573FC(param1);
    v0->unk_1C = sub_0205740C(param1);

    v1.x = (FX32_ONE * 16) * ((0 * 32) + 16) + ((FX32_ONE * 8) * v0->unk_18);
    v1.y = FX32_ONE;
    v1.z = (FX32_ONE * 16) * ((0 * 32) + 13) + ((FX32_ONE * 8) * v0->unk_1C);

    v0->unk_10 = ov5_021E19CC(fieldSystem->unk_A4, fieldSystem->unk_30, ov23_02255E14(fieldSystem, param1), &v1, NULL, fieldSystem->unk_50);
    v0->unk_00.unk_00 = 16;
    v0->unk_00.unk_04 = 13;
    v0->unk_00.unk_08 = 16 + (v0->unk_18 - 1);
    v0->unk_00.unk_0C = 13 + (v0->unk_1C - 1);
    v0->unk_14 = param1;
}

static void ov23_02254A94(FieldSystem *fieldSystem, const int param1)
{
    ov5_021E1674(param1, fieldSystem->unk_A4);
}

static void ov23_02254AA4(const int param0, UnkStruct_ov23_02256098 *param1)
{
    UnkStruct_ov23_02255A98 *v0;

    GF_ASSERT(param1->unk_5C[param0].unk_00);

    v0 = &(param1->unk_5C[param0].unk_04);
    param1->unk_3C = (*v0);
}

static BOOL ov23_02254AD4(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02256098 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        SetAutorepeat(4, 8);

        v1->unk_504 = ov23_022542CC();
        ov23_022542D8(v1->unk_504, fieldSystem, &v1->unk_516, &v1->unk_51A);
        v1->unk_508 = ov23_02254588();

        ov23_02254594(v1->unk_508, fieldSystem, &v1->unk_518, &v1->unk_51C);
        ov23_02255C78(fieldSystem, v1, v1->unk_5C);
        ov23_02255D78(fieldSystem, v1->unk_5C);
        ov23_02255EBC(1, v1);
        break;
    case 1:
        sub_0200F174(1, 41, 41, 0x0, 6, 1, 4);
        ov23_02255EBC(2, v1);
        break;
    case 2:
        if (ScreenWipe_Done()) {
            ov23_02255EBC(3, v1);
        }
        break;
    case 3:
        FieldTask_Start(param0, ov23_02254C84, v1);
        break;
    case 4:
        FieldTask_Start(param0, ov23_02254DF8, v1);
        break;
    case 5:
        FieldTask_Start(param0, ov23_02255100, v1);
        break;
    case 6:
        FieldTask_Start(param0, ov23_02255580, v1);
        break;
    case 7:
        FieldTask_Start(param0, ov23_02255850, v1);
        break;
    case 8:
        if (Text_IsPrinterActive(v1->unk_08) == 0) {
            if ((v1->unk_51E++) >= 30) {
                ov23_0224D3B0();
                ov23_02255EBC(3, v1);
            }
        }
        break;
    case 9:
        Sound_PlayEffect(1550);
        sub_0200F174(2, 40, 40, 0x0, 6, 1, 4);
        ov23_02255EBC(10, v1);
        break;
    case 10:
        if (ScreenWipe_Done()) {
            ov23_022545D0(v1->unk_508);
            ov23_0225430C(v1->unk_504);
            ov5_021D1BEC(v1->unk_50C);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov23_02254C84(TaskManager *param0)
{
    BOOL v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02256098 *v2 = TaskManager_Environment(param0);

    v0 = ov23_02254318(v2->unk_504);

    if (v0) {
        switch (ov23_02254314(v2->unk_504)) {
        case 0: {
            UndergroundData *v3;
            int v4;

            v3 = sub_020298B0(fieldSystem->saveData);
            v4 = sub_020289A0(v3);

            if (v4 == 0) {
                v2->unk_08 = ov23_0224D39C(19);
                v2->unk_51E = 0;
                ov23_02255EBC(8, v2);
                return 1;
            }

            if (v2->unk_51F > 15) {
                v2->unk_08 = ov23_0224D39C(20);
                v2->unk_51E = 0;
                ov23_02255EBC(8, v2);
                return 1;
            }

            if (v2->unk_51F + 1 > v2->unk_522) {
                v2->unk_08 = ov23_0224D39C(20);
                v2->unk_51E = 0;
                ov23_02255EBC(8, v2);
                return 1;
            }
        }

            ov23_022545C4(v2->unk_508, v2->unk_51F, v2->unk_522);
            ov23_02255EBC(4, v2);
            return 1;
        case 1:
            ov23_02255F04(16, 13, v2->unk_4FC);
            ov23_02255EBC(5, v2);
            return 1;
        case 2:
            ov23_02255F04(16, 13, v2->unk_4FC);
            ov23_02255EBC(6, v2);
            return 1;
        default:
            ov23_02255DDC(fieldSystem, v2->unk_5C);
            ov23_02255EBC(9, v2);
            return 1;
            break;
        }
    }

    return 0;
}

void ov23_02254D98(FieldSystem *fieldSystem, TaskManager *param1)
{
    UnkStruct_ov23_02256098 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_02256098));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov23_02256098));
    ov23_02255EBC(0, v0);

    v0->fieldSystem = fieldSystem;
    v0->unk_50C = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &Unk_ov23_02256B88);
    v0->unk_4FC = ov5_021D1C2C(v0->unk_50C);

    FieldTask_Start(param1, ov23_02254AD4, v0);
}

static BOOL ov23_02254DF8(TaskManager *param0)
{
    fx32 v0, v1;
    UnkStruct_ov5_021E1890 *v2;
    BOOL v3;
    BOOL v4;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02256098 *v6 = TaskManager_Environment(param0);

    switch (v6->unk_04) {
    case 0: {
        BOOL v7;

        v7 = ov23_022545DC(v6->unk_508);

        if (v7) {
            u32 v8;
            int v9;
            UndergroundData *v10;

            v10 = sub_020298B0(v6->fieldSystem->saveData);
            v8 = ov23_022545D8(v6->unk_508);

            if (v8 == 0xfffffffe) {
                ov23_02255EBC(3, v6);
                return 1;
            }

            v9 = sub_020289B8(v10, v8);

            if (v9 != 0) {
                BOOL v11;

                v11 = sub_02028AFC(v10, v8);

                if (!v11) {
                    ov23_02254A14(fieldSystem, v9, v6);
                    v6->unk_04 = 1;
                } else {
                    v6->unk_08 = ov23_0224D39C(21);
                    v6->unk_51E = 0;
                    v6->unk_04 = 5;
                }
            } else {
                GF_ASSERT(FALSE);
            }
        }
    } break;
    case 1:
        ov23_02256228(&v6->unk_4DC);
        ov23_0225623C(v6->unk_3C.unk_10, 4, &v6->unk_4DC);
        v6->unk_04 = 2;
        break;
    case 2:
        ov23_0225624C(fieldSystem, &v6->unk_4DC);

        v3 = ov23_02256098(v6, fieldSystem, &v4);

        if (!v3) {
            BOOL v12;
            UnkStruct_ov23_02255C30 v13;

            v12 = 1;
            v13 = v6->unk_3C.unk_00;

            if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
                v0 = -(FX32_ONE * 16);
                v1 = 0;
                v13.unk_00--;
                v13.unk_08--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
                v0 = (FX32_ONE * 16);
                v1 = 0;
                v13.unk_00++;
                v13.unk_08++;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
                v0 = 0;
                v1 = -(FX32_ONE * 16);
                v13.unk_04--;
                v13.unk_0C--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
                v0 = 0;
                v1 = (FX32_ONE * 16);
                v13.unk_04++;
                v13.unk_0C++;
            } else {
                v12 = 0;
            }

            if (v12 != 0) {
                if (!ov23_02255B58(&v13)) {
                    VecFx32 v14;

                    v6->unk_3C.unk_00 = v13;
                    v2 = ov5_021E18E0(fieldSystem->unk_A4, v6->unk_3C.unk_10);
                    v14 = ov5_021E1894(v2);
                    v14.x += (v0);
                    v14.z += (v1);
                    v14.y = FX32_ONE;

                    ov5_021E18A4(v2, &v14);
                }
            }

            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v4 = 1;
            } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
                ov23_02254A94(fieldSystem, v6->unk_3C.unk_10);
                v6->unk_04 = 0;
                return 0;
            }
        }

        if (v4) {
            BOOL v15;

            v15 = ov23_02255A98(&v6->unk_3C, v6->unk_5C);

            if (v15) {
                u32 v16;
                int v17;
                UndergroundData *v18;

                v18 = sub_020298B0(v6->fieldSystem->saveData);
                v17 = ov23_02255B78(&v6->unk_3C, v6->unk_5C);
                v16 = ov23_022545D8(v6->unk_508);

                sub_02028ACC(v18, v16, v17);
                Sound_PlayEffect(1534);

                ov23_0224D3BC(v6->unk_3C.unk_14);
                v6->unk_08 = ov23_0224D39C(11);
                ov23_0225628C(fieldSystem, &v6->unk_4DC);

                v6->unk_51F++;
                v6->unk_51E = 0;
                v6->unk_04 = 4;
                break;
            } else {
                Sound_PlayEffect(1538);

                v6->unk_08 = ov23_0224D39C(12);
                v6->unk_51E = 0;
                v6->unk_04 = 3;
            }
        }
        break;
    case 3:
        if (Text_IsPrinterActive(v6->unk_08) == 0) {
            if ((v6->unk_51E++) >= 30) {
                ov23_0224D3B0();
                v6->unk_04 = 2;
            }
        }
        break;
    case 4:
        if (Text_IsPrinterActive(v6->unk_08) == 0) {
            if ((v6->unk_51E++) >= 30) {
                ov23_0224D3B0();
                ov23_02255EBC(3, v6);
                return 1;
            }
        }
        break;
    case 5:
        if (Text_IsPrinterActive(v6->unk_08) == 0) {
            if ((v6->unk_51E++) >= 30) {
                ov23_0224D3B0();
                v6->unk_04 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov23_02255100(TaskManager *param0)
{
    BOOL v0;
    UnkStruct_ov23_02255C30 v1;
    fx32 v2, v3;
    BOOL v4;
    BOOL v5;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02256098 *v7 = TaskManager_Environment(param0);

    switch (v7->unk_04) {
    case 0:
        ov23_02256228(&v7->unk_4DC);
        ov23_02255EFC(v7->unk_4FC);

        {
            BOOL v8;
            int v9;

            v8 = ov23_02255B14(v7->unk_4FC->unk_64, v7->unk_4FC->unk_68, v7->unk_5C, &v9);

            if (v8) {
                ov23_0225623C(v7->unk_5C[v9].unk_04.unk_10, 8, &v7->unk_4DC);
            }
        }
        v7->unk_04 = 1;
        break;
    case 1:
        v0 = 1;

        ov23_0225624C(fieldSystem, &v7->unk_4DC);

        v4 = ov23_02256104(v7, fieldSystem, &v5);

        v1.unk_00 = v7->unk_4FC->unk_64;
        v1.unk_08 = v7->unk_4FC->unk_64;
        v1.unk_04 = v7->unk_4FC->unk_68;
        v1.unk_0C = v7->unk_4FC->unk_68;

        v2 = v7->unk_4FC->unk_58.x;
        v3 = v7->unk_4FC->unk_58.z;

        if (!v4) {
            if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
                Sound_PlayEffect(1509);
                v2 -= (FX32_ONE * 16);
                v1.unk_00--;
                v1.unk_08--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
                Sound_PlayEffect(1509);
                v2 += (FX32_ONE * 16);
                v1.unk_00++;
                v1.unk_08++;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
                Sound_PlayEffect(1509);
                v3 -= (FX32_ONE * 16);
                v1.unk_04--;
                v1.unk_0C--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
                Sound_PlayEffect(1509);
                v3 += (FX32_ONE * 16);
                v1.unk_04++;
                v1.unk_0C++;
            } else {
                v0 = 0;
            }

            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v5 = 1;
            } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
                ov23_02255F20(v7->unk_4FC);
                ov23_0225628C(fieldSystem, &v7->unk_4DC);
                ov23_02255EBC(3, v7);
                return 1;
            }
        }

        if (v0) {
            if (!ov23_02255B58(&v1)) {
                BOOL v10;
                int v11;

                v7->unk_4FC->unk_58.x = v2;
                v7->unk_4FC->unk_58.z = v3;
                v7->unk_4FC->unk_64 = v1.unk_00;
                v7->unk_4FC->unk_68 = v1.unk_04;

                v10 = ov23_02255B14(v7->unk_4FC->unk_64, v7->unk_4FC->unk_68, v7->unk_5C, &v11);

                if (v10) {
                    int v12;

                    v12 = ov23_022562A8(&v7->unk_4DC);

                    if (v7->unk_5C[v11].unk_04.unk_10 != v12) {
                        ov23_0225628C(fieldSystem, &v7->unk_4DC);
                        ov23_0225623C(v7->unk_5C[v11].unk_04.unk_10, 8, &v7->unk_4DC);
                    }
                } else {
                    ov23_0225628C(fieldSystem, &v7->unk_4DC);
                    ov23_02256228(&v7->unk_4DC);
                }
            }
        }

        if (v5) {
            BOOL v13;
            int v14, v15;
            int v16;

            GF_ASSERT(v7->unk_4FC->unk_64 < 32);
            GF_ASSERT(v7->unk_4FC->unk_68 < 32);

            v14 = v7->unk_4FC->unk_64;
            v15 = v7->unk_4FC->unk_68;
            v13 = ov23_02255B14(v14, v15, v7->unk_5C, &v16);

            if (v13) {
                if (v16 != 0) {
                    ov23_0224D3BC(v7->unk_5C[v16].unk_04.unk_14);

                    if (v7->unk_5C[v16].unk_04.unk_14 == 6) {
                        if (v7->unk_521 == 16) {
                            v7->unk_08 = ov23_0224D39C(15);
                            v7->unk_51E = 0;
                            v7->unk_04 = 4;
                            break;
                        } else if (v7->unk_520 - 1 < v7->unk_521) {
                            v7->unk_08 = ov23_0224D39C(18);
                            v7->unk_51E = 0;
                            v7->unk_04 = 4;
                            break;
                        } else {
                            Sound_PlayEffect(1600);

                            v7->unk_08 = ov23_0224D39C(14);
                            GF_ASSERT(v7->unk_520 > 0);
                            v7->unk_520--;
                            v7->unk_51E = 0;
                            v7->unk_04 = 2;
                        }
                    } else {
                        UndergroundData *v17;

                        v17 = sub_020298B0(v7->fieldSystem->saveData);

                        Sound_PlayEffect(1515);
                        sub_02028B20(v17, v16);

                        v7->unk_08 = ov23_0224D39C(13);
                        GF_ASSERT(v7->unk_51F > 0);
                        v7->unk_51F--;
                        v7->unk_51E = 0;
                        v7->unk_04 = 3;
                    }

                    ov23_02254A94(fieldSystem, v7->unk_5C[v16].unk_04.unk_10);
                    ov23_02255BF4(v16, v7->unk_5C);
                    ov23_02255F20(v7->unk_4FC);
                    v7->unk_51E = 0;
                } else {
                    v7->unk_08 = ov23_0224D39C(22);
                    v7->unk_51E = 0;
                    v7->unk_04 = 4;
                }
            } else {
                (void)0;
            }
        }
        break;
    case 2:
        if (Text_IsPrinterActive(v7->unk_08) == 0) {
            if ((v7->unk_51E++) >= 30) {
                int v18;

                ov23_0224D3B0();
                v18 = v7->unk_520 - v7->unk_521;
                GF_ASSERT(v18 >= 0);

                if (v18 == 0) {
                    ov23_02255EBC(3, v7);
                    return 1;
                } else {
                    v7->unk_51E = 0;
                    v7->unk_04 = 5;
                }
            }
        }
        break;
    case 3:
        if (Text_IsPrinterActive(v7->unk_08) == 0) {
            if ((v7->unk_51E++) >= 30) {
                ov23_0224D3B0();
                v7->unk_04 = 0;
                return 1;
            }
        }
        break;
    case 4:
        if (Text_IsPrinterActive(v7->unk_08) == 0) {
            if ((v7->unk_51E++) >= 30) {
                ov23_0224D3B0();
                v7->unk_04 = 1;
            }
        }
        break;
    case 5:
        if ((v7->unk_51E++) >= 10) {
            int v19;

            v19 = v7->unk_520 - v7->unk_521;
            ov23_0224D3D0(v19, 0);

            if (v19 == 1) {
                v7->unk_08 = ov23_0224D39C(17);
            } else {
                v7->unk_08 = ov23_0224D39C(25);
            }

            v7->unk_51E = 0;
            v7->unk_04 = 6;
        }
        break;
    case 6:
        if (Text_IsPrinterActive(v7->unk_08) == 0) {
            if ((v7->unk_51E++) >= 30) {
                ov23_0224D3B0();
                ov23_02255EBC(3, v7);
                return 1;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov23_02255580(TaskManager *param0)
{
    BOOL v0;
    UnkStruct_ov23_02255C30 v1;
    fx32 v2, v3;
    BOOL v4;
    BOOL v5;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02256098 *v7 = TaskManager_Environment(param0);

    switch (v7->unk_04) {
    case 0:
        ov23_02256228(&v7->unk_4DC);
        ov23_02255EFC(v7->unk_4FC);

        {
            BOOL v8;
            int v9;

            v8 = ov23_02255B14(v7->unk_4FC->unk_64, v7->unk_4FC->unk_68, v7->unk_5C, &v9);

            if (v8) {
                ov23_0225623C(v7->unk_5C[v9].unk_04.unk_10, 8, &v7->unk_4DC);
            }
        }
        v7->unk_04 = 1;
        break;
    case 1:
        v0 = 1;

        ov23_0225624C(fieldSystem, &v7->unk_4DC);

        v4 = ov23_02256174(v7, fieldSystem, &v5);
        v1.unk_00 = v7->unk_4FC->unk_64;
        v1.unk_08 = v7->unk_4FC->unk_64;
        v1.unk_04 = v7->unk_4FC->unk_68;
        v1.unk_0C = v7->unk_4FC->unk_68;
        v2 = v7->unk_4FC->unk_58.x;
        v3 = v7->unk_4FC->unk_58.z;

        if (!v4) {
            if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
                Sound_PlayEffect(1509);
                v2 -= (FX32_ONE * 16);
                v1.unk_00--;
                v1.unk_08--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
                Sound_PlayEffect(1509);
                v2 += (FX32_ONE * 16);
                v1.unk_00++;
                v1.unk_08++;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
                Sound_PlayEffect(1509);
                v3 -= (FX32_ONE * 16);
                v1.unk_04--;
                v1.unk_0C--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
                Sound_PlayEffect(1509);
                v3 += (FX32_ONE * 16);
                v1.unk_04++;
                v1.unk_0C++;
            } else {
                v0 = 0;
            }

            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v5 = 1;
            } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
                ov23_02255F20(v7->unk_4FC);
                ov23_0225628C(fieldSystem, &v7->unk_4DC);
                ov23_02255EBC(3, v7);
                return 1;
            }
        }

        if (v0) {
            if (!ov23_02255B58(&v1)) {
                BOOL v10;
                int v11;

                v7->unk_4FC->unk_58.x = v2;
                v7->unk_4FC->unk_58.z = v3;
                v7->unk_4FC->unk_64 = v1.unk_00;
                v7->unk_4FC->unk_68 = v1.unk_04;

                v10 = ov23_02255B14(v7->unk_4FC->unk_64, v7->unk_4FC->unk_68, v7->unk_5C, &v11);

                if (v10) {
                    int v12;

                    v12 = ov23_022562A8(&v7->unk_4DC);

                    if (v7->unk_5C[v11].unk_04.unk_10 != v12) {
                        ov23_0225628C(fieldSystem, &v7->unk_4DC);
                        ov23_0225623C(v7->unk_5C[v11].unk_04.unk_10, 8, &v7->unk_4DC);
                    }
                } else {
                    ov23_0225628C(fieldSystem, &v7->unk_4DC);
                    ov23_02256228(&v7->unk_4DC);
                }
            }
        }

        if (v5) {
            BOOL v13;
            int v14, v15;
            int v16;

            GF_ASSERT(v7->unk_4FC->unk_64 < 32);
            GF_ASSERT(v7->unk_4FC->unk_68 < 32);

            v14 = v7->unk_4FC->unk_64;
            v15 = v7->unk_4FC->unk_68;
            v13 = ov23_02255B14(v14, v15, v7->unk_5C, &v16);

            if (v13) {
                if (v16 != 0) {
                    if (v7->unk_5C[v16].unk_04.unk_14 == 6) {
                        v7->unk_08 = ov23_0224D39C(16);
                        v7->unk_51E = 0;
                        v7->unk_04 = 2;
                    } else {
                        ov23_02254AA4(v16, v7);
                        ov23_02255E2C(v16, v7);
                        ov23_02255BF4(v16, v7->unk_5C);
                        Sound_PlayEffect(1515);
                        ov23_02255F20(v7->unk_4FC);
                        ov23_02255EBC(7, v7);
                        return 1;
                    }
                } else {
                    v7->unk_08 = ov23_0224D39C(23);
                    v7->unk_51E = 0;
                    v7->unk_04 = 2;
                }
            } else {
                (void)0;
            }
        }
        break;
    case 2:
        if (Text_IsPrinterActive(v7->unk_08) == 0) {
            if ((v7->unk_51E++) >= 30) {
                ov23_0224D3B0();
                v7->unk_04 = 1;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov23_02255850(TaskManager *param0)
{
    fx32 v0, v1;
    UnkStruct_ov5_021E1890 *v2;
    BOOL v3;
    BOOL v4;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02256098 *v6 = TaskManager_Environment(param0);

    switch (v6->unk_04) {
    case 0:
        ov23_02256228(&v6->unk_4DC);
        ov23_0225623C(v6->unk_3C.unk_10, 4, &v6->unk_4DC);
        v6->unk_04 = 1;
        break;
    case 1:
        ov23_0225624C(fieldSystem, &v6->unk_4DC);
        v3 = ov23_022561BC(v6, fieldSystem, &v4);

        if (!v3) {
            BOOL v7;
            UnkStruct_ov23_02255C30 v8;

            v7 = 1;
            v8 = v6->unk_3C.unk_00;

            if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
                v0 = -(FX32_ONE * 16);
                v1 = 0;
                v8.unk_00--;
                v8.unk_08--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
                v0 = (FX32_ONE * 16);
                v1 = 0;
                v8.unk_00++;
                v8.unk_08++;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
                v0 = 0;
                v1 = -(FX32_ONE * 16);
                v8.unk_04--;
                v8.unk_0C--;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
                v0 = 0;
                v1 = (FX32_ONE * 16);
                v8.unk_04++;
                v8.unk_0C++;
            } else {
                v7 = 0;
            }

            if (v7 != 0) {
                if (!ov23_02255B58(&v8)) {
                    VecFx32 v9;

                    v6->unk_3C.unk_00 = v8;
                    v2 = ov5_021E18E0(fieldSystem->unk_A4, v6->unk_3C.unk_10);
                    v9 = ov5_021E1894(v2);
                    v9.x += (v0);
                    v9.z += (v1);
                    v9.y = FX32_ONE;

                    ov5_021E18A4(v2, &v9);
                }
            }

            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v4 = 1;
            } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
                ov23_02255BB8(&v6->unk_0C.unk_10, v6->unk_0C.unk_00, v6->unk_5C);
                ov23_02255E8C(v6);
                ov23_0225628C(fieldSystem, &v6->unk_4DC);
                ov23_02255EBC(6, v6);
                return 1;
            }
        }

        if (v4) {
            BOOL v10;

            v10 = ov23_02255A98(&v6->unk_3C, v6->unk_5C);

            if (v10) {
                ov23_02255BB8(&v6->unk_3C, v6->unk_0C.unk_00, v6->unk_5C);
                Sound_PlayEffect(1534);
                ov23_02255F04(v6->unk_3C.unk_00.unk_00, v6->unk_3C.unk_00.unk_04, v6->unk_4FC);
                ov23_0225628C(fieldSystem, &v6->unk_4DC);
                v6->unk_51E = 0;
                v6->unk_04 = 3;
                break;
            } else {
                Sound_PlayEffect(1538);

                v6->unk_08 = ov23_0224D39C(12);
                v6->unk_51E = 0;
                v6->unk_04 = 2;
            }
        }
        break;
    case 2:
        if (Text_IsPrinterActive(v6->unk_08) == 0) {
            if ((v6->unk_51E++) >= 30) {
                ov23_0224D3B0();
                v6->unk_04 = 1;
            }
        }
        break;
    case 3:
        if (Text_IsPrinterActive(v6->unk_08) == 0) {
            if ((v6->unk_51E++) >= 30) {
                ov23_0224D3B0();
                ov23_02255EBC(6, v6);
                return 1;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov23_02255A98(const UnkStruct_ov23_02255A98 *param0, const UnkStruct_ov23_02255BF4 *param1)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (param1[v0].unk_00 == 1) {
            if (ov23_02255C30(&param1[v0].unk_04.unk_00, &param0->unk_00)) {
                return 0;
            }
        }
    }

    {
        UnkStruct_ov23_02255C30 v1 = { 15, 13, 16, 13 };

        if (ov23_02255C30(&param0->unk_00, &v1)) {
            return 0;
        }
    }

    {
        UnkStruct_ov23_02255C30 v2 = { 15, 23, 15, 23 };

        if (ov23_02255C30(&param0->unk_00, &v2)) {
            return 0;
        }
    }

    return 1;
}

static BOOL ov23_02255B14(const int param0, const int param1, const UnkStruct_ov23_02255BF4 *param2, int *param3)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (param2[v0].unk_00 == 1) {
            if (ov23_02255C58(&(param2[v0].unk_04.unk_00), param0, param1)) {
                (*param3) = v0;
                return 1;
            }
        }
    }

    (*param3) = 32;
    return 0;
}

static BOOL ov23_02255B58(const UnkStruct_ov23_02255C30 *param0)
{
    if ((10 <= param0->unk_00) && (param0->unk_08 <= 21) && (12 <= param0->unk_04) && (param0->unk_0C <= 23)) {
        return 0;
    } else {
        return 1;
    }
}

static int ov23_02255B78(const UnkStruct_ov23_02255A98 *param0, UnkStruct_ov23_02255BF4 *param1)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (param1[v0].unk_00 == 0) {
            param1[v0].unk_00 = 1;
            param1[v0].unk_04 = (*param0);

            return v0;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static void ov23_02255BB8(const UnkStruct_ov23_02255A98 *param0, const int param1, UnkStruct_ov23_02255BF4 *param2)
{
    GF_ASSERT(param1 < 32);
    GF_ASSERT(!param2[param1].unk_00);

    param2[param1].unk_00 = 1;
    param2[param1].unk_04 = (*param0);
}

static void ov23_02255BF4(const int param0, UnkStruct_ov23_02255BF4 *param1)
{
    GF_ASSERT(param0 < 32);
    GF_ASSERT(param0 != 0);
    GF_ASSERT(param1[param0].unk_00);

    {
        param1[param0].unk_04.unk_10 = 0;
        param1[param0].unk_04.unk_00.unk_00 = 0;
        param1[param0].unk_04.unk_00.unk_04 = 0;
        param1[param0].unk_04.unk_00.unk_08 = 0;
        param1[param0].unk_04.unk_00.unk_0C = 0;
        param1[param0].unk_04.unk_14 = 0;
        param1[param0].unk_00 = 0;
    }
}

static BOOL ov23_02255C30(const UnkStruct_ov23_02255C30 *param0, const UnkStruct_ov23_02255C30 *param1)
{
    if ((param0->unk_00 <= param1->unk_08) && (param1->unk_00 <= param0->unk_08) && (param0->unk_04 <= param1->unk_0C) && (param1->unk_04 <= param0->unk_0C)) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov23_02255C58(const UnkStruct_ov23_02255C30 *param0, const int param1, const int param2)
{
    if ((param0->unk_00 <= param1) && (param1 <= param0->unk_08) && (param0->unk_04 <= param2) && (param2 <= param0->unk_0C)) {
        return 1;
    } else {
        return 0;
    }
}

static void ov23_02255C78(FieldSystem *fieldSystem, UnkStruct_ov23_02256098 *param1, UnkStruct_ov23_02255BF4 *param2)
{
    int v0;
    int v1;
    int v2, v3;
    UnkStruct_02029894 *v4;

    v4 = sub_02029894(fieldSystem->saveData);

    param1->unk_51F = 0;
    param1->unk_520 = 0;
    param1->unk_521 = sub_02029460(v4);
    param1->unk_522 = sub_0202948C(v4);

    for (v0 = 0; v0 < 32; v0++) {
        v1 = sub_020293B0(v4, v0);

        if (v1 != 0) {
            if (v1 == 6) {
                param1->unk_520++;
            } else if ((v1 != 1) && (v1 != 2) && (v1 != 3) && (v1 != 4) && (v1 != 5)) {
                param1->unk_51F++;
            }

            v2 = sub_020293FC(v4, v0);
            v3 = sub_0202942C(v4, v0);

            ov23_02255D1C(v0, v1, v2, v3, param2);
        }
    }
}

static void ov23_02255D1C(const int param0, const int param1, const int param2, const int param3, UnkStruct_ov23_02255BF4 *param4)
{
    UnkStruct_ov23_02255A98 v0;
    int v1, v2;

    v0.unk_10 = 0;
    v0.unk_14 = param1;
    v0.unk_00.unk_00 = param2;
    v0.unk_00.unk_04 = param3;

    v0.unk_18 = sub_020573FC(param1);
    v0.unk_1C = sub_0205740C(param1);

    v0.unk_00.unk_08 = param2 + (v0.unk_18 - 1);
    v0.unk_00.unk_0C = param3 + (v0.unk_1C - 1);

    param4[param0].unk_04 = v0;
    param4[param0].unk_00 = 1;
}

static void ov23_02255D78(FieldSystem *fieldSystem, UnkStruct_ov23_02255BF4 *param1)
{
    int v0;
    int v1, v2;
    int v3;
    VecFx32 v4;
    UnkStruct_ov23_02255A98 *v5;

    ov5_021E1610(fieldSystem->unk_A4);

    for (v3 = 0; v3 < 32; v3++) {
        if (!param1[v3].unk_00) {
            continue;
        }

        v5 = &param1[v3].unk_04;

        v0 = ov23_02255E14(fieldSystem, v5->unk_14);
        v1 = v5->unk_18;
        v2 = v5->unk_1C;

        v4.x = (FX32_ONE * 16) * (v5->unk_00.unk_00) + (FX32_ONE * 8) * v1;
        v4.z = (FX32_ONE * 16) * (v5->unk_00.unk_04) + (FX32_ONE * 8) * v2;
        v4.y = FX32_ONE;

        v5->unk_10 = ov5_021E19CC(fieldSystem->unk_A4, fieldSystem->unk_30, v0, &v4, NULL, fieldSystem->unk_50);
    }
}

static void ov23_02255DDC(FieldSystem *fieldSystem, const UnkStruct_ov23_02255BF4 *param1)
{
    int v0;
    int v1;
    int v2, v3;
    UnkStruct_02029894 *v4;

    v4 = sub_02029894(fieldSystem->saveData);

    for (v0 = 0; v0 < 32; v0++) {
        if (param1[v0].unk_00 == 1) {
            v1 = param1[v0].unk_04.unk_14;
            v2 = param1[v0].unk_04.unk_00.unk_00;
            v3 = param1[v0].unk_04.unk_00.unk_04;
        } else {
            v1 = 0;
            v2 = 0;
            v3 = 0;
        }

        sub_02029308(v4, v0, v1, v2, v3);
    }
}

static const int ov23_02255E14(FieldSystem *fieldSystem, const int param1)
{
    int v0;

    GF_ASSERT(param1 != 0);
    v0 = ov5_021EFAE8(fieldSystem->unk_30, param1);

    return v0;
}

static void ov23_02255E2C(const int param0, UnkStruct_ov23_02256098 *param1)
{
    UnkStruct_ov5_021E1890 *v0;
    UnkStruct_ov23_02255A98 *v1;

    GF_ASSERT(param1->unk_5C[param0].unk_00);

    v1 = &(param1->unk_5C[param0].unk_04);
    v0 = ov5_021E18E0(param1->fieldSystem->unk_A4, v1->unk_10);

    param1->unk_0C.unk_04 = ov5_021E1894(v0);
    param1->unk_0C.unk_00 = param0;
    param1->unk_0C.unk_10 = (*v1);
}

static void ov23_02255E8C(UnkStruct_ov23_02256098 *param0)
{
    UnkStruct_ov5_021E1890 *v0;
    UnkStruct_ov23_02255A98 *v1;
    int v2;

    v2 = param0->unk_0C.unk_00;
    GF_ASSERT(param0->unk_5C[v2].unk_00);

    v1 = &(param0->unk_0C.unk_10);
    v0 = ov5_021E18E0(param0->fieldSystem->unk_A4, v1->unk_10);

    ov5_021E18A4(v0, &param0->unk_0C.unk_04);
}

static void ov23_02255EBC(const int param0, UnkStruct_ov23_02256098 *param1)
{
    param1->unk_00 = param0;
    param1->unk_04 = 0;
}

static void ov23_02255EC4(UnkStruct_ov23_02255EC4 *param0)
{
    NNSG3dResMdl *v0;

    Easy3D_InitRenderObjFromPath(4, "data/ug_base_cur.nsbmd", &param0->unk_00, &v0, &param0->unk_54);

    param0->unk_58.x = 0;
    param0->unk_58.y = 0;
    param0->unk_58.z = 0;
    param0->unk_64 = 0;
    param0->unk_68 = 0;
    param0->unk_6C = 0;
}

static void ov23_02255EF0(UnkStruct_ov23_02255EC4 *param0)
{
    Heap_FreeToHeap(param0->unk_54);
}

static void ov23_02255EFC(UnkStruct_ov23_02255EC4 *param0)
{
    param0->unk_6C = 1;
}

static void ov23_02255F04(const int param0, const int param1, UnkStruct_ov23_02255EC4 *param2)
{
    param2->unk_64 = param0;
    param2->unk_68 = param1;
    param2->unk_58.x = (FX32_ONE * 16) * ((0 * 32) + param0) + (FX32_ONE * 8);
    param2->unk_58.y = FX32_ONE;
    param2->unk_58.z = (FX32_ONE * 16) * ((0 * 32) + param1) + (FX32_ONE * 8);
}

static void ov23_02255F20(UnkStruct_ov23_02255EC4 *param0)
{
    param0->unk_6C = 0;
}

static void ov23_02255F28(const int param0, const int param1, UnkStruct_ov23_02256000 *param2)
{
    if (param0 != 0xffff) {
        param2->unk_00 = param0;
    }

    if (param1 != 0xffff) {
        param2->unk_04 = param1;
    }
}

static void ov23_02255F40(FieldSystem *fieldSystem, UnkStruct_ov23_02255A98 *param1, UnkStruct_ov23_02256000 *param2)
{
    UnkStruct_ov23_02255C30 v0;
    VecFx32 v1;
    int v2, v3;
    int v4, v5;
    UnkStruct_ov5_021EB0E0 *v6;

    v6 = fieldSystem->unk_8C;

    ov23_02255F28(gCoreSys.touchX, gCoreSys.touchY, param2);

    v1 = ov5_021EAFA4(param2->unk_00, param2->unk_04, v6);
    v2 = v1.x / (FX32_ONE * 16);
    v3 = v1.z / (FX32_ONE * 16);

    v4 = param1->unk_18;
    v5 = param1->unk_1C;

    v0.unk_00 = v2 % 32;
    v0.unk_04 = v3 % 32;
    v0.unk_08 = v0.unk_00 + (v4 - 1);
    v0.unk_0C = v0.unk_04 + (v5 - 1);

    if (!ov23_02255B58(&v0)) {
        param1->unk_00 = v0;

        v1.x = v2 * (FX32_ONE * 16);
        v1.z = v3 * (FX32_ONE * 16);

        v1.x += (FX32_ONE * 8) * v4;
        v1.z += (FX32_ONE * 8) * v5;
        v1.y = FX32_ONE;

        {
            UnkStruct_ov5_021E1890 *v7;

            v7 = ov5_021E18E0(fieldSystem->unk_A4, param1->unk_10);
            ov5_021E18A4(v7, &v1);
        }
    }
}

static void ov23_02256000(FieldSystem *fieldSystem, UnkStruct_ov23_02256000 *param1, UnkStruct_ov23_02255EC4 *param2)
{
    UnkStruct_ov23_02255C30 v0;
    VecFx32 v1;
    int v2, v3;
    UnkStruct_ov5_021EB0E0 *v4;

    v4 = fieldSystem->unk_8C;

    ov23_02255F28(gCoreSys.touchX, gCoreSys.touchY, param1);

    v1 = ov5_021EAFA4(param1->unk_00, param1->unk_04, v4);
    v2 = v1.x / (FX32_ONE * 16);
    v3 = v1.z / (FX32_ONE * 16);

    v0.unk_00 = v2 % 32;
    v0.unk_04 = v3 % 32;
    v0.unk_08 = v0.unk_00;
    v0.unk_0C = v0.unk_04;

    if (!ov23_02255B58(&v0)) {
        v1.x = v2 * (FX32_ONE * 16) + (FX32_ONE * 8);
        v1.z = v3 * (FX32_ONE * 16) + (FX32_ONE * 8);
        v1.y = FX32_ONE;

        param2->unk_58 = v1;
        param2->unk_64 = v2;
        param2->unk_68 = v3;
    }
}

static BOOL ov23_02256098(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2)
{
    VecFx32 v0;
    BOOL v1;

    v1 = 0;
    *param2 = 0;

    if (gCoreSys.touchPressed) {
        if (!gCoreSys.heldKeys) {
            param0->unk_4F0.unk_08 = 1;
            ov23_02255F40(fieldSystem, &(param0->unk_3C), &param0->unk_4F0);
        }

        v1 = 1;
    } else if (gCoreSys.touchHeld) {
        if (param0->unk_4F0.unk_08) {
            ov23_02255F40(fieldSystem, &(param0->unk_3C), &param0->unk_4F0);
        }

        v1 = 1;
    } else {
        if (param0->unk_4F0.unk_08) {
            param0->unk_4F0.unk_08 = 0;
            *param2 = 1;
        }
    }

    return v1;
}

static BOOL ov23_02256104(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2)
{
    VecFx32 v0;
    BOOL v1;

    v1 = 0;
    *param2 = 0;

    if (gCoreSys.touchPressed) {
        if (!gCoreSys.heldKeys) {
            param0->unk_4F0.unk_08 = 1;
            ov23_02256000(fieldSystem, &param0->unk_4F0, param0->unk_4FC);
        }

        v1 = 1;
    } else if (gCoreSys.touchHeld) {
        if (param0->unk_4F0.unk_08) {
            ov23_02256000(fieldSystem, &param0->unk_4F0, param0->unk_4FC);
        }

        v1 = 1;
    } else {
        if (param0->unk_4F0.unk_08) {
            param0->unk_4F0.unk_08 = 0;
            *param2 = 1;
        }
    }

    return v1;
}

static BOOL ov23_02256174(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2)
{
    VecFx32 v0;
    BOOL v1;

    v1 = 0;
    *param2 = 0;

    if (gCoreSys.touchPressed) {
        if (!gCoreSys.heldKeys) {
            param0->unk_4F0.unk_08 = 1;
            *param2 = 1;
            ov23_02256000(fieldSystem, &param0->unk_4F0, param0->unk_4FC);
        }

        v1 = 1;
    } else {
        param0->unk_4F0.unk_08 = 0;
    }

    return v1;
}

static BOOL ov23_022561BC(UnkStruct_ov23_02256098 *param0, FieldSystem *fieldSystem, BOOL *param2)
{
    VecFx32 v0;
    BOOL v1;

    v1 = 0;
    *param2 = 0;

    if (gCoreSys.touchPressed) {
        if (!gCoreSys.heldKeys) {
            param0->unk_4F0.unk_08 = 1;
            ov23_02255F40(fieldSystem, &(param0->unk_3C), &param0->unk_4F0);
        }

        v1 = 1;
    } else if (gCoreSys.touchHeld) {
        if (param0->unk_4F0.unk_08) {
            ov23_02255F40(fieldSystem, &(param0->unk_3C), &param0->unk_4F0);
        }

        v1 = 1;
    } else {
        if (param0->unk_4F0.unk_08) {
            param0->unk_4F0.unk_08 = 0;
            *param2 = 1;
        }
    }

    return v1;
}

static void ov23_02256228(UnkStruct_ov23_02256228 *param0)
{
    param0->unk_04 = 0;
    param0->unk_08 = 0;
    param0->unk_00 = 0xffff;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
}

static void ov23_0225623C(const int param0, const int param1, UnkStruct_ov23_02256228 *param2)
{
    param2->unk_04 = 0;
    param2->unk_08 = param1;
    param2->unk_00 = param0;
    param2->unk_0C = 0;
    param2->unk_10 = 1;
}

static void ov23_0225624C(FieldSystem *fieldSystem, UnkStruct_ov23_02256228 *param1)
{
    UnkStruct_ov5_021E1890 *v0;

    if (!param1->unk_10) {
        return;
    }

    param1->unk_04++;

    if (param1->unk_04 >= param1->unk_08) {
        param1->unk_04 = 0;
        param1->unk_0C = (param1->unk_0C + 1) % 2;
        v0 = ov5_021E18E0(fieldSystem->unk_A4, param1->unk_00);
        ov5_021E18B4(v0, param1->unk_0C);
    }
}

static void ov23_0225628C(FieldSystem *fieldSystem, UnkStruct_ov23_02256228 *param1)
{
    UnkStruct_ov5_021E1890 *v0;

    if (!param1->unk_10) {
        return;
    }

    v0 = ov5_021E18E0(fieldSystem->unk_A4, param1->unk_00);
    ov5_021E18B4(v0, 0);
}

static const int ov23_022562A8(UnkStruct_ov23_02256228 *param0)
{
    return param0->unk_00;
}

static void ov23_022562AC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov23_02255EC4 *v0 = (UnkStruct_ov23_02255EC4 *)(param2);
    ov23_02255EC4(v0);
}

static void ov23_022562B8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    return;
}

static void ov23_022562BC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov23_02255EC4 *v0 = (UnkStruct_ov23_02255EC4 *)(param2);
    ov23_02255EF0(v0);
}

static void ov23_022562C8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov23_02255EC4 *v0 = (UnkStruct_ov23_02255EC4 *)(param2);

    if (!(v0->unk_6C)) {
        return;
    }

    {
        MtxFx33 v1 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
        VecFx32 v2 = { FX32_ONE, FX32_ONE, FX32_ONE };

        Easy3D_DrawRenderObj(&v0->unk_00, &v0->unk_58, &v1, &v2);
    }
}
