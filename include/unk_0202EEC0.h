#ifndef POKEPLATINUM_UNK_0202EEC0_H
#define POKEPLATINUM_UNK_0202EEC0_H

#include "struct_decls/struct_02024440_decl.h"

#include "pokemon.h"

int PalParkTransfer_SaveSize(void);
void PalParkTransfer_Init(PalParkTransfer *param0);
void sub_0202EF04(PalParkTransfer *param0);
void sub_0202EFA4(PalParkTransfer *transfer, BoxPokemon *boxMon, int param2);
void sub_0202EFB8(PalParkTransfer *param0, u32 param1);
void sub_0202F000(const PalParkTransfer *param0, int param1, Pokemon *param2);
int sub_0202F028(const PalParkTransfer *param0);
int sub_0202F050(const PalParkTransfer *param0, u32 param1);
BOOL sub_0202F088(const PalParkTransfer *param0);
BOOL sub_0202F0BC(const PalParkTransfer *param0);
BOOL sub_0202F0E0(const PalParkTransfer *param0);

#endif // POKEPLATINUM_UNK_0202EEC0_H
