#include "overlay092/ov92_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/menu.h"
#include "constants/versions.h"

#include "struct_defs/wi_fi_history.h"

#include "overlay092/struct_ov92_021D28C0.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0202419C.h"
#include "unk_020996D0.h"
#include "wifi_history_save_data.h"

#include "res/text/bank/country_names.h"
#include "res/text/bank/unk_0356.h"

#define WIFI_EARTH_BASE_TILE_SCROLLING_MESSAGE_BOX (512 - SCROLLING_MESSAGE_BOX_TILE_COUNT)
#define WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME (WIFI_EARTH_BASE_TILE_SCROLLING_MESSAGE_BOX - STANDARD_WINDOW_TILE_COUNT)

typedef struct WiFiEarthPlaceRecord_t {
    u16 type;
    s16 x;
    s16 y;
} WiFiEarthPlaceRecord;

typedef struct WiFiEarthRegionRecord_t {
    s16 x;
    s16 y;
} WiFiEarthRegionRecord;

typedef struct {
    s16 x;
    s16 y;
    MtxFx33 transform;
    u16 recency;
    u16 country;
    u16 region;
} WiFiEarthMarker;

typedef struct {
    u32 count;
    WiFiEarthMarker markers[1024];
} WiFiEarthMarkerList;

typedef struct WiFiEarthData {
    enum HeapID heapID;
    WiFiHistory *wiFiHistory;
    Options *options;
    WiFiEarthMarkerList markers;
    BgConfig *bgConfig;
    Window messageWindow;
    Window listMenuWindow;
    Window exitButtonWindow;
    Window locationWindow;
    ListMenu *listMenu;
    StringList *menuChoices;
    Menu *menu;
    MessageLoader *messageLoader;
    int messageState;
    int messagePrinter;
    String *messageText;
    StringTemplate *locationTemplate;
    NNSG3dRenderObj globeRenderObj;
    NNSG3dResMdl *globeModel;
    NNSG3dResFileHeader *globeResource;
    NNSG3dRenderObj markerRenderObjs[5];
    NNSG3dResMdl *markerModels[5];
    NNSG3dResFileHeader *markerResources[5];
    VecFx32 renderOrigin;
    VecFx32 globeScale;
    VecFx32 rotationAngle;
    VecFx32 markerScale;
    Camera *camera;
    CameraAngle unused_BAD0;
    u16 zoomMode;
    VecFx32 lightVector;
    int renderMode;
    BOOL unread_BAEC;
    BOOL isJapanese;
    u16 canRotateFreely;
    u16 unused_BAF6;
    int touchKeys;
    int touchDragPhase;
    int lastTouchX;
    int lastTouchY;
    int touchDragX;
    int touchDragY;
    int touchHoldTimer;
    int country1;
    int region1;
    int country2;
    int region2;
    BOOL hasInteractedOutsideJapan;
    BOOL inspectMode;
} WiFiEarthData;

typedef struct {
    u32 messageId;
    u32 value;
} WiFiEarthMenuItem;

enum WiFiEarthState {
    WIFI_EARTH_STATE_INIT = 0,
    WIFI_EARTH_STATE_FADE_IN,
    WIFI_EARTH_STATE_SHOW_WELCOME_MESSAGE,
    WIFI_EARTH_STATE_SHOW_MENU_PROMPT,
    WIFI_EARTH_STATE_MENU_INPUT,
    WIFI_EARTH_STATE_SHOW_JAPAN_PROMPT,
    WIFI_EARTH_STATE_JAPAN_PROMPT_INPUT,
    WIFI_EARTH_STATE_SHOW_COUNTRY_PROMPT,
    WIFI_EARTH_STATE_COUNTRY_INPUT,
    WIFI_EARTH_STATE_SHOW_REGION_PROMPT,
    WIFI_EARTH_STATE_REGION_INPUT,
    WIFI_EARTH_STATE_SHOW_LOCATION_INFO,
    WIFI_EARTH_STATE_SHOW_CONFIRM_PROMPT,
    WIFI_EARTH_STATE_CONFIRM_INPUT,
    WIFI_EARTH_STATE_ENTER_GLOBE_VIEW,
    WIFI_EARTH_STATE_GLOBE_VIEW,
    WIFI_EARTH_STATE_ZOOM_TRANSITION,
    WIFI_EARTH_STATE_FADE_OUT,
    WIFI_EARTH_STATE_EXIT,
};

enum WiFiEarthMessageState {
    WIFI_EARTH_MESSAGE_STATE_START = 0,
    WIFI_EARTH_MESSAGE_STATE_PRINTING,
    WIFI_EARTH_MESSAGE_STATE_CONFIRM,
};

enum WiFiEarthZoomMode {
    WIFI_EARTH_ZOOM_OUT = 0,
    WIFI_EARTH_ZOOM_IN,
};

enum WiFiEarthRenderMode {
    WIFI_EARTH_RENDER_NONE = 0,
    WIFI_EARTH_RENDER_SCENE,
    WIFI_EARTH_RENDER_RESET,
};

enum WiFiEarthMenuChoice {
    WIFI_EARTH_MENU_VIEW = 0,
    WIFI_EARTH_MENU_REGISTER,
    WIFI_EARTH_MENU_CANCEL,
};

enum WiFiEarthMarkerRecency {
    WIFI_EARTH_RECENCY_NONE = 0,
    WIFI_EARTH_RECENCY_TODAY,
    WIFI_EARTH_RECENCY_PAST,
    WIFI_EARTH_RECENCY_SELF,
};

BOOL WiFiEarth_CountryHasRegions(int country);
int WiFiEarth_Init(ApplicationManager *appMan, int *unused);
int WiFiEarth_Main(ApplicationManager *appMan, int *state);
int WiFiEarth_Exit(ApplicationManager *appMan, int *unused);
static void WiFiEarth_SetupGXBanks(void);
static void WiFiEarth_SetupGraphicsModes(void);
static void WiFiEarth_LoadGraphics(WiFiEarthData *wifiEarth, NARC *narc);
static void WiFiEarth_FreeGraphics(WiFiEarthData *wifiEarth);
static void WiFiEarth_LoadLocationMarkers(WiFiEarthData *wifiEarth);
static void WiFiEarth_AddLocationMarker(WiFiEarthData *wifiEarth, u32 index, s16 x, s16 y, u16 country, u16 region);
static void WiFiEarth_FocusPlayerLocation(WiFiEarthData *wifiEarth);
static int WiFiEarth_GetCountryIndex(int country);
static void WiFiEarth_UpdateTouchInput(WiFiEarthData *wifiEarth);
static void WiFiEarth_GetTouchDragDelta(int lastTouchX, int lastTouchY, int *xKey, int *xMagnitude, int *yKey, int *yMagnitude);
static BOOL WiFiEarth_ShowMessage(WiFiEarthData *wifiEarth, u32 entryId, BOOL autoConfirm);
static void WiFiEarth_CreateListMenu(WiFiEarthData *wifiEarth, Window *window, const WindowTemplate *windowTemplate, const ListMenuTemplate *listMenuTemplate, const WiFiEarthMenuItem *items);
static void WiFiEarth_CreateListMenuFromBank(WiFiEarthData *wifiEarth, Window *window, const WindowTemplate *windowTemplate, const ListMenuTemplate *listMenuTemplate, u32 bankId, const u8 *itemIds, u32 itemCount);
static void WiFiEarth_FreeListMenu(WiFiEarthData *wifiEarth);
static void WiFiEarth_ShowPlayerLocation(WiFiEarthData *wifiEarth);
static void WiFiEarth_ShowLocationInfo(WiFiEarthData *wifiEarth, int country, int region);
static void WiFiEarth_FreeLocationInfo(WiFiEarthData *wifiEarth);
static void WiFiEarth_ShowNearestMarker(WiFiEarthData *wifiEarth);
static void WiFiEarth_Load3DModels(WiFiEarthData *wifiEarth, NARC *narc);
static void WiFiEarth_Free3DModels(WiFiEarthData *wifiEarth);
static void WiFiEarth_ResetGlobeTransform(WiFiEarthData *wifiEarth);
static void WiFiEarth_InitCamera(WiFiEarthData *wifiEarth);
static void WiFiEarth_InitLighting(WiFiEarthData *wifiEarth);
static BOOL WiFiEarth_HandleRotationInput(WiFiEarthData *wifiEarth, int pressedKeys, int heldKeys);
static BOOL WiFiEarth_UpdateZoomTransition(WiFiEarthData *wifiEarth);
static void WiFiEarth_Draw3DScene(WiFiEarthData *wifiEarth);
static void WiFiEarth_BuildViewRotationMatrix(MtxFx33 *matrix, VecFx32 *angle);
static void WiFiEarth_BuildMarkerOrientationMatrix(MtxFx33 *matrix, VecFx32 *position);
static void WiFiEarth_NormalizeAngle(Vec2s32 *angle);
static u32 WiFiEarth_GetAngularDistance(const Vec2s32 *a, const Vec2s32 *b);
void sub_02000EC4(FSOverlayID param0, const ApplicationManagerTemplate *param1);

