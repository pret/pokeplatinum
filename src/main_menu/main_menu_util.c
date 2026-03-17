#include "main_menu/main_menu_util.h"

#include <crypto.h>
#include <nitro.h>
#include <string.h>

#include "constants/forms.h"
#include "constants/graphics.h"
#include "constants/narc.h"
#include "constants/species.h"
#include "generated/items.h"

#include "main_menu/mystery_gift_app.h"

#include "assert.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "character_sprite.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "list_menu.h"
#include "message.h"
#include "message_util.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "render_oam.h"
#include "render_window.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_02033200.h"
#include "versions.h"
#include "vram_transfer.h"

#include "res/graphics/main_menu/main_menu_graphics.naix"

#define WONDER_CARD_ENCRYPTION_MAGIC 0xD679

typedef struct MainMenuUtilManager MainMenuUtilManager;
typedef void (*MainMenuUtilVBlankFuncPtr)(MainMenuUtilManager *utilMan);

struct MainMenuUtilManager {
    BgConfig *bgConfig;
    BOOL initialized;
    enum HeapID heapID;
    int screenFadeQueuedState;
    BOOL fadeToWhite;
    int savingStatus;
    SaveData *saveData;
    void *unused_1C;
    int unused_20;
    BOOL unused_24[4];
    MainMenuSpriteManager spriteManager;
    Sprite *mysteryGiftSprite;
    int giftSpriteDelay;
    fx32 bottomScreenTopY;
    u8 monSpriteBuffer[MON_SPRITE_FRAME_MAX_SIZE_BYTES];
    PokemonSpriteTemplate monSpriteTemplate;
    MainMenuUtilVBlankFuncPtr onVBlank;
};

static void TransferGraphicsOnVBlank(void *unused);

static MainMenuUtilManager sMainMenuUtilManager;

void MainMenuUtil_Init(enum HeapID heapID)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    memset(utilMan, 0, sizeof(MainMenuUtilManager));

    utilMan->initialized = TRUE;
    utilMan->heapID = heapID;
}

void *MainMenuUtil_InitAppAndFadeToBlack(ApplicationManager *appMan, enum HeapID heapID, int appDataSize, enum HeapSize heapSize)
{
    void *newAppData;

    Heap_Create(HEAP_ID_APPLICATION, heapID, heapSize);
    newAppData = ApplicationManager_NewData(appMan, appDataSize, heapID);

    memset(newAppData, 0, appDataSize);

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

    return newAppData;
}

void MainMenuUtil_InitBGLayer(BgConfig *bgConfig, enum BgLayer bgLayer, u8 screenSize, u32 screenBase, u32 charBase)
{
    BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE
    };

    bgTemplate.screenSize = screenSize;

    switch (screenSize) {
    case BG_SCREEN_SIZE_256x256:
        bgTemplate.bufferSize = 0x800;
        break;
    case BG_SCREEN_SIZE_256x512:
        bgTemplate.bufferSize = 0x1000;
        break;
    case BG_SCREEN_SIZE_512x256:
        bgTemplate.bufferSize = 0x1000;
        break;
    case BG_SCREEN_SIZE_512x512:
        bgTemplate.bufferSize = 0x2000;
        break;
    }

    bgTemplate.screenBase = screenBase / 0x800;
    bgTemplate.charBase = charBase / 0x4000;

    Bg_InitFromTemplate(bgConfig, bgLayer, &bgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, bgLayer);
}

void MainMenuUtil_SetFadeToWhite(BOOL enable)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;
    utilMan->fadeToWhite = enable;
}

void MainMenuUtil_StartScreenFadeToState(enum FadeType fadeType, int destState, int *state, int waitState)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    if (utilMan->fadeToWhite == FALSE) {
        StartScreenFade(FADE_BOTH_SCREENS, fadeType, fadeType, COLOR_BLACK, 6, 1, utilMan->heapID);
    } else {
        StartScreenFade(FADE_BOTH_SCREENS, fadeType, fadeType, COLOR_WHITE, 6, 1, utilMan->heapID);
    }

    if (state) {
        *state = waitState;
    }

    utilMan->screenFadeQueuedState = destState;
}

