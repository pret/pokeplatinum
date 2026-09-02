#include "overlay104/frontier_brain_encounter_effect.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_020127E8.h"

#include "overlay005/linear_interpolation_task_fx32.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "char_transfer.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_extensions.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/text/bank/npc_trainer_names.h"
#include "res/trainers/classes/field_encounteffect.naix"

#define ID_MUGSHOT_CHAR 2010
#define ID_MUGSHOT_PLTT 2002
#define ID_MUGSHOT_CELL 2002
#define ID_MUGSHOT_ANIM 2002
#define ID_VS_CHAR      2011
#define ID_VS_PLTT      2003
#define ID_VS_CELL      2003
#define ID_VS_ANIM      2003
#define ID_NAME_PLTT    2004

#define NUM_BANNER_PALETTES 8
#define BANNER_CENTERLINE   (10 * 8)
#define BANNER_HEIGHT       (8 * 8 + 4)
#define BANNER_STEP         0x800

typedef struct FrontierBrainEncounterEffectTextWindow {
    Window window;
    u16 widthTiles;
    u16 width;
} FrontierBrainEncounterEffectTextWindow;

typedef struct FrontierBrainNameObject {
    FontOAM *fontOAM;
    CharTransferAllocation charTransferAllocation;
    u16 width;
} FrontierBrainNameObject;

typedef struct FrontierBrainBannerAnimation {
    s32 top;
    s32 bottom;
    u8 isFinished;
    u8 state;
    u8 left0;
    u8 top0;
    u8 right0;
    u8 bottom0;
    u8 left1;
    u8 top1;
    u8 right1;
    u8 bottom1;
} FrontierBrainBannerAnimation;

typedef struct FrontierBrainMugshotSlideInManager {
    int xOffset;
    int state;
} FrontierBrainMugshotSlideInManager;

typedef struct FrontierBrainVsSpriteAnimation {
    s16 taskStartDelay;
    s16 tasksStarted;
    ManagedSprite *vsSprites[4];
    LinearInterpolationTaskFX32 tasks[4];
} FrontierBrainVsSpriteAnimation;

typedef struct FrontierBrainEncounterEffectAnimations {
    LinearInterpolationTaskFX32 unused;
    FrontierBrainVsSpriteAnimation vsSpriteAnimation;
    s32 stateDelay;
    FrontierBrainNameObject brainName;
    ManagedSprite *mugshotSprite;
} FrontierBrainEncounterEffectAnimations;

typedef struct FrontierBrainEncounterEffect {
    int state;
    int unused[2];
    FrontierBrainEncounterEffectAnimations *anims;
    BgConfig *bgConfig;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    PaletteData *currentBannerPalette;
    u16 *effectIsFinished;
    NARC *narc;
    s16 xAnchor;
    s16 yAnchor;
    u8 facility;
    UnkStruct_02012744 *unk_30;
    SysTask *vBlankCallback;
    int bannerPaletteTimer;
    int bannerPaletteIdx;
    u16 allPalettes[NUM_BANNER_PALETTES * PALETTE_SIZE];
    SysTask *bannerPaletteTask;
    FrontierBrainBannerAnimation bannerAnim;
    FrontierBrainMugshotSlideInManager mugshotSlideIn;
    int mugshotPlttOffset;
    u32 plttOffsets;
} FrontierBrainEncounterEffect;

typedef struct FrontierBrainsEncounterParams {
    u32 name;
    u8 mugshotPalette;
    u8 mugshotTiles;
    u8 mugshotCells;
    u8 mugshotAnims;
    u8 bannerPalette;
    u8 bannerTiles;
    u8 bannerTilemap;
    u8 unused;
} FrontierBrainEncounterParams;

