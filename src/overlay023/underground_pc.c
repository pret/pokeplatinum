#include "overlay023/underground_pc.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/map_object.h"

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02254A14.h"
#include "overlay023/underground_item_list_menu.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_text_printer.h"
#include "overlay023/underground_traps.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "list_menu.h"
#include "location.h"
#include "menu.h"
#include "message.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "scroll_prompts.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "unk_0202854C.h"
#include "unk_02033200.h"
#include "vars_flags.h"

#include "res/text/bank/underground_capture_flag.h"
#include "res/text/bank/underground_common.h"
#include "res/text/bank/underground_pc.h"

#define SECRET_BASE_WIDTH  32
#define SECRET_BASE_HEIGHT 32

#define PC_COORDINATE_X 15
#define PC_COORDINATE_Z 12

enum UndergroundPCMenuState {
    UG_PC_MENU_STATE_INIT = 0,
    UG_PC_MENU_STATE_MAIN,
    UG_PC_MENU_STATE_EXIT,
    UG_PC_MENU_STATE_DECORATE,
    UG_PC_MENU_STATE_INIT_CHECK_FLAGS = 6,
    UG_PC_MENU_STATE_CHECK_FLAGS,
    UG_PC_MENU_STATE_INIT_RADAR_MENU,
    UG_PC_MENU_STATE_RADAR_MENU_MAIN,
    UG_PC_MENU_STATE_START_TREASURE_RADAR,
    UG_PC_MENU_STATE_TREASURE_RADAR_NOT_AVAILABLE,
    UG_PC_MENU_STATE_START_SPHERE_RADAR,
    UG_PC_MENU_STATE_SPHERE_RADAR_NOT_AVAILABLE,
    UG_PC_MENU_STATE_START_TRAP_RADAR,
    UG_PC_MENU_STATE_TRAP_RADAR_NOT_AVAILABLE,
    UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS,
    UG_PC_MENU_STATE_INIT_STORE_GOODS,
    UG_PC_MENU_STATE_STORE_GOODS,
    UG_PC_MENU_STATE_STORE_GOODS_WAIT_FOR_MESSAGE,
    UG_PC_MENU_STATE_INIT_WITHDRAW_GOODS,
    UG_PC_MENU_STATE_WITHDRAW_GOODS,
    UG_PC_MENU_STATE_WITHDRAW_GOODS_WAIT_FOR_MESSAGE,
    UG_PC_MENU_STATE_WAIT_FOR_MESSAGE,
};

enum UndergroundPCMenuOption {
    UG_PC_MENU_OPTION_DECORATE = 0,
    UG_PC_MENU_OPTION_STORE_GOODS,
    UG_PC_MENU_OPTION_RECEIVE_GOODS,
    UG_PC_MENU_OPTION_CHECK_FLAGS,
    UG_PC_MENU_OPTION_USE_RADAR,
};

enum RadarMenuOption {
    RADAR_MENU_OPTION_TREASURE = 0,
    RADAR_MENU_OPTION_SPHERE,
    RADAR_MENU_OPTION_TRAP,
};

enum TakeFlagPromptState {
    TAKE_FLAG_PROMPT_STATE_INIT = 0,
    TAKE_FLAG_PROMPT_STATE_MAIN,
    TAKE_FLAG_PROMPT_STATE_EXIT,
};

enum DecorateState {
    DECORATE_STATE_FADE = 0,
    DECORATE_STATE_UPDATE_CAMERA,
    DECORATE_STATE_START,
    DECORATE_STATE_MAIN,
    DECORATE_STATE_REVERT_CAMERA,
    DECORATE_STATE_END,
};

typedef struct PCInteraction {
    u8 playerNetID;
    u8 pcNetID;
    u8 canTakeFlag;
} PCInteraction;

typedef struct DecorateContext {
    int state;
    int dummy;
    u8 unused;
} DecorateContext;

typedef struct TakeFlagPromptContext {
    int state;
    FieldSystem *fieldSystem;
    Menu *menu;
    PCInteraction pcInteraction;
    SysTask *sysTask;
} TakeFlagPromptContext;

