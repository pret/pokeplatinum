#include "overlay019/ov19_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"
#include "constants/species.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_0208737C.h"

#include "applications/pokemon_summary_screen/main.h"
#include "overlay019/box_cursor.h"
#include "overlay019/box_customization.h"
#include "overlay019/box_mon_selection.h"
#include "overlay019/box_settings.h"
#include "overlay019/ov19_021D603C.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DF964.h"
#include "overlay019/pc_compare_mon.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D4EE4.h"
#include "overlay019/struct_ov19_021D4F34.h"
#include "overlay019/struct_ov19_021D5D20.h"
#include "overlay019/struct_ov19_021D6104.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay084/const_ov84_02241130.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "dexmode_checker.h"
#include "enums.h"
#include "game_options.h"
#include "game_overlay.h"
#include "heap.h"
#include "inlines.h"
#include "item.h"
#include "message.h"
#include "overlay_manager.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_0202CC64.h"
#include "unk_0202D778.h"
#include "unk_0207CB08.h"
#include "unk_0208694C.h"

#include "constdata/const_020F2DAC.h"
#include "constdata/const_020F410C.h"
#include "res/text/bank/box_messages.h"

FS_EXTERN_OVERLAY(overlay84);

static const TouchScreenHitTable sMainPcButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenHitTable sComparePokemonButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, COMPARE_MON_PC_BUTTON_X, COMPARE_MON_PC_BUTTON_Y, COMPARE_MON_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenHitTable sPokemonMarkingsButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON1_X, PC_MARKINGS_BUTTON1_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON2_X, PC_MARKINGS_BUTTON2_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON3_X, PC_MARKINGS_BUTTON3_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON4_X, PC_MARKINGS_BUTTON4_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON5_X, PC_MARKINGS_BUTTON5_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON6_X, PC_MARKINGS_BUTTON6_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const u16 Unk_ov19_021DFDF0[] = {
    0x39,
    0x1AF,
    0x7F
};

typedef struct {
    u32 unk_00;
    u8 unk_04;
    s8 unk_05;
    u16 boxMessageID;
} UnkStruct_ov19_021D4468;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 boxID;
    u8 monPosInBox;
    u8 unk_04[NELEMS(Unk_ov19_021DFDF0)];
    u16 unk_08[NELEMS(Unk_ov19_021DFDF0)];
    BoxPokemon *boxMon;
    PCBoxes *pcBoxes;
    Party *party;
    BOOL unk_1C;
} UnkStruct_ov19_021D38E0;

typedef struct UnkStruct_ov19_021D5DF8_t {
    UnkStruct_ov19_021D4DF0 unk_00;
    UnkStruct_ov19_021D61B0 *unk_114;
    UnkStruct_02042434 *unk_118;
    SaveData *saveData;
    PCBoxes *pcBoxes;
    Party *party;
    UnkStruct_0208737C *unk_128;
    PokemonSummary monSummary;
    UnkStruct_ov19_021D38E0 unk_15C;
    TouchScreenActions *mainBoxAndCompareButtonsAction;
    TouchScreenActions *markingsButtonsAction;
    u32 touchScreenButtonPressed;
    u32 unk_188;
    MessageLoader *boxMessagesLoader;
    MessageLoader *speciesNameLoader;
    MessageLoader *natureNameLoader;
    MessageLoader *abilityNameLoader;
    StringTemplate *unk_19C;
    Pokemon *mon;
    Options *options;
    int (*unk_1A8)(struct UnkStruct_ov19_021D5DF8_t *param0);
    void (*unk_1AC)(struct UnkStruct_ov19_021D5DF8_t *param0, u32 *param1);
    u32 unk_1B0;
    u32 unk_1B4;
    s32 unk_1B8;
    UnkStruct_ov19_021D4468 unk_1BC;
    u32 unk_1C4;
    UnkStruct_ov19_021D6104 unk_1C8;
    int unk_1FC;
    u32 unk_200;
    BOOL unk_204;
    BOOL unk_208;
    int unk_20C;
    ApplicationManager *ApplicationManager;
    void *unk_214;
    u32 unk_218;
} UnkStruct_ov19_021D5DF8;

typedef int (*UnkFuncPtr_ov19_021D0EA0)(UnkStruct_ov19_021D5DF8 *);
typedef void (*UnkFuncPtr_ov19_021D0EB0)(UnkStruct_ov19_021D5DF8 *, u32 *);