void MainMenuUtil_CheckScreenFadeDone(int *state)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    if (IsScreenFadeDone()) {
        *state = utilMan->screenFadeQueuedState;
    }
}

void MainMenuUtil_InitWindow(MainMenuWindow *mainMenuWindow, Window *window, enum Palette textPalette, enum TextBank textBank, int baseTile, enum Palette framePalette)
{
    memset(mainMenuWindow, 0, sizeof(MainMenuWindow));

    mainMenuWindow->drawFrame = TRUE;
    mainMenuWindow->clearBeforePrinting = TRUE;
    mainMenuWindow->textEntryID = -1;
    mainMenuWindow->window = window;
    mainMenuWindow->textPltt = textPalette;
    mainMenuWindow->textBank = textBank;
    mainMenuWindow->frameBaseTile = baseTile;
    mainMenuWindow->framePltt = framePalette;
    mainMenuWindow->bgLayer = BG_LAYER_MAIN_0;
    mainMenuWindow->font = FONT_SYSTEM;
    mainMenuWindow->textColor = TEXT_COLOR(1, 2, 15);
    mainMenuWindow->backgroundColorIdx = 15;
    mainMenuWindow->scrollable = FALSE;
    mainMenuWindow->textXOffset = mainMenuWindow->textYOffset = 0;
    mainMenuWindow->strTemplate = NULL;
    mainMenuWindow->renderDelay = 0xff;
}

void MainMenuWindow_SetDimensionsAndBasetile(MainMenuWindow *window, int width, int height, int baseTile)
{
    window->width = width;
    window->height = height;
    window->baseTile = baseTile;
}

void MainMenuWindow_SetScrollableAndFont(MainMenuWindow *window, BOOL scrollable, enum Font font)
{
    window->scrollable = scrollable;
    window->font = font;
}

void MainMenuWindow_SetTextOffsets(MainMenuWindow *window, int xOffset, int yOffset)
{
    window->textXOffset = xOffset;
    window->textYOffset = yOffset;
}

static int MainMenuWindow_PrintText(MainMenuWindow *window, int textEntryID)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;
    int printerID;

    if (textEntryID != -1 && window->textEntryID != textEntryID) {
        window->textEntryID = textEntryID;

        if (window->clearBeforePrinting == TRUE) {
            Window_FillTilemap(window->window, window->backgroundColorIdx);
        }

        if (window->textEntryID != -1) {
            StringTemplate *strTemplate;
            MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, window->textBank, utilMan->heapID);

            if (window->strTemplate == NULL) {
                strTemplate = StringTemplate_Default(utilMan->heapID);
            } else {
                strTemplate = window->strTemplate;
            }

            String *string = MessageUtil_ExpandedString(strTemplate, msgLoader, window->textEntryID, utilMan->heapID);

            if (window->textRightAligned == FALSE) {
                printerID = Text_AddPrinterWithParamsAndColor(window->window, window->font, string, window->textXOffset, window->textYOffset, window->renderDelay, window->textColor, NULL);
            } else {
                int textWidth = Font_CalcStringWidth(window->font, string, Font_GetAttribute(window->font, FONTATTR_LETTER_SPACING));
                int windowWidth = Window_GetWidth(window->window) * TILE_WIDTH_PIXELS - textWidth;
                printerID = Text_AddPrinterWithParamsAndColor(window->window, window->font, string, windowWidth, window->textYOffset, window->renderDelay, window->textColor, NULL);

                window->textRightAligned = FALSE;
            }

            String_Free(string);

            if (window->strTemplate == NULL) {
                StringTemplate_Free(strTemplate);
            }

            MessageLoader_Free(msgLoader);
        }
    }

    window->renderDelay = TEXT_SPEED_NO_TRANSFER;
    return printerID;
}