static const BgTemplate sWindowBgTemplate = {
    .x = 0,
    .y = 0,
    .bufferSize = 2048,
    .baseTile = 0,
    .screenSize = BG_SCREEN_SIZE_256x256,
    .colorMode = GX_BG_COLORMODE_16,
    .screenBase = GX_BG_SCRBASE_0x7000,
    .charBase = GX_BG_CHARBASE_0x00000,
    .bgExtPltt = GX_BG_EXTPLTT_01,
    .priority = 0,
    .areaOver = 0,
    .mosaic = FALSE,
};

static const BgTemplate sBackgroundBgTemplate = {
    .x = 0,
    .y = 0,
    .bufferSize = 2048,
    .baseTile = 0,
    .screenSize = BG_SCREEN_SIZE_256x256,
    .colorMode = GX_BG_COLORMODE_16,
    .screenBase = GX_BG_SCRBASE_0x7800,
    .charBase = GX_BG_CHARBASE_0x04000,
    .bgExtPltt = GX_BG_EXTPLTT_01,
    .priority = 3,
    .areaOver = 0,
    .mosaic = FALSE,
};

static const WindowTemplate sMessageWindowTemplate = {
    6,
    2,
    19,
    27,
    4,
    4,
    365
};

static const WindowTemplate sYesNoWindowTemplate = {
    6,
    25,
    13,
    6,
    4,
    4,
    341
};

static const WindowTemplate sMainMenuWindowTemplate = {
    6,
    19,
    11,
    12,
    6,
    4,
    293
};

static const WindowTemplate sSelectionListWindowTemplate = {
    6,
    3,
    2,
    26,
    14,
    4,
    1
};

static const WindowTemplate sLocationInfoWindowTemplate = {
    6,
    2,
    1,
    27,
    6,
    4,
    179
};

static const WindowTemplate sExitButtonWindowTemplate = {
    2,
    25,
    21,
    6,
    2,
    4,
    461
};

static const WiFiEarthMenuItem sMainMenuItems[] = {
    { WiFiEarth_Text_SeeList, WIFI_EARTH_MENU_VIEW },
    { WiFiEarth_Text_Register, WIFI_EARTH_MENU_REGISTER },
    { WiFiEarth_Text_Exit, WIFI_EARTH_MENU_CANCEL }
};

static const ListMenuTemplate sMainMenuListTemplate = {
    NULL,
    NULL,
    NULL,
    NULL,
    NELEMS(sMainMenuItems),
    NELEMS(sMainMenuItems),
    0,
    12,
    0,
    0,
    1,
    15,
    2,
    0,
    16,
    0,
    0,
    0
};

static const ListMenuTemplate sSelectionListTemplate = {
    NULL,
    NULL,
    NULL,
    NULL,
    0,
    7,
    0,
    12,
    0,
    0,
    1,
    15,
    2,
    0,
    16,
    1,
    0,
    0
};

int WiFiEarth_Init(ApplicationManager *appMan, int *unused)
{
    enum HeapID heapID = HEAP_ID_50;

    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x80000);

    WiFiEarthData *wifiEarth = ApplicationManager_NewData(appMan, sizeof(WiFiEarthData), heapID);
    memset(wifiEarth, 0, sizeof(WiFiEarthData));
    wifiEarth->heapID = heapID;

    wifiEarth->isJapanese = gGameLanguage == LANGUAGE_JAPANESE;

    SaveData *saveData = ApplicationManager_Args(appMan);

    wifiEarth->wiFiHistory = SaveData_WiFiHistory(saveData);
    wifiEarth->country1 = WiFiHistory_GetCountry(wifiEarth->wiFiHistory);
    wifiEarth->region1 = WiFiHistory_GetRegion(wifiEarth->wiFiHistory);
    wifiEarth->hasInteractedOutsideJapan = WiFiHistory_HasInteractedOutsideJapan(wifiEarth->wiFiHistory);
    wifiEarth->options = SaveData_GetOptions(saveData);

    WiFiEarth_SetupGXBanks();
    WiFiEarth_SetupGraphicsModes();
    Easy3D_Init(wifiEarth->heapID);

    wifiEarth->bgConfig = BgConfig_New(wifiEarth->heapID);

    GXLayers_TurnBothDispOn();
    Text_ResetAllPrinters();

    wifiEarth->locationTemplate = StringTemplate_New(8, 64, wifiEarth->heapID);
    wifiEarth->camera = Camera_Alloc(wifiEarth->heapID);
    wifiEarth->renderMode = WIFI_EARTH_RENDER_NONE;

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;

    GXLayers_SwapDisplay();
    SetAutorepeat(4, 8);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    WiFiEarth_LoadLocationMarkers(wifiEarth);

    return 1;
}

