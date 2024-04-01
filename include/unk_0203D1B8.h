#ifndef POKEPLATINUM_UNK_0203D1B8_H
#define POKEPLATINUM_UNK_0203D1B8_H

#include "struct_decls/struct_0203CDB0_decl.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_0203E274.h"
#include "struct_defs/struct_0203E348.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_020425E0.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_decls/struct_02070950_decl.h"
#include "struct_defs/struct_02072014.h"
#include "pokemon.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"
#include "struct_defs/struct_020997B8.h"
#include "savedata.h"
#include "overlay006/battle_params.h"
#include "overlay090/struct_ov90_021D0D80.h"

void sub_0203D1D4(FieldSystem * param0, BattleParams * param1);
void sub_0203D1E4(FieldSystem * param0, void * param1);
void * sub_0203D20C(FieldSystem * param0, UnkStruct_020684D0 * param1);
void * sub_0203D264(FieldSystem * param0, int param1);
u16 sub_0203D2C4(void * param0);
void sub_0203D2E4(FieldSystem * param0, void * param1);
void sub_0203D30C(FieldSystem * param0, void * param1);
void sub_0203D334(FieldSystem * param0, void * param1);
void * sub_0203D390(FieldSystem * param0, UnkStruct_02070950 * param1, u8 param2);
void * sub_0203D3C0(int param0, FieldSystem * param1);
void * sub_0203D3E4(int param0, FieldSystem * param1);
int sub_0203D408(void * param0);
void * sub_0203D410(int param0, FieldSystem * param1, int param2);
int sub_0203D438(void * param0);
int sub_0203D440(void * param0);
void * sub_0203D50C(UnkStruct_020508D4 * param0, int param1);
void * sub_0203D578(int param0, FieldSystem * param1, int param2, int param3, int param4, int param5);
void * sub_0203D5C8(int param0, FieldSystem * param1, int param2);
void * sub_0203D644(FieldSystem * param0, int param1);
PokemonSummary * sub_0203D670(FieldSystem * param0, int param1, int param2);
void * sub_0203D6E4(int param0, FieldSystem * param1, u8 param2);
int sub_0203D750(void * param0);
void sub_0203D754(FieldSystem * param0, UnkStruct_02042434 * param1);
void sub_0203D80C(UnkStruct_020508D4 * param0, u16 * param1, u16 * param2, u16 * param3);
void sub_0203D874(FieldSystem * param0, UnkStruct_0209747C * param1);
void sub_0203D884(FieldSystem * param0, UnkStruct_0203D8AC * param1);
void * sub_0203D8AC(FieldSystem * param0);
void * sub_0203D8EC(FieldSystem * param0);
UnkStruct_02097728 * sub_0203D920(FieldSystem * param0, int param1, u8 param2, u8 param3, int param4);
UnkStruct_02097728 * sub_0203D94C(FieldSystem * param0, int param1, u8 param2, int param3);
UnkStruct_02097728 * sub_0203D984(FieldSystem * param0, Pokemon * param1, int param2);
UnkStruct_0203D9B8 * sub_0203D9B8(FieldSystem * param0, int param1);
void sub_0203D9D8(FieldSystem * param0, UnkStruct_ov90_021D0D80 * param1);
void sub_0203DAC0(UnkStruct_020508D4 * param0, u16 * param1, SaveData * param2, u16 param3, u16 param4);
BOOL sub_0203DB10(FieldSystem * param0, void * param1);
BOOL sub_0203DB24(FieldSystem * param0, void * param1);
BOOL sub_0203DBF0(UnkStruct_020508D4 * param0);
void sub_0203DDDC(UnkStruct_020508D4 * param0);
void sub_0203DDFC(FieldSystem * param0);
void * sub_0203DE34(FieldSystem * param0);
void sub_0203DE78(FieldSystem * param0, SaveData * param1);
void sub_0203DE88(FieldSystem * param0, SaveData * param1);
void sub_0203DFE8(UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, const u16 * param5, u16 * param6);
void sub_0203E09C(FieldSystem * param0, TrainerCard * param1);
BOOL sub_0203E0AC(FieldSystem * param0, void * param1);
void sub_0203E0C0(FieldSystem * param0, UnkStruct_020425E0 * param1);
void sub_0203E0D0(FieldSystem * param0);
void sub_0203E0FC(FieldSystem * param0, int param1);
void * sub_0203E1AC(FieldSystem * param0, int param1, int param2);
void sub_0203E224(FieldSystem * param0);
void sub_0203E234(FieldSystem * param0, UnkStruct_0203E234 * param1);
void * sub_0203E244(FieldSystem * param0);
void sub_0203E274(FieldSystem * param0, UnkStruct_0203E274 * param1);
void sub_0203E284(FieldSystem * param0, UnkStruct_020997B8 * param1);
void sub_0203E2AC(FieldSystem * param0, void * param1);
void sub_0203E2D4(FieldSystem * param0, void * param1);
void sub_0203E2FC(FieldSystem * param0);
BOOL sub_0203E348(FieldSystem * param0, UnkStruct_0203E348 * param1);
void sub_0203E414(UnkStruct_020508D4 * param0, int param1);
void sub_0203E518(UnkStruct_020508D4 * param0);
void * sub_0203E53C(FieldSystem * param0, int param1, int param2);
void * sub_0203E564(FieldSystem * param0, u8 param1, u8 param2, u16 param3, int param4);
PartyManagementData * sub_0203E598(FieldSystem * param0, int param1, int param2);
void * sub_0203E608(FieldSystem * param0, int param1);
void * sub_0203E63C(int param0, FieldSystem * param1, u16 param2, u16 param3);
void sub_0203E6C0(FieldSystem * param0, int param1, int param2);
void sub_0203E704(FieldSystem * param0);
void sub_0203E714(FieldSystem * param0);

#endif // POKEPLATINUM_UNK_0203D1B8_H