static void FrontierBrainEncounterEffect_FreeAndEnd(FrontierBrainEncounterEffect *encEffect, SysTask *task);
static void UpdateWindowPositions(SysTask *task, void *data);
static void Task_PlayEncounterEffect(SysTask *task, void *data);
static BOOL FrontierBrainEncounterEffect_MainLoop(FrontierBrainEncounterEffect *encEffect, u32 heapID, const FrontierBrainEncounterParams *encounterParams);
static void CreateFrontierBrainNameObject(FrontierBrainEncounterEffect *encEffect, FrontierBrainNameObject *brainName, const String *nameString, enum Font font, TextColor textColor, int plttOffset, int plttResourceID, int x, int y, int center, FrontierBrainEncounterEffectTextWindow *textWindow);
static void FreeFrontierBrainNameObject(FrontierBrainNameObject *brainName);
static void CreateVsSprites(FrontierBrainEncounterEffect *encEffect, FrontierBrainVsSpriteAnimation *vsSpriteAnimation, fx32 x, fx32 y, u32 heapID);
static void FreeVsSprites(FrontierBrainVsSpriteAnimation *vsSpriteAnimation);
static BOOL UpdateVsSprites(FrontierBrainVsSpriteAnimation *vsSpriteAnimation);
static void LinearInterpolationTaskFX32_Init(LinearInterpolationTaskFX32 *task, fx32 startValue, fx32 endValue, int numSteps);
static BOOL LinearInterpolationTaskFX32_Update(LinearInterpolationTaskFX32 *task);
static VecFx32 CreateScaleVector(fx32 x, fx32 y, fx32 z);
static void SetupBannerAndBannerTask(FrontierBrainEncounterEffect *encEffect, const FrontierBrainEncounterParams *encParams);
static void UpdateBannerPalette(SysTask *task, void *taskData);
static void StartBannerTask(FrontierBrainEncounterEffect *encEffect, BOOL isClosing);
static void Task_OpenEncounterBanner(SysTask *task, void *data);
static void Task_CloseEncounterBanner(SysTask *task, void *data);
static BOOL UpdateMugshotSpritePosition(FrontierBrainEncounterEffect *encEffect, FrontierBrainEncounterEffectAnimations *anims, FrontierBrainMugshotSlideInManager *mugshotSlideIn);
static void CalculateStringWidth(const String *string, int font, int *resultWidth, int *resultWidthTiles);

static const FrontierBrainEncounterParams sFrontierBrainsEncounterParams[] = {
    [FACILITY_TOWER - 1] = {
        .name = NPCTrainerNames_Text_tower_tycoon_palmer_dummy,
        .mugshotPalette = tower_tycoon_mugshot_NCLR,
        .mugshotTiles = tower_tycoon_mugshot_NCGR,
        .mugshotCells = tower_tycoon_mugshot_cell_NCER,
        .mugshotAnims = tower_tycoon_mugshot_anim_NANR,
        .bannerPalette = tower_tycoon_banner_NCLR,
        .bannerTiles = tower_tycoon_banner_NCGR,
        .bannerTilemap = tower_tycoon_banner_NSCR,
        0,
    },
    [FACILITY_FACTORY - 1] = {
        .name = NPCTrainerNames_Text_factory_head_thorton_dummy,
        .mugshotPalette = factory_head_mugshot_NCLR,
        .mugshotTiles = factory_head_mugshot_NCGR,
        .mugshotCells = factory_head_mugshot_cell_NCER,
        .mugshotAnims = factory_head_mugshot_anim_NANR,
        .bannerPalette = factory_head_banner_NCLR,
        .bannerTiles = factory_head_banner_NCGR,
        .bannerTilemap = factory_head_banner_NSCR,
        0,
    },
    [FACILITY_FACTORY_OPEN - 1] = {
        .name = NPCTrainerNames_Text_factory_head_thorton_dummy,
        .mugshotPalette = factory_head_mugshot_NCLR,
        .mugshotTiles = factory_head_mugshot_NCGR,
        .mugshotCells = factory_head_mugshot_cell_NCER,
        .mugshotAnims = factory_head_mugshot_anim_NANR,
        .bannerPalette = factory_head_banner_NCLR,
        .bannerTiles = factory_head_banner_NCGR,
        .bannerTilemap = factory_head_banner_NSCR,
        0,
    },
    [FACILITY_CASTLE - 1] = {
        .name = NPCTrainerNames_Text_castle_valet_darach_dummy,
        .mugshotPalette = castle_valet_mugshot_NCLR,
        .mugshotTiles = castle_valet_mugshot_NCGR,
        .mugshotCells = castle_valet_mugshot_cell_NCER,
        .mugshotAnims = castle_valet_mugshot_anim_NANR,
        .bannerPalette = castle_valet_banner_NCLR,
        .bannerTiles = castle_valet_banner_NCGR,
        .bannerTilemap = castle_valet_banner_NSCR,
        0,
    },
    [FACILITY_HALL - 1] = {
        .name = NPCTrainerNames_Text_hall_matron_argenta_dummy,
        .mugshotPalette = hall_matron_mugshot_NCLR,
        .mugshotTiles = hall_matron_mugshot_NCGR,
        .mugshotCells = hall_matron_mugshot_cell_NCER,
        .mugshotAnims = hall_matron_mugshot_anim_NANR,
        .bannerPalette = hall_matron_banner_NCLR,
        .bannerTiles = hall_matron_banner_NCGR,
        .bannerTilemap = hall_matron_banner_NSCR,
        0,
    },
    [FACILITY_ARCADE - 1] = {
        .name = NPCTrainerNames_Text_arcade_star_dahlia_dummy,
        .mugshotPalette = arcade_star_mugshot_NCLR,
        .mugshotTiles = arcade_star_mugshot_NCGR,
        .mugshotCells = arcade_star_mugshot_cell_NCER,
        .mugshotAnims = arcade_star_mugshot_anim_NANR,
        .bannerPalette = arcade_star_banner_NCLR,
        .bannerTiles = arcade_star_banner_NCGR,
        .bannerTilemap = arcade_star_banner_NSCR,
        0,
    }
};