static void UndergroundPC_StartTakeFlagPromptTask(FieldSystem *fieldSystem, PCInteraction *pcInteraction);
static void UndergroundPC_OpenPCMenu(FieldSystem *fieldSystem);
static void UndergroundPC_UpdateCursorPos(UndergroundMenu *menu);

static const WindowTemplate sWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 6,
    .height = 4,
    .palette = 13,
    .baseTile = 543,
};

int UndergroundPC_GetPCAtCoordinates(Coordinates *coordinates, int dir)
{
    int netID;
    int x = coordinates->x;
    int z = coordinates->z;
    int modifier = 0;

    if (dir != DIR_NONE && dir != DIR_NORTH) {
        return PC_NONE;
    }

    if (z == PC_COORDINATE_Z) {
        modifier = 0;
    } else if (z == PC_COORDINATE_Z + SECRET_BASE_HEIGHT) {
        modifier = MAX_CONNECTED_PLAYERS; // bug: would lead to out of bounds array access
    } else {
        return PC_NONE;
    }

    if (x == PC_COORDINATE_X || x == PC_COORDINATE_X + 1) {
        return 0;
    }

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (x == PC_COORDINATE_X + SECRET_BASE_WIDTH || x == PC_COORDINATE_X + 1 + SECRET_BASE_WIDTH) {
            return netID + modifier;
        }

        x -= SECRET_BASE_WIDTH;
    }

    return PC_NONE;
}

BOOL UndergroundPC_TryUsePC(int netID, Coordinates *coordinates)
{
    int pcNetID = UndergroundPC_GetPCAtCoordinates(coordinates, CommPlayer_DirServer(netID));

    if (CommPlayer_Dir(pcNetID) == DIR_NONE) {
        pcNetID = PC_NONE;
    }

    if (pcNetID != PC_NONE) {
        sub_02059058(netID, FALSE);

        PCInteraction pcInteraction;
        pcInteraction.pcNetID = pcNetID;
        pcInteraction.playerNetID = netID;
        pcInteraction.canTakeFlag = FALSE;

        if (pcNetID != netID) {
            if (!ov23_IsPlayerHoldingFlag(netID)) {
                pcInteraction.canTakeFlag = TRUE;
            }
        } else {
            if (ov23_IsPlayerHoldingFlag(netID)) {
                u8 v5 = 3; // TODO: label this when below function is documented
                ov23_0224A570(netID, 1, &v5, NULL);
                return TRUE;
            }
        }

        sub_02035B48(83, &pcInteraction);
        return TRUE;
    }

    return FALSE;
}

static void UndergroundPC_ResumeFieldSystem(int unused)
{
    CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_LINK_PC);
}

void UndergroundPC_ProcessPCInteraction(int unused0, int unused1, void *data, void *data2)
{
    PCInteraction *pcInteraction = data;
    FieldSystem *fieldSystem = data2;

    if (!CommSys_IsSendingMovementData()) {
        return;
    }

    if (pcInteraction->playerNetID == CommSys_CurNetId()) {
        if (pcInteraction->pcNetID == CommSys_CurNetId()) {
            Sound_PlayEffect(SEQ_SE_DP_PC_ON);
            CommPlayerMan_PauseFieldSystem();
            UndergroundPC_OpenPCMenu(fieldSystem);
        } else {
            CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_LINK_PC);

            if (pcInteraction->canTakeFlag) {
                UndergroundPC_StartTakeFlagPromptTask(fieldSystem, pcInteraction);
            } else {
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_YouAlreadyHaveFlag, TRUE, UndergroundPC_ResumeFieldSystem);
            }
        }
    }
}

int CommPacketSizeOf_PCInteraction(void)
{
    return sizeof(PCInteraction);
}

static BOOL UndergroundPC_TryDepositGood(int slot, UndergroundMenu *menu)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));
    int goodID = Underground_GetGoodAtSlotBag(underground, slot);

    if (Underground_TryAddGoodPC(underground, goodID)) {
        Underground_RemoveGoodAtSlotBag(underground, slot);
        return TRUE;
    }

    return FALSE;
}

