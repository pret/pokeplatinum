#ifndef POKEPLATINUM_STRUCT_0207AE68_T_H
#define POKEPLATINUM_STRUCT_0207AE68_T_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_0207C8C4.h"

#include "applications/pokemon_summary_screen/main.h"

#include "bag.h"
#include "bg_window.h"
#include "game_options.h"
#include "game_records.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "poketch.h"
#include "strbuf.h"
#include "string_template.h"

struct UnkStruct_0207AE68_t {
    BgConfig *unk_00;
    Window *unk_04;
    MessageLoader *unk_08;
    StringTemplate *unk_0C;
    Strbuf *unk_10;
    PaletteData *unk_14;
    UnkStruct_02007768 *unk_18;
    PokemonSprite *unk_1C[2];
    Party *unk_24;
    Pokemon *unk_28;
    Options *unk_2C;
    UnkStruct_0207C8C4 *unk_30;
    GenericPointerData *unk_34;
    OverlayManager *unk_38;
    PokemonSummary *unk_3C;
    void *unk_40;
    PokemonAnimationSys *unk_44;
    Pokedex *unk_48;
    Bag *unk_4C;
    GameRecords *records;
    Poketch *poketch;
    void *unk_58;
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
    NARC *unk_80;
    u8 unk_84;
    u8 unk_85;
    u8 unk_86;
};

#endif // POKEPLATINUM_STRUCT_0207AE68_T_H
