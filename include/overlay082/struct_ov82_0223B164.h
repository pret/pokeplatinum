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
    PoffinCase *poffinCase;
    SaveData *saveData;
    TrainerInfo *trainerInfo;
    Bag *bag;
    Options *options;
    JournalEntry *journalEntry;
    BOOL unk_20;
    BOOL unk_24;
} UnkStruct_ov82_0223B164;

#endif // POKEPLATINUM_STRUCT_OV82_0223B164_H
