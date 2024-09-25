#include "unk_0200DA60.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02013610.h"
#include "struct_defs/struct_0201AE08.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay005/ov5_021D2F14.h"
#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay104/struct_ov104_02241308.h"

#include "cell_actor.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pokemon.h"
#include "render_text.h"
#include "sprite_resource.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_0200A328.h"
#include "unk_0200C6E4.h"
#include "unk_020131EC.h"
#include "unk_02018340.h"

typedef struct {
    Window *unk_00;
    u8 unk_04[1024];
    u8 unk_404[128];
    u16 unk_484;
    u8 unk_486;
    u8 unk_487_0 : 7;
    u8 : 1;
    u8 unk_488_0 : 2;
    u8 : 6;
} UnkStruct_0200E924;

typedef struct {
    UnkStruct_ov5_021D30A8 unk_00;
    CellActorData *unk_1C8;
    BGL *unk_1CC;
    u8 unk_1D0;
    u8 unk_1D1;
    u8 unk_1D2;
    u8 unk_1D3;
} UnkStruct_0200ED50;

static void sub_0200E130(Window *param0, u16 param1);
static void sub_0200E31C(BGL *param0, u8 param1, u16 param2, u8 param3, u16 param4, u32 param5);
static void sub_0200E924(UnkStruct_0200E924 *param0, u32 param1);
static void sub_0200EB20(SysTask *param0, void *param1);
static UnkStruct_0200ED50 *sub_0200ED14(BGL *param0, u8 param1, u8 param2, u8 param3, u32 param4);
static void sub_0200ED50(UnkStruct_0200ED50 *param0, u32 param1);
static void sub_0200ED7C(UnkStruct_0200ED50 *param0);
static void sub_0200EDD4(UnkStruct_0200ED50 *param0, u8 param1, u8 param2);
static void sub_0200EE98(UnkStruct_ov5_021D30A8 *param0, ArchivedSprite *param1);
static void sub_0200EE24(UnkStruct_ov5_021D30A8 *param0, u16 param1, u8 param2);
static void sub_0200EE64(UnkStruct_ov5_021D30A8 *param0, Pokemon *param1);
static void sub_0200EC9C(SysTask *param0, void *param1);
static void sub_0200EF7C(UnkStruct_0200ED50 *param0, u8 param1, u16 param2);
static void sub_0200F12C(UnkStruct_0200ED50 *param0);

static const SpriteTemplate Unk_020E5040 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x15CD5, 0x15CD5, 0x15CD5, 0x15CD5, 0x0, 0x0 },
    0x0,
    0x0
};

void Window_SetFrame(BGL *param0, u8 param1, u16 param2, u8 param3, u32 param4)
{
    if (param3 == 0) {
        sub_02006E3C(38, 0, param0, param1, param2, 0, 0, param4);
    } else {
        sub_02006E3C(38, 1, param0, param1, param2, 0, 0, param4);
    }
}

u32 Window_FramePalette(void)
{
    return 24;
}

void sub_0200DAA4(BGL *param0, u8 param1, u16 param2, u8 param3, u8 param4, u32 param5)
{
    u32 v0;

    if (param4 == 0) {
        v0 = 0;
    } else {
        v0 = 1;
    }

    sub_02006E3C(38, v0, param0, param1, param2, 0, 0, param5);

    if (param4 == 2) {
        v0 = 45;
    } else {
        v0 = 24;
    }

    if (param1 < 4) {
        sub_02006E84(38, v0, 0, param3 * 0x20, 0x20, param5);
    } else {
        sub_02006E84(38, v0, 4, param3 * 0x20, 0x20, param5);
    }
}

static void sub_0200DB10(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u16 param7)
{
    sub_02019CB8(param0, param1, param7, param2 - 1, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 1, param2, param3 - 1, param4, 1, param6);
    sub_02019CB8(param0, param1, param7 + 2, param2 + param4, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 3, param2 - 1, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 5, param2 + param4, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 6, param2 - 1, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 7, param2, param3 + param5, param4, 1, param6);
    sub_02019CB8(param0, param1, param7 + 8, param2 + param4, param3 + param5, 1, 1, param6);
}

