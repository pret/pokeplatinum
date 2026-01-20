#include "applications/poffin_case/cutscene_sprite.h"

#include <nitro.h>

#include "camera.h"
#include "gx_layers.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "unk_0202419C.h"

static void SetupCamera(PoffinCutsceneMonSprite *monSprite, enum HeapID heapID);
static void SetupSprite(PoffinCutsceneMonSprite *monSprite, PoffinCutscenePokemon *mon, enum HeapID heapID);

void PoffinCutsceneMonSprite_Init(PoffinCutsceneMonSprite *monSprite, PoffinCutscenePokemon *mon, enum HeapID heapID)
{
    MI_CpuClear8(monSprite, sizeof(PoffinCutsceneMonSprite));

    NNS_G3dInit();
    G3X_Init();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_AntiAlias(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, 0, 0, 0);
    G3X_SetClearColor(0, 0, 0x7fff, 63, FALSE);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    SetupCamera(monSprite, heapID);
    SetupSprite(monSprite, mon, heapID);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    G2_SetBG0Priority(1);
}

void PoffinCutsceneMonSprite_Update(PoffinCutsceneMonSprite *monSprite)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    NNS_G3dGlbFlush();
    NNS_G2dSetupSoftwareSpriteCamera();
    PokemonSpriteManager_DrawSprites(monSprite->spriteMan);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void PoffinCutsceneMonSprite_Free(PoffinCutsceneMonSprite *monSprite)
{
    Camera_Delete(monSprite->camera);
    PokemonSpriteManager_Free(monSprite->spriteMan);
}

static void SetupCamera(PoffinCutsceneMonSprite *monSprite, enum HeapID heapID)
{
    VecFx32 pos = { 0, 0, 0x10000 };
    CameraAngle cameraAngle = { 0, 0, 0 };
    fx32 distance = 0x10000;
    u16 fovY = 0x5c1;

    monSprite->camera = Camera_Alloc(heapID);

    Camera_InitWithPosition(&pos, distance, &cameraAngle, fovY, 1, monSprite->camera);
    Camera_SetClipping(0, FX32_CONST(100), monSprite->camera);
    Camera_ReleaseTarget(monSprite->camera);
    Camera_SetAsActive(monSprite->camera);
}

static void SetupSprite(PoffinCutsceneMonSprite *monSprite, PoffinCutscenePokemon *mon, enum HeapID heapID)
{
    PokemonSpriteTemplate spriteTemplate;

    monSprite->spriteMan = PokemonSpriteManager_New(heapID);

    Pokemon_BuildSpriteTemplate(&spriteTemplate, mon->baseMon, 2);

    PokemonSprite *sprite = PokemonSpriteManager_CreateSprite(monSprite->spriteMan, &spriteTemplate, 128, 96, 0, 0, NULL, NULL);
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_FLIP_H, mon->flipSprite);

    monSprite->sprite = sprite;
}
