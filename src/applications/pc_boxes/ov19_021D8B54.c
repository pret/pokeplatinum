#include "applications/pc_boxes/ov19_021D8B54.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/ov19_021D79F8.h"
#include "applications/pc_boxes/ov19_021DA270.h"
#include "applications/pc_boxes/ov19_021DC5F0.h"
#include "applications/pc_boxes/ov19_021DE3E8.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8E00.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "pc_boxes.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define CURSOR_WRAP_RIGHT_X  272
#define CURSOR_WRAP_LEFT_X   70
#define CURSOR_WRAP_BOTTOM_Y 208
#define CURSOR_WRAP_TOP_Y    -24

#define CURSOR_MOVE_WRAP_STEPS   12
#define CURSOR_MOVE_NORMAL_STEPS 6

typedef struct {
    Sprite *sprite;
    u16 ticksRemaining;
    u16 midpointTick;
    u32 priority;
    fx32 currentY;
    fx32 destY;
    fx32 startX;
    fx32 angle;
    fx32 stepY;
    fx32 angleStep;
    fx32 arcAmplitude;
    BoxCursorGraphics *bcGraphics;
} SpriteArcMove;

static void BoxCursorGraphics_ShowHeldMonIcon(BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_CheckWraparound(const BoxCursorGraphics *bcGraphics, BOOL *wrapX, BOOL *wrapY);
static void BoxCursorGraphics_MoveTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_PickUpAnimationTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_PlaceDownAnimationTask(SysTask *param0, void *param1);
static void SpriteArcMove_Start(BoxCursorGraphics *bcGraphics, Sprite *sprite, fx32 destY, s32 direction, u32 priority);
static BOOL BoxCursorGraphics_IsAnimationDone(BoxCursorGraphics *param0);
static void BoxCursorGraphics_ClearAnimatingFlag(void *param0);
static void SpriteArcMove_Task(SysTask *param0, void *param1);
static void BoxCursorGraphics_ButtonPressAnimationTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_ReturnToRestAnimationTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_TakeItemAnimationTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_GiveItemAnimationTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_SwitchItemAnimationTask(SysTask *param0, void *param1);
static void BoxCursorGraphics_GetTargetPosition(s32 *targetX, s32 *targetY, u8 *cursorLocation, BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_SetPosition(BoxCursorGraphics *param0, VecFx32 *param1);
static void BoxCursorGraphics_LoadHeldMonIcons(BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_FinishPickUpMonIcons(BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_RestorePlacedMonIcons(BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_FinishShiftMonIcons(BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_ClearHeldMonIconFlag(BoxCursorGraphics *bcGraphics);
static void BoxCursorGraphics_ClearHeldMonIcons(BoxCursorGraphics *bcGraphics);
static Sprite *BoxCursorGraphics_GetSpriteUnderCursor(BoxCursorGraphics *bcGraphics);

BOOL BoxCursorGraphics_Init(BoxCursorGraphics *bcGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc)
{
    bcGraphics->boxGraphics = boxGraphics;
    bcGraphics->boxApp = boxApp;
    bcGraphics->spriteList = spriteList;
    bcGraphics->box = BoxGraphics_GetBoxView(boxGraphics);
    bcGraphics->party = BoxGraphics_GetPartyGraphics(boxGraphics);
    bcGraphics->monIconHelper = BoxGraphics_GetMonIconHelper(boxGraphics);
    bcGraphics->cursorLocation = BoxApp_GetCursorLocation(boxApp);
    bcGraphics->boxCol = BoxApp_GetCursorBoxCol(boxApp);
    bcGraphics->boxRow = BoxApp_GetCursorBoxRow(boxApp);
    bcGraphics->partyPosition = BoxApp_GetCursorPartyPosition(boxApp);
    bcGraphics->cursorSprite = NULL;
    bcGraphics->shadowSprite = NULL;
    bcGraphics->leftArrowSprite = NULL;
    bcGraphics->rightArrowSprite = NULL;
    bcGraphics->heldIconCount = 0;
    bcGraphics->shadowFollowsCursor = 1;
    bcGraphics->cellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 13, TRUE, &bcGraphics->cellBank, HEAP_ID_BOX_GRAPHICS);
    bcGraphics->animBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 14, TRUE, &bcGraphics->animBank, HEAP_ID_BOX_GRAPHICS);

    if ((bcGraphics->cellBankBuffer == NULL) || (bcGraphics->animBankBuffer == NULL)) {
        return FALSE;
    }

    return TRUE;
}

void BoxCursorGraphics_Load(BoxCursorGraphics *bcGraphics, NARC *narc)
{
    SpriteResourcesHeader srHeader;
    u32 cursorLocation, pcMode;
    int leftX, rightX;

    NNS_G2dInitImageProxy(&(bcGraphics->imageProxy));

    Graphics_LoadImageMappingFromOpenNARC(narc, 12, TRUE, IMAGE_MAPPING_LAYOUT_1D, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, HEAP_ID_BOX_GRAPHICS, &bcGraphics->imageProxy);
    SpriteResourcesHeader_InitFromProxies(&srHeader, &(bcGraphics->imageProxy), BoxGraphics_GetImagePaletteProxy(bcGraphics->boxGraphics), bcGraphics->cellBank, bcGraphics->animBank, ((bcGraphics->cursorLocation == CURSOR_IN_PARTY) ? 1 : 2));
    BoxCursorGraphics_GetTargetPosition(&bcGraphics->posX, &bcGraphics->posY, &bcGraphics->cursorLocation, bcGraphics);

    bcGraphics->cursorSprite = BoxGraphics_CreateSprite(bcGraphics->spriteList, &srHeader, bcGraphics->posX, bcGraphics->posY, 1, NNS_G2D_VRAM_TYPE_2DMAIN);
    bcGraphics->shadowSprite = BoxGraphics_CreateSprite(bcGraphics->spriteList, &srHeader, bcGraphics->posX, bcGraphics->posY + CURSOR_SHADOW_OFFSET_Y, 42, NNS_G2D_VRAM_TYPE_2DMAIN);

    cursorLocation = BoxApp_GetCursorLocation(bcGraphics->boxApp);
    pcMode = BoxApp_GetBoxMode(bcGraphics->boxApp);

    if (pcMode != PC_MODE_COMPARE) {
        leftX = CURSOR_LEFT_ARROW_X;
        rightX = CURSOR_RIGHT_ARROW_X;
    } else {
        leftX = CURSOR_LEFT_ARROW_X + BOX_GRAPHICS_COMPARE_MODE_X_OFFSET;
        rightX = CURSOR_RIGHT_ARROW_X + BOX_GRAPHICS_COMPARE_MODE_X_OFFSET;
    }

    srHeader.priority = 2;
    bcGraphics->leftArrowSprite = BoxGraphics_CreateSprite(bcGraphics->spriteList, &srHeader, leftX, CURSOR_ARROW_Y, 43, NNS_G2D_VRAM_TYPE_2DMAIN);
    bcGraphics->rightArrowSprite = BoxGraphics_CreateSprite(bcGraphics->spriteList, &srHeader, rightX, CURSOR_ARROW_Y, 43, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnim(bcGraphics->shadowSprite, 5);
    Sprite_SetExplicitPriority(bcGraphics->shadowSprite, 2);

    cursorLocation = BoxApp_GetCursorLocation(bcGraphics->boxApp);

    if (cursorLocation != CURSOR_ON_BOX_HEADER) {
        Sprite_SetAnim(bcGraphics->leftArrowSprite, 6);
        Sprite_SetAnim(bcGraphics->rightArrowSprite, 7);
    } else {
        Sprite_SetAnim(bcGraphics->leftArrowSprite, 8);
        Sprite_SetAnim(bcGraphics->rightArrowSprite, 9);
    }

    if (cursorLocation != CURSOR_IN_BOX) {
        Sprite_SetDrawFlag(bcGraphics->shadowSprite, FALSE);
    }

    if (pcMode != PC_MODE_MOVE_ITEMS) {
        if (BoxApp_GetPreviewMonSource(bcGraphics->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
            Sprite_SetAnim(bcGraphics->cursorSprite, 0);
            MonIconHelper_InitIcons(bcGraphics->monIconHelper, bcGraphics->monIcon, (5 * 6));
            bcGraphics->hasHeldMonIcon = FALSE;
        } else {
            Sprite_SetAnim(bcGraphics->cursorSprite, 2);
            BoxCursorGraphics_ShowHeldMonIcon(bcGraphics);
            bcGraphics->hasHeldMonIcon = TRUE;
        }

        bcGraphics->isHoldingItem = 0;
    } else {
        if (BoxApp_GetCursorItem(bcGraphics->boxApp) == ITEM_NONE) {
            Sprite_SetAnim(bcGraphics->cursorSprite, 0);
            bcGraphics->isHoldingItem = 0;
        } else {
            Sprite_SetAnim(bcGraphics->cursorSprite, 2);
            bcGraphics->isHoldingItem = 1;
        }

        MonIconHelper_InitIcons(bcGraphics->monIconHelper, bcGraphics->monIcon, (5 * 6));
        bcGraphics->hasHeldMonIcon = FALSE;
    }

    bcGraphics->itemIconGraphics = BoxGraphics_GetItemIconGraphics(bcGraphics->boxGraphics);

    BoxCursorGraphics_UpdateFastModePalette(bcGraphics);
}

static void BoxCursorGraphics_ShowHeldMonIcon(BoxCursorGraphics *bcGraphics)
{
    VecFx32 cursorPos;
    s32 iconX, iconY;

    cursorPos = *Sprite_GetPosition(bcGraphics->cursorSprite);
    iconX = (cursorPos.x >> FX32_SHIFT) - CURSOR_HELD_ICON_OFFSET_X;
    iconY = (cursorPos.y >> FX32_SHIFT) - CURSOR_HELD_ICON_OFFSET_Y;

    MonIconHelper_InitIcons(bcGraphics->monIconHelper, bcGraphics->monIcon, 1);
    MonIconHelper_CreateIcon(bcGraphics->monIconHelper, BoxApp_GetPreviewedBoxMon(bcGraphics->boxApp), iconX, iconY, Sprite_GetExplicitPriority(bcGraphics->cursorSprite), 2, CURSOR_ICON_TILE_BASE, bcGraphics->monIcon);

    bcGraphics->heldIconOffsets[0].x = CURSOR_HELD_ICON_OFFSET_X * FX32_ONE;
    bcGraphics->heldIconOffsets[0].y = CURSOR_HELD_ICON_OFFSET_Y * FX32_ONE;
    bcGraphics->heldIconCount = 1;
    bcGraphics->hasHeldMonIcon = TRUE;
}

void BoxCursorGraphics_Free(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->cellBankBuffer) {
        Heap_Free(bcGraphics->cellBankBuffer);
        bcGraphics->cellBankBuffer = NULL;
    }

    if (bcGraphics->animBankBuffer) {
        Heap_Free(bcGraphics->animBankBuffer);
        bcGraphics->animBankBuffer = NULL;
    }

    if (bcGraphics->cursorSprite != NULL) {
        Sprite_Delete(bcGraphics->cursorSprite);
        bcGraphics->cursorSprite = NULL;
    }

    if (bcGraphics->shadowSprite != NULL) {
        Sprite_Delete(bcGraphics->shadowSprite);
        bcGraphics->shadowSprite = NULL;
    }

    if (bcGraphics->leftArrowSprite != NULL) {
        Sprite_Delete(bcGraphics->leftArrowSprite);
        bcGraphics->leftArrowSprite = NULL;
    }

    if (bcGraphics->rightArrowSprite != NULL) {
        Sprite_Delete(bcGraphics->rightArrowSprite);
        bcGraphics->rightArrowSprite = NULL;
    }
}

static void BoxCursorGraphics_CheckWraparound(const BoxCursorGraphics *bcGraphics, BOOL *wrapX, BOOL *wrapY)
{
    *wrapX = *wrapY = FALSE;

    switch (bcGraphics->cursorLocation) {
    case CURSOR_IN_BOX:
        if (bcGraphics->newCursorLocation == CURSOR_IN_BOX) {
            u32 col = BoxApp_GetCursorBoxCol(bcGraphics->boxApp);

            if ((bcGraphics->boxCol == 0) && (col == MAX_PC_COLS - 1) || (bcGraphics->boxCol == MAX_PC_COLS - 1) && (col == 0)) {
                *wrapX = TRUE;
            }
        }
        break;
    case CURSOR_ON_BOX_HEADER:
        if ((bcGraphics->newCursorLocation == CURSOR_ON_CLOSE_BUTTON) || (bcGraphics->newCursorLocation == CURSOR_ON_PARTY_BUTTON)) {
            *wrapY = TRUE;
        }
        break;
    case CURSOR_ON_CLOSE_BUTTON:
    case CURSOR_ON_PARTY_BUTTON:
        if (bcGraphics->newCursorLocation == CURSOR_ON_BOX_HEADER) {
            *wrapY = TRUE;
        }
        break;
    }
}

void BoxCursorGraphics_StartMove(BoxCursorGraphics *bcGraphics)
{
    BOOL wrapX, wrapY;
    s32 newX, newY;
    s32 deltaX, deltaY;
    s32 numSteps;

    BoxCursorGraphics_GetTargetPosition(&(bcGraphics->targetX), &(bcGraphics->targetY), &(bcGraphics->newCursorLocation), bcGraphics);
    BoxCursorGraphics_CheckWraparound(bcGraphics, &wrapX, &wrapY);

    if (bcGraphics->newCursorLocation != CURSOR_IN_BOX) {
        Sprite_SetDrawFlag(bcGraphics->shadowSprite, FALSE);
    }

    bcGraphics->animX = bcGraphics->posX << FX32_SHIFT;
    bcGraphics->animY = bcGraphics->posY << FX32_SHIFT;

    newX = bcGraphics->targetX << FX32_SHIFT;
    newY = bcGraphics->targetY << FX32_SHIFT;

    if (wrapX == 0) {
        deltaX = newX - bcGraphics->animX;
    } else {
        if (newX > bcGraphics->animX) {
            deltaX = -((CURSOR_WRAP_RIGHT_X - bcGraphics->targetX) + (bcGraphics->posX - CURSOR_WRAP_LEFT_X));
        } else {
            deltaX = (CURSOR_WRAP_RIGHT_X - bcGraphics->posX) + (bcGraphics->targetX - CURSOR_WRAP_LEFT_X);
        }

        deltaX <<= FX32_SHIFT;
    }

    if (wrapY == 0) {
        deltaY = newY - bcGraphics->animY;
    } else {
        if (newY > bcGraphics->animY) {
            deltaY = -((CURSOR_WRAP_BOTTOM_Y - bcGraphics->targetY) + (bcGraphics->posY - CURSOR_WRAP_TOP_Y));
        } else {
            deltaY = (CURSOR_WRAP_BOTTOM_Y - bcGraphics->posY) + (bcGraphics->targetY - CURSOR_WRAP_TOP_Y);
        }

        deltaY <<= FX32_SHIFT;
    }

    if (wrapX || wrapY) {
        numSteps = CURSOR_MOVE_WRAP_STEPS;
    } else {
        numSteps = CURSOR_MOVE_NORMAL_STEPS;
    }

    bcGraphics->stepX = deltaX / numSteps;
    bcGraphics->stepY = deltaY / numSteps;
    bcGraphics->moveStepsRemaining = numSteps;

    BoxGraphics_StartVBlankTask(BoxCursorGraphics_MoveTask, bcGraphics, 0);
}

BOOL BoxCursorGraphics_IsMoveDone(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->moveStepsRemaining == 0;
}

static void BoxCursorGraphics_MoveTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = (BoxCursorGraphics *)param;
    VecFx32 pos;

    pos.z = 0;

    if (bcGraphics->moveStepsRemaining) {
        bcGraphics->animX += bcGraphics->stepX;

        if ((bcGraphics->stepX > 0) && (bcGraphics->animX > (CURSOR_WRAP_RIGHT_X << FX32_SHIFT))) {
            bcGraphics->animX = (CURSOR_WRAP_LEFT_X << FX32_SHIFT) + ((CURSOR_WRAP_RIGHT_X << FX32_SHIFT) - bcGraphics->animX);
        }

        if ((bcGraphics->stepX < 0) && (bcGraphics->animX < (CURSOR_WRAP_LEFT_X << FX32_SHIFT))) {
            bcGraphics->animX = (CURSOR_WRAP_RIGHT_X << FX32_SHIFT) - ((CURSOR_WRAP_LEFT_X << FX32_SHIFT) - bcGraphics->animX);
        }

        bcGraphics->animY += bcGraphics->stepY;

        if ((bcGraphics->stepY > 0) && (bcGraphics->animY > (CURSOR_WRAP_BOTTOM_Y << FX32_SHIFT))) {
            bcGraphics->animY = (CURSOR_WRAP_TOP_Y << FX32_SHIFT) + ((CURSOR_WRAP_BOTTOM_Y << FX32_SHIFT) - bcGraphics->animY);
        }

        if ((bcGraphics->stepY < 0) && (bcGraphics->animY < (CURSOR_WRAP_TOP_Y << FX32_SHIFT))) {
            bcGraphics->animY = (CURSOR_WRAP_BOTTOM_Y << FX32_SHIFT) - ((CURSOR_WRAP_TOP_Y << FX32_SHIFT) - bcGraphics->animY);
        }

        pos.x = bcGraphics->animX;
        pos.y = bcGraphics->animY;
        pos.z = 0;

        BoxCursorGraphics_SetPosition(bcGraphics, &pos);

        bcGraphics->moveStepsRemaining--;
        return;
    }

    pos.x = bcGraphics->targetX << FX32_SHIFT;
    pos.y = bcGraphics->targetY << FX32_SHIFT;
    pos.z = 0;

    BoxCursorGraphics_SetPosition(bcGraphics, &pos);

    bcGraphics->posX = bcGraphics->targetX;
    bcGraphics->posY = bcGraphics->targetY;
    bcGraphics->cursorLocation = bcGraphics->newCursorLocation;
    bcGraphics->boxCol = BoxApp_GetCursorBoxCol(bcGraphics->boxApp);
    bcGraphics->boxRow = BoxApp_GetCursorBoxRow(bcGraphics->boxApp);
    bcGraphics->partyPosition = BoxApp_GetCursorPartyPosition(bcGraphics->boxApp);

    if (bcGraphics->newCursorLocation == CURSOR_IN_BOX) {
        Sprite_SetDrawFlag(bcGraphics->shadowSprite, TRUE);
    }

    if (bcGraphics->newCursorLocation != CURSOR_ON_BOX_HEADER) {
        Sprite_SetAnim(bcGraphics->leftArrowSprite, 6);
        Sprite_SetAnim(bcGraphics->rightArrowSprite, 7);
    } else {
        Sprite_SetAnim(bcGraphics->leftArrowSprite, 8);
        Sprite_SetAnim(bcGraphics->rightArrowSprite, 9);
    }

    SysTask_Done(task);
}

enum PickUpAnimationPhase {
    PICK_UP_ANIM_DIP_DOWN = 0,
    PICK_UP_ANIM_LIFT_UP
};

void BoxCursorGraphics_StartPickUpAnimation(BoxCursorGraphics *bcGraphics)
{
    Sprite_SetAnim(bcGraphics->cursorSprite, 1);

    bcGraphics->stepY = (12 << FX32_SHIFT) / 6;
    bcGraphics->targetY = (bcGraphics->posY + 12);
    bcGraphics->moveStepsRemaining = 6;
    bcGraphics->animPhase = PICK_UP_ANIM_DIP_DOWN;

    BoxCursorGraphics_LoadHeldMonIcons(bcGraphics);
    BoxGraphics_StartVBlankTask(BoxCursorGraphics_PickUpAnimationTask, bcGraphics, 0);
}

BOOL BoxCursorGraphics_IsPickUpAnimationDone(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->animPhase == 255;
}

static void BoxCursorGraphics_PickUpAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = (BoxCursorGraphics *)param;
    VecFx32 pos = *(Sprite_GetPosition(bcGraphics->cursorSprite));

    switch (bcGraphics->animPhase) {
    case PICK_UP_ANIM_DIP_DOWN:
        bcGraphics->shadowFollowsCursor = 0;

        if (bcGraphics->moveStepsRemaining) {
            pos.y += bcGraphics->stepY;
            BoxCursorGraphics_SetPosition(bcGraphics, &pos);
            bcGraphics->moveStepsRemaining--;
            break;
        }

        pos.y = bcGraphics->targetY << FX32_SHIFT;

        BoxCursorGraphics_SetPosition(bcGraphics, &pos);
        Sprite_SetAnim(bcGraphics->cursorSprite, 2);
        BoxCursorGraphics_FinishPickUpMonIcons(bcGraphics);

        bcGraphics->moveStepsRemaining = 6;
        bcGraphics->animPhase++;
    case PICK_UP_ANIM_LIFT_UP:
        if (bcGraphics->moveStepsRemaining) {
            pos.y -= bcGraphics->stepY;
            BoxCursorGraphics_SetPosition(bcGraphics, &pos);
            bcGraphics->moveStepsRemaining--;
            break;
        }

        pos.y = bcGraphics->posY << FX32_SHIFT;
        BoxCursorGraphics_SetPosition(bcGraphics, &pos);
        bcGraphics->animPhase = 255;
        bcGraphics->shadowFollowsCursor = 1;
        SysTask_Done(task);
    }
}

enum PlaceDownAnimationPhase {
    PLACE_DOWN_ANIM_DIP_DOWN = 0,
    PLACE_DOWN_ANIM_LIFT_UP
};

void BoxCursorGraphics_StartPlaceDownAnimation(BoxCursorGraphics *bcGraphics)
{
    bcGraphics->stepY = (12 << FX32_SHIFT) / 6;
    bcGraphics->targetY = (bcGraphics->posY + 12);
    bcGraphics->moveStepsRemaining = 6;
    bcGraphics->animPhase = PLACE_DOWN_ANIM_DIP_DOWN;

    BoxGraphics_StartVBlankTask(BoxCursorGraphics_PlaceDownAnimationTask, bcGraphics, 0);
}

BOOL BoxCursorGraphics_IsPlaceDownAnimationDone(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->animPhase == 255) {
        BoxCursorGraphics_RestorePlacedMonIcons(bcGraphics);
        MonIconHelper_InitIcons(bcGraphics->monIconHelper, bcGraphics->monIcon, bcGraphics->heldIconCount);
        bcGraphics->heldIconCount = 0;
        return TRUE;
    }

    return FALSE;
}

static void BoxCursorGraphics_PlaceDownAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = (BoxCursorGraphics *)param;
    VecFx32 pos = *(Sprite_GetPosition(bcGraphics->cursorSprite));

    switch (bcGraphics->animPhase) {
    case PLACE_DOWN_ANIM_DIP_DOWN:
        bcGraphics->shadowFollowsCursor = 0;

        if (bcGraphics->moveStepsRemaining) {
            pos.y += bcGraphics->stepY;
            BoxCursorGraphics_SetPosition(bcGraphics, &pos);
            bcGraphics->moveStepsRemaining--;
            break;
        }

        pos.y = bcGraphics->targetY << FX32_SHIFT;

        BoxCursorGraphics_SetPosition(bcGraphics, &pos);
        Sprite_SetAnim(bcGraphics->cursorSprite, 1);
        BoxCursorGraphics_ClearHeldMonIconFlag(bcGraphics);

        bcGraphics->moveStepsRemaining = 6;
        bcGraphics->animPhase++;
    case PLACE_DOWN_ANIM_LIFT_UP:
        if (bcGraphics->moveStepsRemaining) {
            pos.y -= bcGraphics->stepY;
            BoxCursorGraphics_SetPosition(bcGraphics, &pos);
            bcGraphics->moveStepsRemaining--;
            break;
        }

        pos.y = bcGraphics->posY << FX32_SHIFT;

        BoxCursorGraphics_SetPosition(bcGraphics, &pos);
        Sprite_SetAnim(bcGraphics->cursorSprite, 0);

        bcGraphics->animPhase = 255;
        bcGraphics->shadowFollowsCursor = 1;

        SysTask_Done(task);
    }
}

void BoxCursorGraphics_StartShiftAnimation(BoxCursorGraphics *bcGraphics)
{
    VecFx32 pos;
    Sprite *sprite;

    Sprite_SetAnim(bcGraphics->cursorSprite, 1);

    bcGraphics->isAnimating = FALSE;

    sprite = BoxCursorGraphics_GetSpriteUnderCursor(bcGraphics);
    pos = *(Sprite_GetPosition(sprite));
    SpriteArcMove_Start(bcGraphics, bcGraphics->monIcon->sprite, pos.y, 1, Sprite_GetPriority(sprite));

    pos = *(Sprite_GetPosition(bcGraphics->monIcon->sprite));
    SpriteArcMove_Start(bcGraphics, sprite, pos.y, -1, Sprite_GetPriority(bcGraphics->monIcon->sprite));

    bcGraphics->animPhase = 0;
}

BOOL BoxCursorGraphics_IsShiftAnimationDone(BoxCursorGraphics *bcGraphics)
{
    if (BoxCursorGraphics_IsAnimationDone(bcGraphics)) {
        Sprite_SetAnim(bcGraphics->cursorSprite, 2);
        BoxCursorGraphics_FinishShiftMonIcons(bcGraphics);
        return TRUE;
    }

    return FALSE;
}

static void SpriteArcMove_Start(BoxCursorGraphics *bcGraphics, Sprite *sprite, fx32 destY, s32 direction, u32 priority)
{
    SpriteArcMove *saMove = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(SpriteArcMove));

    if (saMove) {
        VecFx32 pos;

        pos = *Sprite_GetPosition(sprite);

        saMove->sprite = sprite;
        saMove->ticksRemaining = 12;
        saMove->midpointTick = 12 / 2;
        saMove->priority = priority;
        saMove->currentY = pos.y;
        saMove->startX = pos.x;
        saMove->destY = destY;
        saMove->angle = 0;
        saMove->arcAmplitude = direction * 12;
        saMove->stepY = (saMove->destY - saMove->currentY) / 12;
        saMove->angleStep = (180 << FX32_SHIFT) / 12;
        saMove->bcGraphics = bcGraphics;

        if (BoxGraphics_StartVBlankTask(SpriteArcMove_Task, saMove, 0)) {
            bcGraphics->isAnimating = TRUE;
            return;
        } else {
            Heap_Free(saMove);
        }
    }
}

