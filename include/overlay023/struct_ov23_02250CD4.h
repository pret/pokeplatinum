#ifndef POKEPLATINUM_STRUCT_OV23_02250CD4_H
#define POKEPLATINUM_STRUCT_OV23_02250CD4_H

#include "struct_defs/struct_0206A844.h"

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay023/funcptr_ov23_0224F758.h"
#include "overlay023/funcptr_ov23_0224FD84.h"
#include "overlay023/funcptr_ov23_0224FE38.h"
#include "overlay023/funcptr_ov23_0225021C.h"
#include "overlay023/struct_ov23_02248D20.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task_manager.h"

typedef struct {
    void *unk_00;
    SysTask *unk_04;
    UnkStruct_0206A844 *unk_08;
    FieldSystem *fieldSystem;
    Window unk_10;
    Window unk_20;
    Window unk_30;
    StringList *unk_40;
    StringList *unk_44;
    ListMenu *unk_48;
    UnkStruct_ov23_02248D20 *unk_4C;
    ListMenu *unk_50;
    Menu *unk_54;
    StringList *unk_58;
    Menu *unk_5C;
    CursorCallback cursorCallback;
    PrintCallback printCallback;
    Strbuf *strbuf;
    Strbuf *fmtString;
    StringTemplate *template;
    UnkStruct_ov5_021D30A8 unk_74;
    ManagedSprite *unk_23C[8];
    u32 unk_25C;
    UnkFuncPtr_ov23_0224F758 unk_260;
    UnkFuncPtr_ov23_0224FE38 itemCountGetter;
    UnkFuncPtr_ov23_0224FD84 itemGetter;
    UnkFuncPtr_ov23_0225021C sphereSizeGetter;
    void *unk_270;
    u8 unk_274[5];
    u8 unk_279[5];
    u8 unk_27E[5];
    BOOL unk_284;
    int unk_288;
    int unk_28C;
    int unk_290;
    int unk_294;
    u32 unk_298;
    u16 unk_29C;
    u32 unk_2A0;
    u16 unk_2A4;
    u8 unk_2A6;
    u8 unk_2A7;
    u8 unk_2A8;
    u8 unk_2A9;
    u8 unk_2AA;
    u8 unk_2AB;
    u8 unk_2AC;
    u16 unk_2AE;
    u16 unk_2B0;
} UnkStruct_ov23_02250CD4;

#endif // POKEPLATINUM_STRUCT_OV23_02250CD4_H