static int UndergroundPC_TryWithdrawGood(int slot, UndergroundMenu *menu)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));

    if (Underground_IsGoodAtSlotPlacedInBase(underground, slot)) {
        return -1;
    }

    int goodID = Underground_GetGoodAtSlotPC(underground, slot);

    if (UndergroundInventory_TryAddGoodBag(goodID)) {
        Underground_RemoveGoodAtSlotPC(underground, slot);
        return TRUE;
    }

    return FALSE;
}

static void UndergroundPC_PrintMenuItemDescription(ListMenu *listMenu, u32 menuItemIdx, u8 unused)
{
    ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    int index = menuItemIdx;

    if (menuItemIdx == LIST_CANCEL) {
        index = UndergroundPC_Text_ExitDescription - UndergroundPC_Text_DecorateDescription;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_DecorateDescription + index, FALSE, NULL);
}

static void UndergroundPC_PrintRadarMenuItemDescription(ListMenu *listMenu, u32 menuItemIdx, u8 unused)
{
    ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    int index = menuItemIdx;

    if (menuItemIdx == LIST_CANCEL) {
        index = UndergroundPC_Text_CancelDescription - UndergroundPC_Text_TreasureSearchDescription;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_TreasureSearchDescription + index, FALSE, NULL);
}

static BOOL UndergroundPC_HandleMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->unk_48);
    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->unk_48, &listPos, &cursorPos);

    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_PC, cursorPos, listPos);
    UndergroundPC_UpdateCursorPos(menu);

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF);
        menu->state = UG_PC_MENU_STATE_EXIT;
        break;
    case UG_PC_MENU_OPTION_DECORATE:
        Underground *underground = SaveData_GetUnderground(menu->fieldSystem->saveData);

        if (Underground_GetGoodsCountPC(underground) == 0) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_StoreGoodsBeforeDecorating, FALSE, NULL);
            menu->state = UG_PC_MENU_STATE_WAIT_FOR_MESSAGE;
        } else if (CommServerClient_IsInClosedSecretBase()) {
            CommManUnderground_ClearCurrentSysTaskInfo();
            menu->state = UG_PC_MENU_STATE_DECORATE;
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_CantDecorateWithEntranceOpen, FALSE, NULL);
            menu->state = UG_PC_MENU_STATE_WAIT_FOR_MESSAGE;
        }
        break;
    case UG_PC_MENU_OPTION_USE_RADAR:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->state = UG_PC_MENU_STATE_INIT_RADAR_MENU;
        break;
    case UG_PC_MENU_OPTION_CHECK_FLAGS:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->state = UG_PC_MENU_STATE_INIT_CHECK_FLAGS;
        break;
    case UG_PC_MENU_OPTION_STORE_GOODS:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->state = UG_PC_MENU_STATE_INIT_STORE_GOODS;
        break;
    case UG_PC_MENU_OPTION_RECEIVE_GOODS:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->state = UG_PC_MENU_STATE_INIT_WITHDRAW_GOODS;
        break;
    default:
        break;
    }

    return TRUE;
}

static void UndergroundPC_InitMenu(UndergroundMenu *menu, int startBankEntry, int optionCount, CursorCallback cursorCallback, int unused)
{
    int trueOptionCount = optionCount + 1;
    BOOL radarEnabled = TRUE;

    if (UndergroundRecord_GetFlagRank(SaveData_UndergroundRecord(menu->fieldSystem->saveData)) < BASE_FLAG_GOLD) {
        radarEnabled = FALSE;
        trueOptionCount -= 1;
    }

    UndergroundMenu_EraseCurrentMenu(menu);

    menu->menuOptions = StringList_New(trueOptionCount, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 17, 3, 14, trueOptionCount * 2, 13, 2);
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_PC, HEAP_ID_FIELD1);

    for (int i = 0; i < trueOptionCount; i++) {
        if (i == trueOptionCount - 1) {
            StringList_AddFromMessageBank(menu->menuOptions, loader, startBankEntry + (UndergroundPC_Text_Exit - UndergroundPC_Text_Decorate), LIST_CANCEL);
        } else {
            StringList_AddFromMessageBank(menu->menuOptions, loader, startBankEntry + i, i);
        }
    }

    MessageLoader_Free(loader);

    ListMenuTemplate template;
    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &template, sizeof(ListMenuTemplate));

    template.count = trueOptionCount;
    template.maxDisplay = trueOptionCount;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;

    if (cursorCallback) {
        template.cursorCallback = cursorCallback;
    }

    template.parent = menu;
    UndergroundMenu_MoveListCursorPosInBounds(menu, trueOptionCount, template.count);
    menu->unk_48 = ListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1);
}

