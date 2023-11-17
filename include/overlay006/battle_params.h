#ifndef POKEPLATINUM_BATTLE_PARAMS_H
#define POKEPLATINUM_BATTLE_PARAMS_H

#include "trainer_info.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_02056B24_decl.h"
#include "struct_decls/struct_0206D140_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/trainer_data.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "struct_defs/struct_0209C370.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay006/struct_ov6_02240D5C_sub1.h"

typedef struct {
    u32 battleType;
    Party *parties[4];
    int unk_14;
    int trainerIDs[4];
    TrainerData trainerData[4];
    TrainerInfo * unk_D0[4];
    UnkStruct_0207D3C0 * unk_E0;
    UnkStruct_0207D99C * unk_E4;
    UnkStruct_02026324 * unk_E8;
    PCBoxes * unk_EC;
    ChatotCry * unk_F0[4];
    UnkStruct_02056B24 * unk_100;
    UnkStruct_0202C878 * unk_104;
    AnimationControlFlags * unk_108;
    UnkStruct_0206D140 * unk_10C;
    BattleParams_sub1 unk_110;
    UnkStruct_0202CD88 * unk_11C;
    UnkStruct_0202B628 * unk_120;
    UnkStruct_02027F8C * unk_124;
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
    void * unk_170;
    u32 unk_174;
    int unk_178[4];
    u16 unk_188;
    u8 unk_18A;
    u8 unk_18B;
    int unk_18C;
    UnkStruct_0209C370 * unk_190;
    u8 unk_194[4];
    SaveData * unk_198;
    u32 unk_19C;
} BattleParams;

#endif // POKEPLATINUM_BATTLE_PARAMS_H