static void ov19_021D0EA0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EA0 param1);
static void ov19_021D0EB0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EB0 param1);
static void ov19_021D0EC0(UnkStruct_ov19_021D5DF8 *param0);
static UnkFuncPtr_ov19_021D0EA0 ov19_021D0ECC(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D0F14(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D0F88(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(UnkStruct_ov19_021D5DF8 *param0, int *destMessageID);
static int ov19_021D1270(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D15C0(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D17AC(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D19B8(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D1C84(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D1DAC(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D1DEC(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D1F5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D20A4(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2308(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2694(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D27E8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2890(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2A5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2B54(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_IsBoxUnderSelectedMonsEmpty(const UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D2E1C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2F14(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3010(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D30D0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3294(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_OnLastAliveMon(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_CheckReleaseMonValid(UnkStruct_ov19_021D5DF8 *param0, int *destBoxMessageID);
static void ov19_021D35F8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D38E0(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D3978(SysTask *param0, void *param1);
static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 param1);
static void ov19_021D3B34(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3C28(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_SetCursorPosToSummaryMonPos(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D3D44(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3FB0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4184(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4390(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D443C(UnkStruct_ov19_021D5DF8 *param0, u32 param1, u32 param2);
static void ov19_021D4458(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_021D4468(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D45A8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4640(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4938(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_BoxTouchScreenMarkingsButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context);
static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_02042434 *param1);
static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 *param0);
static void BoxSettings_Init(BoxSettings *param0, enum BoxMode boxMode);
static void ov19_InitCursor(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_InitMonSelection(BoxMonSelection *selection);
static void ov19_MonSelectionFree(BoxMonSelection *selection);
static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization);
static void Customization_Free(BoxCustomization *customization);
static void PCMonPreviewInit(PCMonPreview *param0);
static void PCMonPreviewFree(PCMonPreview *param0);
static void ov19_PCCompareMonsInit(UnkStruct_ov19_021D4EE4 *param0);
static void ov19_PCCompareMonsFree(UnkStruct_ov19_021D4EE4 *param0);
static void ov19_021D4F34(UnkStruct_ov19_021D4F34 *param0);
static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization);
static void ov19_LoadWallpaper(UnkStruct_ov19_021D4DF0 *param0, PCBoxes *pcBoxes);
static BOOL ov19_TryMoveCursorFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1);
static BOOL ov19_TryMoveCursor(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange);
static enum CursorMovementState ov19_TryMoveSelectionFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1);
static enum CursorMovementState ov19_TryMoveSelection(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange);
static void ov19_MoveCursorToParty(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_ReturnCursorToBox(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_TryPreviewCursorMon(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_TryPressTouchScreenButton(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_BoxTouchScreenButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context);
static void ov19_SetBoxMessage(UnkStruct_ov19_021D4DF0 *param0, u32 boxMessageID);
static void ov19_SetCursorBoxLocation(UnkStruct_ov19_021D4DF0 *param0, u32 col, u32 row);
static void ov19_PickUpMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_PickUpMultiSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_ResetMultiSelectLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_SetMultiSelectionEndLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_PutDownCursorMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_PutDownSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_SwapMonInCursor(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static BOOL ov19_TryStoreCursorMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID);
static BOOL ov19_TryStoreSelectedMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID);
static void ov19_021D5834(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_RemoveMonUnderCursor(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_PreviewBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadBoxMonIntoPreview(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadBoxMonIntoComparison(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_021D5B70(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_SetCompareButtonPressed(UnkStruct_ov19_021D4DF0 *param0, BOOL pressed);
static void ov19_SetPreviewedBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon);
static void ov19_021D5BAC(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_GiveItemToSelectedMon(UnkStruct_ov19_021D4DF0 *param0, u16 item, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadRightBoxCustomization(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_LoadLeftBoxCustomization(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_LoadCustomizationsFor(UnkStruct_ov19_021D4DF0 *param0, u32 boxID);
static void ov19_021D5D20(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_PickUpHeldItem(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_RemoveCursorItem(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_GiveItemFromCursor(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_SwapMonAndCursorItems(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_SetMarkingsButtonsScrollOffset(UnkStruct_ov19_021D4DF0 *param0, u32 offset);
static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 *param0, int param1);
static void ov19_SetMonSpriteTransparencyMask(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_ToggleCursorFastMode(UnkStruct_ov19_021D4DF0 *param0);
static u32 ov19_GetPreviewedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest);
static u32 ov19_GetPreviewedOrSelectedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest);

int ov19_021D0D80(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_9, 16384);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov19_021D5DF8), HEAP_ID_9);

    if (v0 != NULL) {
        ov19_021D4BE0(v0, ApplicationManager_Args(appMan));
        ov19_021D61B0(&(v0->unk_114), &v0->unk_00, v0);

        v0->unk_1B0 = 0;
        v0->unk_1A8 = ov19_021D0ECC(v0);

        ov19_021D0EB0(v0, ov19_021D0F20);
    }

    return 1;
}

int ov19_021D0DEC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_1AC != NULL) {
        v0->unk_1AC(v0, &(v0->unk_1B4));
        return 0;
    } else {
        if (v0->unk_1A8 != NULL) {
            if (gSystem.pressedKeys & PAD_BUTTON_Y) {
                if (ov19_021D6628(v0->unk_114) == 1) {
                    ov19_ToggleCursorFastMode(&v0->unk_00);
                    ov19_021D6594(v0->unk_114, 43);
                    return 0;
                }
            }

            return v0->unk_1A8(v0);
        }
    }

    GF_ASSERT(0);
    return 1;
}

int ov19_021D0E58(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0 = ApplicationManager_Data(appMan);

    if (Party_HasSpecies(v0->party, SPECIES_CHATOT) == 0) {
        ChatotCry *chatotCry = SaveData_GetChatotCry(v0->saveData);

        ResetChatotCryDataStatus(chatotCry);
    }

    ov19_021D64A0(v0->unk_114);
    ov19_021D4D58(v0);

    Heap_Destroy(HEAP_ID_9);
    Heap_Destroy(HEAP_ID_10);

    return 1;
}

static void ov19_021D0EA0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EA0 param1)
{
    param0->unk_1A8 = param1;
    param0->unk_1B0 = 0;
}

static void ov19_021D0EB0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EB0 param1)
{
    param0->unk_1AC = param1;
    param0->unk_1B4 = 0;
}

static void ov19_021D0EC0(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_1AC = NULL;
}

static UnkFuncPtr_ov19_021D0EA0 ov19_021D0ECC(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (ov19_GetCursorLocation(&(param0->unk_00))) {
    case CURSOR_IN_BOX:
    default:
        return ov19_021D0FF0;
    case CURSOR_IN_PARTY:
        return ov19_021D1270;
    case CURSOR_ON_BOX_HEADER:
        return ov19_021D15C0;
    case CURSOR_ON_CLOSE_BUTTON:
        return ov19_021D17AC;
    case CURSOR_ON_PARTY_BUTTON:
        return ov19_021D19B8;
    }
}

static void ov19_021D0F14(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_118->unk_08 = 1;
}

static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 0);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 1);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 1)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D0F88(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 0);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 2);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 2)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static inline void inline_ov19_021D0FF0_sub1(UnkStruct_ov19_021D5DF8 *wk)
{
    ov19_021D5B70(&wk->unk_00);
    ov19_PreviewBoxMon(&wk->unk_00, wk->unk_00.cursor.mon, wk);
    ov19_021D6594(wk->unk_114, 49);
    ov19_021D6594(wk->unk_114, 6);
}

static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0)
{
    if (ov19_TryPressTouchScreenButton(param0)) {
        if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_COMPARE) {
            switch (param0->touchScreenButtonPressed) {
            case 0:
                ov19_021D0EB0(param0, ov19_021D4640);
                break;
            case 1:
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_021D0EB0(param0, ov19_021D4938);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        } else {
            switch (param0->touchScreenButtonPressed) {
            case 0:
                if ((ov19_021D5F9C(&param0->unk_00) == 0) && (ov19_IsMonUnderCursor(&param0->unk_00) == TRUE)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case 1:
                if ((ov19_021D5F9C(&param0->unk_00) == 1) && (ov19_IsMonUnderCursor(&param0->unk_00) == TRUE)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case 2:
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D5B80(&param0->unk_00);
                ov19_021D6594(param0->unk_114, 50);
                return 1;
            }
        }
    }

    return 0;
}

static int ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (ov19_IsMonAvailableToCursor(&param0->unk_00)) {
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_021D0EB0(param0, ov19_021D20A4);
                } else {
                    ov19_021D0EB0(param0, ov19_021D2308);
                }
                break;
            }
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0++;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->unk_1B0 = 2;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(UnkStruct_ov19_021D5DF8 *param0, int *destMessageID)
{
    if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
        *destMessageID = BoxText_RemoveMail;
        return TRUE;
    }

    if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_BALL_CAPSULE_ID, NULL)) {
        *destMessageID = BoxText_DetachBallCapsule;
        return TRUE;
    }

    return FALSE;
}

static int ov19_021D1270(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (ov19_GetCursorPartyPosition(&param0->unk_00) == MAX_PARTY_SIZE) {
                param0->unk_1B0 = 2;
                break;
            }

            if (ov19_IsMonAvailableToCursor(&param0->unk_00)) {
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_021D0EB0(param0, ov19_021D20A4);
                } else {
                    ov19_021D0EB0(param0, ov19_021D2308);
                }
                break;
            }
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B) || JOY_NEW(PAD_KEY_RIGHT) && ov19_GetCursorPartyPosition(&param0->unk_00) & 1 || JOY_NEW(PAD_KEY_RIGHT) && ov19_GetCursorPartyPosition(&param0->unk_00) == MAX_PARTY_SIZE) {
            param0->unk_1B0 = 2;
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 1;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->unk_1B0 = 6;
            break;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 2:
        if (ov19_GetBoxMode(&param0->unk_00) == PC_MODE_DEPOSIT) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            param0->unk_1B0 = 0;
        } else {
            int messageID;

            if (ov19_GetPreviewMonSource(&param0->unk_00) != PREVIEW_MON_UNDER_CURSOR && ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(param0, &messageID)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, messageID);
                ov19_021D6594(param0->unk_114, 24);
                param0->unk_1B0 = 5;
            } else {
                ov19_021D6594(param0->unk_114, 36);
                param0->unk_1B0 = 3;
            }
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 36)) {
            ov19_ReturnCursorToBox(param0);
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            param0->unk_1B0 = 0;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static int ov19_021D15C0(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (gSystem.heldKeys & (PAD_KEY_LEFT | PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (gSystem.heldKeys & (PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            ov19_021D0EB0(param0, ov19_021D2694);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 1;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    }

    return 0;
}

static int ov19_021D17AC(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (JOY_NEW(PAD_BUTTON_A)) {
            ov19_021D0EB0(param0, ov19_021D1DEC);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 2;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 4)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    }

    return 0;
}

static int ov19_021D19B8(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_WITHDRAW) {
                ov19_021D6594(param0->unk_114, 34);
                param0->unk_1B0 = 1;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_PickOne);
                ov19_021D6594(param0->unk_114, 24);
                param0->unk_1B0 = 5;
            }
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 34)) {
            ov19_021D6594(param0->unk_114, 35);
            param0->unk_1B0 = 2;
        }

        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 35)) {
            ov19_MoveCursorToParty(param0);
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 4)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 5:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static void ov19_021D1C84(UnkStruct_ov19_021D5DF8 *param0)
{
    static const u8 summaryPages[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
        BoxMonSelection *selection = &param0->unk_00.selection;

        param0->monSummary.monData = param0->unk_00.selection.boxMon;
        param0->monSummary.dataType = (selection->cursorMonIsPartyMon) ? SUMMARY_DATA_MON : SUMMARY_DATA_BOX_MON;
        param0->monSummary.monMax = 1;
        param0->monSummary.monIndex = 0;
        param0->monSummary.mode = SUMMARY_MODE_NORMAL;
        param0->monSummary.move = 0;
        param0->monSummary.options = param0->options;
    } else if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX) {
        param0->monSummary.monData = PCBoxes_GetBoxMonAt(param0->pcBoxes, PCBoxes_GetCurrentBoxID(param0->pcBoxes), 0);
        param0->monSummary.dataType = SUMMARY_DATA_BOX_MON;
        param0->monSummary.monMax = MAX_MONS_PER_BOX;
        param0->monSummary.monIndex = ov19_GetCursorBoxPosition(&param0->unk_00);
        param0->monSummary.mode = SUMMARY_MODE_NORMAL;
        param0->monSummary.move = 0;
    } else {
        param0->monSummary.monData = param0->party;
        param0->monSummary.dataType = SUMMARY_DATA_PARTY_MON;
        param0->monSummary.monMax = Party_GetCurrentCount(param0->party);
        param0->monSummary.monIndex = ov19_GetCursorPartyPosition(&param0->unk_00);
        param0->monSummary.mode = SUMMARY_MODE_NORMAL;
        param0->monSummary.move = 0;
    }

    param0->monSummary.chatotCry = NULL;
    param0->monSummary.dexMode = SaveData_GetDexMode(param0->saveData);
    param0->monSummary.showContest = PokemonSummaryScreen_ShowContestData(param0->saveData);
    param0->monSummary.specialRibbons = sub_0202D79C(param0->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&(param0->monSummary), summaryPages);
    PokemonSummaryScreen_SetPlayerProfile(&(param0->monSummary), SaveData_GetTrainerInfo(param0->saveData));
}

static int ov19_021D1DAC(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        ov19_021D6594(param0->unk_114, 51);
        param0->unk_1B0++;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            return 1;
        }
    }

    return 0;
}

static void ov19_021D1DEC(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (ov19_GetBoxMode(&(param0->unk_00)) == PC_MODE_MOVE_ITEMS && ov19_GetCursorItem(&(param0->unk_00)) != ITEM_NONE) {
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        }

        if (ov19_GetPreviewMonSource(&(param0->unk_00)) != PREVIEW_MON_UNDER_CURSOR) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_HoldingMon);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 4;
            break;
        } else {
            ov19_021D6594(param0->unk_114, 34);
            (*param1) = 1;
        }

        break;

    case 1:
        if (ov19_021D6600(param0->unk_114, 34)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ConfirmExit);
            ov19_021DF964(&(param0->unk_00), 1);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 2;
        }
        break;
    case 2:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D0EA0(param0, ov19_021D1DAC);
            ov19_021D0EC0(param0);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 5;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D1F5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (ov19_GetPreviewMonSource(&(param0->unk_00)) != PREVIEW_MON_UNDER_CURSOR) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_HoldingMon);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 2;
            break;
        } else if (ov19_GetBoxMode(&param0->unk_00) == PC_MODE_MOVE_ITEMS && ov19_GetCursorItem(&param0->unk_00) != ITEM_NONE) {
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ConfirmContinue);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 5;
        }
        break;
    case 5:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D0EA0(param0, ov19_021D1DAC);
            ov19_021D0EC0(param0);
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 3;
    case 3:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D20A4(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        StringTemplate_SetNickname(param0->unk_19C, 0, ov19_GetPreviewedBoxMon(&param0->unk_00));
        ov19_SetBoxMessage(&param0->unk_00, BoxText_MonSelected);
        ov19_021DF990(&param0->unk_00);

        if (ov19_IsCursorFastMode(&param0->unk_00)) {
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_43:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_34:
            if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX && ov19_IsCursorFastMode(&param0->unk_00) == 1) {
                ov19_021D0EB0(param0, ov19_021D2B54);
            } else {
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D0EB0(param0, ov19_021D2E1C);
            }
            break;
        case UnkEnum_021DFB94_35:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D2F14);
            break;
        case UnkEnum_021DFB94_36:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D3010);
            break;
        case UnkEnum_021DFB94_38:
            ov19_021D0EB0(param0, ov19_021D30D0);
            break;
        case UnkEnum_021DFB94_39:
            ov19_021D0EB0(param0, ov19_021D3294);
            break;
        case UnkEnum_021DFB94_41:
            ov19_021D0EB0(param0, ov19_021D2A5C);
            break;
        case UnkEnum_021DFB94_42:
            ov19_021D0EB0(param0, ov19_021D35F8);
            break;
        case UnkEnum_021DFB94_37:
            ov19_021D0EB0(param0, ov19_021D3C28);
            break;
        case UnkEnum_021DFB94_40: {
            if (ov19_GetPreviewedMonHeldItem(&param0->unk_00) == 0) {
                ov19_021D0EB0(param0, ov19_021D3D44);
            } else {
                ov19_021D0EB0(param0, ov19_021D3FB0);
            }
        } break;
        case UnkEnum_021DFB94_52:
        case UnkEnum_021DFB94_53:
            ov19_021D5B70(&param0->unk_00);
            ov19_PreviewBoxMon(&param0->unk_00, param0->unk_00.cursor.mon, param0);
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D6594(param0->unk_114, 48);
            ov19_021D6594(param0->unk_114, 6);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            (*param1) = 5;
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2308(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0: {
        u32 item = ov19_GetCursorItem(&param0->unk_00);

        if (item != ITEM_NONE) {
            StringTemplate_SetItemName(param0->unk_19C, ITEM_NONE, item);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ItemSelected);
        } else {
            item = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

            if (item != ITEM_NONE) {
                StringTemplate_SetItemName(param0->unk_19C, 0, item);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_ItemSelected);
            } else {
                ov19_SetBoxMessage(&param0->unk_00, BoxText_GiveToMon);
            }
        }

        ov19_021DFAD0(&param0->unk_00);
    }

        if (ov19_IsPreviewedMonEgg(&param0->unk_00)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_EggsCantHoldItems);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 7;
        } else if (ov19_IsCursorFastMode(&param0->unk_00)) {
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_51:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_46:
            if (ov19_GetCursorItem(&param0->unk_00) == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                StringTemplate_SetItemName(param0->unk_19C, 0, ITEM_GRISEOUS_ORB);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonCantHoldItem);
                ov19_021D6594(param0->unk_114, 24);
                *param1 = 7;
            } else if (ov19_GetCursorItem(&param0->unk_00) != ITEM_NONE) {
                ov19_GiveItemFromCursor(&param0->unk_00, param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 20);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                (*param1) = 5;
            } else {
                ov19_021D0EB0(param0, ov19_021D3D44);
            }

            break;
        case UnkEnum_021DFB94_47:
            if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 7;
            } else {
                ov19_PickUpHeldItem(&param0->unk_00, param0);
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 19);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                (*param1) = 5;
            }
            break;
        case UnkEnum_021DFB94_48:
            ov19_021D0EB0(param0, ov19_021D4390);
            break;
        case UnkEnum_021DFB94_49:
            if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 7;
            } else if (param0->unk_00.cursorItem == ITEM_GRISEOUS_ORB && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                StringTemplate_SetItemName(param0->unk_19C, ITEM_NONE, ITEM_GRISEOUS_ORB);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonCantHoldItem);
                ov19_021D6594(param0->unk_114, 24);
                *param1 = 7;
            } else {
                ov19_SwapMonAndCursorItems(&param0->unk_00, param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 21);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                (*param1) = 5;
            }
            break;
        case UnkEnum_021DFB94_50:
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D6594(param0->unk_114, 6);
            ov19_021D6594(param0->unk_114, 22);
            *param1 = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 7:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    }
}

static void ov19_021D2694(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_SetBoxMessage(&param0->unk_00, BoxText_WhatDo);
        ov19_021DFB50(&param0->unk_00);

        if (ov19_IsCursorFastMode(&param0->unk_00)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_00:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D27E8);
            break;
        case UnkEnum_021DFB94_01:
            ov19_021D6594(param0->unk_114, 27);
            (*param1) = 7;
            break;
        case UnkEnum_021DFB94_02:
            ov19_021D0EB0(param0, ov19_021D3B34);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EB0(param0, ov19_021D2890);
        }
        break;
    }
}

