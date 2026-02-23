#include "applications/poffin_case/cutscene.h"

#include <nitro.h>

#include "applications/poffin_case/cutscene_sprite.h"
#include "applications/poffin_case/main.h"

#include "bg_window.h"
#include "communication_system.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "poffin_sprite.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

#include "res/graphics/poffin_case/feeding_cutscene/cutscene.naix"

#define MON_SPRITE_FAR_SIZE      0x1000
#define MON_SPRITE_FAR_X         128
#define MON_SPRITE_FAR_Y         96
#define MON_SPRITE_CLOSE_SIZE    0x1800
#define MON_SPRITE_CLOSE_X       128
#define MON_SPRITE_CLOSE_Y       112
#define POFFIN_SPRITE_START_SIZE 0x1000
#define POFFIN_SPRITE_END_SIZE   0x800

enum PoffinCutsceneState {
    STATE_FEED_POFFIN = 0,
    STATE_WAIT_FEED,
    STATE_PLAY_CRY,
    STATE_WAIT_CRY,
    STATE_MOVE_MON_BACK,
    STATE_WAIT_MOVE_MON_BACK,
    STATE_PRINT_MESSAGE,
    STATE_WAIT_MESSAGE_CLOSE,
    STATE_CLOSE_APP,
};

typedef struct PoffinCutsceneMessages {
    StringTemplate *template;
    String *buffer;
    String *strings[3];
} PoffinCutsceneMessages;

typedef struct SpriteData {
    VecFx32 startPos;
    VecFx32 endPos;
    VecFx32 posChangeStep;
    VecFx32 startSize;
    VecFx32 endSize;
    VecFx32 sizeStep;
    fx32 sineStep;
    fx32 unused;
    u16 offset;
    u16 unused2;
    fx32 unused3;
    int unused4;
} SpriteData;

typedef struct PoffinCutsceneTaskManager PoffinCutsceneTaskManager;

typedef struct PoffinCutsceneTask {
    int unused;
    int remainingCycles;
    int unused2;
    fx32 elapsedCycles;
    int unused3;
    PoffinCutsceneTaskManager *taskMan;
    SysTask *task;
} PoffinCutsceneTask;

struct PoffinCutsceneTaskManager {
    int unused;
    int runningTasks;
    int poffinPreference;
    SpriteData poffinSpriteState;
    SpriteData monSpriteState;
    Sprite *poffinSprite;
    PokemonSprite *monSprite;
    PoffinCutsceneTask tasks[4];
};

typedef struct PoffinCutscene {
    enum HeapID heapID;
    int subState;
    int unused;
    u16 printerID;
    u16 messageClearDelay;
    PoffinCutsceneData *data;
    int unused2;
    MessageLoader *msgLoader;
    PoffinCutsceneMessages messages;
    PoffinCutscenePokemon mon;
    PoffinCutsceneMonSprite monSprite;
    PoffinSpriteManager *poffinSpriteMan;
    PoffinSprite *poffinSprite;
    int unused3;
    BgConfig *bgConfig;
    Window window;
    SpriteSystem *spriteSys;
    PoffinCutsceneTaskManager taskMan;
} PoffinCutscene;

static BOOL FeedPoffinToPokemon(PoffinCutscene *app);
static void VblankCallback(void *arg);
static BOOL LoadApp(PoffinCutscene *app);
static BOOL UnloadApp(PoffinCutscene *app);
static void InitBackgrounds(PoffinCutscene *app);
static void FreeBackgrounds(PoffinCutscene *app);
static void LoadGraphics(PoffinCutscene *app);
static void InitWindow(PoffinCutscene *app);
static void FreeWindow(PoffinCutscene *app);
static void InitMessages(PoffinCutscene *app);
static void FreeMessages(PoffinCutscene *app);
static void GetPokemonInfo(PoffinCutscene *app);
static void FreeMonsName(PoffinCutscene *app);
static void InitSpriteSystem(PoffinCutscene *app);
static void FreeSpriteSystem(PoffinCutscene *app);

static enum PoffinCutsceneState PlayFeedingAnimation(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan);
static enum PoffinCutsceneState WaitForPoffinToBeFed(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan);
static enum PoffinCutsceneState PlayPokemonCry(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan);
static enum PoffinCutsceneState WaitForPokemonCry(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan);
static enum PoffinCutsceneState MoveMonBackToHome(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan);
static enum PoffinCutsceneState WaitForMonToFinishMoving(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan);
static enum PoffinCutsceneState PrintFeedMessage(PoffinCutscene *app);
static enum PoffinCutsceneState WaitForMessageClose(PoffinCutscene *app);

