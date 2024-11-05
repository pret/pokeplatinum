#include "applications/pokemon_summary_screen/sprite.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/subscreen.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "gx_layers.h"
#include "move_table.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "ribbon.h"
#include "unk_0200C6E4.h"
#include "unk_0201DBEC.h"
#include "unk_0207C908.h"

static void sub_0208F194(PokemonSummaryScreen *param0, u8 param1, u8 param2, u8 param3);
static void sub_0208EF0C(PokemonSummaryScreen *param0);
static void sub_0208FC30(CellActor *param0, u32 param1, u32 param2, const s16 *param3);

static const UnkStruct_ov7_0224F358 Unk_020F41A8[] = {
    { 0x1, 0x80, 0x18, 0x0, 0x0, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0x90, 0x18, 0x0, 0x1, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0xA0, 0x18, 0x0, 0x2, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0xB0, 0x18, 0x0, 0x3, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0xC0, 0x18, 0x0, 0x4, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0xD0, 0x18, 0x0, 0x5, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0xE0, 0x18, 0x0, 0x6, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0xF0, 0x18, 0x0, 0x7, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0xC, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x2, 0xC2, 0x30, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x2, 0xC2, 0x30, 0x0, 0x1, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xB, 0x18, 0x30, 0x0, 0x0, 0x0, 0x4, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xC, 0x50, 0x34, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xE, 0x0, 0x18, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xE, 0x0, 0x18, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x12, 0x30, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x13, 0x38, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x14, 0x40, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x15, 0x48, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x16, 0x50, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x17, 0x58, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0x98, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xA0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xA8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xB0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xB8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xC0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xC8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xD0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xD8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xE0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xE8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xD, 0xF0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x10, 0xD0, 0x30, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x10, 0xE0, 0x58, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x10, 0xD8, 0x78, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x10, 0x90, 0x78, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x10, 0x88, 0x58, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x19, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x19, 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x19, 0x0, 0x0, 0x0, 0x3, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x19, 0x0, 0x0, 0x0, 0x2, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x19, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x18, 0x62, 0x48, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x18, 0x62, 0x84, 0x0, 0x1, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1A, 0x84, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1B, 0xA4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1C, 0xC4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1D, 0xE4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1E, 0x84, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1F, 0xA4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x20, 0xC4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x21, 0xE4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x22, 0x84, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x23, 0xA4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x24, 0xC4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x25, 0xE4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x26, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x27, 0xB4, 0x20, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x27, 0xB4, 0x78, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x28, 0x8, 0x84, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x2A, 0x4C, 0x30, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 }
};

static const u8 Unk_020F411C[] = {
    0x2,
    0x0,
    0x2,
    0x2,
    0x0,
    0x1,
    0x1,
    0x1,
    0x1,
    0x2,
    0x2,
    0x2,
    0x2,
    0x3,
    0x3,
    0x2,
    0x0
};

void sub_0208EA44(PokemonSummaryScreen *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    VRAMTransferManager_New(32, 19);

    param0->renderer = sub_0200C6E4(19);
    param0->gfxHandler = sub_0200C704(param0->renderer);

    {
        UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        UnkStruct_ov104_022412F4 v1 = {
            77,
            1024,
            1024,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->renderer, &v0, &v1, 32);
        sub_0200C7C0(param0->renderer, param0->gfxHandler, 77);
    }

    {
        UnkStruct_ov7_0224F2EC v2 = {
            "data/pst_chr.resdat",
            "data/pst_pal.resdat",
            "data/pst_cell.resdat",
            "data/pst_canm.resdat",
            NULL,
            NULL,
            "data/pst_h.cldat"
        };

        sub_0200C8F0(param0->renderer, param0->gfxHandler, &v2);
    }
}

void sub_0208EAF4(PokemonSummaryScreen *summaryScreen)
{
    sub_0200C8B0(summaryScreen->renderer, summaryScreen->gfxHandler);
    sub_0200C8D4(summaryScreen->renderer);
}

void sub_0208EB14(PokemonSummaryScreen *summaryScreen)
{
    CellActor_UpdateAnim(summaryScreen->unk_41C[21], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->unk_41C[22], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->unk_41C[41], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->unk_41C[68], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->unk_41C[69], FX32_ONE);
}

