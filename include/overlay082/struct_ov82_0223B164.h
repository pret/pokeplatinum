#ifndef POKEPLATINUM_STRUCT_OV82_0223B164_H
#define POKEPLATINUM_STRUCT_OV82_0223B164_H

#include "bag.h"
#include "game_options.h"
#include "journal.h"
#include "poffin.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct {
    u8 padding_00[4];
    int unk_04;
    PoffinCase *unk_08;
    SaveData *unk_0C;
    TrainerInfo *unk_10;
    Bag *unk_14;
    Options *unk_18;
    JournalEntry *unk_1C;
    BOOL unk_20;
    BOOL unk_24;
} UnkStruct_ov82_0223B164;

#endif // POKEPLATINUM_STRUCT_OV82_0223B164_H
