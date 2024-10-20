#include "overlay017/ov17_022476F8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "overlay017/struct_ov17_022476F8.h"
#include "overlay017/struct_ov17_0224792C.h"
#include "overlay017/struct_ov17_02247A48.h"
#include "overlay017/struct_ov17_0225442C.h"

#include "game_options.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"

typedef struct {
    u8 *unk_00;
    CellActorData *unk_04;
    s32 unk_08;
    s32 unk_0C;
    fx32 unk_10;
    u8 unk_14;
    u16 unk_16;
} UnkStruct_ov17_022477B8;

static const SpriteTemplate Unk_ov17_022543F8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80EA, 0x80EA, 0x80EA, 0x80EA, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const UnkStruct_ov17_0225442C Unk_ov17_0225442C[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0x11, 0x0 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x3, 0x1 },
    { 0x4, 0x1 },
    { 0x5, 0x0 },
    { 0x6, 0x0 },
    { 0x7, 0x0 },
    { 0x8, 0x0 },
    { 0x9, 0x0 },
    { 0xA, 0x0 },
    { 0xB, 0x0 },
    { 0xC, 0x0 }
};

void include_ov17_022476F8(void);
static void ov17_02247840(SysTask *param0, void *param1);

void ov17_022476F8(UnkStruct_ov17_022476F8 *param0, int param1)
{
    if (param0->unk_08[param1] == NULL) {
        GF_ASSERT(param0->unk_48[param1].unk_00 == NULL);
        return;
    }

    sub_02007DC8(param0->unk_08[param1]);
    Heap_FreeToHeap(param0->unk_48[param1].unk_00);

    param0->unk_08[param1] = NULL;
    param0->unk_48[param1].unk_00 = NULL;
}

void ov17_02247734(UnkStruct_ov17_022476F8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_022476F8(param0, v0);
    }
}

void ov17_0224774C(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 67, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33002);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 68, 1, 33002);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 69, 1, 33002);
}

void ov17_02247798(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33002);
    SpriteGfxHandler_UnloadCellObjById(param0, 33002);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33002);
}

void ov17_022477B8(UnkStruct_ov17_02247A48 *param0, int param1, int param2, fx32 param3, int param4)
{
    UnkStruct_ov17_022477B8 *v0;

    v0 = Heap_AllocFromHeap(22, sizeof(UnkStruct_ov17_022477B8));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_022477B8));

    v0->unk_04 = SpriteActor_LoadResources(param0->unk_0C.unk_1C, param0->unk_0C.unk_20, &Unk_ov17_022543F8);
    sub_0200D500(v0->unk_04, param1, param2, (256 * FX32_ONE));

    if (param4 == 1) {
        sub_0200D364(v0->unk_04, 1);
    }

    SpriteActor_UpdateObject(v0->unk_04->unk_00);

    v0->unk_08 = param1 << 8;
    v0->unk_0C = param2 << 8;
    v0->unk_00 = &param0->unk_4F7;
    param0->unk_4F7++;

    SysTask_Start(ov17_02247840, v0, 50000);
    Sound_PlayEffect(1761);
}

static void ov17_02247840(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022477B8 *v0 = param1;
    s32 v1;

    switch (v0->unk_14) {
    case 0:
        v1 = sub_0201D2B8(v0->unk_10) * 8 / FX32_ONE;
        v0->unk_10 += (6 << FX32_SHIFT);
        v0->unk_0C -= 0x100;

        sub_0200D500(v0->unk_04, v0->unk_08 / 0x100 + v1, v0->unk_0C / 0x100, (256 * FX32_ONE));

        v0->unk_16++;

        if ((v0->unk_16 >= 60) || (v0->unk_0C <= (-32 * 0x100))) {
            v0->unk_14++;
        }
        break;
    default:
        sub_0200D0F4(v0->unk_04);
        (*(v0->unk_00))--;
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        return;
    }
}

void ov17_022478D0(UnkStruct_ov17_02247A48 *param0, int param1)
{
    ArchivedSprite v0;

    GF_ASSERT(param0->unk_0C.unk_18 == NULL);

    sub_0207697C(&v0, param0->unk_00->unk_00.unk_10[param1].unk_0A);
    param0->unk_0C.unk_18 = sub_02007C34(param0->unk_0C.unk_04, &v0, 320, 32, (-0x200 - 0x40), 3, NULL, NULL);
}

void ov17_02247918(UnkStruct_ov17_02247A48 *param0)
{
    if (param0->unk_0C.unk_18 == NULL) {
        return;
    }

    sub_02007DC8(param0->unk_0C.unk_18);
    param0->unk_0C.unk_18 = NULL;
}

static void ov17_0224792C(UnkStruct_ov17_02247A48 *param0, int param1, const UnkStruct_ov17_0224792C *param2)
{
    if (param1 != 0) {
        GF_ASSERT(param2 != NULL);
    }

    switch (param1) {
    case 0:
        break;
    case 1:
        StringTemplate_SetStrbuf(param0->unk_0C.unk_3C, 0, param0->unk_00->unk_00.unk_D8[param2->unk_00], param0->unk_00->unk_00.unk_F8[param2->unk_00], 1, GAME_LANGUAGE);
        StringTemplate_SetNickname(param0->unk_0C.unk_3C, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void ov17_02247990(UnkStruct_ov17_02247A48 *param0, MessageLoader *param1, u32 param2, int param3, const UnkStruct_ov17_0224792C *param4)
{
    Strbuf *v0;
    int v1;

    if (param0->unk_00->unk_155 == 0) {
        v1 = Options_TextFrameDelay(param0->unk_00->unk_196C);
    } else {
        v1 = TEXT_SPEED_FAST;
    }

    v0 = MessageLoader_GetNewStrbuf(param1, param2);
    ov17_0224792C(param0, param3, param4);

    StringTemplate_Format(param0->unk_0C.unk_3C, param0->unk_0C.unk_40, v0);
    BGL_FillWindow(&param0->unk_0C.unk_28[0], 0xff);

    param0->unk_0C.unk_C4 = Text_AddPrinterWithParams(&param0->unk_0C.unk_28[0], FONT_MESSAGE, param0->unk_0C.unk_40, 0, 0, v1, NULL);
    Strbuf_Free(v0);
}

void ov17_02247A08(UnkStruct_ov17_02247A48 *param0, u32 param1, const UnkStruct_ov17_0224792C *param2)
{
    u32 v0, v1;

    GF_ASSERT(param1 < NELEMS(Unk_ov17_0225442C));

    v0 = Unk_ov17_0225442C[param1].unk_00;
    v1 = Unk_ov17_0225442C[param1].unk_02;

    ov17_02247990(param0, param0->unk_0C.unk_38, v0, v1, param2);
}

int ov17_02247A3C(UnkStruct_ov17_02247A48 *param0)
{
    return Text_IsPrinterActive(param0->unk_0C.unk_C4);
}

void include_ov17_022476F8(void)
{
    const u16 dummy[5] = {
        9, 10, 11, 12, 13
    };
}
