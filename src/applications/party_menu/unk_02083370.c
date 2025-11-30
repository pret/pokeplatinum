#include "applications/party_menu/unk_02083370.h"

#include <nitro.h>
#include <string.h>

#include "generated/items.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/windows.h"
#include "field/field_system.h"
#include "overlay118/ov118_021D0D80.h"

#include "bag.h"
#include "bg_window.h"
#include "field_move_tasks.h"
#include "font.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_02097624.h"

#include "res/text/bank/party_menu.h"

static void sub_02083AD0(PartyMenuApplication *param0, int *param1);
static void sub_0208472C(PartyMenuApplication *param0, int *param1);
static void sub_02084808(PartyMenuApplication *param0, int *param1);
static void sub_02083E8C(PartyMenuApplication *param0, u8 param1);
static void sub_02083FDC(PartyMenuApplication *param0, u8 param1, u8 param2);
static void sub_02084134(PartyMenuApplication *param0);
static void sub_02084420(PartyMenuApplication *param0, u8 param1);
static void sub_020848A8(PartyMenuApplication *param0, int *param1);
static void sub_020848C0(PartyMenuApplication *param0, int *param1);
static void sub_020848D8(PartyMenuApplication *param0, int *param1);
static void sub_020848F0(PartyMenuApplication *param0, int *param1);
static void sub_02084908(PartyMenuApplication *param0, int *param1);
static void sub_02084920(PartyMenuApplication *param0, int *param1);
static void sub_02084938(PartyMenuApplication *param0, int *param1);
static void sub_02084950(PartyMenuApplication *param0, int *param1);
static void sub_02084968(PartyMenuApplication *param0, int *param1);
static void sub_02084980(PartyMenuApplication *param0, int *param1);
static void sub_02084998(PartyMenuApplication *param0, int *param1);
static void sub_020849B0(PartyMenuApplication *param0, int *param1);
static void sub_020849C8(PartyMenuApplication *param0, int *param1);
static void sub_020849E0(PartyMenuApplication *param0, int *param1);
static void sub_020849FC(PartyMenuApplication *param0, int *param1);
static int sub_02084A18(PartyMenuApplication *param0);
static void sub_02084760(PartyMenuApplication *param0, int *param1);
static void sub_020833BC(PartyMenuApplication *param0, int *param1);
static void sub_0208347C(PartyMenuApplication *param0, int *param1);
static void sub_020834B0(PartyMenuApplication *param0, int *param1);
static void sub_02083700(PartyMenuApplication *param0, int *param1);
static void sub_020837C0(PartyMenuApplication *param0, int *param1);
static void sub_020837F4(PartyMenuApplication *param0, int *param1);
static int sub_0208384C(void *param0);
static int sub_020838C4(void *param0);
static int sub_020838F4(void *param0);
static int sub_02083990(void *param0);
static void sub_020846CC(PartyMenuApplication *param0, int *param1);
static void sub_020844B0(PartyMenuApplication *param0, int *param1);
static void sub_020845E8(PartyMenuApplication *param0, int *param1);
static void sub_020846FC(PartyMenuApplication *param0, int *param1);
static void sub_020839FC(PartyMenuApplication *param0, int *param1);

static const u32 Unk_020F2458[] = {
    (const u32)sub_02083AD0,
    (const u32)sub_0208472C,
    (const u32)sub_020833BC,
    (const u32)sub_0208347C,
    (const u32)sub_020834B0,
    (const u32)sub_02083700,
    (const u32)sub_020837C0,
    (const u32)sub_020837F4,
    (const u32)sub_020839FC,
    0xFFFFFFFE,
    0xFFFFFFFE,
    (const u32)sub_020844B0,
    (const u32)sub_020845E8,
    (const u32)sub_020846CC,
    (const u32)sub_02084760,
    (const u32)sub_020846FC,
    (const u32)sub_020848A8,
    (const u32)sub_02084938,
    (const u32)sub_020848F0,
    (const u32)sub_020848D8,
    (const u32)sub_02084908,
    (const u32)sub_020848C0,
    (const u32)sub_02084950,
    (const u32)sub_02084920,
    (const u32)sub_02084968,
    (const u32)sub_02084980,
    (const u32)sub_02084998,
    (const u32)sub_020849B0,
    (const u32)sub_020849C8,
    (const u32)sub_020849E0,
    (const u32)sub_020849FC,
    0xFFFFFFFE
};

