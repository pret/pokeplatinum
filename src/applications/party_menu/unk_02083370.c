#include "applications/party_menu/unk_02083370.h"

#include <nitro.h>
#include <string.h>

#include "generated/items.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/form_change.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/windows.h"
#include "field/field_system.h"

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

static void PartyMenu_SelectSwitch(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectSummary(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectFieldMove(PartyMenuApplication *application, int *param1);
static void sub_02083E8C(PartyMenuApplication *application, u8 param1);
static void sub_02083FDC(PartyMenuApplication *application, u8 param1, u8 param2);
static void sub_02084134(PartyMenuApplication *application);
static void sub_02084420(PartyMenuApplication *application, u8 param1);
static void PartyMenu_SelectCut(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectRockSmash(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectStrength(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectSurf(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectDefog(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectRockClimb(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectFly(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectWaterfall(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectFlash(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectTeleport(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectDig(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectSweetScent(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectChatter(PartyMenuApplication *application, int *param1);
static void sub_020849E0(PartyMenuApplication *application, int *param1);
static void sub_020849FC(PartyMenuApplication *application, int *param1);
static int sub_02084A18(PartyMenuApplication *application);
static void sub_02084760(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectItem(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectItemGive(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectItemTake(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectMail(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectMailRead(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectMailTake(PartyMenuApplication *application, int *param1);
static int sub_0208384C(void *applicationPtr);
static int sub_020838C4(void *applicationPtr);
static int sub_020838F4(void *applicationPtr);
static int sub_02083990(void *applicationPtr);
static void sub_020846CC(PartyMenuApplication *application, int *param1);
static void sub_020844B0(PartyMenuApplication *application, int *param1);
static void sub_020845E8(PartyMenuApplication *application, int *param1);
static void sub_020846FC(PartyMenuApplication *application, int *param1);
static void PartyMenu_SelectBallSeal(PartyMenuApplication *application, int *param1);

static const u32 sPartyMenuActions[] = {
    (const u32)PartyMenu_SelectSwitch,
    (const u32)PartyMenu_SelectSummary,
    (const u32)PartyMenu_SelectItem,
    (const u32)PartyMenu_SelectItemGive,
    (const u32)PartyMenu_SelectItemTake,
    (const u32)PartyMenu_SelectMail,
    (const u32)PartyMenu_SelectMailRead,
    (const u32)PartyMenu_SelectMailTake,
    (const u32)PartyMenu_SelectBallSeal,
    0xFFFFFFFE,
    0xFFFFFFFE,
    (const u32)sub_020844B0, // select pokemon?
    (const u32)sub_020845E8, // select pokemon?
    (const u32)sub_020846CC, // cancel?
    (const u32)sub_02084760, // clear screen?
    (const u32)sub_020846FC, // cancel2
    (const u32)PartyMenu_SelectCut,
    (const u32)PartyMenu_SelectFly,
    (const u32)PartyMenu_SelectSurf,
    (const u32)PartyMenu_SelectStrength,
    (const u32)PartyMenu_SelectDefog,
    (const u32)PartyMenu_SelectRockSmash,
    (const u32)PartyMenu_SelectWaterfall,
    (const u32)PartyMenu_SelectRockClimb,
    (const u32)PartyMenu_SelectFlash,
    (const u32)PartyMenu_SelectTeleport,
    (const u32)PartyMenu_SelectDig,
    (const u32)PartyMenu_SelectSweetScent,
    (const u32)PartyMenu_SelectChatter,
    (const u32)sub_020849E0, // transfer HP
    (const u32)sub_020849FC, // transfer HP2
    0xFFFFFFFE
};

u32 PartyMenu_GetAction(u8 action) // table
{
    return sPartyMenuActions[action];
}

void PartyMenu_ClearContextWindow(PartyMenuApplication *application)
{
    Window_EraseStandardFrame(&application->menuWindows[0], 1);
    Window_ClearAndScheduleCopyToVRAM(&application->menuWindows[0]);
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);
    Window_Remove(&application->menuWindows[0]);
}

static void PartyMenu_SelectItem(PartyMenuApplication *application, int *param1)
{
    MenuTemplate v0;

    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintMediumMessage(application, pl_msg_00000453_00038, FALSE);

    application->contextMenuChoices = StringList_New(3, HEAP_ID_PARTY_MENU);

    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_ITEM_GIVE], PartyMenu_GetAction(3));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_ITEM_TAKE], PartyMenu_GetAction(4));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_CANCEL], PartyMenu_GetAction(9));

    v0.choices = application->contextMenuChoices;
    v0.window = &application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_DrawStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1, 1, 14);

    application->contextMenu = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void PartyMenu_SelectItemGive(PartyMenuApplication *application, int *param1)
{
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_GIVE_ITEM;
    *param1 = 32;
}

static void PartyMenu_SelectItemTake(PartyMenuApplication *application, int *param1)
{
    Pokemon *mon;
    int v1;
    int v2 = 17;
    FieldSystem *fieldSystem;

    Window_EraseStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1);
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    fieldSystem = application->partyMenu->fieldSystem;

    if (application->partyMembers[application->currPartySlot].heldItem == ITEM_NONE) {
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        MessageLoader_GetString(application->messageLoader, pl_msg_00000453_00081, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    } else if (Bag_TryAddItem(application->partyMenu->bag, application->partyMembers[application->currPartySlot].heldItem, 1, HEAP_ID_PARTY_MENU) == TRUE) {
        u32 v4;

        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        v4 = 0;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &v4);
        Pokemon_SetArceusForm(mon);

        if (fieldSystem == NULL
            || fieldSystem->location->mapId < MAP_HEADER_DISTORTION_WORLD_1F
            || fieldSystem->location->mapId > MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM) {
            v1 = Pokemon_SetGiratinaFormByHeldItem(mon);

            if ((application->partyMembers[application->currPartySlot].heldItem == ITEM_GRISEOUS_ORB) && (v1 == 0)) {
                v2 = 18;
            }
        }

        MessageLoader_GetString(application->messageLoader, pl_msg_00000453_00082, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_SetItemName(application->template, 1, application->partyMembers[application->currPartySlot].heldItem);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);

        application->partyMembers[application->currPartySlot].heldItem = ITEM_NONE;

        PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
    } else {
        MessageLoader_GetString(application->messageLoader, pl_msg_00000453_00083, application->tmpString);
    }

    Window_DrawMessageBoxWithScrollCursor(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1, (1 + 9), 15);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 15);
    PartyMenu_AddLongMessagePrinter(application);

    *param1 = v2;
}

int sub_02083658(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            return 1;
        }
    }

    return 17;
}

int sub_020836A8(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
            PartyMenu_SetupFormChangeAnim(application);
            return 19;
        }
    }

    return 18;
}

int sub_020836E4(PartyMenuApplication *application)
{
    if (PartyMenuFormChange_ChangeForm(application) == 1) {
        PartyMenu_TeardownFormChangeAnim(application);
        return 17;
    }

    return 19;
}

static void PartyMenu_SelectMail(PartyMenuApplication *application, int *param1)
{
    MenuTemplate v0;

    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintMediumMessage(application, pl_msg_00000453_00039, FALSE);

    application->contextMenuChoices = StringList_New(3, HEAP_ID_PARTY_MENU);

    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_MAIL_READ], PartyMenu_GetAction(6));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_MAIL_TAKE], PartyMenu_GetAction(7));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_CANCEL], PartyMenu_GetAction(9));

    v0.choices = application->contextMenuChoices;
    v0.window = &application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_DrawStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1, 1, 14);

    application->contextMenu = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void PartyMenu_SelectMailRead(PartyMenuApplication *application, int *param1)
{
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_READ_MAIL;
    *param1 = 32;
}

static void PartyMenu_SelectMailTake(PartyMenuApplication *application, int *param1)
{
    Window_EraseStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1);
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);
    PartyMenu_PrintLongMessage(application, pl_msg_00000453_00043, TRUE);

    application->unk_B04.unk_00 = sub_0208384C;
    application->unk_B04.unk_04 = sub_020838C4;
    application->unk_B0E = 26;
    *param1 = 24;
}

