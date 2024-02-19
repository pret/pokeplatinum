#ifndef POKEPLATINUM_STRUCT_POKEMON_SUMMARY_APP_H
#define POKEPLATINUM_STRUCT_POKEMON_SUMMARY_APP_H

#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02091850.h"
#include "struct_defs/pokemon_summary.h"

typedef struct PokemonSummaryAppData {
    Strbuf* unk_00;
    Strbuf* unk_04;
    Strbuf* unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12_0 : 7;
    u8 unk_12_7 : 1;
    u8 unk_13_0 : 2;
    u8 unk_13_2 : 6;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
    u32 unk_20;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    u16 unk_2A;
    u16 unk_2C;
    u16 unk_2E;
    u16 unk_30;
    u8 unk_32;
    u8 unk_33;
    u16 unk_34[4];
    u8 unk_3C[4];
    u8 unk_40[4];
    u8 unk_44;
    u8 unk_45;
    u8 unk_46;
    u8 unk_47;
    u8 unk_48;
    u8 unk_49;
    u8 unk_4A;
    u8 unk_4B;
    u16 unk_4C;
    u16 unk_4E;
    u32 unk_50_0 : 28;
    u32 unk_50_28 : 1;
    u32 unk_50_29 : 1;
    u32 unk_50_30 : 2;
    u32 unk_54[4];
} PokemonSummaryAppData;

typedef struct PokemonSummaryAppSpriteData {
    UnkStruct_020203AC * unk_00;
    void * unk_04;
    SpriteAnimationFrame unk_08[10];
    PokemonAnimationSys * unk_30;
    Sprite * unk_34;
    u32 unk_38;
} PokemonSummaryAppSpriteData;

typedef struct PokemonSummaryApp {
    BGL *bgl;
    Window staticWindows[36];
    Window *extraWindows;
    u32 numExtraWindows;

    PokemonSummary *data;
    PokemonSummaryAppData monData;
    PokemonSummaryAppSpriteData monSpriteData;

    UnkStruct_02091850 unk_2F0[4];
    UnkStruct_02091850 unk_350[4];
    UnkStruct_02091850 unk_3B0[4];
    u32 unk_410;

    SpriteRenderer *renderer;
    SpriteGfxHandler *gfxHandler;
    GraphicElementData * unk_41C[77];
    CellActorData *actor[77];

    UnkStruct_0200C440 *unk_684;
    MessageLoader *msgLoader;
    MessageLoader *ribbonLoader;
    StringFormatter *strFormatter;
    Strbuf *strbuf;
    Strbuf *playerName;
    MessageLoader *moveNameLoader;
    NARC *narcPlPokeData;

    s8 page;
    u8 cursor : 4;
    u8 cursorTmp : 4;
    u8 subscreen;
    u8 subscreenType : 4;
    u8 subscreenExit : 4;

    u8 sheenState;
    u8 sheenMax;
    u8 sheenPos;
    u8 sheenCount;

    u8 buttonCount;
    u8 buttonState;
    u8 buttonPos;

    u8 ribbonPos;
    u8 ribbonState;
    u8 ribbonMax;
    u8 ribbonNum;
} PokemonSummaryApp;

#endif // POKEPLATINUM_STRUCT_POKEMON_SUMMARY_APP_H