void sub_0208EB64(PokemonSummaryScreen *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 77; v0++) {
        param0->unk_41C[v0] = sub_0200CA08(param0->renderer, param0->gfxHandler, &Unk_020F41A8[v0]);
    }

    sub_0208EF0C(param0);

    CellActor_SetDrawFlag(param0->unk_41C[9], 0);
    CellActor_SetDrawFlag(param0->unk_41C[10], 0);
    CellActor_SetDrawFlag(param0->unk_41C[41], 0);

    CellActor_SetDrawFlag(param0->unk_41C[42], 0);
    CellActor_SetDrawFlag(param0->unk_41C[43], 0);
    CellActor_SetDrawFlag(param0->unk_41C[44], 0);
    CellActor_SetDrawFlag(param0->unk_41C[45], 0);
    CellActor_SetDrawFlag(param0->unk_41C[46], 0);

    CellActor_SetDrawFlag(param0->unk_41C[47], 0);

    CellActor_SetDrawFlag(param0->unk_41C[48], 0);
    CellActor_SetDrawFlag(param0->unk_41C[49], 0);
    CellActor_SetDrawFlag(param0->unk_41C[50], 0);
    CellActor_SetDrawFlag(param0->unk_41C[51], 0);
    CellActor_SetDrawFlag(param0->unk_41C[52], 0);

    CellActor_SetDrawFlag(param0->unk_41C[71], 0);
    CellActor_SetDrawFlag(param0->unk_41C[72], 0);
    CellActor_SetDrawFlag(param0->unk_41C[73], 0);
    CellActor_SetDrawFlag(param0->unk_41C[74], 0);
    CellActor_SetDrawFlag(param0->unk_41C[75], 0);

    CellActor_SetDrawFlag(param0->unk_41C[76], 0);
}

static u8 sub_0208ECB8(PokemonSummaryScreen *param0)
{
    u8 v0, v1 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (PokemonSummaryScreen_PageIsVisble(param0, v0) != 0) {
            v1++;
        }
    }

    return (23 * 8 + 4) - (24 + (v1 - 1) * 16) / 2;
}

void sub_0208ECF4(PokemonSummaryScreen *param0)
{
    CellActor **v0;
    s16 v1, v2;
    s16 v3;
    u16 v4;
    u8 v5;
    u8 v6 = 0;

    v3 = sub_0208ECB8(param0);
    v0 = &param0->unk_41C[0];
    v6 = 0;

    for (v5 = 0; v5 < 8; v5++) {
        if (PokemonSummaryScreen_PageIsVisble(param0, v5) == 0) {
            CellActor_SetDrawFlag(v0[v5], 0);
            continue;
        }

        v4 = CellActor_GetActiveAnim(v0[v5]);

        if (param0->page == v5) {
            if (v4 < 8) {
                CellActor_SetAnim(v0[v5], v4 + 8);
            }
        } else {
            if (v4 >= 8) {
                CellActor_SetAnim(v0[v5], v4 - 8);
            }
        }

        sub_0200D50C(v0[v5], &v1, &v2);

        if (param0->page >= v5) {
            v1 = v3 + v6 * 16;
        } else {
            v1 = v3 + 24 + (v6 - 1) * 16;
        }

        SpriteActor_SetPositionXY(param0->unk_41C[v5], v1, v2);
        CellActor_SetDrawFlag(v0[v5], 1);

        v6++;
    }
}

void sub_0208EDC4(PokemonSummaryScreen *param0)
{
    u8 v0;

    if (PokemonSummaryScreen_CountVisiblePages(param0) <= 1) {
        PokemonSummaryScreen_UpdatePageArrows(param0, FALSE);
    }

    v0 = sub_0208ECB8(param0);

    SpriteActor_SetPositionXY(param0->unk_41C[21], v0 + -12, 24);
    SpriteActor_SetPositionXY(param0->unk_41C[22], (23 * 8 + 4) + ((23 * 8 + 4) - v0) + -4, 24);
}

void PokemonSummaryScreen_UpdatePageArrows(PokemonSummaryScreen *summaryScreen, BOOL showArrows)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        showArrows = FALSE;
    }

    CellActor_SetDrawFlag(summaryScreen->unk_41C[21], showArrows);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[22], showArrows);
}