static BOOL BoxCursorGraphics_IsAnimationDone(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->isAnimating == FALSE;
}

static void BoxCursorGraphics_ClearAnimatingFlag(void *param)
{
    BoxCursorGraphics *bcGraphics = param;
    bcGraphics->isAnimating = FALSE;
}

static void SpriteArcMove_Task(SysTask *task, void *param)
{
    SpriteArcMove *saMove = (SpriteArcMove *)param;
    VecFx32 pos;

    pos = *Sprite_GetPosition(saMove->sprite);

    if (saMove->ticksRemaining) {
        fx32 delta;

        saMove->ticksRemaining--;

        if (saMove->ticksRemaining == saMove->midpointTick) {
            BoxGraphics_SetSpritePriority(saMove->sprite, saMove->priority);
        }

        saMove->currentY += saMove->stepY;
        pos.y = saMove->currentY;
        saMove->angle += saMove->angleStep;
        delta = saMove->arcAmplitude * CalcSineDegrees(saMove->angle >> FX32_SHIFT);
        pos.x = saMove->startX + delta;

        Sprite_SetPosition(saMove->sprite, &pos);
    } else {
        pos.x = saMove->startX;
        pos.y = saMove->destY;

        Sprite_SetPosition(saMove->sprite, &pos);
        BoxGraphics_DeferFree(param, BoxCursorGraphics_ClearAnimatingFlag, saMove->bcGraphics);
        SysTask_Done(task);
    }
}

