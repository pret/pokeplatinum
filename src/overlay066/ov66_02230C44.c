#include "overlay066/ov66_02230C44.h"

#include <nitro.h>
#include <string.h>

#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/struct_ov66_0222DCE0_sub1.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay066/struct_ov66_02230DBC.h"
#include "overlay066/struct_ov66_02230E68.h"
#include "overlay066/struct_ov66_02230F50.h"
#include "overlay066/struct_ov66_02230FA0.h"
#include "overlay066/struct_ov66_02231024.h"
#include "overlay066/struct_ov66_02231134.h"
#include "overlay066/struct_ov66_0223127C.h"
#include "overlay066/struct_ov66_02231300.h"
#include "overlay066/struct_ov66_02231374.h"
#include "overlay067/ov67_0225C700.h"
#include "overlay068/ov68_0225C700.h"
#include "overlay069/ov69_0225C700.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay112/ov112_0225C700.h"
#include "overlay113/ov113_0225C700.h"
#include "overlay115/ov115_02260440.h"
#include "overlay115/struct_ov115_02260440.h"
#include "overlay116/ov116_022604C4.h"
#include "overlay117/ov117_02260440.h"
#include "overlay117/struct_ov117_02260440.h"

#include "game_overlay.h"
#include "heap.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "trainer_info.h"

FS_EXTERN_OVERLAY(overlay67);
FS_EXTERN_OVERLAY(overlay68);
FS_EXTERN_OVERLAY(overlay69);
FS_EXTERN_OVERLAY(overlay70);
FS_EXTERN_OVERLAY(overlay112);
FS_EXTERN_OVERLAY(overlay113);
FS_EXTERN_OVERLAY(overlay114);
FS_EXTERN_OVERLAY(overlay115);
FS_EXTERN_OVERLAY(overlay116);
FS_EXTERN_OVERLAY(overlay117);

typedef struct {
    void *unk_00;
} UnkStruct_ov66_02230E4C;

typedef struct UnkStruct_ov66_02230C90_t {
    OverlayManager *unk_00;
    UnkStruct_ov66_02230E4C unk_04[13];
    u8 unk_38;
    u8 unk_39;
    u16 heapID;
    UnkStruct_ov66_0222DFF8 *unk_3C;
    SaveData *saveData;
    UnkStruct_ov66_0222DCE0_sub1 *unk_44;
} UnkStruct_ov66_02230C90;