static void Task_SetPoffinSizeInitial(SysTask *task, void *taskData);
static void Task_UpdatePoffinSize(SysTask *task, void *taskData);
static void Task_SetPoffinPositionInitial(SysTask *task, void *taskData);
static void Task_UpdatePoffinPosition(SysTask *task, void *taskData);

static void Task_SetMonSizeInitial(SysTask *task, void *taskData);
static void Task_UpdateMonSizeApproach(SysTask *task, void *taskData);
static void Task_SetMonPositionInitial(SysTask *task, void *taskData);
static void Task_UpdateMonPositionOnApproach(SysTask *task, void *taskData);
static void Task_FinishMonApproach(SysTask *task, void *taskData);

static void Task_SetMonSizeAfterEating(SysTask *task, void *taskData);
static void Task_UpdateMonSizeRetreat(SysTask *task, void *taskData);
static void Task_SetMonPositionAfterEating(SysTask *task, void *taskData);
static void Task_UpdateMonPositionOnRetreat(SysTask *task, void *taskData);
static void Task_FinishMonRetreat(SysTask *task, void *taskData);
static void Task_StartMonLikedPoffinMovement(SysTask *task, void *taskData);
static void Task_UpdateMonPositionForLikedPoffin(SysTask *task, void *taskData);
static void Task_StartMonDislikedPoffinMovement(SysTask *task, void *taskData);
static void Task_UpdateMonPositionForDislikedPoffin(SysTask *task, void *taskData);

static VecFx32 DivideVector(VecFx32 *result, VecFx32 *numer, fx32 denom)
{
    VecFx32 zeroes = { 0, 0, 0 };

    result->x = FX_Div(numer->x, denom);
    result->y = FX_Div(numer->y, denom);
    result->z = FX_Div(numer->z, denom);

    return zeroes;
}

BOOL PoffinCutscene_Init(ApplicationManager *appMan, int *state)
{
    PoffinCutsceneData *data = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POFFIN_CUTSCENE, 0x10000);

    PoffinCutscene *app = ApplicationManager_NewData(appMan, sizeof(PoffinCutscene), HEAP_ID_POFFIN_CUTSCENE);
    MI_CpuClear8(app, sizeof(PoffinCutscene));

    app->heapID = HEAP_ID_POFFIN_CUTSCENE;
    app->data = data;

    return TRUE;
}

BOOL PoffinCutscene_Main(ApplicationManager *appMan, int *state)
{
    PoffinCutscene *app = ApplicationManager_Data(appMan);

    if (*state >= 2 && *state <= 5) {
        PoffinCutsceneMonSprite_Update(&app->monSprite);
        PoffinSpriteManager_DrawSprites(app->poffinSpriteMan);
    }

    switch (*state) {
    case 0:

        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        break;
    case 1:
        if (!LoadApp(app)) {
            return FALSE;
        }

        SetVBlankCallback(VblankCallback, app);
        break;
    case 2:
        if (app->subState++ < 4) {
            return FALSE;
        }

        app->subState = 0;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, app->heapID);
        break;
    case 3:
        if (!IsScreenFadeDone()) {
            return FALSE;
        }

        break;
    case 4:
        if (!FeedPoffinToPokemon(app)) {
            return FALSE;
        }

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, app->heapID);
        break;
    case 5:
        if (!IsScreenFadeDone()) {
            return FALSE;
        }

        break;
    case 6:
        if (!UnloadApp(app)) {
            return FALSE;
        }

        break;
    case 7:
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        SetVBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    default:
        return TRUE;
    }

    *state += 1;
    return FALSE;
}

BOOL PoffinCutscene_Exit(ApplicationManager *appMan, int *state)
{
    PoffinCutscene *app = ApplicationManager_Data(appMan);

    ApplicationManager_FreeData(appMan);

    Heap_Destroy(app->heapID);
    return TRUE;
}

static BOOL LoadApp(PoffinCutscene *app)
{
    switch (app->subState) {
    case 0:
        InitBackgrounds(app);
        LoadGraphics(app);
        break;
    case 1:
        InitMessages(app);
        InitWindow(app);
        break;
    case 2:
        GetPokemonInfo(app);
        PoffinCutsceneMonSprite_Init(&app->monSprite, &app->mon, app->heapID);
        InitSpriteSystem(app);

        app->subState = 0;
        return TRUE;
    }

    app->subState++;
    return FALSE;
}