void Window_Show(Window *param0, u8 param1, u16 param2, u8 param3)
{
    u8 v0 = sub_0201C290(param0);

    sub_0200DB10(param0->unk_00, v0, sub_0201C29C(param0), sub_0201C2A0(param0), sub_0201C294(param0), sub_0201C298(param0), param3, param2);

    if (param1 == 0) {
        sub_0201A954(param0);
    }
}

void Window_Clear(Window *param0, u8 param1)
{
    u8 v0 = sub_0201C290(param0);

    sub_02019CB8(param0->unk_00, v0, 0, sub_0201C29C(param0) - 1, sub_0201C2A0(param0) - 1, sub_0201C294(param0) + 2, sub_0201C298(param0) + 2, 0);

    if (param1 == 0) {
        sub_0201ACF4(param0);
    }
}

u32 sub_0200DD04(u32 param0)
{
    return 2 + param0;
}

u32 sub_0200DD08(u32 param0)
{
    return 25 + param0;
}

void sub_0200DD0C(BGL *param0, u8 param1, u16 param2, u8 param3, u8 param4, u32 param5)
{
    sub_02006E3C(38, sub_0200DD04(param4), param0, param1, param2, 0, 0, param5);

    if (param1 < 4) {
        sub_02006E84(38, sub_0200DD08(param4), 0, param3 * 0x20, 0x20, param5);
    } else {
        sub_02006E84(38, sub_0200DD08(param4), 4, param3 * 0x20, 0x20, param5);
    }
}

static void sub_0200DD7C(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u16 param7)
{
    sub_02019CB8(param0, param1, param7, param2 - 2, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 1, param2 - 1, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 2, param2, param3 - 1, param4, 1, param6);
    sub_02019CB8(param0, param1, param7 + 3, param2 + param4, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 4, param2 + param4 + 1, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 5, param2 + param4 + 2, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 6, param2 - 2, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 7, param2 - 1, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 9, param2 + param4, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 10, param2 + param4 + 1, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 11, param2 + param4 + 2, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 12, param2 - 2, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 13, param2 - 1, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 14, param2, param3 + param5, param4, 1, param6);
    sub_02019CB8(param0, param1, param7 + 15, param2 + param4, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 16, param2 + param4 + 1, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 17, param2 + param4 + 2, param3 + param5, 1, 1, param6);
}

void sub_0200E010(Window *param0, u32 param1, u32 param2)
{
    sub_0200DD7C(param0->unk_00, sub_0201C290(param0), sub_0201C29C(param0), sub_0201C2A0(param0), sub_0201C294(param0), sub_0201C298(param0), param2, param1);
}

void sub_0200E060(Window *param0, u8 param1, u16 param2, u8 param3)
{
    sub_0200E010(param0, param2, param3);

    if (param1 == 0) {
        sub_0201A954(param0);
    }

    sub_0200E130(param0, param2);
}

void sub_0200E084(Window *param0, u8 param1)
{
    u8 v0 = sub_0201C290(param0);

    sub_02019CB8(param0->unk_00, v0, 0, sub_0201C29C(param0) - 2, sub_0201C2A0(param0) - 1, sub_0201C294(param0) + 5, sub_0201C298(param0) + 2, 0);

    if (param1 == 0) {
        sub_0201ACF4(param0);
    }
}

static void sub_0200E0EC(void *param0, u16 param1, u16 param2, u16 param3, u16 param4, void *param5, u16 param6, u16 param7, u16 param8, u16 param9, u16 param10, u16 param11)
{
    UnkStruct_0201AE08 v0;
    UnkStruct_0201AE08 v1;

    v0.unk_00 = (u8 *)param0;
    v0.unk_04 = param3;
    v0.unk_06 = param4;

    v1.unk_00 = (u8 *)param5;
    v1.unk_04 = param6;
    v1.unk_06 = param7;

    sub_0201A1E4(&v0, &v1, param1, param2, param8, param9, param10, param11, 0);
}