static void ov66_02230CEC(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, const OverlayManagerTemplate *param2);
static void ov66_02230D0C(UnkStruct_ov66_02230C90 *param0, u32 param1, u32 heapID);
static void ov66_02230D34(UnkStruct_ov66_02230C90 *param0, u32 param1);
static void ov66_02230D54(UnkStruct_ov66_02230C90 *param0, u32 param1);
static int ov66_02230D7C(UnkStruct_ov66_02230C90 *param0, u32 param1);
static void ov66_02230DA0(UnkStruct_ov66_02230DBC *param0, u32 param1);
static void ov66_02230DBC(UnkStruct_ov66_02230DBC *param0);
static void ov66_02230DD8(UnkStruct_ov66_02230DBC *param0, UnkStruct_ov66_0222DFF8 *param1, u32 param2);
static void ov66_02230E28(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_02230E4C(UnkStruct_ov66_02230E4C *param0);
static void ov66_02230E68(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_02230E90(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02230F1C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_02230F44(UnkStruct_ov66_02230E4C *param0);
static void ov66_02230F50(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_02230F7C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02230FA0(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_02230FE4(UnkStruct_ov66_02230E4C *param0);
static void ov66_02230FF0(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_02231000(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02231024(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_02231058(UnkStruct_ov66_02230E4C *param0);
static void ov66_02231064(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_02231074(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_0223108C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_022310C4(UnkStruct_ov66_02230E4C *param0);
static void ov66_022310D8(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_02231104(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02231134(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_02231164(UnkStruct_ov66_02230E4C *param0);
static void ov66_02231178(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_022311A4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_022311D4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_0223120C(UnkStruct_ov66_02230E4C *param0);
static void ov66_02231220(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_0223124C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_0223127C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_022312A8(UnkStruct_ov66_02230E4C *param0);
static int ov66_022312B4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_022312D8(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_022312EC(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02231300(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_02231338(UnkStruct_ov66_02230E4C *param0);
static int ov66_02231370(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02231344(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_02231350(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static void ov66_0223135C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, BOOL param2);
static void ov66_02231374(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_022313AC(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID);
static void ov66_022313E8(UnkStruct_ov66_02230E4C *param0);
static void ov66_022313F4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);
static int ov66_02231404(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1);

UnkStruct_ov66_02230C90 *ov66_02230C44(BOOL param0, SaveData *saveData, UnkStruct_ov66_0222DCE0_sub1 *param2, UnkStruct_ov66_0222DFF8 *param3, u32 heapID)
{
    UnkStruct_ov66_02230C90 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02230C90));
    memset(v0, 0, sizeof(UnkStruct_ov66_02230C90));

    v0->unk_3C = param3;
    v0->saveData = saveData;
    v0->unk_44 = param2;
    v0->unk_39 = param0;
    v0->heapID = heapID;

    {
        int v1;

        for (v1 = 0; v1 < 13; v1++) {
            ov66_02230D0C(v0, v1, heapID);
        }
    }

    return v0;
}

void ov66_02230C90(UnkStruct_ov66_02230C90 *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 13; v0++) {
            ov66_02230D34(param0, v0);
        }
    }

    Heap_FreeToHeap(param0);
}

void ov66_02230CAC(UnkStruct_ov66_02230C90 *param0)
{
    ov66_02230D54(param0, 5);
}

int ov66_02230CB8(UnkStruct_ov66_02230C90 *param0)
{
    BOOL v0;
    u32 v1 = 0;

    if (param0->unk_00) {
        v0 = OverlayManager_Exec(param0->unk_00);

        if (v0) {
            OverlayManager_Free(param0->unk_00);
            param0->unk_00 = NULL;
            v1 = ov66_02230D7C(param0, param0->unk_38);
        }
    }

    return v1;
}

void ov66_02230CE8(UnkStruct_ov66_02230C90 *param0)
{
    return;
}

static void ov66_02230CEC(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, const OverlayManagerTemplate *param2)
{
    GF_ASSERT(param0->unk_00 == NULL);
    param0->unk_00 = OverlayManager_New(param2, param1->unk_00, param0->heapID);
}

static void ov66_02230D0C(UnkStruct_ov66_02230C90 *param0, u32 param1, u32 heapID)
{
    static void (*v0[])(UnkStruct_ov66_02230C90 *, UnkStruct_ov66_02230E4C *, u32) = {
        ov66_02230E28,
        ov66_02230F1C,
        ov66_02230FA0,
        ov66_0223127C,
        ov66_0223127C,
        ov66_02231024,
        ov66_0223108C,
        ov66_02231134,
        ov66_022311D4,
        ov66_02231300,
        ov66_02231300,
        ov66_02231374,
        ov66_022313AC
    };

    GF_ASSERT(param1 < 13);
    v0[param1](param0, &param0->unk_04[param1], heapID);
}

static void ov66_02230D34(UnkStruct_ov66_02230C90 *param0, u32 param1)
{
    static void (*v0[])(UnkStruct_ov66_02230E4C *) = {
        ov66_02230E4C,
        ov66_02230F44,
        ov66_02230FE4,
        ov66_022312A8,
        ov66_022312A8,
        ov66_02231058,
        ov66_022310C4,
        ov66_02231164,
        ov66_0223120C,
        ov66_02231338,
        ov66_02231338,
        ov66_022313E8,
        ov66_022313E8
    };

    GF_ASSERT(param1 < 13);
    v0[param1](&param0->unk_04[param1]);
}

static void ov66_02230D54(UnkStruct_ov66_02230C90 *param0, u32 param1)
{
    static void (*v0[])(UnkStruct_ov66_02230C90 *, UnkStruct_ov66_02230E4C *) = {
        ov66_02230E68,
        ov66_02230F50,
        ov66_02230FF0,
        ov66_022312D8,
        ov66_022312EC,
        ov66_02231064,
        ov66_022310D8,
        ov66_02231178,
        ov66_02231220,
        ov66_02231344,
        ov66_02231350,
        ov66_022313F4,
        ov66_022313F4
    };

    GF_ASSERT(param1 < 13);
    v0[param1](param0, &param0->unk_04[param1]);

    param0->unk_38 = param1;
}

static int ov66_02230D7C(UnkStruct_ov66_02230C90 *param0, u32 param1)
{
    static int (*v0[])(UnkStruct_ov66_02230C90 *, UnkStruct_ov66_02230E4C *) = {
        ov66_02230E90,
        ov66_02230F7C,
        ov66_02231000,
        ov66_022312B4,
        ov66_022312B4,
        ov66_02231074,
        ov66_02231104,
        ov66_022311A4,
        ov66_0223124C,
        ov66_02231370,
        ov66_02231370,
        ov66_02231404,
        ov66_02231404
    };

    GF_ASSERT(param1 < 13);
    return v0[param1](param0, &param0->unk_04[param1]);
}

static void ov66_02230DA0(UnkStruct_ov66_02230DBC *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_20[v0] = TrainerInfo_New(param1);
    }
}

static void ov66_02230DBC(UnkStruct_ov66_02230DBC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Heap_FreeToHeap(param0->unk_20[v0]);
        param0->unk_20[v0] = NULL;
    }
}

static void ov66_02230DD8(UnkStruct_ov66_02230DBC *param0, UnkStruct_ov66_0222DFF8 *param1, u32 param2)
{
    const UnkStruct_ov66_0222E71C *v0;
    const UnkStruct_ov66_0222E71C *v1;
    int v2;

    v0 = ov66_0222E3BC(param1);
    param0->unk_00 = ov66_0222E8C4(v0);

    ov66_0222E934(param1, &param0->unk_08);
    ov66_0222E294(param1, &param0->unk_04);

    param0->unk_30 = param1;
    param0->unk_1C = 0;

    for (v2 = 0; v2 < 4; v2++) {
        v1 = ov66_0222E374(param1, param0->unk_04.unk_00[v2]);

        if (v1 != NULL) {
            ov66_0222E640(v1, param0->unk_20[v2], param2);
        }
    }
}

static void ov66_02230E28(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02230E68 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02230E68));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02230E68));

    v0 = param1->unk_00;
    v0->saveData = param0->saveData;
    v0->unk_1C = param0->unk_3C;
}

static void ov66_02230E4C(UnkStruct_ov66_02230E4C *param0)
{
    GF_ASSERT(param0->unk_00);
    Heap_FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;
}

static void ov66_02230E68(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    UnkStruct_ov66_02230E68 *v0;

    FS_EXTERN_OVERLAY(overlay70);

    static const OverlayManagerTemplate v1 = {
        ov70_0225D9A4, ov70_0225DB90, ov70_0225DDF8, FS_OVERLAY_ID(overlay70)
    };

    v0 = param1->unk_00;
    v0->unk_04 = ov66_0222EB28(param0->unk_3C);
    v0->unk_08 = ov66_0222EB38(param0->unk_3C);

    ov66_02230CEC(param0, param1, &v1);
}

static int ov66_02230E90(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    UnkStruct_ov66_02230E68 *v0 = param1->unk_00;

    switch (v0->unk_18) {
    case 0:
        ov66_02230D54(param0, 9);
        break;
    case 1:
        ov66_02230D54(param0, 1);
        break;
    case 2:
        ov66_02230D54(param0, 2);
        break;
    case 6:
        ov66_02230D54(param0, 3);
        break;
    case 7:
        ov66_02230D54(param0, 4);
        break;
    case 3:
        ov66_02230D54(param0, 6);
        break;
    case 4:
        ov66_02230D54(param0, 7);
        break;
    case 5:
        ov66_02230D54(param0, 8);
        break;
    case 8:
        ov66_02230D54(param0, 10);
        break;
    case 9:
        ov66_02230D54(param0, 11);
        break;
    case 10:
        ov66_02230D54(param0, 12);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov66_02230F1C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02230F50 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02230F50));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02230F50));

    v0 = param1->unk_00;

    v0->saveData = param0->saveData;
    v0->unk_0C = param0->unk_3C;
}

static void ov66_02230F44(UnkStruct_ov66_02230E4C *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_02230F50(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    UnkStruct_ov66_02230F50 *v0;

    FS_EXTERN_OVERLAY(overlay69);

    static const OverlayManagerTemplate v1 = {
        ov69_0225C700, ov69_0225C820, ov69_0225C8FC, FS_OVERLAY_ID(overlay69)
    };

    v0 = param1->unk_00;

    v0->unk_00 = ov66_0222E010(param0->unk_3C);
    v0->unk_08 = *(ov66_0222E028(param0->unk_3C));

    ov66_02230CEC(param0, param1, &v1);
}

static int ov66_02230F7C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    if (ov66_0222E138(param0->unk_3C)) {
        ov66_02230D54(param0, 10);
    } else {
        ov66_02230D54(param0, 0);
    }

    return 0;
}

static void ov66_02230FA0(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02230FA0 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02230FA0));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02230FA0));

    v0 = param1->unk_00;

    v0->unk_00 = ov66_0222E00C(param0->unk_3C);
    v0->unk_04 = ov66_0222E028(param0->unk_3C);
    v0->unk_08 = param0->unk_3C;
}

static void ov66_02230FE4(UnkStruct_ov66_02230E4C *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_02230FF0(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay112);

    static const OverlayManagerTemplate v0 = {
        ov112_0225C700, ov112_0225C7C4, ov112_0225C8FC, FS_OVERLAY_ID(overlay112)
    };

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_02231000(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    if (ov66_0222E138(param0->unk_3C)) {
        ov66_02230D54(param0, 10);
    } else {
        ov66_02230D54(param0, 0);
    }

    return 0;
}

static void ov66_02231024(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02231024 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02231024));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02231024));

    v0 = param1->unk_00;

    v0->saveData = param0->saveData;
    v0->unk_04 = param0->unk_3C;
    v0->unk_08 = param0->unk_39;
    v0->unk_0C = param0->unk_44;
}