static int sub_0208384C(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Pokemon *v1;

    application = applicationPtr;
    v1 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    if (sub_02097788(application->partyMenu->mailbox, v1, HEAP_ID_PARTY_MENU) != 0xFFFFFFFF) {
        application->partyMembers[application->currPartySlot].heldItem = ITEM_NONE;
        PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00046, FALSE);
    } else {
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00050, FALSE);
    }

    application->unk_B0E = 20;

    return 24;
}

static int sub_020838C4(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;

    PartyMenu_PrintLongMessage(application, pl_msg_00000453_00047, FALSE);

    application->unk_B04.unk_00 = sub_020838F4;
    application->unk_B04.unk_04 = sub_02083990;
    application->unk_B0E = 26;

    return 24;
}

static int sub_020838F4(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;

    if (Bag_TryAddItem(application->partyMenu->bag, application->partyMembers[application->currPartySlot].heldItem, 1, HEAP_ID_PARTY_MENU) == TRUE) {
        Pokemon *mon;
        u32 item;

        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        item = 0;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
        Pokemon_SetArceusForm(mon);
        Pokemon_SetGiratinaFormByHeldItem(mon);

        application->partyMembers[application->currPartySlot].heldItem = ITEM_NONE;

        PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00051, FALSE);
    } else {
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00083, FALSE);
    }

    application->unk_B0E = 20;

    return 24;
}

