#include "unk_0209AC14.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay007/shop_menu.h"

#include "field_task.h"
#include "heap.h"
#include "unk_0207CB08.h"

static u8 sub_0209AC50(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void sub_0209AC80(FieldTask *task);

BOOL sub_0209AC14(FieldTask *task)
{
    FieldSystem *fieldSystem;
    ShopMenu *shopMenu;

    fieldSystem = FieldTask_GetFieldSystem(task);
    shopMenu = FieldTask_GetEnv(task);

    switch (shopMenu->state) {
    case SHOP_STATE_16:
        shopMenu->state = sub_0209AC50(fieldSystem, shopMenu);
        break;
    case SHOP_STATE_17:
        sub_0209AC80(task);
        break;
    }

    return 0;
}

static u8 sub_0209AC50(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return SHOP_STATE_16;
    }

    shopMenu->itemSoldCount = sub_0207CBAC(shopMenu->unk_04);

    Heap_FreeToHeap(shopMenu->unk_04);
    FieldSystem_StartFieldMap(fieldSystem);

    return SHOP_STATE_17;
}

static void sub_0209AC80(FieldTask *task)
{
    FieldSystem *fieldSystem;
    ShopMenu *shopMenu;

    fieldSystem = FieldTask_GetFieldSystem(task);
    shopMenu = FieldTask_GetEnv(task);

    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        ov5_021D1744(1);
        FieldTask_InitJump(task, FieldTask_InitShop, shopMenu);
        shopMenu->state = SHOP_STATE_RESHOW_MERCHANT_MESSAGE;
    }
}