enum ButtonPressAnimationPhase {
    BUTTON_PRESS_ANIM_WAIT = 0,
    BUTTON_PRESS_ANIM_SETTLE
};

void BoxCursorGraphics_StartButtonPressAnimation(BoxCursorGraphics *bcGraphics)
{
    VecFx32 pos;

    if ((bcGraphics->hasHeldMonIcon == FALSE) && (bcGraphics->isHoldingItem == FALSE)) {
        Sprite_SetAnim(bcGraphics->cursorSprite, 3);
    }

    pos = *Sprite_GetPosition(bcGraphics->cursorSprite);
    pos.y += (-2 * FX32_ONE);

    BoxCursorGraphics_SetPosition(bcGraphics, &pos);

    bcGraphics->animPhase = BUTTON_PRESS_ANIM_WAIT;
    bcGraphics->moveStepsRemaining = 0;

    if (BoxGraphics_StartVBlankTask(BoxCursorGraphics_ButtonPressAnimationTask, bcGraphics, 0)) {
        bcGraphics->isAnimating = TRUE;
    }
}

BOOL BoxCursorGraphics_IsAnimationDone2(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->isAnimating == FALSE;
}

static void BoxCursorGraphics_ButtonPressAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = (BoxCursorGraphics *)param;

    switch (bcGraphics->animPhase) {
    case BUTTON_PRESS_ANIM_WAIT:
        if (++(bcGraphics->moveStepsRemaining) >= 4) {
            VecFx32 pos = *Sprite_GetPosition(bcGraphics->cursorSprite);

            bcGraphics->targetY = (pos.y >> FX32_SHIFT) + 6;
            bcGraphics->stepY = (6 * FX32_ONE) / 2;
            bcGraphics->moveStepsRemaining = 2;

            if ((bcGraphics->hasHeldMonIcon == FALSE) && (bcGraphics->isHoldingItem == FALSE)) {
                Sprite_SetAnim(bcGraphics->cursorSprite, 4);
            }

            bcGraphics->animPhase++;
        }
        break;
    case BUTTON_PRESS_ANIM_SETTLE: {
        VecFx32 pos = *Sprite_GetPosition(bcGraphics->cursorSprite);

        if (bcGraphics->moveStepsRemaining) {
            pos.y += bcGraphics->stepY;
            BoxCursorGraphics_SetPosition(bcGraphics, &pos);
            bcGraphics->moveStepsRemaining--;
        } else {
            pos.y = bcGraphics->targetY << FX32_SHIFT;
            BoxCursorGraphics_SetPosition(bcGraphics, &pos);
            bcGraphics->isAnimating = FALSE;
            SysTask_Done(task);
        }
    } break;
    }
}