int WiFiEarth_Main(ApplicationManager *appMan, int *state)
{
    WiFiEarthData *wifiEarth = ApplicationManager_Data(appMan);
    BOOL done = FALSE;
    NARC *narc;

    switch (*state) {
    case WIFI_EARTH_STATE_INIT:
        wifiEarth->messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0356, wifiEarth->heapID);
        narc = NARC_ctor(NARC_INDEX_APPLICATION__WIFI_EARTH__WIFI_EARTH, wifiEarth->heapID);

        WiFiEarth_Load3DModels(wifiEarth, narc);
        WiFiEarth_LoadGraphics(wifiEarth, narc);
        NARC_dtor(narc);

        wifiEarth->unread_BAEC = 0;

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, wifiEarth->heapID);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        *state = WIFI_EARTH_STATE_FADE_IN;
        break;
    case WIFI_EARTH_STATE_FADE_IN:
        if (IsScreenFadeDone() == TRUE) {
            *state = WIFI_EARTH_STATE_SHOW_WELCOME_MESSAGE;
        }
        break;
    case WIFI_EARTH_STATE_SHOW_WELCOME_MESSAGE:
        if (WiFiEarth_ShowMessage(wifiEarth, WiFiEarth_Text_Welcome, TRUE) == TRUE) {
            if (wifiEarth->country1 == Country_Text_None) {
                *state = WIFI_EARTH_STATE_SHOW_MENU_PROMPT;
            } else {
                *state = WIFI_EARTH_STATE_ENTER_GLOBE_VIEW;
            }
        }
        break;
    case WIFI_EARTH_STATE_SHOW_MENU_PROMPT:
        if (WiFiEarth_ShowMessage(wifiEarth, WiFiEarth_Text_MenuPrompt, TRUE) == TRUE) {
            WiFiEarth_CreateListMenu(wifiEarth, &wifiEarth->listMenuWindow, &sMainMenuWindowTemplate, &sMainMenuListTemplate, sMainMenuItems);
            *state = WIFI_EARTH_STATE_MENU_INPUT;
        }
        break;
    case WIFI_EARTH_STATE_MENU_INPUT: {
        int choice = ListMenu_ProcessInput(wifiEarth->listMenu);

        if (choice == MENU_NOTHING_CHOSEN) {
            break;
        }

        WiFiEarth_FreeListMenu(wifiEarth);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);

        switch (choice) {
        default:
        case WIFI_EARTH_MENU_VIEW:
            *state = WIFI_EARTH_STATE_ENTER_GLOBE_VIEW;
            break;
        case WIFI_EARTH_MENU_REGISTER:
            *state = WIFI_EARTH_STATE_SHOW_JAPAN_PROMPT;
            break;
        case MENU_CANCEL:
        case WIFI_EARTH_MENU_CANCEL:
            *state = WIFI_EARTH_STATE_FADE_OUT;
            break;
        }
    } break;
    case WIFI_EARTH_STATE_SHOW_JAPAN_PROMPT:
        if (WiFiEarth_ShowMessage(wifiEarth, WiFiEarth_Text_RegisterPrompt, TRUE) == 1) {
            wifiEarth->menu = Menu_MakeYesNoChoice(wifiEarth->bgConfig, &sYesNoWindowTemplate, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7, wifiEarth->heapID);
            *state = WIFI_EARTH_STATE_JAPAN_PROMPT_INPUT;
        }
        break;
    case WIFI_EARTH_STATE_JAPAN_PROMPT_INPUT: {
        u32 yesNoChoice = Menu_ProcessInputAndHandleExit(wifiEarth->menu, wifiEarth->heapID);

        switch (yesNoChoice) {
        case MENU_YES:
            if (wifiEarth->isJapanese == TRUE) {
                wifiEarth->country2 = Country_Text_Japan;
                *state = WIFI_EARTH_STATE_SHOW_REGION_PROMPT;
            } else {
                *state = WIFI_EARTH_STATE_SHOW_COUNTRY_PROMPT;
            }
            break;
        case MENU_CANCEL:
            *state = WIFI_EARTH_STATE_SHOW_MENU_PROMPT;
            break;
        }
    } break;
    case WIFI_EARTH_STATE_SHOW_COUNTRY_PROMPT:
        if (WiFiEarth_ShowMessage(wifiEarth, WiFiEarth_Text_SelectCountry, TRUE) == 1) {
            wifiEarth->country2 = 0;

            WiFiEarth_CreateListMenuFromBank(wifiEarth, &wifiEarth->listMenuWindow, &sSelectionListWindowTemplate, &sSelectionListTemplate, TEXT_BANK_COUNTRY_NAMES, sub_02099780(0), sub_0209979C(0));
            *state = WIFI_EARTH_STATE_COUNTRY_INPUT;
        }
        break;
    case WIFI_EARTH_STATE_COUNTRY_INPUT: {
        int country = ListMenu_ProcessInput(wifiEarth->listMenu);

        if (country == MENU_NOTHING_CHOSEN) {
            break;
        }

        WiFiEarth_FreeListMenu(wifiEarth);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);

        if (country != MENU_CANCEL) {
            country = sub_02099780(0)[country];
        }

        switch (country) {
        default: {
            wifiEarth->country2 = country;

            if (WiFiEarth_CountryHasRegions(wifiEarth->country2) == TRUE) {
                *state = WIFI_EARTH_STATE_SHOW_REGION_PROMPT;
            } else {
                wifiEarth->region2 = 0;
                *state = WIFI_EARTH_STATE_SHOW_LOCATION_INFO;
            }
        } break;
        case MENU_CANCEL:

            *state = WIFI_EARTH_STATE_SHOW_MENU_PROMPT;
            break;
        }
    } break;
    case WIFI_EARTH_STATE_SHOW_REGION_PROMPT:
        if (WiFiEarth_ShowMessage(wifiEarth, WiFiEarth_Text_SelectRegion, TRUE) == TRUE) {
            wifiEarth->region2 = 0;

            {
                u32 countryIndex = GetCountryTableIndex(wifiEarth->country2);
                WiFiEarth_CreateListMenuFromBank(wifiEarth, &wifiEarth->listMenuWindow, &sSelectionListWindowTemplate, &sSelectionListTemplate, sub_0209972C(countryIndex), sub_02099780(countryIndex), sub_0209979C(countryIndex));
            }
            *state = WIFI_EARTH_STATE_REGION_INPUT;
        }
        break;
    case WIFI_EARTH_STATE_REGION_INPUT: {
        int region = ListMenu_ProcessInput(wifiEarth->listMenu);

        if (region == MENU_NOTHING_CHOSEN) {
            break;
        }

        WiFiEarth_FreeListMenu(wifiEarth);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);

        if (region != MENU_CANCEL) {
            u32 countryIndex = GetCountryTableIndex(wifiEarth->country2);
            region = sub_02099780(countryIndex)[region];
        }

        switch (region) {
        default:
            wifiEarth->region2 = region;
            *state = WIFI_EARTH_STATE_SHOW_LOCATION_INFO;
            break;
        case MENU_CANCEL:
            if (wifiEarth->isJapanese == TRUE) {
                *state = WIFI_EARTH_STATE_SHOW_MENU_PROMPT;
            } else {
                *state = WIFI_EARTH_STATE_SHOW_COUNTRY_PROMPT;
            }
        }
    } break;
    case WIFI_EARTH_STATE_SHOW_LOCATION_INFO:
        WiFiEarth_ShowLocationInfo(wifiEarth, wifiEarth->country2, wifiEarth->region2);
        *state = WIFI_EARTH_STATE_SHOW_CONFIRM_PROMPT;
        break;
    case WIFI_EARTH_STATE_SHOW_CONFIRM_PROMPT:
        if (WiFiEarth_ShowMessage(wifiEarth, WiFiEarth_Text_ConfirmRegister, TRUE) == 1) {
            wifiEarth->menu = Menu_MakeYesNoChoice(wifiEarth->bgConfig, &sYesNoWindowTemplate, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7, wifiEarth->heapID);
            *state = WIFI_EARTH_STATE_CONFIRM_INPUT;
        }
        break;
    case WIFI_EARTH_STATE_CONFIRM_INPUT: {
        u32 confirmChoice = Menu_ProcessInputAndHandleExit(wifiEarth->menu, wifiEarth->heapID);

        switch (confirmChoice) {
        case MENU_YES:
            WiFiEarth_FreeLocationInfo(wifiEarth);
            WiFiHistory_SetCountryAndRegion(wifiEarth->wiFiHistory, wifiEarth->country2, wifiEarth->region2);

            wifiEarth->country1 = wifiEarth->country2;
            wifiEarth->region1 = wifiEarth->region2;
            *state = WIFI_EARTH_STATE_ENTER_GLOBE_VIEW;
            break;
        case MENU_CANCEL:
            WiFiEarth_FreeLocationInfo(wifiEarth);
            *state = WIFI_EARTH_STATE_SHOW_MENU_PROMPT;
            break;
        }
    } break;
    case WIFI_EARTH_STATE_ENTER_GLOBE_VIEW:
        if (wifiEarth->isJapanese == TRUE && !wifiEarth->hasInteractedOutsideJapan) {
            wifiEarth->canRotateFreely = FALSE;
        } else {
            wifiEarth->canRotateFreely = TRUE;
        }

        WiFiEarth_ResetGlobeTransform(wifiEarth);
        WiFiEarth_FocusPlayerLocation(wifiEarth);
        WiFiEarth_InitCamera(wifiEarth);
        WiFiEarth_InitLighting(wifiEarth);

        Window_FillRectWithColor(&wifiEarth->messageWindow, 15, 0, 0, 27 * 8, 4 * 8);
        Window_DrawStandardFrame(&wifiEarth->exitButtonWindow, 0, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7);

        if (wifiEarth->country1 != Country_Text_None) {
            WiFiEarth_ShowPlayerLocation(wifiEarth);
        }

        WiFiEarth_ShowNearestMarker(wifiEarth);

        wifiEarth->inspectMode = FALSE;
        wifiEarth->renderMode = WIFI_EARTH_RENDER_SCENE;
        *state = WIFI_EARTH_STATE_GLOBE_VIEW;
        break;
    case WIFI_EARTH_STATE_GLOBE_VIEW: {
        u16 prevZoomMode = wifiEarth->zoomMode;
        WiFiEarth_UpdateTouchInput(wifiEarth);

        if (JOY_NEW(PAD_BUTTON_B) || (wifiEarth->touchKeys & PAD_BUTTON_B)) {
            Window_EraseStandardFrame(&wifiEarth->exitButtonWindow, 0);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
            Window_FillRectWithColor(&wifiEarth->messageWindow, 15, 0, 0, 27 * 8, 4 * 8);

            if (wifiEarth->country1 == Country_Text_None) {
                wifiEarth->renderMode = WIFI_EARTH_RENDER_RESET;
                *state = WIFI_EARTH_STATE_SHOW_MENU_PROMPT;
            } else {
                WiFiEarth_FreeLocationInfo(wifiEarth);
                *state = WIFI_EARTH_STATE_FADE_OUT;
            }
        } else {
            if (JOY_NEW(PAD_BUTTON_X) && (wifiEarth->inspectMode == FALSE)) {
                wifiEarth->inspectMode = TRUE;
                WiFiEarth_ShowNearestMarker(wifiEarth);

                if (wifiEarth->inspectMode == TRUE) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
                }
                break;
            }

            if (JOY_NEW(PAD_BUTTON_X | PAD_BUTTON_A | PAD_BUTTON_B) && (wifiEarth->inspectMode == TRUE)) {
                wifiEarth->inspectMode = FALSE;
                WiFiEarth_ShowNearestMarker(wifiEarth);
                break;
            }

            {
                BOOL inputHandled;

                inputHandled = WiFiEarth_HandleRotationInput(wifiEarth, gSystem.pressedKeys, gSystem.heldKeys);

                if (inputHandled == TRUE && wifiEarth->inspectMode == TRUE) {
                    wifiEarth->inspectMode = FALSE;
                    WiFiEarth_ShowNearestMarker(wifiEarth);
                }
            }

            if (prevZoomMode != wifiEarth->zoomMode) {
                *state = WIFI_EARTH_STATE_ZOOM_TRANSITION;

                if (wifiEarth->zoomMode == WIFI_EARTH_ZOOM_OUT) {
                    Sound_PlayEffect(SEQ_SE_PL_TIMER03_sseq_1);
                } else {
                    Sound_PlayEffect(SEQ_SE_PL_TIMER03_sseq_1);
                }
            }
        }
    } break;
    case WIFI_EARTH_STATE_ZOOM_TRANSITION: {
        BOOL zoomDone = WiFiEarth_UpdateZoomTransition(wifiEarth);

        if (zoomDone == 1) {
            *state = WIFI_EARTH_STATE_GLOBE_VIEW;
        }
    } break;
    case WIFI_EARTH_STATE_FADE_OUT:
        wifiEarth->unread_BAEC = 0;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, wifiEarth->heapID);
        *state = WIFI_EARTH_STATE_EXIT;
        break;
    case WIFI_EARTH_STATE_EXIT:
        if (IsScreenFadeDone() == TRUE) {
            wifiEarth->renderMode = WIFI_EARTH_RENDER_SCENE;

            WiFiEarth_FreeGraphics(wifiEarth);
            WiFiEarth_Free3DModels(wifiEarth);
            MessageLoader_Free(wifiEarth->messageLoader);
            *state = WIFI_EARTH_STATE_INIT;
            done = TRUE;
        }
        break;
    }

    WiFiEarth_Draw3DScene(wifiEarth);

    return done;
}