void sub_0208EE3C(PokemonSummaryScreen *param0)
{
    u32 v0;

    if (param0->monData.caughtBall == 0) {
        v0 = 21;
    } else {
        v0 = 21 + param0->monData.caughtBall - 1;
    }

    sub_0200D948(param0->renderer, param0->gfxHandler, 39, v0, 0, 0);
    sub_0200D97C(param0->renderer, param0->gfxHandler, 39, 37 + Unk_020F411C[param0->monData.caughtBall], 0, 6);
}

void sub_0208EE9C(PokemonSummaryScreen *param0)
{
    if (param0->monData.status == 7) {
        CellActor_SetDrawFlag(param0->unk_41C[20], 0);
        CellActor_SetDrawFlag(param0->unk_41C[76], 0);
    } else if (param0->monData.status != 0) {
        CellActor_SetDrawFlag(param0->unk_41C[76], 0);
        CellActor_SetDrawFlag(param0->unk_41C[20], 1);
        CellActor_SetAnim(param0->unk_41C[20], param0->monData.status);
    } else {
        CellActor_SetDrawFlag(param0->unk_41C[76], 1);
        CellActor_SetDrawFlag(param0->unk_41C[20], 0);
    }
}

static void sub_0208EF0C(PokemonSummaryScreen *param0)
{
    u16 v0;

    sub_0208F16C(param0);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->monData.moves[v0] == 0) {
            continue;
        }

        sub_0208F194(param0, 13 + v0, 5 + v0, MoveTable_LoadParam(param0->monData.moves[v0], MOVEATTRIBUTE_TYPE));
    }

    sub_0208F71C(param0);
}

