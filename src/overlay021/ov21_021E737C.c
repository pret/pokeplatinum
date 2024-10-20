#include "overlay021/ov21_021E737C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02015128_decl.h"
#include "struct_decls/struct_020151A4_decl.h"
#include "struct_decls/struct_02015214_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "overlay021/struct_ov21_021E7F40.h"
#include "overlay022/struct_ov22_022557A0.h"
#include "overlay022/struct_ov22_02255800.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "pokedex_heightweight.h"
#include "pokemon_icon.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_02015064.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    u16 unk_08;
    u16 unk_0A;
    BOOL unk_0C;
    int unk_10;
} UnkStruct_ov21_021E9DB0;

typedef struct {
    UnkStruct_ov21_021D3320 *unk_00;
    UnkStruct_ov21_021E68F4 *unk_04;
} UnkStruct_ov21_021E7468;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
    UnkStruct_02015128 *unk_04;
    UnkStruct_020151A4 *unk_08;
    UnkStruct_02015214 *unk_0C;
    void *unk_10;
    void *unk_14;
    NNSG2dCharacterData *unk_18;
    NNSG2dPaletteData *unk_1C;
} UnkStruct_ov21_021E747C;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov21_021E74A0;

typedef struct {
    UnkStruct_02015214 *unk_00;
    CellActor *unk_04;
    CellActor *unk_08;
    CellActor *unk_0C;
    CellActor *unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    BOOL *unk_30;
} UnkStruct_ov21_021E8084;

typedef struct {
    UnkStruct_02015214 *unk_00;
    CellActor *unk_04;
    CellActor *unk_08;
    CellActor *unk_0C;
    CellActor *unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    BOOL *unk_20;
} UnkStruct_ov21_021E81F8;

typedef struct {
    CellActor *unk_00;
    fx32 unk_04;
    fx32 unk_08;
    s16 unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    BOOL *unk_1C;
} UnkStruct_ov21_021E82C8;

typedef struct {
    CellActor *unk_00;
    CellActor *unk_04;
    CellActor *unk_08;
    CellActor *unk_0C[2];
    SpriteResource *unk_14[4];
    SpriteResource *unk_24[4];
    const UnkStruct_ov21_021E9DB0 *unk_34;
    int unk_38;
    SysTask *unk_3C;
    UnkStruct_ov21_021E8084 unk_40;
    UnkStruct_ov21_021E81F8 unk_74;
    UnkStruct_ov21_021E82C8 unk_98;
    BOOL unk_B8;
    u16 *unk_BC;
    u16 *unk_C0;
} UnkStruct_ov21_021E7714;

