#ifndef POKEPLATINUM_MENU_H
#define POKEPLATINUM_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

typedef struct {
    const StringList *unk_00;
    Window *unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B_0 : 4;
    u8 unk_0B_4 : 2;
    u8 unk_0B_6 : 2;
} UnkStruct_02081CF4;

typedef struct UIControlData_t {
    UnkStruct_02081CF4 unk_00;
    ColoredArrow *unk_0C;
    u32 unk_10;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
} UIControlData;

UIControlData *sub_02001AF4(const UnkStruct_02081CF4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5);
UIControlData *sub_02001B7C(const UnkStruct_02081CF4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5);
UIControlData *sub_02001B9C(const UnkStruct_02081CF4 *param0, u8 param1, u8 param2);
void sub_02001BC4(UIControlData *param0, u8 *param1);
u32 sub_02001BE0(UIControlData *param0);
u32 sub_02001C94(UIControlData *param0, u16 param1);
u32 sub_02001D44(UIControlData *param0, u8 param1);
u8 sub_02001DC4(UIControlData *param0);
u8 sub_02001DC8(UIControlData *param0);
UIControlData *sub_02002054(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u8 param4, u32 param5);
UIControlData *sub_02002100(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u32 param4);
u32 sub_02002114(UIControlData *param0, u32 param1);
u32 sub_02002134(UIControlData *param0, u8 param1, u32 param2);
void sub_02002154(UIControlData *param0, u32 param1);
void sub_02002180(Window *param0, u32 param1, u32 param2);

#endif // POKEPLATINUM_MENU_H