static BOOL UnloadApp(PoffinCutscene *app)
{
    switch (app->subState) {
    case 0:
        FreeSpriteSystem(app);
        PoffinCutsceneMonSprite_Free(&app->monSprite);
        FreeMonsName(app);
        break;
    case 1:
        FreeWindow(app);
        FreeMessages(app);
        break;
    case 2:
        FreeBackgrounds(app);
        break;
    case 3:
        app->subState = 0;
        return TRUE;
    }

    app->subState++;
    return FALSE;
}

static void VblankCallback(void *arg)
{
    PoffinCutscene *app = arg;

    Bg_RunScheduledUpdates(app->bgConfig);
    PokemonSpriteManager_UpdateCharAndPltt(app->monSprite.spriteMan);

    SpriteSystem_TransferOam();
    VramTransfer_Process();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetGXBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_G,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0_F
    };

    GXLayers_SetBanks(&banks);
}

static void InitBackgrounds(PoffinCutscene *app)
{
    SetGXBanks();

    app->bgConfig = BgConfig_New(app->heapID);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[] = {
        {
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
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x7800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };
    u8 bgLayers[] = { BG_LAYER_MAIN_1, BG_LAYER_MAIN_2, BG_LAYER_SUB_0 };

    for (int i = 0; i < 3; i++) {
        int layer = bgLayers[i];
        Bg_InitFromTemplate(app->bgConfig, layer, &bgTemplates[i], BG_TYPE_STATIC);
        Bg_ClearTilemap(app->bgConfig, layer);
        Bg_ClearTilesRange(layer, 32, 0, app->heapID);
    }
}

static void FreeBackgrounds(PoffinCutscene *app)
{
    for (int i = 1; i < 3; i++) {
        Bg_FreeTilemapBuffer(app->bgConfig, i);
    }

    Bg_FreeTilemapBuffer(app->bgConfig, BG_LAYER_SUB_0);
    Heap_Free(app->bgConfig);
}

static void LoadGraphics(PoffinCutscene *app)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PORUDEMO, app->heapID);

    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__PORUDEMO, top_screen_tiles_NCGR, BG_LAYER_MAIN_2, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__PORUDEMO, bottom_screen_tiles_NCGR, BG_LAYER_SUB_0, GRAPHICSMEMBER_TILES, 0, 0);

    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__PORUDEMO, top_screen_tiles_NCLR, BG_LAYER_MAIN_2, GRAPHICSMEMBER_PALETTE, PALETTE_SIZE_BYTES, 0);
    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__PORUDEMO, bottom_screen_tiles_NCLR, BG_LAYER_SUB_0, GRAPHICSMEMBER_PALETTE, PALETTE_SIZE_BYTES * 5, 0);

    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__PORUDEMO, top_screen_tilemap_NSCR, BG_LAYER_MAIN_2, GRAPHICSMEMBER_TILEMAP, 0, 0);
    App_LoadGraphicMember(app->bgConfig, app->heapID, narc, NARC_INDEX_GRAPHIC__PORUDEMO, bottom_screen_tilemap_NSCR, BG_LAYER_SUB_0, GRAPHICSMEMBER_TILEMAP, 0, 0);

    NARC_dtor(narc);

    Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_SUB_0);
}

static void InitWindow(PoffinCutscene *app)
{
    static const WindowTemplate winTemplate = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = 15,
        .baseTile = 31
    };

    Window_AddFromTemplate(app->bgConfig, &app->window, &winTemplate);
    Window_FillTilemap(&app->window, 0);
    LoadMessageBoxGraphics(app->bgConfig, BG_LAYER_MAIN_1, 1, 14, app->data->frame, app->heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, 15 * 32, app->heapID);
}

static void FreeWindow(PoffinCutscene *app)
{
    Window_ClearAndCopyToVRAM(&app->window);
    Window_Remove(&app->window);
}

static void InitMessages(PoffinCutscene *app)
{
    app->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POFFIN_CUTSCENE, app->heapID);
    app->messages.template = StringTemplate_New(1, 64, app->heapID);
    app->messages.buffer = String_Init(64, app->heapID);

    for (int i = 0; i < 3; i++) {
        app->messages.strings[i] = MessageLoader_GetNewString(app->msgLoader, i);
    }
}

static void FreeMessages(PoffinCutscene *app)
{
    for (int i = 0; i < 3; i++) {
        String_Free(app->messages.strings[i]);
    }

    String_Free(app->messages.buffer);
    StringTemplate_Free(app->messages.template);
    MessageLoader_Free(app->msgLoader);
}

