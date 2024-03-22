#ifndef POKEPLATINUM_STRUCT_BATTLE_SYSTEM_T_H
#define POKEPLATINUM_STRUCT_BATTLE_SYSTEM_T_H

#include "constants/battle.h"
#include "constants/time.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/options.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "poketch_data.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_decls/struct_0206D140_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/trainer_data.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "struct_defs/struct_0209C370.h"
#include "overlay006/struct_ov6_02240D5C_sub1.h"
#include "overlay010/struct_ov10_0221F800.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay016/struct_ov16_0223E0C8.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"
#include "overlay016/struct_ov16_02268520.h"
#include "overlay016/struct_ov16_02268A14_decl.h"
#include "overlay016/struct_ov16_0226D160_decl.h"

#include <nnsys.h>

struct BattleSystem {
    GenericPointerData * unk_00;
    BGL * unk_04;
    Window *windows;
    MessageLoader * unk_0C;
    MessageLoader * unk_10;
    StringFormatter *strFormatter;
    Strbuf *msgBuffer;
    SysTask * unk_1C;
    SysTask * unk_20;
    SysTask * unk_24;
    PaletteData * unk_28;
    u32 battleType;
    BattleContext *battleCtx;
    BattlerData *battlers[MAX_BATTLERS];
    int maxBattlers;
    TrainerInfo *trainerInfo[4];
    UnkStruct_0207D3C0 * unk_58;
    UnkStruct_0207D99C * unk_5C;
    PokedexData *pokedex;
    PCBoxes *pcBoxes;
    Party *parties[4];
    ChatotCry * unk_78[4];
    UnkStruct_02007768 * unk_88;
    UnkStruct_ov12_0221FCDC * unk_8C;
    SpriteRenderer * unk_90;
    SpriteGfxHandler * unk_94;
    PoketchData * unk_98;
    UnkStruct_0206D140 * unk_9C;
    u16 trainerIDs[4];
    u8 unk_A8[4];
    TrainerData trainers[4];
    UnkStruct_ov16_02268520 unk_17C[2];
    UnkStruct_ov16_02268A14 * unk_198;
    PartyGauge * unk_19C[2];
    UnkStruct_0200C440 * unk_1A4;
    UnkStruct_0200C440 * unk_1A8;
    void * unk_1AC;
    Options * unk_1B0;
    UnkStruct_02027F8C * unk_1B4;
    void * unk_1B8;
    UnkStruct_0209C370 * unk_1BC;
    UnkStruct_ov10_0221F800 * unk_1C0;
    PokemonAnimationSys * unk_1C4;
    NNSG2dCellTransferState *cellTransferState;
    UnkStruct_ov16_0223E0C8 unk_1CC[4];
    BattleParams_sub1 unk_20C;
    UnkStruct_0202CD88 * unk_218;
    u8 * unk_21C;
    u16 * unk_220;
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
    u8 * unk_23F0;
    u8 * unk_23F4;
    u8 unk_23F8;
    u8 unk_23F9;
    u8 unk_23FA;
    u8 unk_23FB_0 : 1;
    u8 unk_23FB_1 : 1;
    u8 unk_23FB_2 : 1;
    u8 unk_23FB_3 : 2;
    u8 unk_23FB_5 : 3;
    enum Terrain terrain;
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
