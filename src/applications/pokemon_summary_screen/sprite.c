#include "applications/pokemon_summary_screen/sprite.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "consts/items.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/subscreen.h"
#include "graphics/pokemon_summary_screen/pl_pst_gra.naix"
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

#define MOVE_SELECTOR_X      194
#define MOVE_SELECTOR_BASE_Y 48
#define PIXELS_BETWEEN_MOVES 32

#define CENTERED_TAB_POS_X  188
#define FOCUSED_TAB_WIDTH   24
#define UNFOCUSED_TAB_WIDTH 16

#define PAGE_ARROW_LEFT_X  -12
#define PAGE_ARROW_RIGHT_X -4
#define PAGE_ARROW_Y       24

// info page type icons
#define INFO_SOLO_MON_TYPE_ICON_X 216
#define INFO_MON_TYPE_ICON_1_X    199
#define INFO_MON_TYPE_ICON_2_X    233
#define INFO_MON_TYPE_ICON_Y      80

// moves page type icons
#define MOVES_MON_TYPE_ICON_1_X 63
#define MOVES_MON_TYPE_ICON_2_X 97
#define MOVES_MON_TYPE_ICON_Y   52

#define MOVE_TYPE_ICON_X      151
#define MOVE_TYPE_ICON_BASE_Y 42

#define MOVE_CATEGORY_ICON_X 108
#define MOVE_CATEGORY_ICON_Y 72

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

static const u8 sBallIDToPaletteNum[] = {
    [ITEM_NONE] = 2,
    [ITEM_MASTER_BALL] = 0,
    [ITEM_ULTRA_BALL] = 2,
    [ITEM_GREAT_BALL] = 2,
    [ITEM_POKE_BALL] = 0,
    [ITEM_SAFARI_BALL] = 1,
    [ITEM_NET_BALL] = 1,
    [ITEM_DIVE_BALL] = 1,
    [ITEM_NEST_BALL] = 1,
    [ITEM_REPEAT_BALL] = 2,
    [ITEM_TIMER_BALL] = 2,
    [ITEM_LUXURY_BALL] = 2,
    [ITEM_PREMIER_BALL] = 2,
    [ITEM_DUSK_BALL] = 3,
    [ITEM_HEAL_BALL] = 3,
    [ITEM_QUICK_BALL] = 2,
    [ITEM_CHERISH_BALL] = 0
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
    CellActor_UpdateAnim(summaryScreen->sprites[21], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[22], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[41], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[68], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[69], FX32_ONE);
}

void sub_0208EB64(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < PSS_SPRITE_MAX; i++) {
        summaryScreen->sprites[i] = sub_0200CA08(summaryScreen->renderer, summaryScreen->gfxHandler, &Unk_020F41A8[i]);
    }

    sub_0208EF0C(summaryScreen);

    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_1], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_2], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[41], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[42], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[43], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[44], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[45], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[46], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[47], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[48], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[49], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[50], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[51], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[52], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[71], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[72], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[73], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[74], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[75], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[76], FALSE);
}

static u8 CalcPageTabsBaseXPos(PokemonSummaryScreen *summaryScreen)
{
    u8 page, visiblePageCount = 0;

    for (page = 0; page < PSS_PAGE_MAX; page++) {
        if (PokemonSummaryScreen_PageIsVisble(summaryScreen, page) != FALSE) {
            visiblePageCount++;
        }
    }

    return CENTERED_TAB_POS_X - (FOCUSED_TAB_WIDTH + (visiblePageCount - 1) * UNFOCUSED_TAB_WIDTH) / 2;
}

