#ifndef POKEPLATINUM_OV104_0222DCE0_H
#define POKEPLATINUM_OV104_0222DCE0_H

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "trainer_info.h"
#include "struct_defs/struct_0204B184.h"
#include "struct_defs/struct_0204B1E8.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub1.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

UnkStruct_0204B184 * ov104_0222DCE0(u16 param0, int param1, int param2);
void ov104_0222DCF4(UnkStruct_0204B1E8 * param0, int param1, int param2);
UnkStruct_0204B184 * ov104_0222DD04(UnkStruct_ov104_0223A348_sub1 * param0, int param1, int param2, int param3);
u32 ov104_0222DD6C(UnkStruct_ov104_0223A348_sub2 * param0, u16 param1, u32 param2, u32 param3, u8 param4, u8 param5, BOOL param6, int param7, int param8);
void ov104_0222DF40(const UnkStruct_ov104_0223A348_sub2 * param0, Pokemon * param1, u8 param2);
u16 ov104_0222E10C(u8 param0);
void ov104_0222E134(SaveData * param0, Pokemon * param1);
void ov104_0222E1C0(SaveData * param0, Party * param1, Pokemon * param2);
void ov104_0222E1D8(GraphicElementData * param0, u8 param1);
void ov104_0222E204(GraphicElementData * param0, s16 param1, s16 param2, u8 param3);
u8 ov104_0222E240(u16 param0, u16 param1);
void ov104_0222E278(UnkStruct_ov104_0223A348 * param0, u16 param1, int param2, int param3);
void ov104_0222E284(BattleParams * param0, UnkStruct_ov104_0223A348_sub1 * param1, int param2, int param3, int param4);
u32 ov104_0222E2F0(UnkStruct_ov104_0223A348_sub2 * param0, u16 param1, int param2, u8 param3, u32 param4, int param5, int param6);
void ov104_0222E330(UnkStruct_ov104_0223A348_sub2 * param0, u16 param1[], u8 param2[], u32 param3[], u32 param4[], int param5, int param6, int param7);
u8 ov104_0222E3A8(u16 param0);
BOOL ov104_0222E3E4(UnkStruct_0204B184 * param0, const u16 param1[], const u16 param2[], int param3, int param4, u16 param5[], int param6);
void ov104_0222E4BC(u8 param0, u16 param1, u16 param2, u16 * param3, UnkStruct_ov104_0223A348_sub2 * param4, u8 * param5, u32 * param6, u8 param7);
void ov104_0222E5D0(UnkStruct_0200B358 * param0, u32 param1);
int ov104_0222E5F0(const TrainerInfo * param0);
void ov104_0222E630(SaveData * param0);

#endif // POKEPLATINUM_OV104_0222DCE0_H