static int sub_02083990(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;

    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    return 1;
}

int sub_020839BC(PartyMenuApplication *application)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    }

    return 20;
}

static void PartyMenu_SelectBallSeal(PartyMenuApplication *application, int *param1)
{
    if (application->partyMembers[application->currPartySlot].ballSeal == 0) {
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        *param1 = 32;
        return;
    }

    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintLongMessage(application, pl_msg_00000453_00195, TRUE);

    application->unk_B04.unk_00 = sub_02083A78;
    application->unk_B04.unk_04 = sub_02083AA4;
    application->unk_B0E = 26;
    *param1 = 24;
}

int sub_02083A78(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    Pokemon_ClearBallCapsuleData(v1);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    return 32;
}

int sub_02083AA4(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;

    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    return 1;
}

static void PartyMenu_SelectSwitch(PartyMenuApplication *application, int *param1)
{
    s16 v0, v1;

    application->inSwitchMode = 1;
    application->switchTargetSlot = application->currPartySlot;

    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
    Sprite_GetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], &v0, &v1);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], v0, v1);
    Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->switchTargetSlot) + 2);
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], TRUE);
    PartyMenu_UpdateSlotPalette(application, application->switchTargetSlot);
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], 1);
    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintShortMessage(application, pl_msg_00000453_00030, TRUE);

    *param1 = 28;
}

void sub_02083B88(PartyMenuApplication *application)
{
    application->inSwitchMode = 0;
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);

    if (application->currPartySlot < 6) {
        PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(application, application->switchTargetSlot);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
}

void sub_02083BD4(PartyMenuApplication *application)
{
    u16 *v0;
    u16 *v1;
    s8 v2, v3, v4, v5;
    u16 v6;

    application->orderSwitch.slots[0] = application->currPartySlot;
    application->orderSwitch.slots[1] = application->switchTargetSlot;
    application->orderSwitch.inProgress = TRUE;
    application->orderSwitch.unk_306 = 0;
    application->orderSwitch.unk_305 = 0;

    if (application->orderSwitch.slots[0] & 1) {
        application->orderSwitch.unk_302[0] = 1;
    } else {
        application->orderSwitch.unk_302[0] = 0;
    }

    if (application->orderSwitch.slots[1] & 1) {
        application->orderSwitch.unk_302[1] = 1;
    } else {
        application->orderSwitch.unk_302[1] = 0;
    }

    v0 = (u16 *)Bg_GetTilemapBuffer(application->bgConfig, 2);
    v1 = (u16 *)Bg_GetTilemapBuffer(application->bgConfig, 1);

    v2 = application->partyMembers[application->orderSwitch.slots[0]].panelXPos;
    v3 = application->partyMembers[application->orderSwitch.slots[0]].panelYPos;
    v4 = application->partyMembers[application->orderSwitch.slots[1]].panelXPos;
    v5 = application->partyMembers[application->orderSwitch.slots[1]].panelYPos;

    for (v6 = 0; v6 < 6; v6++) {
        memcpy(&application->orderSwitch.unk_00[0][v6 * 16], &v0[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&application->orderSwitch.unk_180[0][v6 * 16], &v1[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&application->orderSwitch.unk_00[1][v6 * 16], &v0[v4 + (v5 + v6) * 32], 16 * 2);
        memcpy(&application->orderSwitch.unk_180[1][v6 * 16], &v1[v4 + (v5 + v6) * 32], 16 * 2);
    }

    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], FALSE);
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);
}