static void GetPokemonInfo(PoffinCutscene *app)
{
    app->mon.baseMon = app->data->mon;
    app->mon.species = Pokemon_GetValue(app->data->mon, MON_DATA_SPECIES, NULL);
    app->mon.gender = Pokemon_GetGender(app->data->mon);
    app->mon.nature = Pokemon_GetNature(app->data->mon);
    app->mon.flipSprite = SpeciesData_GetFormValue(app->mon.species, Pokemon_GetValue(app->data->mon, MON_DATA_FORM, NULL), SPECIES_DATA_FLIP_SPRITE) ^ 1;
    app->mon.name = String_Init(12, app->heapID);

    Pokemon_GetValue(app->data->mon, MON_DATA_NICKNAME_STRING, app->mon.name);

    app->mon.poffinPreference = PoffinCase_GetPoffinPreference(app->data->poffin, app->mon.nature);
}

static void FreeMonsName(PoffinCutscene *app)
{
    String_Free(app->mon.name);
}

static void InitSpriteSystem(PoffinCutscene *app)
{
    VramTransfer_New(32, app->heapID);

    app->spriteSys = SpriteSystem_Alloc(app->heapID);

    RenderOamTemplate oamTemplates = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 31,
        .subOamStart = 0,
        .subOamCount = 1,
        .subAffineOamStart = 0,
        .subAffineOamCount = 31,
    };
    CharTransferTemplateWithModes charTransferTemplates = {
        .maxTasks = 3,
        .sizeMain = 0,
        .sizeSub = 0,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    SpriteSystem_Init(app->spriteSys, &oamTemplates, &charTransferTemplates, 32);
    RenderOam_ClearMain(app->heapID);

    app->poffinSpriteMan = PoffinSpriteManager_New(app->heapID, 2, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 0);
    app->poffinSprite = PoffinSprite_New(app->poffinSpriteMan, app->data->poffinType, 100, 90, 0, 1, 0, FALSE);

    ManagedSprite_SetDrawFlag(app->poffinSprite->sprite, FALSE);

    if (CommSys_IsInitialized()) {
        sub_02039734();
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void FreeSpriteSystem(PoffinCutscene *app)
{
    PoffinSprite_Free(app->poffinSpriteMan, app->poffinSprite);
    PoffinSpriteManager_Free(app->poffinSpriteMan);
    SpriteSystem_Free(app->spriteSys);
    VramTransfer_Free();
}

static BOOL FeedPoffinToPokemon(PoffinCutscene *app)
{
    switch (app->subState) {
    case STATE_FEED_POFFIN:
        app->subState = PlayFeedingAnimation(app, &app->taskMan);
        break;
    case STATE_WAIT_FEED:
        app->subState = WaitForPoffinToBeFed(app, &app->taskMan);
        break;
    case STATE_PLAY_CRY:
        app->subState = PlayPokemonCry(app, &app->taskMan);
        break;
    case STATE_WAIT_CRY:
        app->subState = WaitForPokemonCry(app, &app->taskMan);
        break;
    case STATE_MOVE_MON_BACK:
        app->subState = MoveMonBackToHome(app, &app->taskMan);
        break;
    case STATE_WAIT_MOVE_MON_BACK:
        app->subState = WaitForMonToFinishMoving(app, &app->taskMan);
        break;
    case STATE_PRINT_MESSAGE:
        app->subState = PrintFeedMessage(app);
        break;
    case STATE_WAIT_MESSAGE_CLOSE:
        app->subState = WaitForMessageClose(app);
        break;
    case STATE_CLOSE_APP:
    default:
        app->subState = STATE_FEED_POFFIN;
        return TRUE;
    }

    return FALSE;
}

static int StartTask(PoffinCutsceneTaskManager *taskMan, int slot, SysTaskFunc taskFunc)
{
    PoffinCutsceneTask *task = &taskMan->tasks[slot];

    MI_CpuClear8(task, sizeof(PoffinCutsceneTask));

    task->taskMan = taskMan;
    task->task = SysTask_Start(taskFunc, task, 0);

    taskMan->runningTasks++;
    return taskMan->runningTasks;
}

static int EndTask(PoffinCutsceneTask *task)
{
    SysTask_Done(task->task);
    task->taskMan->runningTasks--;

    MI_CpuClear8(task, sizeof(PoffinCutsceneTask));
    return 0;
}

static enum PoffinCutsceneState PlayFeedingAnimation(PoffinCutscene *app, PoffinCutsceneTaskManager *man)
{
    VecFx32 poffinPosChange;

    MI_CpuClear8(man, sizeof(PoffinCutsceneTaskManager));

    man->poffinSprite = app->poffinSprite->sprite->sprite;
    man->monSprite = app->monSprite.sprite;
    man->poffinPreference = app->mon.poffinPreference;
    man->unused = 24;
    man->poffinSpriteState.startPos.x = FX32_CONST(128);
    man->poffinSpriteState.startPos.y = FX32_CONST(192 + 32);
    man->poffinSpriteState.endPos.x = FX32_CONST(128);
    man->poffinSpriteState.endPos.y = FX32_CONST(96);
    man->poffinSpriteState.startSize.x = POFFIN_SPRITE_START_SIZE;
    man->poffinSpriteState.startSize.y = POFFIN_SPRITE_START_SIZE;
    man->poffinSpriteState.endSize.x = POFFIN_SPRITE_END_SIZE;
    man->poffinSpriteState.endSize.y = POFFIN_SPRITE_END_SIZE;
    man->poffinSpriteState.unused4 = 24;
    man->poffinSpriteState.unused3 = 0;

    Sprite_SetPosition(man->poffinSprite, &man->poffinSpriteState.startPos);
    VEC_Subtract(&man->poffinSpriteState.startPos, &man->poffinSpriteState.endPos, &poffinPosChange);
    DivideVector(&man->poffinSpriteState.sizeStep, &poffinPosChange, FX32_CONST(24));

    Sprite_SetAffineOverwriteMode(man->poffinSprite, AFFINE_OVERWRITE_MODE_NORMAL);
    Sprite_SetAffineScale(man->poffinSprite, &man->poffinSpriteState.startSize);

    StartTask(man, 0, Task_SetPoffinSizeInitial);
    StartTask(man, 1, Task_SetPoffinPositionInitial);
    StartTask(man, 2, Task_SetMonSizeInitial);
    StartTask(man, 3, Task_SetMonPositionInitial);

    return STATE_WAIT_FEED;
}

static enum PoffinCutsceneState WaitForPoffinToBeFed(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan)
{
    if (taskMan->runningTasks) {
        return STATE_WAIT_FEED;
    }

    return STATE_PLAY_CRY;
}

static enum PoffinCutsceneState PlayPokemonCry(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan)
{
    u32 form = Pokemon_GetValue(app->mon.baseMon, MON_DATA_FORM, NULL);

    switch (app->mon.poffinPreference) {
    case POFFIN_PREFERENCE_DISLIKE:
        Sound_PlayPokemonCryEx(POKECRY_PINCH_NORMAL, app->mon.species, 0, 127, app->heapID, form);
        break;
    default:
        Sound_PlayPokemonCryEx(POKECRY_NORMAL, app->mon.species, 0, 127, app->heapID, form);
        break;
    }

    return STATE_WAIT_CRY;
}

static enum PoffinCutsceneState WaitForPokemonCry(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan)
{
    if (Sound_IsPokemonCryPlaying()) {
        return STATE_WAIT_CRY;
    }

    Sound_StopPokemonCries(0);
    return STATE_MOVE_MON_BACK;
}

static enum PoffinCutsceneState MoveMonBackToHome(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan)
{
    MI_CpuClear8(&taskMan->monSpriteState, sizeof(SpriteData));
    StartTask(taskMan, 0, Task_SetMonSizeAfterEating);
    StartTask(taskMan, 1, Task_SetMonPositionAfterEating);

    return STATE_WAIT_MOVE_MON_BACK;
}

static enum PoffinCutsceneState WaitForMonToFinishMoving(PoffinCutscene *app, PoffinCutsceneTaskManager *taskMan)
{
    if (taskMan->runningTasks) {
        return STATE_WAIT_MOVE_MON_BACK;
    }

    return STATE_PRINT_MESSAGE;
}

static enum PoffinCutsceneState PrintFeedMessage(PoffinCutscene *app)
{
    Window_DrawMessageBoxWithScrollCursor(&app->window, TRUE, 1, 14);
    Window_FillTilemap(&app->window, PIXEL_FILL(15));
    String_Clear(app->messages.buffer);
    StringTemplate_SetString(app->messages.template, 0, app->mon.name, 2, 1, GAME_LANGUAGE);
    StringTemplate_Format(app->messages.template, app->messages.buffer, app->messages.strings[app->mon.poffinPreference]);

    app->printerID = Text_AddPrinterWithParamsAndColor(&app->window, FONT_MESSAGE, app->messages.buffer, 0, 0, app->data->textDelay, TEXT_COLOR(1, 2, 15), NULL);
    app->messageClearDelay = 0;

    return STATE_WAIT_MESSAGE_CLOSE;
}

static enum PoffinCutsceneState WaitForMessageClose(PoffinCutscene *app)
{
    if (Text_IsPrinterActive(app->printerID)) {
        return STATE_WAIT_MESSAGE_CLOSE;
    }

    if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) == 0 && app->messageClearDelay++ < 90) {
        return STATE_WAIT_MESSAGE_CLOSE;
    }

    Window_EraseMessageBox(&app->window, TRUE);
    Window_ClearAndCopyToVRAM(&app->window);

    return STATE_CLOSE_APP;
}

