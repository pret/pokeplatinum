#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "pokemon.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay040/struct_ov40_0225645C_decl.h"

#include "overlay040/struct_ov40_0225645C_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02022594.h"
#include "unk_020261E4.h"
#include "pokemon.h"
#include "unk_02079D40.h"
#include "overlay005/ov5_021E622C.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay040/ov40_0225645C.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov40_0225645C_1 unk_04;
    UnkStruct_ov40_0225645C * unk_28;
    UnkStruct_ov25_0225424C * unk_2C;
    UnkStruct_02026310 * unk_30;
} UnkStruct_ov40_0225621C;

static void NitroStaticInit(void);

static BOOL ov40_022561D4(void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static BOOL ov40_0225621C(UnkStruct_ov40_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static void ov40_0225625C(UnkStruct_ov40_0225621C * param0);
static void ov40_02256270(UnkStruct_0201CD38 * param0, void * param1);
static void ov40_022562A4(void * param0);
static void ov40_022562AC(UnkStruct_ov40_0225621C * param0, u32 param1);
static BOOL ov40_022562C0(UnkStruct_ov40_0225621C * param0);
static BOOL ov40_02256300(UnkStruct_ov40_0225621C * param0);
static BOOL ov40_02256354(UnkStruct_ov40_0225621C * param0);
static BOOL ov40_02256388(UnkStruct_ov40_0225621C * param0);
static void ov40_022563D0(UnkStruct_ov40_0225645C_1 * param0, UnkStruct_02026310 * param1);

static void NitroStaticInit (void)
{
    ov25_02254238(ov40_022561D4, ov40_022562A4);
}

static BOOL ov40_022561D4 (void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    UnkStruct_ov40_0225621C * v0 = (UnkStruct_ov40_0225621C *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov40_0225621C));

    if (v0 != NULL) {
        if (ov40_0225621C(v0, param1, param2, param3)) {
            if (sub_0200D9E8(ov40_02256270, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov40_0225621C (UnkStruct_ov40_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    param0->unk_30 = sub_02026310(ov25_02254544(param1));

    ov40_022563D0(&param0->unk_04, param0->unk_30);

    if (ov40_0225645C(&(param0->unk_28), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_2C = param1;

        return 1;
    }

    return 0;
}

static void ov40_0225625C (UnkStruct_ov40_0225621C * param0)
{
    ov40_022564B8(param0->unk_28);
    Heap_FreeToHeap(param0);
}

static void ov40_02256270 (UnkStruct_0201CD38 * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov40_0225621C *) = {
        ov40_022562C0,
        ov40_02256300,
        ov40_02256354
    };

    UnkStruct_ov40_0225621C * v1 = (UnkStruct_ov40_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov40_0225625C(v1);
            sub_0200DA58(param0);
            ov25_02254260(v1->unk_2C);
        }
    } else {
    }
}

static void ov40_022562A4 (void * param0)
{
    ((UnkStruct_ov40_0225621C *)param0)->unk_02 = 1;
}

static void ov40_022562AC (UnkStruct_ov40_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov40_022562C0 (UnkStruct_ov40_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov40_022565C8(param0->unk_28, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov40_022565EC(param0->unk_28, 0)) {
            ov25_0225424C(param0->unk_2C);
            ov40_022562AC(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov40_02256300 (UnkStruct_ov40_0225621C * param0)
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

static BOOL ov40_02256354 (UnkStruct_ov40_0225621C * param0)
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

static BOOL ov40_02256388 (UnkStruct_ov40_0225621C * param0)
{
    if (ov25_0225450C(param0->unk_2C) == 0) {
        u32 v0, v1;

        if (sub_020227C0(&v0, &v1)) {
            if (((u32)(v0 - 16) < (u32)(207 - 16)) & ((u32)(v1 - 16) < (u32)(175 - 16))) {
                return 1;
            }
        }
    }

    return 0;
}

static void ov40_022563D0 (UnkStruct_ov40_0225645C_1 * param0, UnkStruct_02026310 * param1)
{
    UnkStruct_02026218 * v0;
    BoxPokemon * v1;
    int v2;
    BOOL v3;

    param0->unk_00 = ov5_021E6238(param1);
    param0->unk_01 = sub_02026234(param1);

    for (v2 = 0; v2 < param0->unk_00; v2++) {
        v0 = sub_02026218(param1, v2);
        v1 = sub_02026220(v0);
        v3 = DecryptBoxMon(v1);

        param0->unk_04[v2] = sub_02079D40(v1);
        param0->unk_1C[v2] = GetBoxMonData(v1, MON_DATA_SPECIES, NULL);
        param0->unk_20[v2] = GetBoxMonData(v1, MON_DATA_FORM, NULL);
        param0->unk_0C[v2] = ov5_021E6590(v0);
        param0->unk_14[v2] = GetBoxMonGender(v1);

        EncryptBoxMon(v1, v3);
    }
}
