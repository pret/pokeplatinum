#include "unk_020474B8.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_decls/pc_boxes_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "berry_data.h"
#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "item.h"
#include "map_header_util.h"
#include "message.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "ribbon.h"
#include "save_player.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "unk_0205C980.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

static Strbuf *GetSpeciesNameStrbuf(u16 param0, u32 param1);

BOOL ScrCmd_2EF(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u8 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetPokemonStatName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_BufferPlayerName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);

    StringTemplate_SetPlayerName(*strTemplate, templateArg, SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem)));
    return FALSE;
}

BOOL ScrCmd_BufferRivalName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);

    StringTemplate_SetRivalName(*strTemplate, templateArg, fieldSystem->saveData);
    return FALSE;
}

BOOL ScrCmd_BufferCounterpartName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);

    StringTemplate_SetCounterpartName(*strTemplate, templateArg, fieldSystem->saveData);
    return FALSE;
}

BOOL ScrCmd_BufferPartyMonSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), partySlot);
    StringTemplate_SetSpeciesName(*strTemplate, templateArg, (BoxPokemon *)mon);
    return FALSE;
}

BOOL ScrCmd_2FD(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetPokemonTypeName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_BufferItemName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);

    StringTemplate_SetItemName(*strTemplate, templateArg, item);
    return FALSE;
}

BOOL ScrCmd_BufferPocketName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 pocket = ScriptContext_GetVar(ctx);

    StringTemplate_SetBagPocketName(*strTemplate, templateArg, pocket);
    return FALSE;
}

BOOL ScrCmd_BufferTMHMMoveName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);
    u16 move = Item_MoveForTMHM(item);

    StringTemplate_SetMoveName(*strTemplate, templateArg, move);
    return FALSE;
}

BOOL ScrCmd_BufferMoveName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 move = ScriptContext_GetVar(ctx);

    StringTemplate_SetMoveName(*strTemplate, templateArg, move);
    return FALSE;
}

BOOL ScrCmd_BufferNumber(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 number = ScriptContext_GetVar(ctx);

    StringTemplate_SetNumber(*strTemplate, templateArg, number, sub_0205DFC4(number), PADDING_MODE_SPACES, CHARSET_MODE_EN);
    return FALSE;
}

BOOL ScrCmd_280(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
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

BOOL ScrCmd_2F5(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
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

BOOL ScrCmd_BufferPartyMonNickname(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), partySlot);
    StringTemplate_SetNickname(*strTemplate, templateArg, (BoxPokemon *)mon);

    return FALSE;
}

BOOL ScrCmd_251(ScriptContext *param0)
{
    BoxPokemon *v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    PCBoxes *v2 = SaveData_PCBoxes(fieldSystem->saveData);
    StringTemplate **v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v4 = ScriptContext_ReadByte(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u32 v6 = v5 % (5 * 6);
    u32 v7 = v5 / (5 * 6);
    v0 = PCBoxes_GetBoxMonAt(v2, v7, v6);

    StringTemplate_SetNickname(*v3, v4, v0);
    return 0;
}

BOOL ScrCmd_BufferPoketchAppName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 appID = ScriptContext_GetVar(ctx);

    StringTemplate_SetPoketchAppName(*strTemplate, templateArg, appID);
    return FALSE;
}

BOOL ScrCmd_0D8(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetTrainerClassName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_0D9(ScriptContext *param0)
{
    int v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    TrainerInfo *v2 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem));
    StringTemplate **v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v4 = ScriptContext_ReadByte(param0);

    v0 = sub_0205CA14(TrainerInfo_Gender(v2), TrainerInfo_Appearance(v2), 2);
    StringTemplate_SetTrainerClassNameWithArticle(*v3, v4, v0);

    return 0;
}

BOOL ScrCmd_BufferSpeciesNameFromVar(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **template = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 bufferId = ScriptContext_ReadByte(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_ReadHalfWord(ctx);
    u8 v5 = ScriptContext_ReadByte(ctx);
    Strbuf *buffer = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD);

    StringTemplate_SetStrbuf(*template, bufferId, buffer, v4, v5, GAME_LANGUAGE);
    Strbuf_Free(buffer);

    return 0;
}

static Strbuf *GetSpeciesNameStrbuf(u16 speciesId, u32 heapId)
{
    MessageLoader *speciesNames;
    Strbuf *buffer;

    speciesNames = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapId);
    buffer = MessageLoader_GetNewStrbuf(speciesNames, speciesId);

    MessageLoader_Free(speciesNames);
    return buffer;
}

BOOL ScrCmd_BufferPlayerStarterSpeciesName(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetPlayerStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    Strbuf *speciesName = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD);

    StringTemplate_SetStrbuf(*stringTemplate, templateArg, speciesName, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(speciesName);

    return FALSE;
}

