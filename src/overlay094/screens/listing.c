#include "overlay094/screens/listing.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/const_ov94_02245FD8.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/select_pokemon.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "network_icon.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/gts.h"

static void GTSListing_InitBgLayers(BgConfig *bgConfig);
static void GTSListing_FreeBgLayers(BgConfig *bgConfig);
static void GTSListing_LoadGraphics(GTSApplicationState *appState);
static void GTSListing_InitWindows(GTSApplicationState *appState);
static void GTSListing_RemoveWindows(GTSApplicationState *appState);
static void GTSListing_AllocState(GTSApplicationState *appState);
static void GTSListing_FreeState(GTSApplicationState *appState);
static void GTSListing_InitSprites(GTSApplicationState *appState);
static void GTSListing_FreeSprites(GTSApplicationState *appState);
static void GTSListing_DrawWantedCriteria(GTSApplicationState *appState);
static int GTSListing_WaitFadeIn(GTSApplicationState *appState);
static int GTSListing_HandleInput(GTSApplicationState *appState);
static int GTSListing_BeginExit(GTSApplicationState *appState);
static int GTSListing_WaitForMessage(GTSApplicationState *appState);
static int GTSListing_WaitForMessageWithDelay(GTSApplicationState *appState);
static int GTSListing_ShowConfirmationMenu(GTSApplicationState *appState);
static int GTSListing_HandleConfirmationMenu(GTSApplicationState *appState);
static int GTSListing_ShowActionMenu(GTSApplicationState *appState);
static int GTSListing_HandleActionMenu(GTSApplicationState *appState);
static void GTSListing_ShowBottomMessage(GTSApplicationState *appState, int entr, int renderDelay, int unused1, u16 unused2, Pokemon *mon);

static int (*sGTSListingStateHandlers[])(GTSApplicationState *) = {
    GTSListing_WaitFadeIn,
    GTSListing_HandleInput,
    GTSListing_BeginExit,
    GTSListing_WaitForMessage,
    GTSListing_WaitForMessageWithDelay,
    GTSListing_ShowConfirmationMenu,
    GTSListing_HandleConfirmationMenu,
    GTSListing_ShowActionMenu,
    GTSListing_HandleActionMenu
};

int GTSApplication_Listing_Init(GTSApplicationState *appState, int unused)
{
    GTSListing_AllocState(appState);
    GTSListing_InitBgLayers(appState->bgConfig);
    GTSListing_LoadGraphics(appState);
    GTSListing_InitWindows(appState);
    GTSListing_InitSprites(appState);
    GTS_DrawOfferedPokemonInfo(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->infoWindows[0], Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes), &appState->receivedListing.criteria);

    Pokemon *mon = (Pokemon *)appState->receivedListing.pokemon.bytes;

    GTS_DrawTrainerInfo(appState->gtsMessageLoader, &appState->infoWindows[5], appState->receivedListing.trainerNames, mon, &appState->infoWindows[10]);
    GTS_DrawWantedCriteria(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->infoWindows[7], appState->receivedListing.requirements.species, appState->receivedListing.requirements.gender, GTS_FindLevelMessageIndex(appState->receivedListing.requirements.level, appState->receivedListing.requirements.level2, 0));
    GTS_LoadListingPokemonSprite((Pokemon *)appState->receivedListing.pokemon.bytes);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = 0;

    return 2;
}

int GTSApplication_Listing_Main(GTSApplicationState *appState, int unused)
{
    return (*sGTSListingStateHandlers[appState->currentScreenInstruction])(appState);
}

int GTSApplication_Listing_Exit(GTSApplicationState *appState, int unused)
{
    GTSListing_FreeSprites(appState);
    GTSListing_FreeState(appState);
    GTSListing_RemoveWindows(appState);
    GTSListing_FreeBgLayers(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return 1;
}

static void GTSListing_InitBgLayers(BgConfig *bgConfig)
{
    BgTemplate mainWindowTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainWindowTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBgTemplate, 0);

    BgTemplate mainBgOverlayTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainBgOverlayTemplate, 0);

    BgTemplate subWindowTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subWindowTemplate, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate subBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBgTemplate, 0);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_62);
}

