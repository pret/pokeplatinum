#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "message.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "field/field_system.h"

#include "message.h"
#include "string_template.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "savedata_misc.h"
#include "field_system.h"
#include "field_script_context.h"
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

BOOL ScrCmd_2EF (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u8 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetPokemonStatName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0CD (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);

    StringTemplate_SetPlayerName(*v1, v2, SaveData_GetTrainerInfo(FieldSystem_SaveData(v0)));
    return 0;
}

BOOL ScrCmd_0CE (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);

    StringTemplate_SetRivalName(*v1, v2, v0->saveData);
    return 0;
}

BOOL ScrCmd_0CF (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);

    StringTemplate_SetCounterpartName(*v1, v2, v0->saveData);
    return 0;
}

BOOL ScrCmd_0D0 (ScriptContext * param0)
{
    Pokemon * v0;
    FieldSystem * v1 = param0->fieldSys;
    StringTemplate ** v2 = sub_0203F098(v1, 15);
    u8 v3 = ScriptContext_ReadByte(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v1->saveData), v4);
    StringTemplate_SetSpeciesName(*v2, v3, (BoxPokemon *)v0);

    return 0;
}

BOOL ScrCmd_2FD (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetPokemonTypeName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0D1 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetItemName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0D2 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetBagPocketName(*v1, v2, v3);

    return 0;
}

BOOL ScrCmd_0D3 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4;

    v4 = Item_MoveForTMHM(v3);
    StringTemplate_SetMoveName(*v1, v2, v4);

    return 0;
}

BOOL ScrCmd_0D4 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetMoveName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0D5 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetNumber(*v1, v2, v3, sub_0205DFC4(v3), 1, 1);
    return 0;
}

BOOL ScrCmd_280 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u8 v4 = ScriptContext_ReadByte(param0);
    u8 v5 = ScriptContext_ReadByte(param0);

    if (v4 == 0) {
        v5 = sub_0205DFC4(v3);
    }

    StringTemplate_SetNumber(*v1, v2, v3, v5, v4, 1);
    return 0;
}

BOOL ScrCmd_2F5 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u32 v3 = ScriptContext_ReadWord(param0);
    u8 v4 = ScriptContext_ReadByte(param0);
    u8 v5 = ScriptContext_ReadByte(param0);

    if (v4 == 0) {
        v5 = sub_0205DFC4(v3);
    }

    StringTemplate_SetNumber(*v1, v2, v3, v5, v4, 1);
    return 0;
}

BOOL ScrCmd_0D6 (ScriptContext * param0)
{
    Pokemon * v0;
    FieldSystem * v1 = param0->fieldSys;
    StringTemplate ** v2 = sub_0203F098(v1, 15);
    u8 v3 = ScriptContext_ReadByte(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v1->saveData), v4);
    StringTemplate_SetNickname(*v2, v3, (BoxPokemon *)v0);

    return 0;
}

BOOL ScrCmd_251 (ScriptContext * param0)
{
    BoxPokemon * v0;
    FieldSystem * v1 = param0->fieldSys;
    PCBoxes * v2 = SaveData_PCBoxes(v1->saveData);
    StringTemplate ** v3 = sub_0203F098(v1, 15);
    u8 v4 = ScriptContext_ReadByte(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u32 v6, v7;

    v6 = v5 % (5 * 6);
    v7 = v5 / (5 * 6);
    v0 = sub_02079C9C(v2, v7, v6);

    StringTemplate_SetNickname(*v3, v4, v0);
    return 0;
}

BOOL ScrCmd_0D7 (ScriptContext * param0)
{
    Pokemon * v0;
    FieldSystem * v1 = param0->fieldSys;
    StringTemplate ** v2 = sub_0203F098(v1, 15);
    u8 v3 = ScriptContext_ReadByte(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    StringTemplate_SetPoketchAppName(*v2, v3, v4);
    return 0;
}

BOOL ScrCmd_0D8 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetTrainerClassName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0D9 (ScriptContext * param0)
{
    int v0;
    FieldSystem * v1 = param0->fieldSys;
    TrainerInfo * v2 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSys));
    StringTemplate ** v3 = sub_0203F098(v1, 15);
    u8 v4 = ScriptContext_ReadByte(param0);

    v0 = sub_0205CA14(TrainerInfo_Gender(v2), TrainerInfo_Appearance(v2), 2);
    StringTemplate_SetTrainerClassNameWithArticle(*v3, v4, v0);

    return 0;
}