BOOL sub_02083D1C(PartyMenuApplication *application)
{
    PartyOrderSwitchData *v0 = &application->orderSwitch;

    switch (v0->unk_305) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        v0->unk_305 = 1;
        break;
    case 1:
        v0->unk_306 += 1;

        sub_02083E8C(application, 0);
        sub_02083E8C(application, 1);
        sub_02083FDC(application, 0, v0->unk_302[0]);
        sub_02083FDC(application, 1, v0->unk_302[1]);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 2);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 1);

        if (v0->unk_306 == 16) {
            v0->unk_305 = 2;
        }
        break;
    case 2:
        sub_02084134(application);
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        v0->unk_305 = 3;
        break;
    case 3:
        v0->unk_306 -= 1;

        sub_02083E8C(application, 0);
        sub_02083E8C(application, 1);
        sub_02083FDC(application, 0, v0->unk_302[0] ^ 1);
        sub_02083FDC(application, 1, v0->unk_302[1] ^ 1);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 2);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 1);

        if (v0->unk_306 == 0) {
            v0->unk_305 = 4;
        }

        break;

    case 4:
        Party_SwapSlots(application->partyMenu->party, v0->slots[0], v0->slots[1]);
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);

        v0->inProgress = FALSE;
        application->inSwitchMode = 0;

        PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
        PartyMenu_UpdateSlotPalette(application, application->switchTargetSlot);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, FALSE);

        return 1;
    }

    return 0;
}

static void sub_02083E8C(PartyMenuApplication *application, u8 param1)
{
    PartyOrderSwitchData *v0;
    s8 v1, v2;
    u8 v3;

    v0 = &application->orderSwitch;
    v1 = application->partyMembers[v0->slots[param1]].panelXPos;
    v2 = application->partyMembers[v0->slots[param1]].panelYPos;

    Bg_FillTilemapRect(application->bgConfig, 2, 0, v1, v2, 16, 6, 16);
    Bg_FillTilemapRect(application->bgConfig, 1, 0, v1, v2, 16, 6, 16);

    if (v0->unk_302[param1] == 0) {
        Bg_CopyToTilemapRect(application->bgConfig, 2, v1, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], v0->unk_306, 0, 16, 6);
        Bg_CopyToTilemapRect(application->bgConfig, 1, v1, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], v0->unk_306, 0, 16, 6);
    } else {
        Bg_CopyToTilemapRect(application->bgConfig, 2, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], 0, 0, 16, 6);
        Bg_CopyToTilemapRect(application->bgConfig, 1, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], 0, 0, 16, 6);
    }
}