u32 sub_02083370(u8 param0)
{
    return Unk_020F2458[param0];
}

void sub_0208337C(PartyMenuApplication *param0)
{
    Window_EraseStandardFrame(&param0->menuWindows[0], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->menuWindows[0]);
    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);
    Window_Remove(&param0->menuWindows[0]);
}

static void sub_020833BC(PartyMenuApplication *param0, int *param1)
{
    MenuTemplate v0;

    sub_0208337C(param0);
    PartyMenu_PrintMediumMessage(param0, pl_msg_00000453_00038, FALSE);

    param0->contextMenuChoices = StringList_New(3, HEAP_ID_PARTY_MENU);

    StringList_AddFromStrbuf(param0->contextMenuChoices, param0->menuStrings[3], sub_02083370(3));
    StringList_AddFromStrbuf(param0->contextMenuChoices, param0->menuStrings[4], sub_02083370(4));
    StringList_AddFromStrbuf(param0->contextMenuChoices, param0->menuStrings[9], sub_02083370(9));

    v0.choices = param0->contextMenuChoices;
    v0.window = &param0->windows[35];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_DrawStandardFrame(&param0->windows[35], 1, 1, 14);

    param0->contextMenu = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void sub_0208347C(PartyMenuApplication *param0, int *param1)
{
    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);

    param0->partyMenu->menuSelectionResult = 3;
    *param1 = 32;
}

static void sub_020834B0(PartyMenuApplication *param0, int *param1)
{
    Pokemon *mon;
    int v1;
    int v2 = 17;
    FieldSystem *fieldSystem;

    Window_EraseStandardFrame(&param0->windows[35], 1);
    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);

    fieldSystem = param0->partyMenu->fieldSystem;

    if (param0->partyMembers[param0->currPartySlot].heldItem == ITEM_NONE) {
        mon = Party_GetPokemonBySlotIndex(param0->partyMenu->party, param0->currPartySlot);
        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00081, param0->tmpFormat);
        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(param0->template, param0->tmpString, param0->tmpFormat);
    } else if (Bag_TryAddItem(param0->partyMenu->bag, param0->partyMembers[param0->currPartySlot].heldItem, 1, HEAP_ID_PARTY_MENU) == TRUE) {
        u32 v4;

        mon = Party_GetPokemonBySlotIndex(param0->partyMenu->party, param0->currPartySlot);
        v4 = 0;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &v4);
        Pokemon_SetArceusForm(mon);

        if ((fieldSystem == NULL) || (fieldSystem->location->mapId < 573) || (fieldSystem->location->mapId > 583)) {
            v1 = Pokemon_SetGiratinaFormByHeldItem(mon);

            if ((param0->partyMembers[param0->currPartySlot].heldItem == ITEM_GRISEOUS_ORB) && (v1 == 0)) {
                v2 = 18;
            }
        }

        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00082, param0->tmpFormat);
        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_SetItemName(param0->template, 1, param0->partyMembers[param0->currPartySlot].heldItem);
        StringTemplate_Format(param0->template, param0->tmpString, param0->tmpFormat);

        param0->partyMembers[param0->currPartySlot].heldItem = ITEM_NONE;

        PartyMenu_DrawMemberHeldItem(param0, param0->currPartySlot, param0->partyMembers[param0->currPartySlot].heldItem);
    } else {
        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00083, param0->tmpString);
    }

    Window_DrawMessageBoxWithScrollCursor(&param0->windows[34], 1, (1 + 9), 15);
    Window_FillTilemap(&param0->windows[34], 15);
    PartyMenu_AddLongMessagePrinter(param0);

    *param1 = v2;
}

int sub_02083658(PartyMenuApplication *param0)
{
    if (Text_IsPrinterActive(param0->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&param0->windows[34], 1);
            PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00029, TRUE);
            Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            return 1;
        }
    }

    return 17;
}

int sub_020836A8(PartyMenuApplication *param0)
{
    if (Text_IsPrinterActive(param0->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&param0->windows[34], 1);
            LoadOverlay118(param0);
            return 19;
        }
    }

    return 18;
}

int sub_020836E4(PartyMenuApplication *param0)
{
    if (ov118_021D0DBC(param0) == 1) {
        UnloadOverlay118(param0);
        return 17;
    }

    return 19;
}

