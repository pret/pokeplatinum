#ifndef POKEPLATINUM_STRUCT_02093800_H
#define POKEPLATINUM_STRUCT_02093800_H

#include "struct_defs/image_clips.h"

#include "game_options.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_gf.h"
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
    const String *unk_0C;
    const TrainerInfo *unk_10;
    ImageClips *imageClips;
    const Options *options;
    SaveData *saveData;
    void *unk_20;
} UnkStruct_02093800;

#endif // POKEPLATINUM_STRUCT_02093800_H
