#ifndef POKEPLATINUM_STRUCT_0205C22C_H
#define POKEPLATINUM_STRUCT_0205C22C_H

#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_decls/struct_0205C95C_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_defs/struct_0205C680.h"

#include "field/field_system_decl.h"

#include "sys_task_manager.h"

typedef struct UnkStruct_0205C22C_t {
    UnkStruct_0205B43C *unk_00;
    SysTask *unk_04;
    PlayerAvatar *playerAvatar;
    UnkStruct_0205C680 unk_0C[50 + 1];
    FieldSystem *fieldSystem;
    PalPad *unk_474;
    UnkStruct_0205C95C *unk_478;
    int unk_47C;
    int unk_480;
} UnkStruct_0205C22C;

#endif // POKEPLATINUM_STRUCT_0205C22C_H
