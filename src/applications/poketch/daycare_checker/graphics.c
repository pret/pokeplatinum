#include "applications/poketch/daycare_checker/graphics.h"

#include <nitro.h>

#include "constants/graphics.h"
#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void SetupSprites(DaycareCheckerGraphics *graphics, const DaycareStatus *daycareStatus);
static void UnloadSprites(DaycareCheckerGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_ReloadDaycareState(SysTask *task, void *taskMan);
static void Task_UpdateMosaicSize(SysTask *task, void *taskMan);

static void TriggerMosaicUpdate(DaycareCheckerGraphics *graphics);
static void LoadDaycareMonIcons(u32 offset, const DaycareStatus *daycareStatus);
static void DrawSprites(DaycareCheckerGraphics *graphics, const DaycareStatus *daycareStatus);
static void SetLevelSprites(PoketchAnimation_AnimatedSpriteData **digitSprites, u32 level);
static void SetGenderSprites(PoketchAnimation_AnimatedSpriteData *genderSymbol, enum Gender gender);

BOOL PoketchDaycareCheckerGraphics_New(DaycareCheckerGraphics **dest, const DaycareStatus *daycareStatus, BgConfig *bgConfig)
{
    DaycareCheckerGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(DaycareCheckerGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, DAYCARE_CHECKER_TASK_SLOTS);

        graphics->dayCareSummary = daycareStatus;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->updateMosaic = FALSE;
        graphics->mosaicTask = SysTask_ExecuteAfterVBlank(Task_UpdateMosaicSize, graphics, 0);

        SetupSprites(graphics, daycareStatus);

        if (graphics->bgConfig != NULL) {
            *dest = graphics;
            return TRUE;
        }
    }

    return FALSE;
}

void PoketchDaycareCheckerGraphics_Free(DaycareCheckerGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        SysTask_Done(graphics->mosaicTask);
        Heap_Free(graphics);
    }
}

static void SetupSprites(DaycareCheckerGraphics *graphics, const DaycareStatus *daycareStatus)
{
    static const PoketchAnimation_AnimationData animationData[] = {
        {
            .translation = { FX32_CONST(56), FX32_CONST(128) },
            .animIdx = 7,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(168), FX32_CONST(128) },
            .animIdx = 6,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(112), FX32_CONST(136) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(64), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(80), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(152), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(168), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(184), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(96), FX32_CONST(40) },
            .animIdx = 10,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(200), FX32_CONST(40) },
            .animIdx = 10,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
    };
    u32 symbolTilesSize;

    PoketchTask_LoadPokemonIconLuminancePalette(1);

    symbolTilesSize = Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, daycare_checker_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    symbolTilesSize /= 20;

    graphics->monIconOffset = symbolTilesSize;

    LoadDaycareMonIcons(symbolTilesSize, daycareStatus);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->symbolAnimData, NARC_INDEX_GRAPHIC__POKETCH, daycare_checker_cell_NCER_lz, daycare_checker_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->monAnimData, NARC_INDEX_GRAPHIC__POKETCH, poke_icon_cell_NCER_lz, poke_icon_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    for (int index = 0; index < NUM_DAYCARE_SPRITES; index++) {
        if ((index >= 0) && (index <= 2)) {
            graphics->sprites[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData[index], &graphics->monAnimData);
            PoketchAnimation_SetSpriteCharNo(graphics->sprites[index], symbolTilesSize + index * 0x20);
        } else {
            graphics->sprites[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData[index], &graphics->symbolAnimData);
        }

        PoketchAnimation_SetMosaic(graphics->sprites[index], TRUE);
    }

    DrawSprites(graphics, daycareStatus);
}

static void UnloadSprites(DaycareCheckerGraphics *graphics)
{
    for (int index = 0; index < NUM_DAYCARE_SPRITES; index++) {
        if (graphics->sprites[index]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[index]);
        }
    }

    PoketchAnimation_FreeSpriteData(&graphics->monAnimData);
    PoketchAnimation_FreeSpriteData(&graphics->symbolAnimData);
}

