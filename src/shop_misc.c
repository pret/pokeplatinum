#include "shop_misc.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay007/shop_menu.h"

#include "field_task.h"
#include "heap.h"
#include "unk_0207CB08.h"

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

    shopMenu->itemSoldCount = sub_0207CBAC(shopMenu->unk_04);

    Heap_FreeToHeap(shopMenu->unk_04);
    FieldSystem_StartFieldMap(fieldSystem);

    return SHOP_STATE_REINIT_SHOP;
}

static void ShopMisc_ReinitShop(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ShopMenu *shopMenu = FieldTask_GetEnv(task);

    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        ov5_021D1744(1);
        FieldTask_InitJump(task, FieldTask_InitShop, shopMenu);
        shopMenu->state = SHOP_STATE_REINIT_MERCHANT_MESSAGE;
    }
}
