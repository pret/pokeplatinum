#include "scrcmd_mystery_gift.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/species.h"
#include "generated/items.h"
#include "generated/mystery_gift_delivery_stages.h"

#include "struct_defs/struct_0202610C.h"

#include "field/field_system.h"

#include "bag.h"
#include "field_script_context.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "mystery_gift.h"
#include "party.h"
#include "pokemon.h"
#include "poketch.h"
#include "ribbon.h"
#include "save_player.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "unk_02017038.h"
#include "unk_0202602C.h"
#include "unk_0202854C.h"
#include "unk_020298BC.h"
#include "unk_0202C9F4.h"
#include "unk_0202D778.h"
#include "unk_0202F180.h"
#include "unk_02054884.h"
#include "unk_02092494.h"
#include "vars_flags.h"

#include "res/text/bank/mystery_gift_deliveryman.h"

#define RANDOMIZE_PERSONALITY          0
#define RANDOMIZE_PERSONALITY_NO_SHINY 1
#define RANDOMIZE_IVS                  0

typedef struct {
    FieldSystem *fieldSystem;
    StringTemplate *stringTemplate;
    GiftData *giftData;
} MystGiftGiveMsgFormatter;

typedef BOOL (*CheckCanReceiveFuncPtr)(FieldSystem *fieldSystem, GiftData *giftData);
typedef void (*GiveFuncPtr)(FieldSystem *fieldSystem, GiftData *giftData);
typedef void (*PrepareReceivedGiftMsgFuncPtr)(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID);
typedef void (*PrepareCannotReceiveMsgFuncPtr)(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID);

typedef struct {
    CheckCanReceiveFuncPtr checkCanReceive;
    GiveFuncPtr give;
    PrepareReceivedGiftMsgFuncPtr prepReceivedGiftMsg;
    PrepareCannotReceiveMsgFuncPtr prepCannotReceiveMsg;
} GiftHandler;

static const GiftHandler giftHandlers[MYST_GIFT_TYPE_MAX - 1];

static void MystGiftGiveMsgFormatter_Init(MystGiftGiveMsgFormatter *formatter, FieldSystem *fieldSystem, StringTemplate *strTemplate, GiftData *giftData)
{
    formatter->fieldSystem = fieldSystem;
    formatter->stringTemplate = strTemplate;
    formatter->giftData = giftData;
}

static int GetCurrentPgtType(FieldSystem *fieldSystem)
{
    return MysteryGift_TryGetPgtType(MysteryGift_TryGetFirstValidPgtSlot());
}

static GiftData *GetCurrentPgtData(FieldSystem *fieldSystem)
{
    return MysteryGift_TryGetPgtData(MysteryGift_TryGetFirstValidPgtSlot());
}

static void FreeCurrentPgt(FieldSystem *fieldSystem)
{
    MysteryGift_FreePgtSlot(MysteryGift_TryGetFirstValidPgtSlot());
}

