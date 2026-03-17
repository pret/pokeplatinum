#ifndef POKEPLATINUM_STRUCT_0209BBA4_H
#define POKEPLATINUM_STRUCT_0209BBA4_H

#include "applications/party_menu/defs.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system_decl.h"

#include "savedata.h"

typedef struct {
    SaveData *saveData;
    void *unk_04;
    u16 unk_08[40];
    u8 unk_58;
    u8 unk_59;
    u16 unk_5A[8];
    u8 unk_6A[4];
    u8 unk_6E;
    u8 unk_6F;
    u8 unk_70;
    u8 unk_71;
    u16 unk_72;
    u16 unk_74;
    u16 unk_76[4];
    u16 unk_7E[4];
    u16 unk_86[4];
    u16 unk_8E[4];
    FieldSystem *fieldSystem;
    u8 unk_9C;
    u8 unk_9D;
    u8 unk_9E;
    u8 unk_9F;
    u8 unk_A0;
    u8 unk_A1[4];
    PartyMenu *partyMenu;
    PokemonSummary *unk_AC;
    u16 *unk_B0;
} UnkStruct_0209BBA4;

#endif // POKEPLATINUM_STRUCT_0209BBA4_H
