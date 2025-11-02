#include "scrcmd_strings.h"

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

static Strbuf *GetSpeciesNameStrbuf(u16 speciesId, u32 heapID);

BOOL ScrCmd_BufferStatName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u8 stat = ScriptContext_GetVar(ctx);

    StringTemplate_SetPokemonStatName(*strTemplate, templateArg, stat);
    return FALSE;
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

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    StringTemplate_SetSpeciesName(*strTemplate, templateArg, (BoxPokemon *)mon);
    return FALSE;
}

BOOL ScrCmd_BufferTypeName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 type = ScriptContext_GetVar(ctx);

    StringTemplate_SetPokemonTypeName(*strTemplate, templateArg, type);
    return FALSE;
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

    StringTemplate_SetNumber(*strTemplate, templateArg, number, GetNumberDigitCount(number), PADDING_MODE_SPACES, CHARSET_MODE_EN);
    return FALSE;
}

BOOL ScrCmd_BufferVarPaddingDigits(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 value = ScriptContext_GetVar(ctx);
    u8 paddingMode = ScriptContext_ReadByte(ctx);
    u8 maxDigits = ScriptContext_ReadByte(ctx);

    if (paddingMode == PADDING_MODE_NONE) {
        maxDigits = GetNumberDigitCount(value);
    }

    StringTemplate_SetNumber(*strTemplate, templateArg, value, maxDigits, paddingMode, CHARSET_MODE_EN);
    return FALSE;
}

BOOL ScrCmd_BufferValuePaddingDigits(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u32 value = ScriptContext_ReadWord(ctx);
    u8 paddingMode = ScriptContext_ReadByte(ctx);
    u8 maxDigits = ScriptContext_ReadByte(ctx);

    if (paddingMode == PADDING_MODE_NONE) {
        maxDigits = GetNumberDigitCount(value);
    }

    StringTemplate_SetNumber(*strTemplate, templateArg, value, maxDigits, paddingMode, CHARSET_MODE_EN);
    return FALSE;
}

BOOL ScrCmd_BufferPartyMonNickname(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    StringTemplate_SetNickname(*strTemplate, templateArg, (BoxPokemon *)mon);

    return FALSE;
}

BOOL ScrCmd_BufferMonNicknameFromPC(ScriptContext *ctx)
{
    BoxPokemon *boxMon;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    PCBoxes *pcBoxes = SaveData_GetPCBoxes(fieldSystem->saveData);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 boxSlotIndex = ScriptContext_GetVar(ctx);
    u32 slot = boxSlotIndex % MAX_MONS_PER_BOX;
    u32 boxID = boxSlotIndex / MAX_MONS_PER_BOX;
    boxMon = PCBoxes_GetBoxMonAt(pcBoxes, boxID, slot);

    StringTemplate_SetNickname(*strTemplate, templateArg, boxMon);
    return FALSE;
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

BOOL ScrCmd_BufferTrainerClassName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 trainerClass = ScriptContext_GetVar(ctx);

    StringTemplate_SetTrainerClassName(*strTemplate, templateArg, trainerClass);
    return FALSE;
}

BOOL ScrCmd_BufferTrainerClassFromAppearance(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);

    int trainerClass = sub_0205CA14(TrainerInfo_Gender(trainerInfo), TrainerInfo_Appearance(trainerInfo), 2);
    StringTemplate_SetTrainerClassNameWithArticle(*strTemplate, templateArg, trainerClass);

    return FALSE;
}

BOOL ScrCmd_BufferSpeciesNameFromVar(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **template = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 bufferId = ScriptContext_ReadByte(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u16 unused1 = ScriptContext_ReadHalfWord(ctx);
    u8 unused2 = ScriptContext_ReadByte(ctx);
    Strbuf *buffer = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD1);

    StringTemplate_SetStrbuf(*template, bufferId, buffer, unused1, unused2, 2);
    Strbuf_Free(buffer);

    return FALSE;
}

static Strbuf *GetSpeciesNameStrbuf(u16 speciesId, u32 heapID)
{
    MessageLoader *speciesNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);
    Strbuf *buffer = MessageLoader_GetNewStrbuf(speciesNames, speciesId);

    MessageLoader_Free(speciesNames);
    return buffer;
}

BOOL ScrCmd_BufferPlayerStarterSpeciesName(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetPlayerStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    Strbuf *speciesName = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD1);

    StringTemplate_SetStrbuf(*stringTemplate, templateArg, speciesName, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(speciesName);

    return FALSE;
}

BOOL ScrCmd_BufferRivalStarterSpeciesName(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetRivalStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    Strbuf *speciesName = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD1);

    StringTemplate_SetStrbuf(*stringTemplate, templateArg, speciesName, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(speciesName);

    return FALSE;
}

BOOL ScrCmd_BufferPlayerCounterpartStarterSpeciesName(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetPlayerCounterpartStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    Strbuf *speciesName = GetSpeciesNameStrbuf(species, HEAP_ID_FIELD1);

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

BOOL ScrCmd_BufferMapName(ScriptContext *ctx)
{
    Strbuf *mapName = Strbuf_Init(22, HEAP_ID_FIELD1);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 mapHeaderID = ScriptContext_GetVar(ctx);

    MapHeader_LoadName(mapHeaderID, HEAP_ID_FIELD1, mapName);
    StringTemplate_SetStrbuf(*strTemplate, templateArg, mapName, 0, 1, 2);
    Strbuf_Free(mapName);

    return FALSE;
}

BOOL ScrCmd_BufferBerryName(ScriptContext *ctx)
{
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);
    u16 unused = ScriptContext_GetVar(ctx);
    Strbuf *berryName = BerryData_AllocAndGetName(item - FIRST_BERRY_IDX, HEAP_ID_FIELD3);

    StringTemplate_SetStrbuf(*strTemplate, templateArg, berryName, 0, (unused < 2 ? 1 : 0), 2);
    Strbuf_Free(berryName);

    return FALSE;
}