static void sub_02083700(PartyMenuApplication *param0, int *param1)
{
    MenuTemplate v0;

    sub_0208337C(param0);
    PartyMenu_PrintMediumMessage(param0, pl_msg_00000453_00039, FALSE);

    param0->contextMenuChoices = StringList_New(3, HEAP_ID_PARTY_MENU);

    StringList_AddFromStrbuf(param0->contextMenuChoices, param0->menuStrings[6], sub_02083370(6));
    StringList_AddFromStrbuf(param0->contextMenuChoices, param0->menuStrings[7], sub_02083370(7));
    StringList_AddFromStrbuf(param0->contextMenuChoices, param0->menuStrings[9], sub_02083370(9));

    v0.choices = param0->contextMenuChoices;
    v0.window = &param0->windows[35];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_DrawStandardFrame(&param0->windows[35], 1, 1, 14);

    param0->contextMenu = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void sub_020837C0(PartyMenuApplication *param0, int *param1)
{
    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);

    param0->partyMenu->menuSelectionResult = 7;
    *param1 = 32;
}

static void sub_020837F4(PartyMenuApplication *param0, int *param1)
{
    Window_EraseStandardFrame(&param0->windows[35], 1);
    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);
    PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00043, TRUE);

    param0->unk_B04.unk_00 = sub_0208384C;
    param0->unk_B04.unk_04 = sub_020838C4;
    param0->unk_B0E = 26;
    *param1 = 24;
}

static int sub_0208384C(void *param0)
{
    PartyMenuApplication *v0 = param0;
    Pokemon *v1;

    v0 = param0;
    v1 = Party_GetPokemonBySlotIndex(v0->partyMenu->party, v0->currPartySlot);

    if (sub_02097788(v0->partyMenu->mailbox, v1, HEAP_ID_PARTY_MENU) != 0xFFFFFFFF) {
        v0->partyMembers[v0->currPartySlot].heldItem = ITEM_NONE;
        PartyMenu_DrawMemberHeldItem(v0, v0->currPartySlot, v0->partyMembers[v0->currPartySlot].heldItem);
        PartyMenu_PrintLongMessage(v0, pl_msg_00000453_00046, FALSE);
    } else {
        PartyMenu_PrintLongMessage(v0, pl_msg_00000453_00050, FALSE);
    }

    v0->unk_B0E = 20;

    return 24;
}

static int sub_020838C4(void *param0)
{
    PartyMenuApplication *v0 = param0;

    PartyMenu_PrintLongMessage(v0, pl_msg_00000453_00047, FALSE);

    v0->unk_B04.unk_00 = sub_020838F4;
    v0->unk_B04.unk_04 = sub_02083990;
    v0->unk_B0E = 26;

    return 24;
}

static int sub_020838F4(void *param0)
{
    PartyMenuApplication *v0 = param0;

    if (Bag_TryAddItem(v0->partyMenu->bag, v0->partyMembers[v0->currPartySlot].heldItem, 1, HEAP_ID_PARTY_MENU) == TRUE) {
        Pokemon *mon;
        u32 item;

        mon = Party_GetPokemonBySlotIndex(v0->partyMenu->party, v0->currPartySlot);
        item = 0;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
        Pokemon_SetArceusForm(mon);
        Pokemon_SetGiratinaFormByHeldItem(mon);

        v0->partyMembers[v0->currPartySlot].heldItem = ITEM_NONE;

        PartyMenu_DrawMemberHeldItem(v0, v0->currPartySlot, v0->partyMembers[v0->currPartySlot].heldItem);
        PartyMenu_PrintLongMessage(v0, pl_msg_00000453_00051, FALSE);
    } else {
        PartyMenu_PrintLongMessage(v0, pl_msg_00000453_00083, FALSE);
    }

    v0->unk_B0E = 20;

    return 24;
}

static int sub_02083990(void *param0)
{
    PartyMenuApplication *v0 = param0;

    Window_EraseMessageBox(&v0->windows[34], 1);
    PartyMenu_PrintShortMessage(v0, pl_msg_00000453_00029, TRUE);
    Sprite_SetExplicitPalette2(v0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    return 1;
}

int sub_020839BC(PartyMenuApplication *param0)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->windows[34], 1);
        PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00029, TRUE);
        Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    }

    return 20;
}