static void sub_0200E130(Window *param0, u16 param1)
{
    u32 v0;
    u8 *v1;
    u8 *v2;
    u8 *v3;
    void *v4;
    u8 v5;
    u8 v6;

    v0 = sub_02018364(param0->unk_00);
    v5 = sub_0201C290(param0);
    v1 = Heap_AllocFromHeap(v0, (0x20 * 4 * 3));
    v2 = sub_02019F28(v5);

    {
        NNSG2dCharacterData *v7;

        v4 = sub_02006F50(38, 22, 0, &v7, v0);
        v3 = (u8 *)v7->pRawData;
    }

    for (v6 = 0; v6 < 3; v6++) {
        memcpy(&v1[v6 * 0x20 * 4 + 0x20 * 0], &v2[(param1 + 10) * 0x20], 0x20);
        memcpy(&v1[v6 * 0x20 * 4 + 0x20 * 1], &v2[(param1 + 11) * 0x20], 0x20);
        memcpy(&v1[v6 * 0x20 * 4 + 0x20 * 2], &v2[(param1 + 10) * 0x20], 0x20);
        memcpy(&v1[v6 * 0x20 * 4 + 0x20 * 3], &v2[(param1 + 11) * 0x20], 0x20);
    }

    sub_0200E0EC(v3, 4, 0, 12, 16 * 3, v1, 12, 16 * 3, 1, 0, 12, 16 * 3);
    sub_0201958C(param0->unk_00, v5, v1, (0x20 * 4 * 3), param1 + 18);
    TextPrinter_SetScrollArrowBaseTile(param1);
    Heap_FreeToHeap(v4);
    Heap_FreeToHeap(v1);
}

void sub_0200E218(BGL *param0, u8 param1, u16 param2, u8 param3, u8 param4, u32 param5)
{
    void *v0;
    NNSG2dCharacterData *v1;
    u8 *v2;
    u32 v3;
    u8 v4, v5;

    v0 = sub_02006F50(38, sub_0200DD04(param4), 0, &v1, param5);
    v2 = Heap_AllocFromHeap(param5, 0x20 * 18);

    memcpy(v2, v1->pRawData, 0x20 * 18);

    for (v3 = 0; v3 < 0x20 * 18; v3++) {
        v4 = v2[v3] >> 4;
        v5 = v2[v3] & 0xf;

        if (v4 == 0) {
            v4 = param3;
        }

        if (v5 == 0) {
            v5 = param3;
        }

        v2[v3] = (v4 << 4) | v5;
    }

    sub_0201958C(param0, param1, v2, 0x20 * 18, param2);
    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v2);
}

void sub_0200E2A4(BGL *param0, u8 param1, u16 param2, u8 param3, u8 param4, u16 param5, u32 param6)
{
    sub_02006E3C(
        36, 0, param0, param1, param2, (18 + 12) * 0x20, 0, param6);

    {
        NNSG2dPaletteData *v0;
        void *v1;
        u16 *v2;

        v1 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__FIELD_BOARD, 1, param6);
        NNS_G2dGetUnpackedPaletteData(v1, &v0);
        v2 = (u16 *)v0->pRawData;

        sub_0201972C(param1, (void *)&v2[param4 * 16], 0x20, param3 * 0x20);
        Heap_FreeToHeapExplicit(param6, v1);
    }

    if ((param4 == 0) || (param4 == 1)) {
        sub_0200E31C(param0, param1, param2 + (18 + 12), param4, param5, param6);
    }
}

