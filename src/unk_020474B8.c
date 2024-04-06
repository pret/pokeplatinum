#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_0203E724_t.h"

#include "message.h"
#include "unk_0200B358.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020277A4.h"
#include "unk_0203CC84.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_020474B8.h"
#include "unk_020507CC.h"
#include "unk_0205C980.h"
#include "unk_0205DFC4.h"
#include "unk_0206AFE0.h"
#include "unk_02071CFC.h"
#include "pokemon.h"
#include "unk_020797C8.h"
#include "party.h"
#include "item.h"
#include "unk_020923C0.h"
#include "berry_data.h"

#include <nitro/code16.h>

static Strbuf* sub_02047998(u16 param0, u32 param1);

BOOL sub_020474B8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u8 v3 = inline_02049538(param0);

    sub_0200B824(*v1, v2, v3);
    return 0;
}

BOOL sub_020474F4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));

    sub_0200B498(*v1, v2, SaveData_GetTrainerInfo(FieldSystem_SaveData(v0)));
    return 0;
}

BOOL sub_02047528 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));

    sub_0200B4BC(*v1, v2, v0->unk_0C);
    return 0;
}

BOOL sub_0204754C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));

    sub_0200B4E4(*v1, v2, v0->unk_0C);
    return 0;
}

BOOL sub_02047570 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    FieldSystem * v1 = param0->unk_34;
    StringFormatter ** v2 = sub_0203F098(v1, 15);
    u8 v3 = (*((param0)->unk_08++));
    u16 v4 = inline_02049538(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v1->unk_0C), v4);
    sub_0200B538(*v2, v3, (BoxPokemon *)v0);

    return 0;
}

BOOL sub_020475B8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B7EC(*v1, v2, v3);
    return 0;
}

BOOL sub_020475F0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B70C(*v1, v2, v3);
    return 0;
}

BOOL sub_02047628 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B7B4(*v1, v2, v3);

    return 0;
}

BOOL sub_02047660 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);
    u16 v4;

    v4 = Item_MoveForTMHM(v3);
    sub_0200B630(*v1, v2, v4);

    return 0;
}

BOOL sub_0204769C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B630(*v1, v2, v3);
    return 0;
}

BOOL sub_020476D4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B60C(*v1, v2, v3, sub_0205DFC4(v3), 1, 1);
    return 0;
}

BOOL sub_0204771C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);
    u8 v4 = (*((param0)->unk_08++));
    u8 v5 = (*((param0)->unk_08++));

    if (v4 == 0) {
        v5 = sub_0205DFC4(v3);
    }

    sub_0200B60C(*v1, v2, v3, v5, v4, 1);
    return 0;
}

BOOL sub_0204777C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u32 v3 = sub_0203E850(param0);
    u8 v4 = (*((param0)->unk_08++));
    u8 v5 = (*((param0)->unk_08++));

    if (v4 == 0) {
        v5 = sub_0205DFC4(v3);
    }

    sub_0200B60C(*v1, v2, v3, v5, v4, 1);
    return 0;
}

BOOL sub_020477D0 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    FieldSystem * v1 = param0->unk_34;
    StringFormatter ** v2 = sub_0203F098(v1, 15);
    u8 v3 = (*((param0)->unk_08++));
    u16 v4 = inline_02049538(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v1->unk_0C), v4);
    StringFormatter_BufferNickname(*v2, v3, (BoxPokemon *)v0);

    return 0;
}

BOOL sub_02047818 (UnkStruct_0203E724 * param0)
{
    BoxPokemon * v0;
    FieldSystem * v1 = param0->unk_34;
    PCBoxes * v2 = SaveData_PCBoxes(v1->unk_0C);
    StringFormatter ** v3 = sub_0203F098(v1, 15);
    u8 v4 = (*((param0)->unk_08++));
    u16 v5 = inline_02049538(param0);
    u32 v6, v7;

    v6 = v5 % (5 * 6);
    v7 = v5 / (5 * 6);
    v0 = sub_02079C9C(v2, v7, v6);

    StringFormatter_BufferNickname(*v3, v4, v0);
    return 0;
}

BOOL sub_02047874 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    FieldSystem * v1 = param0->unk_34;
    StringFormatter ** v2 = sub_0203F098(v1, 15);
    u8 v3 = (*((param0)->unk_08++));
    u16 v4 = inline_02049538(param0);

    sub_0200B928(*v2, v3, v4);
    return 0;
}

BOOL sub_020478AC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B960(*v1, v2, v3);
    return 0;
}

BOOL sub_020478E4 (UnkStruct_0203E724 * param0)
{
    int v0;
    FieldSystem * v1 = param0->unk_34;
    TrainerInfo * v2 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->unk_34));
    StringFormatter ** v3 = sub_0203F098(v1, 15);
    u8 v4 = (*((param0)->unk_08++));

    v0 = sub_0205CA14(TrainerInfo_Gender(v2), TrainerInfo_Appearance(v2), 2);
    sub_0200B998(*v3, v4, v0);

    return 0;
}

BOOL sub_02047930 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);
    u16 v4 = sub_0203E838(param0);
    u8 v5 = (*((param0)->unk_08++));
    Strbuf* v6 = sub_02047998(v3, 4);

    sub_0200B48C(*v1, v2, v6, v4, v5, GAME_LANGUAGE);
    Strbuf_Free(v6);

    return 0;
}

