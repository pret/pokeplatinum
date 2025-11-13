#include "cutscenes/hall_of_fame.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay005/struct_ov5_021DE5D0.h"

#include "bg_window.h"
#include "camera.h"
#include "character_sprite.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "play_time.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"

#include "res/text/bank/hall_of_fame.h"

#define ROW_HEIGHT 16

#define POKEMON_FRAME_WIDTH  96
#define POKEMON_FRAME_HEIGHT 128
#define PLAYER_FRAME_HEIGHT  144

#define VIEWPORT_X_MIN 0
#define VIEWPORT_X_MAX 255
#define VIEWPORT_Y_MIN 0
#define VIEWPORT_Y_MAX 191

#define NUM_CONFETTI 48

#define MAX_SPOTLIGHT_TASKS 8

typedef struct HallOfFameMovement {
    fx32 start;
    fx32 stepSize;
    fx32 end;
    int numSteps;
    BOOL done;
} HallOfFameMovement;

typedef struct HallOfFameMan {
    int state;
    int monCount;
    int delay;
    HallOfFameDisplayData *displayData;
    BgConfig *bgConfig;
    Window window;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    Sprite *monSprites[MAX_PARTY_SIZE];
    Sprite *sprite;
    void *unk_1D0;
    void *unk_1D4;
    SpriteAnimFrame animFrames[MAX_PARTY_SIZE][MAX_ANIMATION_FRAMES];
    int slotIndexes[MAX_PARTY_SIZE];
    int species[MAX_PARTY_SIZE];
    u32 forms[MAX_PARTY_SIZE];
    u8 unk_310[6400];
    Camera *camera;
    VecFx32 position;
    CameraAngle cameraAngle;
    SysTask *task_1C28;
    SysTask *taskSpotlights;
    SysTask *taskConfetti;
    SysTask *tasks[4];
    StringTemplate *strTemplate;
    Strbuf *strbuf_1C30;
    Strbuf *strbuf_1C4C;
    MessageLoader *msgLoaderHallOfFame;
    NARC *narc;
} HallOfFameMan;

typedef struct HallOfFameConfetti {
    int color;
    int unk_04;
    VecFx16 unk_08[4];
    VecFx16 unk_20;
    VecFx16 unk_26;
    MtxFx44 pDst;
    BOOL unk_6C;
} HallOfFameConfetti;

typedef struct HallOfFameConfettiAnimation {
    BOOL active;
    volatile BOOL unk_04;
    HallOfFameConfetti confetti[48];
    GXDLInfo info;
    u32 unk_151C[7680];
    u32 unk_8D1C;
    int unk_8D20;
    MtxFx44 pDst;
} HallOfFameConfettiAnimation;

typedef struct HallOfFameTask {
    void *data;
    SysTask **task;
} HallOfFameTask;

typedef struct HallOfFamePokemonSprite {
    HallOfFameTask hallOfFameTask;
    Sprite *sprite;
    VecFx32 position;
    HallOfFameMovement movement;
} HallOfFamePokemonSprite;

typedef struct HallOfFamePlayerSprite {
    HallOfFameTask hallOfFameTask;
    Sprite *sprite;
    VecFx32 position;
    HallOfFameMovement movement;
} HallOfFamePlayerSprite;

typedef struct HallOfFameFrameSliderHorizontal {
    HallOfFameTask hallOfFameTask;
    HallOfFameMovement movement;
} HallOfFameFrameSliderHorizontal;

typedef struct HallOfFameFrameSliderVertical {
    HallOfFameTask hallOfFameTask;
    HallOfFameMovement movement;
    int left;
    int right;
    int height;
} HallOfFameFrameSliderVertical;

typedef struct HallOfFameFrameExpander {
    HallOfFameTask hallOfFameTask;
    HallOfFameMovement movementLeft;
    HallOfFameMovement movementRight;
    int top;
    int bottom;
} HallOfFameFrameExpander;

typedef struct HallOfFameSliderToBlack {
    HallOfFameTask hallOfFameTask;
    HallOfFameMovement movementTop;
    HallOfFameMovement movementBottom;
    int left;
    int right;
} HallOfFameSliderToBlack;

typedef struct HallOfFamePokemonAnimation {
    HallOfFameTask hallOfFameTask;
    Sprite *sprite;
    const SpriteAnimFrame *animFrame;
    PokemonSpriteTaskAnim anim;
    NNSG2dImageProxy imageProxies[2];
    BOOL playCry;
    int species;
    u32 form;
} HallOfFamePokemonAnimation;

typedef struct HallOfFamePokemonTextAdder {
    HallOfFameTask hallOfFameTask;
    HallOfFameMan *hallOfFameMan;
    BgConfig *bgConfig;
    Window *window;
    StringTemplate *strTemplate;
    Strbuf *strbuf_18;
    Strbuf *strbuf_1C;
    MessageLoader *msgLoader;
    Pokemon *mon;
    const TrainerInfo *trainerInfo;
    int xPosition;
    int delay;
    int state;
} HallOfFamePokemonTextAdder;

typedef struct HallOfFamePokemonTextRemover {
    HallOfFameTask hallOfFameTask;
    HallOfFameMan *hallOfFameMan;
    BgConfig *bgConfig;
    Window *window;
    HallOfFameMovement movement;
    int state;
    int bgLayer;
} HallOfFamePokemonTextRemover;

typedef struct HallOfFamePartySprites {
    HallOfFameTask hallOfFameTask;
    Sprite **sprites;
    HallOfFameMan *hallOfFameMan;
    int monIndex;
    int monCount;
    int delay;
    HallOfFameMovement movements[6];
    VecFx32 positions[6];
} HallOfFamePartySprites;

typedef struct HallOfFameSpotlights {
    GXDLInfo info;
    u32 ptr[512];
    u32 ptrSize;
    SysTask *tasks[MAX_SPOTLIGHT_TASKS];
    SysTask *task;
    int taskID;
    HallOfFameMan *hallOfFameMan;
} HallOfFameSpotlights;

typedef struct {
    GXDLInfo *info;
    u32 unk_04[512];
    u32 unk_804;
    fx32 unk_808;
    fx32 unk_80C;
    int color;
    int unk_814;
    fx16 unk_818;
    VecFx16 unk_81A;
    VecFx16 unk_820;
    VecFx16 unk_826;
    VecFx16 unk_82C;
    HallOfFameMan *hallOfFameMan;
} UnkStruct_ov86_0223CAE4;

static void inline inline_ov86_0223CB74(UnkStruct_ov86_0223CAE4 *wk);
static BOOL HallOfFame_State_FadeIn(HallOfFameMan *hallOfFameMan);
static BOOL HallOfFame_State_FadeOut(HallOfFameMan *hallOfFameMan);
static BOOL HallOfFame_State_ShowIndividualPokemon(HallOfFameMan *hallOfFameMan);
static BOOL HallOfFame_State_ShowPartyAndPlayer(HallOfFameMan *hallOfFameMan);
static BOOL HallOfFame_State_WipeToBlack(HallOfFameMan *hallOfFameMan);
static BOOL HallOfFame_IsSysTaskDone(HallOfFameMan *hallOfFameMan, int taskID);
static void ov86_0223B6CC(SysTask *task, void *data);
static SysTask *HallOfFame_ExecuteSysTaskOnVBlank(SysTaskFunc callback, void *param, int priority);
static void ov86_0223B74C(HallOfFameMan *hallOfFameMan);
static void ov86_0223B8C4(HallOfFameMan *hallOfFameMan);
static void ov86_0223B900(HallOfFameMan *hallOfFameMan);
static void HallOfFame_InitCamera(HallOfFameMan *hallOfFameMan);
static void HallOfFame_DeleteCamera(HallOfFameMan *hallOfFameMan);
static void ov86_0223BA44(HallOfFameMan *hallOfFameMan);
static void ov86_0223BAC8(HallOfFameMan *hallOfFameMan, NNSG2dCellDataBank *cellBank, NNSG2dAnimBankData *animBank, NARC *narc);
static void HallOfFame_DeleteSprites(HallOfFameMan *hallOfFameMan);
static void HallOfFame_ShowPokemonSprite(HallOfFameMan *hallOfFameMan, int monIndex, int taskID);
static void HallOfFame_SlideInPokemonSprite(SysTask *task, void *data);
static void HallOfFame_ShowPlayerSprite(HallOfFameMan *hallOfFameMan, int taskID);
static void HallOfFame_SlideInPlayerSprite(SysTask *task, void *data);
static void HallOfFame_SlideFrameHorizontal(SysTask *task, void *data);
static void HallOfFame_SlideFrameVertical(SysTask *task, void *data);
static void HallOfFame_ExpandFrameHorizontal(SysTask *task, void *data);
static void HallOfFame_SlideToBlack(SysTask *task, void *data);
static void HallOfFame_ShowPokemonFrame(HallOfFameMan *hallOfFameMan, int monIndex, int taskID);
static void HallOfFame_RemovePokemonFrame(HallOfFameMan *hallOfFameMan, int monIndex, int taskID);
static void HallOfFame_ShowPlayerFrame(HallOfFameMan *hallOfFameMan, int taskID);
static void HallOfFame_ExpandFrame(HallOfFameMan *hallOfFameMan, int taskID);
static void HallOfFame_WipeToBlack(HallOfFameMan *hallOfFameMan, int taskID);
static void HallOfFame_InitPokemonAnimation(HallOfFameMan *hallOfFameMan, int monIndex, BOOL playCry, int taskID);
static void HallOfFame_PlayPokemonAnimation(SysTask *task, void *data);
static void HallOfFame_ShowPokemonText(HallOfFameMan *hallOfFameMan, int monIndex, int taskID);
static void HallOfFame_PrintPokemonText(SysTask *task, void *data);
static void HallOfFame_RemovePokemonText(HallOfFameMan *hallOfFameMan, int taskID);
static void HallOfFame_SlideOutPokemonText(SysTask *task, void *data);
static void HallOfFame_ShowPlayerText(HallOfFameMan *hallOfFameMan);
static void HallOfFame_ShowPartySprites(HallOfFameMan *hallOfFameMan, int taskID);
static void HallOfFame_SlideInPartySprites(SysTask *task, void *data);
static SysTask *HallOfFame_InitSpotlightsTask(HallOfFameMan *hallOfFameMan);
static void ov86_0223CA10(SysTask *task, void *data);
static void ov86_0223CA64(SysTask *task, void *data);
static void ov86_0223CAA0(SysTask *task, fx16 param1, fx32 param2);
static void ov86_0223CB74(SysTask *task, void *data);
static void ov86_0223CD00(SysTask *task);
static void HallOfFame_FreeSpotlightTasks(SysTask *task);
static BOOL ov86_0223CD80(void);
static SysTask *HallOfFame_InitConfettiTask(HallOfFameMan *hallOfFameMan);
static void HallOfFame_SysTaskDone(SysTask *task);
static void HallOfFame_SetConfettiActive(SysTask *task);
static void HallOfFame_DoConfettiAnimation(SysTask *task, void *data);
static void ov86_0223D220(SysTask *task);
static void HallOfFameMovement_Init(HallOfFameMovement *movement, fx32 start, fx32 end, int numSteps);
static fx32 HallOfFameMovement_Run(HallOfFameMovement *movement);
static BOOL HallOfFameMovement_IsDone(HallOfFameMovement *movement);
static int HallOfFame_GetMetStringIndex(HallOfFameMan *hallOfFameMan, Pokemon *mon, const TrainerInfo *trainerInfo);
static SysTask *ov86_0223CAE4(HallOfFameSpotlights *spotlights, fx16 param1, fx32 param2, int taskID);

