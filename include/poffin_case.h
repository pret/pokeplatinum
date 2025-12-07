#ifndef POKEPLATINUM_POFFIN_CASE_H
#define POKEPLATINUM_POFFIN_CASE_H

#include "struct_defs/poffin_case.h"

#include "enums.h"
#include "poffin.h"
#include "pokemon.h"
#include "savedata.h"

PoffinCaseAppData *PoffinCaseAppData_New(SaveData *saveData, int heapID);
void PoffinCaseAppData_Free(PoffinCaseAppData *appData);
UnkEnum_02098EAC sub_02098EAC(Poffin *param0, u8 param1);
void sub_02098EF8(Poffin *param0, Pokemon *param1);

#endif // POKEPLATINUM_POFFIN_CASE_H
