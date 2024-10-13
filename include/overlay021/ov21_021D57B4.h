#ifndef POKEPLATINUM_OV21_021D57B4_H
#define POKEPLATINUM_OV21_021D57B4_H

#include "overlay021/struct_ov21_021D5844.h"
#include "overlay021/struct_ov21_021D5868.h"
#include "overlay021/struct_ov21_021D5890.h"

#include "cell_actor.h"

void ov21_021D57B4(pokedexEncStruct *dexEncData, int param1, int param2, int param3);
void Free_pokedexEncData(pokedexEncStruct *dexEncData);
UnkStruct_ov21_021D5868 *ov21_021D5868(int param0, int *param1);
UnkStruct_ov21_021D5890 *ov21_021D5890(int param0, int *param1);
void ov21_021D58C0(u8 *param0, u8 param1, u8 param2, const UnkStruct_ov21_021D5890 *param3);
u32 ov21_021D5948(u8 *param0, int param1, int param2, const UnkStruct_ov21_021D5890 *param3, const pokedexEncStruct *dexEncData, const u8 *param5, u32 param6);
void ov21_021D59D8(CellActor *param0, int param1, int param2, int param3, int param4, const UnkStruct_ov21_021D5868 *param5, int param6, int param7);
int ov21_021D5A20(CellActor **param0, int param1, int param2, int param3, int param4, int param5, int param6, const UnkStruct_ov21_021D5868 *param7, const pokedexEncStruct *dexEncData, int param9, int param10, const u8 *param11, u32 param12, u32 *param13);

#endif // POKEPLATINUM_OV21_021D57B4_H