static UnkStruct_ov21_021E7468 *ov21_021E73E8(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E747C *ov21_021E7424(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E7468(UnkStruct_ov21_021E7468 *param0);
static void ov21_021E747C(UnkStruct_ov21_021E747C *param0);
static int ov21_021E749C(void);
static int ov21_021E74A0(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E750C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E751C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E7530(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E75D4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E7694(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021E7714(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E7718(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E771C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3);
static BOOL ov21_021E77A4(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3);
static void ov21_021E7800(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, const UnkStruct_ov21_021E74A0 *param3, int param4);
static void ov21_021E785C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1);
static void ov21_021E789C(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, int param2);
static void ov21_021E7904(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, int param3);
static void ov21_021E7AA0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1);
static void ov21_021E7B34(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, int param3);
static void ov21_021E7CCC(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E7CF0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, int param3);
static void ov21_021E7CF4(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E7CF8(UnkStruct_ov21_021E747C *param0, int param1);
static void ov21_021E7DA8(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, int param2);
static void ov21_021E7EC0(UnkStruct_ov21_021E747C *param0, int param1);
static void ov21_021E7F20(UnkStruct_ov21_021E747C *param0);
static void ov21_021E7F40(UnkStruct_ov21_021E747C *param0, int param1);
static void ov21_021E7F7C(UnkStruct_ov21_021E747C *param0);
static const UnkStruct_ov21_021E9DB0 *ov21_021E83D8(const UnkStruct_ov21_021E9DB0 *param0, int param1, int param2);
static void ov21_021E80D4(UnkStruct_02015214 *param0, CellActor *param1, CellActor *param2, CellActor *param3, CellActor *param4, u16 param5);
static void ov21_021E7F88(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, int param2);
static void ov21_021E7FD0(SysTask *param0, void *param1);
static void ov21_021E8084(UnkStruct_ov21_021E8084 *param0);
static void ov21_021E8188(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, u16 param2, u16 param3, int param4);
static void ov21_021E81F8(SysTask *param0, void *param1);
static void ov21_021E8258(UnkStruct_ov21_021E7714 *param0, s16 param1, int param2);
static void ov21_021E82C8(SysTask *param0, void *param1);
static void ov21_021E8400(UnkStruct_ov21_021E7714 *param0, u8 param1, u16 param2);

const static UnkStruct_ov21_021E9DB0 Unk_ov21_021E9DB0[17] = {
    { 0x0, 0x1, 0x80, 0x0, 0x0, 0x0 },
    { 0xA, 0x1, 0x80, 0x2D8, 0x0, 0x0 },
    { 0x14, 0x1, 0x80, 0x222, 0x0, 0x0 },
    { 0x1E, 0x1, 0x80, 0x2D8, 0x0, 0x0 },
    { 0x28, 0x1, 0x80, 0x38E, 0x0, 0x0 },
    { 0x32, 0x0, 0x80, 0x444, 0x0, 0x0 },
    { 0x3C, 0x0, 0x80, 0x4FA, 0x0, 0x0 },
    { 0x46, 0x0, 0x80, 0x5B0, 0x0, 0x0 },
    { 0x96, 0x0, 0x80, 0xAAA, 0x0, 0x0 },
    { 0x12C, 0x0, 0x100, 0xAAA, 0x0, 0x0 },
    { 0x1F4, 0x0, 0x180, 0xAAA, 0x0, 0x0 },
    { 0x2EE, 0x0, 0x200, 0xAAA, 0x0, 0x0 },
    { 0x41A, 0x0, 0x280, 0xAAA, 0x1, 0x0 },
    { 0x60E, 0x0, 0x300, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFFE },
    { 0x92E, 0x0, 0x380, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFFC },
    { 0xDAC, 0x0, 0x400, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFF8 },
    { 0xFFFF, 0x0, 0x480, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFF0 }
};

void ov21_021E737C(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021E7468 *v0;
    UnkStruct_ov21_021E747C *v1;

    v0 = ov21_021E73E8(param2, param1);
    v1 = ov21_021E7424(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021E749C();
    param0->unk_08[0] = ov21_021E74A0;
    param0->unk_08[1] = ov21_021E750C;
    param0->unk_08[2] = ov21_021E751C;
    param0->unk_14[0] = ov21_021E7530;
    param0->unk_14[1] = ov21_021E75D4;
    param0->unk_14[2] = ov21_021E7694;
}

void ov21_021E73D4(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E7468(param0->unk_00);
    ov21_021E747C(param0->unk_04);
}

static UnkStruct_ov21_021E7468 *ov21_021E73E8(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E7468 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E7468));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E7468));

    v0->unk_00 = ov21_021D13EC(param1);
    v0->unk_04 = ov21_021D1410(param1, 5);

    return v0;
}

UnkStruct_ov21_021E747C *ov21_021E7424(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E747C *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E747C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E747C));

    v0->unk_00 = ov21_021D13FC(param1);

    ov21_021E7EC0(v0, param0);
    ov21_021E7F40(v0, param0);
    sub_02015240(v0->unk_0C, 0);

    return v0;
}

