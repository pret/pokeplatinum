#include "applications/pc_boxes/ov19_021DCF88.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/ov19_021DB8E4.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DBA9C.h"
#include "applications/pc_boxes/struct_ov19_021DCF88_decl.h"

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "pc_boxes.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

typedef struct DialSwitchAnim {
    BoxDialGraphics *dialGraphics;
    u32 state;
    Sprite *tabSprite;
    u16 slideFramesLeft;
    s16 fadeStep;
    fx32 bgXOffset;
    fx32 bgXStep;
    int targetBgXOffset;
} DialSwitchAnim;

typedef struct DialRotateAnim DialRotateAnim;

typedef struct DialSpriteMove {
    DialRotateAnim *rotateAnim;
    Sprite *sprite;
    fx32 pathPos;
    fx32 targetPathPos;
    fx32 pathStep;
    u16 framesLeft;
    u16 delayFrames;
    BOOL hasSecondMove;
    fx32 nextPathPos;
    fx32 nextTargetPathPos;
    fx32 nextPathStep;
    u16 nextFramesLeft;
    u16 nextDelayFrames;
} DialSpriteMove;

struct DialRotateAnim {
    BoxDialGraphics *dialGraphics;
    Sprite **sprites;
    DialSpriteMove spriteMoves[10];
    u8 unused_1C0[10];
    u8 appearedCount;
    u8 activeMoveCount;
    u8 state;
    u8 appearDelay;
};

struct BoxDialGraphics {
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    u32 shownDial;
    SysTask *animTask;
    NNSG2dImagePaletteProxy plttProxy;
    Sprite *boxJumpTabSprite;
    Sprite *markingsTabSprite;
    Sprite *markingButtonSprites[PC_MARKINGS_BUTTON_COUNT];
    Sprite *thumbnailSprites[DIAL_THUMBNAIL_COUNT];
    int thumbnailsToUpdate;
    int dialRotation;
    String *string;
    Window window;
    void *tabCellBankBuffer;
    NNSG2dCellDataBank *tabCellBank;
    void *tabAnimBankBuffer;
    NNSG2dAnimBankData *tabAnimBank;
    void *markingButtonCellBankBuffer;
    NNSG2dCellDataBank *markingButtonCellBank;
    void *markingButtonAnimBankBuffer;
    NNSG2dAnimBankData *markingButtonAnimBank;
    DialSwitchAnim switchAnim;
    u8 fadeBlendA[DIAL_FADE_STEPS];
    u8 fadeBlendB[DIAL_FADE_STEPS];
};