void PokemonSummaryScreen_UpdatePageTabSprites(PokemonSummaryScreen *summaryScreen)
{
    s16 x, y;
    u16 activeAnim;
    u8 page;

    s16 baseXPos = CalcPageTabsBaseXPos(summaryScreen);
    CellActor **sprites = &summaryScreen->sprites[0];
    u8 visiblePageCount = 0;

    for (page = 0; page < PSS_PAGE_MAX; page++) {
        if (PokemonSummaryScreen_PageIsVisble(summaryScreen, page) == FALSE) {
            CellActor_SetDrawFlag(sprites[page], FALSE);
            continue;
        }

        activeAnim = CellActor_GetActiveAnim(sprites[page]);

        if (summaryScreen->page == page) {
            if (activeAnim < 8) {
                CellActor_SetAnim(sprites[page], activeAnim + 8);
            }
        } else {
            if (activeAnim >= 8) {
                CellActor_SetAnim(sprites[page], activeAnim - 8);
            }
        }

        sub_0200D50C(sprites[page], &x, &y);

        if (summaryScreen->page >= page) {
            x = baseXPos + visiblePageCount * UNFOCUSED_TAB_WIDTH;
        } else {
            x = baseXPos + FOCUSED_TAB_WIDTH + (visiblePageCount - 1) * UNFOCUSED_TAB_WIDTH;
        }

        SpriteActor_SetPositionXY(summaryScreen->sprites[page], x, y);
        CellActor_SetDrawFlag(sprites[page], TRUE);

        visiblePageCount++;
    }
}

void PokemonSummaryScreen_SetPageArrowsPos(PokemonSummaryScreen *summaryScreen)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, FALSE);
    }

    u8 baseXPos = CalcPageTabsBaseXPos(summaryScreen);

    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_LEFT], baseXPos + PAGE_ARROW_LEFT_X, PAGE_ARROW_Y);
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_RIGHT], CENTERED_TAB_POS_X + (CENTERED_TAB_POS_X - baseXPos) + PAGE_ARROW_RIGHT_X, PAGE_ARROW_Y);
}

void PokemonSummaryScreen_UpdatePageArrows(PokemonSummaryScreen *summaryScreen, BOOL showArrows)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        showArrows = FALSE;
    }

    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_LEFT], showArrows);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_RIGHT], showArrows);
}

void PokemonSummaryScreen_SetCaughtBallGfx(PokemonSummaryScreen *summaryScreen)
{
    u32 ballMember;

    if (summaryScreen->monData.caughtBall == ITEM_NONE) {
        ballMember = master_ball_NCGR;
    } else {
        ballMember = master_ball_NCGR + summaryScreen->monData.caughtBall - 1;
    }

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, ballMember, FALSE, 0);
    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, balls_0_NCLR + sBallIDToPaletteNum[summaryScreen->monData.caughtBall], FALSE, 6);
}

void sub_0208EE9C(PokemonSummaryScreen *param0)
{
    if (param0->monData.status == 7) {
        CellActor_SetDrawFlag(param0->sprites[20], 0);
        CellActor_SetDrawFlag(param0->sprites[76], 0);
    } else if (param0->monData.status != 0) {
        CellActor_SetDrawFlag(param0->sprites[76], 0);
        CellActor_SetDrawFlag(param0->sprites[20], 1);
        CellActor_SetAnim(param0->sprites[20], param0->monData.status);
    } else {
        CellActor_SetDrawFlag(param0->sprites[76], 1);
        CellActor_SetDrawFlag(param0->sprites[20], 0);
    }
}
// ravetodo SetMonAndTypeIcons
static void sub_0208EF0C(PokemonSummaryScreen *summaryScreen)
{
    sub_0208F16C(summaryScreen);

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (summaryScreen->monData.moves[i] == MOVE_NONE) {
            continue;
        }

        sub_0208F194(summaryScreen, 13 + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_TYPE));
    }

    sub_0208F71C(summaryScreen);
}