BOOL HallOfFameManager_Init(ApplicationManager *appMan, int *state)
{
    HallOfFameMan *hallOfFameMan;

    SetVBlankCallback(NULL, NULL);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_HALL_OF_FAME, 196608);

    hallOfFameMan = ApplicationManager_NewData(appMan, sizeof(HallOfFameMan), HEAP_ID_HALL_OF_FAME);

    hallOfFameMan->displayData = ApplicationManager_Args(appMan);
    hallOfFameMan->msgLoaderHallOfFame = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_HALL_OF_FAME, HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->strbuf_1C30 = Strbuf_Init(500, HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->strbuf_1C4C = Strbuf_Init(500, HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->strTemplate = StringTemplate_Default(HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->narc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_HALL_OF_FAME);

    int i, currentPartyCount;

    hallOfFameMan->monCount = 0;
    currentPartyCount = Party_GetCurrentCount(hallOfFameMan->displayData->party);

    for (i = 0; i < currentPartyCount; i++) {
        if (Pokemon_GetValue(Party_GetPokemonBySlotIndex(hallOfFameMan->displayData->party, i), MON_DATA_IS_EGG, NULL) == 0) {
            hallOfFameMan->slotIndexes[hallOfFameMan->monCount] = i;
            hallOfFameMan->monCount++;
        }
    }

    ov86_0223B74C(hallOfFameMan);
    ov86_0223B900(hallOfFameMan);
    ov86_0223BA44(hallOfFameMan);

    hallOfFameMan->taskConfetti = NULL;
    hallOfFameMan->taskSpotlights = HallOfFame_InitSpotlightsTask(hallOfFameMan);

    ov86_0223CAA0(hallOfFameMan->taskSpotlights, -FX16_CONST(0.714f), FX32_CONST(20));
    ov86_0223CAA0(hallOfFameMan->taskSpotlights, -FX16_CONST(0.429f), FX32_CONST(60));
    ov86_0223CAA0(hallOfFameMan->taskSpotlights, -FX16_CONST(0.143f), FX32_CONST(40));
    ov86_0223CAA0(hallOfFameMan->taskSpotlights, FX16_CONST(0.143f), FX32_CONST(140));
    ov86_0223CAA0(hallOfFameMan->taskSpotlights, FX16_CONST(0.429f), FX32_CONST(120));
    ov86_0223CAA0(hallOfFameMan->taskSpotlights, FX16_CONST(0.714f), FX32_CONST(160));

    hallOfFameMan->taskConfetti = HallOfFame_InitConfettiTask(hallOfFameMan);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    hallOfFameMan->state = 0;
    hallOfFameMan->task_1C28 = HallOfFame_ExecuteSysTaskOnVBlank(ov86_0223B6CC, hallOfFameMan, 6);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_8, SEQ_BLD_EV_DENDO2, 1);

    return TRUE;
}

BOOL HallOfFameManager_Exit(ApplicationManager *appMan, int *state)
{
    switch (*state) {
    case 0:
        HallOfFameMan *hallOfFameMan = ApplicationManager_Data(appMan);

        SysTask_Done(hallOfFameMan->task_1C28);

        HallOfFame_SysTaskDone(hallOfFameMan->taskConfetti);
        HallOfFame_FreeSpotlightTasks(hallOfFameMan->taskSpotlights);
        HallOfFame_DeleteSprites(hallOfFameMan);
        HallOfFame_DeleteCamera(hallOfFameMan);
        ov86_0223B8C4(hallOfFameMan);

        StringTemplate_Free(hallOfFameMan->strTemplate);
        Strbuf_Free(hallOfFameMan->strbuf_1C30);
        Strbuf_Free(hallOfFameMan->strbuf_1C4C);
        MessageLoader_Free(hallOfFameMan->msgLoaderHallOfFame);
        NARC_dtor(hallOfFameMan->narc);
        ApplicationManager_FreeData(appMan);
        Heap_Destroy(HEAP_ID_HALL_OF_FAME);
        (*state)++;
        break;
    case 1:
        if (ov86_0223CD80()) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL HallOfFameManager_Main(ApplicationManager *appMan, int *state)
{
    static BOOL (*const hallOfFameStates[])(HallOfFameMan *) = {
        HallOfFame_State_FadeIn,
        HallOfFame_State_ShowIndividualPokemon,
        HallOfFame_State_ShowPartyAndPlayer,
        HallOfFame_State_WipeToBlack,
        HallOfFame_State_FadeOut
    };

    HallOfFameMan *hallOfFameMan = ApplicationManager_Data(appMan);

    if (*state < NELEMS(hallOfFameStates)) {
        if (hallOfFameStates[*state](hallOfFameMan)) {
            hallOfFameMan->state = 0;
            hallOfFameMan->delay = 0;
            (*state)++;
        }

        return FALSE;
    }

    return TRUE;
}

static BOOL HallOfFame_State_FadeIn(HallOfFameMan *hallOfFameMan)
{
    switch (hallOfFameMan->state) {
    case 0:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_HALL_OF_FAME);
        hallOfFameMan->state++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL HallOfFame_State_FadeOut(HallOfFameMan *hallOfFameMan)
{
    switch (hallOfFameMan->state) {
    case 0:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 2, 1, HEAP_ID_HALL_OF_FAME);
        Sound_FadeOutBGM(SOUND_VOLUME_MIN, 30);
        hallOfFameMan->state++;
        break;
    case 1:
        if (IsScreenFadeDone() && !Sound_IsFadeActive()) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL HallOfFame_State_ShowIndividualPokemon(HallOfFameMan *hallOfFameMan)
{
    static int monIndex = 0;

    if (hallOfFameMan->delay) {
        hallOfFameMan->delay--;
        return FALSE;
    }

    switch (hallOfFameMan->state) {
    case 0:
        monIndex = 0;
        hallOfFameMan->state++;
    case 1:
        HallOfFame_ShowPokemonSprite(hallOfFameMan, monIndex, 0);
        HallOfFame_ShowPokemonFrame(hallOfFameMan, monIndex, 1);
        hallOfFameMan->state++;
        break;
    case 2:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0)) {
            hallOfFameMan->delay = 20;
            hallOfFameMan->state++;
        }
        break;
    case 3:
        HallOfFame_InitPokemonAnimation(hallOfFameMan, monIndex, TRUE, 0);
        HallOfFame_ShowPokemonText(hallOfFameMan, monIndex, 1);
        hallOfFameMan->state++;
        break;
    case 4:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0) && HallOfFame_IsSysTaskDone(hallOfFameMan, 1)) {
            hallOfFameMan->delay = 30;
            hallOfFameMan->state++;
        }
        break;
    case 5:
        HallOfFame_RemovePokemonText(hallOfFameMan, 0);
        HallOfFame_RemovePokemonFrame(hallOfFameMan, monIndex, 1);
        hallOfFameMan->state++;
        break;
    case 6:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0)) {
            Sprite_SetDrawFlag(hallOfFameMan->monSprites[monIndex], FALSE);

            if (++monIndex < hallOfFameMan->monCount) {
                hallOfFameMan->delay = 30;
                hallOfFameMan->state = 1;
            } else {
                return TRUE;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL HallOfFame_State_ShowPartyAndPlayer(HallOfFameMan *hallOfFameMan)
{
    if (hallOfFameMan->delay) {
        hallOfFameMan->delay--;
        return FALSE;
    }

    switch (hallOfFameMan->state) {
    case 0:
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DENDOU_DEMO, 1, hallOfFameMan->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_HALL_OF_FAME);
        hallOfFameMan->state++;
        break;
    case 1:
        HallOfFame_ShowPlayerSprite(hallOfFameMan, 0);
        HallOfFame_ShowPlayerFrame(hallOfFameMan, 1);
        hallOfFameMan->state++;
        break;
    case 2:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0)
            && HallOfFame_IsSysTaskDone(hallOfFameMan, 1)) {
            hallOfFameMan->delay = 20;
            hallOfFameMan->state++;
        }
        break;
    case 3:
        HallOfFame_ExpandFrame(hallOfFameMan, 0);
        hallOfFameMan->state++;
        break;
    case 4:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0)) {
            HallOfFame_ShowPlayerText(hallOfFameMan);
            hallOfFameMan->delay = 20;
            hallOfFameMan->state++;
        }
        break;
    case 5:
        HallOfFame_ShowPartySprites(hallOfFameMan, 0);
        hallOfFameMan->state++;
        break;
    case 6:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0)) {
            hallOfFameMan->delay = 20;
            hallOfFameMan->state++;
        }
        break;
    case 7:
        HallOfFame_SetConfettiActive(hallOfFameMan->taskConfetti);
        hallOfFameMan->state++;
        break;
    case 8:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL HallOfFame_State_WipeToBlack(HallOfFameMan *hallOfFameMan)
{
    switch (hallOfFameMan->state) {
    case 0:
        HallOfFame_WipeToBlack(hallOfFameMan, 0);
        hallOfFameMan->state++;
        break;
    case 1:
        if (HallOfFame_IsSysTaskDone(hallOfFameMan, 0)) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL HallOfFame_IsSysTaskDone(HallOfFameMan *hallOfFameMan, int taskID)
{
    return hallOfFameMan->tasks[taskID] == NULL;
}

static void ov86_0223B6CC(SysTask *task, void *data)
{
    HallOfFameMan *hallOfFameMan = data;

    if (G3X_IsGeometryBusy()) {
        return;
    }

    G3X_Reset();
    NNS_G3dGePushMtx();

    ov86_0223CD00(hallOfFameMan->taskSpotlights);

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    ov86_0223D220(hallOfFameMan->taskConfetti);

    NNS_G3dGePopMtx(1);
    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    SpriteList_Update(hallOfFameMan->spriteList);
    RenderOam_Transfer();
}

static SysTask *HallOfFame_ExecuteSysTaskOnVBlank(SysTaskFunc callback, void *param, int priority)
{
    return SysTask_ExecuteOnVBlank(callback, param, priority);
}

static void ov86_0223B74C(HallOfFameMan *hallOfFameMan)
{
    NARC *narc;
    static const UnkStruct_02099F80 v1 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const BgTemplate v3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x512,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    static const BgTemplate v4 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x18000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    static const BgTemplate v5 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x18000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    hallOfFameMan->bgConfig = BgConfig_New(HEAP_ID_HALL_OF_FAME);

    GXLayers_SetBanks(&v1);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    SetAllGraphicsModes(&graphicsModes);
    Bg_InitFromTemplate(hallOfFameMan->bgConfig, BG_LAYER_MAIN_1, &v3, 0);
    Bg_InitFromTemplate(hallOfFameMan->bgConfig, BG_LAYER_MAIN_2, &v4, 0);
    Bg_InitFromTemplate(hallOfFameMan->bgConfig, BG_LAYER_MAIN_3, &v5, 0);
    Bg_FillTilesRange(hallOfFameMan->bgConfig, BG_LAYER_MAIN_1, 0x0, 1, 0);
    Bg_FillTilemapRect(hallOfFameMan->bgConfig, BG_LAYER_MAIN_1, 0x0, 0, 0, 32, 32, 0);
    Window_Add(hallOfFameMan->bgConfig, &(hallOfFameMan->window), BG_LAYER_MAIN_1, 0, 0, 32, 24, 1, 1);
    Window_FillTilemap(&(hallOfFameMan->window), 0);
    Window_LoadTiles(&(hallOfFameMan->window));
    Window_PutToTilemap(&hallOfFameMan->window);

    narc = NARC_ctor(NARC_INDEX_GRAPHIC__DENDOU_DEMO, HEAP_ID_HALL_OF_FAME);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 3, hallOfFameMan->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_HALL_OF_FAME);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, hallOfFameMan->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_HALL_OF_FAME);
    Graphics_LoadPaletteFromOpenNARC(narc, 4, 0, 0, 0x60, HEAP_ID_HALL_OF_FAME);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 2, hallOfFameMan->bgConfig, BG_LAYER_MAIN_2, 0, 0, TRUE, HEAP_ID_HALL_OF_FAME);
    Bg_CopyTilemapBufferToVRAM(hallOfFameMan->bgConfig, 1);

    G2_SetWnd0Position(0, 0, 0, 0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG2, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL, 1);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    NARC_dtor(narc);
}