static void BoxDialGraphics_InitFadeBlendTables(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_CreateTabSprites(BoxDialGraphics *dialGraphics, NARC *narc);
static void BoxDialGraphics_LoadSpriteResources(BoxDialGraphics *dialGraphics, NARC *narc);
static SysTask *BoxDialGraphics_StartAnimTask(BoxDialGraphics *dialGraphics, SysTaskFunc taskFunc, void *taskData);
static void BoxDialGraphics_FinishAnimTask(BoxDialGraphics *dialGraphics);
static BOOL BoxDialGraphics_IsAnimTaskDone(BoxDialGraphics *dialGraphics);
static void DialSwitchAnim_OpenTask(SysTask *task, void *param);
static void DialSwitchAnim_SwitchTask(SysTask *task, void *param);
static void DialSwitchAnim_CloseTask(SysTask *unused, void *param);
static void BoxDialGraphics_UpdateThumbnailRotation(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_UpdateMarkingButtonRotation(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_CreateThumbnailSprites(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_LoadIncomingThumbnails(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_DeleteThumbnailSprites(BoxDialGraphics *dialGraphics);
static u32 GetMarkingButtonAnimID(u32 button, u32 mask);
static void BoxDialGraphics_CreateMarkingButtonSprites(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_DeleteMarkingButtonSprites(BoxDialGraphics *dialGraphics);
static void DialSpriteMove_Task(SysTask *task, void *param);
static void DialSpriteMove_MirroredTask(SysTask *task, void *param);
static void DialSpriteMove_Finish(SysTask *task, DialSpriteMove *dialSpriteMove);
static void DialRotateAnim_StartSpriteMove(DialRotateAnim *dialRotateAnim, Sprite *sprite, DialSpriteMove *dialSpriteMove, u32 startRingPos, u32 endRingPos, u32 frames, u32 delay, BOOL isMirrored);
static void DialRotateAnim_QueueSecondMove(DialRotateAnim *unused, DialSpriteMove *dialSpriteMove, u32 delay, u32 startRingPos, u32 endRingPos);
static void DialRotateAnim_ThumbnailsAppearTask(SysTask *unused, void *param);
static void DialRotateAnim_Free(void *param);
static void BoxDialGraphics_StartThumbnailsAppear(BoxDialGraphics *dialGraphics);
static void DialRotateAnim_ThumbnailsRotateTask(SysTask *unused, void *param);
static void BoxDialGraphics_StartThumbnailsRotate(BoxDialGraphics *dialGraphics);
static void DialRotateAnim_MarkingButtonsAppearTask(SysTask *unused, void *param);
static void BoxDialGraphics_StartMarkingButtonsAppear(BoxDialGraphics *dialGraphics);
static void DialRotateAnim_MarkingButtonsRotateTask(SysTask *unused, void *param);
static void BoxDialGraphics_StartMarkingButtonsRotate(BoxDialGraphics *dialGraphics);
static void BoxDialGraphics_HideBoxNames(BoxDialGraphics *unused);
static void BoxDialGraphics_ShowBoxNames(BoxDialGraphics *unused);
static void BoxDialGraphics_DrawBoxNames(BoxDialGraphics *dialGraphics);

static const fx32 sDialPanelXOffsets[] = {
    FX32_CONST(0),
    FX32_CONST(-96),
    FX32_CONST(88)
};

static const int sDialContentXOffsets[] = {
    0,
    -128,
    128
};

static const struct {
    s16 x;
    s16 y;
} sDialArcPath[] = {
    { 106, 584 },
    { 106, 578 },
    { 106, 574 },
    { 105, 570 },
    { 105, 568 },
    { 105, 566 },
    { 105, 564 },
    { 105, 562 },
    { 105, 560 },
    { 104, 558 },
    { 104, 556 },
    { 104, 554 },
    { 104, 552 },
    { 103, 550 },
    { 103, 548 },
    { 103, 547 },
    { 102, 545 },
    { 102, 543 },
    { 101, 541 },
    { 101, 539 },
    { 100, 537 },
    { 100, 535 },
    { 99, 534 },
    { 98, 532 },
    { 98, 530 },
    { 97, 528 },
    { 96, 526 },
    { 96, 525 },
    { 95, 523 },
    { 94, 521 },
    { 94, 520 },
    { 93, 518 },
    { 92, 516 },
    { 91, 515 },
    { 90, 513 },
    { 89, 511 },
    { 88, 510 },
    { 87, 508 },
    { 86, 507 },
    { 86, 505 },
    { 85, 504 },
    { 83, 502 },
    { 82, 501 },
    { 81, 499 },
    { 80, 498 },
    { 79, 496 },
    { 78, 495 },
    { 77, 494 },
    { 76, 492 },
    { 75, 491 },
    { 73, 490 },
    { 72, 488 },
    { 71, 487 },
    { 70, 486 },
    { 68, 485 },
    { 67, 484 },
    { 66, 483 },
    { 65, 482 },
    { 63, 481 },
    { 62, 479 },
    { 61, 479 },
    { 59, 478 },
    { 58, 477 },
    { 56, 476 },
    { 55, 475 },
    { 54, 474 },
    { 52, 473 },
    { 51, 472 },
    { 49, 472 },
    { 48, 471 },
    { 46, 470 },
    { 45, 470 },
    { 43, 469 },
    { 42, 468 },
    { 40, 468 },
    { 39, 467 },
    { 37, 467 },
    { 36, 466 },
    { 34, 466 },
    { 33, 466 },
    { 31, 465 },
    { 30, 465 },
    { 28, 465 },
    { 26, 464 },
    { 25, 464 },
    { 23, 464 },
    { 22, 464 },
    { 20, 464 },
    { 19, 464 },
    { 17, 464 },
    { 16, 464 },
    { 16, 462 },
    { 16, 460 },
    { 16, 458 },
    { 16, 456 },
    { 16, 454 },
    { 16, 452 },
    { 16, 450 },
    { 16, 448 },
    { 16, 447 },
    { 16, 445 },
    { 16, 444 },
    { 16, 442 },
    { 16, 441 },
    { 16, 439 },
    { 16, 438 },
    { 16, 436 },
    { 16, 435 },
    { 16, 433 },
    { 16, 432 },
    { 16, 430 },
    { 16, 429 },
    { 16, 427 },
    { 16, 426 },
    { 16, 424 },
    { 16, 423 },
    { 16, 422 },
    { 16, 420 },
    { 16, 418 },
    { 16, 416 },
    { 16, 414 },
    { 16, 412 },
    { 16, 410 },
    { 16, 408 },
    { 16, 406 },
    { 16, 404 },
    { 16, 402 },
    { 16, 400 },
    { 16, 398 },
    { 16, 396 },
    { 16, 394 },
    { 16, 392 },
    { 16, 390 },
    { 16, 388 },
    { 16, 386 },
    { 16, 384 },
    { 16, 382 },
    { 16, 380 },
    { 16, 378 },
    { 16, 376 },
    { 16, 374 },
    { 16, 372 },
    { 16, 370 },
    { 16, 368 }
};

static const u16 sDialRingPathPositions[] = {
    143,
    127,
    106,
    74,
    51,
    31,
    12,
    0
};

BOOL BoxDialGraphics_Init(BoxDialGraphics **outDialGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList)
{
    if (BoxApp_GetBoxMode(boxApp) == PC_MODE_COMPARE) {
        *outDialGraphics = NULL;
        return TRUE;
    } else {
        BoxDialGraphics *dialGraphics = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(BoxDialGraphics));

        if (dialGraphics != NULL) {
            int i;

            dialGraphics->bgConfig = bgConfig;
            dialGraphics->boxGraphics = boxGraphics;
            dialGraphics->boxApp = boxApp;
            dialGraphics->spriteList = spriteList;
            dialGraphics->animTask = NULL;
            dialGraphics->string = String_Init(32, HEAP_ID_BOX_GRAPHICS);
            dialGraphics->shownDial = boxApp->dialHelper.selectedDial;
            dialGraphics->tabCellBankBuffer = NULL;
            dialGraphics->tabAnimBankBuffer = NULL;
            dialGraphics->markingButtonCellBankBuffer = NULL;
            dialGraphics->markingButtonAnimBankBuffer = NULL;
            dialGraphics->boxJumpTabSprite = NULL;
            dialGraphics->markingsTabSprite = NULL;

            for (i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
                dialGraphics->markingButtonSprites[i] = NULL;
            }

            for (i = 0; i < DIAL_THUMBNAIL_COUNT; i++) {
                dialGraphics->thumbnailSprites[i] = NULL;
            }

            dialGraphics->dialRotation = 0;
            BoxDialGraphics_InitFadeBlendTables(dialGraphics);
            *outDialGraphics = dialGraphics;

            return TRUE;
        }

        return FALSE;
    }
}

static void BoxDialGraphics_InitFadeBlendTables(BoxDialGraphics *dialGraphics)
{
    fx32 angle, angleStep;
    int i;

    angle = 0;
    angleStep = (90 << FX32_SHIFT) / DIAL_FADE_STEPS;

    dialGraphics->fadeBlendA[0] = 0;
    dialGraphics->fadeBlendB[0] = 16;

    for (i = 1; i < DIAL_FADE_STEPS - 1; i++) {
        angle += angleStep;
        dialGraphics->fadeBlendA[i] = (CalcSineDegrees(angle >> FX32_SHIFT) * 16) >> FX32_SHIFT;
        dialGraphics->fadeBlendB[i] = 16 - dialGraphics->fadeBlendA[i];
    }

    dialGraphics->fadeBlendA[i] = 16;
    dialGraphics->fadeBlendB[i] = 0;
}

void BoxDialGraphics_Free(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        int i;

        Window_Remove(&dialGraphics->window);

        if (dialGraphics->tabCellBankBuffer != NULL) {
            Heap_Free(dialGraphics->tabCellBankBuffer);
        }

        if (dialGraphics->tabAnimBankBuffer != NULL) {
            Heap_Free(dialGraphics->tabAnimBankBuffer);
        }

        if (dialGraphics->markingButtonCellBankBuffer != NULL) {
            Heap_Free(dialGraphics->markingButtonCellBankBuffer);
        }

        if (dialGraphics->markingButtonAnimBankBuffer != NULL) {
            Heap_Free(dialGraphics->markingButtonAnimBankBuffer);
        }

        if (dialGraphics->boxJumpTabSprite != NULL) {
            Sprite_Delete(dialGraphics->boxJumpTabSprite);
        }

        if (dialGraphics->markingsTabSprite != NULL) {
            Sprite_Delete(dialGraphics->markingsTabSprite);
        }

        if (dialGraphics->string != NULL) {
            String_Free(dialGraphics->string);
        }

        for (i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
            if (dialGraphics->markingButtonSprites[i] != NULL) {
                Sprite_Delete(dialGraphics->markingButtonSprites[i]);
            }
        }

        for (i = 0; i < DIAL_THUMBNAIL_COUNT; i++) {
            if (dialGraphics->thumbnailSprites[i] != NULL) {
                Sprite_Delete(dialGraphics->thumbnailSprites[i]);
            }
        }

        Heap_Free(dialGraphics);
    }
}

void BoxDialGraphics_LoadGraphics(BoxDialGraphics *dialGraphics, NARC *narc)
{
    if (dialGraphics != NULL) {
        Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 127, dialGraphics->bgConfig, BG_LAYER_SUB_3, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 124, dialGraphics->bgConfig, BG_LAYER_SUB_3, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 125, dialGraphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 126, dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Bg_FillTilesRange(dialGraphics->bgConfig, BG_LAYER_SUB_0, 0, 1, 0);
        Bg_FillTilemapRect(dialGraphics->bgConfig, BG_LAYER_SUB_0, 0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        Bg_CopyTilemapBufferToVRAM(dialGraphics->bgConfig, BG_LAYER_SUB_0);
        Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, BG_OFFSET_UPDATE_SET_X, sDialPanelXOffsets[dialGraphics->shownDial]);
        Window_Add(dialGraphics->bgConfig, &dialGraphics->window, BG_LAYER_SUB_0, 0, 0, SCREEN_WIDTH_TILES, SCREEN_HEIGHT_TILES, 2, 0);
        Window_FillTilemap(&dialGraphics->window, 0);
        Window_CopyToVRAM(&dialGraphics->window);
        BoxDialGraphics_HideBoxNames(dialGraphics);
        Graphics_LoadPaletteFromOpenNARC(narc, 128, PAL_LOAD_SUB_BG, 0, 3 * PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
        BoxDialGraphics_CreateTabSprites(dialGraphics, narc);
    }
}

static void BoxDialGraphics_CreateTabSprites(BoxDialGraphics *dialGraphics, NARC *narc)
{
    SpriteResourcesHeader srHeader;
    NNSG2dImageProxy imageProxy;

    BoxDialGraphics_LoadSpriteResources(dialGraphics, narc);

    NNS_G2dInitImageProxy(&imageProxy);
    Graphics_LoadImageMappingFromOpenNARC(narc, 138, TRUE, IMAGE_MAPPING_LAYOUT_1D, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, HEAP_ID_BOX_GRAPHICS, &imageProxy);

    SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, &dialGraphics->plttProxy, dialGraphics->tabCellBank, dialGraphics->tabAnimBank, 3);

    dialGraphics->boxJumpTabSprite = BoxGraphics_CreateSprite(dialGraphics->spriteList, &srHeader, 0, 568, 49, NNS_G2D_VRAM_TYPE_2DSUB);
    dialGraphics->markingsTabSprite = BoxGraphics_CreateSprite(dialGraphics->spriteList, &srHeader, 256, 568, 49, NNS_G2D_VRAM_TYPE_2DSUB);

    Sprite_SetFlipMode(dialGraphics->markingsTabSprite, 1);

    if (BoxApp_GetBoxMode(dialGraphics->boxApp) == PC_MODE_MOVE_ITEMS) {
        Sprite_SetAnim(dialGraphics->markingsTabSprite, 1);
    }
}

static void BoxDialGraphics_LoadSpriteResources(BoxDialGraphics *dialGraphics, NARC *narc)
{
    dialGraphics->tabCellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 139, TRUE, &dialGraphics->tabCellBank, HEAP_ID_BOX_GRAPHICS);
    dialGraphics->tabAnimBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 140, TRUE, &dialGraphics->tabAnimBank, HEAP_ID_BOX_GRAPHICS);
    dialGraphics->markingButtonCellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 142, TRUE, &dialGraphics->markingButtonCellBank, HEAP_ID_BOX_GRAPHICS);
    dialGraphics->markingButtonAnimBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 143, TRUE, &dialGraphics->markingButtonAnimBank, HEAP_ID_BOX_GRAPHICS);

    NNS_G2dInitImagePaletteProxy(&dialGraphics->plttProxy);
    Graphics_LoadPartialPaletteFromOpenNARC(narc, 144, NNS_G2D_VRAM_TYPE_2DSUB, 0, 10, &dialGraphics->plttProxy);
}

