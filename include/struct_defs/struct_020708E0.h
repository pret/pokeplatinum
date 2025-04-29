#ifndef POKEPLATINUM_STRUCT_020708E0_H
#define POKEPLATINUM_STRUCT_020708E0_H

#include "struct_defs/struct_020684D0.h"

#include "overlay005/struct_ov5_021D30A8.h"

#include "bg_window.h"
#include "field_move_tasks.h"
#include "field_task.h"
#include "menu.h"
#include "sprite_system.h"
#include "string_list.h"

typedef struct {
    Window unk_00;
    Window unk_10;
    Menu *unk_20;
    StringList *unk_24;
    u16 unk_28;
    u16 state;
    u32 unk_2C;
    u8 unk_30[7];
    UnkStruct_ov5_021D30A8 unk_38;
    ManagedSprite *unk_200[8];
    u32 unk_220;
    u32 unk_224;
    u32 unk_228;
    FieldTaskFunc callback;
    UnkStruct_020684D0 unk_230;
    FieldMoveContext fieldMoveContext;
    void *taskData;
    void *unk_260;
} StartMenu;

enum StartMenuState {
    START_MENU_STATE_INIT,
    START_MENU_STATE_SELECT,
    START_MENU_STATE_APP_START,
    START_MENU_STATE_APP_RUN,
    START_MENU_STATE_SAVE,
    START_MENU_STATE_SAVE_WAIT,
    START_MENU_STATE_EVOLVE_INIT,
    START_MENU_STATE_EVOLVE,
    START_MENU_STATE_8,
    START_MENU_STATE_9,
    START_MENU_STATE_10,
    START_MENU_STATE_11,
    START_MENU_STATE_12,
    START_MENU_STATE_END,
    START_MENU_STATE_14,
    START_MENU_STATE_15
};

#endif // POKEPLATINUM_STRUCT_020708E0_H
