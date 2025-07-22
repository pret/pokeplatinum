#ifndef POKEPLATINUM_OV97_MAIN_MENU_UTIL_H
#define POKEPLATINUM_OV97_MAIN_MENU_UTIL_H

#include "overlay097/mystery_gift_app.h"

#include "bg_window.h"
#include "list_menu.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "palette.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

enum MainMenuUtilSavingState {
    MAIN_MENU_UTIL_INIT_SAVING,
    MAIN_MENU_UTIL_SAVING,
    MAIN_MENU_UTIL_SAVE_SUCCESS,
    MAIN_MENU_UTIL_SAVE_FAILURE,
    MAIN_MENU_UTIL_SAVING_IDLE,
};

typedef struct MainMenuSpriteManager {
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourceCollection *resourceCollections[SPRITE_RESOURCE_MAX];
    SpriteResource *resources[DS_SCREEN_MAX][SPRITE_RESOURCE_MAX];
    SpriteResourcesHeader resourceHeaders[DS_SCREEN_MAX];
    int unused_220;
    int unused_224;
    int unused_228;
    int unused_22C;
    int unused_230;
    int unused_234;
} MainMenuSpriteManager;

typedef struct MainMenuWindow {
    BOOL scrollable;
    BOOL drawFrame;
    BOOL clearBeforePrinting;
    BOOL textRightAligned;
    Window *window;
    StringTemplate *strTemplate;
    int width;
    int height;
    int textXOffset;
    int textYOffset;
    int baseTile;
    enum BgLayer bgLayer;
    enum Palette textPltt;
    int textBank;
    int frameBaseTile;
    enum Palette framePltt;
    enum Font font;
    TextColor textColor;
    u8 backgroundColorIdx;
    int textEntryID;
    int renderDelay;
} MainMenuWindow;

void MainMenuUtil_Init(enum HeapId heapID);
void *MainMenuUtil_InitAppAndFadeToBlack(ApplicationManager *appMan, enum HeapId heapID, int appDataSize, enum HeapSize heapSize);
void MainMenuUtil_InitBG(BgConfig *bgConfig, enum BgLayer bgLayer, u8 screenSize, u32 screenBase, u32 charBase);
void MainMenuUtil_SetFadeToWhite(BOOL enable);
void MainMenuUtil_StartScreenFadeToState(enum FadeType fadeType, int destState, int *state, int waitState);
void MainMenuUtil_CheckScreenFadeDone(int *state);
void MainMenuUtil_InitWindow(MainMenuWindow *mainMenuWindow, Window *window, enum Palette textPalette, enum TextBank textBank, int baseTile, enum Palette framePalette);
void MainMenuWindow_SetDimensionsAndBasetile(MainMenuWindow *window, int width, int height, int baseTile);
void MainMenuWindow_SetScrollableAndFont(MainMenuWindow *window, BOOL scrollable, enum Font font);
void MainMenuWindow_SetTextOffsets(MainMenuWindow *window, int xOffset, int yOffset);
int MainMenuUtil_ShowWindowAtPos(BgConfig *param0, MainMenuWindow *window, int xPos, int yPos, int textEntryID);
int MainMenuWindow_GetSize(MainMenuWindow *window);
void MainMenuUtil_InitCharPlttTransferBuffers(void);
BOOL MainMenuUtil_CheckSpriteLoaderInit(void);
void MainMenuUtil_InitSpriteLoader(void);
MainMenuSpriteManager *MainMenuUtil_GetSpriteManager(void);
void MainMenuUtil_LoadSprite(enum NarcID narcID, int tilesID, int plttID, int cellID, int animID, enum DSScreen screen);
void MainMenuUtil_SetSubScreenViewRect(fx32 x, fx32 y);
void MainMenuUtil_UpdateSpritesSkipGift(void);
void MainMenuUtil_UpdateSprites(int skipDrawGift);
Sprite *MainMenuUtil_InitSprite(enum DSScreen screen, Sprite *sprite, int x, int y, int animationIdx);
void MainMenuUtil_FreeSprites(void);
u32 MainMenuUtil_CalcMysteryGiftVersionBit(enum Version version);
void MainMenuUtil_LoadGiftSprite(BgConfig *bgConfig, WonderCard *wonderCard);
void MainMenuUtil_EncryptWonderCard(MysteryGiftEventData *eventData, WonderCard *wonderCard, enum HeapId heapID);
void MainMenuUtil_DecryptReceivedWonderCard(MysteryGiftEventData *param0, WonderCard *param1, enum HeapId heapID);
void MainMenuUtil_ListMenuCursorCB(ListMenu *param0, u32 param1, u8 param2);
void MainMenuUtil_ToggleTerminateOnGBACartRemoved(BOOL enable);
void MainMenuUtil_UnsetGBACartIRQFunc(void);
void MainMenuUtil_InitSaving(SaveData *saveData);
enum SaveResult MainMenuUtil_SaveState(void);
void MainMenuUtil_ContinueSaving(void);
void MainMenuUtil_CancelSave(void);
int MainMenuUtil_GetSavingStatus(void);

#endif // POKEPLATINUM_OV97_MAIN_MENU_UTIL_H
