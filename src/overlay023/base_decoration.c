#include "overlay023/base_decoration.h"

#include <nitro.h>
#include <string.h>

#include "generated/goods.h"

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021EAFA4.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay005/struct_ov5_021EB0E0_decl.h"
#include "overlay006/struct_ov6_0223E6EC.h"
#include "overlay023/decoration_menu.h"
#include "overlay023/secret_bases.h"

#include "easy3d.h"
#include "field_task.h"
#include "goods.h"
#include "heap.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "system.h"
#include "text.h"
#include "unk_0202854C.h"

#include "res/text/bank/underground_base_decoration.h"

typedef struct PropBlinkContext {
    int propIndex;
    int timer;
    int interval;
    BOOL hidden;
    BOOL active;
} PropBlinkContext;

typedef struct PositionRect {
    int minX;
    int minZ;
    int maxX;
    int maxZ;
} PositionRect;

typedef struct DecorationGood {
    PositionRect position;
    int propIndex;
    int goodID;
    int width;
    int depth;
} DecorationGood;

typedef struct MovedGood {
    int index;
    VecFx32 propPosition;
    DecorationGood data;
} MovedGood;

typedef struct BaseGoodSlot {
    BOOL active;
    DecorationGood good;
} BaseGoodSlot;

typedef struct DecorateCursor {
    NNSG3dRenderObj renderObj;
    NNSG3dResFileHeader *modelFile;
    VecFx32 modelPosition;
    int x;
    int z;
    BOOL visible;
} DecorateCursor;

typedef struct DecorationTouchInput {
    int x;
    int z;
    BOOL active;
} DecorationTouchInput;

typedef struct BaseDecorationContext {
    int state;
    int subState;
    int printerID;
    MovedGood movedGood;
    DecorationGood heldGood;
    BaseGoodSlot goodSlots[MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1];
    PropBlinkContext propBlinkCtx;
    DecorationTouchInput touchInput;
    DecorateCursor *cursor;
    FieldSystem *fieldSystem;
    DecorationMenu *decorationMenu;
    DecorationGoodsMenu *decorationGoodsMenu;
    UnkStruct_ov5_021D1BEC *unk_50C;
    u8 padding[8];
    u16 menuListPos;
    u16 goodsMenuListPos;
    u16 menuCursorPos;
    u16 goodsMenuCursorPos;
    u8 timer;
    u8 placedGoodCount;
    u8 boulderCount;
    u8 unremovableBoulderCount;
    u8 maxPlacedGoods;
} BaseDecorationContext;

#define DEFAULT_GOOD_POSITION_X 16
#define DEFAULT_GOOD_POSITION_Z 13

enum DecorationState {
    DECORATION_STATE_INIT = 0,
    DECORATION_STATE_FADE_IN,
    DECORATION_STATE_WAIT_FOR_FADE,
    DECORATION_STATE_MAIN_MENU,
    DECORATION_STATE_DECORATE,
    DECORATION_STATE_PUT_AWAY,
    DECORATION_STATE_SELECT_GOOD_TO_MOVE,
    DECORATION_STATE_MOVE_SELECTED_GOOD,
    DECORATION_STATE_RETURN_AFTER_TEXT,
    DECORATION_STATE_FADE_OUT,
    DECORATION_STATE_EXIT,
};

enum DecorateSubState {
    DECORATE_SUBSTATE_SELECT_GOOD = 0,
    DECORATE_SUBSTATE_INIT_BLINK,
    DECORATE_SUBSTATE_PLACE_GOOD,
    DECORATE_SUBSTATE_PLACE_GOOD_AFTER_TEXT,
    DECORATE_SUBSTATE_EXIT_AFTER_TEXT,
    DECORATE_SUBSTATE_SELECT_GOOD_AFTER_TEXT,
};

enum PutAwaySubState {
    PUT_AWAY_SUBSTATE_INIT = 0,
    PUT_AWAY_SUBSTATE_PICK_GOOD,
    PUT_AWAY_SUBSTATE_REMOVED_BOULDER,
    PUT_AWAY_SUBSTATE_REINIT_AFTER_TEXT,
    PUT_AWAY_SUBSTATE_PICK_GOOD_AFTER_TEXT,
    PUT_AWAY_SUBSTATE_PRINT_REMAINING_BOULDERS,
    PUT_AWAY_SUBSTATE_EXIT_AFTER_TEXT,
};

enum SelectMoveGoodSubState {
    SELECT_MOVE_GOOD_SUBSTATE_INIT = 0,
    SELECT_MOVE_GOOD_SUBSTATE_MAIN,
    SELECT_MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT,
};

enum MoveGoodSubState {
    MOVE_GOOD_SUBSTATE_INIT = 0,
    MOVE_GOOD_SUBSTATE_MAIN,
    MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT,
    MOVE_GOOD_SUBSTATE_EXIT_AFTER_TEXT,
};

static BOOL BaseDecoration_MenuTask(FieldTask *task);
static BOOL BaseDecoration_DecorationTask(FieldTask *task);
static BOOL BaseDecoration_DecorateTask(FieldTask *task);
static BOOL BaseDecoration_PutAwayTask(FieldTask *task);
static BOOL BaseDecoration_SelectGoodToMoveTask(FieldTask *task);
static BOOL BaseDecoration_MoveSelectedGoodTask(FieldTask *task);
static BOOL BaseDecoration_CanPlaceGood(const DecorationGood *good, const BaseGoodSlot goodSlots[]);
static BOOL BaseDecoration_FindGoodOccupyingCoordinates(int x, int z, const BaseGoodSlot goodSlots[], int *outIndex);
static int BaseDecoration_PlaceGood(const DecorationGood *good, BaseGoodSlot goodSlots[]);
static void BaseDecoration_SetGoodAtIndex(const DecorationGood *good, int index, BaseGoodSlot goodSlots[]);
static void BaseDecoration_RemoveGood(int index, BaseGoodSlot goodSlots[]);
static BOOL BaseDecoration_AreGoodsOverlapping(const PositionRect *good1Position, const PositionRect *good2Position);
static BOOL BaseDecoration_AreCoordinatesInsideGood(const PositionRect *goodPosition, int x, int z);
static BOOL BaseDecoration_IsPositionOutOfBounds(const PositionRect *position);
static void BaseDecoration_LoadBaseGoods(FieldSystem *fieldSystem, BaseDecorationContext *ctx, BaseGoodSlot goodSlots[]);
static void BaseDecoration_AddGoodAtIndex(int index, int goodID, int x, int z, BaseGoodSlot goodSlots[]);
static void BaseDecoration_LoadGoodMapProp(FieldSystem *fieldSystem, BaseGoodSlot goodSlots[]);
static void BaseDecoration_SaveBaseGoods(FieldSystem *fieldSystem, const BaseGoodSlot goodSlots[]);
static int BaseDecoration_GetGoodMapPropModelID(FieldSystem *fieldSystem, int goodID);
static void BaseDecoration_SetMovedGood(int index, BaseDecorationContext *ctx);
static void BaseDecoration_UpdateMovedGoodProp(BaseDecorationContext *ctx);
static void BaseDecoration_UpdateState(int newState, BaseDecorationContext *ctx);
static void DecorateCursor_Show(DecorateCursor *cursor);
static void DecorateCursor_SetPosition(int x, int z, DecorateCursor *cursor);
static void DecorateCursor_Hide(DecorateCursor *cursor);
static BOOL BaseDecoration_HandleDecorateTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade);
static BOOL BaseDecoration_HandlePutAwayTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade);
static BOOL BaseDecoration_HandleSelectGoodToMoveTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade);
static BOOL BaseDecoration_HandleMoveSelectedGoodTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade);
static void PropBlinkContext_Clear(PropBlinkContext *ctx);
static void PropBlinkContext_Init(int propIndex, int interval, PropBlinkContext *ctx);
static void BaseDecoration_HandlePropBlink(FieldSystem *fieldSystem, PropBlinkContext *ctx);
static void PropBlinkContext_ShowProp(FieldSystem *fieldSystem, PropBlinkContext *ctx);
static int PropBlinkContext_GetPropIndex(PropBlinkContext *ctx);
static void ov23_022562AC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);
static void ov23_022562B8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);
static void ov23_022562BC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);
static void ov23_022562C8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2);