static void sub_02083FDC(PartyMenuApplication *application, u8 param1, u8 param2)
{
    PartyOrderSwitchData *v0;
    s16 v1, v2;

    v0 = &application->orderSwitch;

    Sprite_GetPositionXY(application->sprites[0 + v0->slots[param1]], &v1, &v2);

    if (param2 == 0) {
        application->partyMembers[v0->slots[param1]].spriteXDelta -= 8;
        application->partyMembers[v0->slots[param1]].statusXPos -= 8;
        application->partyMembers[v0->slots[param1]].itemXPos -= 8;
        v1 -= 8;
    } else {
        application->partyMembers[v0->slots[param1]].spriteXDelta += 8;
        application->partyMembers[v0->slots[param1]].statusXPos += 8;
        application->partyMembers[v0->slots[param1]].itemXPos += 8;
        v1 += 8;
    }

    Sprite_SetPositionXY(application->partyMembers[v0->slots[param1]].sprite, application->partyMembers[v0->slots[param1]].spriteXDelta, application->partyMembers[v0->slots[param1]].spriteYDelta);
    Sprite_SetPositionXY(application->sprites[10 + v0->slots[param1]], application->partyMembers[v0->slots[param1]].statusXPos, application->partyMembers[v0->slots[param1]].statusYPos);
    Sprite_SetPositionXY(application->sprites[16 + v0->slots[param1]], application->partyMembers[v0->slots[param1]].itemXPos, application->partyMembers[v0->slots[param1]].itemYPos);
    Sprite_SetPositionXY(application->sprites[22 + v0->slots[param1]], application->partyMembers[v0->slots[param1]].itemXPos + 8, application->partyMembers[v0->slots[param1]].itemYPos);
    Sprite_SetPositionXY(application->sprites[0 + v0->slots[param1]], v1, v2);
}

static void sub_02084134(PartyMenuApplication *application)
{
    PartyMenuMember *v0;
    PartyOrderSwitchData *v1;
    ManagedSprite *v2;
    s16 v3;

    v1 = &application->orderSwitch;

    v0 = Heap_Alloc(HEAP_ID_PARTY_MENU, sizeof(PartyMenuMember));
    *v0 = application->partyMembers[v1->slots[0]];

    application->partyMembers[v1->slots[0]] = application->partyMembers[v1->slots[1]];
    application->partyMembers[v1->slots[1]] = *v0;

    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, v0);

    v3 = application->partyMembers[v1->slots[0]].spriteXDelta;
    application->partyMembers[v1->slots[0]].spriteXDelta = application->partyMembers[v1->slots[1]].spriteXDelta;
    application->partyMembers[v1->slots[1]].spriteXDelta = v3;

    v3 = application->partyMembers[v1->slots[0]].spriteYDelta;
    application->partyMembers[v1->slots[0]].spriteYDelta = application->partyMembers[v1->slots[1]].spriteYDelta;
    application->partyMembers[v1->slots[1]].spriteYDelta = v3;

    v3 = application->partyMembers[v1->slots[0]].statusXPos;
    application->partyMembers[v1->slots[0]].statusXPos = application->partyMembers[v1->slots[1]].statusXPos;
    application->partyMembers[v1->slots[1]].statusXPos = v3;

    v3 = application->partyMembers[v1->slots[0]].statusYPos;
    application->partyMembers[v1->slots[0]].statusYPos = application->partyMembers[v1->slots[1]].statusYPos;
    application->partyMembers[v1->slots[1]].statusYPos = v3;

    v3 = application->partyMembers[v1->slots[0]].itemXPos;
    application->partyMembers[v1->slots[0]].itemXPos = application->partyMembers[v1->slots[1]].itemXPos;
    application->partyMembers[v1->slots[1]].itemXPos = v3;

    v3 = application->partyMembers[v1->slots[0]].itemYPos;
    application->partyMembers[v1->slots[0]].itemYPos = application->partyMembers[v1->slots[1]].itemYPos;
    application->partyMembers[v1->slots[1]].itemYPos = v3;

    v3 = application->partyMembers[v1->slots[0]].panelXPos;
    application->partyMembers[v1->slots[0]].panelXPos = application->partyMembers[v1->slots[1]].panelXPos;
    application->partyMembers[v1->slots[1]].panelXPos = v3;

    v3 = application->partyMembers[v1->slots[0]].panelYPos;
    application->partyMembers[v1->slots[0]].panelYPos = application->partyMembers[v1->slots[1]].panelYPos;
    application->partyMembers[v1->slots[1]].panelYPos = v3;

    PartyMenu_DrawMemberPanelData(application, v1->slots[0]);
    PartyMenu_DrawMemberPanelData(application, v1->slots[1]);
    PartyMenu_CopyMemberWindowToVRAM(application, v1->slots[0]);
    PartyMenu_CopyMemberWindowToVRAM(application, v1->slots[1]);

    sub_02084420(application, 0);
    sub_02084420(application, 1);

    PartyMenu_DrawMemberStatusCondition(application, v1->slots[0], application->partyMembers[v1->slots[0]].statusIcon);
    PartyMenu_DrawMemberStatusCondition(application, v1->slots[1], application->partyMembers[v1->slots[1]].statusIcon);

    PartyMenu_DrawMemberHeldItem(application, v1->slots[0], application->partyMembers[v1->slots[0]].heldItem);
    PartyMenu_DrawMemberHeldItem(application, v1->slots[1], application->partyMembers[v1->slots[1]].heldItem);

    PartyMenu_DrawMemberBallSeal(application, v1->slots[0]);
    PartyMenu_DrawMemberBallSeal(application, v1->slots[1]);
}

