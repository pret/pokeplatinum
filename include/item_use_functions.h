#ifndef POKEPLATINUM_ITEM_USE_FUNCTIONS_H
#define POKEPLATINUM_ITEM_USE_FUNCTIONS_H

#include "struct_defs/struct_020684D0.h"

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "field_task.h"
#include "strbuf.h"

#define USE_ITEM_TASK_MENU  0
#define USE_ITEM_TASK_FIELD 1
#define USE_ITEM_TASK_CHECK 2

typedef void *(*FieldApplicationWorkCtor)(void *fieldSystem);

typedef struct ItemFieldUseContext {
    FieldSystem *fieldSystem;
    PlayerContextInMap unk_04;
    FieldApplicationWorkCtor unk_20;
    void *unk_24;
    u16 unk_28;
    u8 unk_2A;
} ItemFieldUseContext;

typedef struct ItemMenuUseContext {
    FieldTask *fieldTask;
    u16 item;
    u8 selectedMonSlot;
    u8 padding_07;
} ItemMenuUseContext;

typedef BOOL (*ItemFieldUseFunc)(ItemFieldUseContext *);
typedef void (*ItemMenuUseFunc)(ItemMenuUseContext *, const PlayerContextInMap *);
typedef u32 (*ItemCheckUseFunc)(const PlayerContextInMap *);

typedef struct UnkStruct_0206851C {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_0206851C;

typedef struct UnkStruct_02068EFC {
    Window unk_00;
    Strbuf *unk_10;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_02068EFC;

u32 GetItemUseFunction(u16 param0, u16 param1);
void sub_0206842C(FieldSystem *fieldSystem, PlayerContextInMap *param1);
BOOL sub_02068B50(const PlayerContextInMap *param0);
BOOL sub_02069238(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_ITEM_USE_FUNCTIONS_H
