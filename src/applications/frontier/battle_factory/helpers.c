#include "applications/frontier/battle_factory/helpers.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>

#include "constants/graphics.h"

#include "gx_layers.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "unk_0202419C.h"

void BattleFactoryApp_Setup3D(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    G2_SetBG0Priority(0);

    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, G3X_DEPTH_MAX, 63, FALSE);

    G3_ViewPort(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT - 1);
}

void BattleFactoryApp_UpdateMonGraphics(PokemonSpriteManager *spriteMan)
{
    G3_ResetG3X();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    NNS_G3dGlbFlush();
    NNS_G2dSetupSoftwareSpriteCamera();

    PokemonSpriteManager_DrawSprites(spriteMan);
    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

PokemonSprite *BattleFactoryApp_CreateMonSprite(PokemonSpriteManager *spriteMan, int polygonID, Pokemon *mon, int x, int y, int z)
{
    PokemonSpriteTemplate template;
    Pokemon_BuildSpriteTemplate(&template, mon, FACE_FRONT);

    return PokemonSpriteManager_CreateSprite(spriteMan, &template, x, y, z, polygonID, NULL, NULL);
}

void BattleFactoryApp_FlipMonSprite(PokemonSprite *sprite, BOOL flipHorizontal)
{
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_FLIP_H, flipHorizontal);
}