static void sub_02084420(PartyMenuApplication *application, u8 param1)
{
    PartyOrderSwitchData *v0;
    const u16 *v1;
    u16 *v2;
    u16 v3;
    u16 v4;

    v0 = &application->orderSwitch;
    v2 = v0->unk_00[param1];
    v1 = sub_0207F248(application);

    if (application->partyMembers[v0->slots[param1]].isEgg == TRUE) {
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

static void sub_020844B0(PartyMenuApplication *application, int *param1)
{
    u8 v0;

    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], 1);
    PartyMenu_ClearContextWindow(application);

    for (v0 = 0; v0 < application->partyMenu->maxSelectionSlots; v0++) {
        if (application->partyMenu->selectionOrder[v0] != 0) {
            continue;
        }

        application->partyMenu->selectionOrder[v0] = application->currPartySlot + 1;

        PartyMenu_PrintSelectionEligibility(application, application->currPartySlot);
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

        if (v0 == application->partyMenu->maxSelectionSlots - 1) {
            sub_0207FD68(application, 6);
        }

        *param1 = 1;
        return;
    }

    switch (application->partyMenu->maxSelectionSlots) {
    case 1:
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00123, TRUE);
        break;
    case 2:
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00100, TRUE);
        break;
    case 3:
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00124, TRUE);
        break;
    case 4:
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00125, TRUE);
        break;
    case 5:
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00126, TRUE);
        break;
    }

    application->unk_B0E = 23;
    *param1 = 24;
}

int sub_020845A8(PartyMenuApplication *application)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    }

    return 23;
}

static void sub_020845E8(PartyMenuApplication *application, int *param1)
{
    u8 v0;

    for (v0 = 0; v0 < application->partyMenu->maxSelectionSlots; v0++) {
        if (application->partyMenu->selectionOrder[v0] == application->currPartySlot + 1) {
            application->partyMenu->selectionOrder[v0] = 0;

            for (v0 = v0; v0 < application->partyMenu->maxSelectionSlots - 1; v0++) {
                application->partyMenu->selectionOrder[v0] = application->partyMenu->selectionOrder[v0 + 1];
                application->partyMenu->selectionOrder[v0 + 1] = 0;
            }
            break;
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (application->partyMembers[v0].isPresent == FALSE) {
            continue;
        }

        PartyMenu_PrintSelectionEligibility(application, v0);
    }

    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], 1);
    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    *param1 = 1;
}

static void sub_020846CC(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;

    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    *param1 = 32;
}

static void sub_020846FC(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;

    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    *param1 = 32;
}

static void PartyMenu_SelectSummary(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SUMMARY;

    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    *param1 = 32;
}

static void sub_02084760(PartyMenuApplication *application, int *param1)
{
    PartyMenu_ClearContextWindow(application);
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], 1);

    *param1 = sub_02084780(application);
}