static void GTSListing_FreeBgLayers(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void GTSListing_LoadGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(narc, 7, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(narc, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 17, bgConfig, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 25, bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 15, bgConfig, 5, 0, 32 * 21 * 0x40, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 31, bgConfig, 5, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(narc);
}

static void GTSListing_InitSprites(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE * 208;
    template.position.y = FX32_ONE * 58;

    appState->listingCursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->listingCursorSprite, 1);
    Sprite_SetAnim(appState->listingCursorSprite, 37);
    NetworkIcon_Init();
}

static void GTSListing_FreeSprites(GTSApplicationState *appState)
{
    Sprite_Delete(appState->listingCursorSprite);
}

static const int sWindowLayouts[][4] = {
    { 1, 2, 10, 2 },
    { 12, 2, 8, 2 },
    { 14, 4, 7, 2 },
    { 1, 7, 6, 2 },
    { 7, 7, 11, 2 },
    { 2, 10, 9, 2 },
    { 12, 10, 8, 2 },
    { 2, 15, 12, 2 },
    { 4, 17, 10, 2 },
    { 16, 17, 12, 2 },
    { 1, 5, 5, 2 },
    { 7, 5, 7, 2 }
};

static void GTSListing_InitWindows(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->menuButtonWindows[0], 0, 21, 15, 5 * 2, 4, 13, ((1 + (18 + 12)) + 9) + 27 * 2);

    int baseTile;

    baseTile = ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4);

    for (int i = 0; i < 10 + 2; i++) {
        Window_Add(appState->bgConfig, &appState->infoWindows[i], 0, sWindowLayouts[i][0], sWindowLayouts[i][1], sWindowLayouts[i][2], sWindowLayouts[i][3], 13, baseTile);
        Window_FillTilemap(&appState->infoWindows[i], 0x0);

        baseTile += sWindowLayouts[i][2] * sWindowLayouts[i][3];
    }
}

static void GTSListing_RemoveWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->menuButtonWindows[0]);

    for (int i = 0; i < 10 + 2; i++) {
        Window_Remove(&appState->infoWindows[i]);
    }
}

static void GTSListing_AllocState(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_MainMenu_Title);

    for (int i = 0; i < 10; i++) {
        appState->trainerLocationStrings[i] = String_Init(10 * 2, HEAP_ID_62);
    }
}

static void GTSListing_FreeState(GTSApplicationState *appState)
{
    for (int i = 0; i < 10; i++) {
        String_Free(appState->trainerLocationStrings[i]);
    }

    String_Free(appState->genericMessageBuffer);
    String_Free(appState->title);
}

static int GTSListing_WaitFadeIn(GTSApplicationState *appState)
{
    appState->currentScreenInstruction = 1;
    return 3;
}

static int GTSListing_HandleInput(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        GTSListing_ShowBottomMessage(appState, GTS_Text_Selection_DoWhat, TEXT_SPEED_FAST, 0, 0xf0f, (Pokemon *)appState->receivedListing.pokemon.bytes);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 3, 7);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        appState->currentScreenInstruction = 2;
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return 3;
}

static int GTSListing_BeginExit(GTSApplicationState *appState)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = 0;
    return 4;
}

static int GTSListing_ShowConfirmationMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 15, (((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4 + 200 + 12);
    appState->currentScreenInstruction = 6;

    return 3;
}

static int GTSListing_HandleConfirmationMenu(GTSApplicationState *appState)
{
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            appState->currentScreenInstruction = 0;
            Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        } else {
            appState->currentScreenInstruction = 2;
            appState->fadeBothScreens = 1;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_TAKE_BACK_POKEMON);
        }

        GTSListing_DrawWantedCriteria(appState);
    }

    return 3;
}