static void ov21_021E7468(UnkStruct_ov21_021E7468 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E747C(UnkStruct_ov21_021E747C *param0)
{
    GF_ASSERT(param0);

    ov21_021E7F20(param0);
    ov21_021E7F7C(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021E749C(void)
{
    return 0;
}

static int ov21_021E74A0(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E7468 *v0 = param1;
    UnkStruct_ov21_021E74A0 *v1;
    int v2;
    int v3;
    int v4;

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021E74A0));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021E74A0));
    param0->unk_08 = v1;

    v4 = ov21_021D37BC(v0->unk_00);
    v2 = Pokedex_HeightWeightData_Weight(v0->unk_00->unk_1748, v4);

    if (ov21_021D3920(v0->unk_00) == 0) {
        v3 = 380;
    } else {
        v3 = 340;
    }

    if (v2 >= v3) {
        v1->unk_00 = v2 - v3;
        v1->unk_04 = 1;
    } else {
        v1->unk_00 = v3 - v2;
        v1->unk_04 = 0;
    }

    return 1;
}

static int ov21_021E750C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E7468 *v0 = param1;
    UnkStruct_ov21_021E74A0 *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021E751C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E7468 *v0 = param1;
    UnkStruct_ov21_021E74A0 *v1 = param0->unk_08;

    Heap_FreeToHeap(v1);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021E7530(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E7468 *v0 = param2;
    const UnkStruct_ov21_021E74A0 *v1 = param3->unk_08;
    UnkStruct_ov21_021E747C *v2 = param0;
    UnkStruct_ov21_021E7714 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021E7714));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E7714));
        v3 = param1->unk_08;
        v3->unk_B8 = 1;
        param1->unk_00++;
        break;
    case 1:
        ov21_021E7800(v3, v2, v0, v1, param1->unk_04);
        ov21_021E771C(v3, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021E77A4(v3, v2, v0, 1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        v3->unk_34 = ov21_021E83D8(Unk_ov21_021E9DB0, 17, v1->unk_00);
        v3->unk_38 = v1->unk_04;
        return 1;
    }

    return 0;
}

static int ov21_021E75D4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E7468 *v0 = param2;
    const UnkStruct_ov21_021E74A0 *v1 = param3->unk_08;
    UnkStruct_ov21_021E747C *v2 = param0;
    UnkStruct_ov21_021E7714 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        v3->unk_B8 = 1;

        if (v3->unk_34->unk_04) {
            param1->unk_00 = 1;
        } else {
            param1->unk_00 = 3;
        }
        break;
    case 1:
        ov21_021E7F88(v3, v2, v3->unk_38);
        param1->unk_00++;
        break;
    case 2:
        if (v3->unk_B8 == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021E8188(v3, v2, v3->unk_34->unk_08, v3->unk_34->unk_0A, v3->unk_38);
        param1->unk_00++;
        break;
    case 4:
        if (v3->unk_B8 == 1) {
            param1->unk_00++;
        }
        break;
    case 5:
        if (v3->unk_34->unk_0C) {
            ov21_021E8258(v3, v3->unk_34->unk_10, v3->unk_38);
            param1->unk_00++;
        } else {
            param1->unk_00 = 7;
        }
        break;
    case 6:
        if (v3->unk_B8 == 1) {
            param1->unk_00++;
        }
        break;
    case 7:
        break;
    }

    return 0;
}

static int ov21_021E7694(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E7468 *v0 = param2;
    const UnkStruct_ov21_021E74A0 *v1 = param3->unk_08;
    UnkStruct_ov21_021E747C *v2 = param0;
    UnkStruct_ov21_021E7714 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021E771C(v3, v2, param2, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021E77A4(v3, v2, param2, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E785C(v3, v2);
        param1->unk_00++;
        break;
    case 3:
        if (v3->unk_B8 == 0) {
            SysTask_Done(v3->unk_3C);
        }

        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021E7714(UnkStruct_ov21_021E7714 *param0)
{
    return;
}

static void ov21_021E7718(UnkStruct_ov21_021E7714 *param0)
{
    return;
}

static void ov21_021E771C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3)
{
    ov21_021E7714(param0);

    if (ov21_021E2A54(param2->unk_04)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0, 0);
            ov21_021E8400(param0, -ov21_021D24B8(&param1->unk_00->unk_168), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0, 0);
        }
    }
}

