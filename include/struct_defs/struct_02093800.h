#ifndef POKEPLATINUM_STRUCT_02093800_H
#define POKEPLATINUM_STRUCT_02093800_H

#include "struct_decls/struct_0202A750_decl.h"

#include "game_options.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"
#include "trainer_info.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 padding_06[2];
    Pokemon *unk_08;
    const Strbuf *unk_0C;
    const TrainerInfo *unk_10;
    UnkStruct_0202A750 *unk_14;
    const Options *options;
    SaveData *saveData;
    void *unk_20;
} UnkStruct_02093800;

#endif // POKEPLATINUM_STRUCT_02093800_H