static int GTSListing_ShowActionMenu(GTSApplicationState *appState)
{
    MenuTemplate template;

    template.fontID = FONT_SYSTEM;
    template.xSize = 1;
    template.ySize = 2;
    template.lineSpacing = 0;
    template.suppressCursor = FALSE;
    template.loopAround = FALSE;

    appState->menuStringList = StringList_New(2, HEAP_ID_62);

    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, GTS_Text_MenuOption_TakeBack, 1);
    StringList_AddFromMessageBank(appState->menuStringList, appState->gtsMessageLoader, GTS_Text_MenuOption_LeaveAsIs, 2);

    template.choices = appState->menuStringList;
    template.window = &appState->menuButtonWindows[0];

    Window_DrawStandardFrame(&appState->menuButtonWindows[0], 0, 1 + (18 + 12), 11);

    appState->popupMenu = Menu_NewAndCopyToVRAM(&template, 9, 0, 0, 62, PAD_BUTTON_B);
    appState->currentScreenInstruction = 8;

    return 3;
}

static int GTSListing_HandleActionMenu(GTSApplicationState *appState)
{
    switch (Menu_ProcessInput(appState->popupMenu)) {
    case 1: // take back
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);
        Pokemon *mon = (Pokemon *)appState->receivedListing.pokemon.bytes;

        if (Pokemon_IsHoldingMail(mon)) {
            if (Party_GetCurrentCount(appState->playerData->party) == MAX_PARTY_SIZE) {
                GTSListing_ShowBottomMessage(appState, GTS_Text_Error_NoRoomInParty, TEXT_SPEED_FAST, 0, 0xf0f, mon);
                GTSApplication_SetCurrentAndNextScreenInstruction(appState, 3, 1);
                return 3;
            }
        }

        GTSListing_ShowBottomMessage(appState, GTS_Text_WillYouTakeThis, TEXT_SPEED_FAST, 0, 0xf0f, mon);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 3, 5);

        GTSListing_DrawWantedCriteria(appState);
        break;
    case 2: // leave as is
    case MENU_CANCEL:
        Menu_Free(appState->popupMenu, NULL);
        StringList_Free(appState->menuStringList);
        Window_EraseStandardFrame(&appState->menuButtonWindows[0], 0);

        appState->currentScreenInstruction = 2;

        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
        GTSListing_DrawWantedCriteria(appState);
        break;
    }

    return 3;
}

static int GTSListing_WaitForMessage(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return 3;
}

static int GTSListing_WaitForMessageWithDelay(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == 0) {
        appState->frameDelay++;

        if (appState->frameDelay > 45) {
            appState->frameDelay = 0;
            appState->currentScreenInstruction = appState->nextScreenInstruction;
        }
    }

    return 3;
}

static void GTSListing_ShowBottomMessage(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2, Pokemon *mon)
{
    String *str;

    StringTemplate_SetSpeciesName(appState->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
    str = MessageLoader_GetNewString(appState->gtsMessageLoader, messageId);
    StringTemplate_Format(appState->stringTemplate, appState->genericMessageBuffer, str);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);

    String_Free(str);
}

static TextColor sGenderTextColors[] = {
    TEXT_COLOR(0, 0, 0),
    TEXT_COLOR(5, 6, 0),
    TEXT_COLOR(3, 4, 0)
};