int MainMenuUtil_ShowWindowAtPos(BgConfig *param0, MainMenuWindow *window, int xPos, int yPos, int textEntryID)
{
    int printerID;

    if (window->window->bgConfig == NULL) {
        Window_Add(param0, window->window, window->bgLayer, xPos, yPos, window->width, window->height, window->textPltt, window->baseTile);
        printerID = MainMenuWindow_PrintText(window, textEntryID);
    } else {
        if (xPos != -1) {
            Window_SetXPos(window->window, xPos);
        }

        if (yPos != -1) {
            Window_SetYPos(window->window, yPos);
        }

        printerID = MainMenuWindow_PrintText(window, textEntryID);
    }

    if (window->drawFrame == TRUE) {
        if (window->scrollable == FALSE) {
            Window_DrawStandardFrame(window->window, FALSE, window->frameBaseTile, window->framePltt);
        } else {
            Window_DrawMessageBoxWithScrollCursor(window->window, FALSE, window->frameBaseTile, window->framePltt);
        }
    }

    return printerID;
}

int MainMenuWindow_GetSize(MainMenuWindow *window)
{
    return window->width * window->height;
}

void MainMenuUtil_InitCharPlttTransferBuffers(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;
    CharTransferTemplate charTransTemplte = {
        .maxTasks = 40,
        .sizeMain = 4096,
        .sizeSub = 4096,
        .heapID = HEAP_ID_SYSTEM,
    };

    charTransTemplte.heapID = utilMan->heapID;

    CharTransfer_InitWithVramModes(&charTransTemplte, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    PlttTransfer_Init(30, utilMan->heapID);

    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

BOOL MainMenuUtil_CheckSpriteLoaderInit(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    return !!utilMan->spriteManager.spriteList;
}

void MainMenuUtil_InitSpriteLoader(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, utilMan->heapID);
    utilMan->spriteManager.spriteList = SpriteList_InitRendering(128, &utilMan->spriteManager.renderer, utilMan->heapID);
    SetSubScreenViewRect(&utilMan->spriteManager.renderer, 0, 256 * FX32_ONE);

    utilMan->bottomScreenTopY = HW_LCD_HEIGHT << FX32_SHIFT;

    for (int i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        utilMan->spriteManager.resourceCollections[i] = SpriteResourceCollection_New(32, i, utilMan->heapID);
    }
}

MainMenuSpriteManager *MainMenuUtil_GetSpriteManager(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    GF_ASSERT(utilMan != NULL);
    GF_ASSERT(utilMan->spriteManager.spriteList != NULL);

    return &utilMan->spriteManager;
}

void MainMenuUtil_LoadSprite(enum NarcID narcID, int tilesID, int plttID, int cellID, int animID, enum DSScreen screen)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;
    int vramType = screen == DS_SCREEN_MAIN ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
    int compressed = TRUE;

    if (narcID == NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON) {
        compressed = FALSE;
    }

    if (tilesID != -1) {
        utilMan->spriteManager.resources[screen][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_CHAR], narcID, tilesID, compressed, screen, vramType, utilMan->heapID);
    }

    if (plttID != -1) {
        utilMan->spriteManager.resources[screen][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_PLTT], narcID, plttID, FALSE, screen, vramType, PLTT_3, utilMan->heapID);
    }

    if (cellID != -1) {
        utilMan->spriteManager.resources[screen][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_CELL], narcID, cellID, compressed, screen, SPRITE_RESOURCE_CELL, utilMan->heapID);
    }

    if (animID != -1) {
        utilMan->spriteManager.resources[screen][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_ANIM], narcID, animID, compressed, screen, SPRITE_RESOURCE_ANIM, utilMan->heapID);
    }

    SpriteTransfer_RequestChar(utilMan->spriteManager.resources[screen][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpace(utilMan->spriteManager.resources[screen][SPRITE_RESOURCE_PLTT]);
    SpriteResourcesHeader_Init(&utilMan->spriteManager.resourceHeaders[screen], screen, screen, screen, screen, -1, -1, FALSE, 0, utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_CHAR], utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_PLTT], utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_CELL], utilMan->spriteManager.resourceCollections[SPRITE_RESOURCE_ANIM], NULL, NULL);

    if (screen == DS_SCREEN_MAIN) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    } else {
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    }

    SetVBlankCallback(TransferGraphicsOnVBlank, NULL);
}

void MainMenuUtil_SetSubScreenViewRect(fx32 x, fx32 y)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    SetSubScreenViewRect(&utilMan->spriteManager.renderer, x, y);
    utilMan->bottomScreenTopY = y;
}