static SysTask *BoxDialGraphics_StartAnimTask(BoxDialGraphics *dialGraphics, SysTaskFunc taskFunc, void *taskData)
{
    dialGraphics->animTask = BoxGraphics_StartVBlankTask(taskFunc, taskData, 0);
    return dialGraphics->animTask;
}

static void BoxDialGraphics_FinishAnimTask(BoxDialGraphics *dialGraphics)
{
    SysTask_Done(dialGraphics->animTask);
    dialGraphics->animTask = NULL;
}

static BOOL BoxDialGraphics_IsAnimTaskDone(BoxDialGraphics *dialGraphics)
{
    return dialGraphics->animTask == NULL;
}

void BoxDialGraphics_SwitchDial(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        u32 selectedDialID = dialGraphics->boxApp->dialHelper.selectedDial;

        if (dialGraphics->shownDial != selectedDialID) {
            SysTaskFunc taskFunc;
            DialSwitchAnim *switchAnim = &dialGraphics->switchAnim;

            switchAnim->dialGraphics = dialGraphics;
            switchAnim->tabSprite = NULL;
            switchAnim->state = 0;

            switch (selectedDialID) {
            case DIALS_NONE:
                switchAnim->slideFramesLeft = DIAL_SLIDE_FRAMES;
                taskFunc = DialSwitchAnim_CloseTask;
                BoxDialGraphics_DeleteThumbnailSprites(dialGraphics);
                BoxDialGraphics_DeleteMarkingButtonSprites(dialGraphics);
                BoxDialGraphics_HideBoxNames(dialGraphics);
                break;
            case DIALS_BOX_JUMP:
                switchAnim->slideFramesLeft = DIAL_SLIDE_FRAMES;

                if (dialGraphics->shownDial == 0) {
                    taskFunc = DialSwitchAnim_OpenTask;
                } else {
                    taskFunc = DialSwitchAnim_SwitchTask;
                    switchAnim->slideFramesLeft += DIAL_SLIDE_FRAMES;
                }

                BoxDialGraphics_DeleteMarkingButtonSprites(dialGraphics);
                switchAnim->tabSprite = dialGraphics->boxJumpTabSprite;
                break;
            case DIALS_MARKINGS:
                switchAnim->slideFramesLeft = DIAL_SLIDE_FRAMES;

                if (dialGraphics->shownDial == 0) {
                    taskFunc = DialSwitchAnim_OpenTask;
                } else {
                    taskFunc = DialSwitchAnim_SwitchTask;
                    switchAnim->slideFramesLeft += DIAL_SLIDE_FRAMES;
                }

                switchAnim->tabSprite = dialGraphics->markingsTabSprite;
                BoxDialGraphics_DeleteThumbnailSprites(dialGraphics);
                BoxDialGraphics_HideBoxNames(dialGraphics);
                break;
            default:
                Heap_Free(switchAnim);
                return;
            }

            dialGraphics->shownDial = selectedDialID;
            switchAnim->bgXOffset = (Bg_GetXOffset(dialGraphics->bgConfig, 5) * FX32_ONE);
            switchAnim->bgXStep = (sDialPanelXOffsets[selectedDialID] - switchAnim->bgXOffset) / switchAnim->slideFramesLeft;
            switchAnim->targetBgXOffset = sDialPanelXOffsets[selectedDialID] >> FX32_SHIFT;

            if (switchAnim->tabSprite != NULL) {
                Sprite_SetAnim(switchAnim->tabSprite, 1);
            }

            BoxDialGraphics_StartAnimTask(dialGraphics, taskFunc, switchAnim);
        }
    }
}

BOOL BoxDialGraphics_IsSwitchDone(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        return BoxDialGraphics_IsAnimTaskDone(dialGraphics);
    } else {
        return TRUE;
    }
}

static void DialSwitchAnim_OpenTask(SysTask *task, void *param)
{
    DialSwitchAnim *switchAnim = (DialSwitchAnim *)param;
    BoxDialGraphics *dialGraphics = switchAnim->dialGraphics;

    switch (switchAnim->state) {
    case DIAL_OPEN_STATE_WAIT_TAB:
        if (Sprite_IsAnimated(switchAnim->tabSprite) == 0) {
            switchAnim->state++;
        }
        break;
    case DIAL_OPEN_STATE_SLIDE:
        if (switchAnim->slideFramesLeft) {
            switchAnim->bgXOffset += switchAnim->bgXStep;
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, (switchAnim->bgXOffset >> FX32_SHIFT));
            switchAnim->slideFramesLeft--;
        } else {
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, switchAnim->targetBgXOffset);
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 0, 16);
            switchAnim->state++;
        }
        break;
    case DIAL_OPEN_STATE_SET_CONTENT:
        Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_2, 0, sDialContentXOffsets[dialGraphics->shownDial]);
        switchAnim->fadeStep = 0;
        switchAnim->state++;
        break;
    case DIAL_OPEN_STATE_FADE_IN:
        G2S_ChangeBlendAlpha(dialGraphics->fadeBlendA[switchAnim->fadeStep], dialGraphics->fadeBlendB[switchAnim->fadeStep]);

        if (++switchAnim->fadeStep >= DIAL_FADE_STEPS) {
            Sprite_SetAnim(switchAnim->tabSprite, 0);
            BoxDialGraphics_FinishAnimTask(dialGraphics);
        }
        break;
    }
}