BOOL ScrCmd_MysteryGiftGive(ScriptContext *ctx)
{
    switch (ScriptContext_ReadHalfWord(ctx)) {
    case MYSTERY_GIFT_LOAD:
        MysteryGift_Load(ctx->fieldSystem->saveData, 32);
        break;
    case MYSTERY_GIFT_UNLOAD_RECEIVED:
        MysteryGift_Unload(ctx->fieldSystem->saveData, 0);
        break;
    case MYSTERY_GIFT_UNLOAD_NOT_RECEIVED:
        MysteryGift_Unload(ctx->fieldSystem->saveData, 1);
        break;
    case MYSTERY_GIFT_CHECK_AVAILABLE_PGT: {
        u16 *destVarPtr = ScriptContext_GetVarPointer(ctx);

        if (GetCurrentPgtType(ctx->fieldSystem) != MYST_GIFT_NONE) {
            *destVarPtr = TRUE;
        } else {
            *destVarPtr = FALSE;
        }
        break;
    }
    case MYSTERY_GIFT_GET_PGT_TYPE: {
        u16 *destVarPtr = ScriptContext_GetVarPointer(ctx);
        *destVarPtr = GetCurrentPgtType(ctx->fieldSystem);
        break;
    }
    case MYSTERY_GIFT_CHECK_CAN_RECEIVE: {
        u16 *destVarPtr = ScriptContext_GetVarPointer(ctx);
        const GiftHandler *giftHandler = &giftHandlers[GetCurrentPgtType(ctx->fieldSystem) - 1];

        *destVarPtr = giftHandler->checkCanReceive(ctx->fieldSystem, GetCurrentPgtData(ctx->fieldSystem));
        break;
    }
    case MYSTERY_GIFT_GIVE: {
        const GiftHandler *giftHandler = &giftHandlers[GetCurrentPgtType(ctx->fieldSystem) - 1];

        giftHandler->give(ctx->fieldSystem, GetCurrentPgtData(ctx->fieldSystem));
        FreeCurrentPgt(ctx->fieldSystem);
        break;
    }
    case MYSTERY_GIFT_RECEIVED: {
        MystGiftGiveMsgFormatter formatter;
        const GiftHandler *giftHandler = &giftHandlers[GetCurrentPgtType(ctx->fieldSystem) - 1];
        StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
        u16 *bankIDDestVarPtr = ScriptContext_GetVarPointer(ctx);
        u16 *stringIDDestVarPtr = ScriptContext_GetVarPointer(ctx);

        MystGiftGiveMsgFormatter_Init(&formatter, ctx->fieldSystem, *strTemplate, GetCurrentPgtData(ctx->fieldSystem));
        giftHandler->prepReceivedGiftMsg(&formatter, bankIDDestVarPtr, stringIDDestVarPtr);
        break;
    }
    case MYSTERY_GIFT_CANT_RECEIVE: {
        MystGiftGiveMsgFormatter formatter;
        const GiftHandler *giftHandler = &giftHandlers[GetCurrentPgtType(ctx->fieldSystem) - 1];
        StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
        u16 *bankIDDestVarPtr = ScriptContext_GetVarPointer(ctx);
        u16 *stringIDDestVarPtr = ScriptContext_GetVarPointer(ctx);

        MystGiftGiveMsgFormatter_Init(&formatter, ctx->fieldSystem, *strTemplate, GetCurrentPgtData(ctx->fieldSystem));
        giftHandler->prepCannotReceiveMsg(&formatter, bankIDDestVarPtr, stringIDDestVarPtr);
        break;
    }
    }

    return FALSE;
}

static BOOL CanReceivePokemon(FieldSystem *fieldSystem, GiftData *dummy)
{
    Party *party = SaveData_GetParty(fieldSystem->saveData);

    return Party_GetCurrentCount(party) < MAX_PARTY_SIZE;
}

static void GenerateManaphyEgg(FieldSystem *fieldSystem, GiftData *dummy)
{
    sub_02054930(HEAP_ID_FIELD3, fieldSystem->saveData, SPECIES_MANAPHY, 1, 2, 1);
}

static void PrepReceivedManaphyEggMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedManaphyEgg;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
}