void MainMenuUtil_UpdateSprites(void)
{
    MainMenuUtil_UpdateSpritesForAnimStatus(MG_ANIMATION_STATUS_DONE);
}

void MainMenuUtil_UpdateSpritesForAnimStatus(enum MysteryGiftAnimationStatus animStatus)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    if (utilMan->mysteryGiftSprite) {
        VecFx32 *spritePos;

        if (utilMan->giftSpriteDelay == 0) {
            if (Sprite_GetDrawFlag(utilMan->mysteryGiftSprite) == FALSE && animStatus == MG_ANIMATION_STATUS_DONE) {
                Sprite_SetDrawFlag(utilMan->mysteryGiftSprite, TRUE);
            }

            spritePos = (VecFx32 *)Sprite_GetPosition(utilMan->mysteryGiftSprite);

            if (spritePos->y < 384 * FX32_ONE) {
                spritePos->y += FX32_ONE * 3;
            }
        } else {
            utilMan->giftSpriteDelay--;
        }
    }

    if (utilMan->spriteManager.spriteList != NULL) {
        SpriteList_Update(utilMan->spriteManager.spriteList);
    }
}

Sprite *MainMenuUtil_InitSprite(enum DSScreen screen, Sprite *sprite, int x, int y, int animationIdx)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    if (sprite == NULL) {
        AffineSpriteListTemplate template;

        template.list = utilMan->spriteManager.spriteList;
        template.resourceData = &utilMan->spriteManager.resourceHeaders[screen];
        template.position.z = 0;
        template.affineScale.x = FX32_ONE;
        template.affineScale.y = FX32_ONE;
        template.affineScale.z = FX32_ONE;
        template.affineZRotation = 0;
        template.position.x = FX32_ONE * x;
        template.position.y = FX32_ONE * y;
        template.priority = 10;
        template.vramType = screen == DS_SCREEN_MAIN ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
        template.heapID = utilMan->heapID;

        if (template.vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
            template.position.y += utilMan->bottomScreenTopY;
        }

        sprite = SpriteList_AddAffine(&template);
    }

    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetExplicitPriority(sprite, 0);
    Sprite_SetAnim(sprite, animationIdx);
    Sprite_SetDrawFlag(sprite, TRUE);

    return sprite;
}

void MainMenuUtil_FreeSprites(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;
    MainMenuSpriteManager *spriteMan = &utilMan->spriteManager;

    if (utilMan->mysteryGiftSprite) {
        Sprite_Delete(utilMan->mysteryGiftSprite);
        utilMan->mysteryGiftSprite = NULL;
    }

    if (spriteMan->resources[DS_SCREEN_MAIN][SPRITE_RESOURCE_CHAR]) {
        SpriteTransfer_ResetCharTransfer(spriteMan->resources[DS_SCREEN_MAIN][SPRITE_RESOURCE_CHAR]);
    }

    if (spriteMan->resources[DS_SCREEN_SUB][SPRITE_RESOURCE_CHAR]) {
        SpriteTransfer_ResetCharTransfer(spriteMan->resources[DS_SCREEN_SUB][SPRITE_RESOURCE_CHAR]);
    }

    if (spriteMan->resources[DS_SCREEN_MAIN][SPRITE_RESOURCE_PLTT]) {
        SpriteTransfer_ResetPlttTransfer(spriteMan->resources[DS_SCREEN_MAIN][SPRITE_RESOURCE_PLTT]);
    }

    if (spriteMan->resources[DS_SCREEN_SUB][SPRITE_RESOURCE_PLTT]) {
        SpriteTransfer_ResetPlttTransfer(spriteMan->resources[DS_SCREEN_SUB][SPRITE_RESOURCE_PLTT]);
    }

    for (int i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        SpriteResourceCollection_Delete(spriteMan->resourceCollections[i]);
        spriteMan->resourceCollections[i] = NULL;
    }

    SpriteList_Delete(spriteMan->spriteList);
    spriteMan->spriteList = NULL;

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    SetVBlankCallback(NULL, NULL);
}

