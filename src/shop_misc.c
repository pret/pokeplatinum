#include "shop_misc.h"

#include "generated/fade_types.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay007/shop_menu.h"

#include "bag_context.h"
#include "field_task.h"
#include "heap.h"

static u8 ShopMisc_FreeUnk04AndReinitFieldMap(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void ShopMisc_ReinitShop(FieldTask *task);

BOOL FieldTask_ShopMisc(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ShopMenu *shopMenu = FieldTask_GetEnv(task);

    switch (shopMenu->state) {
    case SHOP_STATE_REINIT_FIELD_MAP:
        shopMenu->state = ShopMisc_FreeUnk04AndReinitFieldMap(fieldSystem, shopMenu);
        break;
    case SHOP_STATE_REINIT_SHOP:
        ShopMisc_ReinitShop(task);
        break;
    }

    return FALSE;
}

static u8 ShopMisc_FreeUnk04AndReinitFieldMap(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return SHOP_STATE_REINIT_FIELD_MAP;
    }

    shopMenu->itemSoldCount = BagContext_GetSoldAmount(shopMenu->unk_04);

    Heap_Free(shopMenu->unk_04);
    FieldSystem_StartFieldMap(fieldSystem);

    return SHOP_STATE_REINIT_SHOP;
}

static void ShopMisc_ReinitShop(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ShopMenu *shopMenu = FieldTask_GetEnv(task);

    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
        FieldTask_InitJump(task, FieldTask_InitShop, shopMenu);
        shopMenu->state = SHOP_STATE_REINIT_MERCHANT_MESSAGE;
    }
}
