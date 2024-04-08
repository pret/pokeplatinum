#ifndef POKEPLATINUM_UNK_0200B358_H
#define POKEPLATINUM_UNK_0200B358_H

#include "strbuf.h"
#include "trainer_info.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/trainer_data.h"
#include "savedata.h"

#include "enums.h"

typedef struct UnkStruct_0200B358_t StringFormatter;

StringFormatter * StringFormatter_New(u32 param0);
StringFormatter * sub_0200B368(u32 param0, u32 param1, u32 param2);
void sub_0200B3F0(StringFormatter * param0);
void sub_0200B48C(StringFormatter * param0, u32 param1, const Strbuf *param2, u32 param3, BOOL param4, u32 param5);
void StringFormatter_FormatPlayerName(StringFormatter * param0, u32 param1, const TrainerInfo * param2);
void sub_0200B4BC(StringFormatter * param0, u32 param1, const SaveData * param2);
void sub_0200B4E4(StringFormatter * param0, u32 param1, const SaveData * param2);
void sub_0200B538(StringFormatter * param0, u32 param1, BoxPokemon * param2);
void sub_0200B578(StringFormatter * param0, u32 param1, BoxPokemon * param2);
void sub_0200B594(StringFormatter * param0, u32 param1, u32 param2);
void StringFormatter_BufferNickname(StringFormatter * param0, u32 param1, BoxPokemon * param2);
void sub_0200B5EC(StringFormatter * param0, u32 param1, BoxPokemon * param2);
void StringFormatter_FormatNumber(StringFormatter * param0, u32 param1, s32 param2, u32 param3, int param4, int param5);
void sub_0200B630(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B668(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B6A0(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B6D8(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B70C(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B744(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B77C(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B7B4(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B7EC(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B824(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B85C(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B890(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B8C8(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B928(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B960(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B998(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200B9D0(StringFormatter * param0, u32 param1, TrainerData * param2);
void sub_0200BA08(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BA40(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BA74(StringFormatter * param0, u32 param1, TrainerData * param2);
void sub_0200BA94(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BACC(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BB04(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BB3C(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BB74(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BBA8(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BBDC(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BC10(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BC48(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BC80(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BCB8(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BCF0(StringFormatter * param0, u32 param1, u8 param2);
void sub_0200BD40(StringFormatter * param0, u32 param1, const PCBoxes * param2, u32 param3);
void sub_0200BD60(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BD98(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BDD0(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BE08(StringFormatter * param0, u32 param1, u32 param2, u32 param3);
void sub_0200BE48(StringFormatter * param0, u32 param1, u16 param2);
void sub_0200BE64(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BE98(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BECC(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BF74(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BFAC(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200BFE4(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C01C(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C054(StringFormatter * param0, SaveData * param1, int param2, int param3, int param4);
void sub_0200C0B0(StringFormatter * param0, u32 param1, UnkEnum_ov66_022324D0 param2);
void sub_0200C0E8(StringFormatter * param0, u32 param1, int param2);
void sub_0200C120(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C158(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C190(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C1C8(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C200(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C238(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C270(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C2A8(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C2E0(StringFormatter * param0, u32 param1, u32 param2);
void sub_0200C324(StringFormatter * param0, u32 param1);
void sub_0200C338(StringFormatter * param0, u32 param1, u32 param2);
void StringFormatter_Format(const StringFormatter * param0, Strbuf *param1, const Strbuf *param2);
void sub_0200C41C(StringFormatter * param0);

#endif // POKEPLATINUM_UNK_0200B358_H