static void sub_020839FC(PartyMenuApplication *param0, int *param1)
{
    if (param0->partyMembers[param0->currPartySlot].ballSeal == 0) {
        Menu_Free(param0->contextMenu, NULL);
        StringList_Free(param0->contextMenuChoices);
        param0->partyMenu->menuSelectionResult = 0;
        *param1 = 32;
        return;
    }

    sub_0208337C(param0);
    PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00195, TRUE);

    param0->unk_B04.unk_00 = sub_02083A78;
    param0->unk_B04.unk_04 = sub_02083AA4;
    param0->unk_B0E = 26;
    *param1 = 24;
}

int sub_02083A78(void *param0)
{
    PartyMenuApplication *v0 = param0;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(v0->partyMenu->party, v0->currPartySlot);

    Pokemon_ClearBallCapsuleData(v1);

    v0->partyMenu->menuSelectionResult = 0;
    return 32;
}

int sub_02083AA4(void *param0)
{
    PartyMenuApplication *v0 = param0;

    Window_EraseMessageBox(&v0->windows[34], 1);
    PartyMenu_PrintShortMessage(v0, pl_msg_00000453_00029, TRUE);
    Sprite_SetExplicitPalette2(v0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    return 1;
}

static void sub_02083AD0(PartyMenuApplication *param0, int *param1)
{
    s16 v0, v1;

    param0->inSwitchMode = 1;
    param0->switchTargetSlot = param0->currPartySlot;

    Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
    Sprite_GetPositionXY(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], &v0, &v1);
    Sprite_SetPositionXY(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], v0, v1);
    Sprite_SetAnim(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], PartyMenu_GetMemberPanelAnim(param0->partyMenu->type, param0->switchTargetSlot) + 2);
    Sprite_SetDrawFlag(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], TRUE);
    PartyMenu_UpdateSlotPalette(param0, param0->switchTargetSlot);
    Window_EraseMessageBox(&param0->windows[33], 1);
    sub_0208337C(param0);
    PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00030, TRUE);

    *param1 = 28;
}

void sub_02083B88(PartyMenuApplication *param0)
{
    param0->inSwitchMode = 0;
    Sprite_SetDrawFlag(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);

    if (param0->currPartySlot < 6) {
        PartyMenu_UpdateSlotPalette(param0, param0->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(param0, param0->switchTargetSlot);
    PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00029, TRUE);
}

void sub_02083BD4(PartyMenuApplication *param0)
{
    u16 *v0;
    u16 *v1;
    s8 v2, v3, v4, v5;
    u16 v6;

    param0->orderSwitch.slots[0] = param0->currPartySlot;
    param0->orderSwitch.slots[1] = param0->switchTargetSlot;
    param0->orderSwitch.inProgress = TRUE;
    param0->orderSwitch.unk_306 = 0;
    param0->orderSwitch.unk_305 = 0;

    if (param0->orderSwitch.slots[0] & 1) {
        param0->orderSwitch.unk_302[0] = 1;
    } else {
        param0->orderSwitch.unk_302[0] = 0;
    }

    if (param0->orderSwitch.slots[1] & 1) {
        param0->orderSwitch.unk_302[1] = 1;
    } else {
        param0->orderSwitch.unk_302[1] = 0;
    }

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, 2);
    v1 = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, 1);

    v2 = param0->partyMembers[param0->orderSwitch.slots[0]].panelXPos;
    v3 = param0->partyMembers[param0->orderSwitch.slots[0]].panelYPos;
    v4 = param0->partyMembers[param0->orderSwitch.slots[1]].panelXPos;
    v5 = param0->partyMembers[param0->orderSwitch.slots[1]].panelYPos;

    for (v6 = 0; v6 < 6; v6++) {
        memcpy(&param0->orderSwitch.unk_00[0][v6 * 16], &v0[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&param0->orderSwitch.unk_180[0][v6 * 16], &v1[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&param0->orderSwitch.unk_00[1][v6 * 16], &v0[v4 + (v5 + v6) * 32], 16 * 2);
        memcpy(&param0->orderSwitch.unk_180[1][v6 * 16], &v1[v4 + (v5 + v6) * 32], 16 * 2);
    }

    Sprite_SetDrawFlag(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], FALSE);
    Sprite_SetDrawFlag(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);
}