static void ov19_021D27E8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D443C(param0, ov19_GetCurrentBox(&param0->unk_00), BoxText_JumpToBox);
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D4468(param0) == 0) {
            break;
        }

        if ((param0->unk_1BC.unk_05 == -1) || (param0->unk_1BC.unk_05 == ov19_GetCurrentBox(&param0->unk_00))) {
            (*param1) = 2;
        } else {
            ov19_LoadCustomizationsFor(&param0->unk_00, param0->unk_1BC.unk_05);
            PCBoxes_SetCurrentBox(param0->pcBoxes, param0->unk_1BC.unk_05);
            ov19_021D6594(param0->unk_114, 4);
            (*param1) = 2;
        }

        ov19_021D6594(param0->unk_114, 26);
        ov19_021D6594(param0->unk_114, 32);
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2890(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        param0->unk_1B8 = UnkEnum_021DFB94_04;
        (*param1) = 1;
    case 1:
        ov19_SetBoxMessage(&param0->unk_00, BoxText_PickTheme);
        ov19_021DFB94(&param0->unk_00, param0->unk_1B8);
        ov19_021D6594(param0->unk_114, 25);
        (*param1) = 2;
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 3;
    case 3:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
        default:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 8;
            break;
        case UnkEnum_021DFB94_04:
        case UnkEnum_021DFB94_05:
        case UnkEnum_021DFB94_06:
        case UnkEnum_021DFB94_07:
        case UnkEnum_021DFB94_08:
        case UnkEnum_021DFB94_09:
            param0->unk_1B8 = ov19_021DFDDC(&param0->unk_00);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_Wallpaper);
            ov19_021DFC04(&param0->unk_00, param0->unk_1B8);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 4;
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 5;
    case 5:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
            (*param1) = 1;
            break;
        default:
            param0->unk_1B8 = ov19_021DFDDC(&param0->unk_00);

            if ((param0->unk_1B8 >= UnkEnum_021DFB94_10) && (param0->unk_1B8 <= UnkEnum_021DFB94_33)) {
                PCBoxes_SetWallpaper(param0->pcBoxes, USE_CURRENT_BOX, param0->unk_1B8 - UnkEnum_021DFB94_10);
                ov19_LoadWallpaper(&param0->unk_00, param0->pcBoxes);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 6;
            } else {
                GF_ASSERT(0);
                (*param1) = 1;
            }
        }
        break;
    case 6:
        ov19_021D6594(param0->unk_114, 33);
        (*param1) = 8;
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            (*param1) = 1;
        }
        break;
    case 8:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2A5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021DFC80(&param0->unk_00);
        ov19_SetBoxMessage(&param0->unk_00, BoxText_MarkMon);
        ov19_021D6594(param0->unk_114, 25);
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        } else {
            u32 v0 = ov19_021DFD2C(&(param0->unk_00));

            switch (v0) {
            case -3:
                break;
            case -2:
                ov19_021D6594(param0->unk_114, 28);
                break;
            case -1:
            case UnkEnum_021DFB94_45:
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 2;
                break;
            case UnkEnum_021DFB94_44:
                ov19_021D5BAC(&param0->unk_00);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 7);
                ov19_021D6594(param0->unk_114, 39);
                (*param1) = 2;
                break;
            default:
                if ((v0 >= UnkEnum_021DFB94_56) && (v0 <= UnkEnum_021DFB94_61)) {
                    v0 -= UnkEnum_021DFB94_56;
                    ov19_021DFCE4(&param0->unk_00, v0);
                    ov19_021D6594(param0->unk_114, 29);
                }
                break;
            }
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2B54(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (JOY_HELD(PAD_BUTTON_A)) {
            ov19_ResetMultiSelectLocation(param0, &param0->unk_00);
            ov19_021D6594(param0->unk_114, 44);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *param1 = 1;
        } else {
            ov19_021D0EB0(param0, ov19_021D2E1C);
        }
        break;

    case 1:
        if (JOY_HELD(PAD_BUTTON_A)) {
            switch (ov19_TryMoveSelectionFromUserInput(gSystem.heldKeys, param0)) {
            case CURSOR_STOP:
                if (JOY_HELD(PAD_PLUS_KEY_MASK) == JOY_NEW(PAD_PLUS_KEY_MASK)) {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;

            case CURSOR_MOVE:
                ov19_SetMultiSelectionEndLocation(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 46);
                ov19_021D6594(param0->unk_114, 5);
                ov19_021D6594(param0->unk_114, 6);
                *param1 = 3;
                break;
            }
        } else {
            if (ov19_IsMultiSelectSingleSelect(&param0->unk_00)) {
                ov19_021D6594(param0->unk_114, 45);
                ov19_021D0EB0(param0, ov19_021D2E1C);
            } else {
                ov19_PickUpMultiSelectedMons(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 47);
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                *param1 = 2;
            }
        }
        break;

    case 2:
        if (ov19_021D6628(param0->unk_114) == FALSE) {
            break;
        }

        switch (ov19_TryMoveSelectionFromUserInput(gSystem.heldKeys, param0)) {
        case CURSOR_STOP:
            if (JOY_HELD(PAD_PLUS_KEY_MASK) == JOY_NEW(PAD_PLUS_KEY_MASK)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;

        case CURSOR_MOVE:
            ov19_021D6594(param0->unk_114, 5);
            if ((ov19_GetPreviewMonSource(&param0->unk_00) & PREVIEW_MON_HELD) == 0) {
                ov19_021D6594(param0->unk_114, 6);
            }
            break;

        case CURSOR_MOVE_TO_LEFT_BOX:
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 4);
            *param1 = 5;
            break;

        case CURSOR_MOVE_TO_RIGHT_BOX:
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 4);
            *param1 = 5;
            break;

        case CURSOR_NO_MOVEMENT:
            if (JOY_NEW(PAD_BUTTON_A)) {
                if (ov19_IsBoxUnderSelectedMonsEmpty(&param0->unk_00)) {
                    ov19_PutDownSelectedMons(param0, &param0->unk_00);
                    ov19_021D6594(param0->unk_114, 10);
                    Sound_PlayEffect(SEQ_SE_DP_BOX01);
                    *param1 = 4;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
            if (JOY_NEW(PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;
        }
        break;

    case 5:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if (!(ov19_GetPreviewMonSource(&param0->unk_00) & PREVIEW_MON_HELD)) {
                ov19_TryPreviewCursorMon(param0);
                ov19_021D6594(param0->unk_114, 6);
            }
            *param1 = 2;
        }
        break;

    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            *param1 = 1;
        }
        break;

    case 4:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_IsBoxUnderSelectedMonsEmpty(const UnkStruct_ov19_021D4DF0 *param0)
{
    BoxPokemon *boxMon;
    int i, posInBox;
    const BoxCursor *cursor = &param0->cursor;
    const BoxMonSelection *selection = &param0->selection;

    int selectionTopLeftPos = ov19_GetMultiSelectTopLeftPos(param0);
    int origSelectionTopLeftPos = selection->origSelectionTopLeftPos;

    for (i = 0; i < selection->selectedMonCount; i++) {
        posInBox = selectionTopLeftPos + (selection->selectedMonsOrigBoxPos[i] - origSelectionTopLeftPos);
        boxMon = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, posInBox);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
            return FALSE;
        }
    }

    return TRUE;
}

static void ov19_021D2E1C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_PARTY) {
            if (ov19_OnLastAliveMon(param0) == FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                ov19_PickUpMon(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 9);
                (*param1) = 1;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_LastMon);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 2;
            }
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            ov19_PickUpMon(param0, &param0->unk_00);
            ov19_021D6594(param0->unk_114, 9);
            (*param1) = 3;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_TryPreviewCursorMon(param0);
            ov19_021D6594(param0->unk_114, 37);
            (*param1) = 3;
        }
        break;
    case 2:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2F14(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_PutDownCursorMon(param0, &param0->unk_00);
        ov19_021D6594(param0->unk_114, 10);
        Sound_PlayEffect(SEQ_SE_DP_BOX01);

        if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_PARTY) {
            u32 cursorPosition = ov19_GetCursorPartyPosition(&param0->unk_00);
            u32 partyCount = Party_GetCurrentCount(param0->party);

            if (cursorPosition != (partyCount - 1)) {
                (*param1) = 1;
                ov19_TryPreviewCursorMon(param0);
                break;
            }
        }
        (*param1) = 2;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_TryPreviewCursorMon(param0);
            ov19_021D6594(param0->unk_114, 38);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0F14(param0);
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_CheckLastAliveMonReason(UnkStruct_ov19_021D5DF8 *param0, u32 *destMessageID)
{
    if (ov19_OnLastAliveMon(param0)) {
        if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_EGG_EXISTS, NULL)) {
            *destMessageID = BoxText_LastMon;
            return TRUE;
        }

        if (ov19_GetCursorMonIsPartyMon(&param0->unk_00)) {
            if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_CURRENT_HP, NULL) == 0) {
                *destMessageID = BoxText_LastMon;
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void ov19_021D3010(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0: {
        u32 messageID;

        if (ov19_CheckLastAliveMonReason(param0, &messageID)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, messageID);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 1;
        } else {
            ov19_SwapMonInCursor(param0, &param0->unk_00);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov19_021D6594(param0->unk_114, 11);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 2;
        }
    } break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0F14(param0);
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D30D0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (Party_GetCurrentCount(param0->party) != MAX_PARTY_SIZE) {
            ov19_021D6594(param0->unk_114, 26);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
                ov19_021D6594(param0->unk_114, 35);
                (*param1) = 2;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                ov19_PickUpMon(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 9);
                (*param1) = 1;
            }
        } else {
            ov19_021D6594(param0->unk_114, 27);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_PartyFull);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 7;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 9)) {
            ov19_021D6594(param0->unk_114, 35);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 35)) {
            ov19_MoveCursorToParty(param0);
            ov19_021D6594(param0->unk_114, 5);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_PutDownCursorMon(param0, &param0->unk_00);
            ov19_021D0F14(param0);
            ov19_021D6594(param0->unk_114, 10);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 10)) {
            ov19_021D6594(param0->unk_114, 36);
            (*param1) = 5;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 36)) {
            ov19_ReturnCursorToBox(param0);
            ov19_021D6594(param0->unk_114, 5);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 8;
        }
        break;
    case 7:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 8;
        }
        break;

    case 8:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D3294(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR && ov19_OnLastAliveMon(param0) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_LastMon);
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 3;
        } else {
            int boxMessageID;

            if (ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(param0, &boxMessageID)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, boxMessageID);
                ov19_021D6594(param0->unk_114, 27);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 3;
            } else {
                ov19_021D443C(param0, param0->unk_00.unk_110, BoxText_PickDepositBox);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 1;
            }
        }
        break;
    case 1:
        if (ov19_021D4468(param0) == 0) {
            break;
        }

        if (param0->unk_1BC.unk_05 == -1) {
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D6594(param0->unk_114, 32);
            (*param1) = 6;
            break;
        }

        param0->unk_00.unk_110 = param0->unk_1BC.unk_05;

        if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
            if (ov19_TryStoreCursorMonInBox(param0, param0->unk_1BC.unk_05)) {
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 32);
                (*param1) = 4;
                break;
            }
        } else {
            if (ov19_TryStoreSelectedMonInBox(param0, param0->unk_1BC.unk_05)) {
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 32);
                (*param1) = 5;
                break;
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        ov19_SetBoxMessage(&param0->unk_00, BoxText_BoxFull);
        ov19_021D6594(param0->unk_114, 24);
        (*param1) = 2;
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D4458(param0);
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 32)) {
            ov19_021D6594(param0->unk_114, 12);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 6;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 32)) {
            ov19_021D6594(param0->unk_114, 13);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_OnLastAliveMon(UnkStruct_ov19_021D5DF8 *param0)
{
    Pokemon *mon;
    int count;
    BOOL reencrypt;

    int partyCount = Party_GetCurrentCount(param0->party);
    for (int i = 0, count = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(param0->party, i);
        reencrypt = Pokemon_EnterDecryptionContext(mon);

        if (Pokemon_GetValue(mon, MON_DATA_EGG_EXISTS, NULL) == FALSE && Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL)) {
            count++;
        }

        Pokemon_ExitDecryptionContext(mon, reencrypt);

        if (count >= 2) {
            return FALSE;
        }
    }

    if (ov19_GetPreviewedOrSelectedMonValue(&param0->unk_00, MON_DATA_EGG_EXISTS, NULL)) {
        return FALSE;
    }

    if (ov19_GetPreviewedOrSelectedMonValue(&param0->unk_00, MON_DATA_CURRENT_HP, NULL) == 0) {
        return FALSE;
    }

    return TRUE;
}

