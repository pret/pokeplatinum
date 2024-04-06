#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "inlines.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02027854_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "overlay025/poketch_system.h"
#include "overlay048/struct_ov48_0225650C_decl.h"

#include "overlay048/struct_ov48_0225650C_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_020277A4.h"
#include "unk_02027B70.h"
#include "unk_020507CC.h"
#include "unk_0206AFE0.h"
#include "overlay025/poketch_system.h"
#include "overlay048/ov48_0225650C.h"

static const struct {
	u8  unk_00;
	u8  unk_01;
} Unk_ov48_02256A38[] = {
	{ 0x5, 0x14 },
	{ 0x5, 0x14 },
	{ 0x6, 0x14 },
	{ 0x6, 0x14 },
	{ 0x6, 0x13 },
	{ 0x6, 0x13 },
	{ 0x7, 0x11 },
	{ 0x7, 0x11 },
	{ 0x7, 0x11 },
	{ 0x7, 0x11 },
	{ 0x5, 0x12 },
	{ 0x5, 0x12 },
	{ 0x5, 0x12 },
	{ 0x5, 0x12 },
	{ 0x8, 0x10 },
	{ 0x8, 0x10 },
	{ 0x8, 0x10 },
	{ 0x8, 0x10 },
	{ 0x9, 0x13 },
	{ 0x9, 0x13 },
	{ 0x9, 0x15 },
	{ 0x9, 0x15 },
	{ 0x9, 0x16 },
	{ 0x9, 0x16 },
	{ 0x9, 0x16 },
	{ 0x9, 0x16 },
	{ 0xD, 0x16 },
	{ 0xD, 0x16 },
	{ 0xD, 0x16 },
	{ 0xD, 0x16 },
	{ 0x10, 0x16 },
	{ 0x10, 0x16 },
	{ 0x11, 0x15 },
	{ 0x11, 0x15 },
	{ 0x11, 0x14 },
	{ 0x11, 0x14 },
	{ 0x11, 0x14 },
	{ 0x11, 0x14 },
	{ 0x11, 0x13 },
	{ 0x11, 0x13 },
	{ 0x11, 0x13 },
	{ 0x11, 0x13 },
	{ 0xF, 0x10 },
	{ 0xF, 0x10 },
	{ 0xF, 0x10 },
	{ 0xF, 0x10 },
	{ 0xD, 0x10 },
	{ 0xD, 0x10 },
	{ 0xD, 0x10 },
	{ 0xD, 0x10 },
	{ 0xE, 0x18 },
	{ 0xE, 0x18 },
	{ 0xE, 0x19 },
	{ 0xE, 0x19 },
	{ 0x11, 0x1A },
	{ 0x11, 0x1A },
	{ 0x11, 0x1A },
	{ 0x11, 0x1A },
	{ 0x13, 0x19 },
	{ 0x13, 0x19 },
	{ 0x13, 0x19 },
	{ 0x13, 0x19 },
	{ 0x14, 0x19 },
	{ 0x14, 0x19 },
	{ 0x14, 0x19 },
	{ 0x14, 0x19 },
	{ 0x16, 0x14 },
	{ 0x16, 0x14 },
	{ 0x16, 0x14 },
	{ 0x16, 0x14 },
	{ 0x13, 0x12 },
	{ 0x13, 0x12 },
	{ 0x14, 0x12 },
	{ 0x14, 0x12 },
	{ 0x2, 0x17 },
	{ 0x2, 0x17 },
	{ 0x2, 0x17 },
	{ 0x2, 0x17 },
	{ 0x8, 0x1C },
	{ 0x8, 0x1C },
	{ 0x8, 0x1C },
	{ 0x8, 0x1C },
	{ 0x17, 0x18 },
	{ 0x17, 0x18 },
	{ 0x17, 0x18 },
	{ 0x17, 0x18 },
	{ 0x1C, 0x10 },
	{ 0x1C, 0x10 },
	{ 0x1C, 0x10 },
	{ 0x1C, 0x10 },
	{ 0x13, 0xD },
	{ 0x14, 0xD },
	{ 0x14, 0xD },
	{ 0x14, 0xD },
	{ 0x13, 0xA },
	{ 0x13, 0xA },
	{ 0x13, 0xA },
	{ 0x13, 0xA },
	{ 0x15, 0xA },
	{ 0x15, 0xA },
	{ 0x15, 0xA },
	{ 0x15, 0xA },
	{ 0x18, 0xC },
	{ 0x18, 0xC },
	{ 0x18, 0xC },
	{ 0x18, 0xC },
	{ 0x19, 0xD },
	{ 0x19, 0xD },
	{ 0x19, 0xD },
	{ 0x19, 0xD },
	{ 0x19, 0xE },
	{ 0x19, 0xE },
	{ 0x19, 0xE },
	{ 0x19, 0xE },
	{ 0x15, 0xD },
	{ 0x15, 0xD },
	{ 0x15, 0xD },
	{ 0x15, 0xD }
};

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov48_0225650C_1 unk_04;
    UnkStruct_ov48_0225650C * unk_A8;
    PoketchSystem * unk_AC;
} UnkStruct_ov48_0225621C;

static void NitroStaticInit(void);

