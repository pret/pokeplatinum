#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay025/poketch_system.h"
#include "overlay052/ov52_02256694.h"
#include "overlay052/struct_ov52_02256694_1.h"
#include "overlay052/struct_ov52_02256694_decl.h"

#include "bg_window.h"
#include "communication_system.h"
#include "heap.h"
#include "map_header.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov52_02256694_1 unk_04;
    UnkStruct_ov52_02256694 *unk_14;
    PoketchSystem *poketchSys;
    u32 unk_1C;
    u8 unk_20;
    u8 unk_21;
} UnkStruct_ov52_0225621C;

static void NitroStaticInit(void);

static BOOL ov52_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov52_0225621C(UnkStruct_ov52_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov52_0225624C(UnkStruct_ov52_0225621C *param0);
static void ov52_02256260(SysTask *param0, void *param1);
static void ov52_0225629C(void *param0);
static void ov52_022562A4(UnkStruct_ov52_0225621C *param0, u32 param1);
static BOOL ov52_022562B8(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_022562F8(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_02256364(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_02256430(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_02256454(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_022564B8(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_02256508(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_02256554(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_0225659C(UnkStruct_ov52_0225621C *param0);
static void ov52_022565EC(UnkStruct_ov52_0225621C *param0);
static void ov52_0225664C(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_0225666C(UnkStruct_ov52_0225621C *param0);
static void ov52_0225667C(UnkStruct_ov52_0225621C *param0);
static BOOL ov52_02256684(UnkStruct_ov52_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov52_022561D4, ov52_0225629C);
}

static BOOL ov52_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov52_0225621C *v0 = (UnkStruct_ov52_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov52_0225621C));

    if (v0 != NULL) {
        if (ov52_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov52_02256260, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov52_0225621C(UnkStruct_ov52_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    if (ov52_02256694(&(param0->unk_14), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_20 = 0;
        param0->unk_21 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov52_0225624C(UnkStruct_ov52_0225621C *param0)
{
    ov52_022566EC(param0->unk_14);
    Heap_FreeToHeap(param0);
}

static void ov52_02256260(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov52_0225621C *) = {
        ov52_022562B8,
        ov52_022562F8,
        ov52_02256364,
        ov52_02256454,
        ov52_022564B8,
        ov52_02256508
    };

    UnkStruct_ov52_0225621C *v1 = (UnkStruct_ov52_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov52_022565EC(v1);

        if (v0[v1->unk_00](v1)) {
            ov52_0225624C(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov52_0225629C(void *param0)
{
    ((UnkStruct_ov52_0225621C *)param0)->unk_02 = 1;
}

static void ov52_022562A4(UnkStruct_ov52_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 5;
    }

    param0->unk_01 = 0;
}

static BOOL ov52_022562B8(UnkStruct_ov52_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov52_022567A4(param0->unk_14, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov52_022567C8(param0->unk_14, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov52_022562A4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov52_022562F8(UnkStruct_ov52_0225621C *param0)
{
    if (param0->unk_02) {
        ov52_022562A4(param0, 5);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (ov52_02256554(param0)) {
            if (ov52_02256684(param0)) {
                FieldSystem *fieldSystem = PoketchSystem_GetFieldSystem(param0->poketchSys);

                ov52_022567A4(param0->unk_14, 3);

                if (sub_0203A2C8(fieldSystem->location->mapId)) {
                    ov52_022562A4(param0, 3);
                } else {
                    ov52_022562A4(param0, 2);
                }
            } else {
                PoketchSystem_PlaySoundEffect(1646);
            }
        }
        break;
    }

    return 0;
}

static BOOL ov52_02256364(UnkStruct_ov52_0225621C *param0)
{
    if (param0->unk_02) {
        ov52_022562A4(param0, 5);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        ov52_0225664C(param0);
        param0->unk_1C = 0;
        param0->unk_01++;
        break;
    case 1:
        if (ov52_02256430(param0)) {
            ov52_022562A4(param0, 4);
            return 0;
        }

        if (param0->unk_1C < 60) {
            param0->unk_1C++;
        }

        if (ov52_0225666C(param0) && (param0->unk_1C >= 60)) {
            ov52_0225659C(param0);
            ov52_022567A4(param0->unk_14, 6);
            param0->unk_1C = 0;
            param0->unk_01++;
        }
        break;
    case 2:
        if (ov52_02256430(param0) || ov52_02256554(param0)) {
            ov52_0225667C(param0);
            ov52_022567A4(param0->unk_14, 2);
            ov52_022562A4(param0, 1);
            return 0;
        }

        if (++(param0->unk_1C) >= 30) {
            param0->unk_1C = 0;

            if (ov52_0225659C(param0)) {
                ov52_022567A4(param0->unk_14, 6);
            }
        }
        break;
    }

    return 0;
}

static BOOL ov52_02256430(UnkStruct_ov52_0225621C *param0)
{
    if (ov25_0225450C(param0->poketchSys)) {
        return 1;
    }

    if (PoketchSystem_IsPlayerMoving(param0->poketchSys)) {
        return 1;
    }

    return 0;
}

static BOOL ov52_02256454(UnkStruct_ov52_0225621C *param0)
{
    if (param0->unk_02) {
        ov52_022562A4(param0, 5);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        param0->unk_1C = 0;
        param0->unk_01++;
    case 1:
        if (++(param0->unk_1C) >= 60) {
            ov52_022567A4(param0->unk_14, 4);
            param0->unk_01++;
        }
        break;
    case 2:
        if (ov52_02256554(param0)) {
            ov52_022567A4(param0->unk_14, 2);
            ov52_022562A4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov52_022564B8(UnkStruct_ov52_0225621C *param0)
{
    if (param0->unk_02) {
        ov52_022562A4(param0, 5);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        ov52_0225667C(param0);
        ov52_022567A4(param0->unk_14, 5);
        param0->unk_01++;
        break;
    case 1:
        if (ov52_02256554(param0)) {
            ov52_022567A4(param0->unk_14, 2);
            ov52_022562A4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov52_02256508(UnkStruct_ov52_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov52_0225667C(param0);
        param0->unk_01++;
    case 1:
        if (ov52_02256684(param0)) {
            ov52_022567A4(param0->unk_14, 1);
            param0->unk_01++;
        }
        break;
    case 2:
        if (ov52_022567D4(param0->unk_14)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov52_02256554(UnkStruct_ov52_0225621C *param0)
{
    if (ov25_0225450C(param0->poketchSys) == 0) {
        u32 v0, v1;

        if (TouchScreen_GetTapState(&v0, &v1)) {
            if (((u32)(v0 - 16) < (u32)(207 - 16)) & ((u32)(v1 - 16) < (u32)(175 - 16))) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov52_0225659C(UnkStruct_ov52_0225621C *param0)
{
    static const u8 v0[] = {
        9, 13, 7, 18, 26
    };
    static const u8 v1[] = {
        10
    };
    static const u8 v2[] = {
        1, 2, 3, 4, 5
    };
    static const u8 v3[] = {
        0, 6, 8, 11, 12, 14, 16, 27, 28, 30, 31, 32
    };
    static const struct {
        const u8 *unk_00;
        u32 unk_04;
    } v4[] = {
        { v0, NELEMS(v0) },
        { v1, NELEMS(v1) },
        { v2, NELEMS(v2) },
        { v3, NELEMS(v3) }
    };
    int v5, v6, v7;
    BOOL v8 = 0;

    for (v5 = 0; v5 < NELEMS(v4); v5++) {
        for (v6 = 0, v7 = 0; v6 < v4[v5].unk_04; v6++) {
            v7 += sub_02034120(v4[v5].unk_00[v6]);
        }

        if (v7 != param0->unk_04.unk_00[v5]) {
            param0->unk_04.unk_00[v5] = v7;
            v8 = 1;
        }
    }

    return v8;
}

static void ov52_022565EC(UnkStruct_ov52_0225621C *param0)
{
    switch (param0->unk_20) {
    case 0:
        break;
    case 1:
        if (sub_02037C18()) {
            param0->unk_20 = 2;
        }
        break;
    case 2:
        if (param0->unk_21) {
            sub_02037BFC();
            param0->unk_21 = 0;
            param0->unk_20 = 3;
        }
        break;
    case 3:
        if (CommSys_IsInitialized() == 0) {
            param0->unk_20 = 0;
        }
        break;
    }
}

static void ov52_0225664C(UnkStruct_ov52_0225621C *param0)
{
    if (param0->unk_20 == 0) {
        sub_02037BC0(PoketchSystem_GetSaveData(param0->poketchSys));
        param0->unk_20 = 1;
    }
}

static BOOL ov52_0225666C(UnkStruct_ov52_0225621C *param0)
{
    return param0->unk_20 == 2;
}

static void ov52_0225667C(UnkStruct_ov52_0225621C *param0)
{
    param0->unk_21 = 1;
}

static BOOL ov52_02256684(UnkStruct_ov52_0225621C *param0)
{
    return param0->unk_20 == 0;
}
