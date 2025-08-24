#include "overlay006/npc_trade.h"

#include <nitro.h>
#include <string.h>

#include "generated/npc_trades.h"

#include "field/field_system.h"
#include "overlay006/struct_npc_trade_animation_template.h"

#include "graphics.h"
#include "heap.h"
#include "map_header.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_0202F180.h"
#include "unk_020559DC.h"
#include "unk_02092494.h"

static inline Strbuf *NpcTrade_GetOtName(u32 heapID, u32 npcTradeID);
static Strbuf *NpcTrade_GetNickname(u32 heapID, u32 npcTradeID);
static void NpcTrade_CreateMon(Pokemon *mon, NpcTradeMon *npcTrade, u32 level, u32 npcTradeID, u32 heapID, u32 mapID);

NpcTradeData *NpcTrade_Init(u32 heapID, u32 npcTradeID)
{
    GF_ASSERT(npcTradeID < MAX_NPC_TRADES);

    NpcTradeData *data = Heap_Alloc(heapID, sizeof(NpcTradeData));
    memset(data, 0, sizeof(NpcTradeData));

    data->npcTradeMon = LoadMemberFromNARC(NARC_INDEX_FIELDDATA__POKEMON_TRADE__FLD_TRADE, npcTradeID, FALSE, heapID, FALSE);
    data->heapID = heapID;
    data->npcTradeID = npcTradeID;
    data->mon = Pokemon_New(heapID);
    data->trainerInfo = TrainerInfo_New(heapID);

    TrainerInfo_Init(data->trainerInfo);
    Strbuf *strbuf = NpcTrade_GetOtName(heapID, npcTradeID);

    u16 otName[128];
    Strbuf_ToChars(strbuf, otName, NELEMS(otName));
    Strbuf_Free(strbuf);
    TrainerInfo_SetName(data->trainerInfo, otName);
    TrainerInfo_SetGender(data->trainerInfo, data->npcTradeMon->otGender);

    return data;
}

void NpcTrade_Free(NpcTradeData *data)
{
    Heap_Free(data->npcTradeMon);
    Heap_Free(data->mon);
    Heap_Free(data->trainerInfo);
    Heap_Free(data);
}

u32 NpcTrade_GetSpecies(const NpcTradeData *data)
{
    return data->npcTradeMon->species;
}

u32 NpcTrade_GetRequestedSpecies(const NpcTradeData *data)
{
    return data->npcTradeMon->requestedSpecies;
}

void NpcTrade_ReceiveMon(FieldSystem *fieldSystem, NpcTradeData *data, int slot)
{
    Party_AddPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot, data->mon);
    SaveData_UpdateCatchRecords(fieldSystem->saveData, data->mon);
}

void ov6_02246254(FieldSystem *fieldSystem, NpcTradeData *data, int slot, TradeAnimationTemplate *animationConfig, Pokemon *givingMon, Pokemon *receivingMon)
{
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *partyMon = Party_GetPokemonBySlotIndex(party, slot);
    u32 level = Pokemon_GetValue(partyMon, MON_DATA_LEVEL, NULL);

    NpcTrade_CreateMon(data->mon, data->npcTradeMon, level, data->npcTradeID, data->heapID, fieldSystem->location->mapId);

    Pokemon_Copy(partyMon, givingMon);
    Pokemon_Copy(data->mon, receivingMon);

    animationConfig->sendingPokemon = Pokemon_GetBoxPokemon(givingMon);
    animationConfig->receivingPokemon = Pokemon_GetBoxPokemon(receivingMon);
    animationConfig->otherTrainer = data->trainerInfo;
    animationConfig->tradeType = TRADE_TYPE_NORMAL;
    animationConfig->options = SaveData_GetOptions(fieldSystem->saveData);

    int timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    if (timeOfDay == TIMEOFDAY_MORNING || timeOfDay == TIMEOFDAY_DAY) {
        animationConfig->background = TRADE_BACKGROUND_DAY;
    } else if (timeOfDay == TIMEOFDAY_TWILIGHT) {
        animationConfig->background = TRADE_BACKGROUND_EVENING;
    } else {
        animationConfig->background = TRADE_BACKGROUND_NIGHT;
    }
}

static inline Strbuf *NpcTrade_GetOtName(u32 heapID, u32 npcTradeID)
{
    return NpcTrade_GetNickname(heapID, MAX_NPC_TRADES + npcTradeID);
}

static Strbuf *NpcTrade_GetNickname(u32 heapID, u32 npcTradeID)
{
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NPC_TRADE_NAMES, heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(loader, npcTradeID);
    MessageLoader_Free(loader);
    return strbuf;
}

static void NpcTrade_CreateMon(Pokemon *mon, NpcTradeMon *npcTradeMon, u32 level, u32 npcTradeID, u32 heapID, u32 mapID)
{
    Pokemon_InitWith(mon, npcTradeMon->species, level, INIT_IVS_RANDOM, TRUE, npcTradeMon->personality, OTID_SET, npcTradeMon->otID);

    Strbuf *strbuf = NpcTrade_GetNickname(heapID, npcTradeID);
    Pokemon_SetValue(mon, MON_DATA_NICKNAME_STRING, strbuf);
    Strbuf_Free(strbuf);

    u8 hasNickname = TRUE;
    Pokemon_SetValue(mon, MON_DATA_HAS_NICKNAME, &hasNickname);
    Pokemon_SetValue(mon, MON_DATA_HP_IV, &npcTradeMon->hpIV);
    Pokemon_SetValue(mon, MON_DATA_ATK_IV, &npcTradeMon->atkIV);
    Pokemon_SetValue(mon, MON_DATA_DEF_IV, &npcTradeMon->defIV);
    Pokemon_SetValue(mon, MON_DATA_SPEED_IV, &npcTradeMon->speedIV);
    Pokemon_SetValue(mon, MON_DATA_SPATK_IV, &npcTradeMon->spAtkIV);
    Pokemon_SetValue(mon, MON_DATA_SPDEF_IV, &npcTradeMon->spDefIV);
    Pokemon_SetValue(mon, MON_DATA_COOL, &npcTradeMon->cool);
    Pokemon_SetValue(mon, MON_DATA_BEAUTY, &npcTradeMon->beauty);
    Pokemon_SetValue(mon, MON_DATA_CUTE, &npcTradeMon->cute);
    Pokemon_SetValue(mon, MON_DATA_SMART, &npcTradeMon->smart);
    Pokemon_SetValue(mon, MON_DATA_TOUGH, &npcTradeMon->tough);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &npcTradeMon->heldItem);

    strbuf = NpcTrade_GetOtName(heapID, npcTradeID);
    Pokemon_SetValue(mon, MON_DATA_OT_NAME_STRING, strbuf);
    Strbuf_Free(strbuf);

    Pokemon_SetValue(mon, MON_DATA_OT_GENDER, &npcTradeMon->otGender);
    Pokemon_SetValue(mon, MON_DATA_LANGUAGE, &npcTradeMon->language);

    UpdateMonStatusAndTrainerInfo(mon, NULL, 1, MapHeader_GetMapLabelTextID(mapID), heapID);
    Pokemon_CalcLevelAndStats(mon);

    GF_ASSERT(!Pokemon_IsShiny(mon));
}
