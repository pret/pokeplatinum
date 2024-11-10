#include "battle/ov16_0226DB7C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "sprite_renderer.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct UnkStruct_ov16_0226DC24_t {
    CellActorData *unk_00[5];
    SysTask *unk_14;
} UnkStruct_ov16_0226DC24;

static void ov16_0226DE10(SysTask *param0, void *param1);
void ov16_0226DB7C(SpriteRenderer *param0, SpriteGfxHandler *param1, PaletteData *param2, int param3, u32 param4, u32 param5, u32 param6, u32 param7);
void ov16_0226DBFC(SpriteGfxHandler *param0, u32 param1, u32 param2, u32 param3, u32 param4);
UnkStruct_ov16_0226DC24 *ov16_0226DC24(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void ov16_0226DCA8(UnkStruct_ov16_0226DC24 *param0);
void ov16_0226DD7C(UnkStruct_ov16_0226DC24 *param0, int param1, int param2, int param3, int param4);
void ov16_0226DDE8(UnkStruct_ov16_0226DC24 *param0);

static const SpriteTemplate Unk_ov16_02270AA4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x0, 0x0, 0x0, 0x0, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

void ov16_0226DB7C(SpriteRenderer *param0, SpriteGfxHandler *param1, PaletteData *param2, int param3, u32 param4, u32 param5, u32 param6, u32 param7)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param3);

    SpriteRenderer_LoadPaletteFromOpenNarc(param2, 3, param0, param1, v0, 80, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, param5);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, v0, 250, 1, NNS_G2D_VRAM_TYPE_2DSUB, param4);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, v0, 251, 1, param6);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, v0, 252, 1, param7);
    NARC_dtor(v0);
}

void ov16_0226DBFC(SpriteGfxHandler *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    SpriteGfxHandler_UnloadCharObjById(param0, param1);
    SpriteGfxHandler_UnloadPlttObjById(param0, param2);
    SpriteGfxHandler_UnloadCellObjById(param0, param3);
    SpriteGfxHandler_UnloadAnimObjById(param0, param4);
}

UnkStruct_ov16_0226DC24 *ov16_0226DC24(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov16_0226DC24 *v0;
    SpriteTemplate v1;
    int v2;

    v1 = Unk_ov16_02270AA4;
    v1.resources[0] = param3;
    v1.resources[1] = param4;
    v1.resources[2] = param5;
    v1.resources[3] = param6;
    v1.priority = param7;
    v1.bgPriority = param8;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov16_0226DC24));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226DC24));

    for (v2 = 0; v2 < 5; v2++) {
        v0->unk_00[v2] = CellActor_LoadResources(param0, param1, &v1);
        CellActorData_DrawSprite(v0->unk_00[v2], 0);
    }

    v0->unk_14 = SysTask_Start(ov16_0226DE10, v0, 40000);
    return v0;
}

void ov16_0226DCA8(UnkStruct_ov16_0226DC24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        CellActorData_Delete(param0->unk_00[v0]);
    }

    SysTask_Done(param0->unk_14);
    Heap_FreeToHeap(param0);
}

void ov16_0226DCCC(UnkStruct_ov16_0226DC24 *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, fx32 param9)
{
    int v0;

    CellActorData_SetPositionWithOffsetXY(param0->unk_00[0], param1, param2, param9);
    CellActorData_SetPositionWithOffsetXY(param0->unk_00[1], param3, param4, param9);
    CellActorData_SetPositionWithOffsetXY(param0->unk_00[2], param5, param6, param9);
    CellActorData_SetPositionWithOffsetXY(param0->unk_00[3], param7, param8, param9);

    CellActorData_SetAnim(param0->unk_00[0], 0);
    CellActorData_SetAnim(param0->unk_00[1], 1);
    CellActorData_SetAnim(param0->unk_00[2], 2);
    CellActorData_SetAnim(param0->unk_00[3], 3);

    for (v0 = 0; v0 < 4; v0++) {
        CellActorData_DrawSprite(param0->unk_00[v0], 1);
    }
}

void ov16_0226DD54(UnkStruct_ov16_0226DC24 *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    ov16_0226DCCC(param0, param1, param2, param3, param4, param5, param6, param7, param8, (192 << FX32_SHIFT));
}

void ov16_0226DD7C(UnkStruct_ov16_0226DC24 *param0, int param1, int param2, int param3, int param4)
{
    ov16_0226DD54(param0, param1, param3, param2, param3, param1, param4, param2, param4);
}

void ov16_0226DD9C(UnkStruct_ov16_0226DC24 *param0, int param1, int param2, int param3, int param4, fx32 param5)
{
    ov16_0226DCCC(param0, param1, param3, param2, param3, param1, param4, param2, param4, param5);
}

void ov16_0226DDC0(UnkStruct_ov16_0226DC24 *param0, int param1, int param2, int param3, fx32 param4)
{
    CellActorData_SetPositionWithOffsetXY(param0->unk_00[4], param1, param2, param4);
    CellActorData_SetAnim(param0->unk_00[4], param3);
    CellActorData_DrawSprite(param0->unk_00[4], 1);
}

void ov16_0226DDE8(UnkStruct_ov16_0226DC24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        CellActorData_DrawSprite(param0->unk_00[v0], 0);
    }
}

void ov16_0226DE04(UnkStruct_ov16_0226DC24 *param0)
{
    CellActorData_DrawSprite(param0->unk_00[4], 0);
}

static void ov16_0226DE10(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0226DC24 *v0 = param1;
    int v1;

    if (CellActorData_GetDrawFlag(v0->unk_00[0]) == 0) {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        CellActorData_UpdateObject(v0->unk_00[v1]);
    }

    if (CellActorData_GetDrawFlag(v0->unk_00[4]) == 1) {
        CellActorData_UpdateObject(v0->unk_00[4]);
    }
}
