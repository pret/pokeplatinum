#ifndef POKEPLATINUM_STRUCT_POFFIN_CASE_H
#define POKEPLATINUM_STRUCT_POFFIN_CASE_H

#include "bag.h"
#include "game_options.h"
#include "party.h"
#include "poffin.h"
#include "trainer_info.h"

typedef struct PoffinCaseAppItem {
    u8 caseIndex;
    u8 level;
    u8 type;
    u8 smoothness;
    union {
        struct {
            u8 spiciness : 1;
            u8 dryness : 1;
            u8 sweetness : 1;
            u8 bitterness : 1;
            u8 sourness : 1;
            u8 isListed : 1;
            u8 deleted : 1;
            u8 alwaysTrue : 1;
        };
        u8 flavors;
    };
    u8 index;
    u8 next;
    u8 prev;
} PoffinCaseAppItem;

typedef struct PoffinCaseAppData {
    u8 poffinCount;
    u8 selectedPoffin;
    u8 poffinRemoved;
    u8 flavorFilter;
    u16 listPos;
    u16 cursorPos;
    PoffinCase *poffinCase;
    TrainerInfo *trainerInfo;
    Party *party;
    Bag *bag;
    Options *options;
    PoffinCaseAppItem poffins[MAX_POFFINS];
} PoffinCaseAppData;

#endif // POKEPLATINUM_STRUCT_POFFIN_CASE_H
