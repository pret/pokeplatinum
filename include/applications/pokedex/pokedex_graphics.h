#ifndef POKEPLATINUM_POKEDEX_GRAPHICS_H
#define POKEPLATINUM_POKEDEX_GRAPHICS_H

#include <nitro.h>

#include "struct_decls/struct_02015064_decl.h"

#include "applications/pokedex/pokedex_panel.h"
#include "applications/pokedex/pokedex_text_manager.h"

#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "sys_task_manager.h"

typedef struct PokedexSpeciesLabel {
    Sprite *nameTag; // displays caughtIcon, dex number, and name
    Sprite *caughtIcon;
    PokedexTextData *textData;
    SpriteResource *spriteResource[4];
    VecFx32 dummy;
    int species;
    u32 isNationalDex;
} PokedexSpeciesLabel;

typedef struct FadeTransition {
    BOOL isSubscreen;
    GXBlendPlaneMask plane1;
    GXBlendPlaneMask plane2;
    int startBackgroundBrightness;
    int deltaBackgroundBrightness;
    int startSpriteBrightness;
    int deltaSpriteBrightness;
    int numSteps;
    int step;
} FadeTransition;

typedef struct PokedexCursorGraphics {
    Sprite *sprite[4];
    SpriteResource *spriteResource[4];
    int x;
    int y;
    int width;
    int height;
    BOOL isStaticSize;
    int scale;
} PokedexCursorGraphics;

typedef struct CursorTransformation {
    int currentX;
    int currentY;
    int startX;
    int startY;
    int deltaX;
    int deltaY;
    int step;
    int numSteps;
} CursorTransformation;

typedef struct PokedexCursorManager {
    PokedexCursorGraphics *cursorGraphics;
    CursorTransformation centerPoint;
    CursorTransformation size;
    int x;
    int y;
    int width;
    int height;
    BOOL isMoving;
} PokedexCursorManager;

typedef struct PokedexGraphicData {
    BgConfig *bgConfig;
    Window window;
    G2dRenderer g2Renderer;
    SpriteList *spriteList;
    SpriteResourceCollection *spriteResourceCollection[4];
    PokedexTextManager *textMan;
    PokemonSpriteManager *spriteMan;
    PokemonSprite *pokemonSprite[4];
    UnkStruct_02015064 *unk_164;
    FadeTransition fadeMain;
    FadeTransition fadeSub;
    PokedexSpeciesLabel pokedexSpeciesLabel;
    PokedexCursorGraphics cursorGraphics;
    PokedexCursorManager cursorMan;
    SysTask *cursorPulse;
    SysTask *cursorTransorm;
    NARC *pokedexGraphics;
} PokedexGraphicData;