/*
 * This function is actually incorrect, since the games check against (1 << version)
 * to know whether the mystery gift is valid for the current game.
 * This is however only ever used to set the bitmask for the Ranger Manaphy egg,
 * and since the wonder card is never saved (only the PGT), it doesn't matter.
 */
u32 MainMenuUtil_CalcMysteryGiftVersionBit(enum Version version)
{
    return 1 << (version - VERSION_DIAMOND);
}

static void TransferGraphicsOnVBlank(void *unused)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    if (utilMan->onVBlank) {
        utilMan->onVBlank(utilMan);
        utilMan->onVBlank = NULL;
    }

    VramTransfer_Process();
    RenderOam_Transfer();

    if (utilMan->bgConfig) {
        Bg_RunScheduledUpdates(utilMan->bgConfig);
    }

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int CalcPlttOffsetForGiftType(enum MysteryGiftType giftType)
{
    struct {
        u8 giftType;
        u8 paletteOffset;
    } giftTypeToPlttOffset[] = {
        { MYST_GIFT_NONE, 0 },
        { MYST_GIFT_POKEMON, 1 },
        { MYST_GIFT_EGG, 1 },
        { MYST_GIFT_ITEM, 2 },
        { MYST_GIFT_BATTLE_REG, 3 },
        { MYST_GIFT_DECORATION_GOOD, 2 },
        { MYST_GIFT_COSMETICS, 2 },
        { MYST_GIFT_MANAPHY_EGG, 0 },
        { MYST_GIFT_MEMBER_CARD, 5 },
        { MYST_GIFT_OAKS_LETTER, 5 },
        { MYST_GIFT_AZURE_FLUTE, 5 },
        { MYST_GIFT_POKETCH_APP, 4 },
        { MYST_GIFT_SECRET_KEY, 5 },
        { MYST_GIFT_UNKNOWN, 5 },
        { -1 },
    };

    for (int i = 0; giftTypeToPlttOffset[i].giftType != -1; i++) {
        if (giftTypeToPlttOffset[i].giftType == giftType) {
            return giftTypeToPlttOffset[i].paletteOffset;
        }
    }

    return 0;
}

static void LoadPokemonSprite(Sprite *sprite, Pokemon *mon, enum Species species, int form, u8 *buffer, PokemonSpriteTemplate *monSpriteTemplate)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    enum Gender monGender = Pokemon_GetGender(mon);
    BOOL shiny = Pokemon_IsShiny(mon);

    BuildPokemonSpriteTemplate(monSpriteTemplate, species, monGender, FACE_FRONT, shiny, form, 0);

    u32 personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
    CharacterSprite_LoadPokemonSpriteRect(monSpriteTemplate->narcID, monSpriteTemplate->character, utilMan->heapID, 0, 0, 10, 10, buffer, personality, FALSE, FACE_FRONT, species);

    DC_FlushRange(buffer, MON_SPRITE_FRAME_MAX_SIZE_BYTES);

    NNSG2dImageProxy *imageProxy = Sprite_GetImageProxy(sprite);
    u32 imageLocation = NNS_G2dGetImageLocation(imageProxy, NNS_G2D_VRAM_TYPE_2DSUB);

    GXS_LoadOBJ(buffer, imageLocation + MON_SPRITE_FRAME_MAX_SIZE_BYTES, MON_SPRITE_FRAME_MAX_SIZE_BYTES);
    NNSG2dImagePaletteProxy *plttProxy = Sprite_GetPaletteProxy(sprite);
    u32 plttLocation = NNS_G2dGetImagePaletteLocation(plttProxy, NNS_G2D_VRAM_TYPE_2DSUB);

    Graphics_LoadPalette(monSpriteTemplate->narcID, monSpriteTemplate->palette, PAL_LOAD_SUB_OBJ, PLTT_OFFSET(3) + plttLocation, PALETTE_SIZE_BYTES, utilMan->heapID);
}

static void LoadGiftBoxSprite(MainMenuUtilManager *utilMan, enum MysteryGiftType giftType, WonderCard *wonderCard)
{
    MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, giftbox_NCGR_lz, giftbox_NCLR, giftbox_cell_NCER_lz, giftbox_anim_NANR_lz, DS_SCREEN_SUB);
    MainMenuUtil_SetSubScreenViewRect(0 * FX32_ONE, 256 * FX32_ONE);

    utilMan->mysteryGiftSprite = MainMenuUtil_InitSprite(DS_SCREEN_SUB, utilMan->mysteryGiftSprite, HW_LCD_WIDTH / 2, 0, 0);
}

