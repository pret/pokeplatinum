#ifndef POKEPLATINUM_STRUCT_02095C48_H
#define POKEPLATINUM_STRUCT_02095C48_H

#include "struct_defs/struct_0202A750.h"
#include "struct_defs/struct_02094A58.h"
#include "struct_defs/struct_02095C48_sub1.h"
#include "struct_defs/struct_02095C60.h"

#include "game_options.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef struct {
    UnkStruct_02095C48_sub1 unk_00;
    Party *unk_148;
    void *unk_14C[4];
    void *unk_150;
    u8 unk_154;
    u8 unk_155;
    u8 unk_156[4];
    u8 unk_15A;
    u8 unk_15B;
    int unk_15C;
    int padding_160;
    SysTask *unk_164;
    u8 unk_168[4][256];
    u8 unk_568;
    u8 unk_569[1024];
    u8 unk_969[4][1024];
    u8 padding_1969[3];
    const Options *unk_196C;
    SaveData *unk_1970;
    Pokemon *unk_1974;
    const TrainerInfo *unk_1978;
    u8 unk_197C;
    u8 unk_197D;
    u8 unk_197E;
    u8 padding_197F;
    ImageClips *unk_1980;
    UnkStruct_02095C60 unk_1984;
    void *unk_199C;
    UnkStruct_02094A58 *unk_19A0;
    u32 unk_19A4;
} UnkStruct_02095C48;

#endif // POKEPLATINUM_STRUCT_02095C48_H