static BOOL ov19_CheckReleaseMonValid(UnkStruct_ov19_021D5DF8 *param0, int *destBoxMessageID)
{
    if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_EGG_EXISTS, NULL)) {
        *destBoxMessageID = BoxText_CantReleaseEgg;
        return FALSE;
    }

    {
        u16 unused = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

        if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
            *destBoxMessageID = BoxText_RemoveMail;
            return FALSE;
        }
    }

    if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_BALL_CAPSULE_ID, NULL)) {
        *destBoxMessageID = BoxText_DetachBallCapsule;
        return FALSE;
    }

    if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
        if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_PARTY) {
            if (ov19_OnLastAliveMon(param0)) {
                *destBoxMessageID = BoxText_LastMon;
                return FALSE;
            }
        }
    }

    return TRUE;
}

static void ov19_021D35F8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0: {
        int boxMessageID;

        if (ov19_CheckReleaseMonValid(param0, &boxMessageID)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ReleaseMon);
            ov19_021DF964(&(param0->unk_00), 1);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, boxMessageID);
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 8;
        }
    } break;

    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 9;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 26)) {
            StringTemplate_SetNickname(param0->unk_19C, 0, ov19_GetPreviewedBoxMon(&param0->unk_00));
            ov19_021D38E0(param0);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
                ov19_021D6594(param0->unk_114, 14);
                param0->unk_1B8 = 0;
            } else {
                if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX) {
                    ov19_021D6594(param0->unk_114, 15);
                    param0->unk_1B8 = 1;
                } else {
                    ov19_021D6594(param0->unk_114, 16);
                    param0->unk_1B8 = 2;
                }
            }
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            if (ov19_021D3B20(param0)) {
                if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
                    ov19_021D5834(param0);
                } else {
                    ov19_RemoveMonUnderCursor(param0);
                }

                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonReleased);
                (*param1) = 5;
            } else {
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonReturned);
                (*param1) = 4;
            }

            ov19_021D6594(param0->unk_114, 24);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_GoodbyeForever);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 6;
        }
        break;
    case 4:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_MonWasWorried);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 7;
        }
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            if (ov19_021D3B20(param0)) {
                if (param0->unk_1B8 == 2) {
                    ov19_021D6594(param0->unk_114, 37);
                }

                ov19_021D0F14(param0);
            }

            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 9;
        }
        break;
    case 8:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 9;
        }
        break;
    case 9:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D38E0(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D38E0 *v0 = &(param0->unk_15C);
    int v1, v2;

    v0->boxMon = param0->unk_00.pcMonPreview.mon;

    for (v1 = 0, v2 = 0; v1 < (NELEMS(Unk_ov19_021DFDF0)); v1++) {
        v0->unk_04[v1] = BoxPokemon_HasMove(v0->boxMon, Unk_ov19_021DFDF0[v1]);

        if (v0->unk_04[v1]) {
            v2++;
        }
    }

    if (v2 == 0) {
        v0->unk_00 = 1;
        v0->unk_01 = 1;
        return;
    } else {
        v0->unk_00 = 0;
        v0->unk_01 = 0;
        v0->boxID = 0;
        v0->monPosInBox = 0;
        v0->pcBoxes = param0->pcBoxes;
        v0->party = param0->party;
        v0->unk_1C = ov19_GetPreviewMonSource(&param0->unk_00) != PREVIEW_MON_UNDER_CURSOR;

        for (v1 = 0; v1 < (NELEMS(Unk_ov19_021DFDF0)); v1++) {
            v0->unk_08[v1] = 0;
        }

        SysTask_Start(ov19_021D3978, v0, 0);
    }
}

static void ov19_021D3978(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D38E0 *v0 = param1;
    BoxPokemon *boxMon;
    int monIndex, v3;

    if (v0->boxID < MAX_PC_BOXES) {
        int v4 = v0->monPosInBox + 15;

        if (v4 > MAX_MONS_PER_BOX) {
            v4 = MAX_MONS_PER_BOX;
        }

        for (monIndex = v0->monPosInBox; monIndex < v4; monIndex++) {
            boxMon = PCBoxes_GetBoxMonAt(v0->pcBoxes, v0->boxID, monIndex);

            if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
                for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                    if (BoxPokemon_HasMove(boxMon, Unk_ov19_021DFDF0[v3])) {
                        v0->unk_08[v3]++;
                    }
                }
            }
        }

        if (v4 == MAX_MONS_PER_BOX) {
            v0->monPosInBox = 0;
            v0->boxID++;
        } else {
            v0->monPosInBox = v4;
        }
    } else {
        int partyCount = Party_GetCurrentCount(v0->party);

        for (monIndex = 0; monIndex < partyCount; monIndex++) {
            boxMon = (BoxPokemon *)Party_GetPokemonBySlotIndex(v0->party, monIndex);

            for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                if (BoxPokemon_HasMove(boxMon, Unk_ov19_021DFDF0[v3])) {
                    v0->unk_08[v3]++;
                }
            }
        }

        if (v0->unk_1C) {
            for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                if (BoxPokemon_HasMove(v0->boxMon, Unk_ov19_021DFDF0[v3])) {
                    v0->unk_08[v3]++;
                }
            }
        }

        v0->unk_01 = 1;

        for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
            if ((v0->unk_08[v3] == 1) && (v0->unk_04[v3] == 1)) {
                v0->unk_01 = 0;
                break;
            }
        }

        v0->unk_00 = 1;
        SysTask_Done(param0);
    }
}

static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 move)
{
    BOOL hasMove = FALSE;
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    if (BoxPokemon_GetValue(boxMon, MON_DATA_EGG_EXISTS, NULL) == FALSE) {
        for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + i, NULL) == move) {
                hasMove = TRUE;
                break;
            }
        }
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
    return hasMove;
}

BOOL ov19_021D3B18(const UnkStruct_ov19_021D5DF8 *param0)
{
    const UnkStruct_ov19_021D38E0 *v0 = &(param0->unk_15C);
    return v0->unk_00;
}

BOOL ov19_021D3B20(const UnkStruct_ov19_021D5DF8 *param0)
{
    const UnkStruct_ov19_021D38E0 *v0 = &(param0->unk_15C);

    if (v0->unk_00) {
        return v0->unk_01;
    }

    return FALSE;
}

static void ov19_021D3B34(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(HEAP_ID_10);
            PCBoxes_BufferBoxName(param0->pcBoxes, PCBoxes_GetCurrentBoxID(param0->pcBoxes), param0->unk_128->unk_18);
            param0->ApplicationManager = ApplicationManager_New(&Unk_020F2DAC, param0->unk_128, HEAP_ID_9);
            (*param1)++;
        }
        break;
    case 2:
        if (ApplicationManager_Exec(param0->ApplicationManager)) {
            u32 boxID = PCBoxes_GetCurrentBoxID(param0->pcBoxes);

            ApplicationManager_Free(param0->ApplicationManager);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);
            PCBoxes_RenameBox(param0->pcBoxes, boxID, param0->unk_128->unk_18);

            PCBoxes_LoadCustomization(param0->pcBoxes, &param0->unk_00.customization);
            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D0EB0(param0, ov19_021D0F88);
        }
        break;
    }
}

static void ov19_021D3C28(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(HEAP_ID_10);
            ov19_021D1C84(param0);
            param0->ApplicationManager = ApplicationManager_New(&gPokemonSummaryScreenApp, &(param0->monSummary), HEAP_ID_9);
            (*param1)++;
        }
        break;
    case 2:
        if (ApplicationManager_Exec(param0->ApplicationManager)) {
            u32 v0 = PCBoxes_GetCurrentBoxID(param0->pcBoxes);

            ApplicationManager_Free(param0->ApplicationManager);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_SetCursorPosToSummaryMonPos(&(param0->unk_00), param0);
            }

            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D0EB0(param0, ov19_021D0F88);
            ov19_021D0F14(param0);
        }
    }
}

static void ov19_SetCursorPosToSummaryMonPos(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    BoxCursor *cursor = &param0->cursor;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        cursor->posInBox = param1->monSummary.monIndex;
        cursor->boxCol = cursor->posInBox % MAX_PC_COLS;
        cursor->boxRow = cursor->posInBox / MAX_PC_COLS;
        break;
    case CURSOR_IN_PARTY:
        cursor->posInParty = param1->monSummary.monIndex;
        break;
    default:
        return;
    }

    ov19_TryPreviewCursorMon(param1);
}

static void ov19_021D3D44(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    FS_EXTERN_OVERLAY(overlay84);

    static const u8 bagPockets[] = {
        POCKET_ITEMS,
        POCKET_MEDICINE,
        POCKET_BALLS,
        POCKET_TMHMS,
        POCKET_BERRIES,
        POCKET_BATTLE_ITEMS,
        POCKET_KEY_ITEMS,
        -1
    };
    static u32 item;

    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(HEAP_ID_10);

            Bag *bag = SaveData_GetBag(param0->saveData);
            param0->unk_214 = sub_0207D824(bag, bagPockets, HEAP_ID_9);
            sub_0207CB2C(param0->unk_214, param0->saveData, 1, NULL);
            Overlay_LoadByID(FS_OVERLAY_ID(overlay84), 2);
            param0->ApplicationManager = ApplicationManager_New(&Unk_ov84_02241130, param0->unk_214, HEAP_ID_9);
            (*param1)++;
        }
        break;
    case 2:
        if (ApplicationManager_Exec(param0->ApplicationManager)) {
            item = sub_0207CB94((UnkStruct_0207CB08 *)(param0->unk_214));

            ApplicationManager_Free(param0->ApplicationManager);
            Heap_FreeToHeap(param0->unk_214);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay84));

            if ((item == ITEM_GRISEOUS_ORB) && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                (void)0;
            } else if (item != ITEM_NONE) {
                Bag_TryRemoveItem(SaveData_GetBag(param0->saveData), item, 1, HEAP_ID_9);
                ov19_GiveItemToSelectedMon(&param0->unk_00, item, param0);
                ov19_021D0F14(param0);
            }

            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);
            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D6594(param0->unk_114, 0);
            (*param1)++;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 2);
            (*param1)++;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 2)) {
            if (item == ITEM_NONE) {
                ov19_021D0EC0(param0);
            } else if ((item == ITEM_GRISEOUS_ORB) && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                StringTemplate_SetItemName(param0->unk_19C, 0, item);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonCantHoldItem);
                ov19_021D6594(param0->unk_114, 24);
                (*param1)++;
            } else {
                StringTemplate_SetItemName(param0->unk_19C, 0, item);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_HoldingItem);
                ov19_021D6594(param0->unk_114, 24);
                (*param1)++;
            }
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D6594(param0->unk_114, 26);
                (*param1)++;
            }
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D3FB0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    static u32 item;

    switch (*param1) {
    case 0:
        item = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

        if (Item_IsMail(item)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 4;
        } else {
            StringTemplate_SetItemName(param0->unk_19C, 0, item);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ConfirmTakeItem);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 5;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 27);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (Bag_TryAddItem(SaveData_GetBag(param0->saveData), item, 1, HEAP_ID_9)) {
            ov19_GiveItemToSelectedMon(&param0->unk_00, ITEM_NONE, param0);
            ov19_021D6594(param0->unk_114, 22);
            ov19_021D6594(param0->unk_114, 6);
            *param1 = 3;
        } else {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_BagFull);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 4;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_TookItem);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 5;
            }
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4184(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    static u32 item;

    switch (*param1) {
    case 0:
        item = ov19_GetCursorOrPreviewedItem(&param0->unk_00);

        if (Item_IsMail(item)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 5;
        } else {
            StringTemplate_SetItemName(param0->unk_19C, 0, item);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_PutAwayItem);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (Bag_TryAddItem(SaveData_GetBag(param0->saveData), item, 1, HEAP_ID_9)) {
            if (ov19_GetCursorItem(&param0->unk_00) != ITEM_NONE) {
                ov19_RemoveCursorItem(&param0->unk_00);
                *param1 = 4;
            } else {
                ov19_GiveItemToSelectedMon(&param0->unk_00, ITEM_NONE, param0);
                *param1 = 3;
            }

            ov19_021D6594(param0->unk_114, 23);
        } else {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_BagFull);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 5;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 23)) {
            ov19_021D6594(param0->unk_114, 22);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_PlaceItemInBag);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 5;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 6;
            }
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4390(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 26);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D6594(param0->unk_114, 17);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 17)) {
            (*param1)++;
        }
        break;
    case 3:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
            ov19_021D6594(param0->unk_114, 18);
            (*param1)++;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 18)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D443C(UnkStruct_ov19_021D5DF8 *param0, u32 boxID, u32 boxMessageID)
{
    param0->unk_1BC.unk_00 = 0;
    param0->unk_1BC.unk_05 = boxID;
    param0->unk_1BC.boxMessageID = boxMessageID;
    param0->unk_1BC.unk_04 = 0;
}