void sub_0208EF58(PokemonSummaryScreen *param0)
{
    u16 v0;

    for (v0 = 11; v0 <= 19; v0++) {
        SpriteActor_DrawSprite(param0->unk_41C[v0], 0);
    }

    switch (param0->page) {
    case 0:
        SpriteActor_DrawSprite(param0->unk_41C[11], 1);

        if (param0->monData.type1 == param0->monData.type2) {
            SpriteActor_SetPositionXY(param0->unk_41C[11], 216, 80);
        } else {
            SpriteActor_SetPositionXY(param0->unk_41C[11], 199, 80);
            SpriteActor_DrawSprite(param0->unk_41C[12], 1);
            SpriteActor_SetPositionXY(
                param0->unk_41C[12], 233, 80);
        }
        break;
    case 3:
        for (v0 = 0; v0 < 4; v0++) {
            if (param0->monData.moves[v0] == 0) {
                continue;
            }

            sub_0208F194(param0, 13 + v0, 5 + v0, MoveTable_LoadParam(param0->monData.moves[v0], MOVEATTRIBUTE_TYPE));
            SpriteActor_DrawSprite(param0->unk_41C[13 + v0], 1);
            SpriteActor_SetPositionXY(param0->unk_41C[13 + v0], 151, 42 + v0 * 32);
        }

        if (param0->data->move != 0) {
            sub_0208F194(param0, 13 + 4, 5 + 4, MoveTable_LoadParam(param0->data->move, MOVEATTRIBUTE_TYPE));
            SpriteActor_DrawSprite(param0->unk_41C[13 + 4], 1);
            SpriteActor_SetPositionXY(param0->unk_41C[13 + 4], 151, 42 + 4 * 32);
        }

        SpriteActor_SetPositionXY(param0->unk_41C[11], 63, 52);
        SpriteActor_SetPositionXY(param0->unk_41C[12], 63 + 34, 52);
        SpriteActor_SetPositionXY(param0->unk_41C[18], (92 + 16), 72);
        break;
    case 5:
        for (v0 = 0; v0 < 4; v0++) {
            if (param0->monData.moves[v0] == 0) {
                continue;
            }

            sub_0208F194(param0, 13 + v0, 5 + v0, MoveTable_LoadParam(param0->monData.moves[v0], MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            SpriteActor_DrawSprite(param0->unk_41C[13 + v0], 1);
            SpriteActor_SetPositionXY(param0->unk_41C[13 + v0], 151, 42 + v0 * 32);
        }

        if (param0->data->move != 0) {
            sub_0208F194(param0, 13 + 4, 5 + 4, MoveTable_LoadParam(param0->data->move, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            SpriteActor_DrawSprite(param0->unk_41C[13 + 4], 1);
            SpriteActor_SetPositionXY(param0->unk_41C[13 + 4], 151, 42 + 4 * 32);
        }

        SpriteActor_SetPositionXY(param0->unk_41C[11], 63, 52);
        SpriteActor_SetPositionXY(param0->unk_41C[12], 63 + 34, 52);
        SpriteActor_SetPositionXY(param0->unk_41C[18], (92 + 16), 72);
        break;
    }
}

void sub_0208F16C(PokemonSummaryScreen *param0)
{
    sub_0208F194(param0, 11, 3, param0->monData.type1);
    sub_0208F194(param0, 12, 4, param0->monData.type2);
}

static void sub_0208F194(PokemonSummaryScreen *param0, u8 param1, u8 param2, u8 param3)
{
    sub_0200D948(param0->renderer, param0->gfxHandler, sub_0207C944(), sub_0207C908(param3), 1, param2);
    sub_0200D414(param0->unk_41C[param1], sub_0207C92C(param3) + 3);
}

static void sub_0208F1E4(PokemonSummaryScreen *param0, u8 *param1, s16 *param2, s16 *param3)
{
    s16 v0, v1;

    v1 = 42 + *param1 * 32;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D50C(param0->unk_41C[13 + v0], param2, param3);

        if (v1 == *param3) {
            *param1 = (u8)v0;
            break;
        }
    }
}

void sub_0208F22C(PokemonSummaryScreen *param0, u8 param1, u8 param2)
{
    s16 v0, v1, v2, v3;

    sub_0208F1E4(param0, &param1, &v0, &v1);
    sub_0208F1E4(param0, &param2, &v2, &v3);

    SpriteActor_SetPositionXY(param0->unk_41C[13 + param1], v2, v3);
    SpriteActor_SetPositionXY(param0->unk_41C[13 + param2], v0, v1);
}

void PokemonSummaryScreen_UpdateMoveCategoryIcon(PokemonSummaryScreen *summaryScreen, u32 move)
{
    u32 category = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, sub_0207CAC0(), sub_0207CA90(category), 1, 10);
    sub_0200D414(summaryScreen->unk_41C[18], sub_0207CAA8(category) + 3);
}

void PokemonSummaryScreen_UpdateMoveSelectorPos(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[9], 194, 48 + summaryScreen->cursor * 32);
}

void sub_0208F310(PokemonSummaryScreen *summaryScreen)
{
    s16 v0, v1;

    sub_0200D50C(summaryScreen->unk_41C[9], &v0, &v1);
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[10], v0, v1);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[10], TRUE);
}

void sub_0208F34C(PokemonSummaryScreen *param0)
{
    u32 v0;

    param0->sheenState = 0;
    param0->sheenCount = 0;
    param0->sheenPos = 0;

    if (param0->monData.sheen == 0) {
        param0->sheenMax = 0;
    } else if (param0->monData.sheen == 255) {
        param0->sheenMax = 12;
    } else {
        param0->sheenMax = (((12 << 8) / 255) * param0->monData.sheen) >> 8;
    }

    for (v0 = 29; v0 <= 40; v0++) {
        CellActor_SetDrawFlag(param0->unk_41C[v0], 0);
        SpriteActor_SetAnimFrame(param0->unk_41C[v0], 0);
    }
}

