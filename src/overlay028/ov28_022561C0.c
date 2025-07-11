#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/pokedexdata_decl.h"

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "overlay028/ov28_0225697C.h"
#include "overlay028/ov28_02256E9C.h"
#include "overlay028/struct_ov28_0225697C_1.h"
#include "overlay028/struct_ov28_0225697C_decl.h"
#include "overlay028/struct_ov28_02256E9C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "pokedex.h"
#include "pokemon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    u32 unk_08;
    PoketchButtonManager *buttonManager;
    PoketchSystem *poketchSys;
    UnkStruct_ov28_0225697C *unk_14;
    UnkStruct_ov28_0225697C_1 unk_18;
} UnkStruct_ov28_02256210;

static void NitroStaticInit(void);

static BOOL ov28_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov28_02256210(UnkStruct_ov28_02256210 *param0, u32 param1, BgConfig *param2);
static void ov28_02256298(UnkStruct_ov28_02256210 *param0);
static void ov28_022562CC(SysTask *param0, void *param1);
static void ov28_02256324(void *param0);
static void ov28_0225632C(UnkStruct_ov28_02256210 *param0, u32 param1);
static void ov28_02256344(u32 param0, u32 param1, u32 param2, void *param3);
static BOOL ov28_02256374(UnkStruct_ov28_02256210 *param0);
static BOOL ov28_022563B4(UnkStruct_ov28_02256210 *param0);
static BOOL ov28_0225648C(UnkStruct_ov28_02256210 *param0);
static BOOL ov28_02256588(UnkStruct_ov28_02256210 *param0);
static BOOL ov28_022566A0(UnkStruct_ov28_02256210 *param0);
static BOOL ov28_022567A8(UnkStruct_ov28_02256210 *param0);
static void ov28_02256868(UnkStruct_ov28_02256210 *param0);
static BOOL ov28_02256888(UnkStruct_ov28_02256210 *param0, u32 param1);
static BOOL ov28_022568E0(UnkStruct_ov28_02256210 *param0);
static void ov28_02256914(UnkStruct_ov28_02256210 *param0, const UnkStruct_ov28_02256E9C *param1);

static const TouchScreenHitTable Unk_ov28_02257658[] = {
    { 0x90, 0xAF, 0x20, 0x5F },
    { 0x70, 0x8F, 0x20, 0x3F },
    { 0x70, 0x8F, 0x40, 0x5F },
    { 0x70, 0x8F, 0x60, 0x7F },
    { 0x50, 0x6F, 0x20, 0x3F },
    { 0x50, 0x6F, 0x40, 0x5F },
    { 0x50, 0x6F, 0x60, 0x7F },
    { 0x30, 0x4F, 0x20, 0x3F },
    { 0x30, 0x4F, 0x40, 0x5F },
    { 0x30, 0x4F, 0x60, 0x7F },
    { 0x90, 0xAF, 0x60, 0x7F },
    { 0x50, 0x6F, 0xA0, 0xBF },
    { 0x50, 0x6F, 0x80, 0x9F },
    { 0x70, 0x8F, 0x80, 0x9F },
    { 0x70, 0x8F, 0xA0, 0xBF },
    { 0x90, 0xAF, 0x80, 0xBF },
    { 0x30, 0x4F, 0x80, 0xBF }
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov28_022561D4, ov28_02256324);
}

static BOOL ov28_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov28_02256210 *v0 = (UnkStruct_ov28_02256210 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov28_02256210));

    if (v0 != NULL) {
        if (ov28_02256210(v0, param3, param2)) {
            v0->poketchSys = poketchSys;
            SysTask_Start(ov28_022562CC, v0, 1);
            *param0 = v0;

            return 1;
        }
    }

    return 0;
}

