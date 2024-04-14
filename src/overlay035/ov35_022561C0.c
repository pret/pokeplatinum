#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/poketch_system.h"
#include "overlay025/poketch_button.h"
#include "overlay035/struct_ov35_02256410_decl.h"

#include "touch_screen.h"
#include "overlay035/struct_ov35_02256410_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02099D44.h"
#include "overlay035/ov35_02256410.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u32 unk_04;
    UnkStruct_ov35_02256410_1 unk_08;
    UnkStruct_ov35_02256410 * unk_10;
    PoketchSystem * unk_14;
    PoketchButtonManager * unk_18;
    u32 unk_1C;
} UnkStruct_ov35_0225621C;

static void NitroStaticInit(void);

static BOOL ov35_022561D4(void ** param0, PoketchSystem * param1, BGL * param2, u32 param3);
static BOOL ov35_0225621C(UnkStruct_ov35_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3);
static void ov35_02256284(u32 param0, u32 param1, u32 param2, void * param3);
static void ov35_0225628C(UnkStruct_ov35_0225621C * param0);
static void ov35_022562B0(SysTask * param0, void * param1);
static void ov35_022562EC(void * param0);
static void ov35_022562F4(UnkStruct_ov35_0225621C * param0, u32 param1);
static BOOL ov35_02256308(UnkStruct_ov35_0225621C * param0);
static BOOL ov35_02256348(UnkStruct_ov35_0225621C * param0);
static BOOL ov35_022563DC(UnkStruct_ov35_0225621C * param0);

static void NitroStaticInit (void)
{
    ov25_02254238(ov35_022561D4, ov35_022562EC);
}

static BOOL ov35_022561D4 (void ** param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    UnkStruct_ov35_0225621C * v0 = (UnkStruct_ov35_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov35_0225621C));

    if (v0 != NULL) {
        if (ov35_0225621C(v0, param1, param2, param3)) {
            if (SysTask_Start(ov35_022562B0, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov35_0225621C (UnkStruct_ov35_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        {
            128 - (56 / 2),
            128 + (56 / 2),
            114 - (64 / 2),
            114 + (64 / 2)
        },
    };

    param0->unk_08.unk_04 = 1;

    if (sub_02099D7C(param3, (u8 *)(&(param0->unk_08.unk_00)), sizeof(u32)) == 0) {
        param0->unk_08.unk_00 = 0;
    }

    param0->unk_04 = param3;

    if (ov35_02256410(&(param0->unk_10), &(param0->unk_08), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_18 = PoketchButtonManager_Create(v0, NELEMS(v0), ov35_02256284, param0, 8);
        param0->unk_1C = 0;
        param0->unk_14 = param1;

        return 1;
    }

    return 0;
}

static void ov35_02256284 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov35_0225621C * v0 = (UnkStruct_ov35_0225621C *)param3;

    if (param0 == 0) {
        v0->unk_1C = param1;
    }
}

static void ov35_0225628C (UnkStruct_ov35_0225621C * param0)
{
    sub_02099D54(param0->unk_04, (u8 *)(&(param0->unk_08.unk_00)), sizeof(u32));
    PoketchButtonManager_Destroy(param0->unk_18);
    ov35_0225644C(param0->unk_10);
    Heap_FreeToHeap(param0);
}

static void ov35_022562B0 (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov35_0225621C *) = {
        ov35_02256308, ov35_02256348, ov35_022563DC
    };

    UnkStruct_ov35_0225621C * v1 = (UnkStruct_ov35_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->unk_14, v1->unk_18);

        if (v0[v1->unk_00](v1)) {
            ov35_0225628C(v1);
            SysTask_Done(param0);
            ov25_02254260(v1->unk_14);
        }
    } else {
    }
}

static void ov35_022562EC (void * param0)
{
    ((UnkStruct_ov35_0225621C *)param0)->unk_02 = 1;
}

static void ov35_022562F4 (UnkStruct_ov35_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov35_02256308 (UnkStruct_ov35_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov35_02256548(param0->unk_10, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov35_0225656C(param0->unk_10, 0)) {
            ov25_0225424C(param0->unk_14);
            ov35_022562F4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov35_02256348 (UnkStruct_ov35_0225621C * param0)
{
    UnkStruct_ov35_02256410_1 * v0 = &(param0->unk_08);

    if (param0->unk_02) {
        ov35_022562F4(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (param0->unk_1C == 1) {
            v0->unk_04 = 0;
            ov35_02256548(param0->unk_10, 2);
            param0->unk_1C = 0;
            param0->unk_01++;
        }
        break;
    case 1:
        if (param0->unk_1C == 2) {
            v0->unk_04 = 1;
            ov35_02256548(param0->unk_10, 2);
            param0->unk_1C = 0;
            param0->unk_01 = 0;
            break;
        }

        if (param0->unk_1C == 3) {
            v0->unk_04 = 1;

            if (++(v0->unk_00) > 9999) {
                v0->unk_00 = 0;
            }

            ov35_02256548(param0->unk_10, 2);
            ov35_02256548(param0->unk_10, 3);
            param0->unk_1C = 0;
            param0->unk_01 = 0;
            break;
        }
        break;
    }

    return 0;
}

static BOOL ov35_022563DC (UnkStruct_ov35_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov35_02256548(param0->unk_10, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov35_02256578(param0->unk_10)) {
            return 1;
        }
        break;
    }

    return 0;
}