static const UnkStruct_ov6_0223E6EC Unk_ov23_02256B88 = {
    0x0,
    sizeof(DecorateCursor),
    ov23_022562AC,
    ov23_022562BC,
    ov23_022562B8,
    ov23_022562C8
};

static void BaseDecoration_CreateHeldGood(FieldSystem *fieldSystem, int goodID, BaseDecorationContext *ctx)
{
    GF_ASSERT(goodID != UG_GOOD_NONE);

    DecorationGood *good = &ctx->heldGood;

    good->width = Good_GetWidth(goodID);
    good->depth = Good_GetDepth(goodID);

    VecFx32 propPosition;
    propPosition.x = (FX32_ONE * 16) * DEFAULT_GOOD_POSITION_X + (FX32_ONE * 8) * good->width;
    propPosition.y = FX32_ONE;
    propPosition.z = (FX32_ONE * 16) * DEFAULT_GOOD_POSITION_Z + (FX32_ONE * 8) * good->depth;

    good->propIndex = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, BaseDecoration_GetGoodMapPropModelID(fieldSystem, goodID), &propPosition, NULL, fieldSystem->mapPropAnimMan);
    good->position.minX = DEFAULT_GOOD_POSITION_X;
    good->position.minZ = DEFAULT_GOOD_POSITION_Z;
    good->position.maxX = DEFAULT_GOOD_POSITION_X + (good->width - 1);
    good->position.maxZ = DEFAULT_GOOD_POSITION_Z + (good->depth - 1);
    good->goodID = goodID;
}

static void BaseDecoration_ClearGoodProp(FieldSystem *fieldSystem, int propIndex)
{
    MapPropManager_ClearOne(propIndex, fieldSystem->mapPropManager);
}

static void BaseDecoration_SetHeldGood(int index, BaseDecorationContext *ctx)
{
    GF_ASSERT(ctx->goodSlots[index].active);

    DecorationGood *good = &ctx->goodSlots[index].good;
    ctx->heldGood = *good;
}

static BOOL BaseDecoration_DecorationTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseDecorationContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->state) {
    case DECORATION_STATE_INIT:
        SetAutorepeat(4, 8);

        ctx->decorationMenu = DecorationMenu_New();
        DecorationMenu_Init(ctx->decorationMenu, fieldSystem, &ctx->menuListPos, &ctx->menuCursorPos);

        ctx->decorationGoodsMenu = DecorationGoodsMenu_New();
        DecorationGoodsMenu_Init(ctx->decorationGoodsMenu, fieldSystem, &ctx->goodsMenuListPos, &ctx->goodsMenuCursorPos);

        BaseDecoration_LoadBaseGoods(fieldSystem, ctx, ctx->goodSlots);
        BaseDecoration_LoadGoodMapProp(fieldSystem, ctx->goodSlots);
        BaseDecoration_UpdateState(DECORATION_STATE_FADE_IN, ctx);
        break;
    case DECORATION_STATE_FADE_IN:
        StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_CLAMP_IN, FADE_TYPE_CLAMP_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        BaseDecoration_UpdateState(DECORATION_STATE_WAIT_FOR_FADE, ctx);
        break;
    case DECORATION_STATE_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
        }
        break;
    case DECORATION_STATE_MAIN_MENU:
        FieldTask_InitCall(task, BaseDecoration_MenuTask, ctx);
        break;
    case DECORATION_STATE_DECORATE:
        FieldTask_InitCall(task, BaseDecoration_DecorateTask, ctx);
        break;
    case DECORATION_STATE_PUT_AWAY:
        FieldTask_InitCall(task, BaseDecoration_PutAwayTask, ctx);
        break;
    case DECORATION_STATE_SELECT_GOOD_TO_MOVE:
        FieldTask_InitCall(task, BaseDecoration_SelectGoodToMoveTask, ctx);
        break;
    case DECORATION_STATE_MOVE_SELECTED_GOOD:
        FieldTask_InitCall(task, BaseDecoration_MoveSelectedGoodTask, ctx);
        break;
    case DECORATION_STATE_RETURN_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
            }
        }
        break;
    case DECORATION_STATE_FADE_OUT:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_CLAMP_OUT, FADE_TYPE_CLAMP_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        BaseDecoration_UpdateState(DECORATION_STATE_EXIT, ctx);
        break;
    case DECORATION_STATE_EXIT:
        if (IsScreenFadeDone()) {
            DecorationGoodsMenu_Free(ctx->decorationGoodsMenu);
            DecorationMenu_Free(ctx->decorationMenu);
            ov5_021D1BEC(ctx->unk_50C);
            Heap_Free(ctx);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL BaseDecoration_MenuTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseDecorationContext *ctx = FieldTask_GetEnv(task);

    BOOL optionSelected = DecorationMenu_Main(ctx->decorationMenu);

    if (optionSelected) {
        switch (DecorationMenu_GetLastInput(ctx->decorationMenu)) {
        case DECORATION_OPTION_DECORATE:
            Underground *underground = SaveData_GetUnderground(fieldSystem->saveData);
            int goodsCount = Underground_GetGoodsCountPC(underground);

            if (goodsCount == 0) {
                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_NoGoodsInPC);
                ctx->timer = 0;
                BaseDecoration_UpdateState(DECORATION_STATE_RETURN_AFTER_TEXT, ctx);
                return TRUE;
            }

            if (ctx->placedGoodCount > MAX_PLACED_GOODS) {
                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_DisplayLimitReached);
                ctx->timer = 0;
                BaseDecoration_UpdateState(DECORATION_STATE_RETURN_AFTER_TEXT, ctx);
                return TRUE;
            }

            if (ctx->placedGoodCount + 1 > ctx->maxPlacedGoods) {
                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_DisplayLimitReached);
                ctx->timer = 0;
                BaseDecoration_UpdateState(DECORATION_STATE_RETURN_AFTER_TEXT, ctx);
                return TRUE;
            }

            DecorationGoodsMenu_SetPlacedGoodData(ctx->decorationGoodsMenu, ctx->placedGoodCount, ctx->maxPlacedGoods);
            BaseDecoration_UpdateState(DECORATION_STATE_DECORATE, ctx);
            return TRUE;
        case DECORATION_OPTION_PUT_AWAY:
            DecorateCursor_SetPosition(DEFAULT_GOOD_POSITION_X, DEFAULT_GOOD_POSITION_Z, ctx->cursor);
            BaseDecoration_UpdateState(DECORATION_STATE_PUT_AWAY, ctx);
            return TRUE;
        case DECORATION_OPTION_MOVE_GOODS:
            DecorateCursor_SetPosition(DEFAULT_GOOD_POSITION_X, DEFAULT_GOOD_POSITION_Z, ctx->cursor);
            BaseDecoration_UpdateState(DECORATION_STATE_SELECT_GOOD_TO_MOVE, ctx);
            return TRUE;
        default:
            BaseDecoration_SaveBaseGoods(fieldSystem, ctx->goodSlots);
            BaseDecoration_UpdateState(DECORATION_STATE_FADE_OUT, ctx);
            return TRUE;
        }
    }

    return FALSE;
}