void GTS_DrawOfferedPokemonInfo(MessageLoader *msgLoader, MessageLoader *speciesMessageLoader, StringTemplate *template, Window windows[], BoxPokemon *boxMon, GTSPokemonCriteria *criteria)
{
    String *speciesNameStr, *genderStr, *levelStr, *itemLabelStr;
    String *nickname = String_Init((10 + 1) * 2, HEAP_ID_62);
    String *itemName = String_Init((8 + 1) * 2, HEAP_ID_62);
    int gender, level, item, species;

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRING, nickname);

    species = criteria->species;
    gender = criteria->gender;
    level = criteria->level;
    item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    itemLabelStr = MessageLoader_GetNewString(msgLoader, GTS_Text_Item);
    genderStr = MessageLoader_GetNewString(msgLoader, gGTSGenderPreferenceMessages[gender]);

    StringTemplate_SetNumber(template, 3, level, 3, 0, 1);

    levelStr = MessageUtil_ExpandedString(template, msgLoader, GTS_Text_LevelTemplate, HEAP_ID_62);
    speciesNameStr = MessageLoader_GetNewString(speciesMessageLoader, species);

    Item_LoadName(itemName, item, HEAP_ID_62);

    for (int i = 0; i < 5; i++) {
        Window_FillTilemap(&windows[i], 0x0);
    }

    Window_DrawAlignedSystemText(&windows[0], nickname, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    if (gender != GENDER_NONE + 1) {
        Window_DrawAlignedSystemText(&windows[0], genderStr, 70, 0, 0, sGenderTextColors[gender]);
    }

    Window_DrawAlignedSystemText(&windows[1], speciesNameStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&windows[2], levelStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&windows[3], itemLabelStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&windows[4], itemName, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    String_Free(itemLabelStr);
    String_Free(itemName);
    String_Free(levelStr);
    String_Free(genderStr);
    String_Free(nickname);
    String_Free(speciesNameStr);
}

void GTS_DrawTrainerInfo(MessageLoader *msgLoader, Window trainerNameWindows[], u16 *trainerName, Pokemon *mon, Window otNameWindows[])
{
    String *trainerNameStr, *trainerNameLabelStr, *otNameLabelStr, *otNameStr;

    trainerNameStr = String_Init((7 + 1) * 2, HEAP_ID_62);
    otNameStr = String_Init((7 + 1) * 2, HEAP_ID_62);

    trainerNameLabelStr = MessageLoader_GetNewString(msgLoader, pl_msg_00000671_00048);
    String_CopyChars(trainerNameStr, trainerName);

    otNameLabelStr = MessageLoader_GetNewString(msgLoader, pl_msg_00000671_00172);
    Pokemon_GetValue(mon, MON_DATA_OT_NAME_STRING, otNameStr);

    Window_DrawAlignedSystemText(&trainerNameWindows[0], trainerNameLabelStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&trainerNameWindows[1], trainerNameStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&otNameWindows[0], otNameLabelStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Window_DrawAlignedSystemText(&otNameWindows[1], otNameStr, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    String_Free(trainerNameLabelStr);
    String_Free(trainerNameStr);
    String_Free(otNameLabelStr);
    String_Free(otNameStr);
}

void GTS_LoadListingPokemonSprite(Pokemon *mon)
{
    PokemonSpriteTemplate template;
    u8 *spriteData = Heap_Alloc(HEAP_ID_62, 0x20 * 10 * 10);

    Pokemon_BuildSpriteTemplate(&template, mon, 2);

    {
        int personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
        enum Species species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

        CharacterSprite_LoadPokemonSpriteRect(template.narcID, template.character, HEAP_ID_62, 0, 0, 10, 10, spriteData, personality, FALSE, FACE_FRONT, species);
    }

    DC_FlushRange(spriteData, 0x20 * 10 * 10);
    GX_LoadOBJ(spriteData, (18 * 32 + 16) * 32, 0x20 * 10 * 10);

    Graphics_LoadPalette(template.narcID, template.palette, 1, 0x20 * 13, 32, HEAP_ID_62);
    Heap_Free(spriteData);
}

static void GTSListing_DrawWantedCriteria(GTSApplicationState *appState)
{
    GTS_DrawWantedCriteria(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->infoWindows[7], appState->receivedListing.requirements.species, appState->receivedListing.requirements.gender, GTS_FindLevelMessageIndex(appState->receivedListing.requirements.level, appState->receivedListing.requirements.level2, 0));
}
