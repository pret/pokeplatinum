#ifndef POKEPLATINUM_UNK_02073C2C_H
#define POKEPLATINUM_UNK_02073C2C_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/struct_02007C10.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_defs/struct_02008A90.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0200D0F4_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/box_pokemon.h"
#include "struct_decls/struct_02075874_decl.h"
#include "struct_decls/struct_02078B40_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay005/struct_ov5_021DE5D0.h"

#include <nitro/rtc.h>

void ZeroMonData(Pokemon * param0);
void ZeroBoxMonData(BoxPokemon * param0);
int PokemonStructSize(void);
Pokemon * AllocMonZeroed(u32 heapID);
BOOL sub_02073C88(Pokemon * param0);
BOOL sub_02073CD4(Pokemon * param0, BOOL param1);
BOOL sub_02073D20(BoxPokemon * param0);
BOOL sub_02073D48(BoxPokemon * param0, BOOL param1);
void sub_02073D80(Pokemon * param0, int param1, int param2, int param3, int param4, u32 param5, int param6, u32 param7);
void sub_02073E18(BoxPokemon * param0, int param1, int param2, int param3, int param4, u32 param5, int param6, u32 param7);
void sub_02074044(Pokemon * param0, u16 param1, u8 param2, u8 param3, u8 param4);
void sub_02074088(Pokemon * param0, u16 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6);
u32 sub_02074128(u16 param0, u8 param1, u8 param2);
void sub_02074158(Pokemon * param0, u16 param1, u8 param2, u32 param3, u32 param4);
void sub_0207418C(Pokemon * param0);
void sub_020741B8(Pokemon * param0);
u32 GetMonData(Pokemon * param0, int param1, void * param2);
u32 sub_02074570(BoxPokemon * param0, int param1, void * param2);
void sub_02074B30(Pokemon * param0, int param1, const void * param2);
void SetBoxMonData(BoxPokemon * param0, int param1, const void * param2);
void sub_0207536C(Pokemon * param0, int param1, int param2);
UnkStruct_02075874 * sub_02075874(int param0, int param1, int param2);
UnkStruct_02075874 * sub_02075894(int param0, int param1);
u32 sub_020758B0(UnkStruct_02075874 * param0, int param1);
void sub_020759B8(UnkStruct_02075874 * param0);
u32 sub_020759CC(int param0, int param1, int param2);
u32 sub_020759F0(int param0, int param1);
u8 sub_02075A10(Pokemon * param0);
u32 sub_02075A70(Pokemon * param0);
u32 sub_02075A78(BoxPokemon * param0);
u32 sub_02075AAC(Pokemon * param0);
u32 sub_02075AD0(int param0, int param1);
u32 sub_02075B38(Pokemon * param0);
u32 sub_02075B40(BoxPokemon * param0);
u32 sub_02075B78(u16 param0, u32 param1);
u32 sub_02075B9C(UnkStruct_02075874 * param0, u16 param1, u32 param2);
u8 sub_02075BCC(Pokemon * param0);
u8 sub_02075BD4(BoxPokemon * param0);
u8 GetNatureFromPersonality(u32 param0);
s8 sub_02075C60(u8 param0, u8 param1);
void sub_02075C74(Pokemon * param0, u8 param1, u16 param2);
u8 sub_02075D6C(Pokemon * param0);
u8 sub_02075D74(BoxPokemon * param0);
u8 sub_02075DAC(u16 param0, u32 param1);
u8 sub_02075DD0(UnkStruct_02075874 * param0, u16 param1, u32 param2);
u8 sub_02075E0C(Pokemon * param0);
u8 sub_02075E14(BoxPokemon * param0);
u8 sub_02075E38(u32 param0, u32 param1);
u32 sub_02075E64(u32 param0);
void sub_02075EF4(UnkStruct_02008A90 * param0, Pokemon * param1, u8 param2);
void sub_02075F00(UnkStruct_02008A90 * param0, Pokemon * param1, u8 param2);
void sub_02075F0C(UnkStruct_02008A90 * param0, BoxPokemon * param1, u8 param2, int param3);
void sub_02075FB4(UnkStruct_02008A90 * param0, u16 param1, u8 param2, u8 param3, u8 param4, u8 param5, u32 param6);
u8 SanitizeFormId(u16 param0, u8 param1);
u8 sub_020765AC(Pokemon * param0, u8 param1);
u8 sub_020765B8(Pokemon * param0, u8 param1);
u8 sub_020765C4(BoxPokemon * param0, u8 param1, int param2);
u8 sub_02076648(u16 param0, u8 param1, u8 param2, u8 param3, u32 param4);
void sub_0207697C(UnkStruct_02008A90 * param0, u16 param1);
UnkStruct_0200D0F4 * sub_02076994(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, UnkStruct_02002F38 * param2, int param3, int param4, int param5, int param6, int param7, int param8);
void sub_02076AAC(int param0, int param1, UnkStruct_ov5_021DE5D0 * param2);
u32 sub_02076AF0(void);
u32 sub_02076AF4(void);
u8 sub_02076AF8(Pokemon * param0);
u8 sub_02076B00(BoxPokemon * param0);
BoxPokemon * sub_02076B10(Pokemon * param0);
u8 sub_02076B14(Pokemon * param0);
u16 sub_02076B94(Party * param0, Pokemon * param1, u8 param2, u16 param3, int * param4);
u16 sub_02076F84(const u16 param0);
u16 sub_02076FD4(const u16 param0);
void sub_02077020(BoxPokemon * param0);
u16 sub_020770C4(Pokemon * param0, u16 param1);
u16 sub_020770D4(BoxPokemon * param0, u16 param1);
void sub_02077134(Pokemon * param0, u16 param1);
void sub_02077144(BoxPokemon * param0, u16 param1);
void sub_020771F8(Pokemon * param0, u16 param1, u8 param2);
void sub_02077230(Pokemon * param0, u16 param1, u8 param2);
void sub_02077238(BoxPokemon * param0, u16 param1, u8 param2);
u16 sub_0207727C(Pokemon * param0, int * param1, u16 * param2);
void sub_02077344(Pokemon * param0, int param1, int param2);
void sub_0207734C(BoxPokemon * param0, int param1, int param2);
void sub_02077408(Pokemon * param0, u32 param1);
BOOL sub_0207749C(Pokemon * param0, u16 param1);
void sub_020774C8(BoxPokemon * param0, Pokemon * param1);
u8 sub_02077550(Party * param0);
u16 sub_020775A4(u16 param0);
u16 sub_020775C4(u16 param0);
void sub_020775EC(Pokemon * param0, Pokemon * param1);
void sub_02077604(BoxPokemon * param0, BoxPokemon * param1);
void sub_02077618(Pokemon * param0, BoxPokemon * param1);
s8 sub_0207762C(Pokemon * param0, int param1);
s8 sub_02077634(BoxPokemon * param0, int param1);
s8 sub_02077648(u32 param0, int param1);
int sub_02077660(int param0, int param1, u16 * param2);
void sub_020776B0(Party * param0);
u8 sub_02077758(Party * param0, u8 param1);
void sub_020777B4(Party * param0, s32 param1);
void sub_0207782C(Party * param0);
BOOL sub_020778D8(Pokemon * param0);
BOOL sub_020778E0(BoxPokemon * param0);
BOOL sub_020778F8(Pokemon * param0);
BOOL sub_02077900(BoxPokemon * param0);
void sub_02077928(Pokemon * param0);
void sub_02077930(BoxPokemon * param0);
u8 sub_02077988(u16 param0);
int sub_02077A00(Pokemon * param0);
int sub_02077A1C(BoxPokemon * param0);
void sub_02077A64(Pokemon * param0);
void sub_02077A9C(Party * param0, int param1);
void SetShayminForm(Pokemon * param0, int param1);
void SetBoxShayminForm(BoxPokemon * param0, int param1);
BOOL sub_02077B14(Pokemon * param0);
void sub_02077B8C(Party * param0);
BOOL sub_02077BD8(Party * param0, int param1, const RTCTime * param2);
BOOL SetRotomForm(Pokemon * param0, int param1, int param2);
void sub_02077D28(int param0, int param1, u16 * param2);
void sub_02077D3C(UnkStruct_0202CC84 * param0, int param1, u16 param2, int param3, int param4, int param5, int param6, int param7);
void sub_02077DB4(UnkStruct_0202CC84 * param0, int param1, u16 param2, int param3, int param4, int param5, int param6, int param7, u8 param8);
BOOL sub_02077E3C(Pokemon * param0);
void sub_02077E64(Pokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077EA4(BoxPokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077EE4(Pokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077EF8(BoxPokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077F0C(Pokemon * param0, u32 param1, int param2);
BOOL sub_02077FB4(Pokemon * param0, u8 param1);
BOOL sub_02077FBC(BoxPokemon * param0, u8 param1);
BOOL sub_02077FE4(u16 param0, int param1, u8 param2);
void sub_0207803C(Pokemon * param0);
void sub_02078044(BoxPokemon * param0);
void sub_020780C4(Pokemon * param0, u32 param1);
u32 NumToFlag(int flag);
int FlagToNum(u32 param0);
BOOL sub_02078804(u16 param0);
u16 sub_02078824(u8 param0);
BOOL sub_02078838(Pokemon * param0);
BOOL sub_0207884C(BoxPokemon * param0, UnkStruct_02025E6C * param1, int param2);
int sub_020788D0(int param0);
void sub_0207893C(Pokemon * param0);
void sub_0207896C(BoxPokemon * param0);
void sub_020789BC(NARC * param0, UnkStruct_02007C10 * param1, u16 param2, u16 param3);
void sub_020789F4(NARC * param0, UnkStruct_02015F84 * param1, UnkStruct_02007C7C * param2, u16 param3, int param4, int param5, int param6);
void sub_02078A4C(NARC * param0, u8 * param1, u16 param2, u16 param3);
void sub_02078A80(NARC * param0, s8 * param1, u16 param2);
void sub_02078AA4(NARC * param0, s8 * param1, u16 param2);
void sub_02078AC8(NARC * param0, u8 * param1, u16 param2);
BOOL sub_02078AEC(int param0, Pokemon * param1, int param2);
void sub_02078B40(Pokemon * param0, UnkStruct_02078B40 * param1);
void sub_02078E0C(UnkStruct_02078B40 * param0, Pokemon * param1);

#endif // POKEPLATINUM_UNK_02073C2C_H
