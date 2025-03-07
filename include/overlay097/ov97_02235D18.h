#ifndef POKEPLATINUM_OV97_02235D18_H
#define POKEPLATINUM_OV97_02235D18_H

#include "overlay097/gba_save.h"

int ov97_02235D2C(void *param0);
void ResetLoadedGBACartInfo(void);
int ov97_02235DB0(void);
int GBACart_GetLanguage(void);
int ov97_022360D8(void);
BOOL ov97_02236280(void);
int ov97_022362C8(void);
int ov97_02236308(void);
PokemonStorageGBA *GetGBAPokemonStorage(void);
void *GetGBASaveBlock2(void);

#endif // POKEPLATINUM_OV97_02235D18_H