BOOL ScrCmd_BufferRivalStarterSpeciesName(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetRivalStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    Strbuf *speciesName = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD);

    StringTemplate_SetStrbuf(*stringTemplate, templateArg, speciesName, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(speciesName);

    return FALSE;
}

BOOL ScrCmd_BufferPlayerCounterpartStarterSpeciesName(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetPlayerCounterpartStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    Strbuf *speciesName = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD);

    StringTemplate_SetStrbuf(*stringTemplate, templateArg, speciesName, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(speciesName);

    return FALSE;
}

BOOL ScrCmd_BufferUndergroundGoodsName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 goods = ScriptContext_GetVar(ctx);

    StringTemplate_SetUndergroundGoodsName(*strTemplate, templateArg, goods);
    return FALSE;
}

BOOL ScrCmd_BufferUndergroundTrapName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 trap = ScriptContext_GetVar(ctx);

    StringTemplate_SetUndergroundTrapName(*strTemplate, templateArg, trap);
    return FALSE;
}

BOOL ScrCmd_BufferUndergroundItemName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);

    StringTemplate_SetUndergroundItemName(*strTemplate, templateArg, item);
    return FALSE;
}

BOOL ScrCmd_0E2(ScriptContext *param0)
{
    Strbuf *v0 = Strbuf_Init(22, HEAP_ID_FIELD);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    MapHeader_LoadName(v3, 4, v0);
    StringTemplate_SetStrbuf(*v1, v2, v0, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);

    return 0;
}

BOOL ScrCmd_17B(ScriptContext *param0)
{
    StringTemplate **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    Strbuf *v4 = BerryData_AllocAndGetName(v2 - 149, 32);

    StringTemplate_SetStrbuf(*v0, v1, v4, 0, (v3 < 2 ? 1 : 0), GAME_LANGUAGE);
    Strbuf_Free(v4);

    return 0;
}

BOOL ScrCmd_17C(ScriptContext *param0)
{
    StringTemplate **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v1 = ScriptContext_ReadByte(param0);
    u16 v2 = ScriptContext_GetVar(param0);

    StringTemplate_SetNatureName(*v0, v1, v2);
    return 0;
}

BOOL ScrCmd_261(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetContestAccessoryName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_272(ScriptContext *param0)
{
    Strbuf *v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_ReadByte(param0);

    v0 = Strbuf_Init(10 + 1, HEAP_ID_FIELDMAP);

    Strbuf_CopyChars(v0, MiscSaveBlock_TabletName(SaveData_MiscSaveBlock(param0->fieldSystem->saveData)));
    StringTemplate_SetStrbuf(*v2, v3, v0, 0, 0, gGameLanguage);
    Strbuf_Free(v0);

    return 0;
}

BOOL ScrCmd_1CB(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_ReadByte(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u16 v6;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v4);
    v6 = Pokemon_GetValue(v1, MON_DATA_MOVE1 + v5, NULL);

    StringTemplate_SetMoveName(*v2, v3, v6);
    return 0;
}

BOOL ScrCmd_232(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = Ribbon_GetData(v3, RIBBON_DATA_NAME_ID);
    StringTemplate_SetRibbonName(*v1, v2, v4);

    return 0;
}

BOOL ScrCmd_2B3(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v3 -= 1;
    StringTemplate_SetBallSealName(*v1, v2, v3);

    return 0;
}

BOOL ScrCmd_2F3(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetTrainerName(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33C(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetItemNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33D(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetItemNamePlural(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33E(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundGoodsNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_33F(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundTrapNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_340(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetUndergroundItemNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_341(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_ReadHalfWord(param0);
    u8 v5 = ScriptContext_ReadByte(param0);

    StringTemplate_SetSpeciesNameWithArticleByID(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_BufferPlayerCounterpartStarterSpeciesNameWithArticle(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetPlayerCounterpartStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));

    StringTemplate_SetSpeciesNameWithArticleByID(*stringTemplate, templateArg, species);
    return FALSE;
}

BOOL ScrCmd_343(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetContestAccessoryNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_344(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetTrainerClassNameWithArticle(*v1, v2, v3);
    return 0;
}

BOOL ScrCmd_345(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v3 -= 1;
    StringTemplate_SetBallSealNamePlural(*v1, v2, v3);

    return 0;
}

BOOL ScrCmd_346(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);

    StringTemplate_CapitalizeArgAtIndex(*v1, v2);
    return 0;
}

BOOL ScrCmd_347(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(param0);
    u8 v3 = ScriptContext_ReadByte(param0);

    StringTemplate_SetDepartmentStoreFloor(*v1, v2, v3);
    return 0;
}
