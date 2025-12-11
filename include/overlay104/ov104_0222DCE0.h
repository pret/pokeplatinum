#ifndef POKEPLATINUM_OV104_0222DCE0_H
#define POKEPLATINUM_OV104_0222DCE0_H

#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_frontier_trainer_data.h"

#include "overlay104/frontier_data_transfer.h"

#include "field_battle_data_transfer.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "sprite.h"
#include "string_template.h"
#include "trainer_info.h"

BattleFrontierTrainerData *BattleTower_GetTrainerDataFromTrainerIDAndNarcID(u16 battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID);
void BattleTower_GetMonDataFromSetIDAndNarcID(BattleFrontierPokemonData *monData, int setID, enum NarcID narcID);
BattleFrontierTrainerData *BattleTower_GetTrainerData(FrontierTrainerDataDTO *trDataDTO, int battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID);
u32 ov104_0222DD6C(FrontierPokemonDataDTO *param0, u16 param1, u32 param2, u32 param3, u8 param4, u8 param5, BOOL param6, int param7, enum NarcID narcID);
void ov104_0222DF40(const FrontierPokemonDataDTO *param0, Pokemon *param1, u8 param2);
u16 ov104_0222E10C(u8 param0);
void ov104_0222E134(SaveData *saveData, Pokemon *param1);
void ov104_0222E1C0(SaveData *saveData, Party *param1, Pokemon *param2);
void ov104_0222E1D8(Sprite *param0, u8 param1);
void ov104_0222E204(Sprite *param0, s16 param1, s16 param2, u8 param3);
u8 ov104_0222E240(u16 param0, u16 param1);
void ov104_0222E278(FrontierDataDTO *param0, u16 param1, int heapID, int param3);
void ov104_0222E284(FieldBattleDTO *param0, FrontierTrainerDataDTO *param1, int param2, int param3, int param4);
u32 ov104_0222E2F0(FrontierPokemonDataDTO *param0, u16 param1, int param2, u8 param3, u32 param4, int param5, int param6);
void ov104_0222E330(FrontierPokemonDataDTO *param0, u16 param1[], u8 param2[], u32 param3[], u32 param4[], int param5, int param6, int param7);
u8 ov104_0222E3A8(u16 param0);
BOOL ov104_0222E3E4(BattleFrontierTrainerData *param0, const u16 param1[], const u16 param2[], int param3, int param4, u16 param5[], int param6);
void ov104_0222E4BC(u8 param0, u16 param1, u16 param2, u16 *param3, FrontierPokemonDataDTO *param4, u8 *param5, u32 *param6, u8 param7);
void ov104_0222E5D0(StringTemplate *param0, u32 param1);
int ov104_0222E5F0(const TrainerInfo *param0);
void ov104_0222E630(SaveData *saveData);

#endif // POKEPLATINUM_OV104_0222DCE0_H