static void UndergroundPC_InitRadarMenu(UndergroundMenu *menu, int startBankEntry, int optionCount, CursorCallback cursorCallback, int unused)
{
    int trueOptionCount = optionCount + 1;

    UndergroundMenu_EraseCurrentMenu(menu);

    menu->menuOptions = StringList_New(trueOptionCount, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 17, 3, 14, trueOptionCount * 2, 13, 2 + 14 * 16);
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_PC, HEAP_ID_FIELD1);

    for (int i = 0; i < trueOptionCount; i++) {
        if (i == optionCount) {
            StringList_AddFromMessageBank(menu->menuOptions, loader, startBankEntry + i, LIST_CANCEL);
        } else {
            StringList_AddFromMessageBank(menu->menuOptions, loader, startBankEntry + i, i);
        }
    }

    MessageLoader_Free(loader);

    ListMenuTemplate template;
    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &template, sizeof(ListMenuTemplate));

    template.count = optionCount + 1;
    template.maxDisplay = trueOptionCount;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;

    if (cursorCallback) {
        template.cursorCallback = cursorCallback;
    }

    template.parent = menu;
    UndergroundMenu_MoveListCursorPosInBounds(menu, trueOptionCount, template.count);
    menu->unk_48 = ListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1);
}

static BOOL UndergroundPC_HandleRadarMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->unk_48);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->unk_48, &listPos, &cursorPos);

    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_PC_RADAR, cursorPos, listPos);
    UndergroundPC_UpdateCursorPos(menu);

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->state = UG_PC_MENU_STATE_INIT;
        break;
    case RADAR_MENU_OPTION_TREASURE:
        if (CommServerClient_IsInClosedSecretBase()) {
            menu->state = UG_PC_MENU_STATE_TREASURE_RADAR_NOT_AVAILABLE;
        } else {
            menu->state = UG_PC_MENU_STATE_START_TREASURE_RADAR;
        }
        break;
    case RADAR_MENU_OPTION_SPHERE:
        if (CommServerClient_IsInClosedSecretBase()) {
            menu->state = UG_PC_MENU_STATE_SPHERE_RADAR_NOT_AVAILABLE;
        } else {
            menu->state = UG_PC_MENU_STATE_START_SPHERE_RADAR;
        }
        break;
    case RADAR_MENU_OPTION_TRAP:
        if (CommServerClient_IsInClosedSecretBase()) {
            menu->state = UG_PC_MENU_STATE_TRAP_RADAR_NOT_AVAILABLE;
        } else {
            menu->state = UG_PC_MENU_STATE_START_TRAP_RADAR;
        }
        break;
    default:
        menu->state = UG_PC_MENU_STATE_EXIT;
        break;
    }

    return TRUE;
}

static BOOL UndergroundPC_HandleStoreGoodsMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_STORE_GOODS, cursorPos, listPos);

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        UndergroundMenu_UpdateScrollPrompts(menu, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), 6);
        return FALSE;
    case LIST_CANCEL:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        menu->state = UG_PC_MENU_STATE_INIT;
        break;
    default:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        u32 goodID = UndergroundMenu_GetGoodAtSlotBag(input, menu);

        if (UndergroundPC_TryDepositGood(input, menu)) {
            UndergroundTextPrinter_SetUndergroundGoodsName(CommManUnderground_GetMiscTextPrinter(), goodID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_GoodWasStored, FALSE, NULL);
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_PCIsFull, FALSE, NULL);
        }

        menu->state = UG_PC_MENU_STATE_STORE_GOODS_WAIT_FOR_MESSAGE;
        UndergroundMenu_EraseCurrentMenu(menu);
        break;
    }

    return TRUE;
}