int WiFiEarth_Exit(ApplicationManager *appMan, int *unused)
{
    WiFiEarthData *wifiEarth = ApplicationManager_Data(appMan);
    enum HeapID heapID = wifiEarth->heapID;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    Camera_Delete(wifiEarth->camera);
    StringTemplate_Free(wifiEarth->locationTemplate);
    Easy3D_Shutdown();
    Heap_Free(wifiEarth->bgConfig);
    SetVBlankCallback(NULL, NULL);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    return 1;
}

static void WiFiEarth_SetupGXBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&banks);
}

static void WiFiEarth_SetupGraphicsModes(void)
{
    GraphicsModes modes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&modes);
}

static void WiFiEarth_LoadLocationMarkers(WiFiEarthData *wifiEarth)
{
    NARC *narc = NARC_ctor(NARC_INDEX_APPLICATION__WIFI_EARTH__WIFI_EARTH_PLACE, wifiEarth->heapID);

    wifiEarth->markers.count = 0;

    WiFiEarthPlaceRecord *record;
    u32 byteSize;

    void *placeBuffer = LoadMemberFromOpenNARC_OutFileSize(narc, 18, 0, wifiEarth->heapID, 0, &byteSize);
    record = (WiFiEarthPlaceRecord *)placeBuffer;
    int recordCount = byteSize / sizeof(WiFiEarthPlaceRecord);

    record++;

    for (int i = 1; i < recordCount; i++) {
        if (record->type != 2) {
            WiFiEarth_AddLocationMarker(wifiEarth, wifiEarth->markers.count, record->x, record->y, i, 0);
            wifiEarth->markers.count++;
        }
        record++;
    }

    Heap_Free(placeBuffer);

    void *regionBuffer;
    WiFiEarthRegionRecord *regionRecord;
    u32 regionByteSize, narcMemberIndex;
    int countryCount, regionRecordCount;

    int countryIndex = 1;
    countryCount = sub_020996D0();

    while (countryIndex < countryCount) {
        narcMemberIndex = sub_02099764(countryIndex);
        regionBuffer = LoadMemberFromOpenNARC_OutFileSize(narc, narcMemberIndex, 0, wifiEarth->heapID, 0, &regionByteSize);
        regionRecord = (WiFiEarthRegionRecord *)regionBuffer;
        regionRecordCount = regionByteSize / sizeof(WiFiEarthRegionRecord);

        regionRecord++;

        for (int i = 1; i < regionRecordCount; i++) {
            WiFiEarth_AddLocationMarker(wifiEarth, wifiEarth->markers.count, regionRecord->x, regionRecord->y, sub_02099748(countryIndex), i);
            wifiEarth->markers.count++;
            regionRecord++;
        }

        Heap_Free(regionBuffer);
        countryIndex++;
    }

    NARC_dtor(narc);
}

static void WiFiEarth_AddLocationMarker(WiFiEarthData *wifiEarth, u32 index, s16 x, s16 y, u16 country, u16 region)
{
    MtxFx33 transform = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
    VecFx32 position;

    wifiEarth->markers.markers[index].x = x;
    wifiEarth->markers.markers[index].y = y;

    position.x = x;
    position.y = y;
    position.z = 0;

    WiFiEarth_BuildMarkerOrientationMatrix(&transform, &position);

    wifiEarth->markers.markers[index].transform = transform;
    wifiEarth->markers.markers[index].recency = WiFiHistory_GetGeonetCommunicatedWith(wifiEarth->wiFiHistory, country, region);
    wifiEarth->markers.markers[index].country = country;
    wifiEarth->markers.markers[index].region = region;
}

static void WiFiEarth_FocusPlayerLocation(WiFiEarthData *wifiEarth)
{
    for (int i = 0; i < wifiEarth->markers.count; i++) {
        if (wifiEarth->markers.markers[i].country == wifiEarth->country1 && wifiEarth->markers.markers[i].region == wifiEarth->region1) {
            wifiEarth->markers.markers[i].recency = WIFI_EARTH_RECENCY_SELF;
            wifiEarth->rotationAngle.x = wifiEarth->markers.markers[i].x;
            wifiEarth->rotationAngle.y = wifiEarth->markers.markers[i].y;
        }
    }
}

static int WiFiEarth_GetCountryIndex(int country)
{
    return GetCountryTableIndex(country);
}