static void DialSwitchAnim_SwitchTask(SysTask *task, void *param)
{
    DialSwitchAnim *switchAnim = (DialSwitchAnim *)param;
    BoxDialGraphics *dialGraphics = switchAnim->dialGraphics;

    switch (switchAnim->state) {
    case DIAL_SWITCH_STATE_WAIT_TAB:
        if (Sprite_IsAnimated(switchAnim->tabSprite) == 0) {
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 16, 0);
            switchAnim->fadeStep = DIAL_FADE_STEPS - 1;
            switchAnim->state++;
        }
        break;
    case DIAL_SWITCH_STATE_FADE_OUT:
        switchAnim->fadeStep--;
        G2S_ChangeBlendAlpha(dialGraphics->fadeBlendA[switchAnim->fadeStep], dialGraphics->fadeBlendB[switchAnim->fadeStep]);

        if (switchAnim->fadeStep == 0) {
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_2, 0, sDialContentXOffsets[dialGraphics->shownDial]);
            switchAnim->state++;
        }
        break;
    case DIAL_SWITCH_STATE_SLIDE:
        if (switchAnim->slideFramesLeft) {
            switchAnim->bgXOffset += switchAnim->bgXStep;
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, (switchAnim->bgXOffset >> FX32_SHIFT));
            switchAnim->slideFramesLeft--;
        } else {
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, switchAnim->targetBgXOffset);
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 0, 16);
            switchAnim->state++;
        }
        break;
    case DIAL_SWITCH_STATE_SET_CONTENT:
        Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_2, 0, sDialContentXOffsets[dialGraphics->shownDial]);
        switchAnim->fadeStep = 0;
        switchAnim->state++;
        break;
    case DIAL_SWITCH_STATE_FADE_IN:
        G2S_ChangeBlendAlpha(dialGraphics->fadeBlendA[switchAnim->fadeStep], dialGraphics->fadeBlendB[switchAnim->fadeStep]);

        if (++switchAnim->fadeStep >= DIAL_FADE_STEPS) {
            Sprite_SetAnim(switchAnim->tabSprite, 0);
            BoxDialGraphics_FinishAnimTask(dialGraphics);
        }
        break;
    }
}

static void DialSwitchAnim_CloseTask(SysTask *unused, void *param)
{
    DialSwitchAnim *switchAnim = (DialSwitchAnim *)param;
    BoxDialGraphics *dialGraphics = switchAnim->dialGraphics;

    switch (switchAnim->state) {
    case DIAL_CLOSE_STATE_START_FADE:
        switchAnim->fadeStep = DIAL_FADE_STEPS - 1;
        switchAnim->state++;
    case DIAL_CLOSE_STATE_FADE_OUT:
        switchAnim->fadeStep--;
        G2S_ChangeBlendAlpha(dialGraphics->fadeBlendA[switchAnim->fadeStep], dialGraphics->fadeBlendB[switchAnim->fadeStep]);

        if (switchAnim->fadeStep == 0) {
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_2, 0, sDialContentXOffsets[0]);
            switchAnim->state++;
        }
        break;
    case DIAL_CLOSE_STATE_SLIDE:
        if (switchAnim->slideFramesLeft) {
            switchAnim->bgXOffset += switchAnim->bgXStep;
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, (switchAnim->bgXOffset >> FX32_SHIFT));
            switchAnim->slideFramesLeft--;
        } else {
            Bg_SetOffset(dialGraphics->bgConfig, BG_LAYER_SUB_1, 0, switchAnim->targetBgXOffset);
            switchAnim->state++;
        }
        break;
    case DIAL_CLOSE_STATE_FINISH:
        BoxDialGraphics_FinishAnimTask(dialGraphics);
        break;
    }
}

void BoxDialGraphics_PopulateDial(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        switch (dialGraphics->shownDial) {
        case DIALS_BOX_JUMP:
            BoxDialGraphics_CreateThumbnailSprites(dialGraphics);
            BoxDialGraphics_StartThumbnailsAppear(dialGraphics);
            break;
        case DIALS_MARKINGS:
            BoxDialGraphics_CreateMarkingButtonSprites(dialGraphics);
            BoxDialGraphics_StartMarkingButtonsAppear(dialGraphics);
            break;
        }
    }
}

BOOL BoxDialGraphics_IsPopulateDone(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        if (BoxDialGraphics_IsAnimTaskDone(dialGraphics)) {
            if (dialGraphics->shownDial == DIALS_BOX_JUMP) {
                BoxDialGraphics_DrawBoxNames(dialGraphics);
            }

            return TRUE;
        }

        return FALSE;
    } else {
        return TRUE;
    }
}

void BoxDialGraphics_RotateDial(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        switch (dialGraphics->shownDial) {
        case DIALS_BOX_JUMP:
            BoxDialGraphics_HideBoxNames(dialGraphics);
            BoxDialGraphics_LoadIncomingThumbnails(dialGraphics);
            BoxDialGraphics_StartThumbnailsRotate(dialGraphics);
            break;
        case DIALS_MARKINGS:
            BoxDialGraphics_StartMarkingButtonsRotate(dialGraphics);
            break;
        }
    }
}

static void BoxDialGraphics_UpdateThumbnailRotation(BoxDialGraphics *dialGraphics)
{
    int leadingSlot, direction, scrollDelta;

    scrollDelta = BoxApp_GetDialScrollDelta(dialGraphics->boxApp);

    if (scrollDelta > 0) {
        leadingSlot = dialGraphics->dialRotation + (DIAL_VISIBLE_BUTTONS - 1);

        if (leadingSlot >= DIAL_THUMBNAIL_COUNT) {
            leadingSlot -= DIAL_THUMBNAIL_COUNT;
        }

        direction = -1;

        dialGraphics->dialRotation -= scrollDelta;

        if (dialGraphics->dialRotation < 0) {
            dialGraphics->dialRotation += DIAL_THUMBNAIL_COUNT;
        }
    } else {
        leadingSlot = dialGraphics->dialRotation;
        direction = 1;

        dialGraphics->dialRotation -= scrollDelta;

        if (dialGraphics->dialRotation >= DIAL_THUMBNAIL_COUNT) {
            dialGraphics->dialRotation -= DIAL_THUMBNAIL_COUNT;
        }
    }
}

static void BoxDialGraphics_UpdateMarkingButtonRotation(BoxDialGraphics *dialGraphics)
{
    int scrollDelta = BoxApp_GetDialScrollDelta(dialGraphics->boxApp);
    dialGraphics->dialRotation += scrollDelta;

    if (dialGraphics->dialRotation < 0) {
        dialGraphics->dialRotation += PC_MARKINGS_BUTTON_COUNT;
    } else if (dialGraphics->dialRotation >= PC_MARKINGS_BUTTON_COUNT) {
        dialGraphics->dialRotation -= PC_MARKINGS_BUTTON_COUNT;
    }
}

