#ifndef POKEPLATINUM_STRUCT_BATTLE_SYSTEM_T_H
#define POKEPLATINUM_STRUCT_BATTLE_SYSTEM_T_H

#include <nnsys.h>

#include "constants/battle.h"
#include "constants/time.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0206D140_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/trainer.h"

#include "battle/battle_context.h"
#include "battle/struct_ov16_0223E0C8.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02268520.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "overlay010/struct_ov10_0221F800.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

#include "bag.h"
#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "game_options.h"
#include "message.h"
#include "palette.h"
#include "party.h"
#include "poketch.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

struct BattleSystem {
    GenericPointerData *unk_00;
    BgConfig *unk_04;
    Window *windows;
    MessageLoader *unk_0C;
    MessageLoader *unk_10;
    StringTemplate *strFormatter;
    Strbuf *msgBuffer;
    SysTask *unk_1C;
    SysTask *unk_20;
    SysTask *unk_24;
    PaletteData *unk_28;
    u32 battleType;
    BattleContext *battleCtx;
    BattlerData *battlers[MAX_BATTLERS];
    int maxBattlers;
    TrainerInfo *trainerInfo[MAX_BATTLERS];
    Bag *unk_58;
    BagCursor *unk_5C;
    Pokedex *pokedex;
    PCBoxes *pcBoxes;
    Party *parties[MAX_BATTLERS];
    ChatotCry *unk_78[MAX_BATTLERS];
    UnkStruct_02007768 *unk_88;
    UnkStruct_ov12_0221FCDC *unk_8C;
    SpriteSystem *unk_90;
    SpriteManager *unk_94;
    Poketch *poketch;
    UnkStruct_0206D140 *unk_9C;
    u16 trainerIDs[MAX_BATTLERS];
    u8 unk_A8[4];
    Trainer trainers[MAX_BATTLERS];
    UnkStruct_ov16_02268520 unk_17C[2];
    UnkStruct_ov16_02268A14 *unk_198;
    PartyGauge *unk_19C[2];
    UnkStruct_0200C440 *unk_1A4;
    UnkStruct_0200C440 *unk_1A8;
    void *unk_1AC;
    Options *unk_1B0;
    UnkStruct_02027F8C *unk_1B4;
    void *unk_1B8;
    u8 *unk_1BC;
    UnkStruct_ov10_0221F800 *unk_1C0;
    PokemonAnimationSys *unk_1C4;
    NNSG2dCellTransferState *cellTransferState;
    UnkStruct_ov16_0223E0C8 unk_1CC[4];
    BattleRecords unusedBattleRecords;
    GameRecords *records;
    u8 *unk_21C;
    u16 *unk_220;
    u8 unk_224[4096];
    u8 unk_1224[4096];
    u16 unk_2224[112];
    u16 unk_2304[112];
    u16 unk_23E4;
    u16 unk_23E6;
    u16 unk_23E8;
    u16 unk_23EA;
    u16 unk_23EC;
    u16 unk_23EE;
    u8 *unk_23F0;
    u8 *unk_23F4;
    u8 unk_23F8;
    u8 unk_23F9;
    u8 unk_23FA;
    u8 unk_23FB_0 : 1;
    u8 unk_23FB_1 : 1;
    u8 unk_23FB_2 : 1;
    u8 unk_23FB_3 : 2;
    u8 unk_23FB_5 : 3;
    enum BattleTerrain terrain;
    int unk_2400;
    int unk_2404;
    u32 battleStatusMask;
    enum Time time;
    int safariBalls;
    u8 unk_2414[4];
    u32 unk_2418;
    u8 resultMask;
    u8 unk_241D;
    u16 unk_241E;
    int unk_2420;
    int unk_2424;
    int fieldWeather;
    int unk_242C;
    u32 unk_2430;
    int unk_2434;
    int unk_2438;
    int commandSelectionFlags;
    u8 unk_2440;
    u8 overlayFlags;
    u16 unk_2442;
    u32 unk_2444;
    u32 unk_2448;
    u16 unk_244C[4];
    u16 unk_2454[4];
    u16 unk_245C[4];
    int unk_2464[4];
    u32 unk_2474_0 : 1;
    u32 unk_2474_1 : 31;
    SysTask *playbackStopButton;
    u8 unk_247C[4];
};

#endif // POKEPLATINUM_STRUCT_BATTLE_SYSTEM_T_H