static void ov66_02231058(UnkStruct_ov66_02230E4C *param0)
{
    UnkStruct_ov66_02231024 *v0 = param0->unk_00;
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_02231064(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay67);

    static const OverlayManagerTemplate v0 = {
        ov67_0225C700, ov67_0225C820, ov67_0225CB1C, FS_OVERLAY_ID(overlay67)
    };

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_02231074(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    UnkStruct_ov66_02231024 *v0 = param1->unk_00;

    if (v0->unk_10 == 0) {
        return 1;
    }

    ov66_02230D54(param0, 0);
    return 0;
}

static void ov66_0223108C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov115_02260440 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov115_02260440));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov115_02260440));

    v0 = param1->unk_00;

    v0->unk_38 = 0;
    v0->unk_39 = 1;
    v0->saveData = param0->saveData;

    ov66_02230DA0(&v0->unk_00, heapID);
}

static void ov66_022310C4(UnkStruct_ov66_02230E4C *param0)
{
    UnkStruct_ov115_02260440 *v0 = param0->unk_00;

    ov66_02230DBC(&v0->unk_00);
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_022310D8(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay115);
    FS_EXTERN_OVERLAY(overlay114);

    static const OverlayManagerTemplate v0 = {
        ov115_02260440,
        ov115_0226048C,
        ov115_022608E4,
        FS_OVERLAY_ID(overlay115),
    };

    Overlay_LoadByID(FS_OVERLAY_ID(overlay114), 2);

    {
        UnkStruct_ov115_02260440 *v1;

        v1 = param1->unk_00;
        ov66_02230DD8(&v1->unk_00, param0->unk_3C, param0->heapID);
    }

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_02231104(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay114);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay114));

    {
        UnkStruct_ov115_02260440 *v0;

        v0 = param1->unk_00;

        ov66_0222E22C(param0->unk_3C, v0->unk_00.unk_1C);
        ov66_0222E528(param0->unk_3C, v0->unk_00.unk_00);
    }

    ov66_02230D54(param0, 0);

    return 0;
}

