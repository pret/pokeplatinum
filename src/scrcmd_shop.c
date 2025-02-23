#include "scrcmd_shop.h"

#include <nitro.h>
#include <string.h>

#include "generated/badges.h"

#include "data/mart_items.h"
#include "overlay007/shop_menu.h"

#include "field_script_context.h"
#include "inlines.h"
#include "save_player.h"
#include "trainer_info.h"
#include "unk_0203D1B8.h"

BOOL ScrCmd_PokeMartCommon(ScriptContext *ctx)
{
    u16 shopItems[64];
    u8 requiredBadges, badgeNum, i, j;
    u16 unused = ScriptContext_GetVar(ctx);

    i = 0;
    badgeNum = 0;
    requiredBadges = 0;

    for (j = 0; j < MAX_BADGES; j++) {
        if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(ctx->fieldSystem->saveData), j) == TRUE) {
            badgeNum++;
        }
    }

    switch (badgeNum) {
    case 0:
        requiredBadges = 1;
        break;
    case 1:
    case 2:
        requiredBadges = 2;
        break;
    case 3:
    case 4:
        requiredBadges = 3;
        break;
    case 5:
    case 6:
        requiredBadges = 4;
        break;
    case 7:
        requiredBadges = 5;
        break;
    case 8:
        requiredBadges = 6;
        break;
    default:
        requiredBadges = 1;
        break;
    }

    for (j = 0; j < (NELEMS(PokeMartCommonItems)); j++) {
        if (requiredBadges >= PokeMartCommonItems[j].requiredBadges) {
            shopItems[i] = PokeMartCommonItems[j].itemID;
            i++;
        }
    }

    shopItems[i] = ITEM_RETURN_ID;

    Shop_Start(ctx->task, ctx->fieldSystem, shopItems, MART_TYPE_NORMAL, FALSE);
    return TRUE;
}

BOOL ScrCmd_PokeMartSpecialties(ScriptContext *ctx)
{
    u16 martID = ScriptContext_GetVar(ctx);
    BOOL incBuyCount;

    if ((martID == 8) || (martID == 9) || (martID == 10) || (martID == 11) || (martID == 12) || (martID == 13) || (martID == 19)) {
        incBuyCount = TRUE;
    } else {
        incBuyCount = FALSE;
    }

    Shop_Start(ctx->task, ctx->fieldSystem, (u16 *)PokeMartSpecialties[martID], MART_TYPE_NORMAL, incBuyCount);
    return TRUE;
}

// Veilstone
BOOL ScrCmd_PokeMartDecor(ScriptContext *ctx)
{
    u16 martID = ScriptContext_GetVar(ctx);
    BOOL incBuyCount;

    if ((martID == 0) || (martID == 1)) {
        incBuyCount = TRUE;
    } else {
        // never reached as the only two instances of
        // this command only sets martID to 0 and 1
        // respectively.
        incBuyCount = FALSE;
    }

    Shop_Start(ctx->task, ctx->fieldSystem, (u16 *)VeilstoneDeptStoreDecorationStocks[martID], MART_TYPE_DECOR, incBuyCount);
    return TRUE;
}

// Sunyshore
BOOL ScrCmd_PokeMartSeal(ScriptContext *ctx)
{
    u16 martID = ScriptContext_GetVar(ctx);

    Shop_Start(ctx->task, ctx->fieldSystem, (u16 *)SunyshoreMarketDailyStocks[martID], MART_TYPE_SEAL, FALSE);
    return TRUE;
}

// does NOT use shop_menu, but it is a shop of sort
BOOL ScrCmd_257(ScriptContext *param0)
{
    sub_0203E518(param0->fieldSystem->task);
    return TRUE;
}
