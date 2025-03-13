#ifndef POKEPLATINUM_PC_BOXES_H
#define POKEPLATINUM_PC_BOXES_H

#include "struct_decls/pc_boxes_decl.h"

#include "pokemon.h"
#include "strbuf.h"

#define MAX_PC_BOXES              18
#define MAX_PC_ROWS               5
#define MAX_PC_COLS               6
#define MAX_MONS_PER_BOX          (MAX_PC_ROWS * MAX_PC_COLS)
#define MAX_DEFAULT_WALLPAPERS    16
#define MAX_UNLOCKABLE_WALLPAPERS 8
#define MAX_WALLPAPERS            (MAX_DEFAULT_WALLPAPERS + MAX_UNLOCKABLE_WALLPAPERS)
#define PC_BOX_NAME_BUFFER_LEN    20

#define USE_CURRENT_BOX -1

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