static BOOL ov21_021E77A4(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_04)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0) {
        if (param3) {
            ov21_021E7718(param0);
        }

        return 1;
    } else {
        ov21_021E8400(param0, -ov21_021D24B8(&param1->unk_00->unk_168), 0);
    }

    return 0;
}

static void ov21_021E7800(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, const UnkStruct_ov21_021E74A0 *param3, int param4)
{
    ov21_021E789C(param1, param2, param4);
    ov21_021E7CF8(param1, param4);
    ov21_021E7DA8(param1, param2, param4);
    ov21_021E7904(param0, param1, param2, param4);
    ov21_021E7B34(param0, param1, param2, param4);
    ov21_021E7CF0(param0, param1, param2, param4);

    sub_020152BC(param1->unk_0C, 0);
    sub_02015240(param1->unk_0C, 1);
}

static void ov21_021E785C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1)
{
    ov21_021E7CF4(param0);
    ov21_021E7CCC(param0);
    ov21_021E7AA0(param0, param1);

    BGL_FillWindow(&param1->unk_00->unk_04, 0);
    sub_02019EBC(param1->unk_00->unk_00, 1);

    sub_02015240(param1->unk_0C, 0);
    sub_020152BC(param1->unk_0C, 0);
}

static void ov21_021E789C(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 73, 1, &v1, param2);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021E7904(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, int param3)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    int v1, v2, v3, v4;
    int v5 = ov21_021D37BC(param2->unk_00);
    BOOL v6;
    NARC *v7 = ov21_021D26E0(param1->unk_00);
    int v8;
    NARC *v9;

    v9 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, param3);
    v8 = ov21_021D33D4(param2->unk_00, v5);
    v1 = PokeIconSpriteIndex(v5, 0, v8);
    v2 = PokeIconPalettesFileIndex();
    v3 = PokeIconCellsFileIndex();
    v4 = PokeIconAnimationFileIndex();

    param0->unk_14[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v9, v1, 0, 8000, NNS_G2D_VRAM_TYPE_2DMAIN, param3);

    sub_0200A450(param0->unk_14[0]);
    SpriteResource_ReleaseData(param0->unk_14[0]);

    param0->unk_14[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v9, v2, 0, 8000, NNS_G2D_VRAM_TYPE_2DMAIN, 3, param3);

    v6 = sub_0200A640(param0->unk_14[1]);
    GF_ASSERT(v6);

    {
        param0->unk_BC = Heap_AllocFromHeap(param3, 32 * 3);
    }

    param0->unk_14[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v9, v3, 0, 8000, 2, param3);
    param0->unk_14[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v9, v4, 0, 8000, 3, param3);
    param0->unk_24[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v7, 93, 1, 93 + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, param3);

    sub_0200A3DC(param0->unk_24[0]);
    SpriteResource_ReleaseData(param0->unk_24[0]);

    param0->unk_24[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v7, 14, 0, 14 + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param3);

    sub_0200A640(param0->unk_24[1]);

    {
        param0->unk_C0 = Heap_AllocFromHeap(param3, 32 * 5);
    }

    param0->unk_24[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v7, 91, 1, 91 + 7000, 2, param3);
    param0->unk_24[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v7, 92, 1, 92 + 7000, 3, param3);

    NARC_dtor(v9);
}