static void ov86_0223B8C4(HallOfFameMan *hallOfFameMan)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    Window_Remove(&(hallOfFameMan->window));
    Bg_FreeTilemapBuffer(hallOfFameMan->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(hallOfFameMan->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(hallOfFameMan->bgConfig, BG_LAYER_MAIN_3);
    Heap_Free(hallOfFameMan->bgConfig);
}

static void ov86_0223B900(HallOfFameMan *hallOfFameMan)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(VIEWPORT_X_MIN, VIEWPORT_Y_MIN, VIEWPORT_X_MAX, VIEWPORT_Y_MAX);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(2);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0, 0);

    HallOfFame_InitCamera(hallOfFameMan);
}

static void HallOfFame_InitCamera(HallOfFameMan *hallOfFameMan)
{
    VecFx32 position;

    hallOfFameMan->camera = Camera_Alloc(HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->position.x = 0;
    hallOfFameMan->position.y = 0;
    hallOfFameMan->position.z = 0;
    hallOfFameMan->cameraAngle.x = 0;
    hallOfFameMan->cameraAngle.y = 0;
    hallOfFameMan->cameraAngle.z = 0;

    Camera_InitWithTarget(&(hallOfFameMan->position), 20480, &(hallOfFameMan->cameraAngle), 4004, 0, TRUE, hallOfFameMan->camera);

    position.x = 0;
    position.y = FX32_ONE;
    position.z = 0;

    Camera_SetUp(&position, hallOfFameMan->camera);
    Camera_SetAsActive(hallOfFameMan->camera);
    Camera_SetClipping(1 << FX32_SHIFT, 500 << FX32_SHIFT, hallOfFameMan->camera);
}

static void HallOfFame_DeleteCamera(HallOfFameMan *hallOfFameMan)
{
    Camera_Delete(hallOfFameMan->camera);
}

static void ov86_0223BA44(HallOfFameMan *hallOfFameMan)
{
    NNSG2dCellDataBank *cellBank;
    NNSG2dAnimBankData *animBank;
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_HALL_OF_FAME);

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_HALL_OF_FAME);

    hallOfFameMan->spriteList = SpriteList_InitRendering(64, &hallOfFameMan->g2dRenderer, HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->unk_1D0 = Graphics_GetCellBankFromOpenNARC(narc, 77, FALSE, &cellBank, HEAP_ID_HALL_OF_FAME);
    hallOfFameMan->unk_1D4 = Graphics_GetAnimBankFromOpenNARC(narc, 78, FALSE, &animBank, HEAP_ID_HALL_OF_FAME);

    ov86_0223BAC8(hallOfFameMan, cellBank, animBank, narc);

    NARC_dtor(narc);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov86_0223BAC8(HallOfFameMan *hallOfFameMan, NNSG2dCellDataBank *cellBank, NNSG2dAnimBankData *animBank, NARC *narc)
{
    static const TileRegion tileRegions[2] = {
        FRAME_0_REGION,
        FRAME_1_REGION
    };
    PokemonSpriteTemplate spriteTemplate;
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteListTemplate;
    UnkStruct_ov5_021DE5D0 v4;
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    NNSG2dCharacterData *charData;
    NNSG2dPaletteData *paletteData;
    void *ncgrBuffer;
    void *nclrBuffer;
    const Pokemon *mon;
    int i;

    resourceHeader.charData = NULL;
    resourceHeader.multiCellBank = NULL;
    resourceHeader.multiCellAnimBank = NULL;
    resourceHeader.isVRamTransfer = 0;
    resourceHeader.cellBank = cellBank;
    resourceHeader.cellAnimBank = animBank;
    resourceHeader.priority = 3;
    resourceHeader.imageProxy = &imageProxy;
    resourceHeader.paletteProxy = &paletteProxy;

    spriteListTemplate.list = hallOfFameMan->spriteList;
    spriteListTemplate.resourceData = &resourceHeader;

    VEC_Set(&(spriteListTemplate.position), 0, 0, 0);

    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = HEAP_ID_HALL_OF_FAME;

    ncgrBuffer = Graphics_GetCharDataFromOpenNARC(narc, 76, FALSE, &charData, HEAP_ID_HALL_OF_FAME);
    nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 75, &paletteData, HEAP_ID_HALL_OF_FAME);

    for (i = 0; i < hallOfFameMan->monCount; i++) {
        NNS_G2dInitImageProxy(&imageProxy);
        NNS_G2dInitImagePaletteProxy(&paletteProxy);
        NNS_G2dLoadImage1DMapping(charData, i * 2 * 3200, NNS_G2D_VRAM_TYPE_2DMAIN, &imageProxy);
        NNS_G2dLoadPalette(paletteData, i * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &paletteProxy);

        spriteListTemplate.priority = 1 + i;
        hallOfFameMan->monSprites[i] = SpriteList_Add(&spriteListTemplate);

        Sprite_SetDrawFlag(hallOfFameMan->monSprites[i], FALSE);
        mon = Party_GetPokemonBySlotIndex(hallOfFameMan->displayData->party, hallOfFameMan->slotIndexes[i]);
        Pokemon_BuildSpriteTemplate(&spriteTemplate, (Pokemon *)mon, FACE_FRONT);

        hallOfFameMan->species[i] = Pokemon_GetValue((Pokemon *)mon, MON_DATA_SPECIES, NULL);
        hallOfFameMan->forms[i] = Pokemon_GetValue((Pokemon *)mon, MON_DATA_FORM, NULL);

        CharacterSprite_LoadPokemonSpriteRegion(spriteTemplate.narcID,
            spriteTemplate.character,
            HEAP_ID_HALL_OF_FAME,
            &tileRegions[0],
            hallOfFameMan->unk_310,
            Pokemon_GetValue((Pokemon *)mon,
                MON_DATA_PERSONALITY,
                NULL),
            TRUE,
            FACE_FRONT,
            hallOfFameMan->species[i]);

        DC_FlushRange(hallOfFameMan->unk_310, 3200);
        GX_LoadOBJ(hallOfFameMan->unk_310, i * 2 * 3200, 3200);

        CharacterSprite_LoadPokemonSpriteRegion(spriteTemplate.narcID,
            spriteTemplate.character,
            HEAP_ID_HALL_OF_FAME,
            &tileRegions[1],
            hallOfFameMan->unk_310,
            Pokemon_GetValue((Pokemon *)mon,
                MON_DATA_PERSONALITY,
                NULL),
            TRUE,
            FACE_FRONT,
            hallOfFameMan->species[i]);

        DC_FlushRange(hallOfFameMan->unk_310, 3200);
        GX_LoadOBJ(hallOfFameMan->unk_310, i * 2 * 3200 + 3200, 3200);

        Graphics_LoadPalette(spriteTemplate.narcID, spriteTemplate.palette, 1, i * 0x20, 0x20, HEAP_ID_HALL_OF_FAME);
        PokemonSprite_LoadAnimFrames(hallOfFameMan->narc, &hallOfFameMan->animFrames[i][0], hallOfFameMan->species[i], 1);
    }

    NNS_G2dInitImageProxy(&imageProxy);
    NNS_G2dInitImagePaletteProxy(&paletteProxy);
    NNS_G2dLoadImage1DMapping(charData, 38400, NNS_G2D_VRAM_TYPE_2DMAIN, &imageProxy);
    NNS_G2dLoadPalette(paletteData, 192, NNS_G2D_VRAM_TYPE_2DMAIN, &paletteProxy);

    sub_02076AAC((TrainerInfo_Gender(hallOfFameMan->displayData->trainerInfo) == GENDER_FEMALE) ? 1 : 0, 2, &v4);
    CharacterSprite_LoadSpriteRegion(v4.narcID, v4.unk_14, HEAP_ID_HALL_OF_FAME, &tileRegions[0], hallOfFameMan->unk_310);

    DC_FlushRange(hallOfFameMan->unk_310, 3200);
    GX_LoadOBJ(hallOfFameMan->unk_310, 38400, 3200);

    Graphics_LoadPalette(v4.narcID, v4.unk_08, 1, 192, 0x20, HEAP_ID_HALL_OF_FAME);

    spriteListTemplate.priority = 0;
    hallOfFameMan->sprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetDrawFlag(hallOfFameMan->sprite, FALSE);
    Heap_Free(nclrBuffer);
    Heap_Free(ncgrBuffer);
}