static void Task_SetPoffinSizeInitial(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->poffinSpriteState;
    VecFx32 totalSizeChange;

    pTask->remainingCycles = 24;

    data->startSize.x = POFFIN_SPRITE_START_SIZE;
    data->startSize.y = POFFIN_SPRITE_START_SIZE;
    data->endSize.x = POFFIN_SPRITE_END_SIZE;
    data->endSize.y = POFFIN_SPRITE_END_SIZE;

    VEC_Subtract(&data->startSize, &data->endSize, &totalSizeChange);

    DivideVector(&data->sizeStep, &totalSizeChange, FX32_CONST(pTask->remainingCycles));
    Sprite_SetDrawFlag(taskMan->poffinSprite, TRUE);
    Sprite_SetAffineOverwriteMode(taskMan->poffinSprite, AFFINE_OVERWRITE_MODE_NORMAL);
    Sprite_SetAffineScale(taskMan->poffinSprite, &data->startSize);
    SysTask_SetCallback(task, Task_UpdatePoffinSize);
}

static void Task_UpdatePoffinSize(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->poffinSpriteState;
    VecFx32 scale = { 0, 0, 0 };

    scale.x = data->startSize.x - FX_Mul(data->sizeStep.x, pTask->elapsedCycles);
    scale.y = data->startSize.y - FX_Mul(data->sizeStep.y, pTask->elapsedCycles);

    Sprite_SetAffineScale(taskMan->poffinSprite, &scale);

    pTask->elapsedCycles += FX32_ONE;
    pTask->remainingCycles--;

    if (pTask->remainingCycles == 0) {
        Sprite_SetDrawFlag(taskMan->poffinSprite, FALSE);
        EndTask(pTask);
    }
}