static void LoadSpriteForMonGift(MainMenuUtilManager *param0, enum MysteryGiftType giftType, WonderCard *wonderCard)
{
    MainMenuUtil_LoadSprite(NARC_INDEX_DATA__TRADELIST, 10, 0, 11, 12, DS_SCREEN_SUB);
    MainMenuUtil_SetSubScreenViewRect(0 * FX32_ONE, 256 * FX32_ONE);

    param0->mysteryGiftSprite = MainMenuUtil_InitSprite(DS_SCREEN_SUB, param0->mysteryGiftSprite, HW_LCD_WIDTH / 2, 0, 1);
    Pokemon *mon = &wonderCard->pgt.data.pokemonGiftData.pokemon;

    switch (giftType) {
    case MYST_GIFT_POKEMON:
    case MYST_GIFT_UNKNOWN:
        LoadPokemonSprite(param0->mysteryGiftSprite, mon, Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), Pokemon_GetValue(mon, MON_DATA_FORM, NULL), param0->monSpriteBuffer, &param0->monSpriteTemplate);
        break;
    case MYST_GIFT_EGG:
        LoadPokemonSprite(param0->mysteryGiftSprite, mon, SPECIES_EGG, EGG_FORM_BASE, param0->monSpriteBuffer, &param0->monSpriteTemplate);
        break;
    case MYST_GIFT_MANAPHY_EGG:
        LoadPokemonSprite(param0->mysteryGiftSprite, mon, SPECIES_EGG, EGG_FORM_MANAPHY, param0->monSpriteBuffer, &param0->monSpriteTemplate);
        break;
    default:
        // Should never be reached
        break;
    }
}

static void LoadItemSprite(MainMenuUtilManager *utilMan, enum MysteryGiftType giftType, WonderCard *wonderCard)
{
    int item;

    switch (giftType) {
    case MYST_GIFT_ITEM:
        item = wonderCard->pgt.data.itemGiftData.item;
        break;
    case MYST_GIFT_MEMBER_CARD:
        item = ITEM_MEMBER_CARD;
        break;
    case MYST_GIFT_OAKS_LETTER:
        item = ITEM_OAKS_LETTER;
        break;
    case MYST_GIFT_AZURE_FLUTE:
        item = ITEM_AZURE_FLUTE;
        break;
    case MYST_GIFT_SECRET_KEY:
        item = ITEM_SECRET_KEY;
        break;
    default:
        // Should never be reached
        break;
    }

    MainMenuUtil_LoadSprite(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), Item_FileID(item, ITEM_FILE_TYPE_PALETTE), Item_IconNCERFile(), Item_IconNANRFile(), DS_SCREEN_SUB);
    MainMenuUtil_SetSubScreenViewRect(0 * FX32_ONE, 256 * FX32_ONE);

    utilMan->mysteryGiftSprite = MainMenuUtil_InitSprite(DS_SCREEN_SUB, utilMan->mysteryGiftSprite, HW_LCD_WIDTH / 2, 0, 0);
}

static void LoadMysteryGiftPalettes(MainMenuUtilManager *utilMan)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, gift_reception_bg_tiles_NCLR, PAL_LOAD_SUB_BG, PLTT_OFFSET(8), 6 * PALETTE_SIZE_BYTES, utilMan->heapID);
}