void BoxCursorGraphics_StartReturnToRestAnimation(BoxCursorGraphics *bcGraphics)
{
    VecFx32 pos = *Sprite_GetPosition(bcGraphics->cursorSprite);

    bcGraphics->targetY = (pos.y >> FX32_SHIFT) + -4;
    bcGraphics->stepY = (-4 * FX32_ONE) / 4;
    bcGraphics->moveStepsRemaining = 4;
    bcGraphics->animPhase = 0;

    if (BoxGraphics_StartVBlankTask(BoxCursorGraphics_ReturnToRestAnimationTask, bcGraphics, 0)) {
        bcGraphics->isAnimating = TRUE;
    }
}

BOOL BoxCursorGraphics_IsReturnToRestAnimationDone(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->isAnimating == FALSE) {
        if ((bcGraphics->hasHeldMonIcon == FALSE) && (bcGraphics->isHoldingItem == FALSE)) {
            if (Sprite_GetActiveAnim(bcGraphics->cursorSprite) != 0) {
                Sprite_SetAnim(bcGraphics->cursorSprite, 0);
            }
        }

        return TRUE;
    }

    return FALSE;
}

static void BoxCursorGraphics_ReturnToRestAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics;
    VecFx32 pos;

    bcGraphics = (BoxCursorGraphics *)param;
    pos = *Sprite_GetPosition(bcGraphics->cursorSprite);

    if (bcGraphics->moveStepsRemaining) {
        pos.y += bcGraphics->stepY;
        BoxCursorGraphics_SetPosition(bcGraphics, &pos);
        bcGraphics->moveStepsRemaining--;
    } else {
        pos.y = bcGraphics->targetY << FX32_SHIFT;
        BoxCursorGraphics_SetPosition(bcGraphics, &pos);
        bcGraphics->isAnimating = FALSE;
        SysTask_Done(task);
    }
}

