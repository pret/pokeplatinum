#ifndef POKEPLATINUM_BAG_CONTEXT_H
#define POKEPLATINUM_BAG_CONTEXT_H

#include "bag.h"
#include "item_use_functions.h"
#include "savedata.h"
#include "strbuf.h"
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
    u8 mode;
    u16 selectedItem;
    u16 exitCode;
    u8 padding_6A[2];
    BagCursor *bagCursor;
    ItemUseContext *itemUseCtx;
    u8 selectedMonSlot;
    u8 soldAmount; // Not the exact amount of items sold. 0: nothing sold, 1: one item sold, >=2: two or more items sold.
    u16 isCycling : 1;
    u16 mapLoadType : 15;
} BagContext;

BagContext *BagContext_New(u8 heapID);
u32 BagContext_GetSize(void);
void BagContext_SetMode(BagContext *bagContext, u8 mode);
void BagContext_Init(BagContext *bagContext, SaveData *saveData, u8 mode, BagCursor *bagCursor);
void BagContext_InitPocket(BagContext *bagContext, BagItem *items, u8 pocketType, u8 pocketIdx);
void BagContext_SetIsCycling(BagContext *bagContext);
void BagContext_SetItemUseContext(BagContext *bagContext, ItemUseContext *itemUseCtx);
void BagContext_SetSelectedMonSlot(BagContext *bagContext, u8 slot);
void BagContext_SetMapLoadType(BagContext *bagContext, u16 mapLoadType);
u16 BagContext_GetItem(BagContext *bagContext);
u16 BagContext_GetExitCode(BagContext *bagContext);
u8 BagContext_GetSelectedMonSlot(BagContext *bagContext);
u8 BagContext_GetSoldAmount(BagContext *bagContext);
BOOL BagContext_FormatUsageMessage(SaveData *saveData, Strbuf *dstString, u16 item, u32 heapID);
void BagContext_FormatErrorMessage(TrainerInfo *playerInfo, Strbuf *dstString, u16 unused, u32 error, u32 heapID);

#endif // POKEPLATINUM_BAG_CONTEXT_H