static const SpriteTemplate sMugshotSpriteTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 12,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = { ID_MUGSHOT_CHAR, ID_MUGSHOT_PLTT, ID_MUGSHOT_CELL, ID_MUGSHOT_ANIM, -1, -1 },
    .bgPriority = 0,
    .vramTransfer = FALSE
};

static const SpriteTemplate sVsSpriteTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 10,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = { ID_VS_CHAR, ID_VS_PLTT, ID_VS_CELL, ID_VS_ANIM, -1, -1 },
    .bgPriority = 0,
    .vramTransfer = FALSE
};

void BattleFrontier_PlayFrontierBrainEncounterEffect(int facility, BgConfig *bgConfig, SpriteSystem *spriteSys, SpriteManager *spriteMan, PaletteData *plttData, u16 *isFinishedPtr, s16 x, s16 y)
{
    SysTask *task = SysTask_StartAndAllocateParam(Task_PlayEncounterEffect, sizeof(FrontierBrainEncounterEffect), 1000, HEAP_ID_94);
    FrontierBrainEncounterEffect *encEffect = SysTask_GetParam(task);

    encEffect->bgConfig = bgConfig;
    encEffect->spriteSys = spriteSys;
    encEffect->spriteMan = spriteMan;
    encEffect->currentBannerPalette = plttData;
    encEffect->effectIsFinished = isFinishedPtr;
    encEffect->xAnchor = x;
    encEffect->yAnchor = y;
    encEffect->narc = NARC_ctor(NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, HEAP_ID_94);

    if (encEffect->effectIsFinished != NULL) {
        *encEffect->effectIsFinished = FALSE;
    }

    encEffect->facility = facility - 1;

    MI_CpuClear32(Bg_GetCharPtr(BG_LAYER_MAIN_1), 0x8000);

    Bg_ScheduleScroll(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_ScheduleScroll(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);

    SetupBannerAndBannerTask(encEffect, &sFrontierBrainsEncounterParams[encEffect->facility]);

    encEffect->vBlankCallback = SysTask_ExecuteAfterVBlank(UpdateWindowPositions, encEffect, 1);
}

static void FrontierBrainEncounterEffect_FreeAndEnd(FrontierBrainEncounterEffect *encEffect, SysTask *task)
{
    SysTask_Done(encEffect->bannerPaletteTask);
    SysTask_Done(encEffect->vBlankCallback);
    NARC_dtor(encEffect->narc);
    Heap_FreeExplicit(HEAP_ID_94, encEffect->anims);
    SysTask_FinishAndFreeParam(task);
}

static void UpdateWindowPositions(SysTask *task, void *data)
{
    FrontierBrainEncounterEffect *encEffect = data;

    G2_SetWnd0Position(encEffect->bannerAnim.left0, encEffect->bannerAnim.top0, encEffect->bannerAnim.right0, encEffect->bannerAnim.bottom0);
    G2_SetWnd1Position(encEffect->bannerAnim.left1, encEffect->bannerAnim.top1, encEffect->bannerAnim.right1, encEffect->bannerAnim.bottom1);
}

static void Task_PlayEncounterEffect(SysTask *task, void *data)
{
    FrontierBrainEncounterEffect *encEffect = data;
    BOOL isFinished = FrontierBrainEncounterEffect_MainLoop(encEffect, HEAP_ID_94, &sFrontierBrainsEncounterParams[encEffect->facility]);

    if (isFinished == TRUE) {
        FrontierBrainEncounterEffect_FreeAndEnd(encEffect, task);
    }
}

static BOOL FrontierBrainEncounterEffect_MainLoop(FrontierBrainEncounterEffect *encEffect, u32 heapID, const FrontierBrainEncounterParams *encounterParams)
{
    FrontierBrainEncounterEffectAnimations *anims = encEffect->anims;

    switch (encEffect->state) {
    case 0:
        encEffect->anims = Heap_Alloc(heapID, sizeof(FrontierBrainEncounterEffectAnimations));
        memset(encEffect->anims, 0, sizeof(FrontierBrainEncounterEffectAnimations));

        anims = encEffect->anims;
        int plttOffset = SpriteSystem_LoadPaletteBufferFromOpenNarc(encEffect->currentBannerPalette, PLTTBUF_MAIN_OBJ, encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, _shared_enc_fade_NCLR, 0, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, ID_NAME_PLTT);

        encEffect->plttOffsets |= 1 << plttOffset;
        encEffect->unk_30 = sub_02012744(4, HEAP_ID_94);

        MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NPC_TRAINER_NAMES, heapID);
        String *nameStr = MessageLoader_GetNewString(msgLoader, encounterParams->name);

        CreateFrontierBrainNameObject(encEffect, &anims->brainName, nameStr, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, ID_NAME_PLTT, 208 + -92 + encEffect->xAnchor, 11 * 8 + encEffect->yAnchor, 0, NULL);

        sub_020129D0(anims->brainName.fontOAM, FALSE);
        String_Free(nameStr);
        MessageLoader_Free(msgLoader);

        encEffect->mugshotPlttOffset = SpriteSystem_LoadPaletteBufferFromOpenNarc(encEffect->currentBannerPalette, PLTTBUF_MAIN_OBJ, encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, encounterParams->mugshotPalette, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, ID_MUGSHOT_PLTT);
        encEffect->plttOffsets |= 1 << encEffect->mugshotPlttOffset;

        SpriteSystem_LoadCharResObjFromOpenNarc(encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, encounterParams->mugshotTiles, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, ID_MUGSHOT_CHAR);
        SpriteSystem_LoadCellResObjFromOpenNarc(encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, encounterParams->mugshotCells, FALSE, ID_MUGSHOT_CELL);
        SpriteSystem_LoadAnimResObjFromOpenNarc(encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, encounterParams->mugshotAnims, FALSE, ID_MUGSHOT_ANIM);
        PaletteData_Blend(encEffect->currentBannerPalette, PLTTBUF_MAIN_OBJ, encEffect->mugshotPlttOffset * 16, 16, 14, GX_RGB(0, 0, 0));

        plttOffset = SpriteSystem_LoadPaletteBufferFromOpenNarc(encEffect->currentBannerPalette, PLTTBUF_MAIN_OBJ, encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, _shared_vs_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, ID_VS_PLTT);
        encEffect->plttOffsets |= 1 << plttOffset;

        SpriteSystem_LoadCharResObjFromOpenNarc(encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, _shared_frontier_vs_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, ID_VS_CHAR);
        SpriteSystem_LoadCellResObjFromOpenNarc(encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, _shared_frontier_vs_cell_NCER, FALSE, ID_VS_CELL);
        SpriteSystem_LoadAnimResObjFromOpenNarc(encEffect->spriteSys, encEffect->spriteMan, encEffect->narc, _shared_frontier_vs_anim_NANR, FALSE, ID_VS_ANIM);

        anims->mugshotSprite = SpriteSystem_NewSprite(encEffect->spriteSys, encEffect->spriteMan, &sMugshotSpriteTemplate);

        ManagedSprite_SetDrawFlag(anims->mugshotSprite, FALSE);
        Sprite_TickFrame(anims->mugshotSprite->sprite);
        CreateVsSprites(encEffect, &anims->vsSpriteAnimation, FX32_CONST(72) + FX32_CONST(encEffect->xAnchor), FX32_CONST(82) + FX32_CONST(encEffect->yAnchor), heapID);
        encEffect->state++;
        break;
    case 1:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 3, 1, heapID);
        encEffect->state++;
        break;
    case 2:
        if (IsScreenFadeDone()) {
            encEffect->state++;
        }
        break;
    case 3:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 3, 1, heapID);
        encEffect->state++;
        break;
    case 4:
        if (IsScreenFadeDone()) {
            encEffect->state++;
        }
        break;
    case 5:
        StartBannerTask(encEffect, FALSE);
        encEffect->state++;
        break;
    case 6:
        if (encEffect->bannerAnim.isFinished == TRUE) {
            encEffect->state++;
            anims->stateDelay = 10;
        }
        break;
    case 7:
        anims->stateDelay--;

        if (anims->stateDelay >= 0) {
            break;
        }

        if (UpdateVsSprites(&anims->vsSpriteAnimation) == TRUE) {
            encEffect->state++;
        }
        break;
    case 8:
        encEffect->state++;
        break;
    case 9:
        if (UpdateMugshotSpritePosition(encEffect, anims, &encEffect->mugshotSlideIn) == TRUE) {
            encEffect->state++;
        }
        break;
    case 10:
        anims->stateDelay = 10;
        encEffect->state++;
        break;
    case 11:
        anims->stateDelay--;

        if (anims->stateDelay >= 0) {
            break;
        }

        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 3, 1, heapID);
        encEffect->state++;
        break;
    case 12:
        if (IsScreenFadeDone()) {
            PaletteData_BlendMulti(encEffect->currentBannerPalette, PLTTBUF_MAIN_OBJ, encEffect->plttOffsets ^ 0x3fff, 14, 0);
            PaletteData_Blend(encEffect->currentBannerPalette, PLTTBUF_MAIN_OBJ, encEffect->mugshotPlttOffset * 16, 16, 0, GX_RGB(0, 0, 0));
            BrightnessController_SetScreenBrightness(-14, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, BRIGHTNESS_MAIN_SCREEN);
            sub_020129D0(anims->brainName.fontOAM, TRUE);
            encEffect->state++;
        }
        break;
    case 13:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 3, 1, heapID);
        encEffect->state++;
        break;
    case 14:
        if (IsScreenFadeDone()) {
            anims->stateDelay = 26;
            encEffect->state++;
        }
        break;
    case 15:
        anims->stateDelay--;

        if (anims->stateDelay < 0) {
            encEffect->state++;
        }
        break;
    case 16:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 15, 1, HEAP_ID_94);
        encEffect->state++;
        break;
    case 17:
        if (IsScreenFadeDone()) {
            encEffect->state++;
        }
        break;
    case 18:
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_WHITE);

        if (encEffect->effectIsFinished != NULL) {
            *encEffect->effectIsFinished = TRUE;
        }

        FreeFrontierBrainNameObject(&anims->brainName);

        sub_020127BC(encEffect->unk_30);
        Sprite_DeleteAndFreeResources(anims->mugshotSprite);

        FreeVsSprites(&anims->vsSpriteAnimation);
        return TRUE;
    }

    return FALSE;
}