BOOL sub_02083D1C(PartyMenuApplication *param0)
{
    PartyOrderSwitchData *v0 = &param0->orderSwitch;

    switch (v0->unk_305) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        v0->unk_305 = 1;
        break;
    case 1:
        v0->unk_306 += 1;

        sub_02083E8C(param0, 0);
        sub_02083E8C(param0, 1);
        sub_02083FDC(param0, 0, v0->unk_302[0]);
        sub_02083FDC(param0, 1, v0->unk_302[1]);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 2);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 1);

        if (v0->unk_306 == 16) {
            v0->unk_305 = 2;
        }
        break;
    case 2:
        sub_02084134(param0);
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        v0->unk_305 = 3;
        break;
    case 3:
        v0->unk_306 -= 1;

        sub_02083E8C(param0, 0);
        sub_02083E8C(param0, 1);
        sub_02083FDC(param0, 0, v0->unk_302[0] ^ 1);
        sub_02083FDC(param0, 1, v0->unk_302[1] ^ 1);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 2);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 1);

        if (v0->unk_306 == 0) {
            v0->unk_305 = 4;
        }

        break;

    case 4:
        Party_SwapSlots(param0->partyMenu->party, v0->slots[0], v0->slots[1]);
        Sprite_SetDrawFlag(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);

        v0->inProgress = FALSE;
        param0->inSwitchMode = 0;

        PartyMenu_UpdateSlotPalette(param0, param0->currPartySlot);
        PartyMenu_UpdateSlotPalette(param0, param0->switchTargetSlot);
        PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00029, FALSE);

        return 1;
    }

    return 0;
}

static void sub_02083E8C(PartyMenuApplication *param0, u8 param1)
{
    PartyOrderSwitchData *v0;
    s8 v1, v2;
    u8 v3;

    v0 = &param0->orderSwitch;
    v1 = param0->partyMembers[v0->slots[param1]].panelXPos;
    v2 = param0->partyMembers[v0->slots[param1]].panelYPos;

    Bg_FillTilemapRect(param0->bgConfig, 2, 0, v1, v2, 16, 6, 16);
    Bg_FillTilemapRect(param0->bgConfig, 1, 0, v1, v2, 16, 6, 16);

    if (v0->unk_302[param1] == 0) {
        Bg_CopyToTilemapRect(param0->bgConfig, 2, v1, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], v0->unk_306, 0, 16, 6);
        Bg_CopyToTilemapRect(param0->bgConfig, 1, v1, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], v0->unk_306, 0, 16, 6);
    } else {
        Bg_CopyToTilemapRect(param0->bgConfig, 2, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], 0, 0, 16, 6);
        Bg_CopyToTilemapRect(param0->bgConfig, 1, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], 0, 0, 16, 6);
    }
}

static void sub_02083FDC(PartyMenuApplication *param0, u8 param1, u8 param2)
{
    PartyOrderSwitchData *v0;
    s16 v1, v2;

    v0 = &param0->orderSwitch;

    Sprite_GetPositionXY(param0->sprites[0 + v0->slots[param1]], &v1, &v2);

    if (param2 == 0) {
        param0->partyMembers[v0->slots[param1]].spriteXDelta -= 8;
        param0->partyMembers[v0->slots[param1]].statusXPos -= 8;
        param0->partyMembers[v0->slots[param1]].itemXPos -= 8;
        v1 -= 8;
    } else {
        param0->partyMembers[v0->slots[param1]].spriteXDelta += 8;
        param0->partyMembers[v0->slots[param1]].statusXPos += 8;
        param0->partyMembers[v0->slots[param1]].itemXPos += 8;
        v1 += 8;
    }

    Sprite_SetPositionXY(param0->partyMembers[v0->slots[param1]].sprite, param0->partyMembers[v0->slots[param1]].spriteXDelta, param0->partyMembers[v0->slots[param1]].spriteYDelta);
    Sprite_SetPositionXY(param0->sprites[10 + v0->slots[param1]], param0->partyMembers[v0->slots[param1]].statusXPos, param0->partyMembers[v0->slots[param1]].statusYPos);
    Sprite_SetPositionXY(param0->sprites[16 + v0->slots[param1]], param0->partyMembers[v0->slots[param1]].itemXPos, param0->partyMembers[v0->slots[param1]].itemYPos);
    Sprite_SetPositionXY(param0->sprites[22 + v0->slots[param1]], param0->partyMembers[v0->slots[param1]].itemXPos + 8, param0->partyMembers[v0->slots[param1]].itemYPos);
    Sprite_SetPositionXY(param0->sprites[0 + v0->slots[param1]], v1, v2);
}