void MainMenuUtil_LoadGiftSprite(BgConfig *bgConfig, WonderCard *wonderCard)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    enum MysteryGiftType giftType = wonderCard->pgt.type;
    int plttOffset = CalcPlttOffsetForGiftType(giftType);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, gift_reception_bg_tiles_NCGR_lz, bgConfig, BG_LAYER_SUB_1, 0, 10 * 16 * TILE_SIZE_4BPP, TRUE, utilMan->heapID);

    NNSG2dScreenData *screenData;
    void *nscr = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__MYSTERY, gift_reception_bg_NSCR_lz, TRUE, utilMan->heapID, TRUE);

    NNS_G2dGetUnpackedScreenData(nscr, &screenData);

    Bg_LoadTilemapBuffer(bgConfig, BG_LAYER_SUB_1, screenData->rawData, (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) * (HW_LCD_HEIGHT / TILE_HEIGHT_PIXELS) * 2);
    Heap_Free(nscr);

    Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_SUB_1, 0, 0, HW_LCD_WIDTH / TILE_WIDTH_PIXELS, HW_LCD_HEIGHT / TILE_HEIGHT_PIXELS, PLTT_8 + plttOffset);
    Bg_ScheduleTilemapTransfer(bgConfig, BG_LAYER_SUB_1);

    utilMan->onVBlank = LoadMysteryGiftPalettes;
    utilMan->bgConfig = bgConfig;

    switch (giftType) {
    case MYST_GIFT_BATTLE_REG:
    case MYST_GIFT_DECORATION_GOOD:
    case MYST_GIFT_COSMETICS:
    case MYST_GIFT_POKETCH_APP:
        LoadGiftBoxSprite(utilMan, giftType, wonderCard);
        break;
    case MYST_GIFT_MANAPHY_EGG:
        utilMan->giftSpriteDelay = 120;
    case MYST_GIFT_POKEMON:
    case MYST_GIFT_EGG:
    case MYST_GIFT_UNKNOWN:
        LoadSpriteForMonGift(utilMan, giftType, wonderCard);
        break;
    case MYST_GIFT_ITEM:
    case MYST_GIFT_MEMBER_CARD:
    case MYST_GIFT_OAKS_LETTER:
    case MYST_GIFT_AZURE_FLUTE:
    case MYST_GIFT_SECRET_KEY:
        LoadItemSprite(utilMan, giftType, wonderCard);
        break;
    default:
        // Should never be reached
        break;
    }

    Sprite_SetDrawFlag(utilMan->mysteryGiftSprite, FALSE);
}

void MainMenuUtil_EncryptWonderCard(MysteryGiftEventData *eventData, WonderCard *wonderCard, enum HeapID heapID)
{

    MATHCRC16Table *crcTable = Heap_Alloc(heapID, sizeof(MATHCRC16Table));
    MATH_CRC16InitTable(crcTable);

    u16 headerCRC = MATH_CalcCRC16(crcTable, &eventData->header, sizeof(MysteryGiftEventHeader));
    Heap_Free(crcTable);

    u16 key[4];
    OS_GetMacAddress((u8 *)key);

    key[3] = key[1];
    key[1] = headerCRC;
    u16 magic = WONDER_CARD_ENCRYPTION_MAGIC;

    for (int i = 0; i < 4; i++) {
        key[i] = key[i] ^ magic;
        magic = key[i];
    }

    CRYPTORC4Context *cryptoCtx = Heap_Alloc(heapID, sizeof(CRYPTORC4Context));

    CRYPTO_RC4Init(cryptoCtx, key, sizeof(key));
    CRYPTO_RC4Encrypt(cryptoCtx, &eventData->wonderCard, sizeof(WonderCard), wonderCard);

    Heap_Free(cryptoCtx);
}

void MainMenuUtil_DecryptReceivedWonderCard(MysteryGiftEventData *eventData, WonderCard *wonderCard, enum HeapID heapID)
{
    MATHCRC16Table *crcTable = Heap_Alloc(heapID, sizeof(MATHCRC16Table));
    MATH_CRC16InitTable(crcTable);

    u16 headerCRC = MATH_CalcCRC16(crcTable, &eventData->header, sizeof(MysteryGiftEventHeader));
    Heap_Free(crcTable);

    u16 key[4];
    const WMBssDesc *bssDesc = sub_02033F3C(0); // Network ID 0 is the sending console
    memcpy(key, bssDesc->bssid, WM_SIZE_BSSID); // BSSID = MAC address of the sending console

    key[3] = key[1];
    key[1] = headerCRC;
    u16 magic = WONDER_CARD_ENCRYPTION_MAGIC;

    for (int i = 0; i < 4; i++) {
        key[i] = key[i] ^ magic;
        magic = key[i];
    }

    CRYPTORC4Context *cryptoCtx = Heap_Alloc(heapID, sizeof(CRYPTORC4Context));

    CRYPTO_RC4Init(cryptoCtx, key, sizeof(key));
    CRYPTO_RC4Encrypt(cryptoCtx, &eventData->wonderCard, sizeof(WonderCard), wonderCard);

    Heap_Free(cryptoCtx);
}