static void CreateFrontierBrainNameObject(FrontierBrainEncounterEffect *encEffect, FrontierBrainNameObject *brainName, const String *nameString, enum Font font, TextColor textColor, int plttOffset, int plttResourceID, int x, int y, int center, FrontierBrainEncounterEffectTextWindow *textWindow)
{
    UnkStruct_020127E8 v0;

    GF_ASSERT(brainName->fontOAM == NULL);

    BgConfig *bgConfig = encEffect->bgConfig;
    SpriteManager *spriteMan = encEffect->spriteMan;

    int width, widthTiles;
    if (textWindow == NULL) {
        CalculateStringWidth(nameString, font, &width, &widthTiles);
    } else {
        width = textWindow->width;
        widthTiles = textWindow->widthTiles;
    }

    Window window;
    if (textWindow == NULL) {
        Window_Init(&window);
        Window_AddToTopLeftCorner(bgConfig, &window, widthTiles, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&window, font, nameString, 0, 0, TEXT_SPEED_NO_TRANSFER, textColor, 0, 0, NULL);
    } else {
        window = textWindow->window;
    }

    CharTransferAllocation charTransferAllocation;
    int size = sub_02012898(&window, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_94);
    CharTransfer_AllocRange(size, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, &charTransferAllocation);

    if (center == TRUE) {
        x -= width / 2;
    }

    y -= 8;

    v0.unk_00 = encEffect->unk_30;
    v0.unk_04 = &window;
    v0.unk_08 = SpriteManager_GetSpriteList(spriteMan);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(spriteMan, plttResourceID);
    v0.unk_10 = NULL;
    v0.unk_14 = charTransferAllocation.offset;
    v0.unk_18 = x;
    v0.unk_1C = y;
    v0.unk_20 = 0;
    v0.unk_24 = 11;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = HEAP_ID_94;

    FontOAM *fontOAM = sub_020127E8(&v0);

    sub_02012AC0(fontOAM, plttOffset);
    FontOAM_SetXY(fontOAM, x, y);

    if (textWindow == NULL) {
        Window_Remove(&window);
    }

    brainName->fontOAM = fontOAM;
    brainName->charTransferAllocation = charTransferAllocation;
    brainName->width = width;
}

