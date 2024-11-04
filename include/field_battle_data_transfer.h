#ifndef POKEPLATINUM_FIELD_BATTLE_DATA_TRANSFER_H
#define POKEPLATINUM_FIELD_BATTLE_DATA_TRANSFER_H

#include "constants/battle.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_0206D140_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_0209C370.h"
#include "struct_defs/trainer_data.h"

#include "field/field_system_decl.h"

#include "bag.h"
#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "poketch_data.h"
#include "rtc.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct BattleRecords {
    int totalTurns;
    int totalFainted;
    int totalDamage;
} BattleRecords;

typedef struct FieldBattleDTO {
    u32 battleType;
    Party *parties[MAX_BATTLERS];
    int resultMask;
    int trainerIDs[MAX_BATTLERS];
    TrainerData trainerData[MAX_BATTLERS];
    TrainerInfo *trainerInfo[MAX_BATTLERS];
    Bag *bag;
    BagCursor *bagCursor;
    PokedexData *pokedex;
    PCBoxes *pcBoxes;
    ChatotCry *chatotCries[MAX_BATTLERS];
    PoketchData *poketchData;
    UnkStruct_0202C878 *unk_104;
    Options *options;
    UnkStruct_0206D140 *unk_10C;
    BattleRecords battleRecords;
    GameRecords *records;
    Journal *journal;
    UnkStruct_02027F8C *unk_124;
    int background;
    enum Terrain terrain;
    int mapLabelTextID;
    int mapHeaderID;
    enum TimeOfDay timeOfDay;
    int mapEvolutionMethod;
    BOOL visitedContestHall;
    BOOL metBebe;
    int caughtBattlerIdx;
    int fieldWeather;
    int leveledUpMonsMask;
    u32 systemVersion[MAX_BATTLERS];
    u32 battleStatusMask;
    int countSafariBalls;
    u32 rulesetMask;
    void *unk_170;
    u32 seed;
    int unk_178[MAX_BATTLERS];
    u16 networkID;
    u8 unk_18A;
    u8 dummy18B;
    int totalTurnsElapsed;
    UnkStruct_0209C370 *unk_190;
    u8 unk_194[4];
    SaveData *saveData;
    u32 unk_19C;
} FieldBattleDTO;

FieldBattleDTO *sub_02051D8C(int param0, u32 param1);
FieldBattleDTO *sub_02051F24(int param0, int param1);
FieldBattleDTO *sub_02051F38(int param0, int param1);
FieldBattleDTO *sub_02051F4C(int param0, const FieldSystem *fieldSystem);
void sub_020520A4(FieldBattleDTO *param0);
void sub_0205213C(FieldBattleDTO *param0, Pokemon *param1, int param2);
void sub_02052164(FieldBattleDTO *param0, const Party *param1, int param2);
void sub_02052184(FieldBattleDTO *param0, const TrainerInfo *param1, int param2);
void sub_020521A4(FieldBattleDTO *param0, const ChatotCry *param1, int param2);
void sub_020521B8(FieldBattleDTO *param0, const FieldSystem *fieldSystem, SaveData *param2, int param3, Journal *param4, BagCursor *param5, UnkStruct_0209C370 *param6);
void sub_02052314(FieldBattleDTO *param0, const FieldSystem *fieldSystem);
void sub_02052348(FieldBattleDTO *param0, const FieldSystem *fieldSystem, int param2);
void sub_020524E4(FieldBattleDTO *param0, const FieldSystem *fieldSystem, const Party *param2, const u8 *param3);
void sub_020526CC(FieldBattleDTO *param0, const FieldSystem *fieldSystem, const u8 *param2);
void sub_020526E8(const FieldBattleDTO *param0, FieldSystem *fieldSystem);
void sub_02052754(const FieldBattleDTO *param0, FieldSystem *fieldSystem);
void sub_0205285C(FieldBattleDTO *param0);
BOOL FieldBattleDTO_PlayerWon(u32 battleResult);
BOOL FieldBattleDTO_PlayerLost(u32 battleResult);
BOOL FieldBattleDTO_PlayerDidNotCapture(u32 battleResult);

#endif // POKEPLATINUM_FIELD_BATTLE_DATA_TRANSFER_H
