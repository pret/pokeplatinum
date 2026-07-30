#include "item.h"

#include <nitro.h>

#include "constants/items.h"

#include "bag.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "string_gf.h"

#include "res/items/item_berry_list.h"
#include "res/items/item_icon.naix"
#include "res/items/item_id_map.h"
#include "res/items/item_mail_list.h"
#include "res/items/item_tm_move_map.h"

static s32 ItemPartyParam_Get(ItemPartyParam *partyParam, enum ItemDataParam attributeID);

void Item_MoveInPocket(void *pocket, u16 srcSlot, u16 dstSlot)
{
    if (srcSlot == dstSlot) {
        return;
    }

    BagItem *items = (BagItem *)pocket;
    BagItem item = items[srcSlot];
    s16 i; // must be here to match
    if (dstSlot > srcSlot) {
        // Moving the item down in the pocket list
        dstSlot -= 1;

        // Bubble all the other items upward
        for (i = (s16)srcSlot; i < (s16)dstSlot; i++) {
            items[i] = items[i + 1];
        }
    } else {
        // Moving the item up in the pocket list
        // Sift all the other items downward
        for (i = (s16)srcSlot; i > (s16)dstSlot; i--) {
            items[i] = items[i - 1];
        }
    }

    items[dstSlot] = item;
}

u16 Item_FileID(u16 item, enum ItemFileType type)
{
    switch (type) {
    case ITEM_FILE_TYPE_DATA:
        if (item == ITEM_NONE || item == ITEM_RETURN_ID) {
            break;
        }

        return sItemArchiveIDs[item].dataID;
    case ITEM_FILE_TYPE_ICON:
        if (item == ITEM_NONE) {
            return none_NCGR;
        }

        if (item == ITEM_RETURN_ID) {
            return unused_709_NCGR;
        }

        return sItemArchiveIDs[item].iconID;
    case ITEM_FILE_TYPE_PALETTE:
        if (item == ITEM_NONE) {
            return none_NCLR;
        }

        if (item == ITEM_RETURN_ID) {
            return unused_710_NCLR;
        }

        return sItemArchiveIDs[item].paletteID;
    case ITEM_FILE_TYPE_GBA:
        if (item == ITEM_NONE || item == ITEM_RETURN_ID) {
            break;
        }

        return sItemArchiveIDs[item].gen3ID;
    }

    return 0;
}

u16 Item_FromGBAID(u16 gbaID)
{
    for (u16 i = ITEM_NONE + 1; i <= NUM_ITEMS; i++) {
        if (gbaID == sItemArchiveIDs[i].gen3ID) {
            return i;
        }
    }

    return ITEM_NONE;
}

u16 Item_IconNCERFile(void)
{
    return generic_cell_NCER;
}

u16 Item_IconNANRFile(void)
{
    return generic_anim_NANR;
}

void *Item_Load(u16 item, enum ItemFileType type, enum HeapID heapID)
{
    if (item > NUM_ITEMS) {
        item = ITEM_NONE;
    }

    switch (type) {
    case ITEM_FILE_TYPE_DATA:
        return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__PL_ITEM_DATA, sItemArchiveIDs[item].dataID, heapID);
    case ITEM_FILE_TYPE_ICON:
        return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, sItemArchiveIDs[item].iconID, heapID);
    case ITEM_FILE_TYPE_PALETTE:
        return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, sItemArchiveIDs[item].paletteID, heapID);
    default:
        return NULL;
    }
}

void Item_LoadName(String *dst, u16 item, enum HeapID heapID)
{
    MessageLoader *msgData = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, heapID);

    MessageLoader_GetString(msgData, item, dst);
    MessageLoader_Free(msgData);
}

void Item_LoadDescription(String *dst, u16 item, u16 heapID)
{
    MessageLoader *msgData = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_DESCRIPTIONS, heapID);

    MessageLoader_GetString(msgData, item, dst);
    MessageLoader_Free(msgData);
}

s32 Item_LoadParam(u16 item, enum ItemDataParam param, enum HeapID heapID)
{
    ItemData *itemData = (ItemData *)Item_Load(item, 0, heapID);
    s32 val = Item_Get(itemData, param);
    Heap_FreeExplicit(heapID, itemData);

    return val;
}