static void ov19_021D4458(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_1BC.unk_00 = 0;
    param0->unk_1BC.unk_04 = 1;
}

static BOOL ov19_021D4468(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4468 *v0 = &(param0->unk_1BC);

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_04 == 1) {
            v0->unk_00 = 1;
            break;
        }

        if (v0->unk_05 == -1) {
            v0->unk_05 = 0;
        }

        ov19_021D5D20(&param0->unk_00, v0->unk_05);
        ov19_021D6594(param0->unk_114, 30);
        v0->unk_00 = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 30)) {
            ov19_SetBoxMessage(&param0->unk_00, v0->boxMessageID);
            ov19_021D6594(param0->unk_114, 24);
            v0->unk_00 = 2;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        v0->unk_00 = 3;
    case 3:
        if (ov19_021D6600(param0->unk_114, 31) == 0) {
            break;
        }

        if (JOY_NEW(PAD_KEY_LEFT | PAD_BUTTON_L)) {
            v0->unk_05--;

            if (v0->unk_05 < 0) {
                v0->unk_05 = 18 - 1;
            }

            ov19_021D5D20(&param0->unk_00, v0->unk_05);
            ov19_021D6594(param0->unk_114, 31);
            break;
        }

        if (JOY_NEW(PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            if (++(v0->unk_05) >= MAX_PC_BOXES) {
                v0->unk_05 = 0;
            }

            ov19_021D5D20(&param0->unk_00, v0->unk_05);
            ov19_021D6594(param0->unk_114, 31);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return TRUE;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            v0->unk_05 = -1;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void ov19_021D45A8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
        ov19_TryPreviewCursorMon(param0);
        ov19_021D6594(param0->unk_114, 4);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX && ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_021D6594(param0->unk_114, 6);
                (*param1)++;
            } else {
                ov19_021D0EC0(param0);
            }
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 6)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4640(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov19_021D5D94(&param0->unk_00, 1);
        ov19_021D5D9C(&(param0->unk_00), ov19_GetCurrentBox(&param0->unk_00));
        ov19_021D6594(param0->unk_114, 40);
        ov19_021D603C(&(param0->unk_1C8), 0, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 40) == 0) {
            break;
        }

        if (ov19_TryPressTouchScreenButton(param0)) {
            if (param0->touchScreenButtonPressed == 1) {
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_021D0EB0(param0, ov19_021D4938);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        }

        if (gSystem.pressedKeys & (PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5D94(&(param0->unk_00), 0);
            ov19_021D5D9C(&(param0->unk_00), ov19_GetCurrentBox(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 40);
            (*param1) = 5;
            break;
        }

        if (param0->unk_204) {
            if (param0->unk_208) {
                if (++(param0->unk_200) > 20) {
                    u32 v0 = ov19_021D5EB8(&param0->unk_00);

                    ov19_LoadCustomizationsFor(&param0->unk_00, v0);
                    PCBoxes_SetCurrentBox(param0->pcBoxes, v0);
                    ov19_TryPreviewCursorMon(param0);

                    if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                        ov19_021D6594(param0->unk_114, 8);
                    }

                    ov19_021D6594(param0->unk_114, 4);
                    param0->unk_204 = 0;
                    param0->unk_200 = 0;
                    (*param1) = 3;
                    break;
                }
            }
        }

        switch (ov19_021D60A8(&param0->unk_1C8)) {
        case 1:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case 2: {
            int v1;

            v1 = ov19_021D614C(&param0->unk_1C8);

            if (v1 != param0->unk_20C) {
                int v2, v3;

                v2 = v1 - param0->unk_20C;
                v3 = ov19_021D5EB8(&param0->unk_00) + v2;

                if (v3 < 0) {
                    v3 += 18;
                } else if (v3 >= 18) {
                    v3 -= 18;
                }

                param0->unk_20C = v1;
                ov19_021D5D9C(&(param0->unk_00), v3);
                ov19_021D5DAC(&(param0->unk_00), v2);
                ov19_021D6594(param0->unk_114, 41);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
            }
        } break;
        case 3: {
            int v4, v5;

            v4 = ov19_GetCurrentBox(&param0->unk_00);
            v5 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v4 != v5);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        } break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (ov19_021D60A8(&param0->unk_1C8) == 3) {
                int v6, v7;

                v6 = ov19_GetCurrentBox(&param0->unk_00);
                v7 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v6 != v7);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_021D6600(param0->unk_114, 41)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR && ov19_IsMonUnderCursor(&param0->unk_00)) {
                ov19_021D6594(param0->unk_114, 6);
                (*param1) = 4;
            } else {
                (*param1) = 1;
            }
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 6)) {
            (*param1) = 1;
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4938(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov19_021D5D94(&param0->unk_00, 2);
        ov19_SetMarkingsButtonsScrollOffset(&(param0->unk_00), 0);
        ov19_021D5D9C(&(param0->unk_00), 0);
        ov19_021D6594(param0->unk_114, 40);
        ov19_021D603C(&(param0->unk_1C8), 255, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 40) == 0) {
            break;
        }

        if (ov19_TryPressTouchScreenButton(param0)) {
            if (param0->touchScreenButtonPressed == 0) {
                ov19_021D0EB0(param0, ov19_021D4640);
                break;
            }
        }

        if (gSystem.pressedKeys & (PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5D94(&param0->unk_00, 0);
            ov19_021D6594(param0->unk_114, 40);
            (*param1) = 3;
        }

        if (ov19_021D4B88(param0)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 42);
            ov19_021D6594(param0->unk_114, 39);
            break;
        }

        switch (ov19_021D60A8(&param0->unk_1C8)) {
        case 1:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case 2: {
            int v0;

            v0 = ov19_021D614C(&param0->unk_1C8);

            if (v0 != param0->unk_20C) {
                int v1, offset;

                v1 = v0 - param0->unk_20C;
                offset = ov19_021D5EB8(&param0->unk_00) + v1;

                if (offset < 0) {
                    offset += 8;
                } else if (offset >= 8) {
                    offset -= 8;
                }

                param0->unk_20C = v0;

                ov19_021D5D9C(&(param0->unk_00), offset);
                ov19_SetMarkingsButtonsScrollOffset(&(param0->unk_00), offset);
                ov19_021D5DAC(&(param0->unk_00), v1);
                ov19_021D6594(param0->unk_114, 41);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
            }
        } break;
        case 3: {
            int v3, v4;

            v3 = ov19_GetCurrentBox(&param0->unk_00);
            v4 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v3 != v4);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        } break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (ov19_021D60A8(&param0->unk_1C8) == 3) {
                int v5, v6;

                v5 = ov19_GetCurrentBox(&param0->unk_00);
                v6 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v5 != v6);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_021D6600(param0->unk_114, 41)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_188 = 8;

    TouchScreenActions_HandleAction(param0->markingsButtonsAction);

    if (param0->unk_188 != 8) {
        return TRUE;
    }

    return FALSE;
}

static void ov19_BoxTouchScreenMarkingsButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context)
{
    UnkStruct_ov19_021D5DF8 *v0 = (UnkStruct_ov19_021D5DF8 *)context;

    if (v0->unk_188 == 8) {
        if (buttonTouchState == TOUCH_BUTTON_PRESSED) {
            u32 mask = ov19_GetMarkingsButtonsScrollOffset(&v0->unk_00);
            mask += buttonIndex;

            if (mask >= 8) {
                mask -= 8;
            }

            ov19_SetMonSpriteTransparencyMask(&v0->unk_00, mask);
            v0->unk_188 = buttonIndex;
        }
    }
}

static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_02042434 *param1)
{
    param0->pcBoxes = SaveData_GetPCBoxes(param1->saveData);
    param0->saveData = param1->saveData;
    param0->party = SaveData_GetParty(param1->saveData);
    param0->options = SaveData_GetOptions(param1->saveData);
    param0->unk_118 = param1;
    param1->unk_08 = 0;
    param0->boxMessagesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BOX_MESSAGES, HEAP_ID_9);
    param0->speciesNameLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_9);
    param0->natureNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NATURE_NAMES, HEAP_ID_9);
    param0->abilityNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_NAMES, HEAP_ID_9);
    param0->unk_19C = StringTemplate_Default(HEAP_ID_9);
    param0->mon = Heap_AllocFromHeap(HEAP_ID_9, Pokemon_StructSize());

    GF_ASSERT(param0->unk_19C);
    param0->unk_128 = sub_0208712C(HEAP_ID_9, 2, 0, 8, param0->options);

    if (param1->boxMode != PC_MODE_COMPARE) {
        param0->mainBoxAndCompareButtonsAction = TouchScreenActions_RegisterHandler(sMainPcButtons, NELEMS(sMainPcButtons), ov19_BoxTouchScreenButtonHandler, param0, HEAP_ID_9);
    } else {
        param0->mainBoxAndCompareButtonsAction = TouchScreenActions_RegisterHandler(sComparePokemonButtons, NELEMS(sComparePokemonButtons), ov19_BoxTouchScreenButtonHandler, param0, HEAP_ID_9);
    }

    param0->markingsButtonsAction = TouchScreenActions_RegisterHandler(sPokemonMarkingsButtons, NELEMS(sPokemonMarkingsButtons), ov19_BoxTouchScreenMarkingsButtonHandler, param0, HEAP_ID_9);
    param0->unk_00.pcBoxes = param0->pcBoxes;
    param0->unk_00.party = param0->party;
    param0->unk_00.unk_110 = 0;
    param0->unk_00.cursorItem = ITEM_NONE;

    BoxSettings_Init(&(param0->unk_00.boxSettings), param1->boxMode);
    PCMonPreviewInit(&(param0->unk_00.pcMonPreview));
    PCBoxes_InitCustomization(param0->pcBoxes, &(param0->unk_00.customization));
    ov19_PCCompareMonsInit(&(param0->unk_00.unk_A4));
    ov19_InitCursor(param0);
    ov19_InitMonSelection(&(param0->unk_00.selection));
    ov19_021D4F34(&(param0->unk_00.unk_9C));
}

static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 *param0)
{
    TouchScreenActions_Free(param0->markingsButtonsAction);
    TouchScreenActions_Free(param0->mainBoxAndCompareButtonsAction);

    if (param0->mon) {
        Heap_FreeToHeap(param0->mon);
    }

    StringTemplate_Free(param0->unk_19C);
    MessageLoader_Free(param0->boxMessagesLoader);
    MessageLoader_Free(param0->speciesNameLoader);
    MessageLoader_Free(param0->natureNameLoader);
    MessageLoader_Free(param0->abilityNameLoader);
    sub_0208716C(param0->unk_128);

    PCMonPreviewFree(&(param0->unk_00.pcMonPreview));
    ov19_MonSelectionFree(&(param0->unk_00.selection));
    Customization_Free(&(param0->unk_00.customization));
    ov19_PCCompareMonsFree(&(param0->unk_00.unk_A4));

    Heap_FreeToHeap(param0);
}

static void BoxSettings_Init(BoxSettings *boxSettings, enum BoxMode boxMode)
{
    boxSettings->boxMode = boxMode;
    boxSettings->isCursorFastMode = FALSE;
    boxSettings->monSpriteTransparencyMask = 0;
}

static void ov19_InitCursor(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &(v0->cursor);

    ov19_SetCursorBoxLocation(v0, 0, 0);

    cursor->posInParty = 0;
    cursor->prevCursorLocation = CURSOR_IN_PARTY;

    switch (v0->boxSettings.boxMode) {
    case PC_MODE_DEPOSIT:
        cursor->cursorLocation = CURSOR_IN_PARTY;
        break;
    case PC_MODE_COMPARE:
        cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
        break;
    default:
        cursor->cursorLocation = CURSOR_IN_BOX;
    }

    cursor->previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    ov19_TryPreviewCursorMon(param0);
}

