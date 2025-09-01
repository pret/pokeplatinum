#ifndef POKEPLATINUM_UNK_02084B70_H
#define POKEPLATINUM_UNK_02084B70_H

#include "applications/party_menu/defs.h"

#include "pokemon.h"

// clang-format off
#define MON_MOVE_RESULT_CANNOT_LEARN      ((u8)-1)
#define MON_MOVE_RESULT_MUST_FORGET_FIRST ((u8)-2)
#define MON_MOVE_RESULT_ALREADY_LEARNED   ((u8)-3)
// clang-format on

void sub_020852B8(PartyMenuApplication *param0);
int sub_02085348(void *param0);
BOOL CheckItemSacredAsh(u16 param0);
int sub_02085804(PartyMenuApplication *param0);
int sub_02085EF4(PartyMenuApplication *param0);

// Returns either a result code (prefix: `MON_MOVE_RESULT_`) or the first open move slot in which to learn the move.
u8 PartyMenu_CanMonLearnMove(PartyMenuApplication *application, Pokemon *mon);
int sub_0208615C(PartyMenuApplication *param0);
int sub_020862F8(PartyMenuApplication *param0);
int sub_020863A0(PartyMenuApplication *param0);
void sub_020866A0(PartyMenuApplication *param0, u8 param1);
int sub_02086774(PartyMenuApplication *param0);
void sub_020868B0(PartyMenuApplication *param0);

#endif // POKEPLATINUM_UNK_02084B70_H