static void sub_0200E31C(BGL *param0, u8 param1, u16 param2, u8 param3, u16 param4, u32 param5)
{
    if (param3 == 0) {
        param4 += 33;
    } else {
        param4 += 2;
    }

    sub_02006E3C(36, param4, param0, param1, param2, 24 * 0x20, 0, param5);
}

static void sub_0200E354(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u16 param7)
{
    sub_02019CB8(param0, param1, param7, param2 - 9, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 1, param2 - 8, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 2, param2 - 7, param3 - 1, param4 + 7, 1, param6);
    sub_02019CB8(param0, param1, param7 + 3, param2 + param4, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 4, param2 + param4 + 1, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 5, param2 + param4 + 2, param3 - 1, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 6, param2 - 9, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 7, param2 - 8, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 8, param2 - 1, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 9, param2 + param4, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 10, param2 + param4 + 1, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 11, param2 + param4 + 2, param3, 1, param5, param6);
    sub_02019CB8(param0, param1, param7 + 12, param2 - 9, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 13, param2 - 8, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 14, param2 - 7, param3 + param5, param4 + 7, 1, param6);
    sub_02019CB8(param0, param1, param7 + 15, param2 + param4, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 16, param2 + param4 + 1, param3 + param5, 1, 1, param6);
    sub_02019CB8(param0, param1, param7 + 17, param2 + param4 + 2, param3 + param5, 1, 1, param6);
}

static void sub_0200E61C(Window *param0, u16 param1, u8 param2)
{
    u16 v0, v1;
    u16 v2, v3;
    u8 v4;

    v4 = sub_0201C290(param0);
    v2 = sub_0201C29C(param0) - 7;
    v3 = sub_0201C2A0(param0);

    for (v0 = 0; v0 < 4; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            sub_02019CB8(param0->unk_00, v4, param1 + v0 * 6 + v1, v2 + v1, v3 + v0, 1, 1, param2);
        }
    }
}

void sub_0200E69C(Window *param0, u8 param1, u16 param2, u8 param3, u8 param4)
{
    u8 v0 = sub_0201C290(param0);

    if ((param4 == 0) || (param4 == 1)) {
        sub_0200E354(param0->unk_00, v0, sub_0201C29C(param0), sub_0201C2A0(param0), sub_0201C294(param0), sub_0201C298(param0), param3, param2);
        sub_0200E61C(param0, param2 + (18 + 12), param3);
    } else {
        sub_0200DD7C(param0->unk_00, v0, sub_0201C29C(param0), sub_0201C2A0(param0), sub_0201C294(param0), sub_0201C298(param0), param3, param2);
    }

    if (param1 == 0) {
        sub_0201A954(param0);
    }

    sub_0200E130(param0, param2);
}

void sub_0200E744(Window *param0, u8 param1, u8 param2)
{
    u8 v0 = sub_0201C290(param0);

    if ((param1 == 0) || (param1 == 1)) {
        sub_02019CB8(param0->unk_00, v0, 0, sub_0201C29C(param0) - 9, sub_0201C2A0(param0) - 1, sub_0201C294(param0) + 11, sub_0201C298(param0) + 2, 0);
    } else {
        sub_02019CB8(param0->unk_00, v0, 0, sub_0201C29C(param0) - 2, sub_0201C2A0(param0) - 1, sub_0201C294(param0) + 5, sub_0201C298(param0) + 2, 0);
    }

    if (param2 == 0) {
        sub_0201ACF4(param0);
    }
}

