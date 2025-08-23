#include "bag_system.h"

#include <string.h>

#include "generated/items.h"
#include "generated/string_padding_mode.h"
#include "generated/text_banks.h"

#include "struct_decls/struct_02029D04_decl.h"
#include "struct_defs/seal_case.h"

#include "bag.h"
#include "coins.h"
#include "heap.h"
#include "message.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_020298BC.h"
#include "unk_0202C9F4.h"
#include "unk_0202D05C.h"

#include "res/text/bank/bag.h"
#include "res/text/bank/common_strings.h"

static u32 GetNumCoins(SaveData *saveData);
static u32 CalcTotalBallSeals(SaveData *saveData);
static u32 GetNumAccessories(SaveData *saveData);
static u32 GetNumBackdrops(SaveData *saveData);
static u32 GetNumBattlePoints(SaveData *saveData);

BagSystem *BagSystem_New(u8 heapID)
{
    BagSystem *bagSystem = Heap_AllocFromHeap(heapID, sizeof(BagSystem));
    memset(bagSystem, 0, sizeof(BagSystem));
    return bagSystem;
}

u32 BagSystem_GetSize(void)
{
    return sizeof(BagSystem);
}

void BagSystem_SetMode(BagSystem *bagSystem, u8 mode)
{
    bagSystem->mode = mode;
}

void BagSystem_Init(BagSystem *bagSystem, SaveData *saveData, u8 mode, BagCursor *bagCursor)
{
    BagSystem_SetMode(bagSystem, mode);
    bagSystem->saveData = saveData;
    bagSystem->bagCursor = bagCursor;
    bagSystem->selectedItem = ITEM_NONE;
}

void BagSystem_InitPocket(BagSystem *bagSystem, BagItem *items, u8 pocketType, u8 pocketIdx)
{
    bagSystem->accessiblePockets[pocketIdx].items = items;
    bagSystem->accessiblePockets[pocketIdx].pocketType = pocketType;
}

void BagSystem_SetIsCycling(BagSystem *bagSystem)
{
    bagSystem->isCycling = TRUE;
}

void sub_0207CB6C(BagSystem *bagSystem, void *param1)
{
    bagSystem->unk_70 = param1;
}

void BagSystem_SetSelectedMonSlot(BagSystem *bagSystem, u8 slot)
{
    bagSystem->selectedMonSlot = slot;
}

void BagSystem_SetMapLoadType(BagSystem *bagSystem, u16 mapLoadType)
{
    bagSystem->mapLoadType = mapLoadType;
}

u16 BagSystem_GetItem(BagSystem *bagSystem)
{
    return bagSystem->selectedItem;
}

u16 BagSystem_GetExitCode(BagSystem *bagSystem)
{
    return bagSystem->exitCode;
}

u8 BagSystem_GetSelectedMonSlot(BagSystem *bagSystem)
{
    return bagSystem->selectedMonSlot;
}

u8 sub_0207CBAC(BagSystem *bagSystem)
{
    return bagSystem->unk_75;
}

static u32 GetNumCoins(SaveData *saveData)
{
    return Coins_GetValue(SaveData_GetCoins(saveData));
}

static u32 CalcTotalBallSeals(SaveData *saveData)
{
    u32 i; // out-lined declaration required to match
    SealCase *sealCase = SaveData_GetSealCase(saveData);

    u32 total = 0;
    for (i = 1; i <= 80; i++) {
        total += sub_0202CBC8(sealCase, i);
    }

    return total;
}

static u32 GetNumAccessories(SaveData *saveData)
{
    UnkStruct_02029D04 *v0 = sub_02029D04(sub_0202A750(saveData));
    return sub_02029DF0(v0);
}

static u32 GetNumBackdrops(SaveData *saveData)
{
    UnkStruct_02029D04 *v0 = sub_02029D04(sub_0202A750(saveData));
    return sub_02029E0C(v0);
}

static u32 GetNumBattlePoints(SaveData *saveData)
{
    return sub_0202D230(sub_0202D750(saveData), 0, 0);
}

BOOL BagSystem_FormatUsageMessage(SaveData *saveData, Strbuf *dstString, u16 item, u32 heapID)
{
    MessageLoader *msgLoader;
    StringTemplate *template;
    Strbuf *templateString;

    msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
    template = StringTemplate_Default(heapID);

    if (item == ITEM_NONE) {
        templateString = MessageLoader_GetNewStrbuf(msgLoader, Bag_Text_KeyItemInfo);
    } else if (item == ITEM_POINT_CARD) {
        templateString = MessageLoader_GetNewStrbuf(msgLoader, Bag_Text_PointCardMessage);
        StringTemplate_SetNumber(template, 0, GetNumBattlePoints(saveData), 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else if (item == ITEM_SEAL_CASE) {
        templateString = MessageLoader_GetNewStrbuf(msgLoader, Bag_Text_SealCaseMessage);
        StringTemplate_SetNumber(template, 0, CalcTotalBallSeals(saveData), 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else if (item == ITEM_FASHION_CASE) {
        templateString = MessageLoader_GetNewStrbuf(msgLoader, Bag_Text_FashionCaseMessage);
        StringTemplate_SetNumber(template, 0, GetNumAccessories(saveData), 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, GetNumBackdrops(saveData), 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else if (item == ITEM_COIN_CASE) {
        templateString = MessageLoader_GetNewStrbuf(msgLoader, Bag_Text_CoinCaseMessage);
        StringTemplate_SetNumber(template, 0, GetNumCoins(saveData), 5, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else {
        StringTemplate_Free(template);
        MessageLoader_Free(msgLoader);
        return FALSE;
    }

    StringTemplate_Format(template, dstString, templateString);
    Strbuf_Free(templateString);
    StringTemplate_Free(template);
    MessageLoader_Free(msgLoader);
    return TRUE;
}

void BagSystem_FormatErrorMessage(TrainerInfo *playerInfo, Strbuf *dstString, u16 unused, u32 error, u32 heapID)
{
    MessageLoader *msgLoader;
    StringTemplate *template;
    Strbuf *templateString;

    switch (error) {
    case 1:
        msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
        MessageLoader_GetStrbuf(msgLoader, Bag_Text_CannotDismount, dstString);
        MessageLoader_Free(msgLoader);
        break;

    case 2:
        msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
        MessageLoader_GetStrbuf(msgLoader, Bag_Text_CannotUseWithPartner, dstString);
        MessageLoader_Free(msgLoader);
        break;

    case 3:
        msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
        MessageLoader_GetStrbuf(msgLoader, Bag_Text_CannotUseNoFishing, dstString);
        MessageLoader_Free(msgLoader);
        break;

    default:
        msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, heapID);
        template = StringTemplate_Default(heapID);
        templateString = MessageLoader_GetNewStrbuf(msgLoader, CommonStrings_Text_CantDoThatRightNow);
        StringTemplate_SetPlayerName(template, 0, playerInfo);
        StringTemplate_Format(template, dstString, templateString);
        Strbuf_Free(templateString);
        StringTemplate_Free(template);
        MessageLoader_Free(msgLoader);
        break;
    }
}