void PokemonSummaryScreen_UpdateTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    u16 i;
    for (i = PSS_SPRITE_MON_TYPE_ICON_1; i <= PSS_SPRITE_MON_ICON; i++) {
        SpriteActor_DrawSprite(summaryScreen->sprites[i], FALSE);
    }

    switch (summaryScreen->page) {
    case PSS_PAGE_INFO:
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], TRUE);

        if (summaryScreen->monData.type1 == summaryScreen->monData.type2) {
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], INFO_SOLO_MON_TYPE_ICON_X, INFO_MON_TYPE_ICON_Y);
        } else {
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], INFO_MON_TYPE_ICON_1_X, INFO_MON_TYPE_ICON_Y);
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], TRUE);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], INFO_MON_TYPE_ICON_2_X, INFO_MON_TYPE_ICON_Y);
        }
        break;
    case PSS_PAGE_BATTLE_MOVES:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (summaryScreen->monData.moves[i] == MOVE_NONE) {
                continue;
            }

            sub_0208F194(summaryScreen, PSS_SPRITE_MOVE_TYPE_ICON_1 + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_TYPE));
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + i], TRUE);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + i], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + i * PIXELS_BETWEEN_MOVES);
        }

        if (summaryScreen->data->move != MOVE_NONE) {
            sub_0208F194(summaryScreen, PSS_SPRITE_MOVE_TYPE_ICON_5, 5 + 4, MoveTable_LoadParam(summaryScreen->data->move, MOVEATTRIBUTE_TYPE));
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], TRUE);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + LEARNED_MOVES_MAX * PIXELS_BETWEEN_MOVES);
        }

        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], MOVES_MON_TYPE_ICON_1_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], MOVES_MON_TYPE_ICON_2_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_CATEGORY_ICON], MOVE_CATEGORY_ICON_X, MOVE_CATEGORY_ICON_Y);
        break;
    case PSS_PAGE_CONTEST_MOVES:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (summaryScreen->monData.moves[i] == MOVE_NONE) {
                continue;
            }

            sub_0208F194(summaryScreen, PSS_SPRITE_MOVE_TYPE_ICON_1 + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + i], 1);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + i], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + i * PIXELS_BETWEEN_MOVES);
        }

        if (summaryScreen->data->move != MOVE_NONE) {
            sub_0208F194(summaryScreen, PSS_SPRITE_MOVE_TYPE_ICON_5, 5 + 4, MoveTable_LoadParam(summaryScreen->data->move, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], 1);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + LEARNED_MOVES_MAX * PIXELS_BETWEEN_MOVES);
        }

        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], MOVES_MON_TYPE_ICON_1_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], MOVES_MON_TYPE_ICON_2_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_CATEGORY_ICON], MOVE_CATEGORY_ICON_X, MOVE_CATEGORY_ICON_Y);
        break;
    }
}
// ravetodo SetMonTypeIcons
void sub_0208F16C(PokemonSummaryScreen *summaryScreen)
{
    sub_0208F194(summaryScreen, PSS_SPRITE_MON_TYPE_ICON_1, 3, summaryScreen->monData.type1);
    sub_0208F194(summaryScreen, PSS_SPRITE_MON_TYPE_ICON_2, 4, summaryScreen->monData.type2);
}
// ravetodo SetTypeIcon
static void sub_0208F194(PokemonSummaryScreen *summaryScreen, u8 spriteIndex, u8 param2, u8 type)
{
    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, sub_0207C944(), sub_0207C908(type), 1, param2);
    sub_0200D414(summaryScreen->sprites[spriteIndex], sub_0207C92C(type) + 3);
}

static void GetMoveTypeIconPos(PokemonSummaryScreen *summaryScreen, u8 *moveIndex, s16 *outX, s16 *outY)
{
    s16 newYPos = MOVE_TYPE_ICON_BASE_Y + *moveIndex * PIXELS_BETWEEN_MOVES;

    for (s16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        sub_0200D50C(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + i], outX, outY);

        if (newYPos == *outY) {
            *moveIndex = i;
            break;
        }
    }
}

void PokemonSummaryScreen_SwapMoveTypeIcons(PokemonSummaryScreen *summaryScreen, u8 moveIndex1, u8 moveIndex2)
{
    s16 xPos1, yPos1, xPos2, yPos2;

    GetMoveTypeIconPos(summaryScreen, &moveIndex1, &xPos1, &yPos1);
    GetMoveTypeIconPos(summaryScreen, &moveIndex2, &xPos2, &yPos2);

    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + moveIndex1], xPos2, yPos2);
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_1 + moveIndex2], xPos1, yPos1);
}

