#ifndef POKEPLATINUM_STRUCT_020708E0_H
#define POKEPLATINUM_STRUCT_020708E0_H

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_02070950.h"
#include "overlay005/struct_ov5_021D30A8.h"

typedef struct {
    Window unk_00;
    Window unk_10;
    UIControlData * unk_20;
    ResourceMetadata * unk_24;
    u16 unk_28;
    u16 state;
    u32 unk_2C;
    u8 unk_30[7];
    UnkStruct_ov5_021D30A8 unk_38;
    CellActorData * unk_200[8];
    u32 unk_220;
    u32 unk_224;
    u32 unk_228;
    UnkFuncPtr_02050904 unk_22C;
    UnkStruct_020684D0 unk_230;
    UnkStruct_02070950 unk_24C;
    void * unk_25C;
    void * unk_260;
} FieldMenu;

enum FieldMenuState {
    FIELD_MENU_STATE_INIT,
    FIELD_MENU_STATE_SELECT,
    FIELD_MENU_STATE_APP_START,
    FIELD_MENU_STATE_APP_RUN,
    FIELD_MENU_STATE_SAVE,
    FIELD_MENU_STATE_SAVE_WAIT,
    FIELD_MENU_STATE_EVOLVE_INIT,
    FIELD_MENU_STATE_EVOLVE,
    FIELD_MENU_STATE_8,
    FIELD_MENU_STATE_9,
    FIELD_MENU_STATE_10,
    FIELD_MENU_STATE_11,
    FIELD_MENU_STATE_12,
    FIELD_MENU_STATE_END,
    FIELD_MENU_STATE_14,
    FIELD_MENU_STATE_15
};

#endif // POKEPLATINUM_STRUCT_020708E0_H
