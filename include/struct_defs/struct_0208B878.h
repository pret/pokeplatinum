#ifndef POKEPLATINUM_STRUCT_0208B878_H
#define POKEPLATINUM_STRUCT_0208B878_H

#include "sys_task_manager.h"
#include "struct_defs/struct_0208B284.h"
#include "struct_defs/struct_0208B878_sub1.h"
#include "struct_defs/struct_0208B878_sub2.h"

typedef struct {
    UnkStruct_0208B878_sub1 unk_00;
    UnkStruct_0208B284 unk_10;
    UnkStruct_0208B878_sub2 unk_24[12];
    int unk_E4;
    int unk_E8;
    int unk_EC;
    BOOL unk_F0;
    SysTask * unk_F4;
    int unk_F8;
    int unk_FC;
    int unk_100;
    int unk_104;
} UnkStruct_0208B878;

#endif // POKEPLATINUM_STRUCT_0208B878_H