void BaseDecoration_StartDecorationTask(FieldSystem *fieldSystem, FieldTask *task)
{
    BaseDecorationContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(BaseDecorationContext));

    MI_CpuClear8(ctx, sizeof(BaseDecorationContext));
    BaseDecoration_UpdateState(DECORATION_STATE_INIT, ctx);

    ctx->fieldSystem = fieldSystem;
    ctx->unk_50C = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &Unk_ov23_02256B88);
    ctx->cursor = ov5_021D1C2C(ctx->unk_50C);

    FieldTask_InitCall(task, BaseDecoration_DecorationTask, ctx);
}

static BOOL BaseDecoration_DecorateTask(FieldTask *task)
{
    fx32 dX, dZ;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseDecorationContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->subState) {
    case DECORATE_SUBSTATE_SELECT_GOOD:
        BOOL optionSelected = DecorationGoodsMenu_Main(ctx->decorationGoodsMenu);

        if (optionSelected) {
            Underground *underground = SaveData_GetUnderground(ctx->fieldSystem->saveData);
            u32 input = DecorationGoodsMenu_GetLastInput(ctx->decorationGoodsMenu);

            if (input == LIST_CANCEL) {
                BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
                return TRUE;
            }

            int goodID = Underground_GetGoodAtSlotPC(underground, input);

            if (goodID != UG_GOOD_NONE) {
                if (!Underground_IsGoodAtSlotPlacedInBase(underground, input)) {
                    BaseDecoration_CreateHeldGood(fieldSystem, goodID, ctx);
                    ctx->subState = DECORATE_SUBSTATE_INIT_BLINK;
                } else {
                    ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_GoodAlreadyDisplayed);
                    ctx->timer = 0;
                    ctx->subState = DECORATE_SUBSTATE_SELECT_GOOD_AFTER_TEXT;
                }
            } else {
                GF_ASSERT(FALSE);
            }
        }
        break;
    case DECORATE_SUBSTATE_INIT_BLINK:
        PropBlinkContext_Clear(&ctx->propBlinkCtx);
        PropBlinkContext_Init(ctx->heldGood.propIndex, 4, &ctx->propBlinkCtx);
        ctx->subState = DECORATE_SUBSTATE_PLACE_GOOD;
        break;
    case DECORATE_SUBSTATE_PLACE_GOOD:
        BaseDecoration_HandlePropBlink(fieldSystem, &ctx->propBlinkCtx);

        BOOL selectionMade;
        BOOL touchInput = BaseDecoration_HandleDecorateTouchInput(ctx, fieldSystem, &selectionMade);

        if (!touchInput) {
            BOOL hasMoved = TRUE;
            PositionRect goodPosition = ctx->heldGood.position;

            if (JOY_REPEAT(PAD_KEY_LEFT)) {
                dX = -FX32_ONE * 16;
                dZ = 0;
                goodPosition.minX--;
                goodPosition.maxX--;
            } else if (JOY_REPEAT(PAD_KEY_RIGHT)) {
                dX = FX32_ONE * 16;
                dZ = 0;
                goodPosition.minX++;
                goodPosition.maxX++;
            } else if (JOY_REPEAT(PAD_KEY_UP)) {
                dX = 0;
                dZ = -FX32_ONE * 16;
                goodPosition.minZ--;
                goodPosition.maxZ--;
            } else if (JOY_REPEAT(PAD_KEY_DOWN)) {
                dX = 0;
                dZ = FX32_ONE * 16;
                goodPosition.minZ++;
                goodPosition.maxZ++;
            } else {
                hasMoved = FALSE;
            }

            if (hasMoved && !BaseDecoration_IsPositionOutOfBounds(&goodPosition)) {
                ctx->heldGood.position = goodPosition;

                VecFx32 propPosition;
                MapProp *mapProp = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, ctx->heldGood.propIndex);
                propPosition = MapProp_GetPosition(mapProp);
                propPosition.x += dX;
                propPosition.z += dZ;
                propPosition.y = FX32_ONE;

                MapProp_SetPosition(mapProp, &propPosition);
            }

            if (JOY_NEW(PAD_BUTTON_A)) {
                selectionMade = TRUE;
            } else if (JOY_NEW(PAD_BUTTON_B)) {
                BaseDecoration_ClearGoodProp(fieldSystem, ctx->heldGood.propIndex);
                ctx->subState = DECORATE_SUBSTATE_SELECT_GOOD;
                return FALSE;
            }
        }

        if (selectionMade) {
            if (BaseDecoration_CanPlaceGood(&ctx->heldGood, ctx->goodSlots)) {
                Underground *underground = SaveData_GetUnderground(ctx->fieldSystem->saveData);
                int index = BaseDecoration_PlaceGood(&ctx->heldGood, ctx->goodSlots);
                u32 slot = DecorationGoodsMenu_GetLastInput(ctx->decorationGoodsMenu);

                Underground_AddPlacedGood(underground, slot, index);
                Sound_PlayEffect(SEQ_SE_DP_BOWA);

                SecretBases_SetGoodNameForPrinter(ctx->heldGood.goodID);
                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_GoodWasPlaced);
                PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);

                ctx->placedGoodCount++;
                ctx->timer = 0;
                ctx->subState = DECORATE_SUBSTATE_EXIT_AFTER_TEXT;
                break;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT2);

                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantPlaceHere);
                ctx->timer = 0;
                ctx->subState = DECORATE_SUBSTATE_PLACE_GOOD_AFTER_TEXT;
            }
        }
        break;
    case DECORATE_SUBSTATE_PLACE_GOOD_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                ctx->subState = DECORATE_SUBSTATE_PLACE_GOOD;
            }
        }
        break;
    case DECORATE_SUBSTATE_EXIT_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
                return TRUE;
            }
        }
        break;
    case DECORATE_SUBSTATE_SELECT_GOOD_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                ctx->subState = DECORATE_SUBSTATE_SELECT_GOOD;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL BaseDecoration_PutAwayTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseDecorationContext *ctx = FieldTask_GetEnv(task);
    BOOL touchInput;
    BOOL selectionMade;

    switch (ctx->subState) {
    case PUT_AWAY_SUBSTATE_INIT:
        PropBlinkContext_Clear(&ctx->propBlinkCtx);
        DecorateCursor_Show(ctx->cursor);

        int index;
        BOOL found = BaseDecoration_FindGoodOccupyingCoordinates(ctx->cursor->x, ctx->cursor->z, ctx->goodSlots, &index);

        if (found) {
            PropBlinkContext_Init(ctx->goodSlots[index].good.propIndex, 8, &ctx->propBlinkCtx);
        }

        ctx->subState = PUT_AWAY_SUBSTATE_PICK_GOOD;
        break;
    case PUT_AWAY_SUBSTATE_PICK_GOOD:
        BOOL hasMoved = TRUE;

        BaseDecoration_HandlePropBlink(fieldSystem, &ctx->propBlinkCtx);

        touchInput = BaseDecoration_HandlePutAwayTouchInput(ctx, fieldSystem, &selectionMade);

        PositionRect cursorPosition;
        cursorPosition.minX = ctx->cursor->x;
        cursorPosition.maxX = ctx->cursor->x;
        cursorPosition.minZ = ctx->cursor->z;
        cursorPosition.maxZ = ctx->cursor->z;

        fx32 cursorModelX = ctx->cursor->modelPosition.x;
        fx32 cursorModelZ = ctx->cursor->modelPosition.z;

        if (!touchInput) {
            if (JOY_REPEAT(PAD_KEY_LEFT)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelX -= FX32_ONE * 16;
                cursorPosition.minX--;
                cursorPosition.maxX--;
            } else if (JOY_REPEAT(PAD_KEY_RIGHT)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelX += FX32_ONE * 16;
                cursorPosition.minX++;
                cursorPosition.maxX++;
            } else if (JOY_REPEAT(PAD_KEY_UP)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelZ -= FX32_ONE * 16;
                cursorPosition.minZ--;
                cursorPosition.maxZ--;
            } else if (JOY_REPEAT(PAD_KEY_DOWN)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelZ += FX32_ONE * 16;
                cursorPosition.minZ++;
                cursorPosition.maxZ++;
            } else {
                hasMoved = FALSE;
            }

            if (JOY_NEW(PAD_BUTTON_A)) {
                selectionMade = TRUE;
            } else if (JOY_NEW(PAD_BUTTON_B)) {
                DecorateCursor_Hide(ctx->cursor);
                PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
                return TRUE;
            }
        }

        if (hasMoved) {
            if (!BaseDecoration_IsPositionOutOfBounds(&cursorPosition)) {
                ctx->cursor->modelPosition.x = cursorModelX;
                ctx->cursor->modelPosition.z = cursorModelZ;
                ctx->cursor->x = cursorPosition.minX;
                ctx->cursor->z = cursorPosition.minZ;

                int index;
                BOOL found = BaseDecoration_FindGoodOccupyingCoordinates(ctx->cursor->x, ctx->cursor->z, ctx->goodSlots, &index);

                if (found) {
                    int propIndex = PropBlinkContext_GetPropIndex(&ctx->propBlinkCtx);

                    if (ctx->goodSlots[index].good.propIndex != propIndex) {
                        PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                        PropBlinkContext_Init(ctx->goodSlots[index].good.propIndex, 8, &ctx->propBlinkCtx);
                    }
                } else {
                    PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                    PropBlinkContext_Clear(&ctx->propBlinkCtx);
                }
            }
        }

        if (selectionMade) {
            GF_ASSERT(ctx->cursor->x < SECRET_BASE_WIDTH);
            GF_ASSERT(ctx->cursor->z < SECRET_BASE_DEPTH);

            int x = ctx->cursor->x;
            int z = ctx->cursor->z;
            int index;
            BOOL found = BaseDecoration_FindGoodOccupyingCoordinates(x, z, ctx->goodSlots, &index);

            if (found) {
                if (index != 0) {
                    SecretBases_SetGoodNameForPrinter(ctx->goodSlots[index].good.goodID);

                    if (ctx->goodSlots[index].good.goodID == UG_GOOD_BIG_BOULDER) {
                        if (ctx->unremovableBoulderCount == MAX_BASE_BOULDERS) {
                            ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantRemoveBigBoulder);
                            ctx->timer = 0;
                            ctx->subState = PUT_AWAY_SUBSTATE_PICK_GOOD_AFTER_TEXT;
                            break;
                        } else if (ctx->boulderCount - 1 < ctx->unremovableBoulderCount) {
                            ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantRemoveMoreBoulders);
                            ctx->timer = 0;
                            ctx->subState = PUT_AWAY_SUBSTATE_PICK_GOOD_AFTER_TEXT;
                            break;
                        } else {
                            Sound_PlayEffect(SEQ_SE_DP_F017);

                            ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_BigBoulderRemoved);
                            GF_ASSERT(ctx->boulderCount > 0);
                            ctx->boulderCount--;
                            ctx->timer = 0;
                            ctx->subState = PUT_AWAY_SUBSTATE_REMOVED_BOULDER;
                        }
                    } else {
                        Underground *underground = SaveData_GetUnderground(ctx->fieldSystem->saveData);

                        Sound_PlayEffect(SEQ_SE_DP_BOX02);
                        Underground_RemovePlacedGood(underground, index);

                        ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_GoodReturnedToPC);
                        GF_ASSERT(ctx->placedGoodCount > 0);
                        ctx->placedGoodCount--;
                        ctx->timer = 0;
                        ctx->subState = PUT_AWAY_SUBSTATE_REINIT_AFTER_TEXT;
                    }

                    BaseDecoration_ClearGoodProp(fieldSystem, ctx->goodSlots[index].good.propIndex);
                    BaseDecoration_RemoveGood(index, ctx->goodSlots);
                    DecorateCursor_Hide(ctx->cursor);
                    ctx->timer = 0;
                } else {
                    ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantPutAwayPC);
                    ctx->timer = 0;
                    ctx->subState = PUT_AWAY_SUBSTATE_PICK_GOOD_AFTER_TEXT;
                }
            }
        }
        break;
    case PUT_AWAY_SUBSTATE_REMOVED_BOULDER:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                int removableBoulderCount = ctx->boulderCount - ctx->unremovableBoulderCount;
                GF_ASSERT(removableBoulderCount >= 0);

                if (removableBoulderCount == 0) {
                    BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
                    return TRUE;
                } else {
                    ctx->timer = 0;
                    ctx->subState = PUT_AWAY_SUBSTATE_PRINT_REMAINING_BOULDERS;
                }
            }
        }
        break;
    case PUT_AWAY_SUBSTATE_REINIT_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                ctx->subState = PUT_AWAY_SUBSTATE_INIT;
                return TRUE;
            }
        }
        break;
    case PUT_AWAY_SUBSTATE_PICK_GOOD_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                ctx->subState = PUT_AWAY_SUBSTATE_PICK_GOOD;
            }
        }
        break;
    case PUT_AWAY_SUBSTATE_PRINT_REMAINING_BOULDERS:
        if (ctx->timer++ >= 10) {
            int removableBoulderCount = ctx->boulderCount - ctx->unremovableBoulderCount;
            SecretBases_SetTwoDigitNumberWithIndexForPrinter(removableBoulderCount, 0);

            if (removableBoulderCount == 1) {
                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CanRemove1MoreBoulder);
            } else {
                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CanRemoveXMoreBoulders);
            }

            ctx->timer = 0;
            ctx->subState = PUT_AWAY_SUBSTATE_EXIT_AFTER_TEXT;
        }
        break;
    case PUT_AWAY_SUBSTATE_EXIT_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
                return TRUE;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL BaseDecoration_SelectGoodToMoveTask(FieldTask *task)
{
    fx32 cursorModelX, cursorModelZ;
    BOOL touchInput;
    BOOL selectionMade;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseDecorationContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->subState) {
    case SELECT_MOVE_GOOD_SUBSTATE_INIT:
        PropBlinkContext_Clear(&ctx->propBlinkCtx);
        DecorateCursor_Show(ctx->cursor);

        int index;
        BOOL found = BaseDecoration_FindGoodOccupyingCoordinates(ctx->cursor->x, ctx->cursor->z, ctx->goodSlots, &index);

        if (found) {
            PropBlinkContext_Init(ctx->goodSlots[index].good.propIndex, 8, &ctx->propBlinkCtx);
        }

        ctx->subState = SELECT_MOVE_GOOD_SUBSTATE_MAIN;
        break;
    case SELECT_MOVE_GOOD_SUBSTATE_MAIN:
        BOOL hasMoved = TRUE;

        BaseDecoration_HandlePropBlink(fieldSystem, &ctx->propBlinkCtx);

        touchInput = BaseDecoration_HandleSelectGoodToMoveTouchInput(ctx, fieldSystem, &selectionMade);

        PositionRect cursorPosition;
        cursorPosition.minX = ctx->cursor->x;
        cursorPosition.maxX = ctx->cursor->x;
        cursorPosition.minZ = ctx->cursor->z;
        cursorPosition.maxZ = ctx->cursor->z;
        cursorModelX = ctx->cursor->modelPosition.x;
        cursorModelZ = ctx->cursor->modelPosition.z;

        if (!touchInput) {
            if (JOY_REPEAT(PAD_KEY_LEFT)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelX -= FX32_ONE * 16;
                cursorPosition.minX--;
                cursorPosition.maxX--;
            } else if (JOY_REPEAT(PAD_KEY_RIGHT)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelX += FX32_ONE * 16;
                cursorPosition.minX++;
                cursorPosition.maxX++;
            } else if (JOY_REPEAT(PAD_KEY_UP)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelZ -= FX32_ONE * 16;
                cursorPosition.minZ--;
                cursorPosition.maxZ--;
            } else if (JOY_REPEAT(PAD_KEY_DOWN)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                cursorModelZ += FX32_ONE * 16;
                cursorPosition.minZ++;
                cursorPosition.maxZ++;
            } else {
                hasMoved = FALSE;
            }

            if (JOY_NEW(PAD_BUTTON_A)) {
                selectionMade = TRUE;
            } else if (JOY_NEW(PAD_BUTTON_B)) {
                DecorateCursor_Hide(ctx->cursor);
                PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                BaseDecoration_UpdateState(DECORATION_STATE_MAIN_MENU, ctx);
                return TRUE;
            }
        }

        if (hasMoved) {
            if (!BaseDecoration_IsPositionOutOfBounds(&cursorPosition)) {
                ctx->cursor->modelPosition.x = cursorModelX;
                ctx->cursor->modelPosition.z = cursorModelZ;
                ctx->cursor->x = cursorPosition.minX;
                ctx->cursor->z = cursorPosition.minZ;

                int index;
                BOOL found = BaseDecoration_FindGoodOccupyingCoordinates(ctx->cursor->x, ctx->cursor->z, ctx->goodSlots, &index);

                if (found) {
                    int propIndex = PropBlinkContext_GetPropIndex(&ctx->propBlinkCtx);

                    if (ctx->goodSlots[index].good.propIndex != propIndex) {
                        PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                        PropBlinkContext_Init(ctx->goodSlots[index].good.propIndex, 8, &ctx->propBlinkCtx);
                    }
                } else {
                    PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                    PropBlinkContext_Clear(&ctx->propBlinkCtx);
                }
            }
        }

        if (selectionMade) {
            GF_ASSERT(ctx->cursor->x < SECRET_BASE_WIDTH);
            GF_ASSERT(ctx->cursor->z < SECRET_BASE_DEPTH);

            int x = ctx->cursor->x;
            int z = ctx->cursor->z;
            int index;
            BOOL found = BaseDecoration_FindGoodOccupyingCoordinates(x, z, ctx->goodSlots, &index);

            if (found) {
                if (index != 0) {
                    if (ctx->goodSlots[index].good.goodID == UG_GOOD_BIG_BOULDER) {
                        ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantMoveBigBoulder);
                        ctx->timer = 0;
                        ctx->subState = SELECT_MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT;
                    } else {
                        BaseDecoration_SetHeldGood(index, ctx);
                        BaseDecoration_SetMovedGood(index, ctx);
                        BaseDecoration_RemoveGood(index, ctx->goodSlots);
                        Sound_PlayEffect(SEQ_SE_DP_BOX02);
                        DecorateCursor_Hide(ctx->cursor);
                        BaseDecoration_UpdateState(DECORATION_STATE_MOVE_SELECTED_GOOD, ctx);
                        return TRUE;
                    }
                } else {
                    ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantMovePC);
                    ctx->timer = 0;
                    ctx->subState = SELECT_MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT;
                }
            }
        }
        break;
    case SELECT_MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                ctx->subState = SELECT_MOVE_GOOD_SUBSTATE_MAIN;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL BaseDecoration_MoveSelectedGoodTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseDecorationContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->subState) {
    case MOVE_GOOD_SUBSTATE_INIT:
        PropBlinkContext_Clear(&ctx->propBlinkCtx);
        PropBlinkContext_Init(ctx->heldGood.propIndex, 4, &ctx->propBlinkCtx);
        ctx->subState = MOVE_GOOD_SUBSTATE_MAIN;
        break;
    case MOVE_GOOD_SUBSTATE_MAIN:
        BaseDecoration_HandlePropBlink(fieldSystem, &ctx->propBlinkCtx);
        BOOL selectionMade;
        BOOL touchInput = BaseDecoration_HandleMoveSelectedGoodTouchInput(ctx, fieldSystem, &selectionMade);

        if (!touchInput) {
            fx32 dX, dZ;
            BOOL hasMoved = TRUE;
            PositionRect goodPosition = ctx->heldGood.position;

            if (JOY_REPEAT(PAD_KEY_LEFT)) {
                dX = -FX32_ONE * 16;
                dZ = 0;
                goodPosition.minX--;
                goodPosition.maxX--;
            } else if (JOY_REPEAT(PAD_KEY_RIGHT)) {
                dX = FX32_ONE * 16;
                dZ = 0;
                goodPosition.minX++;
                goodPosition.maxX++;
            } else if (JOY_REPEAT(PAD_KEY_UP)) {
                dX = 0;
                dZ = -FX32_ONE * 16;
                goodPosition.minZ--;
                goodPosition.maxZ--;
            } else if (JOY_REPEAT(PAD_KEY_DOWN)) {
                dX = 0;
                dZ = FX32_ONE * 16;
                goodPosition.minZ++;
                goodPosition.maxZ++;
            } else {
                hasMoved = FALSE;
            }

            if (hasMoved) {
                if (!BaseDecoration_IsPositionOutOfBounds(&goodPosition)) {
                    VecFx32 propPosition;

                    ctx->heldGood.position = goodPosition;
                    MapProp *mapProp = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, ctx->heldGood.propIndex);
                    propPosition = MapProp_GetPosition(mapProp);
                    propPosition.x += dX;
                    propPosition.z += dZ;
                    propPosition.y = FX32_ONE;

                    MapProp_SetPosition(mapProp, &propPosition);
                }
            }

            if (JOY_NEW(PAD_BUTTON_A)) {
                selectionMade = TRUE;
            } else if (JOY_NEW(PAD_BUTTON_B)) {
                BaseDecoration_SetGoodAtIndex(&ctx->movedGood.data, ctx->movedGood.index, ctx->goodSlots);
                BaseDecoration_UpdateMovedGoodProp(ctx);
                PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                BaseDecoration_UpdateState(DECORATION_STATE_SELECT_GOOD_TO_MOVE, ctx);
                return TRUE;
            }
        }

        if (selectionMade) {
            if (BaseDecoration_CanPlaceGood(&ctx->heldGood, ctx->goodSlots)) {
                BaseDecoration_SetGoodAtIndex(&ctx->heldGood, ctx->movedGood.index, ctx->goodSlots);
                Sound_PlayEffect(SEQ_SE_DP_BOWA);
                DecorateCursor_SetPosition(ctx->heldGood.position.minX, ctx->heldGood.position.minZ, ctx->cursor);
                PropBlinkContext_ShowProp(fieldSystem, &ctx->propBlinkCtx);
                ctx->timer = 0;
                ctx->subState = MOVE_GOOD_SUBSTATE_EXIT_AFTER_TEXT;
                break;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT2);

                ctx->printerID = SecretBases_PrintBaseDecorationMessage(UndergroundBaseDecoration_Text_CantPlaceHere);
                ctx->timer = 0;
                ctx->subState = MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT;
            }
        }
        break;
    case MOVE_GOOD_SUBSTATE_WAIT_FOR_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                ctx->subState = MOVE_GOOD_SUBSTATE_MAIN;
            }
        }
        break;
    case MOVE_GOOD_SUBSTATE_EXIT_AFTER_TEXT:
        if (!Text_IsPrinterActive(ctx->printerID)) {
            if (ctx->timer++ >= 30) {
                SecretBases_EraseBaseDecorationMessageBox();
                BaseDecoration_UpdateState(DECORATION_STATE_SELECT_GOOD_TO_MOVE, ctx);
                return TRUE;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL BaseDecoration_CanPlaceGood(const DecorationGood *good, const BaseGoodSlot goodSlots[])
{
    for (int i = 0; i < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1; i++) {
        if (goodSlots[i].active == TRUE) {
            if (BaseDecoration_AreGoodsOverlapping(&goodSlots[i].good.position, &good->position)) {
                return FALSE;
            }
        }
    }

    PositionRect tilesInFrontOfPC = { .minX = PC_COORDINATE_X, .minZ = PC_COORDINATE_Z + 1, .maxX = PC_COORDINATE_X + 1, .maxZ = PC_COORDINATE_Z + 1 };

    if (BaseDecoration_AreGoodsOverlapping(&good->position, &tilesInFrontOfPC)) {
        return FALSE;
    }

    PositionRect tileInFrontOfExit = { .minX = BASE_EXIT_X, .minZ = BASE_EXIT_Z - 1, .maxX = BASE_EXIT_X, .maxZ = BASE_EXIT_Z - 1 };

    if (BaseDecoration_AreGoodsOverlapping(&good->position, &tileInFrontOfExit)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL BaseDecoration_FindGoodOccupyingCoordinates(int x, int z, const BaseGoodSlot goodSlots[], int *outIndex)
{
    for (int i = 0; i < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1; i++) {
        if (goodSlots[i].active == TRUE) {
            if (BaseDecoration_AreCoordinatesInsideGood(&goodSlots[i].good.position, x, z)) {
                *outIndex = i;
                return TRUE;
            }
        }
    }

    *outIndex = MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1;
    return FALSE;
}

static BOOL BaseDecoration_IsPositionOutOfBounds(const PositionRect *position)
{
    if (SECRET_BASE_PLAYABLE_AREA_START_X <= position->minX && position->maxX <= SECRET_BASE_PLAYABLE_AREA_MAX_X
        && SECRET_BASE_PLAYABLE_AREA_START_Z <= position->minZ && position->maxZ <= SECRET_BASE_PLAYABLE_AREA_MAX_Z) {
        return FALSE;
    } else {
        return TRUE;
    }
}

static int BaseDecoration_PlaceGood(const DecorationGood *good, BaseGoodSlot goodSlots[])
{
    for (int i = 0; i < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1; i++) {
        if (!goodSlots[i].active) {
            goodSlots[i].active = TRUE;
            goodSlots[i].good = *good;

            return i;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static void BaseDecoration_SetGoodAtIndex(const DecorationGood *good, int index, BaseGoodSlot goodSlots[])
{
    GF_ASSERT(index < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1);
    GF_ASSERT(!goodSlots[index].active);

    goodSlots[index].active = TRUE;
    goodSlots[index].good = *good;
}

static void BaseDecoration_RemoveGood(int index, BaseGoodSlot goodSlots[])
{
    GF_ASSERT(index < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1);
    GF_ASSERT(index != 0);
    GF_ASSERT(goodSlots[index].active);

    goodSlots[index].good.propIndex = 0;
    goodSlots[index].good.position.minX = 0;
    goodSlots[index].good.position.minZ = 0;
    goodSlots[index].good.position.maxX = 0;
    goodSlots[index].good.position.maxZ = 0;
    goodSlots[index].good.goodID = UG_GOOD_NONE;
    goodSlots[index].active = FALSE;
}

static BOOL BaseDecoration_AreGoodsOverlapping(const PositionRect *good1Position, const PositionRect *good2Position)
{
    return good1Position->minX <= good2Position->maxX && good2Position->minX <= good1Position->maxX && good1Position->minZ <= good2Position->maxZ && good2Position->minZ <= good1Position->maxZ;
}

static BOOL BaseDecoration_AreCoordinatesInsideGood(const PositionRect *goodPosition, int x, int z)
{
    return goodPosition->minX <= x && x <= goodPosition->maxX && goodPosition->minZ <= z && z <= goodPosition->maxZ;
}

static void BaseDecoration_LoadBaseGoods(FieldSystem *fieldSystem, BaseDecorationContext *ctx, BaseGoodSlot goodSlots[])
{
    SecretBase *secretBase = SaveData_GetSecretBase(fieldSystem->saveData);

    ctx->placedGoodCount = 0;
    ctx->boulderCount = 0;
    ctx->unremovableBoulderCount = SecretBase_GetUnremovableBoulderCount(secretBase);
    ctx->maxPlacedGoods = SecretBase_GetPlacedGoodsLimit(secretBase);

    for (int i = 0; i < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1; i++) {
        int goodID = SecretBase_GetGoodIDAtIndex(secretBase, i);

        if (goodID != UG_GOOD_NONE) {
            if (goodID == UG_GOOD_BIG_BOULDER) {
                ctx->boulderCount++;
            } else if (goodID != UG_GOOD_PC_NORMAL_FLAG && goodID != UG_GOOD_PC_BRONZE_FLAG && goodID != UG_GOOD_PC_SILVER_FLAG && goodID != UG_GOOD_PC_GOLD_FLAG && goodID != UG_GOOD_PC_PLATINUM_FLAG) {
                ctx->placedGoodCount++;
            }

            int x = SecretBase_GetGoodXCoordAtIndex(secretBase, i);
            int z = SecretBase_GetGoodZCoordAtIndex(secretBase, i);

            BaseDecoration_AddGoodAtIndex(i, goodID, x, z, goodSlots);
        }
    }
}

static void BaseDecoration_AddGoodAtIndex(int index, int goodID, int x, int z, BaseGoodSlot goodSlots[])
{
    DecorationGood good;

    good.propIndex = 0;
    good.goodID = goodID;
    good.position.minX = x;
    good.position.minZ = z;

    good.width = Good_GetWidth(goodID);
    good.depth = Good_GetDepth(goodID);

    good.position.maxX = x + (good.width - 1);
    good.position.maxZ = z + (good.depth - 1);

    goodSlots[index].good = good;
    goodSlots[index].active = TRUE;
}

static void BaseDecoration_LoadGoodMapProp(FieldSystem *fieldSystem, BaseGoodSlot goodSlots[])
{
    MapPropManager_Init(fieldSystem->mapPropManager);

    for (int i = 0; i < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1; i++) {
        if (!goodSlots[i].active) {
            continue;
        }

        DecorationGood *good = &goodSlots[i].good;

        int modelID = BaseDecoration_GetGoodMapPropModelID(fieldSystem, good->goodID);
        int width = good->width;
        int depth = good->depth;

        VecFx32 position;
        position.x = (FX32_ONE * 16) * good->position.minX + (FX32_ONE * 8) * width;
        position.z = (FX32_ONE * 16) * good->position.minZ + (FX32_ONE * 8) * depth;
        position.y = FX32_ONE;

        good->propIndex = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, modelID, &position, NULL, fieldSystem->mapPropAnimMan);
    }
}

static void BaseDecoration_SaveBaseGoods(FieldSystem *fieldSystem, const BaseGoodSlot goodSlots[])
{
    int goodID;
    int x, z;
    SecretBase *secretBase = SaveData_GetSecretBase(fieldSystem->saveData);

    for (int i = 0; i < MAX_PLACED_GOODS + MAX_BASE_BOULDERS + 1; i++) {
        if (goodSlots[i].active == TRUE) {
            goodID = goodSlots[i].good.goodID;
            x = goodSlots[i].good.position.minX;
            z = goodSlots[i].good.position.minZ;
        } else {
            goodID = UG_GOOD_NONE;
            x = 0;
            z = 0;
        }

        SecretBase_AddGoodAtIndex(secretBase, i, goodID, x, z);
    }
}

static int BaseDecoration_GetGoodMapPropModelID(FieldSystem *fieldSystem, int goodID)
{
    GF_ASSERT(goodID != UG_GOOD_NONE);
    return AreaDataManager_GetMapPropModelID(fieldSystem->areaDataManager, goodID);
}

static void BaseDecoration_SetMovedGood(int index, BaseDecorationContext *ctx)
{
    GF_ASSERT(ctx->goodSlots[index].active);

    DecorationGood *good = &ctx->goodSlots[index].good;
    MapProp *mapProp = MapPropManager_GetLoadedPropSafely(ctx->fieldSystem->mapPropManager, good->propIndex);

    ctx->movedGood.propPosition = MapProp_GetPosition(mapProp);
    ctx->movedGood.index = index;
    ctx->movedGood.data = *good;
}

static void BaseDecoration_UpdateMovedGoodProp(BaseDecorationContext *ctx)
{
    int index = ctx->movedGood.index;
    GF_ASSERT(ctx->goodSlots[index].active);

    DecorationGood *good = &ctx->movedGood.data;
    MapProp *mapProp = MapPropManager_GetLoadedPropSafely(ctx->fieldSystem->mapPropManager, good->propIndex);

    MapProp_SetPosition(mapProp, &ctx->movedGood.propPosition);
}

static void BaseDecoration_UpdateState(int newState, BaseDecorationContext *ctx)
{
    ctx->state = newState;
    ctx->subState = 0;
}

static void DecorateCursor_Init(DecorateCursor *cursor)
{
    NNSG3dResMdl *model;
    Easy3D_InitRenderObjFromPath(HEAP_ID_FIELD1, "data/ug_base_cur.nsbmd", &cursor->renderObj, &model, &cursor->modelFile);

    cursor->modelPosition.x = 0;
    cursor->modelPosition.y = 0;
    cursor->modelPosition.z = 0;
    cursor->x = 0;
    cursor->z = 0;
    cursor->visible = FALSE;
}

static void DecorateCursor_FreeModelFile(DecorateCursor *cursor)
{
    Heap_Free(cursor->modelFile);
}

static void DecorateCursor_Show(DecorateCursor *cursor)
{
    cursor->visible = TRUE;
}

static void DecorateCursor_SetPosition(int x, int z, DecorateCursor *cursor)
{
    cursor->x = x;
    cursor->z = z;
    cursor->modelPosition.x = (FX32_ONE * 16) * x + (FX32_ONE * 8);
    cursor->modelPosition.y = FX32_ONE;
    cursor->modelPosition.z = (FX32_ONE * 16) * z + (FX32_ONE * 8);
}

static void DecorateCursor_Hide(DecorateCursor *cursor)
{
    cursor->visible = FALSE;
}

static void BaseDecoration_StoreTouchCoordinates(int touchX, int touchY, DecorationTouchInput *touchInput)
{
    if (touchX != (u16)TOUCHSCREEN_INPUT_NONE) {
        touchInput->x = touchX;
    }

    if (touchY != (u16)TOUCHSCREEN_INPUT_NONE) {
        touchInput->z = touchY;
    }
}

static void BaseDecoration_UpdatePropPositionFromTouchInput(FieldSystem *fieldSystem, DecorationGood *good, DecorationTouchInput *touchInput)
{
    PositionRect goodPosition;
    VecFx32 propPosition;
    UnkStruct_ov5_021EB0E0 *v6 = fieldSystem->unk_8C;

    BaseDecoration_StoreTouchCoordinates(gSystem.touchX, gSystem.touchY, touchInput);

    propPosition = ov5_021EAFA4(touchInput->x, touchInput->z, v6);
    int x = propPosition.x / (FX32_ONE * 16);
    int z = propPosition.z / (FX32_ONE * 16);

    int width = good->width;
    int depth = good->depth;

    goodPosition.minX = x % SECRET_BASE_WIDTH;
    goodPosition.minZ = z % SECRET_BASE_DEPTH;
    goodPosition.maxX = goodPosition.minX + (width - 1);
    goodPosition.maxZ = goodPosition.minZ + (depth - 1);

    if (!BaseDecoration_IsPositionOutOfBounds(&goodPosition)) {
        good->position = goodPosition;

        propPosition.x = x * (FX32_ONE * 16);
        propPosition.z = z * (FX32_ONE * 16);

        propPosition.x += (FX32_ONE * 8) * width;
        propPosition.z += (FX32_ONE * 8) * depth;
        propPosition.y = FX32_ONE;

        MapProp *mapProp = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, good->propIndex);
        MapProp_SetPosition(mapProp, &propPosition);
    }
}

static void BaseDecoration_UpdateCursorPositionFromTouchInput(FieldSystem *fieldSystem, DecorationTouchInput *touchInput, DecorateCursor *cursor)
{
    PositionRect position;
    VecFx32 modelPosition;
    UnkStruct_ov5_021EB0E0 *v4 = fieldSystem->unk_8C;

    BaseDecoration_StoreTouchCoordinates(gSystem.touchX, gSystem.touchY, touchInput);

    modelPosition = ov5_021EAFA4(touchInput->x, touchInput->z, v4);
    int x = modelPosition.x / (FX32_ONE * 16);
    int z = modelPosition.z / (FX32_ONE * 16);

    position.minX = x % SECRET_BASE_WIDTH;
    position.minZ = z % SECRET_BASE_DEPTH;
    position.maxX = position.minX;
    position.maxZ = position.minZ;

    if (!BaseDecoration_IsPositionOutOfBounds(&position)) {
        modelPosition.x = x * (FX32_ONE * 16) + (FX32_ONE * 8);
        modelPosition.z = z * (FX32_ONE * 16) + (FX32_ONE * 8);
        modelPosition.y = FX32_ONE;

        cursor->modelPosition = modelPosition;
        cursor->x = x;
        cursor->z = z;
    }
}

static BOOL BaseDecoration_HandleDecorateTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade)
{
    BOOL touchInput = FALSE;
    *outSelectionMade = FALSE;

    if (gSystem.touchPressed) {
        if (!gSystem.heldKeys) {
            ctx->touchInput.active = TRUE;
            BaseDecoration_UpdatePropPositionFromTouchInput(fieldSystem, &ctx->heldGood, &ctx->touchInput);
        }

        touchInput = TRUE;
    } else if (gSystem.touchHeld) {
        if (ctx->touchInput.active) {
            BaseDecoration_UpdatePropPositionFromTouchInput(fieldSystem, &ctx->heldGood, &ctx->touchInput);
        }

        touchInput = TRUE;
    } else {
        if (ctx->touchInput.active) {
            ctx->touchInput.active = FALSE;
            *outSelectionMade = TRUE;
        }
    }

    return touchInput;
}

static BOOL BaseDecoration_HandlePutAwayTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade)
{
    BOOL touchInput = FALSE;
    *outSelectionMade = FALSE;

    if (gSystem.touchPressed) {
        if (!gSystem.heldKeys) {
            ctx->touchInput.active = TRUE;
            BaseDecoration_UpdateCursorPositionFromTouchInput(fieldSystem, &ctx->touchInput, ctx->cursor);
        }

        touchInput = TRUE;
    } else if (gSystem.touchHeld) {
        if (ctx->touchInput.active) {
            BaseDecoration_UpdateCursorPositionFromTouchInput(fieldSystem, &ctx->touchInput, ctx->cursor);
        }

        touchInput = TRUE;
    } else {
        if (ctx->touchInput.active) {
            ctx->touchInput.active = FALSE;
            *outSelectionMade = TRUE;
        }
    }

    return touchInput;
}

static BOOL BaseDecoration_HandleSelectGoodToMoveTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade)
{
    BOOL touchInput = FALSE;
    *outSelectionMade = FALSE;

    if (gSystem.touchPressed) {
        if (!gSystem.heldKeys) {
            ctx->touchInput.active = TRUE;
            *outSelectionMade = TRUE;
            BaseDecoration_UpdateCursorPositionFromTouchInput(fieldSystem, &ctx->touchInput, ctx->cursor);
        }

        touchInput = TRUE;
    } else {
        ctx->touchInput.active = FALSE;
    }

    return touchInput;
}

static BOOL BaseDecoration_HandleMoveSelectedGoodTouchInput(BaseDecorationContext *ctx, FieldSystem *fieldSystem, BOOL *outSelectionMade)
{
    BOOL touchInput = FALSE;
    *outSelectionMade = FALSE;

    if (gSystem.touchPressed) {
        if (!gSystem.heldKeys) {
            ctx->touchInput.active = TRUE;
            BaseDecoration_UpdatePropPositionFromTouchInput(fieldSystem, &ctx->heldGood, &ctx->touchInput);
        }

        touchInput = TRUE;
    } else if (gSystem.touchHeld) {
        if (ctx->touchInput.active) {
            BaseDecoration_UpdatePropPositionFromTouchInput(fieldSystem, &ctx->heldGood, &ctx->touchInput);
        }

        touchInput = TRUE;
    } else {
        if (ctx->touchInput.active) {
            ctx->touchInput.active = FALSE;
            *outSelectionMade = TRUE;
        }
    }

    return touchInput;
}

static void PropBlinkContext_Clear(PropBlinkContext *ctx)
{
    ctx->timer = 0;
    ctx->interval = 0;
    ctx->propIndex = (u16)PROP_NONE;
    ctx->hidden = FALSE;
    ctx->active = FALSE;
}

static void PropBlinkContext_Init(int propIndex, int interval, PropBlinkContext *ctx)
{
    ctx->timer = 0;
    ctx->interval = interval;
    ctx->propIndex = propIndex;
    ctx->hidden = FALSE;
    ctx->active = TRUE;
}

static void BaseDecoration_HandlePropBlink(FieldSystem *fieldSystem, PropBlinkContext *ctx)
{
    if (!ctx->active) {
        return;
    }

    ctx->timer++;

    if (ctx->timer >= ctx->interval) {
        ctx->timer = 0;
        ctx->hidden = (ctx->hidden + 1) % 2;
        MapProp *mapProp = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, ctx->propIndex);
        MapProp_SetHidden(mapProp, ctx->hidden);
    }
}

static void PropBlinkContext_ShowProp(FieldSystem *fieldSystem, PropBlinkContext *ctx)
{
    if (!ctx->active) {
        return;
    }

    MapProp *mapProp = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, ctx->propIndex);
    MapProp_SetHidden(mapProp, FALSE);
}

static int PropBlinkContext_GetPropIndex(PropBlinkContext *ctx)
{
    return ctx->propIndex;
}

static void ov23_022562AC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    DecorateCursor *cursor = (DecorateCursor *)param2;
    DecorateCursor_Init(cursor);
}

static void ov23_022562B8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    return;
}

static void ov23_022562BC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    DecorateCursor *cursor = (DecorateCursor *)(param2);
    DecorateCursor_FreeModelFile(cursor);
}

static void ov23_022562C8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    DecorateCursor *cursor = (DecorateCursor *)(param2);

    if (!cursor->visible) {
        return;
    }

    // clang-format off
    MtxFx33 rot = {
        FX32_ONE, 0, 0,
        0, FX32_ONE, 0,
        0, 0, FX32_ONE
    };
    // clang-format on
    VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };

    Easy3D_DrawRenderObj(&cursor->renderObj, &cursor->modelPosition, &rot, &scale);
}