static void Task_SetPoffinPositionInitial(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->poffinSpriteState;
    VecFx32 totalPosChange = { 0, 0, 0 };

    pTask->remainingCycles = 24;

    data->startPos.x = FX32_CONST(128);
    data->startPos.y = FX32_CONST(192 + 32);
    data->endPos.x = FX32_CONST(128);
    data->endPos.y = FX32_CONST(96);

    VEC_Subtract(&data->endPos, &data->startPos, &totalPosChange);
    DivideVector(&data->posChangeStep, &totalPosChange, FX32_CONST(pTask->remainingCycles));

    data->sineStep = FX_Div(FX32_CONST(180), FX32_CONST(pTask->remainingCycles));
    data->unused = FX_Div(FX32_CONST(1), FX32_CONST(pTask->remainingCycles));

    Sprite_SetPosition(taskMan->poffinSprite, &data->startPos);
    SysTask_SetCallback(task, Task_UpdatePoffinPosition);
}

static void Task_UpdatePoffinPosition(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->poffinSpriteState;
    VecFx32 newPos;

    newPos.x = data->startPos.x + FX_Mul(data->posChangeStep.x, pTask->elapsedCycles);
    newPos.y = data->startPos.y + FX_Mul(data->posChangeStep.y, pTask->elapsedCycles);

    fx32 sineFactor = FX_Mul(data->sineStep, pTask->elapsedCycles);
    sineFactor = FX_Mul(CalcSineDegrees_Wraparound(sineFactor >> 12), FX32_CONST(-64));
    newPos.y += FX_Mul(sineFactor, FX32_ONE);

    Sprite_SetPosition(taskMan->poffinSprite, &newPos);

    pTask->elapsedCycles += FX32_ONE;
    pTask->remainingCycles--;

    if (pTask->remainingCycles == 0) {
        EndTask(pTask);
    }
}