void BoxCursorGraphics_OnMonStoredFromCursor(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->boxApp->depositBoxID == BoxApp_GetCurrentBox(bcGraphics->boxApp)) {
        BoxView_CreateMissingIcons(bcGraphics->box);
    }

    BoxCursorGraphics_ClearHeldMonIcons(bcGraphics);
    Sprite_SetAnim(bcGraphics->cursorSprite, 0);
}

enum ReleaseAnimationPhase {
    RELEASE_ANIM_WAIT_FOR_SHRINK = 0,
    RELEASE_ANIM_CHECK_CAN_RELEASE,
    RELEASE_ANIM_WAIT_FOR_RETURN
};

void BoxCursorGraphics_StartReleaseAnimation(BoxCursorGraphics *bcGraphics)
{
    Sprite_SetAnim(bcGraphics->cursorSprite, 1);
    MonIconHelper_SetIconAnim(bcGraphics->monIconHelper, bcGraphics->monIcon, MON_ICON_ANIM_RELEASE);

    bcGraphics->animPhase = RELEASE_ANIM_WAIT_FOR_SHRINK;
}

BOOL BoxCursorGraphics_IsReleaseAnimationDone(BoxCursorGraphics *bcGraphics)
{
    const BoxApplicationManager *baManagers = BoxGraphics_GetBoxAppMan(bcGraphics->boxGraphics);

    switch (bcGraphics->animPhase) {
    case RELEASE_ANIM_WAIT_FOR_SHRINK:
        if (MonIconHelper_IsIconAnimDone(bcGraphics->monIconHelper, bcGraphics->monIcon)) {
            bcGraphics->animPhase++;
        }
        break;
    case RELEASE_ANIM_CHECK_CAN_RELEASE:
        if (BoxAppMan_HasCheckedCanReleaseMon(baManagers)) {
            if (BoxAppMan_CanReleaseMon(baManagers)) {
                Sprite_SetAnim(bcGraphics->cursorSprite, 0);
                BoxCursorGraphics_ClearHeldMonIcons(bcGraphics);
                return TRUE;
            } else {
                MonIconHelper_SetIconAnim(bcGraphics->monIconHelper, bcGraphics->monIcon, MON_ICON_ANIM_RELEASE_REJECTED);
                bcGraphics->animPhase++;
            }
        }
        break;
    case RELEASE_ANIM_WAIT_FOR_RETURN:
        if (MonIconHelper_IsIconAnimDone(bcGraphics->monIconHelper, bcGraphics->monIcon)) {
            Sprite_SetAnim(bcGraphics->cursorSprite, 2);
            return TRUE;
        }

        break;
    }

    return FALSE;
}