static BOOL UndergroundPC_HandleWithdrawGoodsMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_WITHDRAW_GOODS, cursorPos, listPos);

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        UndergroundMenu_UpdateScrollPrompts(menu, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), 6);
        return FALSE;
    case LIST_CANCEL:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        menu->state = UG_PC_MENU_STATE_INIT;
        break;
    default:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        u32 goodID = UndergroundMenu_GetGoodAtSlotPC(input, menu);
        int withdrawResult = UndergroundPC_TryWithdrawGood(input, menu);

        if (withdrawResult == 1) {
            UndergroundTextPrinter_SetUndergroundGoodsName(CommManUnderground_GetMiscTextPrinter(), goodID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_GoodWasWithdrawn, FALSE, NULL);
        } else if (withdrawResult == -1) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_CantWithdrawDisplayedGood, FALSE, NULL);
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_BagIsFull, FALSE, NULL);
        }

        menu->state = 22;
        UndergroundMenu_EraseCurrentMenu(menu);
        break;
    }

    ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
    ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);

    return TRUE;
}

static BOOL UndergroundPC_IsMessageClosed(UndergroundMenu *unused)
{
    if (!UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter())) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
            return TRUE;
        }
    }

    return FALSE;
}

static void UndergroundPC_MoveCamera(BOOL isDecorating, FieldSystem *fieldSystem)
{
    VecFx32 delta;

    delta.y = 0;
    delta.x = 15 * FX32_ONE * 16 - Player_GetXPos(fieldSystem->playerAvatar) * FX32_ONE * 16;
    delta.z = 17 * FX32_ONE * 16 - Player_GetZPos(fieldSystem->playerAvatar) * FX32_ONE * 16;

    if (!isDecorating) {
        delta.x = -delta.x;
        delta.z = -delta.z;
    }

    Camera_Move(&delta, fieldSystem->camera);
}

