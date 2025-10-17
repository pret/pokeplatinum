#include "applications/town_map/sprites.h"

#include <nitro.h>
#include <string.h>

#include "applications/town_map/defs.h"
#include "applications/town_map/main.h"

#include "gx_layers.h"
#include "sprite_system.h"
#include "vram_transfer.h"

void TownMap_InitSpriteSystem(TownMapAppData *appData)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VramTransfer_New(32, appData->heapID);

    appData->spriteSystem = SpriteSystem_Alloc(appData->heapID);
    appData->spriteMan = SpriteManager_New(appData->spriteSystem);

    RenderOamTemplate oamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 32,
        .subOamStart = 0,
        .subOamCount = 128,
        .subAffineOamStart = 0,
        .subAffineOamCount = 32,
    };

    CharTransferTemplateWithModes charTransferTemplate = {
        .maxTasks = 5,
        .sizeMain = 1024,
        .sizeSub = 1024,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    SpriteSystem_Init(appData->spriteSystem, &oamTemplate, &charTransferTemplate, 32);
    SpriteSystem_InitSprites(appData->spriteSystem, appData->spriteMan, 3 + TOWN_MAP_HISTORY_LENGTH + NUM_FLY_LOCATIONS); // player sprite, cursor sprite, zoom button shockwave
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

    SpriteSystem_LoadResourceDataFromFilepaths(appData->spriteSystem, appData->spriteMan, &resourcePaths);
}

void TownMap_FreeSpriteSystem(TownMapAppData *appData)
{
    SpriteSystem_DestroySpriteManager(appData->spriteSystem, appData->spriteMan);
    SpriteSystem_Free(appData->spriteSystem);
    VramTransfer_Free();
}

void TownMap_DrawSprites(TownMapAppData *appData)
{
    SpriteSystem_DrawSprites(appData->spriteMan);
}

void TownMap_TransferOam(TownMapAppData *appData)
{
    SpriteSystem_TransferOam();
}
