#ifndef POKEPLATINUM_UNK_02051D8C_H
#define POKEPLATINUM_UNK_02051D8C_H

#include "trainer_info.h"
#include "journal.h"
#include "struct_defs/chatot_cry.h"
#include "field/field_system_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "struct_defs/struct_0209C370.h"
#include "savedata.h"
#include "overlay006/battle_params.h"

BattleParams * sub_02051D8C(int param0, u32 param1);
BattleParams * sub_02051F24(int param0, int param1);
BattleParams * sub_02051F38(int param0, int param1);
BattleParams * sub_02051F4C(int param0, const FieldSystem * fieldSystem);
void sub_020520A4(BattleParams * param0);
void sub_0205213C(BattleParams * param0, Pokemon * param1, int param2);
void sub_02052164(BattleParams * param0, const Party * param1, int param2);
void sub_02052184(BattleParams * param0, const TrainerInfo * param1, int param2);
void sub_020521A4(BattleParams * param0, const ChatotCry * param1, int param2);
void sub_020521B8(BattleParams * param0, const FieldSystem * fieldSystem, SaveData * param2, int param3, Journal * param4, UnkStruct_0207D99C * param5, UnkStruct_0209C370 * param6);
void sub_02052314(BattleParams * param0, const FieldSystem * fieldSystem);
void sub_02052348(BattleParams * param0, const FieldSystem * fieldSystem, int param2);
void sub_020524E4(BattleParams * param0, const FieldSystem * fieldSystem, const Party * param2, const u8 * param3);
void sub_020526CC(BattleParams * param0, const FieldSystem * fieldSystem, const u8 * param2);
void sub_020526E8(const BattleParams * param0, FieldSystem * fieldSystem);
void sub_02052754(const BattleParams * param0, FieldSystem * fieldSystem);
void sub_0205285C(BattleParams * param0);
BOOL sub_02052868(u32 param0);
BOOL sub_02052878(u32 param0);
BOOL sub_02052888(u32 param0);

#endif // POKEPLATINUM_UNK_02051D8C_H