s32 Item_Get(ItemData *itemData, enum ItemDataParam param)
{
    switch (param) {
    case ITEM_PARAM_PRICE:
        return (s32)itemData->price;
    case ITEM_PARAM_HOLD_EFFECT:
        return (s32)itemData->holdEffect;
    case ITEM_PARAM_EFFECT_PARAM:
        return (s32)itemData->effectParam;
    case ITEM_PARAM_PREVENT_TOSS:
        return (s32)itemData->preventToss;
    case ITEM_PARAM_CAN_REGISTER:
        return (s32)itemData->canRegister;
    case ITEM_PARAM_FIELD_POCKET:
        return (s32)itemData->fieldPocket;
    case ITEM_PARAM_FIELD_USE_FUNC:
        return (s32)itemData->fieldUseFunc;
    case ITEM_PARAM_BATTLE_USE_FUNC:
        return (s32)itemData->battleUseFunc;
    case ITEM_PARAM_PLUCK_EFFECT:
        return (s32)itemData->pluckEffect;
    case ITEM_PARAM_FLING_EFFECT:
        return (s32)itemData->flingEffect;
    case ITEM_PARAM_FLING_POWER:
        return (s32)itemData->flingPower;
    case ITEM_PARAM_NATURAL_GIFT_POWER:
        return (s32)itemData->naturalGiftPower;
    case ITEM_PARAM_NATURAL_GIFT_TYPE:
        return (s32)itemData->naturalGiftType;
    case ITEM_PARAM_BATTLE_POCKET:
        return (s32)itemData->battlePocket;
    case ITEM_PARAM_PARTY_USE:
        return (s32)itemData->partyUse;
    default:
        // Must use a switch-case to match; any non-BOOL input on itemData->partyUse will implicitly fall-through
        // to return 0 below.
        switch (itemData->partyUse) {
        case FALSE:
            return itemData->dummy;
        case TRUE:
            return ItemPartyParam_Get(&itemData->partyUseParam, param);
        }
    }

    return 0;
}

static s32 ItemPartyParam_Get(ItemPartyParam *partyParam, enum ItemDataParam attributeID)
{
    switch (attributeID) {
    case ITEM_PARAM_HEAL_SLEEP:
        return (s32)partyParam->healSleep;
    case ITEM_PARAM_HEAL_POISON:
        return (s32)partyParam->healPoison;
    case ITEM_PARAM_HEAL_BURN:
        return (s32)partyParam->healBurn;
    case ITEM_PARAM_HEAL_FREEZE:
        return (s32)partyParam->healFreeze;
    case ITEM_PARAM_HEAL_PARALYSIS:
        return (s32)partyParam->healParalysis;
    case ITEM_PARAM_HEAL_CONFUSION:
        return (s32)partyParam->healConfusion;
    case ITEM_PARAM_HEAL_ATTRACT:
        return (s32)partyParam->healAttract;
    case ITEM_PARAM_GUARD_SPEC:
        return (s32)partyParam->guardSpec;
    case ITEM_PARAM_REVIVE:
        return (s32)partyParam->revive;
    case ITEM_PARAM_REVIVE_ALL:
        return (s32)partyParam->reviveAll;
    case ITEM_PARAM_LEVEL_UP:
        return (s32)partyParam->levelUp;
    case ITEM_PARAM_EVOLVE:
        return (s32)partyParam->evolve;
    case ITEM_PARAM_ATK_STAGES:
        return (s32)partyParam->atkStages;
    case ITEM_PARAM_DEF_STAGES:
        return (s32)partyParam->defStages;
    case ITEM_PARAM_SPATK_STAGES:
        return (s32)partyParam->spatkStages;
    case ITEM_PARAM_SPDEF_STAGES:
        return (s32)partyParam->spdefStages;
    case ITEM_PARAM_SPEED_STAGES:
        return (s32)partyParam->speedStages;
    case ITEM_PARAM_ACC_STAGES:
        return (s32)partyParam->accStages;
    case ITEM_PARAM_CRIT_STAGES:
        return (s32)partyParam->critStages;
    case ITEM_PARAM_PP_UP:
        return (s32)partyParam->ppUp;
    case ITEM_PARAM_PP_MAX:
        return (s32)partyParam->ppMax;
    case ITEM_PARAM_PP_RESTORE:
        return (s32)partyParam->ppRestore;
    case ITEM_PARAM_PP_RESTORE_ALL:
        return (s32)partyParam->ppRestoreAll;
    case ITEM_PARAM_HP_RESTORE:
        return (s32)partyParam->hpRestore;
    case ITEM_PARAM_GIVE_HP_EVS:
        return (s32)partyParam->giveHPEVs;
    case ITEM_PARAM_GIVE_ATK_EVS:
        return (s32)partyParam->giveAtkEVs;
    case ITEM_PARAM_GIVE_DEF_EVS:
        return (s32)partyParam->giveDefEVs;
    case ITEM_PARAM_GIVE_SPEED_EVS:
        return (s32)partyParam->giveSpeedEVs;
    case ITEM_PARAM_GIVE_SPATK_EVS:
        return (s32)partyParam->giveSpAtkEVs;
    case ITEM_PARAM_GIVE_SPDEF_EVS:
        return (s32)partyParam->giveSpDefEVs;
    case ITEM_PARAM_GIVE_FRIENDSHIP_LOW:
        return (s32)partyParam->giveFriendshipLow;
    case ITEM_PARAM_GIVE_FRIENDSHIP_MED:
        return (s32)partyParam->giveFriendshipMed;
    case ITEM_PARAM_GIVE_FRIENDSHIP_HIGH:
        return (s32)partyParam->giveFriendshipHigh;
    case ITEM_PARAM_HP_EVS:
        return (s32)partyParam->hpEVs;
    case ITEM_PARAM_ATK_EVS:
        return (s32)partyParam->atkEVs;
    case ITEM_PARAM_DEF_EVS:
        return (s32)partyParam->defEVs;
    case ITEM_PARAM_SPEED_EVS:
        return (s32)partyParam->speedEVs;
    case ITEM_PARAM_SPATK_EVS:
        return (s32)partyParam->spatkEVs;
    case ITEM_PARAM_SPDEF_EVS:
        return (s32)partyParam->spdefEVs;
    case ITEM_PARAM_HP_RESTORED:
        return (s32)partyParam->hpRestored;
    case ITEM_PARAM_PP_RESTORED:
        return (s32)partyParam->ppRestored;
    case ITEM_PARAM_FRIENDSHIP_LOW:
        return (s32)partyParam->friendshipLow;
    case ITEM_PARAM_FRIENDSHIP_MED:
        return (s32)partyParam->friendshipMed;
    case ITEM_PARAM_FRIENDSHIP_HIGH:
        return (s32)partyParam->friendshipHigh;
    default:
        return 0;
    }
}