void PokemonSummaryScreen_DrawSheenSprites(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page != PSS_PAGE_CONDITION) {
        return;
    }

    if (summaryScreen->sheenMax == 0) {
        return;
    }

    u32 i;

    switch (summaryScreen->sheenState) {
    case 0:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 8) {
            summaryScreen->sheenState = 1;
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenPos = 0;
        }
        break;
    case 1:
        if (summaryScreen->sheenCount == 0) {
            CellActor_SetDrawFlag(summaryScreen->unk_41C[29 + summaryScreen->sheenPos], TRUE);
            SpriteActor_SetAnimFrame(summaryScreen->unk_41C[29 + summaryScreen->sheenPos], FALSE);
            CellActor_SetAnim(summaryScreen->unk_41C[29 + summaryScreen->sheenPos], FALSE);

            summaryScreen->sheenPos++;

            if (summaryScreen->sheenPos == summaryScreen->sheenMax) {
                summaryScreen->sheenState = 2;
                break;
            }
        }

        summaryScreen->sheenCount = (summaryScreen->sheenCount + 1) % 10;
        break;
    case 2:
        if (CellActor_GetDrawFlag(summaryScreen->unk_41C[29 + summaryScreen->sheenMax - 1]) == FALSE) {
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenState = 3;
            break;
        }
        break;
    case 3:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 32) {
            for (i = 29; i < 29 + summaryScreen->sheenMax; i++) {
                CellActor_SetDrawFlag(summaryScreen->unk_41C[i], TRUE);
                SpriteActor_SetAnimFrame(summaryScreen->unk_41C[i], FALSE);
                CellActor_SetAnim(summaryScreen->unk_41C[i], FALSE);
            }

            summaryScreen->sheenCount = 0;
            summaryScreen->sheenState = 4;
        }
        break;
    case 4:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 32) {
            summaryScreen->sheenState = 0;
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenPos = 0;
        }
        break;
    }

    for (i = 29; i < 29 + summaryScreen->sheenMax; i++) {
        if (CellActor_GetDrawFlag(summaryScreen->unk_41C[i]) == FALSE) {
            continue;
        }

        CellActor_UpdateAnim(summaryScreen->unk_41C[i], FX32_ONE);

        if (CellActor_GetAnimFrame(summaryScreen->unk_41C[i]) == 6) {
            CellActor_SetDrawFlag(summaryScreen->unk_41C[i], FALSE);
        }
    }
}

void sub_0208F574(PokemonSummaryScreen *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->monData.markings & (1 << v0)) {
            CellActor_SetAnim(param0->unk_41C[23 + v0], 1);
        } else {
            CellActor_SetAnim(param0->unk_41C[23 + v0], 0);
        }
    }

    if ((param0->monData.isShiny == 1) && (param0->monData.isEgg == 0)) {
        SpriteActor_DrawSprite(param0->unk_41C[53], 1);
    } else {
        SpriteActor_DrawSprite(param0->unk_41C[53], 0);
    }

    if (param0->monData.pokerus == 2) {
        SpriteActor_DrawSprite(param0->unk_41C[54], 1);
    } else {
        SpriteActor_DrawSprite(param0->unk_41C[54], 0);
    }
}

void sub_0208F600(PokemonSummaryScreen *summaryScreen)
{
    CellActor_SetDrawFlag(summaryScreen->unk_41C[41], TRUE);
    SpriteActor_SetAnimFrame(summaryScreen->unk_41C[41], 0);
    CellActor_SetAnim(summaryScreen->unk_41C[41], 0);

    s16 x, y;
    PokemonSummaryScreen_CalcSubscreenButtonCirclePos(summaryScreen, &x, &y);

    if (summaryScreen->subscreenType == PSS_SUBSCREEN_TYPE_NORMAL) {
        SpriteActor_SetPositionXY(summaryScreen->unk_41C[41], x, y + 192);
    } else {
        SpriteActor_SetPositionXY(summaryScreen->unk_41C[41], x - 4, y + 192);
    }
}

void sub_0208F684(PokemonSummaryScreen *param0)
{
    if (CellActor_GetAnimFrame(param0->unk_41C[41]) == 2) {
        CellActor_SetDrawFlag(param0->unk_41C[41], 0);
    }
}

void sub_0208F6A4(PokemonSummaryScreen *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->subscreen & (1 << v0)) {
            CellActor_SetDrawFlag(param0->unk_41C[42 + v0], 1);
        }
    }
}

void PokemonSummaryScreen_UpdateAButtonSprite(PokemonSummaryScreen *summaryScreen, Window *window)
{
    if (window == NULL) {
        CellActor_SetDrawFlag(summaryScreen->unk_41C[47], FALSE);
        return;
    }

    SpriteActor_SetPositionXY(summaryScreen->unk_41C[47], Window_GetXPos(window) * 8 - 10, 8);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[47], TRUE);
}

