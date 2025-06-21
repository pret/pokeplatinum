#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/base/poketch_button.h"
#include "applications/poketch/base/poketch_system.h"
#include "overlay054/ov54_0225642C.h"
#include "overlay054/struct_ov54_0225642C_1.h"
#include "overlay054/struct_ov54_0225642C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov54_0225642C_1 unk_04;
    UnkStruct_ov54_0225642C *unk_98;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 unk_A4;
    u32 unk_A8;
} UnkStruct_ov54_0225621C;

static void NitroStaticInit(void);

static BOOL ov54_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov54_0225621C(UnkStruct_ov54_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov54_022562D4(UnkStruct_ov54_0225621C *param0);
static void ov54_022562F4(SysTask *param0, void *param1);
static void ov54_02256338(void *param0);
static void ov54_02256340(u32 param0, u32 param1, u32 param2, void *param3);
static void ov54_0225634C(UnkStruct_ov54_0225621C *param0, u32 param1);
static BOOL ov54_02256360(UnkStruct_ov54_0225621C *param0);
static BOOL ov54_022563AC(UnkStruct_ov54_0225621C *param0);
static BOOL ov54_022563F4(UnkStruct_ov54_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov54_022561D4, ov54_02256338);
}

static BOOL ov54_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov54_0225621C *v0 = (UnkStruct_ov54_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov54_0225621C));

    if (v0 != NULL) {
        if (ov54_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov54_022562F4, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov54_0225621C(UnkStruct_ov54_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        { ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 3) - (48 / 2)),
            ((48 + 40 * 3) + (48 / 2)) },
        { ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 2) - (48 / 2)),
            ((48 + 40 * 2) + (48 / 2)) },
        { ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 1) - (48 / 2)),
            ((48 + 40 * 1) + (48 / 2)) },
        { ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 0) - (48 / 2)),
            ((48 + 40 * 0) + (48 / 2)) },
        { ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 3) - (48 / 2)),
            ((48 + 40 * 3) + (48 / 2)) },
        { ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 2) - (48 / 2)),
            ((48 + 40 * 2) + (48 / 2)) },
        { ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 1) - (48 / 2)),
            ((48 + 40 * 1) + (48 / 2)) },
        { ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 0) - (48 / 2)),
            ((48 + 40 * 0) + (48 / 2)) },
        { ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 3) - (48 / 2)),
            ((48 + 40 * 3) + (48 / 2)) },
        { ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 2) - (48 / 2)),
            ((48 + 40 * 2) + (48 / 2)) },
        { ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 1) - (48 / 2)),
            ((48 + 40 * 1) + (48 / 2)) },
        { ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 0) - (48 / 2)),
            ((48 + 40 * 0) + (48 / 2)) }
    };
    Poketch *poketch;
    int v2;

    poketch = PoketchSystem_GetPoketchData(poketchSys);
    param0->unk_04.unk_90 = Poketch_PokemonHistorySize(poketch);

    for (v2 = 0; v2 < param0->unk_04.unk_90; v2++) {
        Poketch_PokemonHistorySpeciesAndIcon(poketch, v2, &(param0->unk_04.unk_00[v2].unk_00), &(param0->unk_04.unk_00[v2].unk_08));
        param0->unk_04.unk_00[v2].unk_04 = Poketch_PokemonHistoryForm(poketch, v2);
    }

    if (ov54_0225642C(&(param0->unk_98), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov54_02256340, param0, 8);
        param0->unk_A4 = 0;
        param0->unk_A8 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov54_022562D4(UnkStruct_ov54_0225621C *param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
    ov54_02256460(param0->unk_98);

    Heap_FreeToHeap(param0);
}

static void ov54_022562F4(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov54_0225621C *) = {
        ov54_02256360,
        ov54_022563AC,
        ov54_022563F4
    };

    UnkStruct_ov54_0225621C *v1 = (UnkStruct_ov54_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov54_022562D4(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov54_02256338(void *param0)
{
    ((UnkStruct_ov54_0225621C *)param0)->unk_02 = 1;
}

static void ov54_02256340(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov54_0225621C *v0 = (UnkStruct_ov54_0225621C *)param3;

    v0->unk_A8 = param0;
    v0->unk_A4 = param1;
}

static void ov54_0225634C(UnkStruct_ov54_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov54_02256360(UnkStruct_ov54_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov54_0225646C(param0->unk_98, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov54_02256490(param0->unk_98, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov54_0225634C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov54_022563AC(UnkStruct_ov54_0225621C *param0)
{
    if (param0->unk_02) {
        ov54_0225634C(param0, 2);
        return 0;
    }

    if (param0->unk_A4 == 1) {
        int v0 = 12 - 1 - param0->unk_A8;

        if (v0 < param0->unk_04.unk_90) {
            PoketchSystem_PlayCry(param0->unk_04.unk_00[v0].unk_00, param0->unk_04.unk_00[v0].unk_04);
        }

        param0->unk_A4 = 0;
    }

    return 0;
}

static BOOL ov54_022563F4(UnkStruct_ov54_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov54_0225646C(param0->unk_98, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov54_0225649C(param0->unk_98)) {
            return 1;
        }
        break;
    }

    return 0;
}
