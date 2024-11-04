#ifndef POKEPLATINUM_FIELD_BATTLE_DATA_TRANSFER_H
#define POKEPLATINUM_FIELD_BATTLE_DATA_TRANSFER_H

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
#include "savedata.h"
#include "trainer_info.h"

typedef struct FieldBattleDTO_sub1 {
    int unk_00;
    int unk_04;
    int unk_08;
} FieldBattleDTO_sub1;

typedef struct FieldBattleDTO {
    u32 battleType;
    Party *parties[4];
    int unk_14;
    int trainerIDs[4];
    TrainerData trainerData[4];
    TrainerInfo *unk_D0[4];
    Bag *unk_E0;
    BagCursor *unk_E4;
    PokedexData *unk_E8;
    PCBoxes *unk_EC;
    ChatotCry *unk_F0[4];
    PoketchData *poketchData;
    UnkStruct_0202C878 *unk_104;
    Options *unk_108;
    UnkStruct_0206D140 *unk_10C;
    FieldBattleDTO_sub1 unk_110;
    GameRecords *records;
    Journal *unk_120;
    UnkStruct_02027F8C *unk_124;
    int unk_128;
    int unk_12C;
    int unk_130;
    int mapHeaderID;
    int unk_138;
    int unk_13C;
    int unk_140;
    int unk_144;
    int unk_148;
    int unk_14C;
    int unk_150;
    u32 unk_154[4];
    u32 unk_164;
    int unk_168;
    u32 unk_16C;
    void *unk_170;
    u32 unk_174;
    int unk_178[4];
    u16 unk_188;
    u8 unk_18A;
    u8 unk_18B;
    int unk_18C;
    UnkStruct_0209C370 *unk_190;
    u8 unk_194[4];
    SaveData *unk_198;
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