static void ov19_InitMonSelection(BoxMonSelection *selection)
{
    selection->boxMon = Heap_AllocFromHeap(HEAP_ID_9, MAX_MONS_PER_BOX * BoxPokemon_GetStructSize());
    selection->selectedMonCount = 0;
    selection->cursorMonIsPartyMon = FALSE;
}

static void ov19_MonSelectionFree(BoxMonSelection *selection)
{
    Heap_FreeToHeap(selection->boxMon);
}

static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->boxID = PCBoxes_GetCurrentBoxID(pcBoxes);
    customization->name = Strbuf_Init(PC_BOX_NAME_BUFFER_LEN, HEAP_ID_9);
    PCBoxes_LoadCustomization(pcBoxes, customization);
}

static void Customization_Free(BoxCustomization *customization)
{
    Strbuf_Free(customization->name);
}

static void PCMonPreviewInit(PCMonPreview *param0)
{
    param0->nickname = Strbuf_Init(12, HEAP_ID_9);
    param0->speciesName = Strbuf_Init(12, HEAP_ID_9);
    param0->heldItemName = Strbuf_Init(18, HEAP_ID_9);
    param0->nature = Strbuf_Init(12, HEAP_ID_9);
    param0->ability = Strbuf_Init(16, HEAP_ID_9);
}

static void PCMonPreviewFree(PCMonPreview *param0)
{
    Strbuf_Free(param0->nickname);
    Strbuf_Free(param0->speciesName);
    Strbuf_Free(param0->heldItemName);
    Strbuf_Free(param0->nature);
    Strbuf_Free(param0->ability);
}

static void ov19_PCCompareMonsInit(UnkStruct_ov19_021D4EE4 *param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->compareButtonAnimationPressed = FALSE;

    for (int i = 0; i < 2; i++) {
        param0->unk_02[i] = 0;
        param0->compareMons[i].monName = Strbuf_Init(12, HEAP_ID_9);
        param0->compareMons[i].nature = Strbuf_Init(12, HEAP_ID_9);
    }
}

static void ov19_PCCompareMonsFree(UnkStruct_ov19_021D4EE4 *param0)
{
    for (int i = 0; i < 2; i++) {
        Strbuf_Free(param0->compareMons[i].monName);
        Strbuf_Free(param0->compareMons[i].nature);
    }
}

static void ov19_021D4F34(UnkStruct_ov19_021D4F34 *param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->markingsButtonsScrollOffset = 0;
    param0->unk_04 = 0;
}

static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
    PCBoxes_BufferBoxName(pcBoxes, customization->boxID, customization->name);
}

static void ov19_LoadWallpaper(UnkStruct_ov19_021D4DF0 *param0, PCBoxes *pcBoxes)
{
    BoxCustomization *customization = &(param0->customization);
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
}

static BOOL ov19_TryMoveCursorFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1)
{
    BOOL cursorMoved = FALSE;

    do {
        if (heldKeys & PAD_KEY_LEFT) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), -1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_RIGHT) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), 1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_UP) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), 0, -1);
            break;
        }

        if (heldKeys & PAD_KEY_DOWN) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), 0, 1);
            break;
        }
    } while (FALSE);

    if (cursorMoved == TRUE) {
        ov19_TryPreviewCursorMon(param1);
    }

    return cursorMoved;
}

static BOOL ov19_TryMoveCursor(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange)
{
    BoxCursor *cursor = &param0->cursor;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        if (colChange != 0) {
            int newCol = cursor->boxCol += colChange;

            if (newCol < 0) {
                newCol = MAX_PC_COLS - 1;
            } else if (newCol >= MAX_PC_COLS) {
                newCol = 0;
            }

            ov19_SetCursorBoxLocation(param0, newCol, cursor->boxRow);

            return TRUE;
        } else if (rowChange != 0) {
            int newRow = cursor->boxRow + rowChange;

            if (newRow < 0) {
                newRow = 0;
                cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
            } else if (newRow > 4) {
                newRow = 4;
                cursor->cursorLocation = cursor->boxCol == MAX_PC_COLS - 1 ? CURSOR_ON_CLOSE_BUTTON : CURSOR_ON_PARTY_BUTTON;
            }

            ov19_SetCursorBoxLocation(param0, cursor->boxCol, newRow);
            return TRUE;
        }
        break;

    case CURSOR_ON_BOX_HEADER:
        if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            ov19_SetCursorBoxLocation(param0, cursor->boxCol, 0);
            return TRUE;
        } else if (rowChange < 0) {
            cursor->cursorLocation = cursor->boxCol == MAX_PC_COLS - 1 ? CURSOR_ON_CLOSE_BUTTON : CURSOR_ON_PARTY_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_ON_CLOSE_BUTTON:
        if (rowChange < 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            ov19_SetCursorBoxLocation(param0, cursor->boxCol, 4);
            return TRUE;
        } else if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
            return TRUE;
        } else if (colChange != 0) {
            cursor->cursorLocation = CURSOR_ON_PARTY_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_ON_PARTY_BUTTON:
        if (rowChange < 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            ov19_SetCursorBoxLocation(param0, cursor->boxCol, 4);
            return TRUE;
        }

        if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
            return TRUE;
        }

        if (colChange != 0) {
            cursor->cursorLocation = CURSOR_ON_CLOSE_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_IN_PARTY: {
        u32 initialPosition = cursor->posInParty;

        if (rowChange < 0) {
            if (initialPosition == MAX_PARTY_SIZE) {
                cursor->posInParty = 5;
            } else {
                cursor->posInParty -= 2;

                if (cursor->posInParty < 0) {
                    cursor->posInParty = MAX_PARTY_SIZE;
                }
            }
        } else if (rowChange > 0) {
            if (initialPosition == MAX_PARTY_SIZE) {
                cursor->posInParty = 0;
            } else {
                cursor->posInParty += 2;

                if (cursor->posInParty >= MAX_PARTY_SIZE) {
                    cursor->posInParty = MAX_PARTY_SIZE;
                }
            }
        } else if (colChange < 0) {
            if (initialPosition & 1) {
                cursor->posInParty -= 1;
            }
        } else if (colChange > 0) {
            if (initialPosition != MAX_PARTY_SIZE) {
                if ((initialPosition & 1) == 0) {
                    cursor->posInParty += 1;
                }
            }
        }

        if (initialPosition != cursor->posInParty) {
            return TRUE;
        }
        break;
    } break;
    }

    return FALSE;
}

static enum CursorMovementState ov19_TryMoveSelectionFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1)
{
    enum CursorMovementState cursorMovement = CURSOR_NO_MOVEMENT;

    do {
        if (heldKeys & PAD_KEY_LEFT) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), -1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_RIGHT) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), 1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_UP) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), 0, -1);
            break;
        }

        if (heldKeys & PAD_KEY_DOWN) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), 0, 1);
            break;
        }

        if (heldKeys & PAD_BUTTON_L) {
            cursorMovement = CURSOR_MOVE_TO_LEFT_BOX;
            break;
        }

        if (heldKeys & PAD_BUTTON_R) {
            cursorMovement = CURSOR_MOVE_TO_RIGHT_BOX;
            break;
        }
    } while (FALSE);

    if (cursorMovement == CURSOR_MOVE) {
        ov19_TryPreviewCursorMon(param1);
    }

    return cursorMovement;
}

static enum CursorMovementState ov19_TryMoveSelection(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange)
{
    BoxCursor *cursor = &param0->cursor;
    const BoxMonSelection *selection = &param0->selection;

    if (cursor->cursorLocation == CURSOR_IN_BOX) {
        if (colChange != 0) {
            int newCol = cursor->boxCol + colChange;

            if (ov19_GetPreviewMonSource(param0) & PREVIEW_MON_SELECTION) {
                int selectionLeftCol, selectionRightCol;

                selectionLeftCol = selectionRightCol = newCol;

                if (selection->selectionEndCol > selection->selectionStartCol) {
                    selectionLeftCol -= selection->selectionEndCol - selection->selectionStartCol;
                } else {
                    selectionRightCol += selection->selectionStartCol - selection->selectionEndCol;
                }

                if (selectionLeftCol < 0) {
                    return CURSOR_MOVE_TO_LEFT_BOX;
                }

                if (selectionRightCol >= MAX_PC_COLS) {
                    return CURSOR_MOVE_TO_RIGHT_BOX;
                }
            } else {
                if (newCol < 0 || newCol >= MAX_PC_COLS) {
                    return CURSOR_STOP;
                }
            }

            ov19_SetCursorBoxLocation(param0, newCol, cursor->boxRow);
            return CURSOR_MOVE;
        }

        if (rowChange != 0) {
            int newRow = cursor->boxRow + rowChange;

            if (ov19_GetPreviewMonSource(param0) & PREVIEW_MON_SELECTION) {
                int selectionTopRow, selectionBottomRow;

                selectionTopRow = selectionBottomRow = newRow;

                if (selection->selectionEndRow > selection->selectionStartRow) {
                    selectionTopRow -= selection->selectionEndRow - selection->selectionStartRow;
                } else {
                    selectionBottomRow += selection->selectionStartRow - selection->selectionEndRow;
                }

                if (selectionTopRow < 0 || selectionBottomRow >= MAX_PC_ROWS) {
                    return CURSOR_STOP;
                }
            } else {
                if (newRow < 0 || newRow >= MAX_PC_ROWS) {
                    return CURSOR_STOP;
                }
            }

            ov19_SetCursorBoxLocation(param0, cursor->boxCol, newRow);
            return CURSOR_MOVE;
        }
    }

    GF_ASSERT(FALSE);
    return CURSOR_NO_MOVEMENT;
}

static void ov19_MoveCursorToParty(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &param0->unk_00;
    BoxCursor *cursor = &v0->cursor;
    u32 unused;

    if (ov19_GetPreviewMonSource(v0) == PREVIEW_MON_IN_CURSOR) {
        cursor->posInParty = Party_GetCurrentCount(param0->party);

        if (cursor->posInParty >= MAX_PARTY_SIZE) {
            cursor->posInParty = MAX_PARTY_SIZE - 1;
        }
    } else {
        cursor->posInParty = 0;
    }

    cursor->prevCursorLocation = cursor->cursorLocation;
    cursor->cursorLocation = CURSOR_IN_PARTY;

    ov19_TryPreviewCursorMon(param0);
}

static void ov19_ReturnCursorToBox(UnkStruct_ov19_021D5DF8 *param0)
{
    BoxCursor *cursor = &(param0->unk_00.cursor);
    cursor->cursorLocation = CURSOR_IN_BOX;

    if (cursor->prevCursorLocation != CURSOR_IN_BOX) {
        ov19_SetCursorBoxLocation(&param0->unk_00, 0, 0);
    }

    ov19_TryPreviewCursorMon(param0);
}

