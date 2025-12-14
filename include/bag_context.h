#ifndef POKEPLATINUM_BAG_CONTEXT_H
#define POKEPLATINUM_BAG_CONTEXT_H

#include "bag.h"
#include "item_use_functions.h"
#include "savedata.h"
#include "string_gf.h"
#include "trainer_info.h"

typedef struct BagApplicationPocket {
    BagItem *items;
    u16 cursorPos;
    u16 cursorScroll;
    u8 pocketType;
    u8 listEntryCount;
    u8 padding_0A[2];
} BagApplicationPocket;

typedef struct BagContext {
    SaveData *saveData;
    BagApplicationPocket accessiblePockets[POCKET_MAX];
    u8 currPocketIdx;
    u8 mode; //!< a member of `enum BagApplicationMode`
    u16 selectedItem;
    u16 exitCode; //!< a member of `enum BagApplicationExitCode`
    u8 padding_6A[2];
    BagCursor *bagCursor;
    ItemUseContext *itemUseCtx;
    u8 selectedMonSlot;
    u8 soldAmount; // Not the exact amount of items sold. 0: nothing sold, 1: one item sold, >=2: two or more items sold.
    u16 isCycling : 1;
    u16 mapLoadType : 15;
} BagContext;

/**
 * @brief Creates a zeroed-out BagContext allocated on the given heap.
 *
 * @param heapID
 * @return A new BagContext struct
 */
BagContext *BagContext_New(u8 heapID);

/**
 * @brief Returns the size in bytes of a BagContext struct.
 *
 * @return Size in bytes of a BagContext struct
 */
u32 BagContext_GetSize(void);

/**
 * @brief Sets the bag mode for a given BagContext.
 *
 * @param bagContext
 * @param mode A member of `enum BagApplicationMode`
 */
void BagContext_SetMode(BagContext *bagContext, u8 mode);

/**
 * @brief Initializes a BagContext.
 *
 * @param bagContext
 * @param saveData The SaveData to be used by the bag application
 * @param mode A member of `enum BagApplicationMode`
 * @param bagCursor A BagCursor to restore the cursor position from in the bag application
 */
void BagContext_Init(BagContext *bagContext, SaveData *saveData, u8 mode, BagCursor *bagCursor);

/**
 * @brief Initializes a pocket with a given type a the given index in the bag
 *        context's pockets list.
 *
 * @param bagContext
 * @param items A pointer to the pocket's `BagItem`s
 * @param pocketType The type of the pocket
 * @param pocketIndex At which position to place the pocket within the BagContext's pockets list.
 */
void BagContext_InitPocket(BagContext *bagContext, BagItem *items, u8 pocketType, u8 pocketIdx);

/**
 * @brief Sets the BagContext's isCycling flag.
 *
 * @param bagContext
 */
void BagContext_SetIsCycling(BagContext *bagContext);

/**
 * @brief Sets the ItemUseContext to be used by the bag application to determine
 *        whether an item can be used.
 *
 * @param bagContext
 * @param itemUseCtx
 */
void BagContext_SetItemUseContext(BagContext *bagContext, ItemUseContext *itemUseCtx);

/**
 * @brief Sets the selected party slot an item should be used on.
 *
 * @param bagContext
 * @param slot
 */
void BagContext_SetSelectedMonSlot(BagContext *bagContext, u8 slot);

/**
 * @brief Sets the map load type to use when exiting the bag application.
 *
 * @param bagContext
 * @param mapLoadType A member of `enum MapLoadType`
 */
void BagContext_SetMapLoadType(BagContext *bagContext, u16 mapLoadType);

/**
 * @brief Retrieves the item that was used from the bag application.
 *
 * @param bagContext
 * @return The ID of the item that was used
 */
u16 BagContext_GetItem(BagContext *bagContext);

/**
 * @brief Retrieves the bag application's exit code.
 *
 * @param bagContext
 * @return The exit code. Member of `enum BagApplicationExitCode`
 */
u16 BagContext_GetExitCode(BagContext *bagContext);

/**
 * @brief Retrieves the selected party slot to use an item on.
 *
 * @param bagContext
 * @return The party slot
 */
u8 BagContext_GetSelectedMonSlot(BagContext *bagContext);

/**
 * @brief Return the amount of items that were sold from the bag application.
 *
 * @param bagContext
 * @return 0 if no item was sold, 1 if a single item was sold,
 *         some other value if 2 or more items were sold.
 */
u8 BagContext_GetSoldAmount(BagContext *bagContext);

/**
 * @brief Loads the message to show after using certain items.
 *
 * @param saveData
 * @param[out] dstString The String to which the message will be loaded
 * @param item The item being used.
 * @param heapID
 * @return Whether a string was loaded into dstString.
 */
BOOL BagContext_FormatUsageMessage(SaveData *saveData, String *dstString, u16 item, u32 heapID);

/**
 * @brief Loads the message describing the reason an item couldn't be used.
 *
 * @param playerInfo
 * @param dstString The String to which the message will be loaded
 * @param unused
 * @param error The reason the item couldn't be used. Member of `enum ItemUseCheckResult`
 * @param heapID
 */
void BagContext_FormatErrorMessage(TrainerInfo *playerInfo, String *dstString, u16 unused, enum ItemUseCheckResult error, u32 heapID);

#endif // POKEPLATINUM_BAG_CONTEXT_H