static void FreeFrontierBrainNameObject(FrontierBrainNameObject *brainName)
{
    sub_02012870(brainName->fontOAM);
    CharTransfer_ClearRange(&brainName->charTransferAllocation);
}

static void CalculateStringWidth(const String *string, int font, int *resultWidth, int *resultWidthTiles)
{
    int width = Font_CalcStringWidth(font, string, 0);
    int widthTiles = width / TILE_WIDTH_PIXELS;

    if (FX_ModS32(width, TILE_WIDTH_PIXELS) != 0) {
        widthTiles++;
    }

    *resultWidth = width;
    *resultWidthTiles = widthTiles;
}

static void CreateVsSprites(FrontierBrainEncounterEffect *encEffect, FrontierBrainVsSpriteAnimation *vsSpriteAnimation, fx32 x, fx32 y, u32 heapID)
{
    SpriteTemplate vsTemplate = sVsSpriteTemplate;

    vsTemplate.x = x >> FX32_SHIFT;
    vsTemplate.y = y >> FX32_SHIFT;

    vsSpriteAnimation->taskStartDelay = 0;
    vsSpriteAnimation->tasksStarted = 0;

    for (int i = 0; i < 4; i++) {
        vsSpriteAnimation->vsSprites[i] = SpriteSystem_NewSprite(encEffect->spriteSys, encEffect->spriteMan, &vsTemplate);
        ManagedSprite_SetDrawFlag(vsSpriteAnimation->vsSprites[i], FALSE);

        if (i != 3) {
            Sprite_SetAffineOverwriteMode(vsSpriteAnimation->vsSprites[i]->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
            Sprite_SetAnim(vsSpriteAnimation->vsSprites[i]->sprite, 1);
            LinearInterpolationTaskFX32_Init(&vsSpriteAnimation->tasks[i], FX32_CONST(2), FX32_CONST(1), 6);
        } else {
            LinearInterpolationTaskFX32_Init(&vsSpriteAnimation->tasks[i], FX32_CONST(1), FX32_CONST(1), 6);
        }
    }
}

static void FreeVsSprites(FrontierBrainVsSpriteAnimation *vsSpriteAnimation)
{
    for (int i = 0; i < 4; i++) {
        Sprite_DeleteAndFreeResources(vsSpriteAnimation->vsSprites[i]);
    }
}

static BOOL UpdateVsSprites(FrontierBrainVsSpriteAnimation *vsSpriteAnimation)
{
    int i;
    BOOL allTasksFinished = TRUE;
    VecFx32 scale;

    if (vsSpriteAnimation->tasksStarted < 4) {
        allTasksFinished = FALSE;
        vsSpriteAnimation->taskStartDelay--;

        if (vsSpriteAnimation->taskStartDelay <= 0) {
            vsSpriteAnimation->taskStartDelay = 3;
            vsSpriteAnimation->tasksStarted++;
        }
    }

    for (i = 0; i < vsSpriteAnimation->tasksStarted; i++) {
        BOOL isFinished = LinearInterpolationTaskFX32_Update(&vsSpriteAnimation->tasks[i]);
        scale = CreateScaleVector(vsSpriteAnimation->tasks[i].currentValue, vsSpriteAnimation->tasks[i].currentValue, vsSpriteAnimation->tasks[i].currentValue);

        Sprite_SetAffineScale(vsSpriteAnimation->vsSprites[i]->sprite, &scale);
        Sprite_SetDrawFlag(vsSpriteAnimation->vsSprites[i]->sprite, TRUE);

        if (!isFinished) {
            allTasksFinished = FALSE;
        }
    }

    return allTasksFinished;
}

static void LinearInterpolationTaskFX32_Init(LinearInterpolationTaskFX32 *task, fx32 startValue, fx32 endValue, int numSteps)
{
    task->currentValue = startValue;
    task->startValue = startValue;
    task->delta = endValue - startValue;
    task->numSteps = numSteps;
    task->currentStep = 0;
}

static BOOL LinearInterpolationTaskFX32_Update(LinearInterpolationTaskFX32 *task)
{
    fx32 interpolated = FX_Mul(task->delta, task->currentStep << FX32_SHIFT);
    interpolated = FX_Div(interpolated, task->numSteps << FX32_SHIFT);

    task->currentValue = interpolated + task->startValue;

    if (task->currentStep + 1 <= task->numSteps) {
        task->currentStep++;
        return FALSE;
    }

    task->currentStep = task->numSteps;
    return TRUE;
}

static VecFx32 CreateScaleVector(fx32 x, fx32 y, fx32 z)
{
    VecFx32 vec;
    vec.x = x;
    vec.y = y;
    vec.z = z;

    return vec;
}

static void SetupBannerAndBannerTask(FrontierBrainEncounterEffect *encEffect, const FrontierBrainEncounterParams *encParams)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) ^ GX_WND_PLANEMASK_BG1, TRUE);
    G2_SetWnd0Position(0, 0, 0, 0);
    G2_SetWnd1Position(0, 0, 0, 0);

    PaletteData_LoadBufferFromFileStart(encEffect->currentBannerPalette, NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, encParams->bannerPalette, HEAP_ID_94, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(12));
    Graphics_LoadTilesToBgLayerFromOpenNARC(encEffect->narc, encParams->bannerTiles, encEffect->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_94);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(encEffect->narc, encParams->bannerTilemap, encEffect->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_94);
    Bg_ChangeTilemapRectPalette(encEffect->bgConfig, BG_LAYER_MAIN_1, 0, 0, 32, 32, 12);
    Bg_ScheduleTilemapTransfer(encEffect->bgConfig, BG_LAYER_MAIN_1);

    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, encParams->bannerPalette, &plttData, HEAP_ID_94);

    MI_CpuCopy16(plttData->pRawData, encEffect->allPalettes, NUM_BANNER_PALETTES * PALETTE_SIZE_BYTES);
    Heap_Free(pltt);

    encEffect->bannerPaletteTask = SysTask_Start(UpdateBannerPalette, encEffect, 1100);
}

