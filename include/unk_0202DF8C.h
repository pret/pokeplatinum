#ifndef POKEPLATINUM_UNK_0202DF8C_H
#define POKEPLATINUM_UNK_0202DF8C_H

#include <nitro/rtc.h>

#include "party.h"
#include "struct_defs/struct_0202DF8C.h"

#include "overlay087/struct_ov87_021D1640.h"

int HallOfFame_SaveSize(void);
void HallOfFame_Init(HallOfFame *param0);
void sub_0202DFA8(HallOfFame *param0, const Party *param1, const RTCDate *param2);
u32 sub_0202E148(const HallOfFame *param0);
u32 sub_0202E174(const HallOfFame *param0, int param1);
u32 sub_0202E1A8(const HallOfFame *param0, int param1);
void sub_0202E1F4(const HallOfFame *param0, int param1, int param2, UnkStruct_ov87_021D1640 *param3);
void sub_0202E274(const HallOfFame *param0, int param1, RTCDate *param2);

#endif // POKEPLATINUM_UNK_0202DF8C_H
