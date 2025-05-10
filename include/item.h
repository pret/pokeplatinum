#ifndef POKEPLATINUM_ITEM_DATA_H
#define POKEPLATINUM_ITEM_DATA_H

#include "constants/heap.h"

#include "strbuf.h"

typedef struct ItemPartyParam {
    u8 healSleep : 1;
    u8 healPoison : 1;
    u8 healBurn : 1;
    u8 healFreeze : 1;
    u8 healParalysis : 1;
    u8 healConfusion : 1;
    u8 healAttract : 1;
    u8 guardSpec : 1;
    u8 revive : 1;
    u8 reviveAll : 1;
    u8 levelUp : 1;
    u8 evolve : 1;
    u8 atkStages : 4;
    u8 defStages : 4;
    u8 spatkStages : 4;
    u8 spdefStages : 4;
    u8 speedStages : 4;
    u8 accStages : 4;
    u8 critStages : 2;
    u8 ppUp : 1;
    u8 ppMax : 1;
    u8 ppRestore : 1;
    u8 ppRestoreAll : 1;
    u8 hpRestore : 1;
    u8 giveHPEVs : 1;
    u8 giveAtkEVs : 1;
    u8 giveDefEVs : 1;
    u8 giveSpeedEVs : 1;
    u8 giveSpAtkEVs : 1;
    u8 giveSpDefEVs : 1;
    u8 giveFriendshipLow : 1;
    u8 giveFriendshipMed : 1;
    u8 giveFriendshipHigh : 1;
    s8 hpEVs;
    s8 atkEVs;
    s8 defEVs;
    s8 speedEVs;
    s8 spatkEVs;
    s8 spdefEVs;
    u8 hpRestored;
    u8 ppRestored;
    s8 friendshipLow;
    s8 friendshipMed;
    s8 friendshipHigh;
    u8 padding[2];
} ItemPartyParam;

typedef struct ItemData {
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    u8 pluckEffect;
    u8 flingEffect;
    u8 flingPower;
    u8 naturalGiftPower;
    u16 naturalGiftType : 5;
    u16 preventToss : 1;
    u16 isSelectable : 1;
    u16 fieldPocket : 4;
    u16 battlePocket : 5;
    u8 fieldUseFunc;
    u8 battleUseFunc;
    u8 partyUse;
    u8 padding_0D;
    union {
        u8 dummy;
        ItemPartyParam partyUseParam;
    };
    u8 padding[2];
} ItemData;

enum ItemFileType {
    ITEM_FILE_TYPE_DATA,
    ITEM_FILE_TYPE_ICON,
    ITEM_FILE_TYPE_PALETTE,
    ITEM_FILE_TYPE_GBA,
};

