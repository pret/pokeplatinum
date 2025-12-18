#include "applications/poffin_case/sprites.h"

#include <nitro.h>

#include "communication_system.h"
#include "gx_layers.h"
#include "poffin_sprite.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_system.h"
#include "unk_020393C8.h"
#include "vram_transfer.h"

void PoffinManager_InitSpriteSystem(PoffinManager *param0);
void PoffinManager_FreeSpriteSystem(PoffinManager *param0);
void PoffinManager_UpdateSprites(PoffinManager *param0);

void PoffinManager_InitSpriteSystem(PoffinManager *app)
{
    VramTransfer_New(32, app->heapID);

    app->spriteSys = SpriteSystem_Alloc(app->heapID);
    app->spriteMan = SpriteManager_New(app->spriteSys);

    RenderOamTemplate oamTemplate = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };
    CharTransferTemplateWithModes charTransferTemplate = {
        3,
        1024,
        1024,
        GX_OBJVRAMMODE_CHAR_1D_32K,
        GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    SpriteSystem_Init(app->spriteSys, &oamTemplate, &charTransferTemplate, 32);
    SpriteSystem_InitSprites(app->spriteSys, app->spriteMan, NUM_LIST_SPRITES + 2 * FLAVOR_MAX + 1);

    RenderOam_ClearMain(app->heapID);
    RenderOam_ClearSub(app->heapID);

    SpriteResourceDataPaths resourcePaths = {
        "data/porucase_chr.resdat",
        "data/porucase_pal.resdat",
        "data/porucase_cell.resdat",
        "data/porucase_canm.resdat",
        NULL,
        NULL,
        "data/porucase_celact.cldat"
    };

    SpriteSystem_LoadResourceDataFromFilepaths(app->spriteSys, app->spriteMan, &resourcePaths);

    app->poffinSpriteMan = PoffinSpriteManager_New(app->heapID, 1, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 0);

    if (CommSys_IsInitialized()) {
        sub_02039734();
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

void PoffinManager_FreeSpriteSystem(PoffinManager *app)
{
    PoffinSpriteManager_Free(app->poffinSpriteMan);
    SpriteSystem_DestroySpriteManager(app->spriteSys, app->spriteMan);
    SpriteSystem_Free(app->spriteSys);
    VramTransfer_Free();
}

void PoffinManager_UpdateSprites(PoffinManager *app)
{
    SpriteSystem_DrawSprites(app->spriteMan);
    PoffinSpriteManager_DrawSprites(app->poffinSpriteMan);
}

void PoffinCaseApp_UpdateListSprites(PoffinManager *app, BOOL actionMenuOpen)
{
    if (!actionMenuOpen) {
        Sprite_SetExplicitPalette(app->listSprites[LIST_SPRITE_SELECT_BOX], 0);
        Sprite_SetAnimateFlag(app->listSprites[1], TRUE);
        Sprite_SetAnimateFlag(app->listSprites[2], TRUE);
    } else {
        Sprite_SetExplicitPalette(app->listSprites[LIST_SPRITE_SELECT_BOX], 9);
        Sprite_SetAnimateFlag(app->listSprites[1], FALSE);
        Sprite_SetAnimateFlag(app->listSprites[2], FALSE);
    }
}