static BOOL UndergroundPC_DecorateTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    DecorateContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->state) {
    case DECORATE_STATE_FADE:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ctx->state = DECORATE_STATE_UPDATE_CAMERA;
        break;
    case DECORATE_STATE_UPDATE_CAMERA:
        if (IsScreenFadeDone()) {
            PlayerAvatar_SetVisible(fieldSystem->playerAvatar, FALSE);

            UndergroundPC_MoveCamera(TRUE, fieldSystem);
            ctx->state = DECORATE_STATE_START;
        }
        break;
    case DECORATE_STATE_START:
        ov23_02254D98(fieldSystem, task);
        ctx->state = DECORATE_STATE_MAIN;
        break;
    case DECORATE_STATE_MAIN:
        ctx->state = DECORATE_STATE_REVERT_CAMERA;
        break;
    case DECORATE_STATE_REVERT_CAMERA:
        PlayerAvatar_SetVisible(fieldSystem->playerAvatar, TRUE);
        UndergroundPC_MoveCamera(FALSE, fieldSystem);
        StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ctx->state = DECORATE_STATE_END;
        break;
    case DECORATE_STATE_END:
        if (IsScreenFadeDone()) {
            ov23_0224B2C8(fieldSystem);
            SystemFlag_SetDecoratedSecretBase(SaveData_GetVarsFlags(fieldSystem->saveData));
            UndergroundPC_OpenPCMenu(fieldSystem);
            Heap_Free(ctx);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void UndergroundPC_ExitPCMenu(SysTask *sysTask, UndergroundMenu *menu)
{
    String_Free(menu->string);
    String_Free(menu->fmtString);
    StringTemplate_Free(menu->template);

    if (menu->exitCallback != NULL) {
        menu->exitCallback(0);
    }

    if (menu->scrollPrompts) {
        ScrollPrompts_Free(menu->scrollPrompts);
        menu->scrollPrompts = NULL;
    }

    UndergroundMenu_EraseCurrentMenu(menu);
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());

    SysTask_Done(sysTask);
    Heap_Free(menu);
}

static void UndergroundPC_Main(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;
    DecorateContext *decorateCtx;

    switch (menu->state) {
    case UG_PC_MENU_STATE_INIT:
        UndergroundMenu_RemoveDescriptionWindowInstant(menu);
        menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_PC);
        menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_PC);
        menu->unk_2AE = menu->listMenuCursorPos;
        UndergroundPC_InitMenu(menu, UndergroundPC_Text_Decorate, 5, UndergroundPC_PrintMenuItemDescription, 0);
        menu->state = UG_PC_MENU_STATE_MAIN;
        break;
    case UG_PC_MENU_STATE_MAIN:
        UndergroundPC_HandleMenu(sysTask, menu);
        break;
    case UG_PC_MENU_STATE_EXIT:
        CommPlayerMan_ResumeFieldSystem();
        CommManUnderground_ClearCurrentSysTaskInfo();
        UndergroundPC_ExitPCMenu(sysTask, menu);
        break;
    case UG_PC_MENU_STATE_INIT_CHECK_FLAGS:
        UndergroundMenu_EraseCurrentMenu(menu);
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
        menu->unk_270 = ov23_02253C64(menu->fieldSystem->bgConfig, SaveData_GetTrainerInfo(FieldSystem_GetSaveData(menu->fieldSystem)), SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem)), NULL, NULL);
        menu->state = UG_PC_MENU_STATE_CHECK_FLAGS;
        break;
    case UG_PC_MENU_STATE_CHECK_FLAGS:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov23_02253D10(menu->unk_270);
            menu->unk_270 = NULL;
            menu->state = UG_PC_MENU_STATE_INIT;
        }
        break;
    case UG_PC_MENU_STATE_INIT_RADAR_MENU:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
        menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_PC_RADAR);
        menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_PC_RADAR);
        menu->unk_2AE = menu->listMenuCursorPos;
        UndergroundPC_InitRadarMenu(menu, UndergroundPC_Text_TreasureSearch, 3, UndergroundPC_PrintRadarMenuItemDescription, 1);
        menu->state = UG_PC_MENU_STATE_RADAR_MENU_MAIN;
        break;
    case UG_PC_MENU_STATE_RADAR_MENU_MAIN:
        UndergroundPC_HandleRadarMenu(sysTask, menu);
        break;
    case UG_PC_MENU_STATE_START_TREASURE_RADAR:
        UndergroundMenu_EraseCurrentMenu(menu);
        CommManUnderground_SetTreasureRadarActive();
        ov23_022412F0();
        BrightnessController_StartTransition(1, -6, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_TreasureRadarBootedUp, FALSE, NULL);
        menu->state = UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS;
        break;
    case UG_PC_MENU_STATE_TREASURE_RADAR_NOT_AVAILABLE:
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_TreasureRadarEntranceClosed, FALSE, NULL);
        menu->state = UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS;
        break;
    case UG_PC_MENU_STATE_START_SPHERE_RADAR:
        UndergroundMenu_EraseCurrentMenu(menu);
        CommManUnderground_SetSphereRadarActive();
        SphereRadar_Start();
        BrightnessController_StartTransition(1, -6, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_SphereRadarBootedUp, FALSE, NULL);
        menu->state = UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS;
        break;
    case UG_PC_MENU_STATE_SPHERE_RADAR_NOT_AVAILABLE:
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_SphereRadarEntranceClosed, FALSE, NULL);
        menu->state = UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS;
        break;
    case UG_PC_MENU_STATE_START_TRAP_RADAR:
        UndergroundMenu_EraseCurrentMenu(menu);
        CommManUnderground_SetTrapRadarActive();
        TrapRadar_Start();
        BrightnessController_StartTransition(1, -6, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_TrapRadarBootedUp, FALSE, NULL);
        menu->state = UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS;
        break;
    case UG_PC_MENU_STATE_TRAP_RADAR_NOT_AVAILABLE:
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), UndergroundPC_Text_TrapRadarEntranceClosed, FALSE, NULL);
        menu->state = UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS;
        break;
    case UG_PC_MENU_STATE_EXIT_RADAR_ON_BUTTON_PRESS:
        if (!UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                if (!CommServerClient_IsInClosedSecretBase()) {
                    BrightnessController_StartTransition(1, 0, -6, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
                }

                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());

                if (CommServerClient_IsInClosedSecretBase()) {
                    ov23_02242FA8();
                } else {
                    ov23_02242FBC();
                }

                TrapRadar_Exit();
                ov23_02241364();
                SphereRadar_Exit();

                menu->state = UG_PC_MENU_STATE_INIT_RADAR_MENU;
            }
        }
        break;
    case UG_PC_MENU_STATE_DECORATE:
        if (menu->fieldSystem->task == NULL) {
            decorateCtx = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(DecorateContext));
            MI_CpuClear8(decorateCtx, sizeof(DecorateContext));
            decorateCtx->state = 0;
            decorateCtx->dummy = 0;
            FieldSystem_CreateTask(menu->fieldSystem, UndergroundPC_DecorateTask, decorateCtx);
        }

        UndergroundPC_ExitPCMenu(sysTask, menu);
        break;
    case UG_PC_MENU_STATE_INIT_STORE_GOODS:
        menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_STORE_GOODS);
        menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_STORE_GOODS);
        UndergroundMenu_OpenStoreGoodsMenu(menu);
        UndergroundMenu_PrintMenuDescription(menu, UndergroundPC_Text_GoodsOnHand);
        menu->state = UG_PC_MENU_STATE_STORE_GOODS;
        break;
    case UG_PC_MENU_STATE_STORE_GOODS:
        UndergroundPC_HandleStoreGoodsMenu(sysTask, menu);
        break;
    case UG_PC_MENU_STATE_STORE_GOODS_WAIT_FOR_MESSAGE:
        if (UndergroundPC_IsMessageClosed(menu)) {
            menu->state = UG_PC_MENU_STATE_INIT_STORE_GOODS;
        }
        break;
    case UG_PC_MENU_STATE_INIT_WITHDRAW_GOODS:
        menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_WITHDRAW_GOODS);
        menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_WITHDRAW_GOODS);
        UndergroundMenu_OpenWithdrawGoodsMenu(menu);
        UndergroundMenu_PrintMenuDescription(menu, UndergroundPC_Text_GoodsInPC);
        menu->state = UG_PC_MENU_STATE_WITHDRAW_GOODS;
        break;
    case UG_PC_MENU_STATE_WITHDRAW_GOODS:
        UndergroundPC_HandleWithdrawGoodsMenu(sysTask, menu);
        break;
    case UG_PC_MENU_STATE_WITHDRAW_GOODS_WAIT_FOR_MESSAGE:
        if (UndergroundPC_IsMessageClosed(menu)) {
            menu->state = UG_PC_MENU_STATE_INIT_WITHDRAW_GOODS;
        }
        break;
    case UG_PC_MENU_STATE_WAIT_FOR_MESSAGE:
        if (UndergroundPC_IsMessageClosed(menu)) {
            menu->state = UG_PC_MENU_STATE_INIT;
        }
        break;
    }
}