static BOOL ov19_TryPreviewCursorMon(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &param0->unk_00;
    PCMonPreview *preview = &v0->pcMonPreview;
    BoxCursor *cursor = &v0->cursor;
    u32 unused;

    cursor->isMonUnderCursor = FALSE;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        cursor->mon = PCBoxes_GetBoxMonAt(v0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
        break;
    case CURSOR_IN_PARTY:
        if (cursor->posInParty < Party_GetCurrentCount(param0->party)) {
            cursor->mon = Party_GetPokemonBySlotIndex(param0->party, cursor->posInParty);
        } else {
            cursor->mon = NULL;
        }

        break;
    case CURSOR_ON_BOX_HEADER:
    case CURSOR_ON_CLOSE_BUTTON:
    case CURSOR_ON_PARTY_BUTTON:
    default:
        cursor->mon = NULL;
        break;
    }

    if (cursor->mon) {
        if (BoxPokemon_GetValue(cursor->mon, MON_DATA_SPECIES_EXISTS, NULL)) {
            cursor->isMonUnderCursor = TRUE;

            if (!(ov19_GetPreviewMonSource(v0) & PREVIEW_MON_HELD)) {
                ov19_PreviewBoxMon(v0, cursor->mon, param0);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL ov19_TryPressTouchScreenButton(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->touchScreenButtonPressed = 0xFFFF;
    TouchScreenActions_HandleAction(param0->mainBoxAndCompareButtonsAction);

    return param0->touchScreenButtonPressed != 0xFFFF;
}

static void ov19_BoxTouchScreenButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context)
{
    UnkStruct_ov19_021D5DF8 *v0 = (UnkStruct_ov19_021D5DF8 *)context;

    if (buttonTouchState == TOUCH_BUTTON_PRESSED && v0->touchScreenButtonPressed == 0xFFFF) {
        v0->touchScreenButtonPressed = buttonIndex;
    }

    if (ov19_GetBoxMode(&v0->unk_00) == PC_MODE_COMPARE) {
        if (buttonIndex == 2) {
            switch (buttonTouchState) {
            case TOUCH_BUTTON_PRESSED:
                ov19_SetCompareButtonPressed(&v0->unk_00, TRUE);
                break;
            case TOUCH_BUTTON_RELEASED:
            case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
                ov19_SetCompareButtonPressed(&v0->unk_00, FALSE);
                break;
            }
        }
    }
}

static void ov19_SetBoxMessage(UnkStruct_ov19_021D4DF0 *param0, u32 boxMessageID)
{
    param0->boxMessageID = boxMessageID;
}

static void ov19_SetCursorBoxLocation(UnkStruct_ov19_021D4DF0 *param0, u32 col, u32 row)
{
    BoxCursor *cursor = &param0->cursor;

    cursor->boxCol = col;
    cursor->boxRow = row;
    cursor->posInBox = row * MAX_PC_COLS + col;
}

static void ov19_PickUpMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_BOX) {
        MI_CpuCopy32(cursor->mon, selection->boxMon, BoxPokemon_GetStructSize());
        PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
        selection->cursorMonIsPartyMon = FALSE;
    } else {
        MI_CpuCopy32(cursor->mon, selection->boxMon, Pokemon_GetStructSize());
        Party_RemovePokemonBySlotIndex(param0->party, cursor->posInParty);
        selection->cursorMonIsPartyMon = TRUE;
    }

    ov19_SetPreviewedBoxMon(param1, selection->boxMon);

    selection->selectionStartCol = selection->selectionEndCol = cursor->boxCol;
    selection->selectionStartRow = selection->selectionEndRow = cursor->boxRow;

    param1->cursor.previewMonSource = PREVIEW_MON_IN_CURSOR;
    param1->cursor.isMonUnderCursor = FALSE;
}

static void ov19_PickUpMultiSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    u32 col, row, selectionLeftCol, selectionRightCol, selectionTopRow, selectionBottomRow, monPosInBox;
    BoxPokemon *boxMon;

    BoxMonSelection *selection = &param1->selection;
    selection->unused = 1;

    u32 cursorPosInBox = ov19_GetCursorBoxPosition(param1);
    u32 boxMonSize = BoxPokemon_GetStructSize();
    u32 processedMonCount = 0;
    void *cursorMonBuffer = selection->boxMon;

    ov19_GetMultiSelectBoundingBox(param1, &selectionLeftCol, &selectionRightCol, &selectionTopRow, &selectionBottomRow);

    for (row = selectionTopRow; row <= selectionBottomRow; row++) {
        monPosInBox = row * MAX_PC_COLS + selectionLeftCol;

        for (col = selectionLeftCol; col <= selectionRightCol; col++) {
            boxMon = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, monPosInBox);

            if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
                MI_CpuCopy32(boxMon, cursorMonBuffer, boxMonSize);
                PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, monPosInBox);
                cursorMonBuffer += boxMonSize;
                selection->selectedMonsOrigBoxPos[processedMonCount++] = monPosInBox;

                if (monPosInBox == cursorPosInBox) {
                    selection->unused = 0;
                }
            }

            monPosInBox++;
        }
    }

    selection->selectedMonCount = processedMonCount;
    selection->origSelectionTopLeftPos = selectionTopRow * MAX_PC_COLS + selectionLeftCol;

    param1->cursor.previewMonSource = param1->cursor.isMonUnderCursor ? PREVIEW_MON_FROM_SELECTION : PREVIEW_MON_UNDER_SELECTION;
    param1->cursor.isMonUnderCursor = FALSE;
}

static void ov19_ResetMultiSelectLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;

    selection->selectionStartCol = selection->selectionEndCol = cursor->boxCol;
    selection->selectionStartRow = selection->selectionEndRow = cursor->boxRow;
}

static void ov19_SetMultiSelectionEndLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;

    selection->selectionEndCol = cursor->boxCol;
    selection->selectionEndRow = cursor->boxRow;
}

static void ov19_PutDownCursorMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;
    BoxPokemon *boxMon;
    BOOL shayminIsForm1 = FALSE;
    int monForm;

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_BOX) {
        monForm = BoxPokemon_GetValue(selection->boxMon, MON_DATA_FORM, NULL);
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox, selection->boxMon);
        boxMon = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_SHAYMIN && monForm == 1) {
            shayminIsForm1 = TRUE;
        }
    } else {
        if (selection->cursorMonIsPartyMon) {
            Party_AddPokemon(param0->party, (Pokemon *)selection->boxMon);
        } else {
            Pokemon_FromBoxPokemon(selection->boxMon, param0->mon);
            Party_AddPokemon(param0->party, param0->mon);
        }

        boxMon = (BoxPokemon *)Party_GetPokemonBySlotIndex(param0->party, Party_GetCurrentCount(param0->party) - 1);
    }

    ov19_SetPreviewedBoxMon(param1, boxMon);
    BOOL isMonInPreview = ov19_TryPreviewCursorMon(param0);

    if (isMonInPreview == FALSE && shayminIsForm1 == TRUE) {
        ov19_LoadBoxMonIntoPreview(param1, boxMon, param0);
        ov19_021D6594(param0->unk_114, 6);
    }

    param1->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    param1->cursor.isMonUnderCursor = TRUE;
}

static void ov19_PutDownSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxPokemon *boxMon;
    int i, origSelectionTopLeftPos, selectionTopLeftPos, posInBox, boxMonStructSize;
    BoxCursor *cursor = &param1->cursor;
    BoxMonSelection *selection = &param1->selection;

    selectionTopLeftPos = ov19_GetMultiSelectTopLeftPos(param1);
    origSelectionTopLeftPos = selection->origSelectionTopLeftPos;
    boxMonStructSize = BoxPokemon_GetStructSize();
    boxMon = selection->boxMon;

    for (i = 0; i < selection->selectedMonCount; i++) {
        posInBox = selectionTopLeftPos + (selection->selectedMonsOrigBoxPos[i] - origSelectionTopLeftPos);
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, posInBox, boxMon);
        (u8 *)boxMon += boxMonStructSize;
    }

    ov19_SetPreviewedBoxMon(param1, PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, ov19_GetCursorBoxPosition(param1)));
    ov19_TryPreviewCursorMon(param0);

    selection->selectedMonCount = 0;
    param1->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
}

static void ov19_SwapMonInCursor(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    u32 monStructSize = Pokemon_GetStructSize();
    void *monBuffer = (u8 *)(selection->boxMon) + monStructSize;
    BoxCursor *cursor = &param1->cursor;

    MI_CpuCopy32(selection->boxMon, monBuffer, monStructSize);
    MI_CpuCopy32(cursor->mon, selection->boxMon, monStructSize);

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_BOX) {
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox, monBuffer);
        selection->cursorMonIsPartyMon = 0;
    } else {
        if (selection->cursorMonIsPartyMon == 0) {
            Pokemon_FromBoxPokemon(monBuffer, param0->mon);
        } else {
            MI_CpuCopy32(monBuffer, param0->mon, monStructSize);
        }

        Party_AddPokemonBySlotIndex(param0->party, cursor->posInParty, param0->mon);
        selection->cursorMonIsPartyMon = 1;
    }

    ov19_PreviewBoxMon(param1, selection->boxMon, param0);
}

static BOOL ov19_TryStoreCursorMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;
    BoxMonSelection *selection = &v0->selection;

    if (PCBoxes_TryStoreBoxMonInBox(param0->pcBoxes, boxID, selection->boxMon)) {
        v0->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
        ov19_TryPreviewCursorMon(param0);
        return TRUE;
    }

    return FALSE;
}

static BOOL ov19_TryStoreSelectedMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;

    if (PCBoxes_TryStoreBoxMonInBox(param0->pcBoxes, boxID, cursor->mon)) {
        Party_RemovePokemonBySlotIndex(param0->party, cursor->posInParty);
        ov19_TryPreviewCursorMon(param0);
        return TRUE;
    }

    return FALSE;
}

static void ov19_021D5834(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;
    BoxMonSelection *selection = &v0->selection;

    BoxPokemon_Init(selection->boxMon);
    cursor->previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    ov19_TryPreviewCursorMon(param0);
}

static void ov19_RemoveMonUnderCursor(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;

    if (ov19_GetCursorLocation(v0) == CURSOR_IN_BOX) {
        PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
    } else {
        Party_RemovePokemonBySlotIndex(param0->party, cursor->posInParty);
    }

    ov19_TryPreviewCursorMon(param0);
}

static void ov19_PreviewBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    ov19_LoadBoxMonIntoPreview(param0, boxMon, param2);

    if (ov19_GetBoxMode(param0) == PC_MODE_COMPARE) {
        ov19_LoadBoxMonIntoComparison(param0, boxMon, param2);
    }
}

static void ov19_LoadBoxMonIntoPreview(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    preview->mon = boxMon;
    preview->species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    preview->heldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    preview->dexNum = GetDexNumber(SaveData_GetDexMode(param2->saveData), preview->species);
    preview->isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_EGG_EXISTS, NULL);
    SpeciesData *speciesData = SpeciesData_FromMonSpecies(preview->species, HEAP_ID_9);
    preview->level = SpeciesData_GetLevelAt(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_EXP, NULL));
    preview->markings = BoxPokemon_GetValue(boxMon, MON_DATA_MARKS, NULL);
    preview->type1 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_1, NULL);
    preview->type2 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_2, NULL);

    if ((preview->isEgg == FALSE) && BoxPokemon_GetValue(boxMon, MON_DATA_NIDORAN_HAS_NICKNAME, NULL)) {
        preview->gender = SpeciesData_GetGenderOf(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL));
    } else {
        preview->gender = GENDER_INVALID;
    }

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRBUF, preview->nickname);

    if (preview->isEgg == FALSE) {
        MessageLoader_GetStrbuf(param2->speciesNameLoader, preview->species, preview->speciesName);
    } else {
        Strbuf_Copy(preview->speciesName, preview->nickname);
        Strbuf_Clear(preview->nickname);
    }

    if (preview->heldItem != ITEM_NONE) {
        Item_LoadName(preview->heldItemName, preview->heldItem, HEAP_ID_9);
    } else {
        MessageLoader_GetStrbuf(param2->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    }

    {
        u32 value = BoxPokemon_GetNature(boxMon);
        MessageLoader_GetStrbuf(param2->natureNameLoader, value, preview->nature);

        value = BoxPokemon_GetValue(boxMon, MON_DATA_ABILITY, NULL);
        MessageLoader_GetStrbuf(param2->abilityNameLoader, value, preview->ability);
    }

    SpeciesData_Free(speciesData);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

static void ov19_LoadBoxMonIntoComparison(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    PCCompareMon *compareMon = &(param0->unk_A4.compareMons[param0->unk_A4.unk_00]);

    compareMon->mon = boxMon;
    compareMon->species = preview->species;
    compareMon->isEgg = preview->isEgg;
    compareMon->level = preview->level;

    if (compareMon->isEgg) {
        Strbuf_Copy(compareMon->monName, preview->speciesName);
    } else {
        Strbuf_Copy(compareMon->monName, preview->nickname);
    }

    Strbuf_Copy(compareMon->nature, preview->nature);
    Pokemon_FromBoxPokemon(boxMon, param2->mon);

    BOOL reencrypt = Pokemon_EnterDecryptionContext(param2->mon);

    compareMon->maxHP = Pokemon_GetValue(param2->mon, MON_DATA_MAX_HP, NULL);
    compareMon->attack = Pokemon_GetValue(param2->mon, MON_DATA_ATK, NULL);
    compareMon->defense = Pokemon_GetValue(param2->mon, MON_DATA_DEF, NULL);
    compareMon->spAttack = Pokemon_GetValue(param2->mon, MON_DATA_SP_ATK, NULL);
    compareMon->spDefense = Pokemon_GetValue(param2->mon, MON_DATA_SP_DEF, NULL);
    compareMon->speed = Pokemon_GetValue(param2->mon, MON_DATA_SPEED, NULL);
    compareMon->cool = Pokemon_GetValue(param2->mon, MON_DATA_COOL, NULL);
    compareMon->beauty = Pokemon_GetValue(param2->mon, MON_DATA_BEAUTY, NULL);
    compareMon->cute = Pokemon_GetValue(param2->mon, MON_DATA_CUTE, NULL);
    compareMon->smart = Pokemon_GetValue(param2->mon, MON_DATA_SMART, NULL);
    compareMon->tough = Pokemon_GetValue(param2->mon, MON_DATA_TOUGH, NULL);
    compareMon->moves[0] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE1, NULL);
    compareMon->moves[1] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE2, NULL);
    compareMon->moves[2] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE3, NULL);
    compareMon->moves[3] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE4, NULL);
    compareMon->form = Pokemon_GetValue(param2->mon, MON_DATA_FORM, NULL);

    Pokemon_ExitDecryptionContext(param2->mon, reencrypt);

    param0->unk_A4.unk_02[param0->unk_A4.unk_00] = 1;
}