static const PoketchTask daycareTasks[] = {
    { DAYCARE_CHECKER_GRAPHICS_INIT, Task_DrawAppBackground, 0 },
    { DAYCARE_CHECKER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { DAYCARE_CHECKER_GRAPHICS_RELOAD, Task_ReloadDaycareState, 0 },
    { 0 }
};

void PoketchDaycareCheckerGraphics_StartTask(DaycareCheckerGraphics *graphics, enum DaycareGraphicsTask taskID)
{
    PoketchTask_Start(daycareTasks, taskID, graphics, graphics->dayCareSummary, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDaycareCheckerGraphics_TaskIsNotActive(DaycareCheckerGraphics *graphics, enum DaycareGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchDaycareCheckerGraphics_NoActiveTasks(DaycareCheckerGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    DaycareCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawAppBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = TRUE,
    };
    GXSDispCnt dispCnt;
    DaycareCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, daycare_checker_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, daycare_checker_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    G2S_SetBGMosaicSize(0, 0);
    G2S_SetOBJMosaicSize(0, 0);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    DaycareCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->clearMosaicSize = TRUE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_TaskIsNotActive(graphics, DAYCARE_CHECKER_GRAPHICS_RELOAD)) {
            G2S_SetBGMosaicSize(0, 0);
            G2S_SetOBJMosaicSize(0, 0);
            Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_ReloadDaycareState(SysTask *task, void *taskMan)
{
    DaycareCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const DaycareStatus *daycareSummary = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->clearMosaicSize = FALSE;
        graphics->mosaicProgress = 0;
        graphics->mosaicSize = 10;
        TriggerMosaicUpdate(graphics);
        PoketchSystem_PlaySoundEffect(SEQ_SE_DP_DENSI12);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        LoadDaycareMonIcons(graphics->monIconOffset, daycareSummary);
        DrawSprites(graphics, daycareSummary);
        PoketchTask_IncrementState(taskMan);
        break;
    case 2:
        if (graphics->clearMosaicSize) {
            graphics->mosaicSize = 0;
            TriggerMosaicUpdate(graphics);
            PoketchTask_IncrementState(taskMan);
            break;
        }

        if (++graphics->mosaicProgress >= 4) {
            graphics->mosaicProgress = 0;
            graphics->mosaicSize--;

            TriggerMosaicUpdate(graphics);

            if (graphics->mosaicSize == 0) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 3:
        EndTask(taskMan);
        break;
    }
}

static void TriggerMosaicUpdate(DaycareCheckerGraphics *graphics)
{
    graphics->updateMosaic = TRUE;
}

static void Task_UpdateMosaicSize(SysTask *task, void *taskMan)
{
    DaycareCheckerGraphics *graphics = taskMan;

    if (graphics->updateMosaic) {
        G2S_SetBGMosaicSize(graphics->mosaicSize, graphics->mosaicSize);
        G2S_SetOBJMosaicSize(graphics->mosaicSize, graphics->mosaicSize);
        graphics->updateMosaic = FALSE;
    }
}

static void LoadDaycareMonIcons(u32 offset, const DaycareStatus *daycareStatus)
{
    u32 eggIcon;
    u32 iconIdxList[3];

    eggIcon = PokeIconSpriteIndex(1, TRUE, 0);

    iconIdxList[0] = (daycareStatus->numMons > 0) ? daycareStatus->iconSpriteIndices[0] : eggIcon;
    iconIdxList[1] = (daycareStatus->numMons > 1) ? daycareStatus->iconSpriteIndices[1] : eggIcon;
    iconIdxList[2] = eggIcon;

    PoketchTask_LoadPokemonIcons(offset, iconIdxList, NELEMS(iconIdxList), TRUE);
}

static void DrawSprites(DaycareCheckerGraphics *graphics, const DaycareStatus *daycareStatus)
{
    BOOL hideSprite;

    for (int index = 0; index < daycareStatus->numMons; index++) {
        PoketchAnimation_SetCParam(graphics->sprites[index], 1 + PokeIconPaletteIndex(daycareStatus->species[index], daycareStatus->forms[index], FALSE));
    }

    PoketchAnimation_SetCParam(graphics->sprites[2], 1 + PokeIconPaletteIndex(1, 0, TRUE));

    if (daycareStatus->numMons > 0) {
        if (SpeciesData_GetFormValue(daycareStatus->species[0], daycareStatus->forms[0], SPECIES_DATA_FLIP_SPRITE)) {
            PoketchAnimation_UpdateAnimationIdx(graphics->sprites[0], 6);
        } else {
            PoketchAnimation_UpdateAnimationIdx(graphics->sprites[0], 7);
        }
    }

    SetLevelSprites(&(graphics->sprites[3]), daycareStatus->levels[0]);
    SetLevelSprites(&(graphics->sprites[6]), daycareStatus->levels[1]);
    SetGenderSprites(graphics->sprites[9], daycareStatus->genders[0]);
    SetGenderSprites(graphics->sprites[10], daycareStatus->genders[1]);

    hideSprite = (daycareStatus->numMons == 0);

    PoketchAnimation_HideSprite(graphics->sprites[0], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[3], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[4], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[5], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[9], hideSprite);

    hideSprite = (daycareStatus->numMons <= 1);

    PoketchAnimation_HideSprite(graphics->sprites[1], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[6], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[7], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[8], hideSprite);
    PoketchAnimation_HideSprite(graphics->sprites[10], hideSprite);

    PoketchAnimation_HideSprite(graphics->sprites[2], !daycareStatus->hasEgg);
}

static void SetLevelSprites(PoketchAnimation_AnimatedSpriteData **digitSprites, u32 level)
{
    u32 digits[3];

    if (level > MAX_POKEMON_LEVEL) {
        level = MAX_POKEMON_LEVEL;
    }

    CP_SetDiv32_32(level, 100);
    digits[0] = CP_GetDivResult32();

    CP_SetDiv32_32(CP_GetDivRemainder32(), 10);
    digits[1] = CP_GetDivResult32();
    digits[2] = CP_GetDivRemainder32();

    for (int index = 0; index < 3; index++) {
        PoketchAnimation_UpdateAnimationIdx(digitSprites[index], digits[index]);
    }

    PoketchAnimation_HideSprite(digitSprites[0], level < 100);
    PoketchAnimation_HideSprite(digitSprites[1], level < 10);
}

static void SetGenderSprites(PoketchAnimation_AnimatedSpriteData *genderSymbol, enum Gender gender)
{
    switch (gender) {
    case GENDER_MALE:
        PoketchAnimation_UpdateAnimationIdx(genderSymbol, 10);
        break;
    case GENDER_FEMALE:
        PoketchAnimation_UpdateAnimationIdx(genderSymbol, 11);
        break;
    default:
        PoketchAnimation_UpdateAnimationIdx(genderSymbol, 12);
        break;
    }
}