static void GivePokemon(FieldSystem *fieldSystem, GiftData *dummy)
{
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    Pokemon *tmpPoke = NULL;

    Pokemon *pokemon = &giftData->pokemonGiftData.pokemon;
    u8 *giftSpecialRibbons = giftData->pokemonGiftData.specialRibbonsDescIDs;
    int metLocation = Pokemon_GetValue(pokemon, MON_DATA_EGG_LOCATION, NULL);
    u32 giftPersonality = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    u32 giftOtID = Pokemon_GetValue(pokemon, MON_DATA_OT_ID, NULL);
    u32 personality = ARNG_Next(OS_GetTick());

    if (giftPersonality == RANDOMIZE_PERSONALITY) {
        (void)0;
    } else if (giftPersonality == RANDOMIZE_PERSONALITY_NO_SHINY) {
        while (Pokemon_IsPersonalityShiny(giftOtID, personality)) {
            personality = ARNG_Next(personality);
        }
    } else {
        personality = giftPersonality;
    }

    sub_020780C4(pokemon, personality);
    u32 tmp = Pokemon_GetGender(pokemon);

    Pokemon_SetValue(pokemon, MON_DATA_GENDER, &tmp);

    // couldn't get a match without reusing the variable
    tmp = Pokemon_GetValue(pokemon, MON_DATA_HP_IV, NULL) + Pokemon_GetValue(pokemon, MON_DATA_ATK_IV, NULL) + Pokemon_GetValue(pokemon, MON_DATA_DEF_IV, NULL) + Pokemon_GetValue(pokemon, MON_DATA_SPEED_IV, NULL) + Pokemon_GetValue(pokemon, MON_DATA_SPATK_IV, NULL) + Pokemon_GetValue(pokemon, MON_DATA_SPDEF_IV, NULL);

    if (tmp == RANDOMIZE_IVS) {
        u32 rand = LCRNG_Next();
        personality = (rand & (0x1F << 0)) >> 0; // couldn't get a match without reusing the variable

        Pokemon_SetValue(pokemon, MON_DATA_HP_IV, &personality);

        personality = (rand & (0x1F << 5)) >> 5;
        Pokemon_SetValue(pokemon, MON_DATA_ATK_IV, &personality);

        personality = (rand & (0x1F << 10)) >> 10;
        Pokemon_SetValue(pokemon, MON_DATA_DEF_IV, &personality);

        rand = LCRNG_Next();
        personality = (rand & (0x1F << 0)) >> 0;
        Pokemon_SetValue(pokemon, MON_DATA_SPEED_IV, &personality);

        personality = (rand & (0x1F << 5)) >> 5;
        Pokemon_SetValue(pokemon, MON_DATA_SPATK_IV, &personality);

        personality = (rand & (0x1F << 10)) >> 10;
        Pokemon_SetValue(pokemon, MON_DATA_SPDEF_IV, &personality);
    }

    u8 *specialRibbons = sub_0202D79C(fieldSystem->saveData);

    if (Pokemon_GetValue(pokemon, MON_DATA_RED_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_RED)] = giftSpecialRibbons[0];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_GREEN_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_GREEN)] = giftSpecialRibbons[1];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_BLUE_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_BLUE)] = giftSpecialRibbons[2];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_FESTIVAL_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_FESTIVAL)] = giftSpecialRibbons[3];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_CARNIVAL_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_CARNIVAL)] = giftSpecialRibbons[4];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_CLASSIC_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_CLASSIC)] = giftSpecialRibbons[5];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_PREMIER_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_PREMIER)] = giftSpecialRibbons[6];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_MARINE_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_HOENN_MARINE)] = giftSpecialRibbons[7];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_LAND_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_HOENN_LAND)] = giftSpecialRibbons[8];
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_SKY_RIBBON, NULL)) {
        specialRibbons[Ribbon_TryGetSpecialDescriptionID(RIBBON_HOENN_SKY)] = giftSpecialRibbons[9];
    }

    if (giftData->pokemonGiftData.hasCustomOT == FALSE) {
        Strbuf *playerName = TrainerInfo_NameNewStrbuf(trainerInfo, HEAP_ID_FIELD3);
        u32 playerID = TrainerInfo_ID(trainerInfo);
        u32 playerGender = TrainerInfo_Gender(trainerInfo);

        tmpPoke = Pokemon_New(HEAP_ID_FIELD3);

        Pokemon_Copy(pokemon, tmpPoke);
        Pokemon_SetValue(tmpPoke, MON_DATA_OT_NAME_STRING, playerName);
        Pokemon_SetValue(tmpPoke, MON_DATA_OT_ID, &playerID);
        Pokemon_SetValue(tmpPoke, MON_DATA_OT_GENDER, &playerGender);

        pokemon = tmpPoke;
        Strbuf_Free(playerName);
    }

    UpdateMonStatusAndTrainerInfo(pokemon, trainerInfo, 4, SpecialMetLoc_GetId(2, metLocation), HEAP_ID_FIELD3);

    if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
        if (Pokemon_GetValue(pokemon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == TRUE) {
            if (SystemVars_GetArceusEventState(varsFlags) == FALSE) {
                SystemVars_SetArceusEventState(varsFlags, TRUE);
            }
        }
    }

    Pokemon_CalcLevelAndStats(pokemon);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    BOOL added = Party_AddPokemon(party, pokemon);

    if (added) {
        SaveData_UpdateCatchRecords(fieldSystem->saveData, pokemon);
    }

    if (tmpPoke) {
        Heap_Free(tmpPoke);
    }
}

static void PrepReceivedPokemonMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedPokemon;

    Pokemon *pokemon = &giftData->pokemonGiftData.pokemon;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetSpeciesNameWithArticle(formatter->stringTemplate, 1, Pokemon_GetBoxPokemon(pokemon));
}

static void PrepCannotReceivePokemonMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_CannotGivePokemon_PartyFull;
}

static void GiveEgg(FieldSystem *fieldSystem, GiftData *giftData)
{
    GivePokemon(fieldSystem, giftData);
}

static void PrepReceivedEggMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedPokemonEgg;

    Pokemon *pokemon = &giftData->pokemonGiftData.pokemon;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetSpeciesName(formatter->stringTemplate, 1, Pokemon_GetBoxPokemon(pokemon));
}

static BOOL CanReceiveItem(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    return Bag_CanFitItem(bag, giftData->itemGiftData.item, 1, HEAP_ID_FIELD3);
}

static void GiveItem(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    u16 itemID = giftData->itemGiftData.item;

    Bag_TryAddItem(bag, itemID, 1, HEAP_ID_FIELD3);
}

static void PrepReceivedItemMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = giftData->itemGiftData.item;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedItem;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetItemName(formatter->stringTemplate, 1, itemID);
}

static void PrepCannotReceiveItemMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    Bag *bag = SaveData_GetBag(formatter->fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = giftData->itemGiftData.item;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_CannotGiveItem_HaveTooMany;

    StringTemplate_SetItemName(formatter->stringTemplate, 0, itemID);
}

static BOOL CanReceiveBattleReg(FieldSystem *fieldSystem, GiftData *dummy)
{
    return TRUE;
}

static void GiveBattleReg(FieldSystem *fieldSystem, GiftData *dummy)
{
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    const BattleRegulation *battleReg = &giftData->battleReg;

    sub_0202613C(fieldSystem->saveData, battleReg);
}

static void PrepReceivedRulesMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    const BattleRegulation *battleReg = &giftData->battleReg;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedRules;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));

    Strbuf *battleRegName = sub_0202605C(battleReg, HEAP_ID_FIELD3);
    StringTemplate_SetStrbuf(formatter->stringTemplate, 1, battleRegName, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(battleRegName);
}

static void PrepCannotReceiveRulesMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_MakeRoomForDecorationGoods;
}

static BOOL CanReceiveDecorationGood(FieldSystem *fieldSystem, GiftData *dummy)
{
    int ownedCount = Underground_GetGoodsCountPC(SaveData_GetUnderground(fieldSystem->saveData));

    return ownedCount < NUM_MAX_DECORATION_GOODS;
}

static void GiveDecorationGood(FieldSystem *fieldSystem, GiftData *dummy)
{
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    int id = giftData->decorationGoodID;

    Underground_TryAddGoodPC(SaveData_GetUnderground(fieldSystem->saveData), id);
}

static void PrepReceivedDecoGoodMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    int id = giftData->decorationGoodID;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedDecorationGood;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetUndergroundGoodsName(formatter->stringTemplate, 1, id);
}

static void PrepCannotReceiveDecoGood(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_MakeRoomForDecorationGoods;
}

static BOOL CanReceiveCosmetic(FieldSystem *fieldSystem, GiftData *dummy)
{
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    int type = giftData->cosmeticGiftData.type;
    int id = giftData->cosmeticGiftData.id;

    switch (type) {
    case MG_COSMETICS_SEAL:
        return sub_0202CB70(SaveData_GetSealCase(fieldSystem->saveData), id, 1);
    case MG_COSMETICS_ACCESSORY:
        return TRUE;
    case MG_COSMETICS_BACKDROP:
        return TRUE;
    }

    return FALSE;
}

static void GiveCosmetic(FieldSystem *fieldSystem, GiftData *dummy)
{
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    int type = giftData->cosmeticGiftData.type;
    int id = giftData->cosmeticGiftData.id;

    switch (type) {
    case MG_COSMETICS_SEAL:
        sub_0202CAE0(SaveData_GetSealCase(fieldSystem->saveData), id, 1);
        break;
    case MG_COSMETICS_ACCESSORY:
        sub_02029E2C(sub_02029D04(sub_0202A750(fieldSystem->saveData)), id, 1);
        break;
    case MG_COSMETICS_BACKDROP:
        sub_02029EFC(sub_02029D04(sub_0202A750(fieldSystem->saveData)), id);
        break;
    }
}

static void PrepReceivedCosmeticMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    int type = giftData->cosmeticGiftData.type;
    int id = giftData->cosmeticGiftData.id;

    switch (type) {
    case MG_COSMETICS_SEAL:
        StringTemplate_SetBallSealName(formatter->stringTemplate, 1, id);
        break;
    case MG_COSMETICS_ACCESSORY:
        StringTemplate_SetContestAccessoryName(formatter->stringTemplate, 1, id);
        break;
    case MG_COSMETICS_BACKDROP:
        StringTemplate_SetContestBackdropName(formatter->stringTemplate, 1, id);
        break;
    }

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedCosmetics;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
}

static void PrepCannotReceiveCosmeticMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_MakeRoomForDecorationGoods;
}

static BOOL CanReceiveMemberCard(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    return Bag_CanFitItem(bag, ITEM_MEMBER_CARD, 1, HEAP_ID_FIELD3);
}

static void InitDarkraiEvent(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    Bag_TryAddItem(bag, ITEM_MEMBER_CARD, 1, HEAP_ID_FIELD3);
    SystemVars_SetDistributionEventMagic(varsFlags, DISTRIBUTION_EVENT_DARKRAI);
}

static void PrepReceivedMemberCardMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_MEMBER_CARD;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedMemberCard;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetItemName(formatter->stringTemplate, 1, itemID);
}

static void PrepCannotReceiveMemberCardMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    Bag *bag = SaveData_GetBag(formatter->fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_MEMBER_CARD;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_CannotGiveItem_HaveTooMany;

    StringTemplate_SetItemName(formatter->stringTemplate, 0, itemID);
}

static BOOL CanReceiveOaksLetter(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    return Bag_CanFitItem(bag, ITEM_OAKS_LETTER, 1, HEAP_ID_FIELD3);
}

static void InitShayminEvent(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    Bag_TryAddItem(bag, ITEM_OAKS_LETTER, 1, HEAP_ID_FIELD3);
    SystemVars_SetDistributionEventMagic(varsFlags, DISTRIBUTION_EVENT_SHAYMIN);

    if (SystemVars_GetShayminEventState(varsFlags) == 0) {
        SystemVars_SetShayminEventState(varsFlags, 1);
    }
}

static void PrepReceivedOaksLetterMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_OAKS_LETTER;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedOaksLetter;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetItemName(formatter->stringTemplate, 1, itemID);
}

static void PrepCannotReceivedOaksLetterMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    Bag *bag = SaveData_GetBag(formatter->fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_OAKS_LETTER;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_CannotGiveItem_HaveTooMany;

    StringTemplate_SetItemName(formatter->stringTemplate, 0, itemID);
}

static BOOL CanReceiveSecretKey(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    return Bag_CanFitItem(bag, ITEM_SECRET_KEY, 1, HEAP_ID_FIELD3);
}

static void InitRotomEvent(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    Bag_TryAddItem(bag, ITEM_SECRET_KEY, 1, HEAP_ID_FIELD3);
    SystemVars_SetDistributionEventMagic(varsFlags, DISTRIBUTION_EVENT_ROTOM);
}

static void PrepReceivedSecretKeyMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_SECRET_KEY;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedSecretKey;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetItemName(formatter->stringTemplate, 1, itemID);
}

static void PrepCannotReceiveSecretKeyMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    Bag *bag = SaveData_GetBag(formatter->fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_SECRET_KEY;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_CannotGiveItem_HaveTooMany;

    StringTemplate_SetItemName(formatter->stringTemplate, 0, itemID);
}

static BOOL CanReceiveAzureFlute(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    return Bag_CanFitItem(bag, ITEM_AZURE_FLUTE, 1, HEAP_ID_FIELD3);
}

static void InitArceusEvent(FieldSystem *fieldSystem, GiftData *dummy)
{
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    GiftData *unused = GetCurrentPgtData(fieldSystem);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    Bag_TryAddItem(bag, ITEM_AZURE_FLUTE, 1, HEAP_ID_FIELD3);
    SystemVars_SetDistributionEventMagic(varsFlags, DISTRIBUTION_EVENT_ARCEUS);
}

static void PrepReceivedAzureFluteMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_AZURE_FLUTE;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedAzureFlute;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetItemName(formatter->stringTemplate, 1, itemID);
}

static void PrepCannotReceiveAzureFluteMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    Bag *bag = SaveData_GetBag(formatter->fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);
    u16 itemID = ITEM_AZURE_FLUTE;

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_CannotGiveItem_HaveTooMany;

    StringTemplate_SetItemName(formatter->stringTemplate, 0, itemID);
}

static BOOL CanReceivePoketchApp(FieldSystem *fieldSystem, GiftData *dummy)
{
    Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    return Poketch_IsEnabled(poketch);
}

static void GivePoketchApp(FieldSystem *fieldSystem, GiftData *dummy)
{
    Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);
    GiftData *giftData = GetCurrentPgtData(fieldSystem);

    Poketch_RegisterApp(poketch, giftData->poketchAppID);
}

static void PrepReceivedPoketchAppMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_ReceivedPoketchApp;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
    StringTemplate_SetPoketchAppName(formatter->stringTemplate, 1, giftData->poketchAppID);
}

static void PrepCannotReceivePoketchAppMsg(MystGiftGiveMsgFormatter *formatter, u16 *outTextBank, u16 *outStringID)
{
    GiftData *giftData = GetCurrentPgtData(formatter->fieldSystem);

    *outTextBank = TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN;
    *outStringID = MysteryGiftDeliveryman_Text_HaventObtainedPoketch;

    StringTemplate_SetPlayerName(formatter->stringTemplate, 0, SaveData_GetTrainerInfo(formatter->fieldSystem->saveData));
}

// Mystery Gift type 0 has no handler because it signals an empty Wonder Card/PGT slot
static const GiftHandler giftHandlers[MYST_GIFT_TYPE_MAX - 1] = {
    [MYST_GIFT_POKEMON - 1] = { CanReceivePokemon, GivePokemon, PrepReceivedPokemonMsg, PrepCannotReceivePokemonMsg },
    [MYST_GIFT_EGG - 1] = { CanReceivePokemon, GiveEgg, PrepReceivedEggMsg, PrepCannotReceivePokemonMsg },
    [MYST_GIFT_ITEM - 1] = { CanReceiveItem, GiveItem, PrepReceivedItemMsg, PrepCannotReceiveItemMsg },
    [MYST_GIFT_BATTLE_REG - 1] = { CanReceiveBattleReg, GiveBattleReg, PrepReceivedRulesMsg, PrepCannotReceiveRulesMsg },
    [MYST_GIFT_DECORATION_GOOD - 1] = { CanReceiveDecorationGood, GiveDecorationGood, PrepReceivedDecoGoodMsg, PrepCannotReceiveDecoGood },
    [MYST_GIFT_COSMETICS - 1] = { CanReceiveCosmetic, GiveCosmetic, PrepReceivedCosmeticMsg, PrepCannotReceiveCosmeticMsg }, // BallSeal/Accessory/Backdrop
    [MYST_GIFT_MANAPHY_EGG - 1] = { CanReceivePokemon, GenerateManaphyEgg, PrepReceivedManaphyEggMsg, PrepCannotReceivePokemonMsg },
    [MYST_GIFT_MEMBER_CARD - 1] = { CanReceiveMemberCard, InitDarkraiEvent, PrepReceivedMemberCardMsg, PrepCannotReceiveMemberCardMsg },
    [MYST_GIFT_OAKS_LETTER - 1] = { CanReceiveOaksLetter, InitShayminEvent, PrepReceivedOaksLetterMsg, PrepCannotReceivedOaksLetterMsg },
    [MYST_GIFT_AZURE_FLUTE - 1] = { CanReceiveAzureFlute, InitArceusEvent, PrepReceivedAzureFluteMsg, PrepCannotReceiveAzureFluteMsg },
    [MYST_GIFT_POKETCH_APP - 1] = { CanReceivePoketchApp, GivePoketchApp, PrepReceivedPoketchAppMsg, PrepCannotReceivePoketchAppMsg },
    [MYST_GIFT_SECRET_KEY - 1] = { CanReceiveSecretKey, InitRotomEvent, PrepReceivedSecretKeyMsg, PrepCannotReceiveSecretKeyMsg },
    [MYST_GIFT_UNKNOWN - 1] = { CanReceivePokemon, GivePokemon, PrepReceivedPokemonMsg, PrepCannotReceivePokemonMsg } // Same as Pokemon, likely unused
};
