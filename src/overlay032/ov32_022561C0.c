#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay032/struct_ov32_02256470_decl.h"

#include "overlay032/struct_ov32_02256470_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02022594.h"
#include "unk_02073C2C.h"
#include "unk_02079D40.h"
#include "party.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay032/ov32_02256470.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov32_02256470_1 unk_04;
    UnkStruct_ov32_02256470 * unk_74;
    UnkStruct_ov25_0225424C * unk_78;
} UnkStruct_ov32_0225621C;

static void NitroStaticInit(void);

static BOOL ov32_022561D4(void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static BOOL ov32_0225621C(UnkStruct_ov32_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static void ov32_02256264(UnkStruct_ov32_0225621C * param0);
static void ov32_02256278(UnkStruct_0201CD38 * param0, void * param1);
static void ov32_022562AC(void * param0);
static void ov32_022562B4(UnkStruct_ov32_0225621C * param0, u32 param1);
static BOOL ov32_022562C8(UnkStruct_ov32_0225621C * param0);
static BOOL ov32_02256308(UnkStruct_ov32_0225621C * param0);
static BOOL ov32_02256394(UnkStruct_ov32_0225621C * param0);
static void ov32_022563C8(UnkStruct_ov32_02256470_1 * param0, Party * param1);

static void NitroStaticInit (void)
{
    ov25_02254238(ov32_022561D4, ov32_022562AC);
}

static BOOL ov32_022561D4 (void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    UnkStruct_ov32_0225621C * v0 = (UnkStruct_ov32_0225621C *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov32_0225621C));

    if (v0 != NULL) {
        if (ov32_0225621C(v0, param1, param2, param3)) {
            if (sub_0200D9E8(ov32_02256278, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov32_0225621C (UnkStruct_ov32_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    if (ov32_02256470(&(param0->unk_74), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;

        ov32_022563C8(&param0->unk_04, Party_GetFromSavedata(ov25_02254544(param1)));

        param0->unk_04.unk_64 = 0;
        param0->unk_04.unk_66 = 0;
        param0->unk_04.unk_68 = 0;
        param0->unk_04.unk_6C = 0;
        param0->unk_78 = param1;

        return 1;
    }

    return 0;
}

static void ov32_02256264 (UnkStruct_ov32_0225621C * param0)
{
    ov32_02256508(param0->unk_74);
    Heap_FreeToHeap(param0);
}

static void ov32_02256278 (UnkStruct_0201CD38 * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov32_0225621C *) = {
        ov32_022562C8,
        ov32_02256308,
        ov32_02256394
    };

    UnkStruct_ov32_0225621C * v1 = (UnkStruct_ov32_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov32_02256264(v1);
            sub_0200DA58(param0);
            ov25_02254260(v1->unk_78);
        }
    } else {
    }
}

static void ov32_022562AC (void * param0)
{
    ((UnkStruct_ov32_0225621C *)param0)->unk_02 = 1;
}

static void ov32_022562B4 (UnkStruct_ov32_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov32_022562C8 (UnkStruct_ov32_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov32_02256538(param0->unk_74, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov32_0225655C(param0->unk_74, 0)) {
            ov25_0225424C(param0->unk_78);
            ov32_022562B4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov32_02256308 (UnkStruct_ov32_0225621C * param0)
{
    if (param0->unk_02) {
        ov32_022562B4(param0, 2);
        return 0;
    }

    if (ov32_0225655C(param0->unk_74, 2)) {
        param0->unk_04.unk_64 = ov25_0225446C(&(param0->unk_04.unk_68), &(param0->unk_04.unk_6C));

        if (param0->unk_04.unk_64) {
            param0->unk_04.unk_66 = sub_02022798();

            if (param0->unk_04.unk_66) {
                u32 v0 = ov32_02256B78(param0->unk_04.unk_68, param0->unk_04.unk_6C, param0->unk_04.unk_00);

                if (v0 >= param0->unk_04.unk_00) {
                    ov32_022563C8(&param0->unk_04, Party_GetFromSavedata(ov25_02254544(param0->unk_78)));
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

static BOOL ov32_02256394 (UnkStruct_ov32_0225621C * param0)
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

static void ov32_022563C8 (UnkStruct_ov32_02256470_1 * param0, Party * param1)
{
    Pokemon * v0;
    int v1;
    BOOL v2;

    param0->unk_00 = Party_GetCurrentCount(param1);

    for (v1 = 0; v1 < param0->unk_00; v1++) {
        v0 = Party_GetPokemonBySlotIndex(param1, v1);
        v2 = sub_02073C88(v0);

        param0->unk_04[v1].unk_00 = sub_02079D40((const BoxPokemon *)v0);
        param0->unk_04[v1].unk_04 = sub_02074470(v0, 5, NULL);
        param0->unk_04[v1].unk_06 = sub_02074470(v0, 163, NULL);
        param0->unk_04[v1].unk_08 = sub_02074470(v0, 164, NULL);
        param0->unk_04[v1].unk_0A = sub_02074470(v0, 6, NULL);
        param0->unk_04[v1].unk_0C = (sub_02074470(v0, 160, NULL) != 0);
        param0->unk_04[v1].unk_0E = sub_02074470(v0, 76, NULL);
        param0->unk_04[v1].unk_0F = sub_02074470(v0, 112, NULL);

        sub_02073CD4(v0, v2);
    }
}