void MainMenuUtil_ListMenuCursorCB(ListMenu *listMenu, u32 index, u8 onInit)
{
    switch (onInit) {
    case FALSE:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    case TRUE:
        break;
    }
}

static void TerminateOnGBACartRemoved(void)
{
    if (PAD_DetectFold() == FALSE && CTRDG_IsAgbCartridge() == FALSE) {
        CTRDG_TerminateForPulledOut();
    }
}

void MainMenuUtil_ToggleTerminateOnGBACartRemoved(BOOL enable)
{
    if (enable == TRUE) {
        OS_DisableIrq();
        OS_SetIrqFunction(OS_IE_CARTRIDGE, TerminateOnGBACartRemoved);
        OS_EnableIrqMask(OS_IE_CARTRIDGE);
        OS_EnableIrq();
    } else {
        OS_DisableIrqMask(OS_IE_CARTRIDGE);
    }
}

static void GBACartRemovedIrqStub(void)
{
    return;
}

void MainMenuUtil_UnsetGBACartIRQFunc(void)
{
    OS_DisableIrq();
    OS_SetIrqFunction(OS_IE_CARTRIDGE, GBACartRemovedIrqStub);
    OS_EnableIrqMask(OS_IE_CARTRIDGE);
    OS_EnableIrq();
}

void MainMenuUtil_InitSaving(SaveData *saveData)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    utilMan->saveData = saveData;
    utilMan->savingStatus = MAIN_MENU_UTIL_INIT_SAVING;
}

enum SaveResult MainMenuUtil_SaveState(void)
{
    enum SaveResult saveResult;
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    switch (utilMan->savingStatus) {
    case MAIN_MENU_UTIL_INIT_SAVING:
        ResetLock(RESET_LOCK_SOFT_RESET);
        SaveData_SaveStateInit(utilMan->saveData, 2);
        utilMan->savingStatus++;
        break;
    case MAIN_MENU_UTIL_SAVING:
        saveResult = SaveData_SaveStateMain(utilMan->saveData);

        if (saveResult == SAVE_RESULT_CORRUPT) {
            utilMan->savingStatus = MAIN_MENU_UTIL_SAVE_FAILURE;
        } else if (saveResult == SAVE_RESULT_OK) {
            utilMan->savingStatus = MAIN_MENU_UTIL_SAVE_SUCCESS;
        } else if (saveResult == SAVE_RESULT_PROCEED_FINAL) {
            utilMan->savingStatus = MAIN_MENU_UTIL_SAVING_IDLE;
        }

        if (saveResult == SAVE_RESULT_OK || saveResult == SAVE_RESULT_CORRUPT) {
            ResetUnlock(RESET_LOCK_SOFT_RESET);
        }

        return saveResult;
    case MAIN_MENU_UTIL_SAVING_IDLE:
        break;
    case MAIN_MENU_UTIL_SAVE_SUCCESS:
        break;
    case MAIN_MENU_UTIL_SAVE_FAILURE:
        break;
    }

    return SAVE_RESULT_PROCEED;
}

void MainMenuUtil_ContinueSaving(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    if (utilMan->savingStatus == MAIN_MENU_UTIL_SAVING_IDLE) {
        utilMan->savingStatus = MAIN_MENU_UTIL_SAVING;
    }
}

void MainMenuUtil_CancelSave(void)
{
    MainMenuUtilManager *utilMan = &sMainMenuUtilManager;

    SaveData_SaveStateCancel(utilMan->saveData);
    utilMan->savingStatus = MAIN_MENU_UTIL_SAVE_FAILURE;
    ResetUnlock(RESET_LOCK_SOFT_RESET);
}

int MainMenuUtil_GetSavingStatus(void)
{
    return sMainMenuUtilManager.savingStatus;
}
