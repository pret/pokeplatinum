#include "battle/ov16_0226DE44.h"

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
#include "unk_0201D15C.h"

typedef struct UnkStruct_ov16_0226DEEC_t {
    CellActorData *unk_00;
    SysTask *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    fx32 unk_14;
    s16 unk_18;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
} UnkStruct_ov16_0226DEEC;

void ov16_0226DE44(SpriteRenderer *param0, SpriteGfxHandler *param1, u32 param2, PaletteData *param3, u32 param4, u32 param5, u32 param6, u32 param7);
void ov16_0226DEC4(SpriteGfxHandler *param0, u32 param1, u32 param2, u32 param3, u32 param4);
UnkStruct_ov16_0226DEEC *ov16_0226DEEC(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void ov16_0226DF68(UnkStruct_ov16_0226DEEC *param0);
void ov16_0226DFB0(UnkStruct_ov16_0226DEEC *param0, int param1, int param2);
void ov16_0226DFBC(UnkStruct_ov16_0226DEEC *param0);
static void ov16_0226DFD8(SysTask *param0, void *param1);
static void ov16_0226E13C(UnkStruct_ov16_0226DEEC *param0);

static const SpriteTemplate Unk_ov16_02270AD8 = {
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

void ov16_0226DE44(SpriteRenderer *param0, SpriteGfxHandler *param1, u32 param2, PaletteData *param3, u32 param4, u32 param5, u32 param6, u32 param7)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_GRAPHIC__EV_POKESELECT, param2);

    SpriteRenderer_LoadPaletteFromOpenNarc(param3, 3, param0, param1, v0, 11, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, param5);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, v0, 10, 0, NNS_G2D_VRAM_TYPE_2DSUB, param4);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, v0, 12, 0, param6);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, v0, 13, 0, param7);
    NARC_dtor(v0);
}

void ov16_0226DEC4(SpriteGfxHandler *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    SpriteGfxHandler_UnloadCharObjById(param0, param1);
    SpriteGfxHandler_UnloadPlttObjById(param0, param2);
    SpriteGfxHandler_UnloadCellObjById(param0, param3);
    SpriteGfxHandler_UnloadAnimObjById(param0, param4);
}

UnkStruct_ov16_0226DEEC *ov16_0226DEEC(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov16_0226DEEC *v0;
    SpriteTemplate v1;

    v1 = Unk_ov16_02270AD8;

    v1.resources[0] = param3;
    v1.resources[1] = param4;
    v1.resources[2] = param5;
    v1.resources[3] = param6;
    v1.priority = param7;
    v1.bgPriority = param8;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov16_0226DEEC));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226DEEC));

    v0->unk_00 = CellActor_LoadResources(param0, param1, &v1);
    CellActorData_DrawSprite(v0->unk_00, 0);

    v0->unk_14 = (192 << FX32_SHIFT);
    v0->unk_04 = SysTask_Start(ov16_0226DFD8, v0, 999);

    return v0;
}

void ov16_0226DF68(UnkStruct_ov16_0226DEEC *param0)
{
    CellActorData_Delete(param0->unk_00);
    SysTask_Done(param0->unk_04);
    Heap_FreeToHeap(param0);
}

void ov16_0226DF80(UnkStruct_ov16_0226DEEC *param0, int param1, int param2, fx32 param3)
{
    ov16_0226E13C(param0);

    param0->unk_08 = param1;
    param0->unk_0C = param2;
    param0->unk_14 = param3;

    sub_0200D500(param0->unk_00, param1, param2, param3);
    CellActorData_DrawSprite(param0->unk_00, 1);
}

void ov16_0226DFB0(UnkStruct_ov16_0226DEEC *param0, int param1, int param2)
{
    ov16_0226DF80(param0, param1, param2, (192 << FX32_SHIFT));
}

void ov16_0226DFBC(UnkStruct_ov16_0226DEEC *param0)
{
    CellActorData_DrawSprite(param0->unk_00, 0);
    ov16_0226E13C(param0);
}

void ov16_0226DFD0(UnkStruct_ov16_0226DEEC *param0, int param1)
{
    param0->unk_18 = param1;
}

BOOL ov16_0226DFD4(UnkStruct_ov16_0226DEEC *param0)
{
    return param0->unk_1B;
}

static void ov16_0226DFD8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0226DEEC *v0 = param1;

    if (v0->unk_1B == 1) {
        v0->unk_1B = 0;
    }

    if (v0->unk_18 > 0) {
        v0->unk_18--;

        if (v0->unk_18 == 0) {
            v0->unk_1A = 1;
        }
    }

    if (CellActorData_GetDrawFlag(v0->unk_00) == 0) {
        return;
    }

    if (v0->unk_1C == 0) {
        int v1;

        v0->unk_10 += (10 * 100);

        if (v0->unk_10 >= 180 * 100) {
            v0->unk_10 -= 180 * 100;

            if (v0->unk_1A == 1) {
                v0->unk_1C = 1;
                v0->unk_1A = 0;
            }
        }

        if (v0->unk_1C == 0) {
            v1 = FX_Mul(sub_0201D15C(v0->unk_10 / 100), 14 << FX32_SHIFT) / FX32_ONE;
            sub_0200D500(v0->unk_00, v0->unk_08, v0->unk_0C - v1, v0->unk_14);
        }
    }

    if (v0->unk_1C == 1) {
        switch (v0->unk_1D) {
        case 0:
            v0->unk_1E++;

            if (v0->unk_1E > 3) {
                v0->unk_1E = 0;
                v0->unk_1D++;
            }
            break;
        case 1:
            sub_0200D500(v0->unk_00, v0->unk_08, v0->unk_0C + 8, v0->unk_14);
            v0->unk_1B = 1;
            v0->unk_1D++;
            break;
        case 2:
            v0->unk_1E++;

            if (v0->unk_1E > 2) {
                sub_0200D500(v0->unk_00, v0->unk_08, v0->unk_0C + 2, v0->unk_14);
                v0->unk_1E = 0;
                v0->unk_1D++;
            }
            break;
        case 3:
            v0->unk_1E++;

            if (v0->unk_1E > 2) {
                ov16_0226DFBC(v0);
                v0->unk_1E = 0;
                v0->unk_1D++;
            }
            break;
        default:
            break;
        }
    }

    CellActorData_UpdateObject(v0->unk_00);
}

static void ov16_0226E13C(UnkStruct_ov16_0226DEEC *param0)
{
    param0->unk_10 = 0;
    param0->unk_1C = 0;
    param0->unk_1D = 0;
    param0->unk_1E = 0;
}
