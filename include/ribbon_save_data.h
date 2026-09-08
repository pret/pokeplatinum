#ifndef POKEPLATINUM_RIBBON_SAVE_DATA_H
#define POKEPLATINUM_RIBBON_SAVE_DATA_H

#include "savedata.h"

int Ribbons_SaveSize(void);
void Ribbons_Init(u8 *ribbons);
u8 *SaveData_GetRibbons(SaveData *saveData);

#endif // POKEPLATINUM_RIBBON_SAVE_DATA_H