void *sub_0200E7FC(Window *param0, u32 param1)
{
    UnkStruct_0200E924 *v0;
    u32 v1;
    u8 *v2;
    u8 *v3;
    u8 *v4;
    void *v5;
    u8 v6;
    u8 v7;

    v1 = sub_02018364(param0->unk_00);
    v6 = sub_0201C290(param0);
    v2 = sub_02019F28(v6);
    v0 = Heap_AllocFromHeap(v1, sizeof(UnkStruct_0200E924));

    memcpy(v0->unk_404, &v2[(param1 + 18) * 0x20], 0x20 * 4);

    v4 = (u8 *)Heap_AllocFromHeap(v1, 0x20 * 4);

    memcpy(&v4[0x20 * 0], &v2[(param1 + 10) * 0x20], 0x20);
    memcpy(&v4[0x20 * 1], &v2[(param1 + 11) * 0x20], 0x20);
    memcpy(&v4[0x20 * 2], &v2[(param1 + 10) * 0x20], 0x20);
    memcpy(&v4[0x20 * 3], &v2[(param1 + 11) * 0x20], 0x20);

    for (v7 = 0; v7 < 8; v7++) {
        memcpy(&v0->unk_04[0x20 * 4 * v7], v4, 0x20 * 4);
    }

    Heap_FreeToHeap(v4);

    {
        NNSG2dCharacterData *v8;

        v5 = sub_02006F50(38, 23, 0, &v8, v1);
        v3 = (u8 *)v8->pRawData;
    }

    sub_0200E0EC(v3, 0, 0, 16, 16 * 8, v0->unk_04, 16, 16 * 8, 0, 0, 16, 16 * 8);
    Heap_FreeToHeap(v5);

    v0->unk_00 = param0;
    v0->unk_484 = (u16)param1;
    v0->unk_486 = 0;
    v0->unk_487_0 = 0;
    v0->unk_488_0 = 0;

    SysTask_ExecuteOnVBlank(sub_0200EB20, v0, 0);
    sub_0200E924(v0, 1);

    return v0;
}

static void sub_0200E924(UnkStruct_0200E924 *param0, u32 param1)
{
    u8 v0, v1, v2, v3;

    v0 = sub_0201C290(param0->unk_00);
    v1 = sub_0201C29C(param0->unk_00);
    v2 = sub_0201C2A0(param0->unk_00);
    v3 = sub_0201C294(param0->unk_00);

    if (param1 == 2) {
        sub_0201958C(param0->unk_00->unk_00, v0, param0->unk_404, 0x20 * 4, param0->unk_484 + 18);
        sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 10, v1 + v3 + 1, v2 + 2, 1, 1, 16);
        sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 11, v1 + v3 + 2, v2 + 2, 1, 1, 16);
        sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 10, v1 + v3 + 1, v2 + 3, 1, 1, 16);
        sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 11, v1 + v3 + 2, v2 + 3, 1, 1, 16);
        sub_02019448(param0->unk_00->unk_00, v0);

        return;
    }

    sub_0201958C(
        param0->unk_00->unk_00, v0, &param0->unk_04[0x20 * 4 * param0->unk_487_0], 0x20 * 4, param0->unk_484 + 18);

    if (param1 == 0) {
        return;
    }

    sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 18, v1 + v3 + 1, v2 + 2, 1, 1, 16);
    sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 19, v1 + v3 + 2, v2 + 2, 1, 1, 16);
    sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 20, v1 + v3 + 1, v2 + 3, 1, 1, 16);
    sub_02019CB8(param0->unk_00->unk_00, v0, param0->unk_484 + 21, v1 + v3 + 2, v2 + 3, 1, 1, 16);
    sub_02019448(param0->unk_00->unk_00, v0);
}

static void sub_0200EB20(SysTask *param0, void *param1)
{
    UnkStruct_0200E924 *v0 = param1;

    if (v0->unk_488_0 != 0) {
        if (v0->unk_488_0 == 1) {
            sub_0200E924(v0, 2);
        }

        SysTask_Done(param0);
        return;
    }

    v0->unk_486++;

    if (v0->unk_486 == 16) {
        v0->unk_486 = 0;
        v0->unk_487_0 = (v0->unk_487_0 + 1) & 7;
        sub_0200E924(v0, 0);
    }
}