void PokemonSummaryScreen_UpdateMoveCategoryIcon(PokemonSummaryScreen *summaryScreen, u32 move)
{
    u32 category = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, sub_0207CAC0(), sub_0207CA90(category), 1, 10);
    sub_0200D414(summaryScreen->sprites[PSS_SPRITE_MOVE_CATEGORY_ICON], sub_0207CAA8(category) + 3);
}

void PokemonSummaryScreen_UpdateMoveSelectorPos(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_1], MOVE_SELECTOR_X, MOVE_SELECTOR_BASE_Y + summaryScreen->cursor * PIXELS_BETWEEN_MOVES);
}

void PokemonSummaryScreen_SetMoveSelector2Pos(PokemonSummaryScreen *summaryScreen)
{
    s16 x, y;
    sub_0200D50C(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_1], &x, &y);
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_2], x, y);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_2], TRUE);
}

void PokemonSummaryScreen_InitSheenSprites(PokemonSummaryScreen *summaryScreen)
{
    summaryScreen->sheenState = 0;
    summaryScreen->sheenCount = 0;
    summaryScreen->sheenPos = 0;

    if (summaryScreen->monData.sheen == 0) {
        summaryScreen->sheenMax = 0;
    } else if (summaryScreen->monData.sheen == MAX_POKEMON_SHEEN) {
        summaryScreen->sheenMax = MAX_SHEEN_SPRITES;
    } else {
        summaryScreen->sheenMax = (((MAX_SHEEN_SPRITES << 8) / MAX_POKEMON_SHEEN) * summaryScreen->monData.sheen) >> 8;
    }

    for (u32 spriteIndex = PSS_SHEEN_SPRITES_START; spriteIndex <= PSS_SHEEN_SPRITES_END; spriteIndex++) {
        CellActor_SetDrawFlag(summaryScreen->sprites[spriteIndex], FALSE);
        SpriteActor_SetAnimFrame(summaryScreen->sprites[spriteIndex], 0);
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
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenPos], TRUE);
            SpriteActor_SetAnimFrame(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenPos], FALSE);
            CellActor_SetAnim(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenPos], FALSE);

            summaryScreen->sheenPos++;

            if (summaryScreen->sheenPos == summaryScreen->sheenMax) {
                summaryScreen->sheenState = 2;
                break;
            }
        }

        summaryScreen->sheenCount = (summaryScreen->sheenCount + 1) % 10;
        break;
    case 2:
        if (CellActor_GetDrawFlag(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenMax - 1]) == FALSE) {
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenState = 3;
            break;
        }
        break;
    case 3:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 32) {
            for (i = PSS_SHEEN_SPRITES_START; i < PSS_SHEEN_SPRITES_START + summaryScreen->sheenMax; i++) {
                CellActor_SetDrawFlag(summaryScreen->sprites[i], TRUE);
                SpriteActor_SetAnimFrame(summaryScreen->sprites[i], FALSE);
                CellActor_SetAnim(summaryScreen->sprites[i], FALSE);
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

    for (i = PSS_SHEEN_SPRITES_START; i < PSS_SHEEN_SPRITES_START + summaryScreen->sheenMax; i++) {
        if (CellActor_GetDrawFlag(summaryScreen->sprites[i]) == FALSE) {
            continue;
        }

        CellActor_UpdateAnim(summaryScreen->sprites[i], FX32_ONE);

        if (CellActor_GetAnimFrame(summaryScreen->sprites[i]) == 6) {
            CellActor_SetDrawFlag(summaryScreen->sprites[i], FALSE);
        }
    }
}
// ravetodo better name
void PokemonSummaryScreen_UpdateMiscMonDataSprites(PokemonSummaryScreen *summaryScreen)
{
    for (u32 marking = 0; marking < MAX_MARKINGS; marking++) {
        if (summaryScreen->monData.markings & (1 << marking)) {
            CellActor_SetAnim(summaryScreen->sprites[PSS_SPRITE_MARKING_CIRCLE + marking], TRUE);
        } else {
            CellActor_SetAnim(summaryScreen->sprites[PSS_SPRITE_MARKING_CIRCLE + marking], FALSE);
        }
    }

    if (summaryScreen->monData.isShiny == TRUE && summaryScreen->monData.isEgg == FALSE) {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_SHINY_ICON], TRUE);
    } else {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_SHINY_ICON], FALSE);
    }

    if (summaryScreen->monData.pokerus == 2) {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_POKERUS_CURED_ICON], TRUE);
    } else {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_POKERUS_CURED_ICON], FALSE);
    }
}

