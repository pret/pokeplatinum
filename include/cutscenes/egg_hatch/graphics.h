#ifndef POKEPLATINUM_CUTSCENES_EGG_HATCH_GRAPHICS_H
#define POKEPLATINUM_CUTSCENES_EGG_HATCH_GRAPHICS_H

#include "bg_window.h"
#include "egg_hatch.h"
#include "g3d_pipeline.h"
#include "menu.h"
#include "palette.h"
#include "particle_system.h"
#include "string_list.h"

#define BASE_TILE_OFFSET 20

#define EGG_SHAKE_STARTED   0
#define EGG_SHAKE_HALF_OVER 1
#define EGG_SHAKE_FINISHED  2

#define WINDOW_MESSAGE_BOX 0
#define WINDOW_MENU        1

enum EggHatchShakeAnimID {
    EGG_MINOR_SHAKE = 0,
    EGG_BIG_SHAKE,
    EGG_BIGGER_SHAKE,
    EGG_EXPLOSIVE_SHAKE,
};

typedef struct EggHatchParticleSystemArgs {
    enum HeapID heapID;
    int narcIdx;
} EggHatchParticleSystemArgs;

typedef struct EggHatchParticleSystem {
    EggHatchParticleSystemArgs args;
    SPLEmitter *emitter;
    ParticleSystem *ps;
} EggHatchParticleSystem;

typedef struct EggHatchGraphics {
    BgConfig *bgConfig;
    PaletteData *plttData;
    int printerID;
    int renderDelay;
    int frame;
    Window windows[2];
    G3DPipelineBuffers *g3dPipeline;
    PokemonSpriteManager *monSpriteMan;
    NARC *monDataNarc;
    EggHatchParticleSystem *eps;
    StringList *strList;
    Menu *yesNoMenu;
    SpriteManager *spriteMan;
    SpriteSystem *spriteSys;
    PokemonAnimManager *animMan;
} EggHatchGraphics;

typedef struct EggHatchShakeAnimation {
    int isAnimFinished;
    int shakeProgress;
} EggHatchShakeAnimation;

typedef struct EggHatchCutscene {
    EggHatchApp *app;
    EggHatchGraphics graphics;
    int isManaphy;
    int state;
    int subStateTimer;
    int subState;
    u8 cryDelay;
    PokemonSprite *monSprite;
    ManagedSprite *eggSprite;
    ManagedSprite *topBarSprite;
    ManagedSprite *bottomBarSprite;
    EggHatchShakeAnimation shake;
} EggHatchCutscene;

void EggHatch_InitGraphicsPlane(void);
void EggHatch_SetBlendAlphas(void);
G3DPipelineBuffers *EggHatch_InitG3DPipeline(void);
void EggHatch_ZeroParticleSystem(void);
void EggHatch_InitBackgrounds(BgConfig *bgConfig);
void EggHatch_VBlankCallback(void *arg);
void EggHatchParticleSystem_Update(void);
void EggHatch_FadeIn(void);
void EggHatch_FadeOut(void);
void EggHatch_LoadMessageBoxGraphics(BgConfig *bgConfig, PaletteData *plttData, int frame);
void EggHatch_CreateMessageWindow(BgConfig *bgConfig, Window *window, enum BgLayer bgLayer, int tilemapTop, int tilemapLeft, int width, int height, int baseTile, int palette);
int EggHatch_PrintMessage(Window *window, int entryID, Pokemon *mon, int renderDelay);
void EggHatch_CreateYesNoMenu(EggHatchCutscene *eggHatch, BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile, int palette);
void EggHatch_FreeMenu(EggHatchCutscene *eggHatch);
void EggHatch_FreeWindow(Window *window);
void EggHatch_LoadMainBackground(BgConfig *bgConfig, PaletteData *plttData);
void EggHatch_LoadSubScreenBackground(BgConfig *bgConfig, PaletteData *plttData);
void EggHatchParticleSystem_FreeParticleSystem(ParticleSystem *ps);
EggHatchParticleSystem *EggHatchParticleSystem_New(EggHatchParticleSystemArgs *args);
void EggHatchParticleSystem_CreateEmitter(EggHatchParticleSystem *eps, int resourceID);
BOOL EggHatchParticleSystem_EmittersActive(EggHatchParticleSystem *eps);
void EggHatchParticleSystem_Free(EggHatchParticleSystem *eps);
void EggHatch_LoadSpriteResources(EggHatchCutscene *eggHatch);
void EggHatch_CreateSprites(EggHatchCutscene *eggHatch);
int EggHatch_ShakeEgg(EggHatchCutscene *eggHatch, enum EggHatchShakeAnimID idx);
void EggHatch_DeleteSprites(EggHatchCutscene *eggHatch);
void EggHatch_InitSpriteSystem(EggHatchGraphics *graphics);
void EggHatch_FreeSpriteSystem(EggHatchGraphics *eggHatch);
void EggHatch_CreateMonSprite(EggHatchCutscene *eggHatch);
void EggHatch_PlayMonAnim(EggHatchCutscene *eggHatch);
void EggHatch_DeleteMonSprite(EggHatchCutscene *eggHatch);
void EggHatch_HideMonSprite(EggHatchCutscene *eggHatch, BOOL hide);

#endif // POKEPLATINUM_CUTSCENES_EGG_HATCH_GRAPHICS_H