static void ov19_021D5B70(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->unk_A4.unk_00 ^= 1;
}

static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 *param0)
{
    if (++(param0->unk_A4.unk_01) >= 3) {
        param0->unk_A4.unk_01 = 0;
    }
}

static void ov19_SetCompareButtonPressed(UnkStruct_ov19_021D4DF0 *param0, BOOL pressed)
{
    param0->unk_A4.compareButtonAnimationPressed = pressed;
}

static void ov19_SetPreviewedBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon)
{
    param0->pcMonPreview.mon = boxMon;
}

static void ov19_021D5BAC(UnkStruct_ov19_021D4DF0 *param0)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u8 v1 = param0->unk_74.unk_22;
    preview->markings = v1;

    BoxPokemon_SetValue(preview->mon, MON_DATA_MARKS, &(v1));

    if ((ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) && (ov19_GetPreviewMonSource(param0) == PREVIEW_MON_UNDER_CURSOR)) {
        SaveData_SetFullSaveRequired();
    }
}

static void ov19_GiveItemToSelectedMon(UnkStruct_ov19_021D4DF0 *param0, u16 item, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    preview->heldItem = item;

    if (preview->heldItem != 0) {
        Item_LoadName(preview->heldItemName, preview->heldItem, HEAP_ID_9);
    } else {
        MessageLoader_GetStrbuf(param2->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    }

    if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX && ov19_GetPreviewMonSource(param0) == PREVIEW_MON_UNDER_CURSOR) {
        u32 posInBox = ov19_GetCursorBoxPosition(param0);
        PCBoxes_SetBoxMonData(param2->pcBoxes, USE_CURRENT_BOX, posInBox, MON_DATA_HELD_ITEM, &item);
    }

    BoxPokemon_SetValue(preview->mon, MON_DATA_HELD_ITEM, &item);

    int species = BoxPokemon_GetValue(preview->mon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_ARCEUS) {
        BoxPokemon_SetArceusForm(preview->mon);
        preview->type1 = BoxPokemon_GetValue(preview->mon, MON_DATA_TYPE_1, NULL);
        preview->type2 = BoxPokemon_GetValue(preview->mon, MON_DATA_TYPE_2, NULL);
    } else if (species == SPECIES_GIRATINA) {
        BoxPokemon_SetGiratinaForm(preview->mon);
        int ability = BoxPokemon_GetValue(preview->mon, MON_DATA_ABILITY, NULL);
        MessageLoader_GetStrbuf(param2->abilityNameLoader, ability, preview->ability);
    }
}

static void ov19_LoadRightBoxCustomization(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxCustomization *customization = &param0->customization;

    if (++(customization->boxID) >= MAX_PC_BOXES) {
        customization->boxID = 0;
    }

    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_LoadLeftBoxCustomization(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxCustomization *customization = &param0->customization;

    if (customization->boxID) {
        customization->boxID--;
    } else {
        customization->boxID = MAX_PC_BOXES - 1;
    }

    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_LoadCustomizationsFor(UnkStruct_ov19_021D4DF0 *param0, u32 boxID)
{
    BoxCustomization *customization = &param0->customization;

    customization->boxID = boxID;
    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_021D5D20(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    UnkStruct_ov19_021D5D20 *v0 = &(param0->unk_98);
    v0->unk_00 = param1;
}

static void ov19_PickUpHeldItem(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 itemNone = ITEM_NONE;

    param0->cursorItem = preview->heldItem;

    MessageLoader_GetStrbuf(param1->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    ov19_GiveItemToSelectedMon(param0, itemNone, param1);
}

static void ov19_RemoveCursorItem(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->cursorItem = ITEM_NONE;
}

static void ov19_GiveItemFromCursor(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = param0->cursorItem;
    param0->cursorItem = ITEM_NONE;

    ov19_GiveItemToSelectedMon(param0, item, param1);
}

static void ov19_SwapMonAndCursorItems(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = param0->cursorItem;
    param0->cursorItem = preview->heldItem;

    ov19_GiveItemToSelectedMon(param0, item, param1);
}

static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_00 = param1;
}

static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_02 = param1;
}

static void ov19_SetMarkingsButtonsScrollOffset(UnkStruct_ov19_021D4DF0 *param0, u32 offset)
{
    param0->unk_9C.markingsButtonsScrollOffset = offset;
}

static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 *param0, int param1)
{
    param0->unk_9C.unk_04 = param1;
}

static void ov19_SetMonSpriteTransparencyMask(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    if (param1 == 0) {
        param0->boxSettings.monSpriteTransparencyMask = 0;
    } else {
        param0->boxSettings.monSpriteTransparencyMask ^= (1 << (param1 - 1));
    }
}

static void ov19_ToggleCursorFastMode(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->boxSettings.isCursorFastMode ^= 1;
}

MessageLoader *ov19_GetBoxMessagesLoader(const UnkStruct_ov19_021D5DF8 *param0)
{
    return param0->boxMessagesLoader;
}

const StringTemplate *ov19_021D5DF0(const UnkStruct_ov19_021D5DF8 *param0)
{
    return param0->unk_19C;
}

int ov19_GetOptionsFrame(const UnkStruct_ov19_021D5DF8 *param0)
{
    return Options_Frame(param0->options);
}

enum BoxMode ov19_GetBoxMode(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxSettings.boxMode;
}

enum CursorLocation ov19_GetCursorLocation(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.cursorLocation;
}

u32 ov19_GetCursorBoxCol(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.boxCol;
}

u32 ov19_GetCursorBoxRow(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.boxRow;
}

u32 ov19_GetCursorBoxPosition(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.posInBox;
}

u32 ov19_GetCursorPartyPosition(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.posInParty;
}

BOOL ov19_IsMonUnderCursor(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.isMonUnderCursor;
}

u32 ov19_GetPreviewMonSource(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.previewMonSource;
}

BOOL ov19_GetCursorMonIsPartyMon(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (param0->cursor.previewMonSource) { // this can never be 0, so this will effectively always be true
        return param0->selection.cursorMonIsPartyMon;
    }

    return FALSE;
}

BOOL ov19_IsMonAvailableToCursor(const UnkStruct_ov19_021D4DF0 *param0)
{
    const BoxMonSelection *unused = &param0->selection;
    const BoxCursor *cursor = &param0->cursor;

    if (cursor->previewMonSource == PREVIEW_MON_IN_CURSOR || cursor->previewMonSource == PREVIEW_MON_FROM_SELECTION) {
        return TRUE;
    }

    if (param0->cursor.isMonUnderCursor) {
        return TRUE;
    }

    return FALSE;
}

u32 ov19_GetCurrentBox(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->customization.boxID;
}

const PCMonPreview *ov19_GetPCMonPreview(const UnkStruct_ov19_021D4DF0 *param0)
{
    return &(param0->pcMonPreview);
}

u32 ov19_GetPreviewedMonHeldItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (ov19_IsMonAvailableToCursor(param0)) {
        return param0->pcMonPreview.heldItem;
    }

    return ITEM_NONE;
}

const BoxCustomization *ov19_GetBoxCustomization(const UnkStruct_ov19_021D4DF0 *param0)
{
    return &(param0->customization);
}

const PCBoxes *ov19_GetPCBoxes(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcBoxes;
}

u32 ov19_GetBoxMessageID(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxMessageID;
}

BoxPokemon *ov19_GetPreviewedBoxMon(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.mon;
}

u32 ov19_GetPreviewedMonMarkings(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.markings;
}

u32 ov19_021D5EA8(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_98.unk_00;
}

s32 ov19_021D5EB0(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_04;
}

u32 ov19_021D5EB8(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_02;
}

u32 ov19_GetMarkingsButtonsScrollOffset(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.markingsButtonsScrollOffset;
}

u32 ov19_GetMonSpriteTransparencyMask(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (ov19_GetBoxMode(param0) != PC_MODE_MOVE_ITEMS) {
        return param0->boxSettings.monSpriteTransparencyMask;
    } else {
        return 1;
    }
}

BOOL ov19_IsCursorFastMode(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxSettings.isCursorFastMode;
}

void ov19_GetMultiSelectBoundingBox(const UnkStruct_ov19_021D4DF0 *param0, u32 *leftCol, u32 *rightCol, u32 *topCol, u32 *bottomCol)
{
    const BoxMonSelection *selection = &param0->selection;

    if (selection->selectionStartCol <= selection->selectionEndCol) {
        *leftCol = selection->selectionStartCol;
        *rightCol = selection->selectionEndCol;
    } else {
        *leftCol = selection->selectionEndCol;
        *rightCol = selection->selectionStartCol;
    }

    if (selection->selectionStartRow <= selection->selectionEndRow) {
        *topCol = selection->selectionStartRow;
        *bottomCol = selection->selectionEndRow;
    } else {
        *topCol = selection->selectionEndRow;
        *bottomCol = selection->selectionStartRow;
    }
}

BOOL ov19_IsMultiSelectSingleSelect(const UnkStruct_ov19_021D4DF0 *param0)
{
    const BoxMonSelection *selection = &param0->selection;

    if (selection->selectionStartCol == selection->selectionEndCol && selection->selectionStartRow == selection->selectionEndRow) {
        return TRUE;
    }

    return FALSE;
}

u32 ov19_GetMultiSelectTopLeftPos(const UnkStruct_ov19_021D4DF0 *param0)
{
    const BoxMonSelection *selection = &param0->selection;
    int col = param0->cursor.boxCol;
    int row = param0->cursor.boxRow;

    if (selection->selectionEndCol > selection->selectionStartCol) {
        col -= selection->selectionEndCol - selection->selectionStartCol;
    }

    if (selection->selectionEndRow > selection->selectionStartRow) {
        row -= selection->selectionEndRow - selection->selectionStartRow;
    }

    return row * MAX_PC_COLS + col;
}

u32 ov19_GetRelativeMonPosInMultiSelection(const UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    const BoxMonSelection *selection = &param0->selection;
    return selection->selectedMonsOrigBoxPos[param1] - selection->origSelectionTopLeftPos;
}

u32 ov19_GetCursorItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursorItem;
}

u32 ov19_GetCursorOrPreviewedItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    u32 cursorItem = ov19_GetCursorItem(param0);

    if (cursorItem != ITEM_NONE) {
        return cursorItem;
    }

    return ov19_GetPreviewedMonHeldItem(param0);
}

u32 ov19_021D5F9C(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.unk_00;
}

u32 ov19_021D5FA4(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.unk_01;
}

const PCCompareMon *ov19_GetCompareMonFrom(const UnkStruct_ov19_021D4DF0 *param0, int compareSlot)
{
    return &param0->unk_A4.compareMons[compareSlot];
}

BOOL ov19_021D5FB8(const UnkStruct_ov19_021D4DF0 *param0, int param1)
{
    return param0->unk_A4.unk_02[param1];
}

BOOL ov19_IsCompareButtonPressed(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.compareButtonAnimationPressed;
}

BOOL ov19_IsPreviewedMonEgg(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.isEgg;
}

static u32 ov19_GetPreviewedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest)
{
    if (ov19_GetPreviewMonSource(param0) == PREVIEW_MON_UNDER_CURSOR) {
        if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) {
            return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
        }
    } else {
        BoxMonSelection *selection = &param0->selection;

        if (selection->cursorMonIsPartyMon == FALSE) {
            return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
        }
    }

    return Pokemon_GetValue(param0->pcMonPreview.mon, value, dest);
}

static u32 ov19_GetPreviewedOrSelectedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest)
{
    if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) {
        return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
    } else {
        return Pokemon_GetValue(param0->cursor.mon, value, dest);
    }
}