static void sub_0200EB8C(SysTask *param0, void *param1)
{
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

void DeleteWaitDial(void *param0)
{
    UnkStruct_0200E924 *v0 = param0;

    SysTask_ExecuteAfterVBlank(sub_0200EB8C, v0, 0);
    v0->unk_488_0 = 1;
}

void sub_0200EBC8(void *param0)
{
    UnkStruct_0200E924 *v0 = param0;

    SysTask_ExecuteAfterVBlank(sub_0200EB8C, v0, 0);
    v0->unk_488_0 = 2;
}

u8 *sub_0200EBF0(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5, u16 param6, u8 param7, int param8)
{
    UnkStruct_0200ED50 *v0 = sub_0200ED14(param0, param1, param2, param3, param8);

    sub_0200ED50(v0, param8);
    sub_0200ED7C(v0);
    sub_0200EDD4(v0, param2, param3);
    sub_0200EE24(&v0->unk_00, param6, param7);
    sub_0200EF7C(v0, param4, param5);
    sub_02019448(param0, param1);

    return &v0->unk_1D3;
}

u8 *sub_0200EC48(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5, Pokemon *param6, int param7)
{
    UnkStruct_0200ED50 *v0 = sub_0200ED14(param0, param1, param2, param3, param7);

    sub_0200ED50(v0, param7);
    sub_0200ED7C(v0);
    sub_0200EDD4(v0, param2, param3);
    sub_0200EE64(&v0->unk_00, param6);
    sub_0200EF7C(v0, param4, param5);
    sub_02019448(param0, param1);

    return &v0->unk_1D3;
}

static void sub_0200EC9C(SysTask *param0, void *param1)
{
    UnkStruct_0200ED50 *v0 = param1;

    switch (v0->unk_1D3) {
    case 1:
        sub_0200F12C(v0);
        sub_0200D0F4(v0->unk_1C8);
        ov5_021D375C(&v0->unk_00);
        SysTask_FinishAndFreeParam(param0);
        return;
    case 2:
        v0->unk_1D3 = 3;
        CellActor_SetAnim(v0->unk_1C8->unk_00, 1);
        break;
    case 3:
        if (CellActor_GetAnimFrame(v0->unk_1C8->unk_00) == 6) {
            v0->unk_1D3 = 0;
        }
    }

    CellActor_UpdateAnim(v0->unk_1C8->unk_00, FX32_ONE);
    CellActorCollection_Update(v0->unk_00.unk_00);
}

static UnkStruct_0200ED50 *sub_0200ED14(BGL *param0, u8 param1, u8 param2, u8 param3, u32 param4)
{
    UnkStruct_0200ED50 *v0 = SysTask_GetParam(SysTask_StartAndAllocateParam(sub_0200EC9C, sizeof(UnkStruct_0200ED50), 0, param4));

    v0->unk_1D3 = 0;
    v0->unk_1CC = param0;
    v0->unk_1D0 = param1;
    v0->unk_1D1 = param2;
    v0->unk_1D2 = param3;

    return v0;
}

static void sub_0200ED50(UnkStruct_0200ED50 *param0, u32 param1)
{
    UnkStruct_ov104_02241308 v0 = { 1, 1, 1, 1, 0, 0 };
    ov5_021D3190(&param0->unk_00, &v0, 1, param1);
}

static void sub_0200ED7C(UnkStruct_0200ED50 *param0)
{
    ov5_021D3270(&param0->unk_00, 38, 49, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 89301);
    ov5_021D3360(&param0->unk_00, 38, 47, 0, 89301);
    ov5_021D3388(&param0->unk_00, 38, 46, 0, 89301);
    ov5_021D33B0(&param0->unk_00, 38, 48, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 89301);
}

static void sub_0200EDD4(UnkStruct_0200ED50 *param0, u8 param1, u8 param2)
{
    SpriteTemplate v0 = Unk_020E5040;

    v0.x = (param1 + 5) * 8;
    v0.y = (param2 + 5) * 8;

    param0->unk_1C8 = ov5_021D3584(&param0->unk_00, &v0);

    CellActorCollection_Update(param0->unk_00.unk_00);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_0200EE24(UnkStruct_ov5_021D30A8 *param0, u16 param1, u8 param2)
{
    void *v0;
    ArchivedSprite v1;

    v0 = sub_0200762C(param0->unk_1C6);

    BuildArchivedPokemonSprite(&v1, param1, param2, 2, 0, NULL, NULL);
    sub_0200EE98(param0, &v1);
    sub_02007B6C(v0);
}

static void sub_0200EE64(UnkStruct_ov5_021D30A8 *param0, Pokemon *param1)
{
    void *v0;
    ArchivedSprite v1;

    v0 = sub_0200762C(param0->unk_1C6);

    Pokemon_BuildArchivedSprite(&v1, param1, 2);
    sub_0200EE98(param0, &v1);
    sub_02007B6C(v0);
}

static void sub_0200EE98(UnkStruct_ov5_021D30A8 *param0, ArchivedSprite *param1)
{
    u8 *v0;
    u32 v1;
    SpriteResource *v2;
    NNSG2dImageProxy *v3;
    SpriteResource *v4;
    const NNSG2dImagePaletteProxy *v5;

    v0 = Heap_AllocFromHeap(param0->unk_1C6, ((32 * 10 * 10) * 2));

    {
        UnkStruct_02013610 v6 = { 0, 0, 10, 10 };
        sub_020135F0(param1->archive, param1->character, param0->unk_1C6, &v6, &v0[0]);
    }
    {
        UnkStruct_02013610 v7 = { 10, 0, 10, 10 };
        sub_020135F0(param1->archive, param1->character, param0->unk_1C6, &v7, &v0[(32 * 10 * 10)]);
    }

    v2 = SpriteResourceCollection_Find(param0->unk_194[0], 89301);
    v3 = sub_0200A534(v2);
    v1 = NNS_G2dGetImageLocation(v3, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange(v0, ((32 * 10 * 10) * 2));
    GX_LoadOBJ(v0, v1, ((32 * 10 * 10) * 2));

    Heap_FreeToHeap(v0);

    v0 = sub_02013660(param1->archive, param1->palette, param0->unk_1C6);
    v4 = SpriteResourceCollection_Find(param0->unk_194[1], 89301);
    v5 = sub_0200A72C(v4, v3);
    v1 = NNS_G2dGetImagePaletteLocation(v5, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange(v0, 32);
    GX_LoadOBJPltt(v0, v1, 32);

    Heap_FreeToHeap(v0);
}

static void sub_0200EF7C(UnkStruct_0200ED50 *param0, u8 param1, u16 param2)
{
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2, param0->unk_1D1 - 1, param0->unk_1D2 - 1, 1, 1, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 1, param0->unk_1D1, param0->unk_1D2 - 1, 10, 1, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 2, param0->unk_1D1 + 10, param0->unk_1D2 - 1, 1, 1, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 4, param0->unk_1D1, param0->unk_1D2, 10, 10, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 3, param0->unk_1D1 - 1, param0->unk_1D2, 1, 10, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 5, param0->unk_1D1 + 10, param0->unk_1D2, 1, 10, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 6, param0->unk_1D1 - 1, param0->unk_1D2 + 10, 1, 1, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 7, param0->unk_1D1, param0->unk_1D2 + 10, 10, 1, param1);
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, param2 + 8, param0->unk_1D1 + 10, param0->unk_1D2 + 10, 1, 1, param1);
    sub_0201C3C0(param0->unk_1CC, param0->unk_1D0);
}

static void sub_0200F12C(UnkStruct_0200ED50 *param0)
{
    sub_02019CB8(param0->unk_1CC, param0->unk_1D0, 0, param0->unk_1D1 - 1, param0->unk_1D2 - 1, 12, 12, 0);
    sub_0201C3C0(param0->unk_1CC, param0->unk_1D0);
}
