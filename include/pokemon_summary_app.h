#ifndef POKEPLATINUM_UNK_0208C324_H
#define POKEPLATINUM_UNK_0208C324_H

#include "constants/moves.h"

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/archived_poke_sprite_data.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02091850.h"

#include "bg_window.h"
#include "camera.h"
#include "cell_actor.h"
#include "game_options.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

typedef struct PokemonSummary {
    void *monData; //!< Pointer to generic Pokemon data
    Options *options; // unk_04
    const u16 *OTName; // unk_08
    u32 OTID; // unk_0C
    u8 OTGender; // unk_10
    u8 dataType; // unk_11
    u8 mode; // unk_12
    u8 max; // unk_13
    u8 pos; // unk_14
    u8 pageFlag; // unk_15
    u8 selectedSlot; // unk_16
    u8 returnMode; // unk_17
    u16 move; // unk_18

    u8 padding_1A[2];

    u32 dexMode; // unk_1C
    void *ribbons; // unk_20
    void *poffin; // unk_24
    ChatotCry *chatotCry; // unk_28
    BOOL contest; // unk_2C
} PokemonSummary;

typedef struct PokemonSummaryAppData {
    Strbuf *speciesName;
    Strbuf *nickname;
    Strbuf *OTName;

    u16 species;
    u16 heldItem;

    u8 type1;
    u8 type2;
    u8 level : 7;
    u8 showGender : 1;
    u8 gender : 2;
    u8 caughtBall : 6;

    u32 OTID;
    u32 curExp;
    u32 curLevelExp;
    u32 nextLevelExp;

    u16 curHP;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 spAttack;
    u16 spDefense;
    u16 speed;
    u8 ability;
    u8 nature;

    u16 moves[LEARNED_MOVES_MAX];
    u8 curPP[LEARNED_MOVES_MAX];
    u8 maxPP[LEARNED_MOVES_MAX];

    u8 OTGender;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
    u8 preferredFlavor;

    u16 markings;
    u16 form;

    u32 status : 28;
    u32 isEgg : 1;
    u32 isShiny : 1;
    u32 pokerus : 2;

    u32 ribbons[4];
} PokemonSummaryAppData;

typedef struct PokemonSummaryAppSpriteData {
    Camera *camera;
    void *spriteManager;
    SpriteAnimationFrame frames[MAX_ANIMATION_FRAMES];
    PokemonAnimationSys *animationSys;
    Sprite *sprite;
    BOOL flip;
} PokemonSummaryAppSpriteData;

typedef struct PokemonSummaryApp {
    BgConfig *bgl;
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
    CellActor *unk_41C[77];
    CellActorData *actor[77];

    UnkStruct_0200C440 *unk_684;
    MessageLoader *msgLoader;
    MessageLoader *ribbonLoader;
    StringTemplate *strFormatter;
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

BOOL PokemonSummary_ShowContestData(SaveData *param0);
void PokemonSummary_FlagVisiblePages(PokemonSummary *param0, const u8 *param1);
u8 PokemonSummary_PageIsVisble(PokemonSummaryApp *param0, u32 param1);
u8 PokemonSummary_CountVisiblePages(PokemonSummaryApp *param0);
void *PokemonSummary_MonData(PokemonSummaryApp *param0);
u8 PokemonSummary_RibbonAt(PokemonSummaryApp *param0, u8 param1);
void PokemonSummary_SetPlayerProfile(PokemonSummary *param0, const TrainerInfo *param1);
u32 PokemonSummary_StatusIconChar(void);
u32 PokemonSummary_StatusIconPltt(void);
u32 PokemonSummary_StatusIconCell(void);
u32 PokemonSummary_StatusIconAnim(void);
u32 PokemonSummary_StatusIconAnimIdx(Pokemon *param0);

#endif // POKEPLATINUM_UNK_0208C324_H