static void ov66_02231134(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02231134 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02231134));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02231134));

    v0 = param1->unk_00;

    v0->unk_3C = 0;
    v0->unk_38 = 1;
    v0->saveData = param0->saveData;

    ov66_02230DA0(&v0->unk_00, heapID);
}

static void ov66_02231164(UnkStruct_ov66_02230E4C *param0)
{
    UnkStruct_ov66_02231134 *v0 = param0->unk_00;

    ov66_02230DBC(&v0->unk_00);
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_02231178(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay116);
    FS_EXTERN_OVERLAY(overlay114);

    static const OverlayManagerTemplate v0 = {
        ov116_022609B4,
        ov116_02260CF4,
        ov116_0226126C,
        FS_OVERLAY_ID(overlay116),
    };

    Overlay_LoadByID(FS_OVERLAY_ID(overlay114), 2);

    {
        UnkStruct_ov66_02231134 *v1;

        v1 = param1->unk_00;
        ov66_02230DD8(&v1->unk_00, param0->unk_3C, param0->heapID);
    }

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_022311A4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay114);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay114));

    {
        UnkStruct_ov66_02231134 *v0;

        v0 = param1->unk_00;

        ov66_0222E22C(param0->unk_3C, v0->unk_00.unk_1C);
        ov66_0222E528(param0->unk_3C, v0->unk_00.unk_00);
    }

    ov66_02230D54(param0, 0);

    return 0;
}

static void ov66_022311D4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov117_02260440 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov117_02260440));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov117_02260440));

    v0 = param1->unk_00;
    v0->unk_38 = 0;
    v0->unk_39 = 1;
    v0->saveData = param0->saveData;

    ov66_02230DA0(&v0->unk_00, heapID);
}