BOOL BoxDialGraphics_IsRotateDone(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        if (BoxDialGraphics_IsAnimTaskDone(dialGraphics)) {
            if (dialGraphics->shownDial == DIALS_BOX_JUMP) {
                BoxDialGraphics_DrawBoxNames(dialGraphics);
                BoxDialGraphics_UpdateThumbnailRotation(dialGraphics);
            } else {
                BoxDialGraphics_UpdateMarkingButtonRotation(dialGraphics);
            }

            return TRUE;
        }

        return FALSE;
    } else {
        return TRUE;
    }
}

static void BoxDialGraphics_CreateThumbnailSprites(BoxDialGraphics *dialGraphics)
{
    SpriteResourcesHeader srHeader;
    BoxPopupGraphics *popupGraphics;
    NNSG2dImageProxy imageProxy;
    int i, offset;

    popupGraphics = BoxGraphics_GetPopupGraphics(dialGraphics->boxGraphics);
    offset = BoxApp_GetDialOffset(dialGraphics->boxApp) + 3;

    if (offset >= MAX_PC_BOXES) {
        offset -= MAX_PC_BOXES;
    }

    for (i = 0; i < DIAL_THUMBNAIL_COUNT; i++) {
        NNS_G2dInitImageProxy(&imageProxy);
        BoxPopupGraphics_LoadBoxThumbnail(popupGraphics, offset, DIAL_SPRITE_TILE_BASE + i * BOX_THUMBNAIL_TILE_COUNT, NNS_G2D_VRAM_TYPE_2DSUB, &imageProxy);
        SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, &dialGraphics->plttProxy, BoxPopupGraphics_GetThumbnailCellBank(popupGraphics), NULL, 2);

        dialGraphics->thumbnailSprites[i] = BoxGraphics_CreateSprite(dialGraphics->spriteList, &srHeader, 16, 368, 48, NNS_G2D_VRAM_TYPE_2DSUB);

        GF_ASSERT(dialGraphics->thumbnailSprites[i] != NULL);

        offset--;

        if (offset < 0) {
            offset = MAX_PC_BOXES - 1;
        }
    }

    dialGraphics->dialRotation = 0;
}

static void BoxDialGraphics_LoadIncomingThumbnails(BoxDialGraphics *dialGraphics)
{
    BoxPopupGraphics *popupGraphics;
    int i, count, boxID, direction, startX, startY, slot;

    popupGraphics = BoxGraphics_GetPopupGraphics(dialGraphics->boxGraphics);
    boxID = BoxApp_GetDialOffset(dialGraphics->boxApp);

    if (dialGraphics->boxApp->dialHelper.scrollDelta > 0) {
        boxID = (boxID - dialGraphics->boxApp->dialHelper.scrollDelta) + (3 + 1);

        if (boxID >= MAX_PC_BOXES) {
            boxID -= MAX_PC_BOXES;
        }

        direction = 1;
        slot = dialGraphics->dialRotation - 1;

        if (slot < 0) {
            slot += DIAL_THUMBNAIL_COUNT;
        }

        count = dialGraphics->boxApp->dialHelper.scrollDelta;
        startX = 16;
        startY = 368;
    } else {
        boxID = (boxID - dialGraphics->boxApp->dialHelper.scrollDelta) - (2 + 1);

        if (boxID < 0) {
            boxID += MAX_PC_BOXES;
        }

        direction = -1;
        slot = dialGraphics->dialRotation + DIAL_VISIBLE_BUTTONS;

        if (slot >= DIAL_THUMBNAIL_COUNT) {
            slot -= DIAL_THUMBNAIL_COUNT;
        }

        count = dialGraphics->boxApp->dialHelper.scrollDelta * -1;
        startX = 106;
        startY = 592;
    }

    dialGraphics->thumbnailsToUpdate = count;

    for (i = 0; i < count; i++) {
        BoxPopupGraphics_LoadBoxThumbnail(popupGraphics, boxID, DIAL_SPRITE_TILE_BASE + slot * BOX_THUMBNAIL_TILE_COUNT, NNS_G2D_VRAM_TYPE_2DSUB, NULL);

        boxID += direction;

        if (boxID < 0) {
            boxID = MAX_PC_BOXES - 1;
        } else if (boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }

        slot -= direction;

        if (slot < 0) {
            slot = DIAL_THUMBNAIL_COUNT - 1;
        } else if (slot >= DIAL_THUMBNAIL_COUNT) {
            slot = 0;
        }
    }
}

static void BoxDialGraphics_DeleteThumbnailSprites(BoxDialGraphics *dialGraphics)
{
    for (int i = 0; i < DIAL_THUMBNAIL_COUNT; i++) {
        if (dialGraphics->thumbnailSprites[i] != NULL) {
            Sprite_Delete(dialGraphics->thumbnailSprites[i]);
            dialGraphics->thumbnailSprites[i] = NULL;
        }
    }
}

static u32 GetMarkingButtonAnimID(u32 button, u32 mask)
{
    if (button == 0) {
        return (mask == 0) ? 1 : 0;
    }

    if (mask & (1 << (button - 1))) {
        return button * 2 + 1;
    } else {
        return button * 2;
    }
}

static void BoxDialGraphics_CreateMarkingButtonSprites(BoxDialGraphics *dialGraphics)
{
    SpriteResourcesHeader srHeader;
    NNSG2dImageProxy imageProxy;
    u32 mask;

    mask = BoxApp_GetMonSpriteTransparencyMask(dialGraphics->boxApp);

    NNS_G2dInitImageProxy(&imageProxy);
    Graphics_LoadImageMapping(NARC_INDEX_GRAPHIC__BOX, 141, TRUE, IMAGE_MAPPING_LAYOUT_1D, 0, NNS_G2D_VRAM_TYPE_2DSUB, DIAL_SPRITE_TILE_BASE * TILE_SIZE_4BPP, HEAP_ID_BOX_GRAPHICS, &imageProxy);

    for (int i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
        SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, &dialGraphics->plttProxy, dialGraphics->markingButtonCellBank, dialGraphics->markingButtonAnimBank, 2);

        dialGraphics->markingButtonSprites[i] = BoxGraphics_CreateSprite(dialGraphics->spriteList, &srHeader, 240, 368, 48, NNS_G2D_VRAM_TYPE_2DSUB);
        GF_ASSERT(dialGraphics->markingButtonSprites[i] != NULL);

        Sprite_SetAnim(dialGraphics->markingButtonSprites[i], GetMarkingButtonAnimID(i, mask));
    }

    dialGraphics->dialRotation = BoxApp_GetMarkingsButtonsScrollOffset(dialGraphics->boxApp);
}

static void BoxDialGraphics_DeleteMarkingButtonSprites(BoxDialGraphics *dialGraphics)
{
    for (int i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
        if (dialGraphics->markingButtonSprites[i] != NULL) {
            Sprite_Delete(dialGraphics->markingButtonSprites[i]);
            dialGraphics->markingButtonSprites[i] = NULL;
        }
    }
}

