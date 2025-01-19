#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_system.h"
#include "overlay032/ov32_02256470.h"
#include "overlay032/struct_ov32_02256470_1.h"
#include "overlay032/struct_ov32_02256470_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov32_02256470_1 unk_04;
    UnkStruct_ov32_02256470 *unk_74;
    PoketchSystem *poketchSys;
} UnkStruct_ov32_0225621C;

static void NitroStaticInit(void);

static BOOL ov32_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov32_0225621C(UnkStruct_ov32_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov32_02256264(UnkStruct_ov32_0225621C *param0);
static void ov32_02256278(SysTask *param0, void *param1);
static void ov32_022562AC(void *param0);
static void ov32_022562B4(UnkStruct_ov32_0225621C *param0, u32 param1);
static BOOL ov32_022562C8(UnkStruct_ov32_0225621C *param0);
static BOOL ov32_02256308(UnkStruct_ov32_0225621C *param0);
static BOOL ov32_02256394(UnkStruct_ov32_0225621C *param0);
static void ov32_022563C8(UnkStruct_ov32_02256470_1 *param0, Party *param1);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov32_022561D4, ov32_022562AC);
}

static BOOL ov32_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov32_0225621C *v0 = (UnkStruct_ov32_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov32_0225621C));

    if (v0 != NULL) {
        if (ov32_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov32_02256278, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov32_0225621C(UnkStruct_ov32_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    if (ov32_02256470(&(param0->unk_74), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;

        ov32_022563C8(&param0->unk_04, Party_GetFromSavedata(PoketchSystem_GetSaveData(poketchSys)));

        param0->unk_04.unk_64 = 0;
        param0->unk_04.unk_66 = 0;
        param0->unk_04.unk_68 = 0;
        param0->unk_04.unk_6C = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov32_02256264(UnkStruct_ov32_0225621C *param0)
{
    ov32_02256508(param0->unk_74);
    Heap_FreeToHeap(param0);
}

static void ov32_02256278(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov32_0225621C *) = {
        ov32_022562C8,
        ov32_02256308,
        ov32_02256394
    };

    UnkStruct_ov32_0225621C *v1 = (UnkStruct_ov32_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov32_02256264(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov32_022562AC(void *param0)
{
    ((UnkStruct_ov32_0225621C *)param0)->unk_02 = 1;
}

static void ov32_022562B4(UnkStruct_ov32_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov32_022562C8(UnkStruct_ov32_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov32_02256538(param0->unk_74, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov32_0225655C(param0->unk_74, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov32_022562B4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov32_02256308(UnkStruct_ov32_0225621C *param0)
{
    if (param0->unk_02) {
        ov32_022562B4(param0, 2);
        return 0;
    }

    if (ov32_0225655C(param0->unk_74, 2)) {
        param0->unk_04.unk_64 = PoketchSystem_GetDisplayHeldCoords(&(param0->unk_04.unk_68), &(param0->unk_04.unk_6C));

        if (param0->unk_04.unk_64) {
            param0->unk_04.unk_66 = TouchScreen_Tapped();

            if (param0->unk_04.unk_66) {
                u32 v0 = ov32_02256B78(param0->unk_04.unk_68, param0->unk_04.unk_6C, param0->unk_04.unk_00);

                if (v0 >= param0->unk_04.unk_00) {
                    ov32_022563C8(&param0->unk_04, Party_GetFromSavedata(PoketchSystem_GetSaveData(param0->poketchSys)));
                    ov32_02256538(param0->unk_74, 2);
                }
            }

            return 0;
        }
    }

    param0->unk_04.unk_68 = 0;
    param0->unk_04.unk_6C = 0;
    param0->unk_04.unk_66 = 0;

    return 0;
}

static BOOL ov32_02256394(UnkStruct_ov32_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov32_02256538(param0->unk_74, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov32_02256568(param0->unk_74)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov32_022563C8(UnkStruct_ov32_02256470_1 *param0, Party *param1)
{
    Pokemon *v0;
    int v1;
    BOOL v2;

    param0->unk_00 = Party_GetCurrentCount(param1);

    for (v1 = 0; v1 < param0->unk_00; v1++) {
        v0 = Party_GetPokemonBySlotIndex(param1, v1);
        v2 = Pokemon_EnterDecryptionContext(v0);

        param0->unk_04[v1].unk_00 = BoxPokemon_IconSpriteIndex((const BoxPokemon *)v0);
        param0->unk_04[v1].unk_04 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
        param0->unk_04[v1].unk_06 = Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, NULL);
        param0->unk_04[v1].unk_08 = Pokemon_GetValue(v0, MON_DATA_MAX_HP, NULL);
        param0->unk_04[v1].unk_0A = Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, NULL);
        param0->unk_04[v1].unk_0C = (Pokemon_GetValue(v0, MON_DATA_STATUS_CONDITION, NULL) != 0);
        param0->unk_04[v1].unk_0E = Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL);
        param0->unk_04[v1].unk_0F = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

        Pokemon_ExitDecryptionContext(v0, v2);
    }
}