static void ov66_0223120C(UnkStruct_ov66_02230E4C *param0)
{
    UnkStruct_ov117_02260440 *v0 = param0->unk_00;

    ov66_02230DBC(&v0->unk_00);
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_02231220(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay117);
    FS_EXTERN_OVERLAY(overlay114);

    static const OverlayManagerTemplate v0 = {
        ov117_02260440,
        ov117_02260474,
        ov117_022605C0,
        FS_OVERLAY_ID(overlay117),
    };

    Overlay_LoadByID(FS_OVERLAY_ID(overlay114), 2);

    {
        UnkStruct_ov117_02260440 *v1;

        v1 = param1->unk_00;
        ov66_02230DD8(&v1->unk_00, param0->unk_3C, param0->heapID);
    }

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_0223124C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay114);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay114));

    {
        UnkStruct_ov117_02260440 *v0;

        v0 = param1->unk_00;

        ov66_0222E22C(param0->unk_3C, v0->unk_00.unk_1C);
        ov66_0222E528(param0->unk_3C, v0->unk_00.unk_00);
    }

    ov66_02230D54(param0, 0);

    return 0;
}

static void ov66_0223127C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_0223127C *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_0223127C));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_0223127C));

    v0 = param1->unk_00;
    v0->unk_00 = param0->unk_3C;
}

static void ov66_022312A8(UnkStruct_ov66_02230E4C *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static int ov66_022312B4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    if (ov66_0222E138(param0->unk_3C)) {
        ov66_02230D54(param0, 10);
    } else {
        ov66_02230D54(param0, 0);
    }

    return 0;
}

static void ov66_022312D8(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    UnkStruct_ov66_0223127C *v0;

    FS_EXTERN_OVERLAY(overlay113);

    static const OverlayManagerTemplate v1 = {
        ov113_0225C700,
        ov113_0225CA04,
        ov113_0225CDFC,
        FS_OVERLAY_ID(overlay113),
    };

    v0 = param1->unk_00;
    v0->unk_04 = 0;

    ov66_02230CEC(param0, param1, &v1);
}

static void ov66_022312EC(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    UnkStruct_ov66_0223127C *v0;

    FS_EXTERN_OVERLAY(overlay113);

    static const OverlayManagerTemplate v1 = {
        ov113_0225C700,
        ov113_0225CA04,
        ov113_0225CDFC,
        FS_OVERLAY_ID(overlay113),
    };

    v0 = param1->unk_00;
    v0->unk_04 = 1;

    ov66_02230CEC(param0, param1, &v1);
}

static void ov66_02231300(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02231300 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02231300));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02231300));

    v0 = param1->unk_00;
    v0->saveData = param0->saveData;
    v0->unk_04 = param0->unk_3C;
}

static void ov66_02231338(UnkStruct_ov66_02230E4C *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_02231344(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    ov66_0223135C(param0, param1, 0);
}

static void ov66_02231350(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    ov66_0223135C(param0, param1, 1);
}

static void ov66_0223135C(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, BOOL param2)
{
    FS_EXTERN_OVERLAY(overlay67);

    static const OverlayManagerTemplate v0 = {
        ov67_0225CB8C, ov67_0225CC6C, ov67_0225CDC0, FS_OVERLAY_ID(overlay67)
    };

    {
        UnkStruct_ov66_02231300 *v1;

        v1 = param1->unk_00;
        v1->unk_08 = param2;
    }

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_02231370(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    return 1;
}

static void ov66_02231374(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02231374 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02231374));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02231374));

    v0 = param1->unk_00;
    v0->saveData = param0->saveData;
    v0->unk_04 = param0->unk_3C;
    v0->unk_08 = 0;
}

static void ov66_022313AC(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1, u32 heapID)
{
    UnkStruct_ov66_02231374 *v0;

    param1->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov66_02231374));
    memset(param1->unk_00, 0, sizeof(UnkStruct_ov66_02231374));

    v0 = param1->unk_00;
    v0->saveData = param0->saveData;
    v0->unk_04 = param0->unk_3C;
    v0->unk_08 = 1;
}

static void ov66_022313E8(UnkStruct_ov66_02230E4C *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_022313F4(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    FS_EXTERN_OVERLAY(overlay68);

    static const OverlayManagerTemplate v0 = {
        ov68_0225C700, ov68_0225C798, ov68_0225C8A8, FS_OVERLAY_ID(overlay68)
    };

    ov66_02230CEC(param0, param1, &v0);
}

static int ov66_02231404(UnkStruct_ov66_02230C90 *param0, UnkStruct_ov66_02230E4C *param1)
{
    if (ov66_0222E138(param0->unk_3C)) {
        ov66_02230D54(param0, 10);
    } else {
        ov66_02230D54(param0, 0);
    }

    return 0;
}