static void DialSpriteMove_Task(SysTask *task, void *param)
{
    DialSpriteMove *dialSpriteMove = (DialSpriteMove *)param;
    VecFx32 pos;

    if (dialSpriteMove->delayFrames) {
        dialSpriteMove->delayFrames--;
        return;
    }

    if (dialSpriteMove->framesLeft) {
        u32 pathIndex;

        dialSpriteMove->framesLeft--;
        dialSpriteMove->pathPos += dialSpriteMove->pathStep;
        pathIndex = dialSpriteMove->pathPos >> FX32_SHIFT;
        pos.x = sDialArcPath[pathIndex].x << FX32_SHIFT;
        pos.y = sDialArcPath[pathIndex].y << FX32_SHIFT;
        pos.z = 0;
        Sprite_SetPosition(dialSpriteMove->sprite, &pos);
    } else {
        u32 targetPathIndex = dialSpriteMove->targetPathPos >> FX32_SHIFT;

        pos.x = sDialArcPath[targetPathIndex].x << FX32_SHIFT;
        pos.y = sDialArcPath[targetPathIndex].y << FX32_SHIFT;
        pos.z = 0;

        Sprite_SetPosition(dialSpriteMove->sprite, &pos);
        DialSpriteMove_Finish(task, dialSpriteMove);
    }
}

static void DialSpriteMove_MirroredTask(SysTask *task, void *param)
{
    DialSpriteMove *dialSpriteMove = (DialSpriteMove *)param;
    VecFx32 pos;

    if (dialSpriteMove->delayFrames) {
        dialSpriteMove->delayFrames--;
        return;
    }

    if (dialSpriteMove->framesLeft) {
        u32 pathIndex;

        dialSpriteMove->framesLeft--;
        dialSpriteMove->pathPos += dialSpriteMove->pathStep;
        pathIndex = dialSpriteMove->pathPos >> FX32_SHIFT;
        pos.x = (256 - sDialArcPath[pathIndex].x) << FX32_SHIFT;
        pos.y = sDialArcPath[pathIndex].y << FX32_SHIFT;
        pos.z = 0;

        Sprite_SetPosition(dialSpriteMove->sprite, &pos);
    } else {
        u32 targetPathIndex = dialSpriteMove->targetPathPos >> FX32_SHIFT;

        pos.x = (256 - sDialArcPath[targetPathIndex].x) << FX32_SHIFT;
        pos.y = sDialArcPath[targetPathIndex].y << FX32_SHIFT;
        pos.z = 0;

        Sprite_SetPosition(dialSpriteMove->sprite, &pos);

        if (dialSpriteMove->hasSecondMove) {
            dialSpriteMove->framesLeft = dialSpriteMove->nextFramesLeft;
            dialSpriteMove->pathPos = dialSpriteMove->nextPathPos;
            dialSpriteMove->pathStep = dialSpriteMove->nextPathStep;
            dialSpriteMove->targetPathPos = dialSpriteMove->nextTargetPathPos;
            dialSpriteMove->delayFrames = dialSpriteMove->nextDelayFrames;
            dialSpriteMove->hasSecondMove = FALSE;
        } else {
            DialSpriteMove_Finish(task, dialSpriteMove);
        }
    }
}

static void DialSpriteMove_Finish(SysTask *task, DialSpriteMove *dialSpriteMove)
{
    DialRotateAnim *dialRotateAnim = dialSpriteMove->rotateAnim;

    GF_ASSERT(dialRotateAnim->activeMoveCount);
    dialRotateAnim->activeMoveCount--;
    SysTask_Done(task);
}

static void DialRotateAnim_StartSpriteMove(DialRotateAnim *dialRotateAnim, Sprite *sprite, DialSpriteMove *dialSpriteMove, u32 startRingPos, u32 endRingPos, u32 frames, u32 delay, BOOL isMirrored)
{
    SysTaskFunc taskFunc;

    GF_ASSERT(sprite != NULL);

    if (delay) {
        delay--;
    }

    dialSpriteMove->rotateAnim = dialRotateAnim;
    dialSpriteMove->sprite = sprite;
    dialSpriteMove->framesLeft = frames;
    dialSpriteMove->delayFrames = delay;

    taskFunc = (isMirrored) ? DialSpriteMove_MirroredTask : DialSpriteMove_Task;

    dialSpriteMove->pathPos = sDialRingPathPositions[startRingPos] << FX32_SHIFT;
    dialSpriteMove->targetPathPos = sDialRingPathPositions[endRingPos] << FX32_SHIFT;
    dialSpriteMove->pathStep = (dialSpriteMove->targetPathPos - dialSpriteMove->pathPos) / (s32)frames;
    dialSpriteMove->hasSecondMove = FALSE;

    if (BoxGraphics_StartVBlankTask(taskFunc, dialSpriteMove, 0) != NULL) {
        dialRotateAnim->activeMoveCount++;
    }
}

static void DialRotateAnim_QueueSecondMove(DialRotateAnim *unused, DialSpriteMove *dialSpriteMove, u32 delay, u32 startRingPos, u32 endRingPos)
{
    int frames;

    dialSpriteMove->hasSecondMove = TRUE;
    dialSpriteMove->nextDelayFrames = delay;

    if (delay) {
        dialSpriteMove->nextDelayFrames--;
    }

    frames = endRingPos - startRingPos;

    if (frames < 0) {
        frames *= -1;
    }

    frames *= DIAL_FRAMES_PER_STEP;

    dialSpriteMove->nextFramesLeft = frames;
    dialSpriteMove->nextPathPos = sDialRingPathPositions[startRingPos] << FX32_SHIFT;
    dialSpriteMove->nextTargetPathPos = sDialRingPathPositions[endRingPos] << FX32_SHIFT;
    dialSpriteMove->nextPathStep = (dialSpriteMove->nextTargetPathPos - dialSpriteMove->nextPathPos) / (s32)frames;
}

static void DialRotateAnim_ThumbnailsAppearTask(SysTask *unused, void *param)
{
    DialRotateAnim *dialRotateAnim = (DialRotateAnim *)param;
    BoxDialGraphics *dialGraphics = dialRotateAnim->dialGraphics;

    switch (dialRotateAnim->state) {
    case THUMBNAILS_APPEAR_STATE_LAUNCH: {
        int slot;

        dialRotateAnim->appearedCount++;
        slot = DIAL_VISIBLE_BUTTONS - dialRotateAnim->appearedCount;
        DialRotateAnim_StartSpriteMove(dialRotateAnim, dialGraphics->thumbnailSprites[slot], &dialRotateAnim->spriteMoves[slot], 0, DIAL_LAST_RING_POS - dialRotateAnim->appearedCount, (slot + 1) * DIAL_FRAMES_PER_STEP, 0, FALSE);
        dialRotateAnim->appearDelay = 6 - (1 * 2);

        if (dialRotateAnim->appearedCount >= DIAL_VISIBLE_BUTTONS) {
            dialRotateAnim->state = THUMBNAILS_APPEAR_STATE_WAIT_MOVES;
        } else {
            if (dialRotateAnim->appearDelay) {
                dialRotateAnim->state = THUMBNAILS_APPEAR_STATE_WAIT_DELAY;
            }
        }
    } break;
    case THUMBNAILS_APPEAR_STATE_WAIT_DELAY:
        dialRotateAnim->appearDelay -= (1 * 2);

        if (dialRotateAnim->appearDelay == 0) {
            dialRotateAnim->state = THUMBNAILS_APPEAR_STATE_LAUNCH;
        }
        break;
    case THUMBNAILS_APPEAR_STATE_WAIT_MOVES:
        if (dialRotateAnim->activeMoveCount == 0) {
            dialRotateAnim->state++;
            BoxGraphics_DeferFree(dialRotateAnim, DialRotateAnim_Free, dialGraphics);
        }
        break;
    }
}

