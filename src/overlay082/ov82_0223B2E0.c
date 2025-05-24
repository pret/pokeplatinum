#include "overlay082/ov82_0223B2E0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0207CB08_decl.h"

#include "overlay082/ov82_0223B140.h"
#include "overlay083/struct_ov83_0223C344.h"
#include "overlay084/const_ov84_02241130.h"
#include "overlay084/ov84_0223B5A0.h"
#include "overlay085/ov85_02241440.h"

#include "bag.h"
#include "heap.h"
#include "item.h"
#include "overlay_manager.h"
#include "unk_0207CB08.h"
#include "unk_020972FC.h"

FS_EXTERN_OVERLAY(overlay83);
FS_EXTERN_OVERLAY(overlay84);
FS_EXTERN_OVERLAY(overlay85);

static int ov82_0223B380(UnkStruct_ov83_0223C344 *param0);
static int ov82_0223B3DC(UnkStruct_ov83_0223C344 *param0);
static int ov82_0223B470(UnkStruct_ov83_0223C344 *param0);
static int ov82_0223B510(UnkStruct_ov83_0223C344 *param0);
int ov83_0223B5B0(OverlayManager *overlayMan, int *param1);
int ov83_0223B65C(OverlayManager *overlayMan, int *param1);
int ov83_0223B710(OverlayManager *overlayMan, int *param1);

int ov82_0223B2E0(UnkStruct_ov83_0223C344 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        *param1 = ov82_0223B380(param0);
        break;
    case 1:
        *param1 = ov82_0223B3DC(param0);
        break;
    case 2:
        *param1 = ov82_0223B470(param0);
        break;
    case 3:
        *param1 = ov82_0223B510(param0);
        break;
    case 4:
        return 1;
    case 5:
        return 4;
    }

    return 0;
}

int ov82_0223B330(UnkStruct_ov83_0223C344 *param0, int *param1)
{
    FS_EXTERN_OVERLAY(overlay83);

    const OverlayManagerTemplate v0 = {
        ov83_0223B5B0,
        ov83_0223B65C,
        ov83_0223B710,
        FS_OVERLAY_ID(overlay83)
    };

    param0->overlayMan = OverlayManager_New(&v0, param0, param0->heapID);
    return 2;
}

int ov82_0223B35C(UnkStruct_ov83_0223C344 *param0, int *param1)
{
    if (ov82_0223B140(&param0->overlayMan) == 0) {
        return 2;
    }

    if (param0->unk_20 == 1) {
        return 0;
    } else {
        return 3;
    }
}

int ov82_0223B37C(UnkStruct_ov83_0223C344 *param0, int *param1)
{
    return 4;
}

static int ov82_0223B380(UnkStruct_ov83_0223C344 *param0)
{
    void *v0;
    u32 v1;

    FS_EXTERN_OVERLAY(overlay84);

    const OverlayManagerTemplate Unk_ov84_02241130 = {
        ov84_0223B5A0, ov84_0223B76C, ov84_0223B900, FS_OVERLAY_ID(overlay84)
    };
    static const u8 v3[] = {
        4, 0xff
    };

    v0 = sub_0207D824(param0->unk_10->bag, v3, param0->heapID);

    if (param0->unk_06_0 == 1) {
        v1 = 5;
    } else {
        v1 = 4;
    }

    sub_0207CB2C(v0, param0->unk_10->saveData, v1, param0->unk_0C);

    param0->overlayMan = OverlayManager_New(&Unk_ov84_02241130, v0, param0->heapID);
    param0->unk_18 = v0;

    return 1;
}

static int ov82_0223B3DC(UnkStruct_ov83_0223C344 *param0)
{
    UnkStruct_0207CB08 *v0 = NULL;
    BOOL v1;

    if (!ov82_0223B140(&param0->overlayMan)) {
        return 1;
    }

    v0 = sub_0207CB08(param0->heapID);
    memcpy(v0, param0->unk_18, sub_0207CB20());
    Heap_FreeToHeap(param0->unk_18);

    param0->unk_18 = NULL;
    param0->unk_08 = sub_0207CB94(v0);

    Heap_FreeToHeap(v0);

    switch (sub_0207CB9C(v0)) {
    case 1:
        return 2;
    case 0:
    case 2:
    case 4:
    case 3:
        break;
    case 5:
        return 5;
    default:
        GF_ASSERT(0);
        param0->unk_08 = 149;
        break;
    }

    v1 = Bag_TryRemoveItem(param0->unk_10->bag, param0->unk_08, 1, param0->heapID);
    GF_ASSERT(v1);

    return 4;
}

static int ov82_0223B470(UnkStruct_ov83_0223C344 *param0)
{
    u8 i;
    u8 v1, v2, v3, item;
    Bag *bag = param0->unk_10->bag;

    FS_EXTERN_OVERLAY(overlay85);

    const OverlayManagerTemplate v6 = {
        ov85_02241440, ov85_0224154C, ov85_022415A0, FS_OVERLAY_ID(overlay85)
    };

    param0->unk_18 = sub_020972FC(param0->heapID);
    sub_02097320(param0->unk_18, param0->unk_08, 1);

    v3 = 0;

    for (i = 0; i < NUM_BERRIES; i++) {
        item = Item_ForBerryNumber(i);

        if (Bag_CanRemoveItem(bag, item, 1, param0->heapID) == TRUE) {
            sub_02097320(param0->unk_18, item, 0);
            v3++;
        }
    }

    BagCursor_GetFieldPocketPosition(param0->unk_0C, 4, &v2, &v1);
    sub_0209733C(param0->unk_18, v1, v2, v3 + 2);

    param0->overlayMan = OverlayManager_New(&v6, param0->unk_18, param0->heapID);
    return 3;
}

static int ov82_0223B510(UnkStruct_ov83_0223C344 *param0)
{
    u8 v0, v1;

    if (!ov82_0223B140(&param0->overlayMan)) {
        return 3;
    }

    sub_02097390(param0->unk_18, &v0, &v1);
    BagCursor_SetFieldPocketPosition(param0->unk_0C, 4, v1, v0);

    Heap_FreeToHeap(param0->unk_18);
    param0->unk_18 = NULL;

    return 0;
}
