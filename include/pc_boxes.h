#ifndef POKEPLATINUM_PC_BOXES_H
#define POKEPLATINUM_PC_BOXES_H

#include "struct_defs/pc_boxes.h"

#include "pokemon.h"
#include "strbuf.h"

void PCBoxes_Init(PCBoxes *pcBoxes);
u32 PCBoxes_SaveSize(void);
BOOL PCBoxes_TryStoreBoxMon(PCBoxes *pcBoxes, BoxPokemon *boxMon);
BOOL PCBoxes_TryStoreBoxMonInBox(PCBoxes *pcBoxes, u32 boxID, BoxPokemon *boxMon);
BOOL PCBoxes_TryStoreBoxMonAt(PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox, BoxPokemon *boxMon);
void PCBoxes_InitBoxMonAt(PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox);
u32 PCBoxes_GetCurrentBoxID(const PCBoxes *pcBoxes);
u32 PCBoxes_FirstEmptyBox(const PCBoxes *pcBoxes);
BOOL PCBoxes_TryGetNextAvailableSpace(const PCBoxes *pcBoxes, int *boxIndexDest, int *monPosInBoxDest);
u32 PCBoxes_CountAllBoxMons(const PCBoxes *pcBoxes);
void PCBoxes_SetCurrentBox(PCBoxes *pcBoxes, u32 boxID);
u32 PCBoxes_GetWallpaper(const PCBoxes *pcBoxes, u32 boxID);
void PCBoxes_SetWallpaper(PCBoxes *pcBoxes, u32 boxID, u32 wallpaper);
void PCBoxes_BufferBoxName(const PCBoxes *pcBoxes, u32 boxID, Strbuf *dest);
void PCBoxes_RenameBox(PCBoxes *pcBoxes, u32 boxID, const Strbuf *newName);
u32 PCBoxes_CountMonsInBox(const PCBoxes *pcBoxes, u32 boxID);
u32 PCBoxes_CountNonEggMonsInBox(const PCBoxes *pcBoxes, u32 boxID);
u32 PCBoxes_CountAllNonEggBoxMons(const PCBoxes *pcBoxes);
u32 PCBoxes_GetBoxMonData(const PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox, enum PokemonDataParam pokemonData, void *dest);
void PCBoxes_SetBoxMonData(PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox, enum PokemonDataParam pokemonData, void *value);
BoxPokemon *PCBoxes_GetBoxMonAt(const PCBoxes *pcBoxes, u32 boxID, u32 monPosInBox);
void PCBoxes_UnlockWallpaper(PCBoxes *pcBoxes, u32 wallpaper);
BOOL PCBoxes_CheckHasUnlockedWallpaper(const PCBoxes *pcBoxes, u32 wallpaper);
u32 PCBoxes_CountUnlockedWallpapers(const PCBoxes *pcBoxes);

#endif // POKEPLATINUM_PC_BOXES_H