static void sub_02084134(PartyMenuApplication *param0)
{
    PartyMenuMember *v0;
    PartyOrderSwitchData *v1;
    ManagedSprite *v2;
    s16 v3;

    v1 = &param0->orderSwitch;

    v0 = Heap_Alloc(HEAP_ID_PARTY_MENU, sizeof(PartyMenuMember));
    *v0 = param0->partyMembers[v1->slots[0]];

    param0->partyMembers[v1->slots[0]] = param0->partyMembers[v1->slots[1]];
    param0->partyMembers[v1->slots[1]] = *v0;

    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, v0);

    v3 = param0->partyMembers[v1->slots[0]].spriteXDelta;
    param0->partyMembers[v1->slots[0]].spriteXDelta = param0->partyMembers[v1->slots[1]].spriteXDelta;
    param0->partyMembers[v1->slots[1]].spriteXDelta = v3;

    v3 = param0->partyMembers[v1->slots[0]].spriteYDelta;
    param0->partyMembers[v1->slots[0]].spriteYDelta = param0->partyMembers[v1->slots[1]].spriteYDelta;
    param0->partyMembers[v1->slots[1]].spriteYDelta = v3;

    v3 = param0->partyMembers[v1->slots[0]].statusXPos;
    param0->partyMembers[v1->slots[0]].statusXPos = param0->partyMembers[v1->slots[1]].statusXPos;
    param0->partyMembers[v1->slots[1]].statusXPos = v3;

    v3 = param0->partyMembers[v1->slots[0]].statusYPos;
    param0->partyMembers[v1->slots[0]].statusYPos = param0->partyMembers[v1->slots[1]].statusYPos;
    param0->partyMembers[v1->slots[1]].statusYPos = v3;

    v3 = param0->partyMembers[v1->slots[0]].itemXPos;
    param0->partyMembers[v1->slots[0]].itemXPos = param0->partyMembers[v1->slots[1]].itemXPos;
    param0->partyMembers[v1->slots[1]].itemXPos = v3;

    v3 = param0->partyMembers[v1->slots[0]].itemYPos;
    param0->partyMembers[v1->slots[0]].itemYPos = param0->partyMembers[v1->slots[1]].itemYPos;
    param0->partyMembers[v1->slots[1]].itemYPos = v3;

    v3 = param0->partyMembers[v1->slots[0]].panelXPos;
    param0->partyMembers[v1->slots[0]].panelXPos = param0->partyMembers[v1->slots[1]].panelXPos;
    param0->partyMembers[v1->slots[1]].panelXPos = v3;

    v3 = param0->partyMembers[v1->slots[0]].panelYPos;
    param0->partyMembers[v1->slots[0]].panelYPos = param0->partyMembers[v1->slots[1]].panelYPos;
    param0->partyMembers[v1->slots[1]].panelYPos = v3;

    PartyMenu_DrawMemberPanelData(param0, v1->slots[0]);
    PartyMenu_DrawMemberPanelData(param0, v1->slots[1]);
    PartyMenu_CopyMemberWindowToVRAM(param0, v1->slots[0]);
    PartyMenu_CopyMemberWindowToVRAM(param0, v1->slots[1]);

    sub_02084420(param0, 0);
    sub_02084420(param0, 1);

    PartyMenu_DrawMemberStatusCondition(param0, v1->slots[0], param0->partyMembers[v1->slots[0]].statusIcon);
    PartyMenu_DrawMemberStatusCondition(param0, v1->slots[1], param0->partyMembers[v1->slots[1]].statusIcon);

    PartyMenu_DrawMemberHeldItem(param0, v1->slots[0], param0->partyMembers[v1->slots[0]].heldItem);
    PartyMenu_DrawMemberHeldItem(param0, v1->slots[1], param0->partyMembers[v1->slots[1]].heldItem);

    PartyMenu_DrawMemberBallSeal(param0, v1->slots[0]);
    PartyMenu_DrawMemberBallSeal(param0, v1->slots[1]);
}