int sub_02084780(PartyMenuApplication *application)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    if (Pokemon_GetValue(v0, MON_DATA_BALL_CAPSULE_ID, NULL) == 0) {
        MessageLoader_GetString(application->messageLoader, pl_msg_00000453_00129, application->tmpString);
        Sprite_SetDrawFlag(application->sprites[22 + application->currPartySlot], TRUE);
    } else {
        MessageLoader_GetString(application->messageLoader, pl_msg_00000453_00130, application->tmpString);
        application->currPartySlot = 7;
    }

    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    application->unk_B0E = 25;

    return 24;
}

static void PartyMenu_SelectFieldMove(PartyMenuApplication *windowLayout, int *result)
{
    FieldMoveErrContext fieldMoveErrorCtx;
    u32 fieldMoveResult;
    u32 msgID;

    fieldMoveErrorCtx = (FieldMoveErrContext)FieldMove_GetTaskOrError(FIELD_MOVE_ERROR, windowLayout->partyMenu->menuSelectionResult - 11);

    if (fieldMoveErrorCtx != NULL) {
        fieldMoveResult = fieldMoveErrorCtx(windowLayout->partyMenu->fieldMoveContext);
    } else {
        fieldMoveResult = 1;
    }

    switch (fieldMoveResult) {
    case 0:
        Menu_Free(windowLayout->contextMenu, NULL);
        StringList_Free(windowLayout->contextMenuChoices);
        *result = 32;
        return;
    case 1:
        msgID = 104; // pl_msg_00000453_00104: You can’t use that here.
        break;
    case 2:
        msgID = 76; // pl_msg_00000453_00076: This can’t be used until a new Badge is obtained
        break;
    case 3:
        msgID = 196; // pl_msg_00000453_00196: You can’t use that when you have someone with you
        break;
    case 4:
        msgID = 102; // pl_msg_00000453_00102: You're already surfing
        break;
    }

    Window_EraseMessageBox(&windowLayout->windows[33], 1);
    PartyMenu_ClearContextWindow(windowLayout);
    PartyMenu_PrintLongMessage(windowLayout, msgID, TRUE);

    windowLayout->unk_B0E = 3;
    *result = 24;
}

static void PartyMenu_SelectCut(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_CUT;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectRockSmash(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_ROCK_SMASH;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectStrength(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_STRENGTH;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectSurf(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SURF;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectDefog(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DEFOG;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectRockClimb(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_ROCK_CLIMB;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectFly(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_FLY;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectWaterfall(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_WATERFALL;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectFlash(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_FLASH;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectTeleport(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_TELEPORT;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectDig(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DIG;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectSweetScent(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SWEET_SCENT;
    PartyMenu_SelectFieldMove(application, param1);
}

static void PartyMenu_SelectChatter(PartyMenuApplication *application, int *param1)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_CHATTER;
    PartyMenu_SelectFieldMove(application, param1);
}

static void sub_020849E0(PartyMenuApplication *application, int *param1)
{
    *param1 = sub_02084A18(application);

    if (*param1 == 30) {
        application->monStats[3] = 24 - 11;
    }
}

static void sub_020849FC(PartyMenuApplication *application, int *param1)
{
    *param1 = sub_02084A18(application);

    if (*param1 == 30) {
        application->monStats[3] = 25 - 11;
    }
}

static int sub_02084A18(PartyMenuApplication *application)
{
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], 1);
    PartyMenu_ClearContextWindow(application);

    application->monStats[0] = application->partyMembers[application->currPartySlot].maxHP / 5;

    if (application->partyMembers[application->currPartySlot].curHP <= application->monStats[0]) {
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00138, TRUE);
        application->unk_B0E = 3;
        return 24;
    } else {
        s16 v0, v1;

        application->inSwitchMode = 1;
        application->switchTargetSlot = application->currPartySlot;

        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        Sprite_GetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], &v0, &v1);
        Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], v0, v1);
        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->switchTargetSlot) + 2);
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], TRUE);
        PartyMenu_UpdateSlotPalette(application, application->switchTargetSlot);
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00036, TRUE);

        application->monStats[1] = 0;
        return 30;
    }
}

int sub_02084B34(PartyMenuApplication *application)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    }

    return 3;
}
