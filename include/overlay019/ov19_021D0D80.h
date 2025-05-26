#ifndef POKEPLATINUM_OV19_021D0D80_H
#define POKEPLATINUM_OV19_021D0D80_H

#include "struct_defs/pc_boxes.h"

#include "overlay019/box_customization.h"
#include "overlay019/pc_compare_mon.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"

#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "string_template.h"

#define MAIN_PC_LEFT_BUTTON_X  0
#define MAIN_PC_RIGHT_BUTTON_X 255
#define MAIN_PC_BUTTON_Y       184
#define MAIN_PC_BUTTON_RADIUS  40

#define COMPARE_MON_PC_BUTTON_X      128
#define COMPARE_MON_PC_BUTTON_Y      178
#define COMPARE_MON_PC_BUTTON_RADIUS 12

#define PC_MARKINGS_BUTTON1_X      152
#define PC_MARKINGS_BUTTON1_Y      168
#define PC_MARKINGS_BUTTON2_X      163
#define PC_MARKINGS_BUTTON2_Y      134
#define PC_MARKINGS_BUTTON3_X      184
#define PC_MARKINGS_BUTTON3_Y      104
#define PC_MARKINGS_BUTTON4_X      216
#define PC_MARKINGS_BUTTON4_Y      84
#define PC_MARKINGS_BUTTON5_X      240
#define PC_MARKINGS_BUTTON5_Y      52
#define PC_MARKINGS_BUTTON6_X      240
#define PC_MARKINGS_BUTTON6_Y      16
#define PC_MARKINGS_BUTTONS_RADIUS 16

#define GENDER_INVALID -1

enum CursorMovementState {
    CURSOR_NO_MOVEMENT = 0,
    CURSOR_MOVE,
    CURSOR_STOP,
    CURSOR_MOVE_TO_LEFT_BOX,
    CURSOR_MOVE_TO_RIGHT_BOX
};

int ov19_021D0D80(OverlayManager *param0, int *param1);
int ov19_021D0DEC(OverlayManager *param0, int *param1);
int ov19_021D0E58(OverlayManager *param0, int *param1);
BOOL ov19_021D3B18(const UnkStruct_ov19_021D5DF8 *param0);
BOOL ov19_021D3B20(const UnkStruct_ov19_021D5DF8 *param0);
MessageLoader *ov19_GetBoxMessagesLoader(const UnkStruct_ov19_021D5DF8 *param0);
const StringTemplate *ov19_021D5DF0(const UnkStruct_ov19_021D5DF8 *param0);
int ov19_GetOptionsFrame(const UnkStruct_ov19_021D5DF8 *param0);
enum BoxMode ov19_GetBoxMode(const UnkStruct_ov19_021D4DF0 *param0);
enum CursorLocation ov19_GetCursorLocation(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetCursorBoxCol(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetCursorBoxRow(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetCursorBoxPosition(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetCursorPartyPosition(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_IsMonUnderCursor(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetPreviewMonSource(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_GetCursorMonIsPartyMon(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_IsMonAvailableToCursor(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetCurrentBox(const UnkStruct_ov19_021D4DF0 *param0);
const PCMonPreview *ov19_GetPCMonPreview(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetPreviewedMonHeldItem(const UnkStruct_ov19_021D4DF0 *param0);
const BoxCustomization *ov19_GetBoxCustomization(const UnkStruct_ov19_021D4DF0 *param0);
const PCBoxes *ov19_GetPCBoxes(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetBoxMessageID(const UnkStruct_ov19_021D4DF0 *param0);
BoxPokemon *ov19_GetPreviewedBoxMon(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetPreviewedMonMarkings(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EA8(const UnkStruct_ov19_021D4DF0 *param0);
s32 ov19_021D5EB0(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5EB8(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetMarkingsButtonsScrollOffset(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetMonSpriteTransparencyMask(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_IsCursorFastMode(const UnkStruct_ov19_021D4DF0 *param0);
void ov19_GetMultiSelectBoundingBox(const UnkStruct_ov19_021D4DF0 *param0, u32 *leftCol, u32 *rightCol, u32 *topCol, u32 *bottomCol);
BOOL ov19_IsMultiSelectSingleSelect(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetMultiSelectTopLeftPos(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetRelativeMonPosInMultiSelection(const UnkStruct_ov19_021D4DF0 *param0, u32 param1);
u32 ov19_GetCursorItem(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_GetCursorOrPreviewedItem(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5F9C(const UnkStruct_ov19_021D4DF0 *param0);
u32 ov19_021D5FA4(const UnkStruct_ov19_021D4DF0 *param0);
const PCCompareMon *ov19_GetCompareMonFrom(const UnkStruct_ov19_021D4DF0 *param0, int compareSlot);
BOOL ov19_021D5FB8(const UnkStruct_ov19_021D4DF0 *param0, int param1);
BOOL ov19_IsCompareButtonPressed(const UnkStruct_ov19_021D4DF0 *param0);
BOOL ov19_IsPreviewedMonEgg(const UnkStruct_ov19_021D4DF0 *param0);

#endif // POKEPLATINUM_OV19_021D0D80_H
