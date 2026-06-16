#ifndef POKEPLATINUM_OV104_02234DB4_H
#define POKEPLATINUM_OV104_02234DB4_H

#include "overlay104/struct_battle_hall.h"

#include "savedata.h"

BattleHall *BattleHall_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u8 partySlot1, u8 partySlot2);
void ov104_022350B0(BattleHall *param0, u16 param1);
void BattleHall_Free(BattleHall *battleHall);
void BattleHall_GetTypeSelectionAppResult(BattleHall *battleHall, void *args);
void BattleHall_UpdateWinRecordForCurrentMon(BattleHall *battleHall, u16 *updated);
void BattleHall_Save(BattleHall *battleHall, u8 saveType);
u16 ov104_022354B0(BattleHall *param0);
u16 ov104_022354BC(BattleHall *param0);
u16 ov104_022354C0(BattleHall *param0, u8 param1);
void ov104_022354F4(BattleHall *param0);
void ov104_02235518(BattleHall *param0);
BOOL ov104_02235534(BattleHall *param0, u16 param1, u16 param2);
u16 ov104_02235578(BattleHall *param0);
void ov104_022356A0(BattleHall *param0);
void BattleHall_CalcPlayerLevelSqrt(BattleHall *battleHall);

#endif // POKEPLATINUM_OV104_02234DB4_H
