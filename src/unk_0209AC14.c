#include "unk_0209AC14.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay007/ov7_0224CD28.h"
#include "overlay007/struct_ov7_0224D008.h"

#include "field_task.h"
#include "heap.h"
#include "unk_0207CB08.h"

static u8 sub_0209AC50(FieldSystem *fieldSystem, ShopMenu *param1);
static void sub_0209AC80(FieldTask *param0);

BOOL sub_0209AC14(FieldTask *param0)
{
    FieldSystem *fieldSystem;
    ShopMenu *shopMenu;

    fieldSystem = FieldTask_GetFieldSystem(param0);
    shopMenu = FieldTask_GetEnv(param0);

    switch (shopMenu->state) {
    case 16:
        shopMenu->state = sub_0209AC50(fieldSystem, shopMenu);
        break;
    case 17:
        sub_0209AC80(param0);
        break;
    }

    return 0;
}

static u8 sub_0209AC50(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 16;
    }

    shopMenu->itemSoldCount = sub_0207CBAC(shopMenu->unk_04);

    Heap_FreeToHeap(shopMenu->unk_04);
    FieldSystem_StartFieldMap(fieldSystem);

    return 17;
}

static void sub_0209AC80(FieldTask *param0)
{
    FieldSystem *fieldSystem;
    ShopMenu *shopMenu;

    fieldSystem = FieldTask_GetFieldSystem(param0);
    shopMenu = FieldTask_GetEnv(param0);

    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        ov5_021D1744(1);
        FieldTask_InitJump(param0, ov7_0224CEAC, shopMenu);
        shopMenu->state = 18;
    }
}
