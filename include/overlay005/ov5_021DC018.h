#ifndef POKEPLATINUM_OV5_021DC018_H
#define POKEPLATINUM_OV5_021DC018_H

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021DC1A4_decl.h"

#include "bg_window.h"
#include "message.h"
#include "string_template.h"

GenericMenuManager *ov5_021DC150(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader);
void ov5_021DC1A4(GenericMenuManager *menuManager, u32 entryID, u32 index);
void ov5_021DC1AC(GenericMenuManager *menuManager);
void ov5_021DC424(GenericMenuManager *menuManager);
GenericMenuManager *ov5_021DC48C(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader);
void ov5_021DC4B0(GenericMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex);
void ov5_021DC4B8(GenericMenuManager *menuManager);
void ov5_021DC528(GenericMenuManager *menuManager, u16 windowWidth);
void ov5_021DC600(GenericMenuManager *menuManager, u16 *listOffsetPtr, u16 *cursorPosPtr);
void ov5_021DCB24(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u16 unused);
u16 ov5_021DCCC8(int location);
void ov5_021DCD94(GenericMenuManager *menuManager, u8 columnsCount);
Window *ov5_021DCEB0(FieldSystem *fieldSystem, u8 tilemapTop, u8 tilemapLeft);
void ov5_021DCF58(Window *window);
void ov5_021DCF6C(FieldSystem *fieldSystem, Window *window);
Window *ov5_021DD020(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop);
void ov5_021DD084(Window *window);
void ov5_021DD098(FieldSystem *fieldSystem, Window *window);
Window *ov5_021DD140(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop);
void ov5_021DD1A4(FieldSystem *fieldSystem, Window *window);
GenericMenuManager *ov5_021DD250(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u8 redCost, u8 blueCost, u8 yellowCost, u8 greenCost);
void ov5_021DD3A8(GenericMenuManager *menuManager);
void ov5_021DD3F4(GenericMenuManager *menuManager, BOOL horizontalAnchor);
void ov5_021DD410(GenericMenuManager *menuManager, BOOL verticalAnchor);

#endif // POKEPLATINUM_OV5_021DC018_H