static void UndergroundPC_OpenPCMenu(FieldSystem *fieldSystem)
{
    const int unused = 6;

    CommManUnderground_SetStoredPosKey(UNDERGROUND_STORED_POS_KEY_PC);

    UndergroundMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));
    MI_CpuFill8(menu, 0, sizeof(UndergroundMenu));
    menu->fieldSystem = fieldSystem;

    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetMiscTextPrinter(), TEXT_BANK_UNDERGROUND_PC, MSG_LOADER_LOAD_ON_DEMAND);

    menu->state = UG_PC_MENU_STATE_INIT;
    menu->string = String_Init(50 * 2, HEAP_ID_FIELD1);
    menu->fmtString = String_Init(50 * 2, HEAP_ID_FIELD1);
    menu->template = StringTemplate_Default(HEAP_ID_FIELD1);
    menu->scrollPrompts = ScrollPrompts_New(HEAP_ID_FIELD1);

    ScrollPrompts_SetPosition(menu->scrollPrompts, 200, 20, 122);
    ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
    ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);

    menu->sysTask = SysTask_Start(UndergroundPC_Main, menu, 10000);

    CommManUnderground_SetCurrentSysTask(menu, menu->sysTask, UndergroundMenu_ResetBrightnessAndExit);
}

static void UndergroundPC_TakeFlagPromptTask(SysTask *sysTask, void *data)
{
    TakeFlagPromptContext *ctx = data;

    switch (ctx->state) {
    case TAKE_FLAG_PROMPT_STATE_INIT:
        if (!UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(ctx->fieldSystem->bgConfig, &sWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = TAKE_FLAG_PROMPT_STATE_MAIN;
        }
        break;
    case TAKE_FLAG_PROMPT_STATE_MAIN:
        int input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == MENU_NOTHING_CHOSEN) {
            return;
        } else if (input == 0) {
            CommSys_SendDataFixedSize(89, &ctx->pcInteraction);
        } else {
            CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_LINK_PC);
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        }

        ctx->state = TAKE_FLAG_PROMPT_STATE_EXIT;
        ctx->menu = NULL;
        break;
    case TAKE_FLAG_PROMPT_STATE_EXIT:
        Heap_Free(ctx);
        CommManUnderground_ClearCurrentSysTaskInfo();
        SysTask_Done(sysTask);
        break;
    }
}