void BoxCursorGraphics_RaisePriority(BoxCursorGraphics *bcGraphics)
{
    Sprite_SetExplicitPriority(bcGraphics->cursorSprite, 1);

    if (bcGraphics->hasHeldMonIcon) {
        Sprite_SetExplicitPriority(bcGraphics->monIcon->sprite, 1);
    }

    if (bcGraphics->isHoldingItem) {
        BoxItemIconGraphics_SetHeldIconBgPriority(bcGraphics->itemIconGraphics, ITEM_ICON_PARTY_BG_PRIORITY);
    }
}

void BoxCursorGraphics_RestorePriority(BoxCursorGraphics *bcGraphics)
{
    Sprite_SetExplicitPriority(bcGraphics->cursorSprite, 2);

    if (bcGraphics->hasHeldMonIcon) {
        Sprite_SetExplicitPriority(bcGraphics->monIcon->sprite, 2);
    }

    if (bcGraphics->isHoldingItem) {
        BoxItemIconGraphics_SetHeldIconBgPriority(bcGraphics->itemIconGraphics, ITEM_ICON_BOX_BG_PRIORITY);
    }
}

void BoxCursorGraphics_UpdateMarkingsIcon(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->hasHeldMonIcon) {
        u32 markings = BoxApp_GetPreviewedMonMarkings(bcGraphics->boxApp);
        MonIconHelper_SetMarkings(bcGraphics->monIconHelper, bcGraphics->monIcon, markings);
    }
}

void BoxCursorGraphics_UpdateHeldMonTransparency(BoxCursorGraphics *bcGraphics)
{
    u32 mask = BoxApp_GetMonSpriteTransparencyMask(bcGraphics->boxApp);

    if (bcGraphics->monIcon->sprite != NULL) {
        MonIconHelper_UpdateTransparency(bcGraphics->monIconHelper, bcGraphics->monIcon, mask);
    }
}

void BoxCursorGraphics_UpdateHeldItemIcon(BoxCursorGraphics *bcGraphics, u32 item)
{
    if (bcGraphics->monIcon->sprite != NULL) {
        MonIconHelper_SetHeldItem(bcGraphics->monIconHelper, bcGraphics->monIcon, item);
        MonIconHelper_UpdateTransparency(bcGraphics->monIconHelper, bcGraphics->monIcon, BoxApp_GetMonSpriteTransparencyMask(bcGraphics->boxApp));
        MonIconHelper_UpdateIconForm(bcGraphics->monIconHelper, bcGraphics->monIcon, 0);
    }
}

void BoxCursorGraphics_UpdateFastModePalette(BoxCursorGraphics *bcGraphics)
{
    if (BoxApp_IsCursorFastMode(bcGraphics->boxApp)) {
        Sprite_SetExplicitPalette(bcGraphics->cursorSprite, 1);
    } else {
        Sprite_SetExplicitPalette(bcGraphics->cursorSprite, 0);
    }
}

void BoxGraphics_OpenMultiSelectCursor(BoxCursorGraphics *bcGraphics)
{
    Sprite_SetAnim(bcGraphics->cursorSprite, 1);
}

void BoxCursorGraphics_GetPosition(BoxCursorGraphics *bcGraphics, VecFx32 *pos)
{
    *pos = *(Sprite_GetPosition(bcGraphics->cursorSprite));
}

enum TakeItemAnimationPhase {
    TAKE_ITEM_ANIM_START = 0,
    TAKE_ITEM_ANIM_WAIT_FOR_ICON
};

void BoxCursorGraphics_StartTakeItemAnimation(BoxCursorGraphics *bcGraphics)
{
    bcGraphics->animPhase = TAKE_ITEM_ANIM_START;

    if (SysTask_Start(BoxCursorGraphics_TakeItemAnimationTask, bcGraphics, 0)) {
        bcGraphics->isHoldingItem = 1;
        bcGraphics->isAnimating = TRUE;
    }
}

BOOL BoxCursorGraphics_IsAnimationDone3(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->isAnimating == FALSE;
}

static void BoxCursorGraphics_TakeItemAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = param;

    switch (bcGraphics->animPhase) {
    case TAKE_ITEM_ANIM_START:
        Sprite_SetAnim(bcGraphics->cursorSprite, 1);
        BoxItemIconGraphics_StartTakeItem(bcGraphics->itemIconGraphics);
        bcGraphics->animPhase++;
        break;
    case TAKE_ITEM_ANIM_WAIT_FOR_ICON:
        if (BoxItemIconGraphics_IsTakeItemDone(bcGraphics->itemIconGraphics)) {
            Sprite_SetAnim(bcGraphics->cursorSprite, 2);
            bcGraphics->isAnimating = FALSE;
            SysTask_Done(task);
        }
    }
}

enum GiveItemAnimationPhase {
    GIVE_ITEM_ANIM_START = 0,
    GIVE_ITEM_ANIM_WAIT_FOR_ICON
};

void BoxCursorGraphics_StartGiveItemAnimation(BoxCursorGraphics *bcGraphics)
{
    bcGraphics->animPhase = GIVE_ITEM_ANIM_START;

    if (SysTask_Start(BoxCursorGraphics_GiveItemAnimationTask, bcGraphics, 0)) {
        bcGraphics->isHoldingItem = 0;
        bcGraphics->isAnimating = TRUE;
    }
}

BOOL BoxCursorGraphics_IsAnimationDone4(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->isAnimating == FALSE;
}

