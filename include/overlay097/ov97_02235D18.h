#ifndef POKEPLATINUM_OV97_02235D18_H
#define POKEPLATINUM_OV97_02235D18_H

#include "overlay097/gba_save.h"

enum AGBGameType {
    AGB_TYPE_RUBY = 0,
    AGB_TYPE_SAPPHIRE,
    AGB_TYPE_LEAFGREEN,
    AGB_TYPE_FIRERED,
    AGB_TYPE_EMERALD,
};

enum AGBGameSet {
    AGB_SET_RUBYSAPP = 0,
    AGB_SET_FIRELEAF,
    AGB_SET_EMERALD,
};

int ov97_02235D2C(void *param0);
void ResetLoadedGBACartInfo(void);
int GBACart_GetAGBGameType(void);
int GBACart_GetLanguage(void);
int ov97_022360D8(void);
BOOL ov97_02236280(void);
int ov97_022362C8(void);
int ov97_02236308(void);
GBAPokemonStorage *GetGBAPokemonStorage(void);
void *GetGBASaveBlock2(void);

#endif // POKEPLATINUM_OV97_02235D18_H
