#ifndef POKEPLATINUM_UNK_0201567C_H
#define POKEPLATINUM_UNK_0201567C_H

#include <nitro.h>

#include "palette.h"
#include "sys_task_manager.h"

struct UnkStruct_020157E4_t;
typedef struct UnkStruct_020157E4_t UnkStruct_020157E4;

typedef void (*UnkFuncPtr_020157E4)(UnkStruct_020157E4 *, u16 *);

struct UnkStruct_020157E4_t {
    SysTask *unk_00;
    UnkFuncPtr_020157E4 unk_04;
    PaletteData *unk_08;
    u16 unk_0C[16];
    u16 unk_2C[16];
    u8 unk_4C;
    u8 unk_4D;
    u8 unk_4E;
    u8 unk_4F;
};


UnkStruct_020157E4 *sub_0201567C(PaletteData *param0, u16 param1, u16 param2, u32 heapID);
void sub_02015738(UnkStruct_020157E4 *param0, u8 param1);
void sub_02015760(UnkStruct_020157E4 *param0);

#endif // POKEPLATINUM_UNK_0201567C_H