static Strbuf* sub_02047998 (u16 param0, u32 param1)
{
    MessageLoader * v0;
    Strbuf* v1;

    v0 = MessageLoader_Init(1, 26, 412, param1);
    v1 = MessageLoader_GetNewStrbuf(v0, param0);

    MessageLoader_Free(v0);
    return v1;
}

BOOL sub_020479C0 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = sub_0206B054(SaveData_Events(param0->unk_34->unk_0C));
    Strbuf* v3 = sub_02047998(v2, 4);

    sub_0200B48C(*v0, v1, v3, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v3);

    return 0;
}

BOOL sub_02047A10 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = sub_0206B064(SaveData_Events(param0->unk_34->unk_0C));
    Strbuf* v3 = sub_02047998(v2, 4);

    sub_0200B48C(*v0, v1, v3, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v3);

    return 0;
}

BOOL sub_02047A60 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = sub_0206B08C(SaveData_Events(param0->unk_34->unk_0C));
    Strbuf* v3 = sub_02047998(v2, 4);

    sub_0200B48C(*v0, v1, v3, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v3);

    return 0;
}

BOOL sub_02047AB0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BC80(*v1, v2, v3);
    return 0;
}

BOOL sub_02047AE8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BB04(*v1, v2, v3);
    return 0;
}

BOOL sub_02047B20 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BA94(*v1, v2, v3);
    return 0;
}

BOOL sub_02047B58 (UnkStruct_0203E724 * param0)
{
    Strbuf* v0 = Strbuf_Init(22, 4);
    StringFormatter ** v1 = sub_0203F098(param0->unk_34, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_02071D10(v3, 4, v0);
    sub_0200B48C(*v1, v2, v0, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);

    return 0;
}

BOOL sub_02047BB8 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    Strbuf* v4 = BerryData_AllocAndGetName(v2 - 149, 32);

    sub_0200B48C(*v0, v1, v4, 0, (v3 < 2 ? 1 : 0), GAME_LANGUAGE);
    Strbuf_Free(v4);

    return 0;
}

BOOL sub_02047C30 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = inline_02049538(param0);

    sub_0200B6D8(*v0, v1, v2);
    return 0;
}

BOOL sub_02047C68 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BFAC(*v1, v2, v3);
    return 0;
}

BOOL sub_02047CA0 (UnkStruct_0203E724 * param0)
{
    Strbuf* v0;
    FieldSystem * v1 = param0->unk_34;
    StringFormatter ** v2 = sub_0203F098(v1, 15);
    u8 v3 = (*((param0)->unk_08++));

    v0 = Strbuf_Init(10 + 1, 11);

    Strbuf_CopyChars(v0, sub_02027894(sub_0202783C(param0->unk_34->unk_0C)));
    sub_0200B48C(*v2, v3, v0, 0, 0, Unk_020E4C44);
    Strbuf_Free(v0);

    return 0;
}

BOOL sub_02047D00 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Pokemon * v1;
    StringFormatter ** v2 = sub_0203F098(v0, 15);
    u8 v3 = (*((param0)->unk_08++));
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    u16 v6;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v4);
    v6 = Pokemon_GetValue(v1, MON_DATA_MOVE1 + v5, NULL);

    sub_0200B630(*v2, v3, v6);
    return 0;
}

BOOL sub_02047D68 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);
    u16 v4;

    v4 = sub_020923C0(v3, 3);
    sub_0200B668(*v1, v2, v4);

    return 0;
}

BOOL sub_02047DAC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    v3 -= 1;
    sub_0200BE64(*v1, v2, v3);

    return 0;
}

BOOL sub_02047DE8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BA08(*v1, v2, v3);
    return 0;
}

BOOL sub_02047E20 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B744(*v1, v2, v3);
    return 0;
}

BOOL sub_02047E58 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B77C(*v1, v2, v3);
    return 0;
}

BOOL sub_02047E90 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BCB8(*v1, v2, v3);
    return 0;
}

BOOL sub_02047EC8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BB3C(*v1, v2, v3);
    return 0;
}

BOOL sub_02047F00 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BACC(*v1, v2, v3);
    return 0;
}

BOOL sub_02047F38 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);
    u16 v4 = sub_0203E838(param0);
    u8 v5 = (*((param0)->unk_08++));

    sub_0200B594(*v1, v2, v3);
    return 0;
}

BOOL sub_02047F80 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = sub_0206B08C(SaveData_Events(param0->unk_34->unk_0C));

    sub_0200B594(*v0, v1, v2);
    return 0;
}

BOOL sub_02047FB4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200BFE4(*v1, v2, v3);
    return 0;
}

BOOL sub_02047FEC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    sub_0200B998(*v1, v2, v3);
    return 0;
}

BOOL sub_02048024 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u16 v3 = inline_02049538(param0);

    v3 -= 1;
    sub_0200BE98(*v1, v2, v3);

    return 0;
}

BOOL sub_02048060 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));

    sub_0200C324(*v1, v2);
    return 0;
}

BOOL sub_02048080 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u8 v3 = (*((param0)->unk_08++));

    sub_0200C338(*v1, v2, v3);
    return 0;
}