void sub_0208F71C(PokemonSummaryScreen *param0)
{
    void *v0 = PokemonSummaryScreen_MonData(param0);
    u32 v1;

    if (param0->data->dataType == 2) {
        v1 = BoxPokemon_IconSpriteIndex(v0);
    } else {
        v1 = Pokemon_IconSpriteIndex(v0);
    }

    sub_0200D948(param0->renderer, param0->gfxHandler, 19, v1, 0, 11);
    sub_0200D414(param0->unk_41C[19], PokeIconPaletteIndex(param0->monData.species, param0->monData.form, param0->monData.isEgg) + 7);
    CellActor_SetFlipMode(param0->unk_41C[19], (PokemonPersonalData_GetFormValue(param0->monData.species, param0->monData.form, 28) ^ 1));
}

void PokemonSummaryScreen_ShowMonIcon(PokemonSummaryScreen *summaryScreen)
{
    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 5);

    if (summaryScreen->page == PSS_PAGE_BATTLE_MOVES) {
        SpriteActor_SetPositionXY(summaryScreen->unk_41C[19], 24, 48);
    } else {
        SpriteActor_SetPositionXY(summaryScreen->unk_41C[19], 32, 68);
    }

    SpriteActor_DrawSprite(summaryScreen->unk_41C[19], TRUE);
}

static s16 sub_0208F800(u32 param0, s16 param1, s16 param2)
{
    u32 v0;

    param0 += 44;

    if (param2 > param1) {
        v0 = ((param2 - param1) * param0) << 16;
        v0 = (v0 / 300) >> 16;

        return param2 + (s16)v0 * -1;
    }

    v0 = ((param1 - param2) * param0) << 16;
    v0 = (v0 / 300) >> 16;

    return param2 + (s16)v0;
}

void PokemonSummaryScreen_DrawContestStatDots(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[48], sub_0208F800(summaryScreen->monData.cool, 88, 88), sub_0208F800(summaryScreen->monData.cool, 49, 73));
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[49], sub_0208F800(summaryScreen->monData.beauty, 110, 88), sub_0208F800(summaryScreen->monData.beauty, 65, 73));
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[50], sub_0208F800(summaryScreen->monData.cute, 103, 88), sub_0208F800(summaryScreen->monData.cute, 92, 73));
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[51], sub_0208F800(summaryScreen->monData.smart, 72, 87), sub_0208F800(summaryScreen->monData.smart, 92, 73));
    SpriteActor_SetPositionXY(summaryScreen->unk_41C[52], sub_0208F800(summaryScreen->monData.tough, 65, 87), sub_0208F800(summaryScreen->monData.tough, 65, 73));

    CellActor_SetDrawFlag(summaryScreen->unk_41C[48], TRUE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[49], TRUE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[50], TRUE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[51], TRUE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[52], TRUE);
}

void PokemonSummaryScreen_HideContestStatDots(PokemonSummaryScreen *summaryScreen)
{
    CellActor_SetDrawFlag(summaryScreen->unk_41C[48], FALSE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[49], FALSE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[50], FALSE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[51], FALSE);
    CellActor_SetDrawFlag(summaryScreen->unk_41C[52], FALSE);
}

static void sub_0208F9B0(PokemonSummaryScreen *summaryScreen, u8 ribbonNum, u8 param2)
{
    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, 39, Ribbon_GetData(ribbonNum, RIBBON_DATA_SPRITE_ID), 0, 26 + param2);
    sub_0200D414(summaryScreen->unk_41C[55 + param2], Ribbon_GetData(ribbonNum, RIBBON_DATA_PALETTE_NUM) + 7);
}

void sub_0208FA04(PokemonSummaryScreen *summaryScreen)
{
    u16 i;

    for (i = 55; i <= 70; i++) {
        CellActor_SetDrawFlag(summaryScreen->unk_41C[i], 0);
    }

    if (summaryScreen->page != PSS_PAGE_RIBBONS) {
        return;
    }

    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, 39, 136, 0, 5);

    for (i = 0; i < 12; i++) {
        if (i < summaryScreen->ribbonMax) {
            CellActor_SetDrawFlag(summaryScreen->unk_41C[55 + i], TRUE);
            sub_0208F9B0(summaryScreen, PokemonSummaryScreen_RibbonNumAt(summaryScreen, i), i);
        }
    }

    CellActor_SetAnim(summaryScreen->unk_41C[70], 0);
}