void PokedexGraphics_Init(PokedexGraphicData *pokedexGraphicData, enum HeapId heapID);
void PokedexGraphics_Free(PokedexGraphicData *pokedexGraphicData);
void PokemonGraphics_UpdateSprites(PokedexGraphicData *pokedexGraphicData);
void PokemonGraphics_UpdateCharAndPltt(PokedexGraphicData *pokedexGraphicData);
void PokemonGraphics_SetCharCenterXY(PokedexGraphicData *pokedexGraphicData, int x, int y);
PokemonSprite *PokemonGraphics_GetPokemonChar(const PokedexGraphicData *pokedexGraphicData);
void PokedexGraphics_SetPokemonCharHide(const PokedexGraphicData *pokedexGraphicData, BOOL unhidden);
void PokedexGraphics_LoadPokemonSprite(PokedexGraphicData *pokedexGraphicData, int species, int gender, int face, int shiny, u8 form, u32 personality, int x, int y, enum SpriteResourceType spriteResourceType);
void PokemonGraphics_SetSpriteCenterXY(PokedexGraphicData *pokedexGraphicData, int x, int y, enum SpriteResourceType spriteResourceType);
void PokemonGraphics_GetSpriteCenterXY(PokedexGraphicData *pokedexGraphicData, int *x, int *y, enum SpriteResourceType spriteResourceType);
PokemonSprite *PokedexGraphics_GetPokemonSprite(const PokedexGraphicData *pokedexGraphicData, enum SpriteResourceType spriteResourceType);
void PokedexGraphics_SetPokemonSpriteHide(const PokedexGraphicData *pokedexGraphicData, BOOL unhidden, enum SpriteResourceType spriteResourceType);
Sprite *PokedexGraphics_GetNameTag(const PokedexGraphicData *pokedexGraphicData);
Sprite *PokedexGraphics_GetCaughtIcon(const PokedexGraphicData *pokedexGraphicData);
void PokedexGraphics_UpdatePokedexSpeciesLabel(PokedexGraphicData *pokedexGraphicData, PokedexDisplayBox *displayBox, int size, int species, u32 isNationalDex);
void PokedexGraphics_UpdateSpeciesLabel(PokedexSpeciesLabel *pokedexSpeciesLabel, PokedexDisplayBox *displayBox, int size, int species, u32 isNationalDex);
SpriteResource *PokedexGraphics_GetSpeciesLabelSpriteResource(const PokedexGraphicData *pokedexGraphicData, enum SpriteResourceType spriteResourceType);
void PokedexGraphics_SetSpeciesLabelGXOamMode(const PokedexGraphicData *pokedexGraphicData, GXOamMode mode);
void PokedexGraphics_SetSpeciesLabelPriority(const PokedexGraphicData *pokedexGraphicData, int priority);
void PokedexGraphics_SetPokedexSpeciesLabelDraw(const PokedexGraphicData *pokedexGraphicData, BOOL draw);
void PokedexGraphics_InitFadeTransition(FadeTransition *fadeTransition, u8 numSteps, int startBackgroundBrightness, int endBackgroundBrightness, int startSpriteBrightness, int endSpriteBrightness, GXBlendPlaneMask plane1, GXBlendPlaneMask plane2, BOOL isSubscreen);
BOOL PokedexGraphics_TakeFadeTransitionStep(FadeTransition *fadeTransition);
int PokedexGraphics_FadeSprites(FadeTransition *fadeTransition);
int PokedexGraphics_FadeScreen(FadeTransition *fadeTransition);
BOOL PokedexGraphics_FadeTransitionComplete(FadeTransition *fadeTransition);
void PokedexGraphics_FadePokemonChar(const PokedexGraphicData *pokedexGraphicData, FadeTransition *fadeTransition);
void PokedexGraphics_FadePokemonSprite(const PokedexGraphicData *pokedexGraphicData, FadeTransition *fadeTransition, enum SpriteResourceType spriteResourceType);
void PokedexGraphics_CurrentButtonTransformation(const PokedexPanelData *pokedexPanelData, PokedexGraphicData *pokedexGraphicData);
void PokedexGraphics_TransformCursor(PokedexGraphicData *pokedexGraphicData, int x, int y, int width, int height);
void PokedexGraphics_SetDrawCursor(PokedexCursorGraphics *pokedexCursorGraphics, BOOL draw);
BOOL PokedexGraphics_GetDrawCursor(PokedexCursorGraphics *pokedexCursorGraphics);
void PokedexGraphics_SetStaticCursorSize(PokedexCursorGraphics *pokedexCursorGraphics, BOOL isStaticSize);
void PokedexGraphics_GoToCurrentButton(const PokedexPanelData *pokedexPanelData, PokedexGraphicData *pokedexGraphicData);
void PokedexGraphics_SetCursorPosAndSize(PokedexGraphicData *pokedexGraphicData, int x, int y, int width, int height);
void PokedexGraphics_InitTransformation(CursorTransformation *cursorTransformation, int startX, int endX, int startY, int endY, int numSteps);
BOOL PokedexGraphics_TakeCursorTransformStep(CursorTransformation *cursorTransformation);
NARC *PokedexGraphics_PokedexGraphicsNARC(PokedexGraphicData *pokedexGraphicData);
u32 PokedexGraphics_LoadGraphicNarcCharacterData(PokedexGraphicData *pokedexGraphicData, u32 memberIndex, BgConfig *bgConfig, u32 bgLayer, u32 tileStart, u32 size, BOOL isCompressed, enum HeapId heapID);
void PokedexGraphics_LoadGraphicNarcPaletteData(PokedexGraphicData *pokedexGraphicData, u32 memberIndex, enum PaletteLoadLocation loadLocation, u32 offset, u32 szByte, enum HeapId heapID);
void *PokedexGraphics_GetGraphicNarcScreenData(PokedexGraphicData *pokedexGraphicData, u32 memberIndex, BOOL isCompressed, NNSG2dScreenData **screenData, enum HeapId heapID);
void *PokedexGraphics_GetGraphicNarcPaletteData(PokedexGraphicData *pokedexGraphicData, u32 memberIndex, NNSG2dPaletteData **paletteData, enum HeapId heapID);
void *PokedexGraphics_GetGraphicNarcCharacterData(PokedexGraphicData *pokedexGraphicData, u32 memberIndex, BOOL isCompressed, NNSG2dCharacterData **characterData, enum HeapId heapID);
void PokedexGraphics_InitSpeciesLabelGraphics(PokedexSpeciesLabel *pokedexSpeciesLabel, SpriteResourceCollection **spriteResourceCollection, enum HeapId heapID, NARC *narc);
void PokedexGraphics_FreeSpeciesLabelGraphics(PokedexSpeciesLabel *pokedexSpeciesLabel, SpriteResourceCollection **spriteResourceCollection);
void PokedexGraphics_NewSpeciesLabel(PokedexSpeciesLabel *pokedexSpeciesLabel, SpriteList *spriteList, SpriteResourceCollection **spriteResourceCollection, enum HeapId heapID, int headerPriority);
void PokedexGraphics_FreeSpeciesLabel(PokedexSpeciesLabel *pokedexSpeciesLabel);
void PokedexGraphics_SetSpeciesLabelDraw(PokedexSpeciesLabel *pokedexSpeciesLabel, BOOL draw);

#endif // POKEPLATINUM_POKEDEX_GRAPHICS_H