static void HallOfFame_DeleteSprites(HallOfFameMan *hallOfFameMan)
{
    int i;

    for (i = 0; i < hallOfFameMan->monCount; i++) {
        Sprite_Delete(hallOfFameMan->monSprites[i]);
    }

    Heap_Free(hallOfFameMan->unk_1D4);
    Heap_Free(hallOfFameMan->unk_1D0);
    SpriteList_Delete(hallOfFameMan->spriteList);
    RenderOam_Free();
}

static void HallOfFameTask_Finish(SysTask *task, void *data)
{
    HallOfFameTask *hallOfFameTask = data;

    *(hallOfFameTask->task) = NULL;

    Heap_Free(hallOfFameTask->data);
    SysTask_Done(task);
}

static void HallOfFameTask_Init(HallOfFameTask *hallOfFameTask, void *data, SysTask **task)
{
    hallOfFameTask->data = data;
    hallOfFameTask->task = task;
}

static void HallOfFameTask_FinishAfterVBlank(HallOfFameTask *hallOfFameTask)
{
    SysTask_ExecuteAfterVBlank(HallOfFameTask_Finish, hallOfFameTask, 0);
}

static void HallOfFame_ShowPokemonSprite(HallOfFameMan *hallOfFameMan, int monIndex, int taskID)
{
    static const struct {
        fx32 start;
        fx32 end;
    } pokemonMovements[] = {
        { 786432, 294912 },
        { 262144, 753664 }
    };
    HallOfFamePokemonSprite *pokemonSprite = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFamePokemonSprite));
    int side = monIndex & 1;

    HallOfFameTask_Init(&pokemonSprite->hallOfFameTask, pokemonSprite, &(hallOfFameMan->tasks[taskID]));
    pokemonSprite->sprite = hallOfFameMan->monSprites[monIndex];
    HallOfFameMovement_Init(&pokemonSprite->movement, pokemonMovements[side].start, pokemonMovements[side].end, 28);

    VEC_Set(&pokemonSprite->position, pokemonMovements[side].start, 393216, 0);

    Sprite_SetPosition(pokemonSprite->sprite, &pokemonSprite->position);
    Sprite_SetDrawFlag(pokemonSprite->sprite, TRUE);

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideInPokemonSprite, pokemonSprite, 0);
}

static void HallOfFame_SlideInPokemonSprite(SysTask *task, void *data)
{
    HallOfFamePokemonSprite *pokemonSprite = data;

    pokemonSprite->position.x = HallOfFameMovement_Run(&pokemonSprite->movement);
    Sprite_SetPosition(pokemonSprite->sprite, &pokemonSprite->position);

    if (HallOfFameMovement_IsDone(&pokemonSprite->movement)) {
        HallOfFameTask_FinishAfterVBlank(&pokemonSprite->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_ShowPlayerSprite(HallOfFameMan *hallOfFameMan, int taskID)
{
    HallOfFamePlayerSprite *playerSprite = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFamePlayerSprite));
    HallOfFameTask_Init(&playerSprite->hallOfFameTask, playerSprite, &(hallOfFameMan->tasks[taskID]));

    playerSprite->sprite = hallOfFameMan->sprite;
    HallOfFameMovement_Init(&playerSprite->movement, FX32_CONST(232), FX32_CONST(104), 28);

    VEC_Set(&playerSprite->position, FX32_CONST(128), FX32_CONST(232), 0);

    Sprite_SetPosition(playerSprite->sprite, &playerSprite->position);
    Sprite_SetDrawFlag(playerSprite->sprite, TRUE);

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideInPlayerSprite, playerSprite, 0);
}

