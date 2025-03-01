#ifndef POKEPLATINUM_POKEMON_STORAGE_SYSTEM_MANAGER_H
#define POKEPLATINUM_STORAGE_SYSTEM_MANAGER_H

#include "struct_decls/struct_020797DC_decl.h"

#include "pokemon.h"
#include "strbuf.h"

#define MAX_PC_BOXES            18
#define MAX_PC_ROWS             5
#define MAX_PC_COLS             6
#define MAX_MONS_PER_BOX        (MAX_PC_ROWS * MAX_PC_COLS)
#define MAX_DEFAULT_WALLPAPERS  16
#define MAX_UNLOCKED_WALLPAPERS 8
#define MAX_WALLPAPERS          (MAX_DEFAULT_WALLPAPERS + MAX_UNLOCKED_WALLPAPERS)
#define PC_BOX_NAME_BUFFER_LEN  20

void PCBoxes_Init(PCBoxes *pcBoxes);
u32 PCBoxes_SaveSize(void);
BOOL PcBoxes_TryStoreBoxMon(PCBoxes *pcBoxes, BoxPokemon *boxMon);
BOOL PcBoxes_TryStoreMonInBox(PCBoxes *pcBoxes, u32 box, BoxPokemon *boxMon);
BOOL PcBoxes_TryStoreBoxMonAt(PCBoxes *pcBoxes, u32 box, u32 monPosInBox, BoxPokemon *boxMon);
void PcBoxes_InitBoxMonAt(PCBoxes *pcBoxes, u32 box, u32 monPosInBox);
u32 PcBoxes_GetCurrentBox(const PCBoxes *pcBoxes);
u32 PcBoxes_FirstEmptyBox(const PCBoxes *pcBoxes);
BOOL PcBoxes_GetFirstAvailableMonSpaceAfter(const PCBoxes *pcBoxes, int *boxIndexDest, int *monPosInBoxDest);
u32 PcBoxes_CountAllBoxMons(const PCBoxes *pcBoxes);
void PcBoxes_SetCurrentBox(PCBoxes *pcBoxes, u32 box);
u32 PcBoxes_GetWallpaper(const PCBoxes *pcBoxes, u32 box);
void PcBoxes_SetWallpaper(PCBoxes *pcBoxes, u32 box, u32 wallpaper);
void PcBoxes_CopyName(const PCBoxes *pcBoxes, u32 box, Strbuf *dest);
void PcBoxes_RenameBox(PCBoxes *pcBoxes, u32 box, const Strbuf *newName);
u32 PcBoxes_CountMonsInBox(const PCBoxes *pcBoxes, u32 box);
u32 PcBoxes_CountEggsInBox(const PCBoxes *pcBoxes, u32 box);
u32 PcBoxes_CountAllEggs(const PCBoxes *pcBoxes);
u32 PcBoxes_GetBoxMonData(const PCBoxes *pcBoxes, u32 box, u32 pokemonBoxLocationIndex, enum PokemonDataParam pokemonData, void *dest);
void PcBoxes_SetBoxMonData(PCBoxes *pcBoxes, u32 box, u32 pokemonBoxLocationIndex, enum PokemonDataParam pokemonData, void *value);
BoxPokemon *PcBoxes_GetBoxMonAt(const PCBoxes *pcBoxes, u32 box, u32 monPosInBox);
void PcBoxes_UnlockWallpaper(PCBoxes *pcBoxes, u32 wallpaper);
BOOL PcBoxes_CheckHasUnlockedWallpaper(const PCBoxes *pcBoxes, u32 wallpaper);
u32 PcBoxes_CountUnlockedWallpapers(const PCBoxes *pcBoxes);

#endif // POKEPLATINUM_STORAGE_SYSTEM_MANAGER_H