static void UpdateBannerPalette(SysTask *task, void *taskData)
{
    FrontierBrainEncounterEffect *encEffect = taskData;

    encEffect->bannerPaletteTimer++;

    if (encEffect->bannerPaletteTimer < 0) {
        return;
    }

    encEffect->bannerPaletteTimer = 0;
    encEffect->bannerPaletteIdx++;

    if (encEffect->bannerPaletteIdx >= NUM_BANNER_PALETTES) {
        encEffect->bannerPaletteIdx = 0;
    }

    PaletteData_LoadBuffer(encEffect->currentBannerPalette, &encEffect->allPalettes[encEffect->bannerPaletteIdx * PALETTE_SIZE], PLTTBUF_MAIN_BG, PLTT_DEST(12), PALETTE_SIZE_BYTES);
}

static void StartBannerTask(FrontierBrainEncounterEffect *encEffect, BOOL isClosing)
{
    FrontierBrainBannerAnimation *bannerAnim = &encEffect->bannerAnim;
    MI_CpuClear8(bannerAnim, sizeof(FrontierBrainBannerAnimation));

    if (!isClosing) {
        bannerAnim->top = BANNER_CENTERLINE << 8;
        bannerAnim->bottom = BANNER_CENTERLINE << 8;

        SysTask_Start(Task_OpenEncounterBanner, bannerAnim, 1000);
    } else {
        bannerAnim->top = (BANNER_CENTERLINE - BANNER_HEIGHT / 2) << 8;
        bannerAnim->bottom = (BANNER_CENTERLINE + BANNER_HEIGHT / 2) << 8;

        SysTask_Start(Task_CloseEncounterBanner, bannerAnim, 1000);
    }
}

