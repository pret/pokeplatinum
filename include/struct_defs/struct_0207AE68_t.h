#ifndef POKEPLATINUM_STRUCT_0207AE68_T_H
#define POKEPLATINUM_STRUCT_0207AE68_T_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/sprite_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/options.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_poketch_data_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_0207C8C4.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_defs/pokemon_summary.h"

struct UnkStruct_0207AE68_t {
    BGL * unk_00;
    Window * unk_04;
    MessageLoader * unk_08;
    StringFormatter * unk_0C;
    Strbuf* unk_10;
    PaletteData * unk_14;
    UnkStruct_02007768 * unk_18;
    Sprite * unk_1C[2];
    Party * unk_24;
    Pokemon * unk_28;
    Options * unk_2C;
    UnkStruct_0207C8C4 * unk_30;
    GenericPointerData * unk_34;
    UnkStruct_020067E8 * unk_38;
    PokemonSummary * unk_3C;
    void * unk_40;
    PokemonAnimationSys * unk_44;
    PokedexData * unk_48;
    UnkStruct_0207D3C0 * unk_4C;
    UnkStruct_0202CD88 * unk_50;
    PoketchData * unk_54;
    void * unk_58;
    int unk_5C;
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
    NARC * unk_80;
    u8 unk_84;
    u8 unk_85;
    u8 unk_86;
};

#endif // POKEPLATINUM_STRUCT_0207AE68_T_H
