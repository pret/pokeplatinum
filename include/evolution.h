#ifndef POKEPLATINUM_EVOLUTION_H
#define POKEPLATINUM_EVOLUTION_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_0207C8C4.h"

#include "applications/pokemon_summary_screen/main.h"

#include "bag.h"
#include "game_options.h"
#include "game_records.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "poketch.h"
#include "string_template.h"

typedef struct EvolutionData {
    BgConfig *unk_00;
    Window *unk_04;
    MessageLoader *unk_08;
    StringTemplate *unk_0C;
    Strbuf *unk_10;
    PaletteData *unk_14;
    PokemonSpriteManager *unk_18;
    PokemonSprite *unk_1C[2];
    Party *unk_24;
    Pokemon *unk_28;
    Options *options;
    UnkStruct_0207C8C4 *unk_30;
    GenericPointerData *unk_34;
    ApplicationManager *appMan;
    PokemonSummary *unk_3C;
    void *unk_40;
    PokemonAnimationSys *unk_44;
    Pokedex *unk_48;
    Bag *unk_4C;
    GameRecords *records;
    Poketch *poketch;
    void *unk_58;
    int heapID;
    u16 unk_60;
    u16 unk_62;
    u8 unk_64;
    u8 unk_65;
    u8 unk_66;
    u8 unk_67;
    int unk_68;
    u16 unk_6C;
    u8 unk_6E;
    u8 unk_6F;
    u8 unk_70;
    u8 unk_71;
    u8 unk_72;
    u8 unk_73;
    u8 unk_74;
    u8 unk_75;
    int unk_78;
    int unk_7C;
    NARC *unk_80;
    u8 unk_84;
    u8 unk_85;
    u8 unk_86;
} EvolutionData;

EvolutionData *Evolution_Begin(Party *param0, Pokemon *param1, int param2, Options *options, int param4, Pokedex *param5, Bag *param6, GameRecords *records, Poketch *poketch, int param9, int param10, int heapID);
BOOL Evolution_IsComplete(EvolutionData *param0);
void sub_0207B0E0(EvolutionData *param0);

#endif // POKEPLATINUM_EVOLUTION_H