static void HallOfFame_SlideInPlayerSprite(SysTask *task, void *data)
{
    HallOfFamePlayerSprite *playerSprite = data;

    playerSprite->position.y = HallOfFameMovement_Run(&playerSprite->movement);
    Sprite_SetPosition(playerSprite->sprite, &playerSprite->position);

    if (HallOfFameMovement_IsDone(&playerSprite->movement)) {
        HallOfFameTask_FinishAfterVBlank(&playerSprite->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_SlideFrameHorizontal(SysTask *task, void *data)
{
    HallOfFameFrameSliderHorizontal *sliderHorizontal = data;
    int left = HallOfFameMovement_Run(&(sliderHorizontal->movement)) >> FX32_SHIFT;
    int right = left + POKEMON_FRAME_WIDTH;

    if (left < VIEWPORT_X_MIN) {
        left = VIEWPORT_X_MIN;
    }

    if (right < VIEWPORT_X_MIN) {
        right = VIEWPORT_X_MIN;
    }

    if (left > VIEWPORT_X_MAX) {
        left = right = VIEWPORT_X_MIN;
    }

    if (right > VIEWPORT_X_MAX) {
        right = VIEWPORT_X_MAX;
    }

    G2_SetWnd0Position(left, 32, right, 32 + POKEMON_FRAME_HEIGHT);

    if (HallOfFameMovement_IsDone(&(sliderHorizontal->movement))) {
        HallOfFameTask_FinishAfterVBlank(&sliderHorizontal->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_SlideFrameVertical(SysTask *task, void *data)
{
    HallOfFameFrameSliderVertical *sliderVertical = data;
    int top = HallOfFameMovement_Run(&(sliderVertical->movement)) >> FX32_SHIFT;
    int bottom = top + sliderVertical->height;

    if (top < VIEWPORT_Y_MIN) {
        top = VIEWPORT_Y_MIN;
    }

    if (bottom < VIEWPORT_Y_MIN) {
        bottom = VIEWPORT_Y_MIN;
    }

    if (top > VIEWPORT_Y_MAX) {
        top = bottom = VIEWPORT_Y_MIN;
    }

    if (bottom > VIEWPORT_Y_MAX) {
        bottom = VIEWPORT_Y_MAX;
    }

    G2_SetWnd0Position(sliderVertical->left, top, sliderVertical->right, bottom);

    if (HallOfFameMovement_IsDone(&(sliderVertical->movement))) {
        HallOfFameTask_FinishAfterVBlank(&sliderVertical->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_ExpandFrameHorizontal(SysTask *task, void *data)
{
    HallOfFameFrameExpander *frameExpander = data;
    int left = HallOfFameMovement_Run(&frameExpander->movementLeft) >> FX32_SHIFT;
    int right = HallOfFameMovement_Run(&frameExpander->movementRight) >> FX32_SHIFT;

    if (left < VIEWPORT_X_MIN) {
        left = VIEWPORT_X_MIN;
    }

    if (right < VIEWPORT_X_MIN) {
        right = VIEWPORT_X_MIN;
    }

    if (left > VIEWPORT_X_MAX) {
        left = right = VIEWPORT_X_MIN;
    }

    if (right > VIEWPORT_X_MAX) {
        right = VIEWPORT_X_MAX;
    }

    G2_SetWnd0Position(left, frameExpander->top, right, frameExpander->bottom);

    if (HallOfFameMovement_IsDone(&(frameExpander->movementLeft))) {
        HallOfFameTask_FinishAfterVBlank(&frameExpander->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_SlideToBlack(SysTask *task, void *data)
{
    HallOfFameSliderToBlack *sliderToBlack = data;
    int top = HallOfFameMovement_Run(&sliderToBlack->movementTop) >> FX32_SHIFT;
    int bottom = HallOfFameMovement_Run(&sliderToBlack->movementBottom) >> FX32_SHIFT;

    if (top < VIEWPORT_Y_MIN) {
        top = VIEWPORT_Y_MIN;
    }

    if (bottom < VIEWPORT_Y_MIN) {
        bottom = VIEWPORT_Y_MIN;
    }

    if (top > VIEWPORT_Y_MAX) {
        top = bottom = VIEWPORT_Y_MIN;
    }

    if (bottom > VIEWPORT_Y_MAX) {
        bottom = VIEWPORT_Y_MAX;
    }

    G2_SetWnd0Position(sliderToBlack->left, top, sliderToBlack->right, bottom);

    if (HallOfFameMovement_IsDone(&(sliderToBlack->movementTop))) {
        HallOfFameTask_FinishAfterVBlank(&sliderToBlack->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_ShowPokemonFrame(HallOfFameMan *hallOfFameMan, int monIndex, int taskID)
{
    static const struct {
        fx32 start;
        fx32 end;
    } frameMovements[] = {
        { FX32_CONST(-96), FX32_CONST(24) },
        { FX32_CONST(352), FX32_CONST(136) }
    };
    HallOfFameFrameSliderHorizontal *sliderHorizontal = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameFrameSliderHorizontal));
    int side = monIndex & 1;

    HallOfFameTask_Init(&sliderHorizontal->hallOfFameTask, sliderHorizontal, &(hallOfFameMan->tasks[taskID]));
    HallOfFameMovement_Init(&sliderHorizontal->movement, frameMovements[side].start, frameMovements[side].end, 28);

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideFrameHorizontal, sliderHorizontal, 1);
}

static void HallOfFame_RemovePokemonFrame(HallOfFameMan *hallOfFameMan, int monIndex, int taskID)
{
    static const int frameCoordsLeft[] = {
        24,
        136,
    };
    HallOfFameFrameSliderVertical *sliderVertical = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameFrameSliderVertical));
    int side = monIndex & 1;

    HallOfFameTask_Init(&sliderVertical->hallOfFameTask, sliderVertical, &(hallOfFameMan->tasks[taskID]));
    HallOfFameMovement_Init(&sliderVertical->movement, FX32_CONST(32), FX32_CONST(-160), 28);

    sliderVertical->left = frameCoordsLeft[side];
    sliderVertical->right = sliderVertical->left + POKEMON_FRAME_WIDTH;
    sliderVertical->height = POKEMON_FRAME_HEIGHT;

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideFrameVertical, sliderVertical, 1);
}

static void HallOfFame_ShowPlayerFrame(HallOfFameMan *hallOfFameMan, int taskID)
{
    HallOfFameFrameSliderVertical *sliderVertical = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameFrameSliderVertical));

    HallOfFameTask_Init(&sliderVertical->hallOfFameTask, sliderVertical, &(hallOfFameMan->tasks[taskID]));
    HallOfFameMovement_Init(&sliderVertical->movement, FX32_CONST(-144), FX32_CONST(24), 28);

    sliderVertical->left = 88;
    sliderVertical->right = 168;
    sliderVertical->height = PLAYER_FRAME_HEIGHT;

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideFrameVertical, sliderVertical, 1);
}

static void HallOfFame_ExpandFrame(HallOfFameMan *hallOfFameMan, int taskID)
{
    HallOfFameFrameExpander *frameExpander = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameFrameExpander));

    HallOfFameTask_Init(&frameExpander->hallOfFameTask, frameExpander, &(hallOfFameMan->tasks[taskID]));
    HallOfFameMovement_Init(&frameExpander->movementLeft, FX32_CONST(88), 0, 12);
    HallOfFameMovement_Init(&frameExpander->movementRight, FX32_CONST(168), FX32_CONST(255), 12);

    frameExpander->top = 24;
    frameExpander->bottom = frameExpander->top + PLAYER_FRAME_HEIGHT;

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_ExpandFrameHorizontal, frameExpander, 1);
}

static void HallOfFame_WipeToBlack(HallOfFameMan *hallOfFameMan, int taskID)
{
    HallOfFameSliderToBlack *sliderToBlack = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameSliderToBlack));

    HallOfFameTask_Init(&sliderToBlack->hallOfFameTask, sliderToBlack, &(hallOfFameMan->tasks[taskID]));
    HallOfFameMovement_Init(&sliderToBlack->movementTop, FX32_CONST(24), FX32_CONST(96), 24);
    HallOfFameMovement_Init(&sliderToBlack->movementBottom, FX32_CONST(24 + 144), FX32_CONST(96), 24);

    sliderToBlack->left = VIEWPORT_X_MIN;
    sliderToBlack->right = VIEWPORT_X_MAX;

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideToBlack, sliderToBlack, 1);
}

static void HallOfFame_InitPokemonAnimation(HallOfFameMan *hallOfFameMan, int monIndex, BOOL playCry, int taskID)
{
    HallOfFamePokemonAnimation *pokemonAnimation = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFamePokemonAnimation));

    HallOfFameTask_Init(&pokemonAnimation->hallOfFameTask, pokemonAnimation, &(hallOfFameMan->tasks[taskID]));

    pokemonAnimation->sprite = hallOfFameMan->monSprites[monIndex];
    pokemonAnimation->animFrame = &hallOfFameMan->animFrames[monIndex][0];

    PokemonSpriteTaskAnim_Init(&pokemonAnimation->anim, pokemonAnimation->animFrame);

    pokemonAnimation->playCry = playCry;
    pokemonAnimation->species = hallOfFameMan->species[monIndex];
    pokemonAnimation->form = hallOfFameMan->forms[monIndex];
    pokemonAnimation->imageProxies[0] = *Sprite_GetImageProxy(pokemonAnimation->sprite);
    pokemonAnimation->imageProxies[1] = pokemonAnimation->imageProxies[0];

    NNS_G2dInitImageProxy(&pokemonAnimation->imageProxies[1]);
    NNS_G2dSetImageLocation(&(pokemonAnimation->imageProxies[1]), NNS_G2D_VRAM_TYPE_2DMAIN, monIndex * 2 * 3200 + 3200);

    hallOfFameMan->tasks[taskID] = SysTask_Start(HallOfFame_PlayPokemonAnimation, pokemonAnimation, 0);
}

static void HallOfFame_PlayPokemonAnimation(SysTask *task, void *data)
{
    HallOfFamePokemonAnimation *pokemonAnimation = data;
    int currSpriteFrame;

    if (pokemonAnimation->playCry) {
        Sound_PlayPokemonCry(pokemonAnimation->species, pokemonAnimation->form);
        pokemonAnimation->playCry = FALSE;
    }

    currSpriteFrame = PokemonSpriteTaskAnim_Tick(&pokemonAnimation->anim);

    if (currSpriteFrame >= 0) {
        Sprite_SetImageProxy(pokemonAnimation->sprite, &pokemonAnimation->imageProxies[currSpriteFrame]);
    } else {
        HallOfFameTask_FinishAfterVBlank(&pokemonAnimation->hallOfFameTask);
        SysTask_Done(task);
    }
}

static void HallOfFame_ShowPokemonText(HallOfFameMan *hallOfFameMan, int monIndex, int taskID)
{
    HallOfFamePokemonTextAdder *textAdder = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFamePokemonTextAdder));

    HallOfFameTask_Init(&textAdder->hallOfFameTask, textAdder, &(hallOfFameMan->tasks[taskID]));

    textAdder->hallOfFameMan = hallOfFameMan;
    textAdder->bgConfig = hallOfFameMan->bgConfig;
    textAdder->window = &(hallOfFameMan->window);
    textAdder->strTemplate = hallOfFameMan->strTemplate;
    textAdder->strbuf_18 = hallOfFameMan->strbuf_1C30;
    textAdder->strbuf_1C = hallOfFameMan->strbuf_1C4C;
    textAdder->msgLoader = hallOfFameMan->msgLoaderHallOfFame;
    textAdder->xPosition = monIndex & 1 ? 0 : 120;
    textAdder->mon = Party_GetPokemonBySlotIndex(hallOfFameMan->displayData->party, hallOfFameMan->slotIndexes[monIndex]);
    textAdder->trainerInfo = hallOfFameMan->displayData->trainerInfo;
    textAdder->delay = 0;
    textAdder->state = 0;

    hallOfFameMan->tasks[taskID] = SysTask_Start(HallOfFame_PrintPokemonText, textAdder, 0);
}