static void sub_02084420(PartyMenuApplication *param0, u8 param1)
{
    PartyOrderSwitchData *v0;
    const u16 *v1;
    u16 *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->orderSwitch;
    v2 = v0->unk_00[param1];
    v1 = sub_0207F248(param0);

    if (param0->partyMembers[v0->slots[param1]].isEgg == TRUE) {
        for (v4 = 0; v4 < 9; v4++) {
            v3 = v2[3 * 16 + 6 + v4] & 0xf000;
            v2[3 * 16 + 6 + v4] = v3 | 0x17;
        }
    } else {
        for (v4 = 0; v4 < 9; v4++) {
            v3 = v2[3 * 16 + 6 + v4] & 0xf000;
            v2[3 * 16 + 6 + v4] = v3 | (v1[v4] & 0xfff);
        }
    }
}

static void sub_020844B0(PartyMenuApplication *param0, int *param1)
{
    u8 v0;

    Window_EraseMessageBox(&param0->windows[33], 1);
    sub_0208337C(param0);

    for (v0 = 0; v0 < param0->partyMenu->maxSelectionSlots; v0++) {
        if (param0->partyMenu->selectionOrder[v0] != 0) {
            continue;
        }

        param0->partyMenu->selectionOrder[v0] = param0->currPartySlot + 1;

        PartyMenu_PrintSelectionEligibility(param0, param0->currPartySlot);
        PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00034, TRUE);
        Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

        if (v0 == param0->partyMenu->maxSelectionSlots - 1) {
            sub_0207FD68(param0, 6);
        }

        *param1 = 1;
        return;
    }

    switch (param0->partyMenu->maxSelectionSlots) {
    case 1:
        PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00123, TRUE);
        break;
    case 2:
        PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00100, TRUE);
        break;
    case 3:
        PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00124, TRUE);
        break;
    case 4:
        PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00125, TRUE);
        break;
    case 5:
        PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00126, TRUE);
        break;
    }

    param0->unk_B0E = 23;
    *param1 = 24;
}

int sub_020845A8(PartyMenuApplication *param0)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->windows[34], 1);
        PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00034, TRUE);
        Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    }

    return 23;
}

static void sub_020845E8(PartyMenuApplication *param0, int *param1)
{
    u8 v0;

    for (v0 = 0; v0 < param0->partyMenu->maxSelectionSlots; v0++) {
        if (param0->partyMenu->selectionOrder[v0] == param0->currPartySlot + 1) {
            param0->partyMenu->selectionOrder[v0] = 0;

            for (v0 = v0; v0 < param0->partyMenu->maxSelectionSlots - 1; v0++) {
                param0->partyMenu->selectionOrder[v0] = param0->partyMenu->selectionOrder[v0 + 1];
                param0->partyMenu->selectionOrder[v0 + 1] = 0;
            }
            break;
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->partyMembers[v0].isPresent == FALSE) {
            continue;
        }

        PartyMenu_PrintSelectionEligibility(param0, v0);
    }

    Window_EraseMessageBox(&param0->windows[33], 1);
    sub_0208337C(param0);
    PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00029, TRUE);
    Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    *param1 = 1;
}

static void sub_020846CC(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 0;

    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);

    *param1 = 32;
}

static void sub_020846FC(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 0;

    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);

    *param1 = 32;
}

static void sub_0208472C(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 1;

    Menu_Free(param0->contextMenu, NULL);
    StringList_Free(param0->contextMenuChoices);

    *param1 = 32;
}

static void sub_02084760(PartyMenuApplication *param0, int *param1)
{
    sub_0208337C(param0);
    Window_EraseMessageBox(&param0->windows[33], 1);

    *param1 = sub_02084780(param0);
}

int sub_02084780(PartyMenuApplication *param0)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->partyMenu->party, param0->currPartySlot);

    if (Pokemon_GetValue(v0, MON_DATA_BALL_CAPSULE_ID, NULL) == 0) {
        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00129, param0->tmpString);
        Sprite_SetDrawFlag(param0->sprites[22 + param0->currPartySlot], TRUE);
    } else {
        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00130, param0->tmpString);
        param0->currPartySlot = 7;
    }

    PartyMenu_PrintLongMessage(param0, PRINT_MESSAGE_PRELOADED, TRUE);

    param0->partyMenu->menuSelectionResult = 0;
    param0->unk_B0E = 25;

    return 24;
}

