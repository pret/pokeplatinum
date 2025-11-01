#ifndef POKEPLATINUM_OV16_0226871C_H
#define POKEPLATINUM_OV16_0226871C_H

#include "struct_decls/battle_system.h"

#include "battle/move_display_info.h"
#include "battle/struct_ov16_02268A14_decl.h"

#include "bg_window.h"
#include "narc.h"

void ov16_02268744(BgConfig *param0);
void ov16_022687A0(BgConfig *param0);
void *ov16_022687C8(NARC *param0, NARC *param1, BattleSystem *battleSys, int param3, u8 *param4);
void ov16_02268A14(UnkStruct_ov16_02268A14 *param0);
void ov16_02268A88(UnkStruct_ov16_02268A14 *param0);
void ov16_02268B8C(UnkStruct_ov16_02268A14 *param0);
void ov16_02268C04(NARC *param0, NARC *param1, UnkStruct_ov16_02268A14 *param2, int param3, int param4, void *param5);
void ov16_02268D40(NARC *param0, UnkStruct_ov16_02268A14 *param1);
void ov16_0226914C(UnkStruct_ov16_02268A14 *param0, const u8 *param1);
void ov16_02269168(UnkStruct_ov16_02268A14 *param0, u8 param1[], u8 param2[]);
void ov16_022691BC(UnkStruct_ov16_02268A14 *param0);
void ov16_02269218(UnkStruct_ov16_02268A14 *param0);
int BattleSystem_MenuInput(UnkStruct_ov16_02268A14 *param0);
BOOL ov16_02269348(UnkStruct_ov16_02268A14 *param0);
int ov16_02269368(int param0, int param1);
void ov16_0226940C(UnkStruct_ov16_02268A14 *param0);
void ov16_0226947C(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
void ov16_0226AC98(UnkStruct_ov16_02268A14 *param0, int param1, const MoveDisplayInfo *param2);
void ov16_0226BCCC(UnkStruct_ov16_02268A14 *param0, int param1);
BOOL ov16_0226BCD0(UnkStruct_ov16_02268A14 *param0);
int ov16_0226CD08(UnkStruct_ov16_02268A14 *param0);
void ov16_0226CD10(UnkStruct_ov16_02268A14 *param0, int param1);
void ov16_0226CEB0(UnkStruct_ov16_02268A14 *param0, int param1);
u8 ov16_0226D088(UnkStruct_ov16_02268A14 *param0);

#endif // POKEPLATINUM_OV16_0226871C_H
