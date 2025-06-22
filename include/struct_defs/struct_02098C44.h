#ifndef POKEPLATINUM_STRUCT_02098C44_H
#define POKEPLATINUM_STRUCT_02098C44_H

#include "struct_defs/mail.h"
#include "struct_defs/struct_0202440C.h"
#include "struct_defs/struct_0202610C.h"

#include "field/field_system_decl.h"

#include "bag.h"
#include "field_move_tasks.h"
#include "game_options.h"
#include "party.h"

typedef struct {
    Party *party;
    Bag *bag;
    Mailbox *mailbox;
    Options *options;
    TVBroadcast *broadcast;
    BattleRegulation *battleRegulation;
    FieldMoveContext *fieldMoveContext;
    FieldSystem *fieldSystem;
    u8 unk_20;
    u8 unk_21;
    u8 selectedMonSlot;
    u8 menuSelectionResult;
    u16 usedItemID;
    u16 learnedMove;
    u8 selectedMoveSlot;
    u8 unk_29; // These three fields (unk_29, unk_2A, unk_2B) are used exactly once in the code (sub_0203D578) which is itself only used once.
    u8 unk_2A; // sub_0203D578 is used by ScrCmd_194 which is contest related so these fields are likely contest related too.
    u8 unk_2B;
    u8 unk_2C[6];
    u8 unk_32_0 : 4;
    u8 unk_32_4 : 4;
    u8 unk_33;
    int unk_34;
    u16 evoTargetSpecies;
    u8 padding_3A[2];
    int evoType;
} PartyManagementData;

#endif // POKEPLATINUM_STRUCT_02098C44_H
