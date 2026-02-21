#ifndef POKEPLATINUM_STRUCT_BATTLE_SYSTEM_H
#define POKEPLATINUM_STRUCT_BATTLE_SYSTEM_H

#include <nnsys.h>

#include "constants/battle.h"
#include "constants/rtc.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/trainer.h"

#include "battle/battle_context.h"
#include "battle/pokemon_sprite_data.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02268520.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "battle_anim/battle_anim_system.h"
#include "overlay010/struct_ov10_0221F800.h"

#include "bag.h"
#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "font_special_chars.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "message.h"
#include "pal_pad.h"
#include "palette.h"
#include "party.h"
#include "pokemon_anim.h"
#include "poketch.h"
#include "render_window.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_0201567C.h"

struct BattleSystem {
    G3DPipelineBuffers *pipelineBuffers;
    BgConfig *bgConfig;
    Window *windows;
    MessageLoader *msgLoader;
    MessageLoader *attackMsgLoader;
    StringTemplate *strFormatter;
    String *msgBuffer;
    SysTask *task_1C;
    SysTask *task_20;
    SysTask *task_24;
    PaletteData *paletteData;
    u32 battleType;
    BattleContext *battleCtx;
    BattlerData *battlers[MAX_BATTLERS];
    int maxBattlers;
    TrainerInfo *trainerInfo[MAX_BATTLERS];
    Bag *bag;
    BagCursor *bagCursor;
    Pokedex *pokedex;
    PCBoxes *pcBoxes;
    Party *parties[MAX_BATTLERS];
    ChatotCry *chatotCries[MAX_BATTLERS];
    PokemonSpriteManager *monSpriteMan;
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    Poketch *poketch;
    CaptureAttempt *captureAttempt;
    u16 trainerIDs[MAX_BATTLERS];
    u8 unk_A8[4];
    Trainer trainers[MAX_BATTLERS];
    UnkStruct_ov16_02268520 unk_17C[2];
    UnkStruct_ov16_02268A14 *unk_198;
    PartyGauge *partyGauges[2];
    FontSpecialCharsContext *specialCharsHP;
    FontSpecialCharsContext *specialCharsLevel;
    UnkStruct_020157E4 *unk_1AC;
    Options *options;
    PalPad *palPad;
    WaitDial *waitDial;
    u8 *subscreenCursorOn;
    UnkStruct_ov10_0221F800 *unk_1C0;
    PokemonAnimManager *monAnimMan;
    NNSG2dCellTransferState *cellTransferState;
    PokemonSpriteData pokemonSpriteDataArray[4];
    BattleRecords unusedBattleRecords;
    GameRecords *records;
    u8 *unk_21C;
    u16 *unk_220;
    u8 serverMessage[4096];
    u8 clientMessage[4096];
    u16 unk_2224[112];
    u16 unk_2304[112];
    u16 serverReadIndex;
    u16 serverWriteIndex;
    u16 serverEndIndex;
    u16 clientReadIndex;
    u16 clientWriteIndex;
    u16 clientEndIndex;
    u8 *unk_23F0;
    u8 *unk_23F4;
    u8 unk_23F8;
    u8 unk_23F9;
    u8 commandIsEndWait;
    u8 unk_23FB_0 : 1;
    u8 unk_23FB_1 : 1;
    u8 unk_23FB_2 : 1;
    u8 redHPSoundFlag : 2;
    u8 redHPSoundEffectDelay : 3;
    enum BattleTerrain terrain;
    enum BattleBackground background;
    int mapHeader;
    u32 battleStatusMask;
    enum TimeOfDay time;
    int safariBalls;
    u8 unk_2414[4];
    u32 rulesetMask;
    u8 resultMask;
    u8 catchingTutorialLowHP;
    u16 ballsThrown;
    enum EvolutionMethod mapEvolutionMethod;
    int visitedContestHall;
    int fieldWeather;
    int metBebe;
    u32 seedLCRNG;
    int yOffset;
    int caughtBattlerIdx;
    int commandSelectionFlags;
    u8 unk_2440;
    u8 overlayFlags;
    u16 networkID;
    u32 seedRandNext;
    u32 seedDTO;
    u16 unk_244C[MAX_BATTLERS];
    u16 unk_2454[4];
    u16 unk_245C[MAX_BATTLERS];
    int unk_2464[MAX_BATTLERS];
    u32 recordingStopped : 1;
    u32 padding_2474_1 : 31;
    SysTask *playbackStopButton;
    u8 recordedChatter[MAX_BATTLERS];
};

#endif // POKEPLATINUM_STRUCT_BATTLE_SYSTEM_H
