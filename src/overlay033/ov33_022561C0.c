#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay025/poketch_system.h"
#include "overlay033/struct_ov33_02256474_decl.h"

#include "overlay033/struct_ov33_02256474_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "touch_screen.h"
#include "savedata.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "party.h"
#include "overlay033/ov33_02256474.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov33_02256474_1 unk_04;
    UnkStruct_ov33_02256474 * unk_5C;
    PoketchSystem * unk_60;
} UnkStruct_ov33_0225621C;

static void NitroStaticInit(void);

static BOOL ov33_022561D4(void ** param0, PoketchSystem * param1, BGL * param2, u32 param3);
static BOOL ov33_0225621C(UnkStruct_ov33_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3);
static u32 ov33_0225630C(u32 param0);
static void ov33_0225632C(UnkStruct_ov33_0225621C * param0);
static void ov33_02256340(SysTask * param0, void * param1);
static void ov33_02256374(void * param0);
static void ov33_0225637C(UnkStruct_ov33_0225621C * param0, u32 param1);
static BOOL ov33_02256390(UnkStruct_ov33_0225621C * param0);
static BOOL ov33_022563D0(UnkStruct_ov33_0225621C * param0);
static BOOL ov33_02256440(UnkStruct_ov33_0225621C * param0);

static void NitroStaticInit (void)
{
    ov25_02254238(ov33_022561D4, ov33_02256374);
}

static BOOL ov33_022561D4 (void ** param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    UnkStruct_ov33_0225621C * v0 = (UnkStruct_ov33_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov33_0225621C));

    if (v0 != NULL) {
        if (ov33_0225621C(v0, param1, param2, param3)) {
            if (SysTask_Start(ov33_02256340, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov33_0225621C (UnkStruct_ov33_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    if (ov33_02256474(&(param0->unk_5C), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_60 = param1;

        {
            Party * v0 = Party_GetFromSavedata(SaveData_Ptr());
            Pokemon * v1;
            int v2;
            int v3;
            int v4;

            v4 = 0;
            param0->unk_04.unk_00 = Party_GetCurrentCount(v0);

            for (v2 = 0; v2 < param0->unk_04.unk_00; v2++) {
                v1 = Party_GetPokemonBySlotIndex(v0, v2);

                if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
                    param0->unk_04.unk_04[v4].unk_04 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
                    param0->unk_04.unk_04[v4].unk_08 = Pokemon_GetValue(v1, MON_DATA_FORM, NULL);
                    param0->unk_04.unk_04[v4].unk_00 = BoxPokemon_IconSpriteIndex((const BoxPokemon *)v1);
                    v3 = ov33_0225630C(Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL));

                    switch (v3) {
                    case 0:
                    case 1:
                    case 2:
                        param0->unk_04.unk_04[v4].unk_0A = 1;
                        param0->unk_04.unk_04[v4].unk_0B = 3 - v3;
                        break;
                    case 3:
                    default:
                        param0->unk_04.unk_04[v4].unk_0A = 2;
                        param0->unk_04.unk_04[v4].unk_0B = 0;
                        break;
                    case 4:
                    case 5:
                    case 6:
                        param0->unk_04.unk_04[v4].unk_0A = 0;
                        param0->unk_04.unk_04[v4].unk_0B = -(3 - v3);
                        break;
                    }

                    v4++;
                }
            }

            param0->unk_04.unk_00 = v4;
            param0->unk_04.unk_4C = 0;
            param0->unk_04.unk_4E = 0;
            param0->unk_04.unk_50 = 0;
            param0->unk_04.unk_54 = 0;
        }

        return 1;
    }

    return 0;
}

static u32 ov33_0225630C (u32 param0)
{
    static const u8 v0[] = {
        1, 35, 70, 150, 200, 255,
    };
    u32 v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (param0 < v0[v1]) {
            return v1;
        }
    }

    return NELEMS(v0);
}

static void ov33_0225632C (UnkStruct_ov33_0225621C * param0)
{
    ov33_022564F0(param0->unk_5C);
    Heap_FreeToHeap(param0);
}

static void ov33_02256340 (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov33_0225621C *) = {
        ov33_02256390, ov33_022563D0, ov33_02256440,
    };

    UnkStruct_ov33_0225621C * v1 = (UnkStruct_ov33_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov33_0225632C(v1);
            SysTask_Done(param0);
            ov25_02254260(v1->unk_60);
        }
    } else {
    }
}

static void ov33_02256374 (void * param0)
{
    ((UnkStruct_ov33_0225621C *)param0)->unk_02 = 1;
}

static void ov33_0225637C (UnkStruct_ov33_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov33_02256390 (UnkStruct_ov33_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov33_02256548(param0->unk_5C, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov33_0225656C(param0->unk_5C, 0)) {
            ov25_0225424C(param0->unk_60);
            ov33_0225637C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov33_022563D0 (UnkStruct_ov33_0225621C * param0)
{
    if (param0->unk_02) {
        ov33_0225637C(param0, 2);
        return 0;
    }

    param0->unk_04.unk_4C = ov25_0225446C(&param0->unk_04.unk_50, &param0->unk_04.unk_54);

    if (param0->unk_04.unk_4C) {
        if (((u32)(param0->unk_04.unk_50 - 16) < (u32)(207 - 16)) & ((u32)(param0->unk_04.unk_54 - 16) < (u32)(175 - 16))) {
            param0->unk_04.unk_4E = TouchScreen_Tapped();
            return 0;
        }

        param0->unk_04.unk_4C = 0;
    }

    param0->unk_04.unk_50 = 0;
    param0->unk_04.unk_54 = 0;
    param0->unk_04.unk_4E = 0;

    return 0;
}

static BOOL ov33_02256440 (UnkStruct_ov33_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov33_02256548(param0->unk_5C, 1);
        param0->unk_01++;
        break;

    case 1:
        if (ov33_02256578(param0->unk_5C)) {
            return 1;
        }
        break;
    }

    return 0;
}