static BOOL ov28_02256210(UnkStruct_ov28_02256210 *param0, u32 param1, BgConfig *param2)
{
    if (ov28_0225697C(&(param0->unk_14), &(param0->unk_18), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_03 = 0;
        param0->unk_02 = 0;
        param0->unk_04 = 0;
        param0->unk_06 = 17;
        param0->unk_08 = 0xffffffff;

        ov28_02256E9C(&param0->unk_18.unk_04, 10);
        ov28_02256E9C(&param0->unk_18.unk_08, 10);
        ov28_02256E9C(&param0->unk_18.unk_0C, 10);

        if ((param0->unk_18.unk_04 == NULL) || (param0->unk_18.unk_08 == NULL) || (param0->unk_18.unk_0C == NULL)) {
            return 0;
        }

        param0->buttonManager = PoketchButtonManager_New(Unk_ov28_02257658, NELEMS(Unk_ov28_02257658), ov28_02256344, param0, HEAP_ID_POKETCH_APP);

        if (param0->buttonManager == NULL) {
            return 0;
        }
    }

    return 1;
}

static void ov28_02256298(UnkStruct_ov28_02256210 *param0)
{
    if (param0->unk_18.unk_04) {
        ov28_02256EC0(param0->unk_18.unk_04);
    }

    if (param0->unk_18.unk_08) {
        ov28_02256EC0(param0->unk_18.unk_08);
    }

    if (param0->unk_18.unk_0C) {
        ov28_02256EC0(param0->unk_18.unk_0C);
    }

    if (param0->buttonManager) {
        PoketchButtonManager_Free(param0->buttonManager);
    }

    ov28_022569AC(param0->unk_14);
}

static void ov28_022562CC(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov28_02256210 *) = {
        ov28_02256374,
        ov28_022563B4,
        ov28_0225648C,
        ov28_02256588,
        ov28_022566A0,
        ov28_022567A8,
        ov28_022568E0
    };

    UnkStruct_ov28_02256210 *v1 = (UnkStruct_ov28_02256210 *)param1;

    if (v1->unk_03) {
        ov28_0225632C(v1, 6);
        v1->unk_03 = 0;
    }

    if (v1->unk_00 < NELEMS(v0)) {
        v1->unk_06 = 17;
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov28_02256298(v1);
            Heap_FreeToHeap(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov28_02256324(void *param0)
{
    ((UnkStruct_ov28_02256210 *)param0)->unk_03 = 1;
}

static void ov28_0225632C(UnkStruct_ov28_02256210 *param0, u32 param1)
{
    if (param0->unk_03 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 6;
    }

    param0->unk_02 = param0->unk_00;
    param0->unk_01 = 0;
}

static void ov28_02256344(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov28_02256210 *v0 = (UnkStruct_ov28_02256210 *)param3;

    switch (param2) {
    case 0:
        v0->unk_18.unk_00 = param0;
        ov28_022569B8(v0->unk_14, 2);
        break;
    case 1:
        v0->unk_18.unk_00 = param0;
        ov28_022569B8(v0->unk_14, 1);
        break;
    }

    if (param1 == 3) {
        v0->unk_06 = param0;
    }
}

static BOOL ov28_02256374(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov28_022569B8(param0->unk_14, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov28_0225632C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov28_022563B4(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            break;
        case 10:
            param0->unk_04 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            param0->unk_18.unk_02 = param0->unk_06;
            param0->unk_04 = 0;
            param0->unk_08 = 8;
            param0->unk_02 = 2;
            break;
        case 15:
            ov28_02256914(param0, param0->unk_18.unk_04);
            ov28_02256EC8(param0->unk_18.unk_04);
            break;
        default:
            if (param0->unk_04) {
                if (ov28_022571B8(param0->unk_18.unk_04, param0->unk_06)) {
                    param0->unk_08 = 3;
                }
            } else {
                if (ov28_0225717C(param0->unk_18.unk_04, param0->unk_06)) {
                    param0->unk_08 = 3;
                }
            }
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_0225648C(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            param0->unk_02 = 1;
            break;
        case 10:
            ov28_02256EC8(param0->unk_18.unk_08);
            param0->unk_08 = 5;
            param0->unk_04 = 1;
            param0->unk_02 = 3;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            param0->unk_18.unk_02 = param0->unk_06;
            param0->unk_08 = 8;
            break;
        case 15:
            ov28_02256ED8(param0->unk_18.unk_08, param0->unk_18.unk_04);

            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                ov28_02256914(param0, param0->unk_18.unk_0C);
                param0->unk_08 = 6;
                param0->unk_02 = 4;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        default:
            ov28_02256EC8(param0->unk_18.unk_08);

            if (ov28_0225717C(param0->unk_18.unk_08, param0->unk_06)) {
                param0->unk_08 = 5;
                param0->unk_02 = 3;
            }
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_02256588(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            param0->unk_02 = 1;
            break;
        case 10:
            param0->unk_04 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                param0->unk_18.unk_02 = param0->unk_06;
                param0->unk_04 = 0;
                ov28_02256ED8(param0->unk_18.unk_04, param0->unk_18.unk_0C);
                param0->unk_08 = 7;
                param0->unk_02 = 2;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        case 15:
            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                ov28_02256914(param0, param0->unk_18.unk_0C);
                param0->unk_08 = 6;
                param0->unk_04 = 0;
                param0->unk_02 = 4;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        default:
            if (param0->unk_04) {
                if (ov28_022571B8(param0->unk_18.unk_08, param0->unk_06)) {
                    param0->unk_08 = 5;
                }
            } else {
                if (ov28_0225717C(param0->unk_18.unk_08, param0->unk_06)) {
                    param0->unk_08 = 5;
                }
            }
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_022566A0(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            param0->unk_02 = 1;
            break;
        case 10:
            ov28_02256868(param0);
            param0->unk_08 = 3;
            param0->unk_04 = 1;
            param0->unk_02 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            param0->unk_18.unk_02 = param0->unk_06;
            param0->unk_08 = 8;
            param0->unk_04 = 0;
            ov28_02256ED8(param0->unk_18.unk_04, param0->unk_18.unk_0C);
            param0->unk_02 = 2;
            break;
        case 15:
            ov28_02256ED8(param0->unk_18.unk_04, param0->unk_18.unk_0C);

            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                ov28_02256914(param0, param0->unk_18.unk_0C);
                param0->unk_08 = 6;
                param0->unk_04 = 0;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        default:
            ov28_02256EC8(param0->unk_18.unk_04);

            if (ov28_0225717C(param0->unk_18.unk_04, param0->unk_06)) {
                param0->unk_08 = 3;
            }

            param0->unk_02 = 1;
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_022567A8(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 3;
            param0->unk_02 = 1;
            break;
        case 10:
            ov28_02256868(param0);
            param0->unk_08 = 3;
            param0->unk_04 = 1;
            param0->unk_02 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
        case 15:
            break;
        default:
            ov28_02256868(param0);

            if (ov28_0225717C(param0->unk_18.unk_04, param0->unk_06)) {
                param0->unk_08 = 3;
            }

            param0->unk_02 = 1;
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static void ov28_02256868(UnkStruct_ov28_02256210 *param0)
{
    ov28_02256EC8(param0->unk_18.unk_04);
    ov28_02256EC8(param0->unk_18.unk_08);
    ov28_02256EC8(param0->unk_18.unk_0C);

    param0->unk_18.unk_02 = 17;
    param0->unk_04 = 0;
}

static BOOL ov28_02256888(UnkStruct_ov28_02256210 *param0, u32 param1)
{
    BOOL v0 = 0;

    switch (param1) {
    case 12:
        ov28_02256EE8(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    case 11:
        ov28_02256F74(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    case 13:
        ov28_02257028(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    case 14:
        ov28_02257058(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    }

    return ov28_02257240(param0->unk_18.unk_0C, 10);
}

static BOOL ov28_022568E0(UnkStruct_ov28_02256210 *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov28_022569B8(param0->unk_14, 10);
        param0->unk_01++;
        break;
    case 1:
        if (ov28_022569E8(param0->unk_14)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov28_02256914(UnkStruct_ov28_02256210 *param0, const UnkStruct_ov28_02256E9C *param1)
{
    s64 v0 = ov28_02257468(param1);

    if ((v0 > 0) && (v0 <= NATIONAL_DEX_COUNT)) {
        Pokedex *pokedex;
        u16 v2;

        pokedex = SaveData_GetPokedex(PoketchSystem_GetSaveData(param0->poketchSys));

        if (Pokedex_IsNationalDexObtained(pokedex)) {
            v2 = v0;
        } else {
            v2 = Pokemon_NationalDexNumber((u16)v0);
        }

        if (v2 > 0 && v2 <= NATIONAL_DEX_COUNT && Pokedex_HasSeenSpecies(pokedex, v2)) {
            PoketchSystem_PlayCry(v2, 0);
        }
    }
}