static void BoxCursorGraphics_GiveItemAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = param;

    switch (bcGraphics->animPhase) {
    case GIVE_ITEM_ANIM_START:
        Sprite_SetAnim(bcGraphics->cursorSprite, 1);
        BoxItemIconGraphics_StartGiveItem(bcGraphics->itemIconGraphics);
        bcGraphics->animPhase++;
        break;
    case GIVE_ITEM_ANIM_WAIT_FOR_ICON:
        if (BoxItemIconGraphics_IsTakeItemDone2(bcGraphics->itemIconGraphics)) {
            Sprite_SetAnim(bcGraphics->cursorSprite, 0);
            bcGraphics->isAnimating = FALSE;
            SysTask_Done(task);
        }
    }
}

enum SwitchItemAnimationPhase {
    SWITCH_ITEM_ANIM_START = 0,
    SWITCH_ITEM_ANIM_WAIT_FOR_ICON
};

void BoxCursorGraphics_StartSwitchItemAnimation(BoxCursorGraphics *bcGraphics)
{
    bcGraphics->animPhase = SWITCH_ITEM_ANIM_START;

    if (SysTask_Start(BoxCursorGraphics_SwitchItemAnimationTask, bcGraphics, 0)) {
        bcGraphics->isAnimating = TRUE;
    }
}

BOOL BoxCursorGraphics_IsAnimationDone5(BoxCursorGraphics *bcGraphics)
{
    return bcGraphics->isAnimating == FALSE;
}

static void BoxCursorGraphics_SwitchItemAnimationTask(SysTask *task, void *param)
{
    BoxCursorGraphics *bcGraphics = param;

    switch (bcGraphics->animPhase) {
    case SWITCH_ITEM_ANIM_START:
        Sprite_SetAnim(bcGraphics->cursorSprite, 1);
        BoxItemIconGraphics_StartSwapItems(bcGraphics->itemIconGraphics);
        bcGraphics->animPhase++;
        break;
    case SWITCH_ITEM_ANIM_WAIT_FOR_ICON:
        if (BoxItemIconGraphics_IsTakeItemDone3(bcGraphics->itemIconGraphics)) {
            Sprite_SetAnim(bcGraphics->cursorSprite, 2);
            bcGraphics->isAnimating = FALSE;
            SysTask_Done(task);
        }
    }
}

void BoxCursorGraphics_ShowReachingPose(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->isHoldingItem) {
        Sprite_SetAnim(bcGraphics->cursorSprite, 1);
    }
}

void BoxCursorGraphics_ClearHeldItem(BoxCursorGraphics *bcGraphics)
{
    if (bcGraphics->isHoldingItem) {
        Sprite_SetAnim(bcGraphics->cursorSprite, 0);
        bcGraphics->isHoldingItem = 0;
    }
}

static void BoxCursorGraphics_GetTargetPosition(s32 *targetX, s32 *targetY, u8 *cursorLocation, BoxCursorGraphics *bcGraphics)
{
    const BoxApplication *boxApp = bcGraphics->boxApp;

    *cursorLocation = BoxApp_GetCursorLocation(boxApp);

    switch (*cursorLocation) {
    case CURSOR_IN_BOX:
        *targetX = BOX_GRID_LEFT + BoxGraphics_GetCompareModeXOffset(bcGraphics->boxGraphics) + BoxApp_GetCursorBoxCol(boxApp) * BOX_GRID_CELL_SIZE + 0;
        *targetY = BOX_GRID_TOP + BoxApp_GetCursorBoxRow(boxApp) * BOX_GRID_CELL_SIZE + -16;
        break;
    case CURSOR_IN_PARTY: {
        u32 partyIndex = BoxApp_GetCursorPartyPosition(boxApp);

        BoxPartyGraphics_GetCursorSlotPosition(BoxGraphics_GetPartyGraphics(bcGraphics->boxGraphics), partyIndex, targetX, targetY);
        (*targetX) += 0;
        (*targetY) += -16;
    } break;
    case CURSOR_ON_BOX_HEADER:
        *targetX = 168 + BoxGraphics_GetCompareModeXOffset(bcGraphics->boxGraphics);
        *targetY = 8;
        break;
    case CURSOR_ON_PARTY_BUTTON:
        *targetX = 159 + BoxGraphics_GetCompareModeXOffset(bcGraphics->boxGraphics);
        *targetY = 160;
        break;
    case CURSOR_ON_CLOSE_BUTTON:
        *targetX = 235 + BoxGraphics_GetCompareModeXOffset(bcGraphics->boxGraphics);
        *targetY = 160;
        break;
    }
}

static void BoxCursorGraphics_SetPosition(BoxCursorGraphics *bcGraphics, VecFx32 *newPos)
{
    Sprite_SetPosition(bcGraphics->cursorSprite, newPos);

    if (bcGraphics->hasHeldMonIcon) {
        VecFx32 iconPos;

        iconPos.z = 0;

        for (int i = 0; i < bcGraphics->heldIconCount; i++) {
            iconPos.x = newPos->x + bcGraphics->heldIconOffsets[i].x;
            iconPos.y = newPos->y - bcGraphics->heldIconOffsets[i].y;
            Sprite_SetPosition(bcGraphics->monIcon[i].sprite, &iconPos);
        }
    }

    if (bcGraphics->isHoldingItem) {
        BoxItemIconGraphics_SetHeldIconPosition(bcGraphics->itemIconGraphics, newPos);
    }

    if (bcGraphics->shadowFollowsCursor) {
        VecFx32 offsetPos = *newPos;

        offsetPos.y += CURSOR_SHADOW_OFFSET_Y << FX32_SHIFT;
        Sprite_SetPosition(bcGraphics->shadowSprite, &offsetPos);
    }
}