static void ov21_021E7AA0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_14[0]);
    sub_0200A6DC(param0->unk_14[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_14[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_14[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_14[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_14[3]);

    sub_0200A4E4(param0->unk_24[0]);
    sub_0200A6DC(param0->unk_24[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_24[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_24[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_24[3]);

    Heap_FreeToHeap(param0->unk_BC);
    Heap_FreeToHeap(param0->unk_C0);
}

static void ov21_021E7B34(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, int param3)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    VecFx32 v3;
    short v4;
    short v5;
    int v6 = ov21_021D37BC(param2->unk_00);
    int v7 = ov21_021D33D4(param2->unk_00, v6);

    sub_020093B4(&v0, 93 + 7000, 14 + 7000, 91 + 7000, 92 + 7000, 0xffffffff, 0xffffffff, 0, 3, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = 184 << FX32_SHIFT;
    v1.position.y = 64 << FX32_SHIFT;

    param0->unk_00 = CellActorCollection_Add(&v1);

    if (ov21_021D3920(param2->unk_00) == 0) {
        CellActor_SetAnim(param0->unk_00, 3);
    } else {
        CellActor_SetAnim(param0->unk_00, 4);
    }

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = (96 + 10) << FX32_SHIFT;

    param0->unk_08 = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_08, 1);
    CellActor_SetExplicitPriority(param0->unk_08, 1);

    v1.position.x = 184 << FX32_SHIFT;
    v1.position.y = (64 + 24) << FX32_SHIFT;

    param0->unk_0C[0] = CellActorCollection_Add(&v1);
    CellActor_SetAnim(param0->unk_0C[0], 0);

    v1.position.x = 72 << FX32_SHIFT;
    v1.position.y = (64 + 24) << FX32_SHIFT;

    param0->unk_0C[1] = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_0C[1], 0);
    sub_020093B4(&v0, SpriteResource_GetID(param0->unk_14[0]), SpriteResource_GetID(param0->unk_14[1]), SpriteResource_GetID(param0->unk_14[2]), SpriteResource_GetID(param0->unk_14[3]), 0xffffffff, 0xffffffff, 0, 3, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = 72 << FX32_SHIFT;
    v1.position.y = 64 << FX32_SHIFT;

    param0->unk_04 = CellActorCollection_Add(&v1);
    CellActor_SetExplicitPaletteWithOffset(param0->unk_04, PokeIconPaletteIndex(v6, v7, 0));
}

static void ov21_021E7CCC(UnkStruct_ov21_021E7714 *param0)
{
    CellActor_Delete(param0->unk_00);
    CellActor_Delete(param0->unk_04);
    CellActor_Delete(param0->unk_08);
    CellActor_Delete(param0->unk_0C[0]);
    CellActor_Delete(param0->unk_0C[1]);
}

static void ov21_021E7CF0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, int param3)
{
    return;
}

static void ov21_021E7CF4(UnkStruct_ov21_021E7714 *param0)
{
    return;
}

static void ov21_021E7CF8(UnkStruct_ov21_021E747C *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init(32, param1);
    MessageLoader *v1 = MessageLoader_Init(0, 26, 697, param1);

    MessageLoader_GetStrbuf(v1, 44, v0);

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, 256);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, v2, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    MessageLoader_GetStrbuf(v1, 10, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, 32, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetStrbuf(v1, 10, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, 152, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021E7DA8(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, int param2)
{
    Strbuf *v0 = Strbuf_Init(32, param2);
    int v2 = ov21_021D37BC(param1->unk_00);
    Strbuf *v3 = MessageUtil_SpeciesName(v2, param2);

    int weightMessageBankIndex = Weight_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(0, 26, weightMessageBankIndex, param2);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v3, 26, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetStrbuf(v1, v2, v0);

    {
        u32 v5 = 32 + 78 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, v5, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v3);
    MessageLoader_Free(v1);

    v1 = MessageLoader_Init(0, 26, 697, param2);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, ov21_021D3914(param1->unk_00), 146, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    if (ov21_021D3920(param1->unk_00) == 0) {
        MessageLoader_GetStrbuf(v1, 97, v0);
    } else {
        MessageLoader_GetStrbuf(v1, 98, v0);
    }

    {
        u32 v6 = 152 + 78 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, v6, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021E7EC0(UnkStruct_ov21_021E747C *param0, int param1)
{
    UnkStruct_ov22_022557A0 v0;
    UnkStruct_ov22_02255800 v1;

    param0->unk_10 = ov21_021D2808(param0->unk_00, 36, 1, &param0->unk_18, param1);
    param0->unk_14 = ov21_021D27E0(param0->unk_00, 6, &param0->unk_1C, param1);

    v0.unk_00 = param0->unk_00->unk_164;
    v0.unk_04 = param0->unk_18;

    param0->unk_04 = sub_02015128(&v0);

    v1.unk_00 = param0->unk_00->unk_164;
    v1.unk_04 = param0->unk_1C;
    v1.unk_08 = 16;

    param0->unk_08 = sub_020151A4(&v1);
}

static void ov21_021E7F20(UnkStruct_ov21_021E747C *param0)
{
    sub_02015164(param0->unk_04);
    sub_020151D4(param0->unk_08);
    Heap_FreeToHeap(param0->unk_10);
    Heap_FreeToHeap(param0->unk_14);
}

static void ov21_021E7F40(UnkStruct_ov21_021E747C *param0, int param1)
{
    UnkStruct_ov21_021E7F40 v0;

    v0.unk_00 = param0->unk_00->unk_164;
    v0.unk_04 = param0->unk_04;
    v0.unk_08 = param0->unk_08;

    v0.unk_0C = 128 - (128 / 2);
    v0.unk_0E = 96 - (16 / 2);
    v0.unk_10 = 0;
    v0.unk_14 = 31;
    v0.unk_18 = 0;
    v0.unk_1C = 0;

    param0->unk_0C = sub_02015214(&v0);
}

static void ov21_021E7F7C(UnkStruct_ov21_021E747C *param0)
{
    sub_02015238(param0->unk_0C);
}

static void ov21_021E7F88(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, int param2)
{
    param0->unk_40.unk_00 = param1->unk_0C;
    param0->unk_40.unk_04 = param0->unk_0C[0];
    param0->unk_40.unk_08 = param0->unk_0C[1];
    param0->unk_40.unk_0C = param0->unk_00;
    param0->unk_40.unk_10 = param0->unk_04;
    param0->unk_40.unk_2C = 0;
    param0->unk_40.unk_30 = &param0->unk_B8;
    param0->unk_B8 = 0;

    if (param2 == 0) {
        param0->unk_40.unk_14 = -1;
    } else {
        param0->unk_40.unk_14 = 1;
    }

    param0->unk_3C = SysTask_Start(ov21_021E7FD0, &param0->unk_40, 0);
}

static void ov21_021E7FD0(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E8084 *v0 = (UnkStruct_ov21_021E8084 *)param1;

    switch (v0->unk_2C) {
    case 0:
        v0->unk_18 = 2;
        v0->unk_2C = 2;
        break;
    case 1:
        ov21_021E8084(v0);
        break;
    case 2:
        v0->unk_24 = (-((3 * 0xffff) / 360)) * v0->unk_14;
        v0->unk_20 = -((1 * 0xffff) / 360) * v0->unk_14;
        v0->unk_28 = 3;
        v0->unk_2C = 1;
        ov21_021E8084(v0);
        break;
    case 3:
        v0->unk_24 = ((3 * 0xffff) / 360) * v0->unk_14;
        v0->unk_20 = ((1 * 0xffff) / 360) * v0->unk_14;
        v0->unk_28 = 4;
        v0->unk_2C = 1;
        ov21_021E8084(v0);
        break;
    case 4:
        v0->unk_24 = ((0 * 0xffff) / 360) * v0->unk_14;
        v0->unk_20 = -((1 * 0xffff) / 360) * v0->unk_14;
        v0->unk_2C = 1;

        v0->unk_18--;

        if (v0->unk_18 > 0) {
            v0->unk_28 = 2;
        } else {
            v0->unk_28 = 5;
        }

        ov21_021E8084(v0);
        break;
    case 5:
        SysTask_Done(param0);
        *v0->unk_30 = 1;
        break;
    }
}

static void ov21_021E8084(UnkStruct_ov21_021E8084 *param0)
{
    if (param0->unk_20 < 0) {
        if ((param0->unk_1C + param0->unk_20) >= param0->unk_24) {
            param0->unk_1C += param0->unk_20;
        } else {
            param0->unk_1C = param0->unk_24;
            param0->unk_2C = param0->unk_28;
        }
    } else {
        if ((param0->unk_1C + param0->unk_20) <= param0->unk_24) {
            param0->unk_1C += param0->unk_20;
        } else {
            param0->unk_1C = param0->unk_24;
            param0->unk_2C = param0->unk_28;
        }
    }

    ov21_021E80D4(param0->unk_00, param0->unk_04, param0->unk_08, param0->unk_0C, param0->unk_10, param0->unk_1C);
}

static void ov21_021E80D4(UnkStruct_02015214 *param0, CellActor *param1, CellActor *param2, CellActor *param3, CellActor *param4, u16 param5)
{
    fx32 v0, v1;
    VecFx32 v2;

    sub_020152BC(param0, param5);

    v0 = FX_Mul(FX_CosIdx(param5), 56 << FX32_SHIFT);
    v1 = FX_Mul(FX_SinIdx(param5), 56 << FX32_SHIFT);

    v2.x = (128 << FX32_SHIFT) + v0;
    v2.y = (64 << FX32_SHIFT) + v1;

    CellActor_SetPosition(param3, &v2);
    v2.y += 24 << FX32_SHIFT;
    CellActor_SetPosition(param1, &v2);

    v2.x = (128 << FX32_SHIFT) - v0;
    v2.y = (64 << FX32_SHIFT) - v1;

    CellActor_SetPosition(param4, &v2);
    v2.y += 24 << FX32_SHIFT;
    CellActor_SetPosition(param2, &v2);
}

static void ov21_021E8188(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, u16 param2, u16 param3, int param4)
{
    param0->unk_74.unk_00 = param1->unk_0C;
    param0->unk_74.unk_04 = param0->unk_0C[0];
    param0->unk_74.unk_08 = param0->unk_0C[1];
    param0->unk_74.unk_0C = param0->unk_00;
    param0->unk_74.unk_10 = param0->unk_04;
    param0->unk_74.unk_14 = 0;
    param0->unk_74.unk_20 = &param0->unk_B8;
    param0->unk_B8 = 0;

    if (param4 == 0) {
        param0->unk_74.unk_18 = param2;
        param0->unk_74.unk_1C = param3;
    } else {
        param0->unk_74.unk_18 = -param2;
        param0->unk_74.unk_1C = -param3;
    }

    param0->unk_3C = SysTask_Start(ov21_021E81F8, &param0->unk_74, 0);
}

static void ov21_021E81F8(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E81F8 *v0 = (UnkStruct_ov21_021E81F8 *)param1;
    BOOL v1 = 0;

    if (v0->unk_18 < 0) {
        if ((v0->unk_14 + v0->unk_18) >= v0->unk_1C) {
            v0->unk_14 += v0->unk_18;
        } else {
            v0->unk_14 = v0->unk_1C;
            v1 = 1;
        }
    } else {
        if ((v0->unk_14 + v0->unk_18) <= v0->unk_1C) {
            v0->unk_14 += v0->unk_18;
        } else {
            v0->unk_14 = v0->unk_1C;
            v1 = 1;
        }
    }

    ov21_021E80D4(v0->unk_00, v0->unk_04, v0->unk_08, v0->unk_0C, v0->unk_10, v0->unk_14);

    if (v1 == 1) {
        SysTask_Done(param0);
        *v0->unk_20 = 1;
    }
}

static void ov21_021E8258(UnkStruct_ov21_021E7714 *param0, s16 param1, int param2)
{
    const VecFx32 *v0;

    if (param2 == 0) {
        param0->unk_98.unk_00 = param0->unk_04;
    } else {
        param0->unk_98.unk_00 = param0->unk_00;
    }

    param0->unk_98.unk_10 = (-param1 / 1) * 2;

    v0 = CellActor_GetPosition(param0->unk_98.unk_00);

    param0->unk_98.unk_04 = v0->x;
    param0->unk_98.unk_08 = v0->y;
    param0->unk_98.unk_14 = 0;
    param0->unk_98.unk_0C = param1;
    param0->unk_98.unk_18 = 0;
    param0->unk_98.unk_1C = &param0->unk_B8;
    param0->unk_B8 = 0;
    param0->unk_3C = SysTask_Start(ov21_021E82C8, &param0->unk_98, 0);
}

static void ov21_021E82C8(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E82C8 *v0 = (UnkStruct_ov21_021E82C8 *)param1;
    int v1;
    VecFx32 v2;

    switch (v0->unk_18) {
    case 0:
        v0->unk_14++;
        v1 = (v0->unk_0C * v0->unk_14) + ((1 * (v0->unk_14 * v0->unk_14)) / 2);

        v2.x = v0->unk_04;
        v2.y = v0->unk_08 + (v1 << FX32_SHIFT);

        CellActor_SetPosition(v0->unk_00, &v2);

        if (v0->unk_14 >= v0->unk_10) {
            v0->unk_14 = 0;
            v0->unk_10 = 1 + (v0->unk_0C / 2);
            v0->unk_18++;
        }
        break;
    case 1:
        if (v0->unk_14 == 0) {
            v2.x = v0->unk_04 + (2 * FX32_ONE);
            v2.y = v0->unk_08;
            CellActor_SetPosition(v0->unk_00, &v2);
        }

        v0->unk_14++;

        if (v0->unk_14 > 1) {
            v0->unk_14 = 0;
            v0->unk_18++;
        }
        break;
    case 2:
        if (v0->unk_14 == 0) {
            v2.x = v0->unk_04 - (2 * FX32_ONE);
            v2.y = v0->unk_08;
            CellActor_SetPosition(v0->unk_00, &v2);
        }

        v0->unk_14++;

        if (v0->unk_14 > 1) {
            v0->unk_10--;

            if (v0->unk_10 > 0) {
                v0->unk_14 = 0;
                v0->unk_18 = 1;
            } else {
                v0->unk_18++;
            }
        }
        break;
    case 3:
        v2.x = v0->unk_04;
        v2.y = v0->unk_08;
        CellActor_SetPosition(v0->unk_00, &v2);
        SysTask_Done(param0);
        *v0->unk_1C = 1;
        break;
    }
}

static const UnkStruct_ov21_021E9DB0 *ov21_021E83D8(const UnkStruct_ov21_021E9DB0 *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 >= param2) {
            return &param0[v0];
        }
    }

    return NULL;
}

static void ov21_021E8400(UnkStruct_ov21_021E7714 *param0, u8 param1, u16 param2)
{
    NNSG2dPaletteData *v0 = SpriteResource_GetPaletteData(param0->unk_14[1]);
    const NNSG2dImagePaletteProxy *v1 = sub_0200A72C(param0->unk_14[1], NULL);

    sub_0200393C(v0->pRawData, param0->unk_BC, 3 * 16, param1, param2);
    sub_0201DC68(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, NNS_G2dGetImagePaletteLocation(v1, NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_BC, 3 * 32);

    v0 = SpriteResource_GetPaletteData(param0->unk_24[1]);
    v1 = sub_0200A72C(param0->unk_24[1], NULL);

    sub_0200393C(v0->pRawData, param0->unk_C0, 5 * 16, param1, param2);
    sub_0201DC68(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, NNS_G2dGetImagePaletteLocation(v1, NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_C0, 5 * 32);
}