static void HallOfFame_PrintTextAtRow(HallOfFamePokemonTextAdder *textAdder, int yOffset)
{
    int i, numLines, xOffset;

    numLines = Strbuf_NumLines(textAdder->strbuf_1C);

    for (i = 0; i < numLines; i++) {
        Strbuf_CopyLineNum(textAdder->strbuf_18, textAdder->strbuf_1C, i);
        xOffset = (136 - Font_CalcStrbufWidth(FONT_SYSTEM, textAdder->strbuf_18, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(textAdder->window, FONT_SYSTEM, textAdder->strbuf_18, textAdder->xPosition + xOffset, yOffset + i * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

static void HallOfFame_LoadPokemonText(HallOfFamePokemonTextAdder *textAdder)
{
    StringTemplate_SetSpeciesName(textAdder->strTemplate, 0, Pokemon_GetBoxPokemon(textAdder->mon));
    StringTemplate_SetNumber(textAdder->strTemplate, 1, Pokemon_GetLevel(textAdder->mon), 3, PADDING_MODE_NONE, CHARSET_MODE_EN);

    switch (Pokemon_GetGender(textAdder->mon)) {
    case GENDER_MALE:
        MessageLoader_GetStrbuf(textAdder->msgLoader, HallOfFame_Text_PokemonInfoMale, textAdder->strbuf_18);
        break;
    case GENDER_FEMALE:
        MessageLoader_GetStrbuf(textAdder->msgLoader, HallOfFame_Text_PokemonInfoFemale, textAdder->strbuf_18);
        break;
    case GENDER_NONE:
    default:
        MessageLoader_GetStrbuf(textAdder->msgLoader, HallOfFame_Text_PokemonInfoGenderless, textAdder->strbuf_18);
        break;
    }

    StringTemplate_Format(textAdder->strTemplate, textAdder->strbuf_1C, textAdder->strbuf_18);
}

static void HallOfFame_LoadMetString(HallOfFamePokemonTextAdder *textAdder)
{
    int metStringIndex = HallOfFame_GetMetStringIndex(textAdder->hallOfFameMan, textAdder->mon, textAdder->trainerInfo);

    switch (metStringIndex) {
    case HallOfFame_Text_MetAt - HallOfFame_Text_MetAt:
    case HallOfFame_Text_HatchedAt - HallOfFame_Text_MetAt:
        StringTemplate_SetLocationName(textAdder->strTemplate, 0, Pokemon_GetValue(textAdder->mon, MON_DATA_MET_LOCATION, NULL));
        break;
    }

    MessageLoader_GetStrbuf(textAdder->msgLoader, HallOfFame_Text_MetAt + metStringIndex, textAdder->strbuf_18);
    StringTemplate_Format(textAdder->strTemplate, textAdder->strbuf_1C, textAdder->strbuf_18);
}

static void HallOfFame_PrintPokemonText(SysTask *task, void *data)
{
    HallOfFamePokemonTextAdder *textAdder = data;

    if (textAdder->delay) {
        textAdder->delay--;
        return;
    }

    switch (textAdder->state) {
    case 0:
        MessageLoader_GetStrbuf(textAdder->msgLoader, HallOfFame_Text_Welcome, textAdder->strbuf_1C);
        HallOfFame_PrintTextAtRow(textAdder, ROW_HEIGHT);
        Window_LoadTiles(textAdder->window);
        textAdder->delay = 20;
        textAdder->state++;
        break;
    case 1:
        Pokemon_GetValue(textAdder->mon, MON_DATA_NICKNAME_STRING, textAdder->strbuf_1C);
        HallOfFame_PrintTextAtRow(textAdder, ROW_HEIGHT * 3);
        HallOfFame_LoadPokemonText(textAdder);
        HallOfFame_PrintTextAtRow(textAdder, ROW_HEIGHT * 4);
        Window_LoadTiles(textAdder->window);
        textAdder->delay = 20;
        textAdder->state++;
        break;
    case 2:
        StringTemplate_SetOTName(textAdder->strTemplate, 0, Pokemon_GetBoxPokemon(textAdder->mon));
        MessageLoader_GetStrbuf(textAdder->msgLoader, HallOfFame_Text_OT, textAdder->strbuf_18);
        StringTemplate_Format(textAdder->strTemplate, textAdder->strbuf_1C, textAdder->strbuf_18);
        HallOfFame_PrintTextAtRow(textAdder, ROW_HEIGHT * 6);
        HallOfFame_LoadMetString(textAdder);
        HallOfFame_PrintTextAtRow(textAdder, ROW_HEIGHT * 7);
        Window_LoadTiles(textAdder->window);
        textAdder->state++;
        break;
    case 3:
        HallOfFameTask_FinishAfterVBlank(&textAdder->hallOfFameTask);
        SysTask_Done(task);
        break;
    }
}

static void HallOfFame_RemovePokemonText(HallOfFameMan *hallOfFameMan, int taskID)
{
    HallOfFamePokemonTextRemover *textRemover = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFamePokemonTextRemover));

    HallOfFameTask_Init(&textRemover->hallOfFameTask, textRemover, &(hallOfFameMan->tasks[taskID]));

    textRemover->bgConfig = hallOfFameMan->bgConfig;
    textRemover->window = &(hallOfFameMan->window);
    textRemover->bgLayer = BG_LAYER_MAIN_1;
    textRemover->state = 0;

    HallOfFameMovement_Init(&(textRemover->movement), FX32_CONST(0), FX32_CONST(256), 28);

    hallOfFameMan->tasks[taskID] = HallOfFame_ExecuteSysTaskOnVBlank(HallOfFame_SlideOutPokemonText, textRemover, 0);
}

static void HallOfFame_SlideOutPokemonText(SysTask *task, void *data)
{
    HallOfFamePokemonTextRemover *textRemover = data;

    switch (textRemover->state) {
    case 0: {
        int y = HallOfFameMovement_Run(&textRemover->movement) >> FX32_SHIFT;

        Bg_SetOffset(textRemover->bgConfig, textRemover->bgLayer, BG_OFFSET_UPDATE_SET_Y, y);

        if (HallOfFameMovement_IsDone(&textRemover->movement)) {
            textRemover->state++;
        }
    } break;
    case 1:
        Window_FillTilemap(textRemover->window, 0);
        Window_LoadTiles(textRemover->window);
        textRemover->state++;
        break;
    case 2:
        Bg_SetOffset(textRemover->bgConfig, textRemover->bgLayer, BG_OFFSET_UPDATE_SET_Y, 0);
        HallOfFameTask_FinishAfterVBlank(&textRemover->hallOfFameTask);
        SysTask_Done(task);
        break;
    }
}

static void HallOfFame_ShowPlayerText(HallOfFameMan *hallOfFameMan)
{
    int xOffset;

    MessageLoader_GetStrbuf(hallOfFameMan->msgLoaderHallOfFame, HallOfFame_Text_LeagueChampionCongratulations, hallOfFameMan->strbuf_1C30);

    xOffset = (256 - Font_CalcStrbufWidth(FONT_SYSTEM, hallOfFameMan->strbuf_1C30, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&hallOfFameMan->window, FONT_SYSTEM, hallOfFameMan->strbuf_1C30, xOffset, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    StringTemplate_SetPlayerName(hallOfFameMan->strTemplate, 0, hallOfFameMan->displayData->trainerInfo);

    StringTemplate_SetNumber(hallOfFameMan->strTemplate, 1, TrainerInfo_ID_LowHalf(hallOfFameMan->displayData->trainerInfo), 5, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_SetNumber(hallOfFameMan->strTemplate, 2, PlayTime_GetHours(hallOfFameMan->displayData->playTime), 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(hallOfFameMan->strTemplate, 3, PlayTime_GetMinutes(hallOfFameMan->displayData->playTime), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(hallOfFameMan->msgLoaderHallOfFame, HallOfFame_Text_PlayerInfo, hallOfFameMan->strbuf_1C4C);
    StringTemplate_Format(hallOfFameMan->strTemplate, hallOfFameMan->strbuf_1C30, hallOfFameMan->strbuf_1C4C);

    xOffset = (256 - Font_CalcStrbufWidth(FONT_SYSTEM, hallOfFameMan->strbuf_1C30, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&hallOfFameMan->window, FONT_SYSTEM, hallOfFameMan->strbuf_1C30, xOffset, 172, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_LoadTiles(&hallOfFameMan->window);
}

static void HallOfFame_ShowPartySprites(HallOfFameMan *hallOfFameMan, int taskID)
{
    static const VecFx32 initialPositions[] = {
        { FX32_CONST(-40), FX32_CONST(104 - 8), 0 },
        { FX32_CONST(296), FX32_CONST(104 - 8), 0 },
        { FX32_CONST(-40), FX32_CONST(104 - 16), 0 },
        { FX32_CONST(296), FX32_CONST(104 - 16), 0 },
        { FX32_CONST(-40), FX32_CONST(104 - 24), 0 },
        { FX32_CONST(296), FX32_CONST(104 - 24), 0 }
    };
    static const fx32 endPositionsX[] = {
        FX32_CONST(128 + 32),
        FX32_CONST(128 - 32),
        FX32_CONST(128 + 64),
        FX32_CONST(128 - 64),
        FX32_CONST(128 + 96),
        FX32_CONST(128 - 96)
    };
    HallOfFamePartySprites *partySprites = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFamePartySprites));
    int i;

    HallOfFameTask_Init(&partySprites->hallOfFameTask, partySprites, &(hallOfFameMan->tasks[taskID]));

    partySprites->hallOfFameMan = hallOfFameMan;
    partySprites->sprites = hallOfFameMan->monSprites;
    partySprites->monIndex = 0;
    partySprites->delay = 0;
    partySprites->monCount = hallOfFameMan->monCount;

    for (i = 0; i < partySprites->monCount; i++) {
        partySprites->positions[i] = initialPositions[i];
        Sprite_SetPosition(partySprites->sprites[i], &initialPositions[i]);
        Sprite_SetDrawFlag(partySprites->sprites[i], TRUE);
    }

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        HallOfFameMovement_Init(&partySprites->movements[i], initialPositions[i].x, endPositionsX[i], 8);
    }

    hallOfFameMan->tasks[taskID] = SysTask_Start(HallOfFame_SlideInPartySprites, partySprites, 0);
}

static void HallOfFame_SlideInPartySprites(SysTask *task, void *data)
{
    HallOfFamePartySprites *partySprites = data;
    int i;

    for (i = 0; i < partySprites->monIndex; i++) {
        partySprites->positions[i].x = HallOfFameMovement_Run(&partySprites->movements[i]);

        if (i < partySprites->monCount) {
            Sprite_SetPosition(partySprites->sprites[i], &(partySprites->positions[i]));
        }
    }

    if (partySprites->delay) {
        partySprites->delay--;
    } else {
        if (partySprites->monIndex < MAX_PARTY_SIZE) {
            partySprites->delay = 4;
            partySprites->monIndex++;
        } else if (HallOfFameMovement_IsDone(&partySprites->movements[partySprites->monCount - 1])) {
            HallOfFameTask_FinishAfterVBlank(&partySprites->hallOfFameTask);
            SysTask_Done(task);
        }
    }
}

static u32 Unk_ov86_0223D564 = 0;
static BOOL Unk_ov86_0223D540 = TRUE;

static SysTask *HallOfFame_InitSpotlightsTask(HallOfFameMan *hallOfFameMan)
{
    HallOfFameSpotlights *spotlights = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameSpotlights));

    if (spotlights) {
        Unk_ov86_0223D540 = TRUE;
        Unk_ov86_0223D564 = 2;

        spotlights->taskID = 0;
        spotlights->task = HallOfFame_ExecuteSysTaskOnVBlank(ov86_0223CA64, spotlights, 5);
        spotlights->hallOfFameMan = hallOfFameMan;

        return HallOfFame_ExecuteSysTaskOnVBlank(ov86_0223CA10, spotlights, 3);
    }

    return NULL;
}

static void ov86_0223CA10(SysTask *task, void *data)
{
    if (Unk_ov86_0223D540) {
        HallOfFameSpotlights *spotlights = data;

        G3_BeginMakeDL(&spotlights->info, spotlights->ptr, sizeof(spotlights->ptr));
        G3B_MaterialColorDiffAmb(&spotlights->info, GX_RGB(31, 31, 31), GX_RGB(16, 16, 16), 0);
        G3B_MaterialColorSpecEmi(&spotlights->info, GX_RGB(16, 16, 16), GX_RGB(0, 0, 0), 0);
    } else {
        Unk_ov86_0223D564--;
        SysTask_Done(task);
    }
}

static void ov86_0223CA64(SysTask *task, void *data)
{
    if (Unk_ov86_0223D540) {
        HallOfFameSpotlights *spotlights = data;
        spotlights->ptrSize = G3_EndMakeDL(&spotlights->info);
        DC_FlushRange(spotlights->ptr, spotlights->ptrSize);
    } else {
        Unk_ov86_0223D564--;
        SysTask_Done(task);
    }
}

static void ov86_0223CAA0(SysTask *task, fx16 param1, fx32 param2)
{
    HallOfFameSpotlights *spotlights = SysTask_GetParam(task);

    if (spotlights->taskID < MAX_SPOTLIGHT_TASKS) {
        spotlights->tasks[spotlights->taskID] = ov86_0223CAE4(spotlights, param1, param2, spotlights->taskID);
        Unk_ov86_0223D564++;
        spotlights->taskID++;
    }
}

static SysTask *ov86_0223CAE4(HallOfFameSpotlights *spotlights, fx16 param1, fx32 param2, int taskID)
{
    static const int colors[] = {
        GX_RGB(31, 31, 12),
        GX_RGB(31, 31, 16),
        GX_RGB(31, 28, 8),
        GX_RGB(31, 31, 12),
        GX_RGB(31, 31, 16),
        GX_RGB(31, 28, 8),
        GX_RGB(31, 31, 12),
        GX_RGB(31, 31, 12)
    };
    static const fx16 v1[] = {
        0xc00,
        0xb00,
        0xa00,
        0xc00,
        0xb00,
        0xa00
    };
    UnkStruct_ov86_0223CAE4 *v2 = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(UnkStruct_ov86_0223CAE4));

    if (v2) {
        v2->info = &(spotlights->info);
        v2->unk_818 = param1;
        v2->color = colors[taskID];
        v2->unk_804 = 0;
        v2->unk_808 = param2;
        v2->unk_80C = v1[taskID];
        v2->unk_814 = taskID;

        VEC_Fx16Set(&(v2->unk_81A), param1 - 80, -FX16_ONE, 0);
        VEC_Fx16Set(&(v2->unk_820), param1 + 80, -FX16_ONE, 0);

        return HallOfFame_ExecuteSysTaskOnVBlank(ov86_0223CB74, v2, 4);
    }

    return NULL;
}

static void inline inline_ov86_0223CB74(UnkStruct_ov86_0223CAE4 *param0)
{
    int v0 = param0->unk_808 >> FX32_SHIFT;
    fx32 v1 = param0->unk_818 + FX_Mul(CalcCosineDegrees(v0), 10240);
    fx32 v2 = FX_Mul(CalcSineDegrees(v0), 10240) - FX16_ONE;

    VEC_Fx16Set(&(param0->unk_826), v1 - 576, v2, 0);
    VEC_Fx16Set(&(param0->unk_82C), v1 + 576, v2, 0);
}

static void ov86_0223CB74(SysTask *task, void *data)
{
    if (Unk_ov86_0223D540) {
        UnkStruct_ov86_0223CAE4 *v0 = data;

        v0->unk_808 += v0->unk_80C;

        if (v0->unk_80C > 0) {
            if (v0->unk_808 >= 696320) {
                v0->unk_80C *= -1;
            }
        } else {
            if (v0->unk_808 <= 40960) {
                v0->unk_80C *= -1;
            }
        }

        inline_ov86_0223CB74(v0);

        G3B_PolygonAttr(v0->info, GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_BACK, v0->unk_814, 16, 0);
        G3B_Begin(v0->info, GX_BEGIN_QUADS);

        G3B_Color(v0->info, v0->color);
        G3B_Vtx(v0->info, v0->unk_81A.x, v0->unk_81A.y, v0->unk_81A.z);
        G3B_Vtx(v0->info, v0->unk_820.x, v0->unk_820.y, v0->unk_820.z);
        G3B_Vtx(v0->info, v0->unk_82C.x, v0->unk_82C.y, v0->unk_82C.z);
        G3B_Vtx(v0->info, v0->unk_826.x, v0->unk_826.y, v0->unk_826.z);

        G3B_End(v0->info);
    } else {
        Unk_ov86_0223D564--;
        SysTask_Done(task);
    }
}

static void ov86_0223CD00(SysTask *task)
{
    if (task != NULL) {
        HallOfFameSpotlights *spotlights = SysTask_GetParam(task);

        G3_PushMtx();
        MI_SendGXCommand(3, spotlights->ptr, spotlights->ptrSize);
        G3_PopMtx(1);
    }
}

static void HallOfFame_FreeSpotlightTasks(SysTask *task)
{
    Unk_ov86_0223D540 = FALSE;

    if (task != NULL) {
        HallOfFameSpotlights *spotlights = SysTask_GetParam(task);
        int i;

        for (i = 0; i < spotlights->taskID; i++) {
            Heap_Free(SysTask_GetParam(spotlights->tasks[i]));
        }

        Heap_Free(spotlights);
    }
}

static BOOL ov86_0223CD80(void)
{
    return Unk_ov86_0223D564 == 0;
}

static SysTask *HallOfFame_InitConfettiTask(HallOfFameMan *hallOfFameMan)
{
    static const int colors[] = {
        GX_RGB(16, 28, 21),
        GX_RGB(31, 16, 29),
        GX_RGB(8, 8, 31),
        GX_RGB(6, 31, 31),
        GX_RGB(31, 31, 0),
        GX_RGB(9, 31, 0),
        GX_RGB(31, 18, 0),
        GX_RGB(22, 0, 31)
    };
    static const VecFx16 v1[4] = {
        { -156, -205, 0 },
        { 156, -205, 0 },
        { 156, 205, 0 },
        { -156, 205, 0 }
    };
    HallOfFameConfettiAnimation *confettiAnim = Heap_Alloc(HEAP_ID_HALL_OF_FAME, sizeof(HallOfFameConfettiAnimation));
    int i, v4, rand = LCRNG_Next(), colorIndex;
    s16 v7, v8, v9;

    LCRNG_SetSeed(13716);

    for (i = 0, colorIndex = 0; i < NUM_CONFETTI; i++) {
        confettiAnim->confetti[i].color = colors[colorIndex];

        if (++colorIndex >= NELEMS(colors)) {
            colorIndex = 0;
        }

        v7 = -4096 + (LCRNG_Next() % 8192);
        v8 = 4096 + (LCRNG_Next() % 8192);
        v9 = -328 + (LCRNG_Next() % 656);

        for (v4 = 0; v4 < 4; v4++) {
            confettiAnim->confetti[i].unk_08[v4].x = v7 + v1[v4].x;
            confettiAnim->confetti[i].unk_08[v4].y = v8 + v1[v4].y;
            confettiAnim->confetti[i].unk_08[v4].z = v9 + v1[v4].z;
            confettiAnim->confetti[i].unk_20.x = 0;
            confettiAnim->confetti[i].unk_20.y = 0;
            confettiAnim->confetti[i].unk_20.z = 0;
            confettiAnim->confetti[i].unk_26.x = 512 + LCRNG_Next() % 512;
            confettiAnim->confetti[i].unk_26.y = 512 + LCRNG_Next() % 512;
            confettiAnim->confetti[i].unk_26.z = 512 + LCRNG_Next() % 512;

            MTX_Identity44(&confettiAnim->confetti[i].pDst);
        }

        v4 = LCRNG_Next() & 7;

        while (v4--) {
            VEC_Fx16Add(&confettiAnim->confetti[i].unk_20, &confettiAnim->confetti[i].unk_26, &confettiAnim->confetti[i].unk_20);
        }
    }

    LCRNG_SetSeed(rand);

    confettiAnim->active = FALSE;
    confettiAnim->unk_04 = 0;
    confettiAnim->unk_8D20 = 0;

    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);

    return SysTask_Start(HallOfFame_DoConfettiAnimation, confettiAnim, 2);
}

static void HallOfFame_SysTaskDone(SysTask *task)
{
    if (task) {
        Heap_Free(SysTask_GetParam(task));
        SysTask_Done(task);
    }
}

static void HallOfFame_SetConfettiActive(SysTask *task)
{
    if (task) {
        HallOfFameConfettiAnimation *confettiAnim = SysTask_GetParam(task);
        confettiAnim->active = TRUE;
    }
}

static void HallOfFame_DoConfettiAnimation(SysTask *task, void *data)
{
    HallOfFameConfettiAnimation *confettiAnim = data;

    if (confettiAnim->active) {
        int i, v2;

        G3_BeginMakeDL(&confettiAnim->info, confettiAnim->unk_151C, sizeof(confettiAnim->unk_151C));
        G3B_PolygonAttr(&confettiAnim->info, GX_LIGHTMASK_01, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 63, 31, 0);
        G3B_MaterialColorDiffAmb(&confettiAnim->info, GX_RGB(20, 20, 20), GX_RGB(0, 0, 0), 0);

        for (i = 0; i < NUM_CONFETTI; i++) {
            confettiAnim->confetti[i].unk_08[3].y -= 85;

            if (confettiAnim->confetti[i].unk_08[3].y <= -4096) {
                confettiAnim->confetti[i].unk_08[3].y = 4096 - (-4096 - confettiAnim->confetti[i].unk_08[3].y);
            }

            confettiAnim->confetti[i].unk_08[0].y = confettiAnim->confetti[i].unk_08[3].y - (205 * 2);
            confettiAnim->confetti[i].unk_08[1].y = confettiAnim->confetti[i].unk_08[0].y;
            confettiAnim->confetti[i].unk_08[2].y = confettiAnim->confetti[i].unk_08[3].y;

            VEC_Fx16Add(&confettiAnim->confetti[i].unk_20, &confettiAnim->confetti[i].unk_26, &confettiAnim->confetti[i].unk_20);

            MTX_Identity44(&(confettiAnim->confetti[i].pDst));
            MTX_TransApply44(&(confettiAnim->confetti[i].pDst), &(confettiAnim->confetti[i].pDst), confettiAnim->confetti[i].unk_08[0].x, confettiAnim->confetti[i].unk_08[0].y, confettiAnim->confetti[i].unk_08[0].z);

            G3B_LightColor(&(confettiAnim->info), GX_LIGHTID_0, GX_RGB(11, 11, 11));
            G3B_LightColor(&(confettiAnim->info), GX_LIGHTID_1, confettiAnim->confetti[i].color);

            VecFx16 v3;

            VEC_Fx16Set(&v3, 0, FX16_ONE - 1, -FX16_ONE + 1);
            VEC_Fx16Normalize(&v3, &v3);

            G3B_LightVector(&confettiAnim->info, GX_LIGHTID_0, v3.x, v3.y, v3.z);

            VEC_Fx16Set(&v3, 0, -FX16_ONE + 1, FX16_ONE - 1);
            VEC_Fx16Normalize(&v3, &v3);

            G3B_LightVector(&confettiAnim->info, GX_LIGHTID_1, v3.x, v3.y, v3.z);

            MtxFx44 pDst;

            MTX_RotX44(&pDst, FX_SinIdx((u16)(confettiAnim->confetti[i].unk_20.x)), FX_CosIdx((u16)(confettiAnim->confetti[i].unk_20.x)));
            MTX_Concat44(&pDst, &(confettiAnim->confetti[i].pDst), &(confettiAnim->confetti[i].pDst));

            MTX_RotY44(&pDst, FX_SinIdx((u16)(confettiAnim->confetti[i].unk_20.y)), FX_CosIdx((u16)(confettiAnim->confetti[i].unk_20.y)));
            MTX_Concat44(&pDst, &(confettiAnim->confetti[i].pDst), &(confettiAnim->confetti[i].pDst));

            MTX_RotZ44(&pDst, FX_SinIdx((u16)(confettiAnim->confetti[i].unk_20.z)), FX_CosIdx((u16)(confettiAnim->confetti[i].unk_20.z)));
            MTX_Concat44(&pDst, &(confettiAnim->confetti[i].pDst), &(confettiAnim->confetti[i].pDst));

            G3B_MaterialColorSpecEmi(&confettiAnim->info, GX_RGB(31, 31, 31), confettiAnim->confetti[i].color, 0);
            G3B_PushMtx(&confettiAnim->info);
            G3B_LoadMtx44(&confettiAnim->info, &(confettiAnim->confetti[i].pDst));
            G3B_Begin(&confettiAnim->info, GX_BEGIN_QUADS);

            G3B_Normal(&confettiAnim->info, 0, 0, -FX16_ONE + 1);
            G3B_Vtx(&confettiAnim->info, -156, -205, 0);
            G3B_Vtx(&confettiAnim->info, 156, -205, 0);
            G3B_Vtx(&confettiAnim->info, 156, 205, 0);
            G3B_Vtx(&confettiAnim->info, -156, 205, 0);

            G3B_End(&confettiAnim->info);
            G3B_PopMtx(&confettiAnim->info, 1);
        }

        confettiAnim->unk_8D1C = G3_EndMakeDL(&confettiAnim->info);
        DC_FlushRange(confettiAnim->unk_151C, confettiAnim->unk_8D1C);

        GF_ASSERT(confettiAnim->unk_8D1C < sizeof(confettiAnim->unk_151C));
        confettiAnim->unk_04 = 1;
    }
}

static void ov86_0223D220(SysTask *task)
{
    if (task) {
        HallOfFameConfettiAnimation *confettiAnim = SysTask_GetParam(task);

        if (confettiAnim->unk_04) {
            G3_PushMtx();
            MI_SendGXCommand(3, confettiAnim->unk_151C, confettiAnim->unk_8D1C);
            G3_PopMtx(1);
            confettiAnim->unk_04 = 0;
        } else {
            (void)0;
        }
    }
}

static void HallOfFameMovement_Init(HallOfFameMovement *movement, fx32 start, fx32 end, int numSteps)
{
    movement->start = start;
    movement->end = end;
    movement->stepSize = (end - start) / numSteps;
    movement->numSteps = numSteps - 1;
    movement->done = FALSE;
}

static fx32 HallOfFameMovement_Run(HallOfFameMovement *movement)
{
    if (movement->numSteps) {
        movement->numSteps--;
        movement->start += movement->stepSize;
        return movement->start;
    } else {
        movement->done = TRUE;
        return movement->end;
    }
}

static BOOL HallOfFameMovement_IsDone(HallOfFameMovement *movement)
{
    return movement->done;
}

static int HallOfFame_GetMetStringIndex(HallOfFameMan *hallOfFameMan, Pokemon *mon, const TrainerInfo *trainerInfo)
{
    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);
    int metStringIndex = HallOfFame_Text_ObtainedInFatefulEncounter - HallOfFame_Text_MetAt;

    do {
        int metGame = Pokemon_GetValue(mon, MON_DATA_MET_GAME, NULL);

        if (metGame == VERSION_SAPPHIRE || metGame == VERSION_RUBY || metGame == VERSION_EMERALD) {
            metStringIndex = HallOfFame_Text_ArrivedFromHoenn - HallOfFame_Text_MetAt;
            break;
        }

        if (metGame == VERSION_FIRERED || metGame == VERSION_LEAFGREEN) {
            metStringIndex = HallOfFame_Text_ArrivedFromKanto - HallOfFame_Text_MetAt;
            break;
        }

        if (metGame == VERSION_GAMECUBE) {
            metStringIndex = HallOfFame_Text_ArrivedFromDistantLand - HallOfFame_Text_MetAt;
            break;
        }

        if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL)) {
            metStringIndex = HallOfFame_Text_ObtainedInFatefulEncounter - HallOfFame_Text_MetAt;
            break;
        }

        u32 trainerID = TrainerInfo_ID(trainerInfo);
        u32 otID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);

        if (trainerID != otID) {
            metStringIndex = HallOfFame_Text_ObtainedInLinkTrade - HallOfFame_Text_MetAt;
            break;
        }

        TrainerInfo_NameStrbuf(trainerInfo, hallOfFameMan->strbuf_1C30);
        Pokemon_GetValue(mon, MON_DATA_OT_NAME_STRING, hallOfFameMan->strbuf_1C4C);

        if (Strbuf_Compare(hallOfFameMan->strbuf_1C30, hallOfFameMan->strbuf_1C4C)) {
            metStringIndex = HallOfFame_Text_ObtainedInLinkTrade - HallOfFame_Text_MetAt;
            break;
        }

        if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) >= 2000) {
            metStringIndex = HallOfFame_Text_ObtainedInFatefulEncounter - HallOfFame_Text_MetAt;
            ;
        } else {
            if (Pokemon_GetValue(mon, MON_DATA_EGG_MONTH, NULL) == 0) {
                metStringIndex = HallOfFame_Text_MetAt - HallOfFame_Text_MetAt;
            } else {
                metStringIndex = HallOfFame_Text_HatchedAt - HallOfFame_Text_MetAt;
            }
        }
    } while (FALSE);

    Pokemon_ExitDecryptionContext(mon, reencrypt);

    return metStringIndex;
}
