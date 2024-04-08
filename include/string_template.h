#ifndef POKEPLATINUM_STRING_TEMPLATE_H
#define POKEPLATINUM_STRING_TEMPLATE_H

#include "strbuf.h"
#include "trainer_info.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/trainer_data.h"
#include "savedata.h"

#include "enums.h"

typedef struct StringTemplate StringTemplate;

StringTemplate * StringTemplate_New(u32 param0);
StringTemplate * sub_0200B358(u32 param0);
StringTemplate * sub_0200B368(u32 param0, u32 param1, u32 param2);
void sub_0200B3F0(StringTemplate * param0);
void sub_0200B48C(StringTemplate * param0, u32 param1, const Strbuf *param2, u32 param3, BOOL param4, u32 param5);
void StringTemplate_FormatPlayerName(StringTemplate * param0, u32 param1, const TrainerInfo * param2);
void sub_0200B4BC(StringTemplate * param0, u32 param1, const SaveData * param2);
void sub_0200B4E4(StringTemplate * param0, u32 param1, const SaveData * param2);
void sub_0200B538(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void sub_0200B578(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void sub_0200B594(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_BufferNickname(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void sub_0200B5EC(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void StringTemplate_FormatNumber(StringTemplate * param0, u32 param1, s32 param2, u32 param3, int param4, int param5);
void sub_0200B630(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B668(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B6A0(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B6D8(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B70C(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B744(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B77C(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B7B4(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B7EC(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B824(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B85C(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B890(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B8C8(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B928(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B960(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B998(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200B9D0(StringTemplate * param0, u32 param1, TrainerData * param2);
void sub_0200BA08(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BA40(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BA74(StringTemplate * param0, u32 param1, TrainerData * param2);
void sub_0200BA94(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BACC(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BB04(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BB3C(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BB74(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BBA8(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BBDC(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BC10(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BC48(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BC80(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BCB8(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BCF0(StringTemplate * param0, u32 param1, u8 param2);
void sub_0200BD40(StringTemplate * param0, u32 param1, const PCBoxes * param2, u32 param3);
void sub_0200BD60(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BD98(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BDD0(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BE08(StringTemplate * param0, u32 param1, u32 param2, u32 param3);
void sub_0200BE48(StringTemplate * param0, u32 param1, u16 param2);
void sub_0200BE64(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BE98(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BECC(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BF74(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BFAC(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200BFE4(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C01C(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C054(StringTemplate * param0, SaveData * param1, int param2, int param3, int param4);
void sub_0200C0B0(StringTemplate * param0, u32 param1, UnkEnum_ov66_022324D0 param2);
void sub_0200C0E8(StringTemplate * param0, u32 param1, int param2);
void sub_0200C120(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C158(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C190(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C1C8(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C200(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C238(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C270(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C2A8(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C2E0(StringTemplate * param0, u32 param1, u32 param2);
void sub_0200C324(StringTemplate * param0, u32 param1);
void sub_0200C338(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_Format(const StringTemplate * param0, Strbuf *param1, const Strbuf *param2);
void sub_0200C41C(StringTemplate * param0);

#endif // POKEPLATINUM_STRING_TEMPLATE_H