void sub_0208F600(PokemonSummaryScreen *summaryScreen)
{
    CellActor_SetDrawFlag(summaryScreen->sprites[41], TRUE);
    SpriteActor_SetAnimFrame(summaryScreen->sprites[41], 0);
    CellActor_SetAnim(summaryScreen->sprites[41], 0);

    s16 x, y;
    PokemonSummaryScreen_CalcSubscreenButtonCirclePos(summaryScreen, &x, &y);

    if (summaryScreen->subscreenType == PSS_SUBSCREEN_TYPE_NORMAL) {
        SpriteActor_SetPositionXY(summaryScreen->sprites[41], x, y + 192);
    } else {
        SpriteActor_SetPositionXY(summaryScreen->sprites[41], x - 4, y + 192);
    }
}

void sub_0208F684(PokemonSummaryScreen *param0)
{
    if (CellActor_GetAnimFrame(param0->sprites[41]) == 2) {
        CellActor_SetDrawFlag(param0->sprites[41], 0);
    }
}

void sub_0208F6A4(PokemonSummaryScreen *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->subscreen & (1 << v0)) {
            CellActor_SetDrawFlag(param0->sprites[42 + v0], 1);
        }
    }
}

void PokemonSummaryScreen_UpdateAButtonSprite(PokemonSummaryScreen *summaryScreen, Window *window)
{
    if (window == NULL) {
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], FALSE);
        return;
    }

    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], Window_GetXPos(window) * 8 - 10, 8);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], TRUE);
}
// ravetodo PokemonSummaryScreen_SetMonIcon
void sub_0208F71C(PokemonSummaryScreen *summaryScreen)
{
    void *monData = PokemonSummaryScreen_MonData(summaryScreen);
    u32 iconIndex;

    if (summaryScreen->data->dataType == PSS_DATA_BOX_MON) {
        iconIndex = BoxPokemon_IconSpriteIndex(monData);
    } else {
        iconIndex = Pokemon_IconSpriteIndex(monData);
    }

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, 19, iconIndex, 0, 11);
    sub_0200D414(summaryScreen->sprites[PSS_SPRITE_MON_ICON], PokeIconPaletteIndex(summaryScreen->monData.species, summaryScreen->monData.form, summaryScreen->monData.isEgg) + 7);
    CellActor_SetFlipMode(summaryScreen->sprites[PSS_SPRITE_MON_ICON], (PokemonPersonalData_GetFormValue(summaryScreen->monData.species, summaryScreen->monData.form, 28) ^ 1));
}

void PokemonSummaryScreen_ShowMonIcon(PokemonSummaryScreen *summaryScreen)
{
    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 5);

    if (summaryScreen->page == PSS_PAGE_BATTLE_MOVES) {
        SpriteActor_SetPositionXY(summaryScreen->sprites[19], 24, 48);
    } else {
        SpriteActor_SetPositionXY(summaryScreen->sprites[19], 32, 68);
    }

    SpriteActor_DrawSprite(summaryScreen->sprites[19], TRUE);
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
    SpriteActor_SetPositionXY(summaryScreen->sprites[48], sub_0208F800(summaryScreen->monData.cool, 88, 88), sub_0208F800(summaryScreen->monData.cool, 49, 73));
    SpriteActor_SetPositionXY(summaryScreen->sprites[49], sub_0208F800(summaryScreen->monData.beauty, 110, 88), sub_0208F800(summaryScreen->monData.beauty, 65, 73));
    SpriteActor_SetPositionXY(summaryScreen->sprites[50], sub_0208F800(summaryScreen->monData.cute, 103, 88), sub_0208F800(summaryScreen->monData.cute, 92, 73));
    SpriteActor_SetPositionXY(summaryScreen->sprites[51], sub_0208F800(summaryScreen->monData.smart, 72, 87), sub_0208F800(summaryScreen->monData.smart, 92, 73));
    SpriteActor_SetPositionXY(summaryScreen->sprites[52], sub_0208F800(summaryScreen->monData.tough, 65, 87), sub_0208F800(summaryScreen->monData.tough, 65, 73));

    CellActor_SetDrawFlag(summaryScreen->sprites[48], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[49], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[50], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[51], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[52], TRUE);
}

