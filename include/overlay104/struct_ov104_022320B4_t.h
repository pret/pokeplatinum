#ifndef POKEPLATINUM_STRUCT_OV104_022320B4_T_H
#define POKEPLATINUM_STRUCT_OV104_022320B4_T_H

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay104/frontier_script_context.h"
#include "overlay104/struct_ov104_0222E8C8.h"
#include "overlay104/struct_ov104_02232B5C_decl.h"

#include "bg_window.h"
#include "menu.h"
#include "message.h"
#include "string_gf.h"
#include "string_template.h"

struct UnkStruct_ov104_022320B4_t {
    UnkStruct_0209B75C *unk_00;
    FrontierScriptContext *unk_04[8];
    UnkStruct_ov104_0222E8C8 unk_24;
    enum HeapID heapID;
    u8 unk_38;
    MessageLoader *unk_3C;
    u8 *unk_40;
    StringTemplate *strTemplate;
    String *string;
    String *fmtString;
    u8 printerID;
    s8 unk_51;
    u16 unk_52;
    int unk_54;
    u8 unk_58;
    u8 unk_59;
    u8 unk_5A;
    BOOL unk_5C;
    UnkStruct_ov104_02232B5C *unk_60;
    Window msgWindow;
    Menu *menu;
    u16 *unk_78;
    void *savingIcon;
    void *unk_80;
    void *unk_84;
    Window unk_88;
    Window unk_98;
    Window *unk_A8;
    Window *unk_AC;
    u16 unk_B0;
    u16 unk_B2;
    u16 unk_B4;
    u16 unk_B6;
    u16 *unk_B8;
};

#endif // POKEPLATINUM_STRUCT_OV104_022320B4_T_H