static void WiFiEarth_UpdateTouchInput(WiFiEarthData *wifiEarth)
{
    int xKey, xMagnitude, yKey, yMagnitude;

    wifiEarth->touchKeys = 0;

    if (gSystem.touchPressed) {
        if ((gSystem.touchX >= (25 * 8)) && (gSystem.touchX <= ((25 + 6) * 8)) && (gSystem.touchY >= (21 * 8)) && (gSystem.touchY <= ((21 + 2) * 8))) {
            wifiEarth->touchKeys = PAD_BUTTON_B;
            return;
        }

        wifiEarth->touchDragPhase = 0;
        wifiEarth->touchDragX = 0;
        wifiEarth->touchDragY = 0;
        wifiEarth->touchHoldTimer = 0;
        wifiEarth->touchKeys = 0;
        wifiEarth->lastTouchX = gSystem.touchX;
        wifiEarth->lastTouchY = gSystem.touchY;
        wifiEarth->touchHoldTimer = 4;
    }

    if (gSystem.touchHeld) {
        switch (wifiEarth->touchDragPhase) {
        case 0:
            if (!wifiEarth->touchHoldTimer) {
                wifiEarth->touchDragPhase++;
            } else {
                wifiEarth->touchHoldTimer--;
            }
        case 1:
            WiFiEarth_GetTouchDragDelta(wifiEarth->lastTouchX, wifiEarth->lastTouchY, &xKey, &xMagnitude, &yKey, &yMagnitude);
            wifiEarth->touchKeys = xKey | yKey;
            wifiEarth->touchDragX = xMagnitude;
            wifiEarth->touchDragY = yMagnitude;
            wifiEarth->lastTouchX = gSystem.touchX;
            wifiEarth->lastTouchY = gSystem.touchY;
            break;
        }
    } else {
        if (wifiEarth->touchHoldTimer) {
            wifiEarth->touchKeys = PAD_BUTTON_A;
        }

        wifiEarth->touchDragPhase = 0;
        wifiEarth->touchDragX = 0;
        wifiEarth->touchDragY = 0;
        wifiEarth->touchHoldTimer = 0;
    }
}

static void WiFiEarth_GetTouchDragDelta(int lastTouchX, int lastTouchY, int *xKey, int *xMagnitude, int *yKey, int *yMagnitude)
{
    int keyX = 0;
    int keyY = 0;
    int deltaX = 0;
    int deltaY = 0;

    if (gSystem.touchX != 0xffff) {
        deltaX = gSystem.touchX - lastTouchX;

        if (deltaX < 0) {
            deltaX ^= -1;
            keyX = PAD_KEY_RIGHT;
        } else {
            if (deltaX > 0) {
                keyX = PAD_KEY_LEFT;
            }
        }
    }

    deltaX &= 0x3f;
    *xKey = keyX;
    *xMagnitude = deltaX;

    if (gSystem.touchY != 0xffff) {
        deltaY = gSystem.touchY - lastTouchY;

        if (deltaY < 0) {
            deltaY ^= -1;
            keyY = PAD_KEY_DOWN;
        } else {
            if (deltaY > 0) {
                keyY = PAD_KEY_UP;
            }
        }
    }

    deltaY &= 0x3f;
    *yKey = keyY;
    *yMagnitude = deltaY;
}

static void WiFiEarth_LoadGraphics(WiFiEarthData *wifiEarth, NARC *narc)
{
    Bg_InitFromTemplate(wifiEarth->bgConfig, BG_LAYER_SUB_2, &sWindowBgTemplate, 0);
    Bg_ClearTilemap(wifiEarth->bgConfig, BG_LAYER_SUB_2);
    Bg_InitFromTemplate(wifiEarth->bgConfig, BG_LAYER_SUB_3, &sBackgroundBgTemplate, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 5, wifiEarth->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, wifiEarth->heapID);
    Graphics_LoadPaletteFromOpenNARC(narc, 6, PAL_LOAD_SUB_BG, PLTT_OFFSET(0), PALETTE_SIZE_BYTES * 4, wifiEarth->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 7, wifiEarth->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, wifiEarth->heapID);
    LoadMessageBoxGraphics(wifiEarth->bgConfig, BG_LAYER_SUB_2, WIFI_EARTH_BASE_TILE_SCROLLING_MESSAGE_BOX, 6, Options_Frame(wifiEarth->options), wifiEarth->heapID);
    LoadStandardWindowGraphics(wifiEarth->bgConfig, BG_LAYER_SUB_2, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7, 0, wifiEarth->heapID);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(4), wifiEarth->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_2, 32, 0, wifiEarth->heapID);
    Bg_MaskPalette(BG_LAYER_SUB_2, 0x4753);
    Window_AddFromTemplate(wifiEarth->bgConfig, &wifiEarth->messageWindow, &sMessageWindowTemplate);
    Window_FillRectWithColor(&wifiEarth->messageWindow, 15, 0, 0, 27 * 8, 4 * 8);
    Window_DrawMessageBoxWithScrollCursor(&wifiEarth->messageWindow, 0, WIFI_EARTH_BASE_TILE_SCROLLING_MESSAGE_BOX, 6);

    wifiEarth->messageState = WIFI_EARTH_MESSAGE_STATE_START;

    Bg_InitFromTemplate(wifiEarth->bgConfig, BG_LAYER_MAIN_2, &sWindowBgTemplate, 0);
    Bg_ClearTilemap(wifiEarth->bgConfig, BG_LAYER_MAIN_2);
    Bg_InitFromTemplate(wifiEarth->bgConfig, BG_LAYER_MAIN_3, &sBackgroundBgTemplate, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 5, wifiEarth->bgConfig, BG_LAYER_MAIN_3, 0, 0, 0, wifiEarth->heapID);
    Graphics_LoadPaletteFromOpenNARC(narc, 6, PAL_LOAD_MAIN_BG, PLTT_OFFSET(0), PALETTE_SIZE_BYTES * 4, wifiEarth->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 7, wifiEarth->bgConfig, BG_LAYER_MAIN_3, 0, 0, 0, wifiEarth->heapID);
    LoadStandardWindowGraphics(wifiEarth->bgConfig, BG_LAYER_MAIN_2, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7, 0, wifiEarth->heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(4), wifiEarth->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, wifiEarth->heapID);
    Bg_MaskPalette(BG_LAYER_MAIN_2, 0x0);

    String *exitLabel = String_Init(16, wifiEarth->heapID);
    Font_InitManager(FONT_SUBSCREEN, wifiEarth->heapID);

    u16 textColor = 0x4e56;
    u16 shadowColor = 0x3571;
    u16 accentColor = 0x208c;
    u16 frameColor = 0x7fff;

    Bg_LoadPalette(BG_LAYER_MAIN_2, &textColor, sizeof(u16), PLTT_OFFSET(4) + 1 * sizeof(u16));
    Bg_LoadPalette(BG_LAYER_MAIN_2, &shadowColor, sizeof(u16), PLTT_OFFSET(4) + 2 * sizeof(u16));
    Bg_LoadPalette(BG_LAYER_MAIN_2, &accentColor, sizeof(u16), PLTT_OFFSET(4) + 3 * sizeof(u16));
    Bg_LoadPalette(BG_LAYER_MAIN_2, &frameColor, sizeof(u16), PLTT_OFFSET(4) + 15 * sizeof(u16));

    Window_AddFromTemplate(wifiEarth->bgConfig, &wifiEarth->exitButtonWindow, &sExitButtonWindowTemplate);
    Window_FillRectWithColor(&wifiEarth->exitButtonWindow, 15, 0, 0, 27 * 8, 4 * 8);
    MessageLoader_GetString(wifiEarth->messageLoader, WiFiEarth_Text_Exit, exitLabel);

    u32 exitLabelX;

    exitLabelX = Font_CalcCenterAlignment(FONT_SUBSCREEN, exitLabel, 0, 6 * 8);
    Text_AddPrinterWithParams(&wifiEarth->exitButtonWindow, FONT_SUBSCREEN, exitLabel, exitLabelX, 0, TEXT_SPEED_NO_TRANSFER, NULL);

    String_Free(exitLabel);
    Font_Free(FONT_SUBSCREEN);
}