void PokemonSummaryScreen_HideContestStatDots(PokemonSummaryScreen *summaryScreen)
{
    CellActor_SetDrawFlag(summaryScreen->sprites[48], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[49], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[50], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[51], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[52], FALSE);
}

static void SetRibbonSpriteGfx(PokemonSummaryScreen *summaryScreen, u8 ribbonNum, u8 ribbonIndex)
{
    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, Ribbon_GetData(ribbonNum, RIBBON_DATA_SPRITE_ID), 0, 26 + ribbonIndex);
    sub_0200D414(summaryScreen->sprites[PSS_SPRITE_RIBBON_1 + ribbonIndex], Ribbon_GetData(ribbonNum, RIBBON_DATA_PALETTE_NUM) + 7);
}

void PokemonSummaryScreen_UpdateRibbonSprites(PokemonSummaryScreen *summaryScreen)
{
    u16 i;

    for (i = PSS_SPRITE_RIBBON_1; i <= PSS_SPRITE_RIBBON_FLASH; i++) {
        CellActor_SetDrawFlag(summaryScreen->sprites[i], FALSE);
    }

    if (summaryScreen->page != PSS_PAGE_RIBBONS) {
        return;
    }

    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, ribbons_NCLR, FALSE, 5);

    for (i = 0; i < RIBBONS_PER_PAGE; i++) {
        if (i < summaryScreen->ribbonMax) {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_RIBBON_1 + i], TRUE);
            SetRibbonSpriteGfx(summaryScreen, PokemonSummaryScreen_RibbonNumAt(summaryScreen, i), i);
        }
    }

    CellActor_SetAnim(summaryScreen->sprites[PSS_SPRITE_RIBBON_FLASH], 0);
}

void PokemonSummaryScreen_UpdateShownRibbonRows(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < RIBBONS_PER_ROW * 2; i++) {
        if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + i) < summaryScreen->ribbonMax) {
            CellActor_SetDrawFlag(summaryScreen->sprites[55 + i], TRUE);
            SetRibbonSpriteGfx(summaryScreen, PokemonSummaryScreen_RibbonNumAt(summaryScreen, i), i);
        } else {
            CellActor_SetDrawFlag(summaryScreen->sprites[55 + i], FALSE);
        }
    }
}

void PokemonSummaryScreen_UpdateRibbonCursorPos(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(
        summaryScreen->sprites[67], 132 + (summaryScreen->ribbonCol & (RIBBONS_PER_ROW - 1)) * 32, 56 + (summaryScreen->ribbonCol / RIBBONS_PER_ROW) * 40);
}

void sub_0208FB30(PokemonSummaryScreen *summaryScreen)
{
    if (CellActor_GetDrawFlag(summaryScreen->sprites[70]) == TRUE) {
        CellActor_UpdateAnim(summaryScreen->sprites[70], FX32_ONE);
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
            CellActor_SetDrawFlag(param0->sprites[71 + v0], 0);
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

        sub_0208FC30(param0->sprites[71], param0->monData.cool, v1, Unk_020F4180[0]);
        sub_0208FC30(param0->sprites[72], param0->monData.beauty, v1, Unk_020F4180[1]);
        sub_0208FC30(param0->sprites[73], param0->monData.cute, v1, Unk_020F4180[2]);
        sub_0208FC30(param0->sprites[74], param0->monData.smart, v1, Unk_020F4180[3]);
        sub_0208FC30(param0->sprites[75], param0->monData.tough, v1, Unk_020F4180[4]);
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
        CellActor_UpdateAnim(param0->sprites[71 + v0], FX32_ONE);
    }
}
