#include <nitro.h>
#include <string.h>

#include "overlay080/struct_ov80_021D2A08.h"

#include "gx_layers.h"
#include "sprite_system.h"
#include "vram_transfer.h"

void TownMapApp_InitSpriteSystem(TownMapAppData *param0);
void TownMapApp_FreeSpriteSystem(TownMapAppData *param0);
void TownMapApp_DrawSprites(TownMapAppData *param0);
void TownMapApp_TransferOam(TownMapAppData *param0);

void TownMapApp_InitSpriteSystem(TownMapAppData *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    VramTransfer_New(32, param0->heapID);

    param0->spriteSystem = SpriteSystem_Alloc(param0->heapID);
    param0->spriteMan = SpriteManager_New(param0->spriteSystem);

    RenderOamTemplate v0 = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };
    CharTransferTemplateWithModes v1 = {
        5,
        1024,
        1024,
        GX_OBJVRAMMODE_CHAR_1D_32K,
        GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    SpriteSystem_Init(param0->spriteSystem, &v0, &v1, 32);
    SpriteSystem_InitSprites(param0->spriteSystem, param0->spriteMan, (1 + 1 + 1 + 5 + 20));
    SpriteResourceDataPaths resourcePaths = {
        .asStruct = {
            .charResources = "data/tmapn_chr.resdat",
            .plttResources = "data/tmapn_pal.resdat",
            .cellResources = "data/tmapn_cell.resdat",
            .animResources = "data/tmapn_canm.resdat",
            .mcellResources = NULL,
            .manimResources = NULL,
            .spriteTable = "data/tmapn_celact.cldat",
        },
    };

    SpriteSystem_LoadResourceDataFromFilepaths(param0->spriteSystem, param0->spriteMan, &resourcePaths);
}

void TownMapApp_FreeSpriteSystem(TownMapAppData *param0)
{
    SpriteSystem_DestroySpriteManager(param0->spriteSystem, param0->spriteMan);
    SpriteSystem_Free(param0->spriteSystem);
    VramTransfer_Free();
}

void TownMapApp_DrawSprites(TownMapAppData *param0)
{
    SpriteSystem_DrawSprites(param0->spriteMan);
}

void TownMapApp_TransferOam(TownMapAppData *param0)
{
    SpriteSystem_TransferOam();
}
