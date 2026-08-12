#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_GRAPHICS_H

#include "applications/capsule_menu/defs.h"

#include "bg_window.h"
#include "g3d_pipeline.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

#define CAPSULE_BASE_TILE_1         1 + MESSAGE_WINDOW_TILE_COUNT + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT
#define CAPSULE_BASE_TILE_2         CAPSULE_BASE_TILE_1 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_3         CAPSULE_BASE_TILE_2 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_4         CAPSULE_BASE_TILE_3 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_5         CAPSULE_BASE_TILE_4 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_6         CAPSULE_BASE_TILE_5 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_7         CAPSULE_BASE_TILE_6 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_8         CAPSULE_BASE_TILE_7 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_9         CAPSULE_BASE_TILE_8 + CAPSULE_BASE_TILE_INCREMENT
#define CAPSULE_BASE_TILE_INCREMENT (CAPSULE_WINDOW_WIDTH) * CAPSULE_WINDOW_HEIGHT
#define CAPSULE_WINDOW_HEIGHT       2
#define CAPSULE_WINDOW_WIDTH        4

void CapsuleGraphics_InitFontOAMManager(CapsuleAppManager *appMan);
void CapsuleGraphics_FreeFonts(CapsuleAppManager *appMan);
void CapsuleGraphics_LoadPaletteBuffer(CapsuleAppManager *appMan);
void ov76_0223B940(CapsuleAppManager *appMan);
void CapsuleGraphics_SetFontOAMDrawFlag(CapsuleAppManager *appMan, BOOL flag);
void ov76_0223B98C(CapsuleAppManager *appMan, int index, int param2, int param3, int param4);
void CapsuleGraphics_PopulateSealPage(CapsuleAppManager *appMan, int pageCutoff);
void CapsuleGraphics_LoadPageSprites(CapsuleAppManager *appMan);
void CapsuleGraphics_InitPageSprites(CapsuleAppManager *appMan);
void CapsuleGraphics_FreePageSprites(CapsuleAppManager *appMan);
void CapsuleGraphics_TaskStart(CapsuleAppManager *appMan, s8 scale, int steps);
G3DPipelineBuffers *CapsuleGraphics_PipelineInit(void);
void CapsuleGraphics_G3DSetupCB(void);
void CapsuleGraphics_AllocTexPlttVram(void);
void CapsuleGraphics_SwapBuffers(void);
void CapsuleGraphics_OpenCapsuleSelectionMenu(BgConfig *bgConfig, Window *window, int bgLayer, CapsuleAppManager *appMan, int capsuleIndex);
void CapsuleGraphics_GetCapsuleGridLocation(int index, s16 *x, s16 *y);
void CapsuleGraphics_LoadPokemonIcons(CapsuleAppManager *appMan);
void CapsuleGraphics_InitPokemonIcons(CapsuleAppManager *appMan);
void CapsuleGraphics_SetPokemonSpritesPosition(CapsuleAppManager *appMan);
void CapsuleGraphics_TickPokemonSprites(CapsuleAppManager *appMan);
void CapsuleGraphics_FreePokemonSprites(CapsuleAppManager *appMan);
void CapsuleGraphics_AssignCapsules(CapsuleAppManager *appMan);
void CapsuleGraphics_InitSpriteManager(CapsuleGraphicsManager *graphicsMan);
void CapsuleGraphics_FreeSpriteSystem(CapsuleGraphicsManager *graphicsMan);
void CapsuleGraphics_LoadSelectionResources(CapsuleAppManager *appMan, NARC *narc);
void CapsuleGraphics_InitSelectionIndicator(CapsuleAppManager *appMan);
void CapsuleGraphics_TickSelectionIndicator(CapsuleAppManager *appMan);
void CapsuleGraphics_SetSelectionIndicatorDrawFlags(CapsuleAppManager *appMan, int flag);
void CapsuleGraphics_FreeSelectionIndicator(CapsuleAppManager *appMan);
void CapsuleGraphics_LoadCapsuleSprites(SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *paletteData, int memberIdx1, int memberIdx2, int memberIdx3, int memberIdx4, int vramType, int bufferId, int paletteIdx, NARC *narc);
void CapsuleGraphics_InitCapsuleSprites(CapsuleAppManager *appMan, NARC *narc);
void CapsuleGraphics_SetCapsuleSpriteAnim(CapsuleAppManager *appMan);
void CapsuleGraphics_SwapCapsules(CapsuleAppManager *appMan, int capsuleIdx1, int capsuleIdx2);
void CapsuleGraphics_TickCursor(CapsuleAppManager *appMan);
void CapsuleGraphics_FreeCapsuleSprites(CapsuleAppManager *appMan);
void CapsuleGraphics_LoadMainWindow(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame);
void CapsuleGraphics_LoadSubWindow(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame);
void CapsuleGraphics_PrintMessage(Window *window, int entryID);
void CapsuleGraphics_InitMessageWindow(BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile);
void CapsuleGraphics_InitWindows(CapsuleAppManager *appMan);
void CapsuleGraphics_UpdateAllSealCountText(CapsuleAppManager *appMan);
void CapsuleGraphics_UpdateSealCountText(CapsuleAppManager *appMan, int index);
void CapsuleGraphics_FreeSealCountWindows(CapsuleAppManager *appMan);
void CapsuleGraphics_UpdateSealNameText(Window *window, int entryID);
void CapsuleGraphics_StartDisplay(void);
void CapsuleGraphics_FadeIn(void);
void CapsuleGraphics_FadeOut(void);
void CapsuleGraphics_InitBgLayer2Tilemap(CapsuleAppManager *appMan, NARC *narc);
void CapsuleGraphics_LoadBgLayer5Tilemap(CapsuleAppManager *appMan, NARC *narc);
void CapsuleGraphics_LoadBgLayer7Tilemap(CapsuleAppManager *appMan, NARC *narc);
void CapsuleGraphics_LoadCapsuleUI(CapsuleAppManager *appMan, NARC *narc);
void CapsuleGraphics_InitCapsuleUI(CapsuleAppManager *appMan);
void CapsuleGraphics_SetPageSpritesDrawFlag(CapsuleAppManager *appMan, int flag);
void CapsuleGraphics_Unused(CapsuleAppManager *appMan);
void CapsuleGraphics_FreeUISprites(CapsuleAppManager *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_GRAPHICS_H
