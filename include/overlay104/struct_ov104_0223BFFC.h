#ifndef POKEPLATINUM_STRUCT_OV104_0223BFFC_H
#define POKEPLATINUM_STRUCT_OV104_0223BFFC_H

#include "struct_decls/struct_020304A0_decl.h"

#include "overlay104/frontier_data_transfer.h"

#include "party.h"
#include "savedata.h"
#include "sprite_system.h"

typedef struct {
    int unk_00;
    SaveData *saveData;
    UnkStruct_020304A0 *unk_08;
    void *unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    int unk_14;
    u16 unk_18;
    u16 unk_1A;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    u8 unk_1F;
    u16 unk_20;
    u16 unk_22;
    u32 unk_24;
    int unk_28;
    u8 unk_2C[3];
    u8 unk_2F;
    ManagedSprite *unk_30[4];
    ManagedSprite *unk_40[4];
    ManagedSprite *unk_50[4];
    ManagedSprite *unk_60[4];
    Party *unk_70;
    Party *unk_74;
    u16 unk_78[14];
    u32 unk_94[4];
    u32 unk_A4[4];
    u32 unk_B4[4];
    u32 unk_C4[4];
    u32 unk_D4[4];
    u32 unk_E4[4];
    UnkStruct_ov104_0223A348 unk_F4[2];
    u16 unk_314[4];
    u8 unk_31C[4];
    u32 unk_320[4];
    FrontierPokemonDataDTO unk_330[4];
    u16 unk_410;
    u16 unk_412[3];
    u16 unk_418[6];
    u16 unk_424[40];
    u8 unk_474[512];
    u8 unk_674[2][512];
    u8 unk_A74;
    u8 unk_A75;
    u16 unk_A76;
    u16 unk_A78;
    u8 unk_A7A;
    u8 unk_A7B;
    u8 unk_A7C;
    u8 unk_A7D;
    u16 *unk_A80;
    u32 unk_A84;
} UnkStruct_ov104_0223BFFC;

#endif // POKEPLATINUM_STRUCT_OV104_0223BFFC_H