static void Task_SetMonSizeInitial(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 totalSizeChange;

    pTask->remainingCycles = 24;

    data->startSize.x = MON_SPRITE_FAR_SIZE;
    data->startSize.y = MON_SPRITE_FAR_SIZE;
    data->endSize.x = MON_SPRITE_CLOSE_SIZE;
    data->endSize.y = MON_SPRITE_CLOSE_SIZE;

    VEC_Subtract(&data->endSize, &data->startSize, &totalSizeChange);
    DivideVector(&data->sizeStep, &totalSizeChange, FX32_CONST(pTask->remainingCycles));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_X, MON_SPRITE_FAR_SIZE >> 4);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_Y, MON_SPRITE_FAR_SIZE >> 4);
    SysTask_SetCallback(task, Task_UpdateMonSizeApproach);
}

static void Task_UpdateMonSizeApproach(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 newScale;

    newScale.x = data->startSize.x + FX_Mul(data->sizeStep.x, pTask->elapsedCycles);
    newScale.y = data->startSize.y + FX_Mul(data->sizeStep.y, pTask->elapsedCycles);

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_X, newScale.x >> 4);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_Y, newScale.y >> 4);

    pTask->elapsedCycles += FX32_ONE;
    pTask->remainingCycles--;

    if (pTask->remainingCycles == 0) {
        PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_CENTER, 128);
        PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_CENTER, 96);
        EndTask(pTask);
    }
}

static void Task_SetMonPositionInitial(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 totalSizeChange;

    pTask->remainingCycles = 24;

    data->startPos.x = FX32_CONST(MON_SPRITE_FAR_X);
    data->startPos.y = FX32_CONST(MON_SPRITE_FAR_Y);
    data->endPos.x = FX32_CONST(MON_SPRITE_CLOSE_X);
    data->endPos.y = FX32_CONST(MON_SPRITE_CLOSE_Y);

    VEC_Subtract(&data->endPos, &data->startPos, &totalSizeChange);
    DivideVector(&data->posChangeStep, &totalSizeChange, FX32_CONST(pTask->remainingCycles));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_CENTER, data->startPos.x >> 12);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_CENTER, data->startPos.y >> 12);
    SysTask_SetCallback(task, Task_UpdateMonPositionOnApproach);
}

static void Task_UpdateMonPositionOnApproach(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 newPos;

    newPos.x = data->startPos.x + FX_Mul(data->posChangeStep.x, pTask->elapsedCycles);
    newPos.y = data->startPos.y + FX_Mul(data->posChangeStep.y, pTask->elapsedCycles);

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_CENTER, newPos.x >> 12);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_CENTER, newPos.y >> 12);

    int offsetInt = data->offset - 4;
    offsetInt = -(offsetInt * offsetInt) + 16;

    fx32 yOffset = FX32_CONST(-offsetInt);
    yOffset = FX_Mul(yOffset, FX32_CONST(1.4));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_OFFSET, yOffset >> 12);

    data->offset++;

    if (data->offset > 8) {
        data->offset = 0;
    }

    pTask->elapsedCycles += FX32_ONE;

    if (pTask->remainingCycles--) {
        return;
    }

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_OFFSET, 0);
    data->offset = 0;

    SysTask_SetCallback(task, Task_FinishMonApproach);
}

static void Task_FinishMonApproach(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;

    if (data->offset++ < 4) {
        return;
    }

    EndTask(pTask);
}

static void Task_SetMonSizeAfterEating(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 totalSizeChange;

    pTask->remainingCycles = 24 / 3;

    data->startSize.x = MON_SPRITE_CLOSE_SIZE;
    data->startSize.y = MON_SPRITE_CLOSE_SIZE;
    data->endSize.x = MON_SPRITE_FAR_SIZE;
    data->endSize.y = MON_SPRITE_FAR_SIZE;

    VEC_Subtract(&data->endSize, &data->startSize, &totalSizeChange);
    DivideVector(&data->sizeStep, &totalSizeChange, FX32_CONST(pTask->remainingCycles));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_X, MON_SPRITE_CLOSE_SIZE >> 4);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_Y, MON_SPRITE_CLOSE_SIZE >> 4);
    SysTask_SetCallback(task, Task_UpdateMonSizeRetreat);
}

static void Task_UpdateMonSizeRetreat(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 newSize;

    newSize.x = data->startSize.x + FX_Mul(data->sizeStep.x, pTask->elapsedCycles);
    newSize.y = data->startSize.y + FX_Mul(data->sizeStep.y, pTask->elapsedCycles);

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_X, newSize.x >> 4);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_Y, newSize.y >> 4);

    pTask->elapsedCycles += FX32_ONE;
    pTask->remainingCycles--;

    if (pTask->remainingCycles) {
        return;
    }

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_X, 0x100);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_SCALE_Y, 0x100);
    EndTask(pTask);
}

