#ifndef POKEPLATINUM_BAG_SYSTEM_H
#define POKEPLATINUM_BAG_SYSTEM_H

#include "overlay084/struct_ov84_0223BE5C.h"

#include "bag.h"
#include "savedata.h"
#include "strbuf.h"
#include "trainer_info.h"

typedef struct BagSystem {
    SaveData *saveData;
    BagInterfacePocketInfo accessiblePockets[8];
    u8 currPocketIdx;
    u8 mode;
    u16 selectedItem;
    u16 exitCode;
    u8 padding_6A[2];
    BagCursor *bagCursor;
    void *unk_70;
    u8 selectedMonSlot;
    u8 unk_75;
    u16 isCycling : 1;
    u16 mapLoadType : 15;
} BagSystem;

BagSystem *BagSystem_New(u8 heapID);
u32 BagSystem_GetSize(void);
void BagSystem_SetMode(BagSystem *bagSystem, u8 mode);
void BagSystem_Init(BagSystem *bagSystem, SaveData *saveData, u8 mode, BagCursor *bagCursor);
void BagSystem_InitPocket(BagSystem *bagSystem, BagItem *items, u8 pocketType, u8 pocketIdx);
void BagSystem_SetIsCycling(BagSystem *bagSystem);
void sub_0207CB6C(BagSystem *bagSystem, void *param1);
void BagSystem_SetSelectedMonSlot(BagSystem *bagSystem, u8 slot);
void BagSystem_SetMapLoadType(BagSystem *bagSystem, u16 mapLoadType);
u16 BagSystem_GetItem(BagSystem *bagSystem);
u16 BagSystem_GetExitCode(BagSystem *bagSystem);
u8 BagSystem_GetSelectedMonSlot(BagSystem *bagSystem);
u8 sub_0207CBAC(BagSystem *bagSystem);
BOOL BagSystem_FormatUsageMessage(SaveData *saveData, Strbuf *dstString, u16 item, u32 heapID);
void BagSystem_FormatErrorMessage(TrainerInfo *playerInfo, Strbuf *dstString, u16 unused, u32 error, u32 heapID);

#endif // POKEPLATINUM_BAG_SYSTEM_H