u16 Item_MoveForTMHM(u16 item)
{
    if (item < ITEM_TM01 || item > ITEM_HM08) {
        return MOVE_NONE;
    }

    item -= ITEM_TM01;
    return sTMHMMoves[item];
}

u8 Item_IsHMMove(u16 move)
{
    for (u8 i = 0; i < NUM_HMS; i++) {
        if (sTMHMMoves[NUM_TMS + i] == move) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 Item_TMHMNumber(u16 item)
{
    if (item < ITEM_TM01 || item > ITEM_HM08) {
        return ITEM_NONE;
    }

    return item - ITEM_TM01;
}

u8 Item_IsMail(u16 item)
{
    for (u32 i = 0; i < NUM_MAIL_TYPES; i++) {
        if (sMailItemIDs[i] == item) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 Item_GetMailType(u16 item)
{
    for (u32 i = 0; i < NUM_MAIL_TYPES; i++) {
        if (sMailItemIDs[i] == item) {
            return i;
        }
    }

    return ITEM_NONE;
}

u16 Item_ForMailType(u8 mailType)
{
    if (mailType >= NUM_MAIL_TYPES) {
        return ITEM_NONE;
    }

    return sMailItemIDs[mailType];
}

u8 Item_IsBerry(u16 item)
{
    for (u32 i = 0; i < NUM_BERRIES; i++) {
        if (sBerryItemIDs[i] == item) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 Item_BerryNumber(u16 item)
{
    if (item < ITEM_CHERI_BERRY) {
        return BERRY_ID_NONE;
    }

    return item - ITEM_CHERI_BERRY;
}

u16 Item_ForBerryNumber(u8 berry)
{
    if (berry >= NUM_BERRIES) {
        return ITEM_RETURN_ID;
    }

    return sBerryItemIDs[berry];
}

u8 Item_IsHerbalMedicine(u16 item)
{
    return item == ITEM_ENERGYPOWDER
        || item == ITEM_ENERGY_ROOT
        || item == ITEM_HEAL_POWDER
        || item == ITEM_REVIVAL_HERB;
}

void *ItemTable_Load(enum HeapID heapID)
{
    int maxItem = Item_FileID(NUM_ITEMS, ITEM_FILE_TYPE_DATA);
    return NARC_AllocAndReadFromMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__PL_ITEM_DATA, 0, heapID, 0, sizeof(ItemData) * maxItem);
}

ItemData *ItemTable_Index(ItemData *itemTable, u16 index)
{
    return (ItemData *)((u8 *)itemTable + index * sizeof(ItemData));
}