enum ItemDataParam {
    ITEM_PARAM_PRICE,
    ITEM_PARAM_HOLD_EFFECT,
    ITEM_PARAM_HOLD_EFFECT_PARAM,
    ITEM_PARAM_PREVENT_TOSS,
    ITEM_PARAM_IS_SELECTABLE,
    ITEM_PARAM_FIELD_POCKET,
    ITEM_PARAM_FIELD_USE_FUNC,
    ITEM_PARAM_BATTLE_USE_FUNC,
    ITEM_PARAM_PLUCK_EFFECT,
    ITEM_PARAM_FLING_EFFECT,
    ITEM_PARAM_FLING_POWER,
    ITEM_PARAM_NATURAL_GIFT_POWER,
    ITEM_PARAM_NATURAL_GIFT_TYPE,
    ITEM_PARAM_BATTLE_POCKET,
    ITEM_PARAM_PARTY_USE,
    ITEM_PARAM_HEAL_SLEEP,
    ITEM_PARAM_HEAL_POISON,
    ITEM_PARAM_HEAL_BURN,
    ITEM_PARAM_HEAL_FREEZE,
    ITEM_PARAM_HEAL_PARALYSIS,
    ITEM_PARAM_HEAL_CONFUSION,
    ITEM_PARAM_HEAL_ATTRACT,
    ITEM_PARAM_GUARD_SPEC,
    ITEM_PARAM_REVIVE,
    ITEM_PARAM_REVIVE_ALL,
    ITEM_PARAM_LEVEL_UP,
    ITEM_PARAM_EVOLVE,
    ITEM_PARAM_ATK_STAGES,
    ITEM_PARAM_DEF_STAGES,
    ITEM_PARAM_SPATK_STAGES,
    ITEM_PARAM_SPDEF_STAGES,
    ITEM_PARAM_SPEED_STAGES,
    ITEM_PARAM_ACC_STAGES,
    ITEM_PARAM_CRIT_STAGES,
    ITEM_PARAM_PP_UP,
    ITEM_PARAM_PP_MAX,
    ITEM_PARAM_PP_RESTORE,
    ITEM_PARAM_PP_RESTORE_ALL,
    ITEM_PARAM_HP_RESTORE,
    ITEM_PARAM_GIVE_HP_EVS,
    ITEM_PARAM_GIVE_ATK_EVS,
    ITEM_PARAM_GIVE_DEF_EVS,
    ITEM_PARAM_GIVE_SPEED_EVS,
    ITEM_PARAM_GIVE_SPATK_EVS,
    ITEM_PARAM_GIVE_SPDEF_EVS,
    ITEM_PARAM_GIVE_FRIENDSHIP_LOW,
    ITEM_PARAM_GIVE_FRIENDSHIP_MED,
    ITEM_PARAM_GIVE_FRIENDSHIP_HIGH,
    ITEM_PARAM_HP_EVS,
    ITEM_PARAM_ATK_EVS,
    ITEM_PARAM_DEF_EVS,
    ITEM_PARAM_SPEED_EVS,
    ITEM_PARAM_SPATK_EVS,
    ITEM_PARAM_SPDEF_EVS,
    ITEM_PARAM_HP_RESTORED,
    ITEM_PARAM_PP_RESTORED,
    ITEM_PARAM_FRIENDSHIP_LOW,
    ITEM_PARAM_FRIENDSHIP_MED,
    ITEM_PARAM_FRIENDSHIP_HIGH,
};

/**
 * @brief Move the item in the corresponding pocket from one slot to another.
 *
 * All other items in the pocket will be moved up or down within the pocket,
 * depending on whether the target slot is above or below the current slot.
 *
 * @param pocket    The pocket of items in the bag.
 * @param srcSlot   The slot of the item to be moved.
 * @param dstSlot   The slot to which the item will be moved.
 */
void Item_MoveInPocket(void *pocket, u16 srcSlot, u16 dstSlot);

/**
 * @brief Get an ID of the specified type for an item.
 *
 * Each type points to a different value for the item's entry in sItemArchiveIDs.
 *
 * @param item
 * @param type      The type of ID to get.
 * @return The item's ID of the specified type.
 */
u16 Item_FileID(u16 item, enum ItemFileType type);

/**
 * @brief Get the ID of an item which matches the given GBA-era item ID.
 *
 * @param gbaID     GBA-era item ID.
 * @return ID of the item which corresponds to the given GBA-era ID.
 */
u16 Item_FromGBAID(u16 gbaID);

/**
 * @brief Get the file index of the global NCER file used by all item icons.
 *
 * @return File index of the global item icon NCER.
 */
u16 Item_IconNCERFile(void);

/**
 * @brief Get the file index of the global NANR file used by all item icons.
 *
 * @return File index of the global item icon NANR.
 */
u16 Item_IconNANRFile(void);

/**
 * @brief Load item data of the specified type.
 *
 * @param item      The item to load.
 * @param type      The type of data to load. Determines which NARC is loaded.
 * @param heapID    ID of the heap to own the allocated memory.
 * @return The loaded data structure.
 */
void *Item_Load(u16 item, enum ItemFileType type, u32 heapID);

