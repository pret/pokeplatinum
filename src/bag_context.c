#include "bag_context.h"

#include <string.h>

#include "generated/items.h"
#include "generated/string_padding_mode.h"
#include "generated/text_banks.h"

#include "struct_defs/image_clips.h"
#include "struct_defs/seal_case.h"

#include "bag.h"
#include "coins.h"
#include "heap.h"
#include "message.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
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

BagContext *BagContext_New(u8 heapID)
{
    BagContext *bagContext = Heap_Alloc(heapID, sizeof(BagContext));
    memset(bagContext, 0, sizeof(BagContext));
    return bagContext;
}

u32 BagContext_GetSize(void)
{
    return sizeof(BagContext);
}

void BagContext_SetMode(BagContext *bagContext, u8 mode)
{
    bagContext->mode = mode;
}

void BagContext_Init(BagContext *bagContext, SaveData *saveData, u8 mode, BagCursor *bagCursor)
{
    BagContext_SetMode(bagContext, mode);
    bagContext->saveData = saveData;
    bagContext->bagCursor = bagCursor;
    bagContext->selectedItem = ITEM_NONE;
}

void BagContext_InitPocket(BagContext *bagContext, BagItem *items, u8 pocketType, u8 pocketIdx)
{
    bagContext->accessiblePockets[pocketIdx].items = items;
    bagContext->accessiblePockets[pocketIdx].pocketType = pocketType;
}

void BagContext_SetIsCycling(BagContext *bagContext)
{
    bagContext->isCycling = TRUE;
}

void BagContext_SetItemUseContext(BagContext *bagContext, ItemUseContext *itemUseCtx)
{
    bagContext->itemUseCtx = itemUseCtx;
}

void BagContext_SetSelectedMonSlot(BagContext *bagContext, u8 slot)
{
    bagContext->selectedMonSlot = slot;
}

void BagContext_SetMapLoadType(BagContext *bagContext, u16 mapLoadType)
{
    bagContext->mapLoadType = mapLoadType;
}

u16 BagContext_GetItem(BagContext *bagContext)
{
    return bagContext->selectedItem;
}

u16 BagContext_GetExitCode(BagContext *bagContext)
{
    return bagContext->exitCode;
}

u8 BagContext_GetSelectedMonSlot(BagContext *bagContext)
{
    return bagContext->selectedMonSlot;
}

u8 BagContext_GetSoldAmount(BagContext *bagContext)
{
    return bagContext->soldAmount;
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
        total += SealCase_CountSealOccurrenceAnywhere(sealCase, i);
    }

    return total;
}

static u32 GetNumAccessories(SaveData *saveData)
{
    ImageClips *imageClips = SaveData_GetImageClips(saveData);
    FashionCase *fashionCase = ImageClips_GetFashionCase(imageClips);
    return FashionCase_GetTotalAccessories(fashionCase);
}

static u32 GetNumBackdrops(SaveData *saveData)
{
    ImageClips *imageClips = SaveData_GetImageClips(saveData);
    FashionCase *fashionCase = ImageClips_GetFashionCase(imageClips);
    return FashionCase_GetTotalBackdrops(fashionCase);
}

static u32 GetNumBattlePoints(SaveData *saveData)
{
    return sub_0202D230(sub_0202D750(saveData), 0, 0);
}

BOOL BagContext_FormatUsageMessage(SaveData *saveData, String *dstString, u16 item, enum HeapID heapID)
{
    MessageLoader *msgLoader;
    StringTemplate *template;
    String *templateString;

    msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
    template = StringTemplate_Default(heapID);

    if (item == ITEM_NONE) {
        templateString = MessageLoader_GetNewString(msgLoader, Bag_Text_KeyItemInfo);
    } else if (item == ITEM_POINT_CARD) {
        templateString = MessageLoader_GetNewString(msgLoader, Bag_Text_PointCardMessage);
        StringTemplate_SetNumber(template, 0, GetNumBattlePoints(saveData), 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else if (item == ITEM_SEAL_CASE) {
        templateString = MessageLoader_GetNewString(msgLoader, Bag_Text_SealCaseMessage);
        StringTemplate_SetNumber(template, 0, CalcTotalBallSeals(saveData), 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else if (item == ITEM_FASHION_CASE) {
        templateString = MessageLoader_GetNewString(msgLoader, Bag_Text_FashionCaseMessage);
        StringTemplate_SetNumber(template, 0, GetNumAccessories(saveData), 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, GetNumBackdrops(saveData), 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else if (item == ITEM_COIN_CASE) {
        templateString = MessageLoader_GetNewString(msgLoader, Bag_Text_CoinCaseMessage);
        StringTemplate_SetNumber(template, 0, GetNumCoins(saveData), 5, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else {
        StringTemplate_Free(template);
        MessageLoader_Free(msgLoader);
        return FALSE;
    }

    StringTemplate_Format(template, dstString, templateString);
    String_Free(templateString);
    StringTemplate_Free(template);
    MessageLoader_Free(msgLoader);
    return TRUE;
}

void BagContext_FormatErrorMessage(TrainerInfo *playerInfo, String *dstString, u16 unused, enum ItemUseCheckResult error, enum HeapID heapID)
{
    MessageLoader *msgLoader;
    StringTemplate *template;
    String *templateString;

    switch (error) {
    case ITEM_USE_CANNOT_DISMOUNT:
        msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
        MessageLoader_GetString(msgLoader, Bag_Text_CannotDismount, dstString);
        MessageLoader_Free(msgLoader);
        break;

    case ITEM_USE_CANNOT_USE_WITH_PARTNER:
        msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
        MessageLoader_GetString(msgLoader, Bag_Text_CannotUseWithPartner, dstString);
        MessageLoader_Free(msgLoader);
        break;

    case ITEM_USE_CANNOT_FISH_HERE:
        msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, heapID);
        MessageLoader_GetString(msgLoader, Bag_Text_CannotUseNoFishing, dstString);
        MessageLoader_Free(msgLoader);
        break;

    default:
        msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, heapID);
        template = StringTemplate_Default(heapID);
        templateString = MessageLoader_GetNewString(msgLoader, CommonStrings_Text_CantDoThatRightNow);
        StringTemplate_SetPlayerName(template, 0, playerInfo);
        StringTemplate_Format(template, dstString, templateString);
        String_Free(templateString);
        StringTemplate_Free(template);
        MessageLoader_Free(msgLoader);
        break;
    }
}