static void Task_SetMonPositionAfterEating(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 totalPosChange;

    pTask->remainingCycles = 24 / 3;

    data->startPos.x = FX32_CONST(MON_SPRITE_CLOSE_X);
    data->startPos.y = FX32_CONST(MON_SPRITE_CLOSE_Y);
    data->endPos.x = FX32_CONST(MON_SPRITE_FAR_X);
    data->endPos.y = FX32_CONST(MON_SPRITE_FAR_Y);

    VEC_Subtract(&data->endPos, &data->startPos, &totalPosChange);
    DivideVector(&data->posChangeStep, &totalPosChange, FX32_CONST(pTask->remainingCycles));

    data->sineStep = FX_Div(FX32_CONST(180), FX32_CONST(pTask->remainingCycles));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_CENTER, data->startPos.x >> 12);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_CENTER, data->startPos.y >> 12);
    SysTask_SetCallback(task, Task_UpdateMonPositionOnRetreat);
}

static void Task_UpdateMonPositionOnRetreat(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    VecFx32 newPos;

    newPos.x = data->startPos.x + FX_Mul(data->posChangeStep.x, pTask->elapsedCycles);
    newPos.y = data->startPos.y + FX_Mul(data->posChangeStep.y, pTask->elapsedCycles);

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_CENTER, newPos.x >> 12);
    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_CENTER, newPos.y >> 12);

    fx32 yOffset = FX_Mul(data->sineStep, pTask->elapsedCycles);
    yOffset = FX_Mul(CalcSineDegrees_Wraparound(yOffset >> 12), FX32_CONST(-6));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_OFFSET, yOffset >> 12);

    pTask->elapsedCycles += FX32_ONE;
    pTask->remainingCycles--;

    if (pTask->remainingCycles) {
        return;
    }

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_OFFSET, 0);
    SysTask_SetCallback(task, Task_FinishMonRetreat);
}

static void Task_FinishMonRetreat(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;

    if (pTask->remainingCycles++ < 4) {
        return;
    }

    switch (pTask->taskMan->poffinPreference) {
    case POFFIN_PREFERENCE_LIKE:
        SysTask_SetCallback(task, Task_StartMonLikedPoffinMovement);
        break;
    case POFFIN_PREFERENCE_DISLIKE:
        SysTask_SetCallback(task, Task_StartMonDislikedPoffinMovement);
        break;
    default:
        EndTask(pTask);
        break;
    }
}

static void Task_StartMonLikedPoffinMovement(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;

    MI_CpuClear8(data, sizeof(SpriteData));
    pTask->remainingCycles = 3;
    SysTask_SetCallback(task, Task_UpdateMonPositionForLikedPoffin);
}

static void Task_UpdateMonPositionForLikedPoffin(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;

    int offsetInt = data->offset - 4;
    offsetInt = -(offsetInt * offsetInt) + 16;

    fx32 yOffset = FX32_CONST(-offsetInt);
    yOffset = FX_Mul(yOffset, FX32_CONST(1.4));

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_OFFSET, yOffset >> 12);

    data->unused2 = 0;
    data->offset++;

    if (data->offset > 8) {
        data->offset = 0;
        pTask->remainingCycles--;
    }

    if (pTask->remainingCycles == 0) {
        PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_Y_OFFSET, 0);
        EndTask(pTask);
    }
}

static void Task_StartMonDislikedPoffinMovement(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;

    MI_CpuClear8(data, sizeof(SpriteData));
    pTask->remainingCycles = 32;
    SysTask_SetCallback(task, Task_UpdateMonPositionForDislikedPoffin);
}

static void Task_UpdateMonPositionForDislikedPoffin(SysTask *task, void *taskData)
{
    PoffinCutsceneTask *pTask = taskData;
    PoffinCutsceneTaskManager *taskMan = pTask->taskMan;
    SpriteData *data = &taskMan->monSpriteState;
    fx32 xOffset;

    xOffset = CalcSineDegrees_Wraparound(data->offset);
    xOffset = FX_Mul(xOffset, FX32_CONST(2));

    if (data->offset > 359) {
        data->offset = 0;
    } else {
        data->offset += 90;
    }

    PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_OFFSET, xOffset >> 12);

    pTask->remainingCycles--;

    if (pTask->remainingCycles == 0) {
        PokemonSprite_SetAttribute(taskMan->monSprite, MON_SPRITE_X_OFFSET, 0);
        EndTask(pTask);
    }
}