static BOOL ov48_022561D4(void ** param0, PoketchSystem * param1, BGL * param2, u32 param3);
static BOOL ov48_0225621C(UnkStruct_ov48_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3);
static void ov48_022562A8(UnkStruct_ov48_0225621C * param0);
static void ov48_022562BC(SysTask * param0, void * param1);
static void ov48_022562F0(void * param0);
static void ov48_022562F8(UnkStruct_ov48_0225621C * param0, u32 param1);
static BOOL ov48_0225630C(UnkStruct_ov48_0225621C * param0);
static BOOL ov48_02256358(UnkStruct_ov48_0225621C * param0);
static BOOL ov48_022563D0(UnkStruct_ov48_0225621C * param0);
static int ov48_02256408(UnkStruct_ov48_0225621C * param0);
static BOOL ov48_02256478(UnkStruct_ov48_0225621C * param0);
static void ov48_022564E0(UnkStruct_ov48_0225621C * param0, PoketchSystem * param1);

static void NitroStaticInit (void)
{
    ov25_02254238(ov48_022561D4, ov48_022562F0);
}

static BOOL ov48_022561D4 (void ** param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    UnkStruct_ov48_0225621C * v0 = (UnkStruct_ov48_0225621C *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov48_0225621C));

    if (v0 != NULL) {
        if (ov48_0225621C(v0, param1, param2, param3)) {
            if (SysTask_Start(ov48_022562BC, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov48_0225621C (UnkStruct_ov48_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    param0->unk_AC = param1;
    param0->unk_04.unk_08 = ov48_02256408(param0);

    inline_ov47_0225621C(PoketchSystem_FieldSystem(param0->unk_AC), &(param0->unk_04.unk_00), &(param0->unk_04.unk_04));

    ov48_022564E0(param0, param1);

    if (ov48_0225650C(&(param0->unk_A8), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        return 1;
    }

    return 0;
}

static void ov48_022562A8 (UnkStruct_ov48_0225621C * param0)
{
    ov48_0225654C(param0->unk_A8);
    Heap_FreeToHeap(param0);
}

static void ov48_022562BC (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov48_0225621C *) = {
        ov48_0225630C,
        ov48_02256358,
        ov48_022563D0
    };

    UnkStruct_ov48_0225621C * v1 = (UnkStruct_ov48_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov48_022562A8(v1);
            SysTask_Done(param0);
            ov25_02254260(v1->unk_AC);
        }
    } else {
    }
}

static void ov48_022562F0 (void * param0)
{
    ((UnkStruct_ov48_0225621C *)param0)->unk_02 = 1;
}

static void ov48_022562F8 (UnkStruct_ov48_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov48_0225630C (UnkStruct_ov48_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov48_02256558(param0->unk_A8, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov48_0225657C(param0->unk_A8, 0)) {
            ov25_0225424C(param0->unk_AC);
            ov48_022562F8(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov48_02256358 (UnkStruct_ov48_0225621C * param0)
{
    if (param0->unk_02) {
        ov48_022562F8(param0, 2);
        return 0;
    }

    param0->unk_04.unk_90 = ov48_02256478(param0);

    if (ov48_0225657C(param0->unk_A8, 2)) {
        u32 v0, v1;

        if (ov25_022544BC(&v0, &v1)) {
            if (((u32)(v0 - 16) < (u32)192) & ((u32)(v1 - 16) < (u32)192)) {
                param0->unk_04.unk_08 = ov48_02256408(param0);
                ov48_02256558(param0->unk_A8, 2);
            }
        }
    }

    return 0;
}

static BOOL ov48_022563D0 (UnkStruct_ov48_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov48_02256558(param0->unk_A8, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov48_02256588(param0->unk_A8)) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov48_02256408 (UnkStruct_ov48_0225621C * param0)
{
    UnkStruct_02027854 * v0 = sub_02027854(PoketchSystem_SaveData(param0->unk_AC));
    int v1, v2;

    for (v1 = 0, v2 = 0; v1 < (NELEMS(Unk_ov48_02256A38)); v1++) {
        if ((sub_02027D84(v0, v1) == 1) && (sub_02027D04(v0, v1) == 5)) {
            param0->unk_04.unk_0C[v2].unk_00 = Unk_ov48_02256A38[v1].unk_00;
            param0->unk_04.unk_0C[v2].unk_01 = Unk_ov48_02256A38[v1].unk_01;

            while (((v1 + 1) < (NELEMS(Unk_ov48_02256A38))) && (param0->unk_04.unk_0C[v2].unk_00 == Unk_ov48_02256A38[v1 + 1].unk_00) && (param0->unk_04.unk_0C[v2].unk_01 == Unk_ov48_02256A38[v1 + 1].unk_01)) {
                v1++;
            }

            if (++v2 >= 64) {
                break;
            }
        }
    }

    return v2;
}

static BOOL ov48_02256478 (UnkStruct_ov48_0225621C * param0)
{
    BOOL v0 = 0;

    if (ov25_02254534(param0->unk_AC)) {
        int v1, v2;

        inline_ov47_0225621C(PoketchSystem_FieldSystem(param0->unk_AC), &v1, &v2);

        if ((v1 != param0->unk_04.unk_00) || (v2 != param0->unk_04.unk_04)) {
            param0->unk_04.unk_00 = v1;
            param0->unk_04.unk_04 = v2;
            v0 = 1;
        }
    }

    return v0;
}

static void ov48_022564E0 (UnkStruct_ov48_0225621C * param0, PoketchSystem * param1)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(PoketchSystem_SaveData(param1));
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_04.unk_94[v1] = sub_0206B1F0(v0, v1);
    }
}
