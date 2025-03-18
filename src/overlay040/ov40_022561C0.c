#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "struct_defs/daycare.h"

#include "overlay005/ov5_021E622C.h"
#include "overlay025/poketch_system.h"
#include "overlay040/ov40_0225645C.h"
#include "overlay040/struct_ov40_0225645C_1.h"
#include "overlay040/struct_ov40_0225645C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "unk_020261E4.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov40_0225645C_1 unk_04;
    UnkStruct_ov40_0225645C *unk_28;
    PoketchSystem *poketchSys;
    Daycare *unk_30;
} UnkStruct_ov40_0225621C;

static void NitroStaticInit(void);

static BOOL ov40_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov40_0225621C(UnkStruct_ov40_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov40_0225625C(UnkStruct_ov40_0225621C *param0);
static void ov40_02256270(SysTask *param0, void *param1);
static void ov40_022562A4(void *param0);
static void ov40_022562AC(UnkStruct_ov40_0225621C *param0, u32 param1);
static BOOL ov40_022562C0(UnkStruct_ov40_0225621C *param0);
static BOOL ov40_02256300(UnkStruct_ov40_0225621C *param0);
static BOOL ov40_02256354(UnkStruct_ov40_0225621C *param0);
static BOOL ov40_02256388(UnkStruct_ov40_0225621C *param0);
static void ov40_022563D0(UnkStruct_ov40_0225645C_1 *param0, Daycare *daycare);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov40_022561D4, ov40_022562A4);
}

static BOOL ov40_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov40_0225621C *v0 = (UnkStruct_ov40_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov40_0225621C));

    if (v0 != NULL) {
        if (ov40_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov40_02256270, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov40_0225621C(UnkStruct_ov40_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    param0->unk_30 = SaveData_GetDaycare(PoketchSystem_GetSaveData(poketchSys));

    ov40_022563D0(&param0->unk_04, param0->unk_30);

    if (ov40_0225645C(&(param0->unk_28), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov40_0225625C(UnkStruct_ov40_0225621C *param0)
{
    ov40_022564B8(param0->unk_28);
    Heap_FreeToHeap(param0);
}

static void ov40_02256270(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov40_0225621C *) = {
        ov40_022562C0,
        ov40_02256300,
        ov40_02256354
    };

    UnkStruct_ov40_0225621C *v1 = (UnkStruct_ov40_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov40_0225625C(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov40_022562A4(void *param0)
{
    ((UnkStruct_ov40_0225621C *)param0)->unk_02 = 1;
}

static void ov40_022562AC(UnkStruct_ov40_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov40_022562C0(UnkStruct_ov40_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov40_022565C8(param0->unk_28, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov40_022565EC(param0->unk_28, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov40_022562AC(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov40_02256300(UnkStruct_ov40_0225621C *param0)
{
    if (param0->unk_02) {
        ov40_022562AC(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (ov40_02256388(param0)) {
            ov40_022563D0(&param0->unk_04, param0->unk_30);
            ov40_022565C8(param0->unk_28, 2);
            param0->unk_01++;
        }
        break;
    case 1:
        if (ov40_022565EC(param0->unk_28, 2)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov40_02256354(UnkStruct_ov40_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov40_022565C8(param0->unk_28, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov40_022565F8(param0->unk_28)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov40_02256388(UnkStruct_ov40_0225621C *param0)
{
    if (PoketechSystem_IsRunningTask(param0->poketchSys) == 0) {
        u32 v0, v1;

        if (TouchScreen_GetTapState(&v0, &v1)) {
            if (((u32)(v0 - 16) < (u32)(207 - 16)) & ((u32)(v1 - 16) < (u32)(175 - 16))) {
                return 1;
            }
        }
    }

    return 0;
}

static void ov40_022563D0(UnkStruct_ov40_0225645C_1 *param0, Daycare *daycare)
{
    DaycareMon *daycareMon;
    BoxPokemon *boxMon;
    int slot;
    BOOL reencrypt;

    param0->unk_00 = Daycare_GetMonCount(daycare);
    param0->unk_01 = sub_02026234(daycare);

    for (slot = 0; slot < param0->unk_00; slot++) {
        daycareMon = Daycare_GetDaycareMon(daycare, slot);
        boxMon = DaycareMon_GetBoxMon(daycareMon);
        reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

        param0->unk_04[slot] = BoxPokemon_IconSpriteIndex(boxMon);
        param0->species[slot] = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
        param0->forms[slot] = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
        param0->unk_0C[slot] = DaycareMon_GiveExperience(daycareMon);
        param0->genders[slot] = BoxPokemon_GetGender(boxMon);

        BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
    }
}