static void DialRotateAnim_Free(void *param)
{
    BoxDialGraphics *dialGraphics = param;
    BoxDialGraphics_FinishAnimTask(dialGraphics);
}

static void BoxDialGraphics_StartThumbnailsAppear(BoxDialGraphics *dialGraphics)
{
    DialRotateAnim *dialRotateAnim;

    dialRotateAnim = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(DialRotateAnim));

    if (dialRotateAnim != NULL) {
        dialRotateAnim->dialGraphics = dialGraphics;
        dialRotateAnim->state = THUMBNAILS_APPEAR_STATE_LAUNCH;
        dialRotateAnim->appearedCount = 0;
        dialRotateAnim->activeMoveCount = 0;

        for (int i = 0; i < 8; i++) {
            dialRotateAnim->unused_1C0[i] = 0;
        }

        if (BoxDialGraphics_StartAnimTask(dialGraphics, DialRotateAnim_ThumbnailsAppearTask, dialRotateAnim) == NULL) {
            Heap_Free(dialRotateAnim);
        }
    }
}

static void DialRotateAnim_ThumbnailsRotateTask(SysTask *unused, void *param)
{
    DialRotateAnim *dialRotateAnim = (DialRotateAnim *)param;
    BoxDialGraphics *dialGraphics = dialRotateAnim->dialGraphics;

    switch (dialRotateAnim->state) {
    case DIAL_ROTATE_STATE_START_MOVES: {
        int i, count, slot, direction, startPos, endPos;

        if (dialGraphics->boxApp->dialHelper.scrollDelta > 0) {
            slot = dialGraphics->dialRotation + DIAL_VISIBLE_BUTTONS - 1;

            if (slot >= DIAL_THUMBNAIL_COUNT) {
                slot -= DIAL_THUMBNAIL_COUNT;
            }

            direction = -1;
            startPos = DIAL_VISIBLE_BUTTONS;
            endPos = DIAL_LAST_RING_POS;
        } else {
            slot = dialGraphics->dialRotation;
            direction = 1;
            startPos = 1;
            endPos = 0;
        }

        for (i = 0; i < dialGraphics->thumbnailsToUpdate; i++) {
            DialRotateAnim_StartSpriteMove(dialRotateAnim, dialRotateAnim->sprites[slot], &dialRotateAnim->spriteMoves[slot], startPos, endPos, (i + 1) * DIAL_FRAMES_PER_STEP, 0, FALSE);

            startPos += direction;
            slot += direction;

            if (slot >= DIAL_THUMBNAIL_COUNT) {
                slot = 0;
            } else if (slot < 0) {
                slot = DIAL_THUMBNAIL_COUNT - 1;
            }
        }

        count = (DIAL_VISIBLE_BUTTONS - dialGraphics->thumbnailsToUpdate);

        for (i = 0; i < count; i++) {
            endPos = startPos - (direction * dialGraphics->thumbnailsToUpdate);

            DialRotateAnim_StartSpriteMove(dialRotateAnim, dialRotateAnim->sprites[slot], &dialRotateAnim->spriteMoves[slot], startPos, endPos, dialGraphics->thumbnailsToUpdate * DIAL_FRAMES_PER_STEP, 0, FALSE);

            startPos += direction;
            slot += direction;

            if (slot >= DIAL_THUMBNAIL_COUNT) {
                slot = 0;
            } else if (slot < 0) {
                slot = DIAL_THUMBNAIL_COUNT - 1;
            }
        }

        if (dialGraphics->boxApp->dialHelper.scrollDelta > 0) {
            startPos = 0;
            endPos = dialGraphics->thumbnailsToUpdate;
        } else {
            startPos = DIAL_LAST_RING_POS;
            endPos = startPos - dialGraphics->thumbnailsToUpdate;
        }

        count = dialGraphics->thumbnailsToUpdate;

        for (i = 0; i < count; i++) {
            DialRotateAnim_StartSpriteMove(dialRotateAnim, dialRotateAnim->sprites[slot], &dialRotateAnim->spriteMoves[slot], startPos, endPos, (dialGraphics->thumbnailsToUpdate - i) * DIAL_FRAMES_PER_STEP, (i + 1) * DIAL_FRAMES_PER_STEP, FALSE);

            endPos += direction;
            slot += direction;

            if (slot >= DIAL_THUMBNAIL_COUNT) {
                slot -= DIAL_THUMBNAIL_COUNT;
            } else if (slot < 0) {
                slot += DIAL_THUMBNAIL_COUNT;
            }
        }

        dialRotateAnim->state++;
    } break;
    case DIAL_ROTATE_STATE_WAIT_MOVES:
        if (dialRotateAnim->activeMoveCount == 0) {
            dialRotateAnim->state++;
            BoxGraphics_DeferFree(dialRotateAnim, DialRotateAnim_Free, dialGraphics);
        }
        break;
    }
}

static void BoxDialGraphics_StartThumbnailsRotate(BoxDialGraphics *dialGraphics)
{
    DialRotateAnim *dialRotateAnim;

    dialRotateAnim = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(DialRotateAnim));

    if (dialRotateAnim != NULL) {
        dialRotateAnim->dialGraphics = dialGraphics;
        dialRotateAnim->sprites = dialGraphics->thumbnailSprites;
        dialRotateAnim->state = DIAL_ROTATE_STATE_START_MOVES;
        dialRotateAnim->appearedCount = 0;
        dialRotateAnim->activeMoveCount = 0;

        for (int i = 0; i < DIAL_THUMBNAIL_COUNT; i++) {
            dialRotateAnim->unused_1C0[i] = 0;
        }

        if (BoxDialGraphics_StartAnimTask(dialGraphics, DialRotateAnim_ThumbnailsRotateTask, dialRotateAnim) == NULL) {
            Heap_Free(dialRotateAnim);
        }
    }
}

static void DialRotateAnim_MarkingButtonsAppearTask(SysTask *unused, void *param)
{
    DialRotateAnim *dialRotateAnim = (DialRotateAnim *)param;
    BoxDialGraphics *dialGraphics = dialRotateAnim->dialGraphics;

    switch (dialRotateAnim->state) {
    case DIAL_ROTATE_STATE_START_MOVES: {
        int i, slot, endPos;

        endPos = DIAL_VISIBLE_BUTTONS;
        slot = dialGraphics->dialRotation;

        for (i = 0; i < DIAL_VISIBLE_BUTTONS; i++) {
            DialRotateAnim_StartSpriteMove(dialRotateAnim, dialGraphics->markingButtonSprites[slot], &dialRotateAnim->spriteMoves[slot], 0, endPos, DIAL_FRAMES_PER_STEP * endPos, DIAL_FRAMES_PER_STEP * i, TRUE);

            endPos--;

            if (++slot >= PC_MARKINGS_BUTTON_COUNT) {
                slot = 0;
            }
        }

        dialRotateAnim->state++;
    } break;
    case DIAL_ROTATE_STATE_WAIT_MOVES:
        if (dialRotateAnim->activeMoveCount == 0) {
            dialRotateAnim->state++;
            BoxGraphics_DeferFree(dialRotateAnim, DialRotateAnim_Free, dialGraphics);
        }
        break;
    }
}

