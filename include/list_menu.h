#ifndef POKEPLATINUM_LIST_MENU_H
#define POKEPLATINUM_LIST_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

typedef struct ListMenu ListMenu;

typedef struct ListMenuTemplate {
    const StringList *unk_00;
    void (*unk_04)(ListMenu *, u32, u8);
    void (*unk_08)(ListMenu *, u32, u8);
    Window *unk_0C;
    u16 unk_10;
    u16 unk_12;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17_0 : 4;
    u8 unk_17_4 : 4;
    u8 unk_18_0 : 4;
    u8 unk_18_4 : 4;
    u16 unk_1A_0 : 3;
    u16 unk_1A_3 : 4;
    u16 unk_1A_7 : 2;
    u16 unk_1A_9 : 6;
    u16 unk_1A_15 : 1;
    void *unk_1C;
} ListMenuTemplate;

struct ListMenu {
    ListMenuTemplate unk_00;
    struct {
        u8 unk_00_0 : 4;
        u8 unk_00_4 : 4;
        u8 unk_01_0 : 4;
        u8 unk_02_0 : 6;
        u8 unk_03_0 : 6;
        u8 unk_04_0 : 7;
        u8 unk_04_7 : 1;
    } unk_1F;
    ColoredArrow *unk_24;
    u16 unk_28;
    u16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
    u8 unk_30;
};

ListMenu *sub_0200112C(const ListMenuTemplate *param0, u16 param1, u16 param2, u8 param3);
u32 sub_02001288(ListMenu *param0);
void sub_02001384(ListMenu *param0, u16 *param1, u16 *param2);
void sub_020013AC(ListMenu *param0);
void sub_020013D8(ListMenu *param0, u8 param1, u8 param2, u8 param3);
u32 sub_02001408(ListMenu *param0, ListMenuTemplate *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 *param6, u16 *param7);
void sub_0200147C(ListMenu *param0, u8 param1, u8 param2, u8 param3);
void sub_020014D0(ListMenu *param0, u16 *param1);
void sub_020014DC(ListMenu *param0, u16 *param1, u16 *param2);
u8 sub_020014F0(ListMenu *param0);
u32 sub_020014F8(ListMenu *param0, u16 param1);
u32 sub_02001504(ListMenu *param0, u8 param1);
void sub_020015CC(ListMenu *param0, StringList *param1);

#endif // POKEPLATINUM_LIST_MENU_H