static void WiFiEarth_FreeGraphics(WiFiEarthData *wifiEarth)
{
    Window_Remove(&wifiEarth->exitButtonWindow);
    Window_Remove(&wifiEarth->messageWindow);
    Bg_FreeTilemapBuffer(wifiEarth->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(wifiEarth->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(wifiEarth->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(wifiEarth->bgConfig, BG_LAYER_SUB_3);
}

static BOOL WiFiEarth_ShowMessage(WiFiEarthData *wifiEarth, u32 entryId, BOOL autoConfirm)
{
    BOOL done = FALSE;

    switch (wifiEarth->messageState) {
    case WIFI_EARTH_MESSAGE_STATE_START:
        Window_FillRectWithColor(&wifiEarth->messageWindow, 15, 0, 0, 27 * 8, 4 * 8);
        wifiEarth->messageText = String_Init(0x400, wifiEarth->heapID);
        MessageLoader_GetString(wifiEarth->messageLoader, entryId, wifiEarth->messageText);
        wifiEarth->messagePrinter = Text_AddPrinterWithParams(&wifiEarth->messageWindow, FONT_MESSAGE, wifiEarth->messageText, 0, 0, Options_TextFrameDelay(wifiEarth->options), NULL);
        wifiEarth->messageState = WIFI_EARTH_MESSAGE_STATE_PRINTING;
        break;
    case WIFI_EARTH_MESSAGE_STATE_PRINTING:
        if (!(Text_IsPrinterActive(wifiEarth->messagePrinter))) {
            String_Free(wifiEarth->messageText);
            wifiEarth->messageState = WIFI_EARTH_MESSAGE_STATE_CONFIRM;
        }
        break;
    case WIFI_EARTH_MESSAGE_STATE_CONFIRM:
        if ((autoConfirm != FALSE) || JOY_NEW(PAD_BUTTON_A)) {
            wifiEarth->messageState = WIFI_EARTH_MESSAGE_STATE_START;
            done = TRUE;
        }
    }

    return done;
}

static void WiFiEarth_SetCursorPos(ListMenu *listMenu, u32 unused, u8 mute)
{
    if (mute == 0) {
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
    }
}

static void WiFiEarth_CreateListMenu(WiFiEarthData *wifiEarth, Window *window, const WindowTemplate *windowTemplate, const ListMenuTemplate *listMenuTemplate, const WiFiEarthMenuItem *items)
{
    ListMenuTemplate template;

    Window_AddFromTemplate(wifiEarth->bgConfig, window, windowTemplate);
    wifiEarth->menuChoices = StringList_New(listMenuTemplate->count, wifiEarth->heapID);

    for (int i = 0; i < listMenuTemplate->count; i++) {
        StringList_AddFromMessageBank(wifiEarth->menuChoices, wifiEarth->messageLoader, items[i].messageId, items[i].value);
    }

    template = *listMenuTemplate;
    template.choices = wifiEarth->menuChoices;
    template.window = window;
    template.cursorCallback = WiFiEarth_SetCursorPos;
    wifiEarth->listMenu = ListMenu_New(&template, 0, 0, wifiEarth->heapID);

    Window_DrawStandardFrame(template.window, 1, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7);
    Window_CopyToVRAM(window);
}

static void WiFiEarth_CreateListMenuFromBank(WiFiEarthData *wifiEarth, Window *window, const WindowTemplate *windowTemplate, const ListMenuTemplate *listMenuTemplate, u32 bankId, const u8 *itemIds, u32 itemCount)
{
    ListMenuTemplate template;
    MessageLoader *loader;

    Window_AddFromTemplate(wifiEarth->bgConfig, window, windowTemplate);
    loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, bankId, wifiEarth->heapID);
    wifiEarth->menuChoices = StringList_New(itemCount, wifiEarth->heapID);

    for (int i = 0; i < itemCount; i++) {
        StringList_AddFromMessageBank(wifiEarth->menuChoices, loader, itemIds[i], i);
    }

    MessageLoader_Free(loader);

    template = *listMenuTemplate;
    template.choices = wifiEarth->menuChoices;
    template.count = itemCount;
    template.window = window;
    template.cursorCallback = WiFiEarth_SetCursorPos;

    wifiEarth->listMenu = ListMenu_New(&template, 0, 0, wifiEarth->heapID);

    Window_DrawStandardFrame(template.window, 1, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7);
    Window_CopyToVRAM(window);
}

static void WiFiEarth_FreeListMenu(WiFiEarthData *wifiEarth)
{
    Window_EraseStandardFrame(&wifiEarth->listMenuWindow, 0);
    Window_Remove(&wifiEarth->listMenuWindow);
    ListMenu_Free(wifiEarth->listMenu, NULL, NULL);
    StringList_Free(wifiEarth->menuChoices);
}

static void WiFiEarth_ShowPlayerLocation(WiFiEarthData *wifiEarth)
{
    String *text = String_Init(0x400, wifiEarth->heapID);
    String *format = String_Init(0x400, wifiEarth->heapID);

    Window_AddFromTemplate(wifiEarth->bgConfig, &wifiEarth->locationWindow, &sLocationInfoWindowTemplate);
    Window_FillRectWithColor(&wifiEarth->locationWindow, 15, 0, 0, 27 * 8, 6 * 8);
    Window_DrawStandardFrame(&wifiEarth->locationWindow, 0, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7);

    StringTemplate_SetCountryName(wifiEarth->locationTemplate, 0, wifiEarth->country1);
    StringTemplate_SetCityName(wifiEarth->locationTemplate, 1, wifiEarth->country1, wifiEarth->region1);

    MessageLoader_GetString(wifiEarth->messageLoader, WiFiEarth_Text_RegisteredLocation, format);
    StringTemplate_Format(wifiEarth->locationTemplate, text, format);

    Text_AddPrinterWithParams(&wifiEarth->locationWindow, FONT_SYSTEM, text, 0, 0, TEXT_SPEED_INSTANT, NULL);

    String_Free(format);
    String_Free(text);

    Window_CopyToVRAM(&wifiEarth->locationWindow);
}

static void WiFiEarth_ShowLocationInfo(WiFiEarthData *wifiEarth, int country, int region)
{
    String *countryName = String_Init(64, wifiEarth->heapID);
    String *regionName = String_Init(64, wifiEarth->heapID);

    Window_AddFromTemplate(wifiEarth->bgConfig, &wifiEarth->locationWindow, &sLocationInfoWindowTemplate);
    Window_FillRectWithColor(&wifiEarth->locationWindow, 15, 0, 0, 27 * 8, 6 * 8);
    Window_DrawStandardFrame(&wifiEarth->locationWindow, 0, WIFI_EARTH_BASE_TILE_STANDARD_WINDOW_FRAME, 7);

    WiFiEarth_GetLocationNames(country, region, countryName, regionName, wifiEarth->heapID);

    if (region != 0) {
        Text_AddPrinterWithParams(&wifiEarth->locationWindow, FONT_SYSTEM, regionName, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    Text_AddPrinterWithParams(&wifiEarth->locationWindow, FONT_SYSTEM, countryName, 0, 0, TEXT_SPEED_INSTANT, NULL);
    String_Free(regionName);
    String_Free(countryName);
    Window_CopyToVRAM(&wifiEarth->locationWindow);
}

static void WiFiEarth_FreeLocationInfo(WiFiEarthData *wifiEarth)
{
    Window_EraseStandardFrame(&wifiEarth->locationWindow, 0);
    Window_Remove(&wifiEarth->locationWindow);
}

static void WiFiEarth_ShowNearestMarker(WiFiEarthData *wifiEarth)
{
    if (wifiEarth->inspectMode == FALSE) {
        {
            String *text = String_Init(0x400, wifiEarth->heapID);

            Window_FillRectWithColor(&wifiEarth->messageWindow, 15, 0, 0, 27 * 8, 6 * 8);
            MessageLoader_GetString(wifiEarth->messageLoader, WiFiEarth_Text_InspectHint, text);
            Text_AddPrinterWithParams(&wifiEarth->messageWindow, FONT_MESSAGE, text, 0, 0, TEXT_SPEED_INSTANT, NULL);
            String_Free(text);
        }
    } else {
        BOOL found = FALSE;
        s16 xMin = (s16)(wifiEarth->rotationAngle.x - 0x80);
        s16 xMax = (s16)(wifiEarth->rotationAngle.x + 0x80);
        s16 yMin = (s16)(wifiEarth->rotationAngle.y - 0x80);
        s16 yMax = (s16)(wifiEarth->rotationAngle.y + 0x80);
        u32 bestDistance = 0x80 * 2;
        u32 bestIndex = wifiEarth->markers.count;
        u32 distance;
        Vec2s32 center, point;

        center.x = wifiEarth->rotationAngle.x;
        center.y = wifiEarth->rotationAngle.y;

        WiFiEarth_NormalizeAngle(&center);

        for (int i = 0; i < wifiEarth->markers.count; i++) {
            if ((wifiEarth->markers.markers[i].x > xMin) && (wifiEarth->markers.markers[i].x < xMax) && (wifiEarth->markers.markers[i].y > yMin) && (wifiEarth->markers.markers[i].y < yMax) && (wifiEarth->markers.markers[i].recency != WIFI_EARTH_RECENCY_NONE)) {
                point.x = wifiEarth->markers.markers[i].x;
                point.y = wifiEarth->markers.markers[i].y;

                WiFiEarth_NormalizeAngle(&point);

                distance = WiFiEarth_GetAngularDistance(&center, &point);

                if (distance < bestDistance) {
                    bestDistance = distance;
                    bestIndex = i;
                }
            }
        }

        if (bestIndex != wifiEarth->markers.count) {
            String *countryName = String_Init(64, wifiEarth->heapID);
            String *regionName = String_Init(64, wifiEarth->heapID);

            Window_FillRectWithColor(&wifiEarth->messageWindow, 15, 0, 0, 27 * 8, 6 * 8);
            WiFiEarth_GetLocationNames(wifiEarth->markers.markers[bestIndex].country, wifiEarth->markers.markers[bestIndex].region, countryName, regionName, wifiEarth->heapID);

            if (wifiEarth->markers.markers[bestIndex].region != 0) {
                Text_AddPrinterWithParams(&wifiEarth->messageWindow, FONT_MESSAGE, regionName, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);
            }

            Text_AddPrinterWithParams(&wifiEarth->messageWindow, FONT_MESSAGE, countryName, 0, 0, TEXT_SPEED_INSTANT, NULL);
            String_Free(regionName);
            String_Free(countryName);

            wifiEarth->rotationAngle.x = wifiEarth->markers.markers[bestIndex].x;
            wifiEarth->rotationAngle.y = wifiEarth->markers.markers[bestIndex].y;

            found = TRUE;
        }

        if (found == FALSE) {
            wifiEarth->inspectMode = FALSE;
        }
    }
}

static void WiFiEarth_Load3DModels(WiFiEarthData *wifiEarth, NARC *narc)
{
    wifiEarth->globeResource = NARC_AllocAndReadWholeMember(narc, 0, wifiEarth->heapID);
    Easy3D_InitRenderObjFromResource(&wifiEarth->globeRenderObj, &wifiEarth->globeModel, &wifiEarth->globeResource);

    wifiEarth->markerResources[3] = NARC_AllocAndReadWholeMember(narc, 1, wifiEarth->heapID);
    Easy3D_InitRenderObjFromResource(&wifiEarth->markerRenderObjs[3], &wifiEarth->markerModels[3], &wifiEarth->markerResources[3]);

    wifiEarth->markerResources[4] = NARC_AllocAndReadWholeMember(narc, 2, wifiEarth->heapID);
    Easy3D_InitRenderObjFromResource(&wifiEarth->markerRenderObjs[4], &wifiEarth->markerModels[4], &wifiEarth->markerResources[4]);

    wifiEarth->markerResources[1] = NARC_AllocAndReadWholeMember(narc, 3, wifiEarth->heapID);
    Easy3D_InitRenderObjFromResource(&wifiEarth->markerRenderObjs[1], &wifiEarth->markerModels[1], &wifiEarth->markerResources[1]);

    wifiEarth->markerResources[2] = NARC_AllocAndReadWholeMember(narc, 4, wifiEarth->heapID);
    Easy3D_InitRenderObjFromResource(&wifiEarth->markerRenderObjs[2], &wifiEarth->markerModels[2], &wifiEarth->markerResources[2]);
}

static void WiFiEarth_Free3DModels(WiFiEarthData *wifiEarth)
{
    Heap_Free(wifiEarth->markerResources[2]);
    Heap_Free(wifiEarth->markerResources[1]);
    Heap_Free(wifiEarth->markerResources[4]);
    Heap_Free(wifiEarth->markerResources[3]);
    Heap_Free(wifiEarth->globeResource);
}

static void WiFiEarth_ResetGlobeTransform(WiFiEarthData *wifiEarth)
{
    wifiEarth->renderOrigin.x = 0;
    wifiEarth->renderOrigin.y = 0;
    wifiEarth->renderOrigin.z = 0;

    wifiEarth->globeScale.x = (FX32_ONE);
    wifiEarth->globeScale.y = (FX32_ONE);
    wifiEarth->globeScale.z = (FX32_ONE);

    wifiEarth->rotationAngle.x = 0x1A40;
    wifiEarth->rotationAngle.y = 0x7C00;
    wifiEarth->rotationAngle.z = 0;

    wifiEarth->markerScale.x = (FX32_ONE);
    wifiEarth->markerScale.y = (FX32_ONE);
    wifiEarth->markerScale.z = (FX32_ONE);
}

static void WiFiEarth_InitCamera(WiFiEarthData *wifiEarth)
{
    VecFx32 target = { 0, 0, 0 };
    VecFx32 position = { 0, 0, 0x128000 };

    Camera_InitWithTargetAndPosition(&target, &position, 0x5c1, 0, 0, wifiEarth->camera);
    Camera_SetClipping(0, FX32_ONE * 100, wifiEarth->camera);
    Camera_ComputeProjectionMatrix(0, wifiEarth->camera);
    Camera_SetAsActive(wifiEarth->camera);

    if (wifiEarth->canRotateFreely == FALSE) {
        wifiEarth->zoomMode = WIFI_EARTH_ZOOM_IN;
    } else {
        wifiEarth->zoomMode = WIFI_EARTH_ZOOM_OUT;
    }

    while (TRUE) {
        if (WiFiEarth_UpdateZoomTransition(wifiEarth) == 1) {
            break;
        }
    }
}

static void WiFiEarth_InitLighting(WiFiEarthData *wifiEarth)
{
    wifiEarth->lightVector.x = 0;
    wifiEarth->lightVector.y = 0;
    wifiEarth->lightVector.z = (-(FX32_ONE - 1));

    NNS_G3dGlbLightVector(0, wifiEarth->lightVector.x, wifiEarth->lightVector.y, wifiEarth->lightVector.z);
}

static void WiFiEarth_BuildViewRotationMatrix(MtxFx33 *matrix, VecFx32 *angle)
{
    MtxFx33 temp;

    MTX_RotY33(matrix, FX_SinIdx((u16)angle->y), FX_CosIdx((u16)angle->y));
    MTX_RotX33(&temp, FX_SinIdx((u16)angle->x), FX_CosIdx((u16)angle->x));
    MTX_Concat33(matrix, &temp, matrix);
    MTX_RotZ33(&temp, FX_SinIdx((u16)angle->z), FX_CosIdx((u16)angle->z));
    MTX_Concat33(matrix, &temp, matrix);
}

static void WiFiEarth_BuildMarkerOrientationMatrix(MtxFx33 *matrix, VecFx32 *position)
{
    MtxFx33 temp;

    MTX_RotY33(matrix, FX_SinIdx((u16)position->x), FX_CosIdx((u16)position->x));
    MTX_RotX33(&temp, FX_SinIdx((u16)-position->y), FX_CosIdx((u16)-position->y));
    MTX_Concat33(matrix, &temp, matrix);
    MTX_RotZ33(&temp, FX_CosIdx((u16)position->z), FX_SinIdx((u16)position->z));
    MTX_Concat33(matrix, &temp, matrix);
}

static BOOL WiFiEarth_HandleRotationInput(WiFiEarthData *wifiEarth, int pressedKeys, int heldKeys)
{
    u16 yStep;
    u16 xStep;
    s16 currentX;
    s16 currentY;
    BOOL handled = FALSE;

    currentX = wifiEarth->rotationAngle.x;
    currentY = wifiEarth->rotationAngle.y;

    if ((pressedKeys & PAD_BUTTON_A) || (wifiEarth->touchKeys & PAD_BUTTON_A)) {
        if (wifiEarth->canRotateFreely == TRUE) {
            if (wifiEarth->zoomMode == WIFI_EARTH_ZOOM_OUT) {
                wifiEarth->zoomMode = WIFI_EARTH_ZOOM_IN;
            } else {
                wifiEarth->zoomMode = WIFI_EARTH_ZOOM_OUT;
            }
        }

        handled = TRUE;
        return handled;
    }

    if (wifiEarth->zoomMode == WIFI_EARTH_ZOOM_OUT) {
        if ((wifiEarth->touchDragX) || (wifiEarth->touchDragY)) {
            yStep = 512 / 6 * wifiEarth->touchDragX;
            xStep = 512 / 6 * wifiEarth->touchDragY;
        } else {
            yStep = 512;
            xStep = 512;
        }
    } else {
        if ((wifiEarth->touchDragX) || (wifiEarth->touchDragY)) {
            yStep = 32 / 3 * wifiEarth->touchDragX;
            xStep = 32 / 3 * wifiEarth->touchDragY;
        } else {
            yStep = 32;
            xStep = 32;
        }
    }

    if ((heldKeys & PAD_KEY_LEFT) || (wifiEarth->touchKeys & PAD_KEY_LEFT)) {
        if (wifiEarth->canRotateFreely == TRUE) {
            wifiEarth->rotationAngle.y += yStep;
        } else {
            if (currentY < (s16)55328) {
                wifiEarth->rotationAngle.y += yStep;
            }
        }

        handled = TRUE;
    }

    if ((heldKeys & PAD_KEY_RIGHT) || (wifiEarth->touchKeys & PAD_KEY_RIGHT)) {
        if (wifiEarth->canRotateFreely == TRUE) {
            wifiEarth->rotationAngle.y -= yStep;
        } else {
            if (currentY > (s16)52352) {
                wifiEarth->rotationAngle.y -= yStep;
            }
        }

        handled = TRUE;
    }

    if ((heldKeys & PAD_KEY_UP) || (wifiEarth->touchKeys & PAD_KEY_UP)) {
        if (wifiEarth->canRotateFreely == TRUE) {
            if ((currentX + xStep) < (16384 - 512)) {
                wifiEarth->rotationAngle.x += xStep;
            } else {
                wifiEarth->rotationAngle.x = (16384 - 512);
            }
        } else {
            if (currentX < (s16)8224) {
                wifiEarth->rotationAngle.x += xStep;
            }
        }

        handled = TRUE;
    }

    if ((heldKeys & PAD_KEY_DOWN) || (wifiEarth->touchKeys & PAD_KEY_DOWN)) {
        if (wifiEarth->canRotateFreely == TRUE) {
            if ((currentX - xStep) > (-16384 + 512)) {
                wifiEarth->rotationAngle.x -= xStep;
            } else {
                wifiEarth->rotationAngle.x = (-16384 + 512);
            }
        } else {
            if (currentX > (s16)4864) {
                wifiEarth->rotationAngle.x -= xStep;
            }
        }

        handled = TRUE;
    }

    return handled;
}

static BOOL WiFiEarth_UpdateZoomTransition(WiFiEarthData *wifiEarth)
{
    fx32 distance = Camera_GetDistance(wifiEarth->camera);
    BOOL done = FALSE;

    switch (wifiEarth->zoomMode) {
    case WIFI_EARTH_ZOOM_IN:
        if (distance > (327680 + 32768)) {
            distance -= 32768;
            wifiEarth->markerScale.x -= 128;
            wifiEarth->markerScale.y = wifiEarth->markerScale.x;
        } else {
            distance = 327680;
            done = TRUE;
        }
        break;
    case WIFI_EARTH_ZOOM_OUT:
        if (distance < (1212416 - 32768)) {
            distance += 32768;
            wifiEarth->markerScale.x += 128;
            wifiEarth->markerScale.y = wifiEarth->markerScale.x;
        } else {
            distance = 1212416;
            done = TRUE;
        }
        break;
    }

    Camera_SetDistance(distance, wifiEarth->camera);

    return done;
}

static void WiFiEarth_Draw3DScene(WiFiEarthData *wifiEarth)
{
    MtxFx33 viewRotation = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

    switch (wifiEarth->renderMode) {
    case WIFI_EARTH_RENDER_NONE:
        break;
    case WIFI_EARTH_RENDER_RESET:
        G3_ResetG3X();
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
        wifiEarth->renderMode = WIFI_EARTH_RENDER_NONE;
        break;
    case WIFI_EARTH_RENDER_SCENE:
        G3_ResetG3X();
        Camera_ComputeViewMatrix();

        WiFiEarth_BuildViewRotationMatrix(&viewRotation, &wifiEarth->rotationAngle);
        Easy3D_DrawRenderObj(&wifiEarth->globeRenderObj, &wifiEarth->renderOrigin, &viewRotation, &wifiEarth->globeScale);

        MtxFx33 identity = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
        Easy3D_DrawRenderObj(&wifiEarth->markerRenderObjs[4], &wifiEarth->renderOrigin, &identity, &wifiEarth->markerScale);

        MtxFx33 markerTransform = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

        for (int i = 0; i < wifiEarth->markers.count; i++) {
            MTX_Concat33(&wifiEarth->markers.markers[i].transform, &viewRotation, &markerTransform);

            if (wifiEarth->markers.markers[i].recency != WIFI_EARTH_RECENCY_NONE) {
                Easy3D_DrawRenderObj(&wifiEarth->markerRenderObjs[wifiEarth->markers.markers[i].recency], &wifiEarth->renderOrigin, &markerTransform, &wifiEarth->markerScale);
            }
        }

        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
        break;
    }
}

BOOL WiFiEarth_GetLocationNames(int country, int region, String *countryName, String *regionName, enum HeapID heapID)
{
    MessageLoader *loader;
    int countryIndex = WiFiEarth_GetCountryIndex(country);
    BOOL hasRegion;

    loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COUNTRY_NAMES, heapID);

    MessageLoader_GetString(loader, country, countryName);
    MessageLoader_Free(loader);

    if (countryIndex == 0) {
        countryIndex = 1;
        region = 0;
        hasRegion = FALSE;
    } else {
        hasRegion = TRUE;
    }

    loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, sub_0209972C(countryIndex), heapID);

    MessageLoader_GetString(loader, region, regionName);
    MessageLoader_Free(loader);

    return hasRegion;
}

BOOL WiFiEarth_CountryHasRegions(int country)
{
    if (WiFiEarth_GetCountryIndex(country)) {
        return TRUE;
    }

    return FALSE;
}

static void WiFiEarth_NormalizeAngle(Vec2s32 *angle)
{
    if (angle->x >= 0) {
        angle->x = angle->x % 0xffff;
    } else {
        angle->x = angle->x + (0xffff * ((MATH_ABS(angle->x) / 0xffff) + 1));
    }

    if (angle->y >= 0) {
        angle->y = angle->y % 0xffff;
    } else {
        angle->y = angle->y + (0xffff * ((MATH_ABS(angle->y) / 0xffff) + 1));
    }
}

static u32 WiFiEarth_GetAngularDistance(const Vec2s32 *a, const Vec2s32 *b)
{
    s32 dx, dy;
    u32 distance;

    dx = MATH_ABS(a->x - b->x);
    dy = MATH_ABS(a->y - b->y);

    if (dx > CalcAngleRotationIdx(180)) {
        dx = 0xffff - dx;
    }

    if (dy > CalcAngleRotationIdx(180)) {
        dy = 0xffff - dy;
    }

    distance = FX_Sqrt(((dx * dx) + (dy * dy)) << FX32_SHIFT) >> FX32_SHIFT;

    return distance;
}