static void BoxDialGraphics_StartMarkingButtonsAppear(BoxDialGraphics *dialGraphics)
{
    DialRotateAnim *dialRotateAnim;

    dialRotateAnim = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(DialRotateAnim));

    if (dialRotateAnim != NULL) {
        dialRotateAnim->dialGraphics = dialGraphics;
        dialRotateAnim->state = DIAL_ROTATE_STATE_START_MOVES;
        dialRotateAnim->appearedCount = 0;
        dialRotateAnim->activeMoveCount = 0;

        for (int i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
            dialRotateAnim->unused_1C0[i] = 0;
        }

        if (BoxDialGraphics_StartAnimTask(dialGraphics, DialRotateAnim_MarkingButtonsAppearTask, dialRotateAnim) == NULL) {
            Heap_Free(dialRotateAnim);
        }
    }
}

static void DialRotateAnim_MarkingButtonsRotateTask(SysTask *unused, void *param)
{
    DialRotateAnim *dialRotateAnim = (DialRotateAnim *)param;
    BoxDialGraphics *dialGraphics = dialRotateAnim->dialGraphics;

    switch (dialRotateAnim->state) {
    case DIAL_ROTATE_STATE_START_MOVES: {
        int slot, scrollDelta, direction, i, startPos, endPos, queueEnd, steps, delay;

        scrollDelta = BoxApp_GetDialScrollDelta(dialGraphics->boxApp);
        slot = dialGraphics->dialRotation;

        if (scrollDelta < 0) {
            slot += DIAL_VISIBLE_BUTTONS - 1;

            if (slot >= PC_MARKINGS_BUTTON_COUNT) {
                slot -= PC_MARKINGS_BUTTON_COUNT;
            }

            direction = -1;
            steps = -scrollDelta;
            startPos = 1;
            endPos = 0;
        } else {
            direction = 1;
            steps = scrollDelta;
            startPos = DIAL_LAST_RING_POS - 1;
            endPos = DIAL_LAST_RING_POS;
        }

        queueEnd = DIAL_VISIBLE_BUTTONS + steps;

        for (i = 0; i < steps; i++) {
            DialRotateAnim_StartSpriteMove(dialRotateAnim, dialGraphics->markingButtonSprites[slot], &dialRotateAnim->spriteMoves[slot], startPos, endPos, DIAL_FRAMES_PER_STEP * (i + 1), 0, TRUE);

            startPos -= direction;
            slot += direction;

            if (slot < 0) {
                slot += PC_MARKINGS_BUTTON_COUNT;
            } else if (slot >= PC_MARKINGS_BUTTON_COUNT) {
                slot -= PC_MARKINGS_BUTTON_COUNT;
            }
        }

        delay = 0;

        for (; i < PC_MARKINGS_BUTTON_COUNT; i++) {
            endPos -= direction;

            DialRotateAnim_StartSpriteMove(dialRotateAnim, dialGraphics->markingButtonSprites[slot], &dialRotateAnim->spriteMoves[slot], startPos, endPos, DIAL_FRAMES_PER_STEP * steps, delay, TRUE);

            if (startPos != 0 && startPos != DIAL_LAST_RING_POS) {
                startPos -= direction;
            } else {
                delay += DIAL_FRAMES_PER_STEP;
            }

            slot += direction;

            if (slot < 0) {
                slot += PC_MARKINGS_BUTTON_COUNT;
            } else if (slot >= PC_MARKINGS_BUTTON_COUNT) {
                slot -= PC_MARKINGS_BUTTON_COUNT;
            }
        }

        if (scrollDelta < 0) {
            startPos = DIAL_LAST_RING_POS;
            endPos = startPos - (steps - 2);
        } else {
            startPos = 0;
            endPos = startPos + (steps - 2);
        }

        for (; i < queueEnd; i++) {
            DialRotateAnim_QueueSecondMove(dialRotateAnim, &dialRotateAnim->spriteMoves[slot], DIAL_FRAMES_PER_STEP, startPos, endPos);

            endPos -= direction;
            slot += direction;

            if (slot < 0) {
                slot += PC_MARKINGS_BUTTON_COUNT;
            } else if (slot >= PC_MARKINGS_BUTTON_COUNT) {
                slot -= PC_MARKINGS_BUTTON_COUNT;
            }
        }

        dialRotateAnim->state++;
    } break;
    case DIAL_ROTATE_STATE_WAIT_MOVES:
        if (dialRotateAnim->activeMoveCount == 0) {
            dialRotateAnim->state++;
            BoxGraphics_DeferFree(dialRotateAnim, DialRotateAnim_Free, dialGraphics);
        }
        break;
    }
}

static void BoxDialGraphics_StartMarkingButtonsRotate(BoxDialGraphics *dialGraphics)
{
    DialRotateAnim *dialRotateAnim;

    dialRotateAnim = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(DialRotateAnim));

    if (dialRotateAnim != NULL) {
        dialRotateAnim->dialGraphics = dialGraphics;
        dialRotateAnim->state = DIAL_ROTATE_STATE_START_MOVES;
        dialRotateAnim->appearedCount = 0;
        dialRotateAnim->activeMoveCount = 0;

        for (int i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
            dialRotateAnim->unused_1C0[i] = 0;
        }

        if (BoxDialGraphics_StartAnimTask(dialGraphics, DialRotateAnim_MarkingButtonsRotateTask, dialRotateAnim) == NULL) {
            Heap_Free(dialRotateAnim);
        }
    }
}

void BoxDialGraphics_UpdateMarkingButtons(BoxDialGraphics *dialGraphics)
{
    if (dialGraphics != NULL) {
        if (dialGraphics->markingButtonSprites[0] != NULL) {
            u32 mask = BoxApp_GetMonSpriteTransparencyMask(dialGraphics->boxApp);

            for (int i = 0; i < PC_MARKINGS_BUTTON_COUNT; i++) {
                Sprite_SetAnim(dialGraphics->markingButtonSprites[i], GetMarkingButtonAnimID(i, mask));
            }
        }
    }
}

static void BoxDialGraphics_HideBoxNames(BoxDialGraphics *unused)
{
    Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
}

static void BoxDialGraphics_ShowBoxNames(BoxDialGraphics *unused)
{
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_ALL, 14, 2);
    Bg_ToggleLayer(BG_LAYER_SUB_0, TRUE);
}

static void BoxDialGraphics_DrawBoxNames(BoxDialGraphics *dialGraphics)
{
    static const struct {
        s16 x;
        s16 y;
    } boxNamePositions[] = {
        { 36, 4 },
        { 36, 36 },
        { 50, 69 },
        { 92, 92 },
        { 114, 124 },
        { 124, 156 },
    };
    int i, boxID;

    boxID = BoxApp_GetDialOffset(dialGraphics->boxApp) + 3;

    if (boxID >= MAX_PC_BOXES) {
        boxID -= MAX_PC_BOXES;
    }

    for (i = 0; i < NELEMS(boxNamePositions); i++) {
        PCBoxes_BufferBoxName(dialGraphics->boxApp->pcBoxes, boxID, dialGraphics->string);
        Window_FillRectWithColor(&dialGraphics->window, 0, boxNamePositions[i].x, boxNamePositions[i].y, 104, 17);
        Text_AddPrinterWithParamsAndColor(&dialGraphics->window, FONT_SYSTEM, dialGraphics->string, boxNamePositions[i].x + 4, boxNamePositions[i].y + 2, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_DIAL_BOX_NAME, NULL);

        if (--boxID < 0) {
            boxID = MAX_PC_BOXES - 1;
        }
    }

    Window_LoadTiles(&dialGraphics->window);
    BoxDialGraphics_ShowBoxNames(dialGraphics);
}