static void sub_02084808(PartyMenuApplication *windowLayout, int *param1)
{
    FieldMoveErrContext fieldMoveErrorCtx;
    u32 v1;
    u32 v2;

    fieldMoveErrorCtx = (FieldMoveErrContext)FieldMove_GetTaskOrError(FIELD_MOVE_ERROR, windowLayout->partyMenu->menuSelectionResult - 11);

    if (fieldMoveErrorCtx != NULL) {
        v1 = fieldMoveErrorCtx(windowLayout->partyMenu->fieldMoveContext);
    } else {
        v1 = 1;
    }

    switch (v1) {
    case 0:
        Menu_Free(windowLayout->contextMenu, NULL);
        StringList_Free(windowLayout->contextMenuChoices);
        *param1 = 32;
        return;
    case 1:
        v2 = 104;
        break;
    case 2:
        v2 = 76;
        break;
    case 3:
        v2 = 196;
        break;
    case 4:
        v2 = 102;
        break;
    }

    Window_EraseMessageBox(&windowLayout->windows[33], 1);
    sub_0208337C(windowLayout);
    PartyMenu_PrintLongMessage(windowLayout, v2, TRUE);

    windowLayout->unk_B0E = 3;
    *param1 = 24;
}

static void sub_020848A8(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 11;
    sub_02084808(param0, param1);
}

static void sub_020848C0(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 16;
    sub_02084808(param0, param1);
}

static void sub_020848D8(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 14;
    sub_02084808(param0, param1);
}

static void sub_020848F0(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 13;
    sub_02084808(param0, param1);
}

static void sub_02084908(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 15;
    sub_02084808(param0, param1);
}

static void sub_02084920(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 18;
    sub_02084808(param0, param1);
}

static void sub_02084938(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 12;
    sub_02084808(param0, param1);
}

static void sub_02084950(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 17;
    sub_02084808(param0, param1);
}

static void sub_02084968(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 19;
    sub_02084808(param0, param1);
}

static void sub_02084980(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 20;
    sub_02084808(param0, param1);
}

static void sub_02084998(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 21;
    sub_02084808(param0, param1);
}

static void sub_020849B0(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 22;
    sub_02084808(param0, param1);
}

static void sub_020849C8(PartyMenuApplication *param0, int *param1)
{
    param0->partyMenu->menuSelectionResult = 23;
    sub_02084808(param0, param1);
}

static void sub_020849E0(PartyMenuApplication *param0, int *param1)
{
    *param1 = sub_02084A18(param0);

    if (*param1 == 30) {
        param0->monStats[3] = 24 - 11;
    }
}

static void sub_020849FC(PartyMenuApplication *param0, int *param1)
{
    *param1 = sub_02084A18(param0);

    if (*param1 == 30) {
        param0->monStats[3] = 25 - 11;
    }
}

static int sub_02084A18(PartyMenuApplication *param0)
{
    Window_EraseMessageBox(&param0->windows[33], 1);
    sub_0208337C(param0);

    param0->monStats[0] = param0->partyMembers[param0->currPartySlot].maxHP / 5;

    if (param0->partyMembers[param0->currPartySlot].curHP <= param0->monStats[0]) {
        PartyMenu_PrintLongMessage(param0, pl_msg_00000453_00138, TRUE);
        param0->unk_B0E = 3;
        return 24;
    } else {
        s16 v0, v1;

        param0->inSwitchMode = 1;
        param0->switchTargetSlot = param0->currPartySlot;

        Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        Sprite_GetPositionXY(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], &v0, &v1);
        Sprite_SetPositionXY(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], v0, v1);
        Sprite_SetAnim(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], PartyMenu_GetMemberPanelAnim(param0->partyMenu->type, param0->switchTargetSlot) + 2);
        Sprite_SetDrawFlag(param0->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], TRUE);
        PartyMenu_UpdateSlotPalette(param0, param0->switchTargetSlot);
        PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00036, TRUE);

        param0->monStats[1] = 0;
        return 30;
    }
}

int sub_02084B34(PartyMenuApplication *param0)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->windows[34], 1);
        PartyMenu_PrintShortMessage(param0, pl_msg_00000453_00029, TRUE);
        Sprite_SetExplicitPalette2(param0->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    }

    return 3;
}