/**
 * @brief Load the name of the item into a string buffer.
 *
 * @param dst       The destination string buffer.
 * @param item      The item whose name we should load.
 * @param heapID    ID of the heap to own memory needed for the text archive.
 */
void Item_LoadName(Strbuf *dst, u16 item, u32 heapID);

/**
 * @brief Load the description of the item into a string buffer.
 *
 * @param dst       The destination string buffer.
 * @param item      The item whose description we should load.
 * @param heapID    ID of the heap to own memory needed for the text archive.
 */
void Item_LoadDescription(Strbuf *dst, u16 item, u16 heapID);

/**
 * @brief Load a parameter for a given item from the data archive.
 *
 * @param item      The item to load.
 * @param param     The param to load from the item.
 * @param heapID    The heap on which to load the item data.
 * @return Parameter value from the loaded item.
 */
s32 Item_LoadParam(u16 item, enum ItemDataParam param, u32 heapID);

/**
 * @brief Get a param value from a loaded item.
 *
 * @param itemData  The loaded item.
 * @param param     The param value to get.
 * @return Parameter value from the loaded item.
 */
s32 Item_Get(ItemData *itemData, enum ItemDataParam param);

/**
 * @brief Get the move corresponding to a TM or HM.
 *
 * Returns MOVE_NONE if the input item is not a TM or HM.
 *
 * @param item      The TM or HM item ID.
 * @return The move stored in the given TM or HM.
 */
const u16 Item_MoveForTMHM(u16 item);

/**
 * @brief Check if a given move is an HM move.
 *
 * @param move      The move to check.
 * @return TRUE if the move is assignable via an HM. FALSE otherwise.
 */
u8 Item_IsHMMove(u16 move);

/**
 * @brief Get the TM number for a given item, if it is a TM or HM.
 *
 * HMs are considered to be TMs 93 - 100.
 *
 * @param item
 * @return TM number for the given item, or ITEM_NONE if it is not a TM or HM.
 */
u8 Item_TMHMNumber(u16 item);

/**
 * @brief Check if a given item is mail.
 *
 * @param item
 * @return TRUE if the item is mail, FALSE otherwise.
 */
u8 Item_IsMail(u16 item);

/**
 * @brief Get the mail number for a given item.
 *
 * @param item
 * @return The mail number for the item, or ITEM_NONE if the item is not mail.
 */
u8 Item_MailNumber(u16 item);

/**
 * @brief Get the item for a given mail number.
 *
 * @param mail
 * @return The item for the mail number, or ITEM_NONE if none exists.
 */
u16 Item_ForMailNumber(u8 mail);

/**
 * @brief Check if a given item is a berry.
 *
 * @param item
 * @return TRUE if the item is a berry, FALSE otherwise.
 */
u8 Item_IsBerry(u16 item);

/**
 * @brief Get the berry number for a given item.
 *
 * @param item
 * @return The berry number for the item, or ITEM_NONE if the item is not a berry.
 */
u8 Item_BerryNumber(u16 item);

/**
 * @brief Get the item for a given berry number.
 *
 * @param berry
 * @return The item for the berry number, or ITEM_RETURN_ID if none exists.
 */
u16 Item_ForBerryNumber(u8 item);

/**
 * @brief Check if a given item is herbal medicine.
 *
 * @param item
 * @return TRUE if the item is herbal medicine, FALSE otherwise.
 */
u8 Item_IsHerbalMedicine(u16 item);

/**
 * @brief Load the full table of item data into the heap.
 *
 * @param heapID    The heap which will own the item table's allocation.
 * @return The full table of item data.
 */
void *ItemTable_Load(enum HeapId heapID);

/**
 * @brief Get the ItemData value at a given index from within a loaded table.
 *
 * @param itemTable The loaded item table.
 * @param index     Index of the ItemData to be retrieved.
 * @return ItemData at a given index within the loaded item table.
 */
ItemData *ItemTable_Index(ItemData *itemTable, u16 index);

#endif // POKEPLATINUM_ITEM_DATA_H
