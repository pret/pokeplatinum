#ifndef POKEPLATINUM_UNK_02027F84_H
#define POKEPLATINUM_UNK_02027F84_H

#include "struct_decls/struct_02027F8C_decl.h"

#include "savedata.h"

int PalPad_SaveSize(void);
PalPad *SaveData_GetPalPad(SaveData *saveData);
void PalPad_Init(PalPad *param0);
const u16 *PalPad_GetTrainerNamePointer(const PalPad *palPad, int trainerIndex);
u8 PalPad_GetTrainerRegionCode(const PalPad *palPad, int trainerIndex);
BOOL PalPad_TrainersEqual(const PalPad *first, const PalPad *second);
void sub_02027FEC(PalPad *param0, PalPad *param1, int param2, int heapID);
int sub_020280E0(PalPad *param0, u32 param1);

#endif // POKEPLATINUM_UNK_02027F84_H