static void UndergroundPC_EndFlagPromptTask(SysTask *sysTask, void *data)
{
    TakeFlagPromptContext *ctx = data;

    if (ctx->menu) {
        Menu_DestroyForExit(ctx->menu, HEAP_ID_FIELD1);
    }

    Heap_Free(ctx);
    SysTask_Done(sysTask);
}

static void UndergroundPC_StartTakeFlagPromptTask(FieldSystem *fieldSystem, PCInteraction *pcInteraction)
{
    TakeFlagPromptContext *ctx = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));

    MI_CpuFill8(ctx, 0, sizeof(TakeFlagPromptContext));

    ctx->state = TAKE_FLAG_PROMPT_STATE_INIT;
    ctx->fieldSystem = fieldSystem;
    ctx->sysTask = SysTask_Start(UndergroundPC_TakeFlagPromptTask, ctx, 10000);

    UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCommonTextPrinter(), CommInfo_TrainerInfo(pcInteraction->pcNetID));
    UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_TakeFlagPrompt, FALSE, NULL);

    ctx->pcInteraction.playerNetID = pcInteraction->playerNetID;
    ctx->pcInteraction.pcNetID = pcInteraction->pcNetID;
    ctx->pcInteraction.canTakeFlag = pcInteraction->canTakeFlag;

    CommManUnderground_SetCurrentSysTask(ctx, ctx->sysTask, UndergroundPC_EndFlagPromptTask);
}

void UndergroundPC_ProcessTakeFlagAttempt(int unused0, int unused1, void *data, void *unused3)
{
    PCInteraction *pcInteraction = data;

    if (ov23_TryTakeFlag(pcInteraction->playerNetID, pcInteraction->pcNetID)) {
        sub_02035B48(90, pcInteraction);
    }
}

void UndergroundPC_ProcessTakenFlag(int unused0, int unused1, void *data, void *unused3)
{
    PCInteraction *pcInteraction = data;

    if (CommSys_CurNetId() == pcInteraction->playerNetID) {
        UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCaptureFlagTextPrinter(), CommInfo_TrainerInfo(pcInteraction->pcNetID));
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_YouObtainedFlag, TRUE, UndergroundPC_ResumeFieldSystem);
        Sound_PlayBGM(SEQ_HATANIGE);
    }

    ov23_TryTakeFlag(pcInteraction->playerNetID, pcInteraction->pcNetID);
    ov23_0224D500(pcInteraction->playerNetID, pcInteraction->pcNetID);
}

static void UndergroundPC_UpdateCursorPos(UndergroundMenu *menu)
{
    u16 prevPos = menu->unk_2AE;
    ListMenu_CalcTrueCursorPos(menu->unk_48, &menu->unk_2AE);

    if (prevPos != menu->unk_2AE) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}