BOOL ScrCmd_0DA (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_ReadHalfWord(param0);
    u8 v5 = ScriptContext_ReadByte(param0);
    Strbuf* v6 = sub_02047998(v3, 4);

    StringTemplate_SetStrbuf(*v1, v2, v6, v4, v5, GAME_LANGUAGE);
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

BOOL ScrCmd_0DB (ScriptContext * param0)
{
    StringTemplate ** v0 = sub_0203F098(param0->fieldSys, 15);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = sub_0206B054(SaveData_Events(param0->fieldSys->saveData));
    Strbuf* v3 = sub_02047998(v2, 4);

    StringTemplate_SetStrbuf(*v0, v1, v3, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v3);

    return 0;
}

BOOL ScrCmd_0DC (ScriptContext * param0)
{
    StringTemplate ** v0 = sub_0203F098(param0->fieldSys, 15);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = sub_0206B064(SaveData_Events(param0->fieldSys->saveData));
    Strbuf* v3 = sub_02047998(v2, 4);

    StringTemplate_SetStrbuf(*v0, v1, v3, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v3);

    return 0;
}

BOOL ScrCmd_0DD (ScriptContext * param0)
{
    StringTemplate ** v0 = sub_0203F098(param0->fieldSys, 15);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = sub_0206B08C(SaveData_Events(param0->fieldSys->saveData));
    Strbuf* v3 = sub_02047998(v2, 4);

    StringTemplate_SetStrbuf(*v0, v1, v3, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v3);

    return 0;
}

BOOL ScrCmd_0DF (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundGoodsName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0E0 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundTrapName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0E1 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundItemName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0E2 (ScriptContext * param0)
{
    Strbuf* v0 = Strbuf_Init(22, 4);
    StringTemplate ** v1 = sub_0203F098(param0->fieldSys, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    sub_02071D10(v3, 4, v0);
    StringTemplate_SetStrbuf(*v1, v2, v0, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);

    return 0;
}

BOOL ScrCmd_17B (ScriptContext * param0)
{
    StringTemplate ** v0 = sub_0203F098(param0->fieldSys, 15);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    Strbuf* v4 = BerryData_AllocAndGetName(v2 - 149, 32);

    StringTemplate_SetStrbuf(*v0, v1, v4, 0, (v3 < 2 ? 1 : 0), GAME_LANGUAGE);
    Strbuf_Free(v4);

    return 0;
}

BOOL ScrCmd_17C (ScriptContext * param0)
{
    StringTemplate ** v0 = sub_0203F098(param0->fieldSys, 15);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = ScriptContext_GetVar(param0);

    StringTemplate_SetNatureName(*v0, v1, v2);
    return 0;
}

BOOL ScrCmd_261 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetContestAccessoryName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_272 (ScriptContext * param0)
{
    Strbuf* v0;
    FieldSystem * v1 = param0->fieldSys;
    StringTemplate ** v2 = sub_0203F098(v1, 15);
    u8 v3 = ScriptContext_ReadByte(param0);

    v0 = Strbuf_Init(10 + 1, 11);

    Strbuf_CopyChars(v0, MiscSaveBlock_TabletName(SaveData_MiscSaveBlock(param0->fieldSys->saveData)));
    StringTemplate_SetStrbuf(*v2, v3, v0, 0, 0, Unk_020E4C44);
    Strbuf_Free(v0);

    return 0;
}

BOOL ScrCmd_1CB (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    Pokemon * v1;
    StringTemplate ** v2 = sub_0203F098(v0, 15);
    u8 v3 = ScriptContext_ReadByte(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u16 v6;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->saveData), v4);
    v6 = Pokemon_GetValue(v1, MON_DATA_MOVE1 + v5, NULL);

    StringTemplate_SetMoveName(*v2, v3, v6);
    return 0;
}

BOOL ScrCmd_232 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4;

    v4 = sub_020923C0(v3, 3);
    StringTemplate_SetRibbonName(*v1, v2, v4);

    return 0;
}

BOOL ScrCmd_2B3 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v3 -= 1;
    StringTemplate_SetBallSealName(*v1, v2, v3);

    return 0;
}

BOOL ScrCmd_2F3 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetTrainerName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33C (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetItemNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33D (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetItemNamePlural(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33E (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundGoodsNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33F (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundTrapNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_340 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundItemNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_341 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_ReadHalfWord(param0);
    u8 v5 = ScriptContext_ReadByte(param0);

    StringTemplate_SetSpeciesNameWithArticleByID(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_342 (ScriptContext * param0)
{
    StringTemplate ** v0 = sub_0203F098(param0->fieldSys, 15);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = sub_0206B08C(SaveData_Events(param0->fieldSys->saveData));

    StringTemplate_SetSpeciesNameWithArticleByID(*v0, v1, v2);
    return 0;
}

BOOL ScrCmd_343 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetContestAccessoryNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_344 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetTrainerClassNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_345 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v3 -= 1;
    StringTemplate_SetBallSealNamePlural(*v1, v2, v3);

    return 0;
}

BOOL ScrCmd_346 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);

    StringTemplate_CapitalizeArgAtIndex(*v1, v2);
    return 0;
}

BOOL ScrCmd_347 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    StringTemplate ** v1 = sub_0203F098(v0, 15);
    u8 v2 = ScriptContext_ReadByte(param0);
    u8 v3 = ScriptContext_ReadByte(param0);

    StringTemplate_SetDepartmentStoreFloor(*v1, v2, v3);
    return 0;
}
