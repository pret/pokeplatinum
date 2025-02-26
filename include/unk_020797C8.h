#ifndef POKEPLATINUM_UNK_020797C8_H
#define POKEPLATINUM_UNK_020797C8_H

#include "struct_decls/struct_020797DC_decl.h"

#include "pokemon.h"
#include "strbuf.h"

#define MAX_PC_BOXES           18
#define MAX_PC_ROWS            5
#define MAX_PC_COLS            6
#define MAX_MONS_PER_BOX       (MAX_PC_ROWS * MAX_PC_COLS)
#define BOX1_TEXT_BANK_ENTRYID 6

void PCBoxes_Init(PCBoxes *pcBoxes);
u32 PCBoxes_SaveSize(void);
BOOL StorePokemonInPc(PCBoxes *pcBoxes, BoxPokemon *boxMon);
BOOL StorePokemonInBox(PCBoxes *pcBoxes, u32 boxIndex, BoxPokemon *boxMon);
BOOL StorePokemonInPcAt(PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox, BoxPokemon *boxMon);
void InitializeBoxedPokemonAt(PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox);
u32 GetCurrentBoxId(const PCBoxes *pcBoxes);
u32 PCBoxes_FirstEmptyBox(const PCBoxes *pcBoxes);
BOOL GetNextAvailableBoxSpaceAfter(const PCBoxes *pcBoxes, int *boxIndexParam, int *monPosInBoxParam);
u32 GetBoxedPokemonCount(const PCBoxes *pcBoxes);
void SetCurrentBoxIndex(PCBoxes *pcBoxes, u32 boxIndex);
u32 sub_02079AA8(const PCBoxes *pcBoxes, u32 boxIndex);
void sub_02079AC4(PCBoxes *pcBoxes, u32 boxIndex, u32 param2);
void CopyBoxName(const PCBoxes *pcBoxes, u32 boxIndex, Strbuf *param2);
void RenameBox(PCBoxes *pcBoxes, u32 boxIndex, const Strbuf *newName);
u32 GetPokemonCountInBox(const PCBoxes *pcBoxes, u32 boxIndex);
u32 GetEggCountInBox(const PCBoxes *pcBoxes, u32 boxIndex);
u32 GetTotalBoxedEggCount(const PCBoxes *pcBoxes);
u32 GetBoxedPokemonData(const PCBoxes *pcBoxes, u32 boxIndex, u32 pokemonBoxLocationIndex, enum PokemonDataParam pokemonData, void *dest);
void SetBoxedPokemonDataWithSave(PCBoxes *pcBoxes, u32 boxIndex, u32 pokemonBoxLocationIndex, enum PokemonDataParam pokemonData, void *value);
BoxPokemon *GetBoxedPokemonFrom(const PCBoxes *pcBoxes, u32 boxIndex, u32 monPosInBox);
void sub_02079CD8(PCBoxes *pcBoxes, u32 param1);
BOOL sub_02079CFC(const PCBoxes *pcBoxes, u32 param1);
u32 sub_02079D20(const PCBoxes *pcBoxes);

#endif // POKEPLATINUM_UNK_020797C8_H