static void Task_OpenEncounterBanner(SysTask *task, void *data)
{
    FrontierBrainBannerAnimation *bannerAnim = data;

    switch (bannerAnim->state) {
    case 0:
        bannerAnim->top -= BANNER_STEP;
        bannerAnim->bottom += BANNER_STEP;

        if (bannerAnim->top <= (BANNER_CENTERLINE << 8) - ((BANNER_HEIGHT / 2) << 8)) {
            bannerAnim->top = (BANNER_CENTERLINE - BANNER_HEIGHT / 2) << 8;
            bannerAnim->bottom = (BANNER_CENTERLINE + BANNER_HEIGHT / 2) << 8;
            bannerAnim->state++;
        }

        bannerAnim->left0 = 0;
        bannerAnim->top0 = bannerAnim->top >> 8;
        bannerAnim->right0 = 255;
        bannerAnim->bottom0 = bannerAnim->bottom >> 8;

        bannerAnim->left1 = 1;
        bannerAnim->top1 = bannerAnim->top >> 8;
        bannerAnim->right1 = 0;
        bannerAnim->bottom1 = bannerAnim->bottom >> 8;
        break;
    default:
        bannerAnim->isFinished = TRUE;
        SysTask_Done(task);
        return;
    }
}

static void Task_CloseEncounterBanner(SysTask *task, void *data)
{
    FrontierBrainBannerAnimation *bannerAnim = data;

    switch (bannerAnim->state) {
    case 0:
        bannerAnim->top += BANNER_STEP;
        bannerAnim->bottom -= BANNER_STEP;

        if (bannerAnim->top >= (BANNER_CENTERLINE << 8)) {
            bannerAnim->top = BANNER_CENTERLINE << 8;
            bannerAnim->bottom = BANNER_CENTERLINE << 8;
            bannerAnim->state++;
        }

        bannerAnim->left0 = 0;
        bannerAnim->top0 = bannerAnim->top >> 8;
        bannerAnim->right0 = HW_LCD_WIDTH - 1;
        bannerAnim->bottom0 = bannerAnim->bottom >> 8;

        bannerAnim->left1 = 1;
        bannerAnim->top1 = bannerAnim->top >> 8;
        bannerAnim->right1 = 0;
        bannerAnim->bottom1 = bannerAnim->bottom >> 8;
        break;
    default:
        bannerAnim->isFinished = TRUE;
        SysTask_Done(task);
        return;
    }
}

static BOOL UpdateMugshotSpritePosition(FrontierBrainEncounterEffect *encEffect, FrontierBrainEncounterEffectAnimations *anims, FrontierBrainMugshotSlideInManager *mugshotSlideIn)
{
    switch (mugshotSlideIn->state) {
    case 0:
        ManagedSprite_SetPositionXYWithSubscreenOffset(anims->mugshotSprite, HW_LCD_WIDTH + encEffect->xAnchor, 80 + encEffect->yAnchor, FX32_CONST(512));
        ManagedSprite_SetDrawFlag(anims->mugshotSprite, TRUE);
        mugshotSlideIn->xOffset = HW_LCD_WIDTH << 8;
        mugshotSlideIn->state++;
        break;
    case 1:
        mugshotSlideIn->xOffset -= 3840;

        if (mugshotSlideIn->xOffset <= 208 << 8) {
            mugshotSlideIn->xOffset = 208 << 8;
            mugshotSlideIn->state++;
        }

        ManagedSprite_SetPositionXYWithSubscreenOffset(anims->mugshotSprite, mugshotSlideIn->xOffset >> 8, 80 + encEffect->yAnchor, FX32_CONST(512));
        break;
    default:
        return TRUE;
    }

    return FALSE;
}