BOOL ScrCmd_BufferNatureName(ScriptContext *ctx)
{
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 nature = ScriptContext_GetVar(ctx);

    StringTemplate_SetNatureName(*strTemplate, templateArg, nature);
    return FALSE;
}

BOOL ScrCmd_BufferAccessoryName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 accessory = ScriptContext_GetVar(ctx);

    StringTemplate_SetContestAccessoryName(*strTemplate, templateArg, accessory);
    return FALSE;
}

BOOL ScrCmd_BufferTabletName(ScriptContext *ctx)
{
    Strbuf *tabletName;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);

    tabletName = Strbuf_Init(11, HEAP_ID_FIELD2);

    Strbuf_CopyChars(tabletName, MiscSaveBlock_TabletName(SaveData_MiscSaveBlock(ctx->fieldSystem->saveData)));
    StringTemplate_SetStrbuf(*strTemplate, templateArg, tabletName, 0, 0, gGameLanguage);
    Strbuf_Free(tabletName);

    return FALSE;
}

BOOL ScrCmd_BufferPartyMoveName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);
    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    u16 move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    StringTemplate_SetMoveName(*strTemplate, templateArg, move);
    return FALSE;
}

BOOL ScrCmd_BufferRibbonName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 ribbon = ScriptContext_GetVar(ctx);
    u16 ribbonNameID = Ribbon_GetData(ribbon, RIBBON_DATA_NAME_ID);
    StringTemplate_SetRibbonName(*strTemplate, templateArg, ribbonNameID);

    return FALSE;
}

BOOL ScrCmd_BufferBallSealName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 ballSeal = ScriptContext_GetVar(ctx);

    ballSeal -= 1;
    StringTemplate_SetBallSealName(*strTemplate, templateArg, ballSeal);

    return FALSE;
}

BOOL ScrCmd_BufferTrainerName(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 trainerID = ScriptContext_GetVar(ctx);

    StringTemplate_SetTrainerName(*strTemplate, templateArg, trainerID);
    return FALSE;
}

BOOL ScrCmd_BufferItemNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);

    StringTemplate_SetItemNameWithArticle(*strTemplate, templateArg, item);
    return FALSE;
}

BOOL ScrCmd_BufferItemNamePlural(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);

    StringTemplate_SetItemNamePlural(*strTemplate, templateArg, item);
    return FALSE;
}

BOOL ScrCmd_BufferUndergroundGoodsNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 goods = ScriptContext_GetVar(ctx);

    StringTemplate_SetUndergroundGoodsNameWithArticle(*strTemplate, templateArg, goods);
    return FALSE;
}

BOOL ScrCmd_BufferUndergroundTrapNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 trap = ScriptContext_GetVar(ctx);

    StringTemplate_SetUndergroundTrapNameWithArticle(*strTemplate, templateArg, trap);
    return FALSE;
}

BOOL ScrCmd_BufferUndergroundItemNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 item = ScriptContext_GetVar(ctx);

    StringTemplate_SetUndergroundItemNameWithArticle(*strTemplate, templateArg, item);
    return FALSE;
}

BOOL ScrCmd_BufferSpeciesNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u16 unused1 = ScriptContext_ReadHalfWord(ctx);
    u8 unused2 = ScriptContext_ReadByte(ctx);

    StringTemplate_SetSpeciesNameWithArticleByID(*strTemplate, templateArg, species);
    return FALSE;
}

BOOL ScrCmd_BufferPlayerCounterpartStarterSpeciesNameWithArticle(ScriptContext *ctx)
{
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 species = SystemVars_GetPlayerCounterpartStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));

    StringTemplate_SetSpeciesNameWithArticleByID(*stringTemplate, templateArg, species);
    return FALSE;
}

BOOL ScrCmd_BufferAccessoryNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 accessory = ScriptContext_GetVar(ctx);

    StringTemplate_SetContestAccessoryNameWithArticle(*strTemplate, templateArg, accessory);
    return FALSE;
}

BOOL ScrCmd_BufferTrainerClassNameWithArticle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 trainerClass = ScriptContext_GetVar(ctx);

    StringTemplate_SetTrainerClassNameWithArticle(*strTemplate, templateArg, trainerClass);
    return FALSE;
}

BOOL ScrCmd_BufferBallSealNamePlural(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u16 ballSeal = ScriptContext_GetVar(ctx);

    ballSeal -= 1;
    StringTemplate_SetBallSealNamePlural(*strTemplate, templateArg, ballSeal);

    return FALSE;
}

BOOL ScrCmd_CapitalizeFirstLetter(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);

    StringTemplate_CapitalizeArgAtIndex(*strTemplate, templateArg);
    return FALSE;
}

BOOL ScrCmd_BufferFloorNumber(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArg = ScriptContext_ReadByte(ctx);
    u8 floor = ScriptContext_ReadByte(ctx);

    StringTemplate_SetFloorNumber(*strTemplate, templateArg, floor);
    return FALSE;
}