static void BoxCursorGraphics_LoadHeldMonIcons(BoxCursorGraphics *bcGraphics)
{
    if (BoxApp_GetCursorLocation(bcGraphics->boxApp) == CURSOR_IN_BOX) {
        if (BoxApp_IsMultiSelectSingleSelect(bcGraphics->boxApp)) {
            u32 posInBox = BoxApp_GetCursorBoxPosition(bcGraphics->boxApp);
            BoxView_PickUpIcon(bcGraphics->box, posInBox, CURSOR_ICON_TILE_BASE, bcGraphics->monIcon);
            bcGraphics->heldIconCount = 1;
            bcGraphics->heldIconOffsets[0].x = CURSOR_HELD_ICON_OFFSET_X * FX32_ONE;
            bcGraphics->heldIconOffsets[0].y = CURSOR_HELD_ICON_OFFSET_Y * FX32_ONE;
        } else {
            u32 iconCount, selCol, selRow, leftCol, rightCol, topRow, bottomRow, col, row;

            BoxApp_GetMultiSelectBoundingBox(bcGraphics->boxApp, &leftCol, &rightCol, &topRow, &bottomRow);

            col = BoxApp_GetCursorBoxCol(bcGraphics->boxApp);
            row = BoxApp_GetCursorBoxRow(bcGraphics->boxApp);
            iconCount = 0;

            for (selRow = topRow; selRow <= bottomRow; selRow++) {
                for (selCol = leftCol; selCol <= rightCol; selCol++) {
                    BoxView_PickUpIcon(bcGraphics->box, selRow * MAX_PC_COLS + selCol, CURSOR_MULTI_ICON_TILE_BASE + iconCount * MON_ICON_TILE_COUNT, &bcGraphics->monIcon[iconCount]);

                    if (bcGraphics->monIcon[iconCount].sprite != NULL) {
                        bcGraphics->heldIconOffsets[iconCount].x = (CURSOR_HELD_ICON_OFFSET_X + (selCol - col) * BOX_GRID_CELL_SIZE) * FX32_ONE;
                        bcGraphics->heldIconOffsets[iconCount].y = (CURSOR_HELD_ICON_OFFSET_Y - (selRow - row) * BOX_GRID_CELL_SIZE) * FX32_ONE;
                        iconCount++;
                    }
                }
            }

            bcGraphics->heldIconCount = iconCount;
        }
    } else {
        u32 partyIndex = BoxApp_GetCursorPartyPosition(bcGraphics->boxApp);

        BoxPartyGraphics_PickUpIcon(bcGraphics->party, partyIndex, CURSOR_ICON_TILE_BASE, bcGraphics->monIcon);

        bcGraphics->heldIconCount = 1;
        bcGraphics->heldIconOffsets[0].x = CURSOR_HELD_ICON_OFFSET_X * FX32_ONE;
        bcGraphics->heldIconOffsets[0].y = CURSOR_HELD_ICON_OFFSET_Y * FX32_ONE;
    }
}

static void BoxCursorGraphics_FinishPickUpMonIcons(BoxCursorGraphics *bcGraphics)
{
    for (int i = 0; i < bcGraphics->heldIconCount; i++) {
        BoxGraphics_SetSpritePriority(bcGraphics->monIcon[i].sprite, 2);
    }

    bcGraphics->hasHeldMonIcon = TRUE;
}

static void BoxCursorGraphics_RestorePlacedMonIcons(BoxCursorGraphics *bcGraphics)
{
    if (BoxApp_GetCursorLocation(bcGraphics->boxApp) == CURSOR_IN_BOX) {
        if (BoxApp_IsMultiSelectSingleSelect(bcGraphics->boxApp)) {
            u32 posInBox = BoxApp_GetCursorBoxPosition(bcGraphics->boxApp);
            BoxView_PlaceDownIcon(bcGraphics->box, posInBox, bcGraphics->monIcon);
        } else {
            int i, topLeftPos, destPos;

            topLeftPos = BoxApp_GetMultiSelectTopLeftPos(bcGraphics->boxApp);

            for (i = 0; i < bcGraphics->heldIconCount; i++) {
                destPos = topLeftPos + BoxApp_GetRelativeMonPosInMultiSelection(bcGraphics->boxApp, i);
                BoxView_PlaceDownIcon(bcGraphics->box, destPos, &bcGraphics->monIcon[i]);
            }
        }
    } else {
        u32 partyIndex = BoxApp_GetCursorPartyPosition(bcGraphics->boxApp);
        BoxPartyGraphics_PlaceDownIcon(bcGraphics->party, partyIndex, bcGraphics->monIcon);
    }
}

static void BoxCursorGraphics_FinishShiftMonIcons(BoxCursorGraphics *bcGraphics)
{
    if (BoxApp_GetCursorLocation(bcGraphics->boxApp) == CURSOR_IN_BOX) {
        u32 posInBox = BoxApp_GetCursorBoxPosition(bcGraphics->boxApp);
        MonIcon *slotIcon = BoxView_GetIcon(bcGraphics->box, posInBox);

        MonIconHelper_MoveIconTiles(bcGraphics->monIconHelper, bcGraphics->monIcon, CURSOR_MULTI_ICON_TILE_BASE);
        MonIconHelper_MoveIconTiles(bcGraphics->monIconHelper, slotIcon, CURSOR_MULTI_ICON_TILE_BASE + MON_ICON_TILE_COUNT);

        OS_WaitVBlankIntr();

        BoxView_PickUpIcon(bcGraphics->box, posInBox, CURSOR_ICON_TILE_BASE, &bcGraphics->monIcon[1]);
        BoxView_PlaceDownIcon(bcGraphics->box, posInBox, bcGraphics->monIcon);
        MonIcon_Copy(&(bcGraphics->monIcon[1]), &(bcGraphics->monIcon[0]), 1);
    } else {
        u32 partyPosition = BoxApp_GetCursorPartyPosition(bcGraphics->boxApp);
        MonIcon *slotIcon = BoxPartyGraphics_GetIcon(bcGraphics->party, partyPosition);

        MonIconHelper_MoveIconTiles(bcGraphics->monIconHelper, bcGraphics->monIcon, CURSOR_MULTI_ICON_TILE_BASE);
        MonIconHelper_MoveIconTiles(bcGraphics->monIconHelper, slotIcon, CURSOR_MULTI_ICON_TILE_BASE + MON_ICON_TILE_COUNT);

        OS_WaitVBlankIntr();

        BoxPartyGraphics_PickUpIcon(bcGraphics->party, partyPosition, CURSOR_ICON_TILE_BASE, &bcGraphics->monIcon[1]);
        BoxPartyGraphics_PlaceDownIconAtSlot(bcGraphics->party, partyPosition, bcGraphics->monIcon);
        MonIcon_Copy(&(bcGraphics->monIcon[1]), &(bcGraphics->monIcon[0]), 1);
    }
}

static void BoxCursorGraphics_ClearHeldMonIconFlag(BoxCursorGraphics *bcGraphics)
{
    bcGraphics->hasHeldMonIcon = FALSE;
}

static void BoxCursorGraphics_ClearHeldMonIcons(BoxCursorGraphics *bcGraphics)
{
    MonIconHelper_DeleteIcons(bcGraphics->monIconHelper, bcGraphics->monIcon, 1);
    bcGraphics->hasHeldMonIcon = FALSE;
    bcGraphics->heldIconCount = 0;
}

static Sprite *BoxCursorGraphics_GetSpriteUnderCursor(BoxCursorGraphics *bcGraphics)
{
    MonIcon *monIcon;
    u32 cursorPosition;

    if (BoxApp_GetCursorLocation(bcGraphics->boxApp) == CURSOR_IN_BOX) {
        cursorPosition = BoxApp_GetCursorBoxPosition(bcGraphics->boxApp);
        monIcon = BoxView_GetIcon(bcGraphics->box, cursorPosition);
        return monIcon->sprite;
    } else {
        cursorPosition = BoxApp_GetCursorPartyPosition(bcGraphics->boxApp);
        monIcon = BoxPartyGraphics_GetIcon(bcGraphics->party, cursorPosition);
        return monIcon->sprite;
    }
}