void PokemonSummaryScreen_UpdateShownRibbonRows(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < RIBBONS_PER_ROW * 2; i++) {
        if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + i) < summaryScreen->ribbonMax) {
            CellActor_SetDrawFlag(summaryScreen->unk_41C[55 + i], TRUE);
            sub_0208F9B0(summaryScreen, PokemonSummaryScreen_RibbonNumAt(summaryScreen, i), i);
        } else {
            CellActor_SetDrawFlag(summaryScreen->unk_41C[55 + i], FALSE);
        }
    }
}

void PokemonSummaryScreen_UpdateRibbonCursorPos(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(
        summaryScreen->unk_41C[67], 132 + (summaryScreen->ribbonCol & (RIBBONS_PER_ROW - 1)) * 32, 56 + (summaryScreen->ribbonCol / RIBBONS_PER_ROW) * 40);
}

void sub_0208FB30(PokemonSummaryScreen *summaryScreen)
{
    if (CellActor_GetDrawFlag(summaryScreen->unk_41C[70]) == TRUE) {
        CellActor_UpdateAnim(summaryScreen->unk_41C[70], FX32_ONE);
    }
}

static const s16 Unk_020F4180[][4] = {
    { 0xB4, 0x39, 0xB4, 0x5A },
    { 0xD5, 0x55, 0xB8, 0x5D },
    { 0xC8, 0x7D, 0xB6, 0x61 },
    { 0x9F, 0x7D, 0xB2, 0x61 },
    { 0x92, 0x55, 0xB0, 0x5D }
};

void sub_0208FB54(PokemonSummaryScreen *param0, u8 param1)
{
    u16 v0, v1;

    if (param1 == 0) {
        for (v0 = 0; v0 < 5; v0++) {
            CellActor_SetDrawFlag(param0->unk_41C[71 + v0], 0);
        }
    } else {
        v1 = param0->monData.cool;

        if (v1 < param0->monData.beauty) {
            v1 = param0->monData.beauty;
        }

        if (v1 < param0->monData.cute) {
            v1 = param0->monData.cute;
        }

        if (v1 < param0->monData.smart) {
            v1 = param0->monData.smart;
        }

        if (v1 < param0->monData.tough) {
            v1 = param0->monData.tough;
        }

        sub_0208FC30(param0->unk_41C[71], param0->monData.cool, v1, Unk_020F4180[0]);
        sub_0208FC30(param0->unk_41C[72], param0->monData.beauty, v1, Unk_020F4180[1]);
        sub_0208FC30(param0->unk_41C[73], param0->monData.cute, v1, Unk_020F4180[2]);
        sub_0208FC30(param0->unk_41C[74], param0->monData.smart, v1, Unk_020F4180[3]);
        sub_0208FC30(param0->unk_41C[75], param0->monData.tough, v1, Unk_020F4180[4]);
    }
}

static void sub_0208FC30(CellActor *param0, u32 param1, u32 param2, const s16 *param3)
{
    s32 v0, v1;

    if ((param1 == 0) || (param1 != param2)) {
        CellActor_SetDrawFlag(param0, 0);
        return;
    }

    CellActor_SetDrawFlag(param0, 1);

    if (param3[0] >= param3[2]) {
        v0 = param3[2] + (((((param3[0] - param3[2]) << 8) / 256) * param1) >> 8);
    } else {
        v0 = param3[2] - (((((param3[2] - param3[0]) << 8) / 256) * param1) >> 8);
    }

    if (param3[1] >= param3[3]) {
        v1 = param3[3] + (((((param3[1] - param3[3]) << 8) / 256) * param1) >> 8);
    } else {
        v1 = param3[3] - (((((param3[3] - param3[1]) << 8) / 256) * param1) >> 8);
    }

    SpriteActor_SetPositionXY(param0, v0, v1);
    SpriteActor_SetAnimFrame(param0, 0);
    CellActor_SetAnim(param0, 0);
}

void sub_0208FCD4(PokemonSummaryScreen *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        CellActor_UpdateAnim(param0->unk_41C[71 + v0], FX32_ONE);
    }
}
