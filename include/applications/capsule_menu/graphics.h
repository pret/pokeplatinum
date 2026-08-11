#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_GRAPHICS_H

#include "applications/capsule_menu/defs.h"

#include "bg_window.h"
#include "g3d_pipeline.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

// TODO: seperate these constants into a different file (or the .c?)

#define BASE_TILE_1         1 + MESSAGE_WINDOW_TILE_COUNT + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT
#define BASE_TILE_2         BASE_TILE_1 + BASE_TILE_INCREMENT
#define BASE_TILE_3         BASE_TILE_2 + BASE_TILE_INCREMENT
#define BASE_TILE_4         BASE_TILE_3 + BASE_TILE_INCREMENT
#define BASE_TILE_5         BASE_TILE_4 + BASE_TILE_INCREMENT
#define BASE_TILE_6         BASE_TILE_5 + BASE_TILE_INCREMENT
#define BASE_TILE_7         BASE_TILE_6 + BASE_TILE_INCREMENT
#define BASE_TILE_8         BASE_TILE_7 + BASE_TILE_INCREMENT
#define BASE_TILE_9         BASE_TILE_8 + BASE_TILE_INCREMENT
#define BASE_TILE_INCREMENT (WINDOW_WIDTH) * WINDOW_HEIGHT
#define WINDOW_HEIGHT       2
#define WINDOW_WIDTH        4

void SealGraphics_InitFontOAMManager(SealAppManager *appMan);
void SealGraphics_FreeFonts(SealAppManager *appMan);
void SealGraphics_LoadPaletteBuffer(SealAppManager *appMan);
void ov76_0223B940(SealAppManager *appMan);
void SealGraphics_SetFontOAMDrawFlag(SealAppManager *appMan, BOOL flag);
void ov76_0223B98C(SealAppManager *appMan, int index, int param2, int param3, int param4);
void SealGraphics_PopulateSealPage(SealAppManager *appMan, int pageCutoff);
void SealGraphics_LoadSealSprites(SealAppManager *appMan);
void SealGraphics_InitSealSprites(SealAppManager *appMan);
void SealGraphics_FreeSealSprites(SealAppManager *appMan);
void SealGraphics_TaskStart(SealAppManager *appMan, s8 scale, int steps);
G3DPipelineBuffers *SealGraphics_PipelineInit(void);
void SealGraphics_G3DSetupCB(void);
void ov76_0223BF10(void);
void SealGraphics_SwapBuffers(void);
void SealGraphics_OpenCapsuleSelectionMenu(BgConfig *bgConfig, Window *window, int bgLayer, SealAppManager *appMan, int capsuleIndex);
void SealGraphics_GetCapsuleGridLocation(int index, s16 *x, s16 *y);
void ov76_0223C110(SealAppManager *appMan);
void SealGraphics_InitPokemonSprites(SealAppManager *appMan);
void SealGraphics_SetPokemonSpritesPosition(SealAppManager *appMan);
void SealGraphics_TickPokemonSprites(SealAppManager *appMan);
void SealGraphics_FreePokemonSprites(SealAppManager *appMan);
void ov76_0223C354(SealAppManager *appMan);
void SealGraphics_InitSpriteManager(SealGraphicsManager *graphicsMan);
void SealGraphics_FreeSpriteSystem(SealGraphicsManager *graphicsMan);
void SealGraphics_LoadSelectionResources(SealAppManager *appMan, NARC *narc);
void SealGraphics_InitSelectionIndicator(SealAppManager *appMan);
void SealGraphics_TickSelectionIndicator(SealAppManager *appMan);
void SealGraphics_SetSelectionIndicatorDrawFlags(SealAppManager *appMan, int flag);
void SealGraphics_FreeSelectionIndicator(SealAppManager *appMan);
void SealGraphics_LoadCapsuleSprites(SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *paletteData, int memberIdx1, int memberIdx2, int memberIdx3, int memberIdx4, int vramType, int bufferId, int paletteIdx, NARC *narc);
void SealGraphics_InitCapsuleSprites(SealAppManager *appMan, NARC *narc);
void SealGraphics_SetCapsuleSpriteAnim(SealAppManager *appMan);
void SealGraphics_SwapCapsules(SealAppManager *appMan, int capsuleIdx1, int capsuleIdx2);
void SealGraphics_TickCursor(SealAppManager *appMan);
void SealGraphics_FreeCapsuleSprites(SealAppManager *appMan);
void SealGraphics_LoadMainWindow(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame);
void SealGraphics_LoadSubWindow(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame);
void SealGraphics_PrintMessage(Window *window, int entryID);
void SealGraphics_InitMessageWindow(BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile);
void SealGraphics_InitWindows(SealAppManager *appMan);
void SealGraphics_UpdateAllSealCountText(SealAppManager *appMan);
void SealGraphics_UpdateSealCountText(SealAppManager *appMan, int index);
void SealGraphics_FreeSealCountWindows(SealAppManager *appMan);
void SealGraphics_UpdateSealNameText(Window *window, int entryID);
void SealGraphics_StartDisplay(void);
void SealGraphics_FadeIn(void);
void SealGraphics_FadeOut(void);
void ov76_0223CE84(SealAppManager *appMan, NARC *narc);
void ov76_0223CF24(SealAppManager *appMan, NARC *narc);
void ov76_0223CF88(SealAppManager *appMan, NARC *narc);
void ov76_0223CFEC(SealAppManager *appMan, NARC *narc);
void ov76_0223D16C(SealAppManager *appMan);
void SealGraphics_SetSealSpritesDrawFlag(SealAppManager *appMan, int flag);
void SealGraphics_Unused(SealAppManager *appMan);
void SealGraphics_FreeUISprites(SealAppManager *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_GRAPHICS_H
