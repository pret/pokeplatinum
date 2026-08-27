#ifndef POKEPLATINUM_STRUCT_OV88_0223C370_H
#define POKEPLATINUM_STRUCT_OV88_0223C370_H

#include "struct_defs/wi_fi_history.h"

#include "field/field_system_decl.h"

#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "pal_pad.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct TradeRoomArgs {
    FieldSystem *fieldSystem;
    TrainerInfo *trainerInfo;
    Party *party;
    PalPad *palPad;
    SaveData *saveData;
    WiFiHistory *wiFiHistory;
    Options *options;
    JournalEntry *journalEntry;
    GameRecords *records;
    Pokedex *pokedex;
    int tradeCompleted;
    int receivingPartySlot;
    int dexMode;
    int tradeCount;
    TrainerInfo *partnerTrainerInfoCopy;
    Pokemon *sendingMon;
    Pokemon *receivingMon;
} TradeRoomArgs;

#endif // POKEPLATINUM_STRUCT_OV88_0223C370_H
