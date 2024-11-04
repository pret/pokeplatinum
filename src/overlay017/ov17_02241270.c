#include "overlay017/ov17_02241270.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "narc.h"
#include "sprite_renderer.h"

static const SpriteTemplate Unk_ov17_0225364C = {
    0x28,
    0x60,
    0x0,
    0x0,
    0x3E8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80FB, 0x80EF, 0x80F6, 0x80F6, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_02253618 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x3E9,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80FA, 0x80EF, 0x80F5, 0x80F5, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_02253680 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x3E9,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80FA, 0x80EF, 0x80F5, 0x80F5, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

void ov17_02241270(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 42, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33019);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 43, 1, 33014);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 44, 1, 33014);
}

CellActorData *ov17_022412C0(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2)
{
    CellActorData *v0;

    v0 = CellActor_LoadResources(param0, param1, &Unk_ov17_0225364C);
    sub_0200D500(v0, (5 * 8) + (11 * 8) * param2, (0xc * 8) + 0 * param2, ((192 + 80) << FX32_SHIFT));
    CellActor_UpdateObject(v0->cellActor);

    return v0;
}

void ov17_022412F0(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33019);
    SpriteGfxHandler_UnloadCellObjById(param0, 33014);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33014);
}

void ov17_02241314(CellActorData *param0)
{
    CellActorData_Delete(param0);
}

void ov17_0224131C(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 45, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33018);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 46, 1, 33013);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 47, 1, 33013);
}

CellActorData *ov17_0224136C(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, int param4)
{
    CellActorData *v0;

    if (param4 >= 0) {
        v0 = CellActor_LoadResources(param0, param1, &Unk_ov17_02253618);
    } else {
        v0 = CellActor_LoadResources(param0, param1, &Unk_ov17_02253680);
    }

    sub_0200D500(v0, param2, param3, ((192 + 80) << FX32_SHIFT));
    CellActor_UpdateObject(v0->cellActor);

    return v0;
}

void ov17_022413AC(CellActorData *param0)
{
    CellActorData_Delete(param0);
}

void ov17_022413B4(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33018);
    SpriteGfxHandler_UnloadCellObjById(param0, 33013);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33013);
}
