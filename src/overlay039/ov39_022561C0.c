#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02255B34_decl.h"
#include "overlay039/struct_ov39_022563DC_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay039/struct_ov39_022563DC_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "overlay025/poketch_system.h"
#include "overlay025/ov25_02255ACC.h"
#include "overlay039/ov39_022563DC.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov39_022563DC_1 unk_04;
    UnkStruct_ov39_022563DC * unk_24;
    PoketchSystem * unk_28;
    UnkStruct_ov25_02255B34 * unk_2C;
    u32 unk_30;
    u32 unk_34;
} UnkStruct_ov39_0225621C;

static void NitroStaticInit(void);

static BOOL ov39_022561D4(void ** param0, PoketchSystem * param1, BGL * param2, u32 param3);
static BOOL ov39_0225621C(UnkStruct_ov39_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3);
static void ov39_02256268(UnkStruct_ov39_0225621C * param0);
static void ov39_02256284(u32 param0, u32 param1, u32 param2, void * param3);
static void ov39_0225628C(SysTask * param0, void * param1);
static void ov39_022562C8(void * param0);
static void ov39_022562D0(UnkStruct_ov39_0225621C * param0, u32 param1);
static BOOL ov39_022562E4(UnkStruct_ov39_0225621C * param0);
static BOOL ov39_02256324(UnkStruct_ov39_0225621C * param0);
static BOOL ov39_022563A8(UnkStruct_ov39_0225621C * param0);

static void NitroStaticInit (void)
{
    ov25_02254238(ov39_022561D4, ov39_022562C8);
}

static BOOL ov39_022561D4 (void ** param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    UnkStruct_ov39_0225621C * v0 = (UnkStruct_ov39_0225621C *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov39_0225621C));

    if (v0 != NULL) {
        if (ov39_0225621C(v0, param1, param2, param3)) {
            if (SysTask_Start(ov39_0225628C, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov39_0225621C (UnkStruct_ov39_0225621C * param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    if (ov39_022563DC(&(param0->unk_24), &(param0->unk_04), param2)) {
        static const UnkUnion_020225E0 v0[] = {
            {16, 64, 16, 64},
            {16, 64, 160, 208},
            {72, 120, 16, 64},
            {72, 120, 160, 208},
            {128, 176, 16, 64},
            {128, 176, 160, 208},
        };
        int v1;

        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_28 = param1;
        param0->unk_2C = ov25_02255ACC(v0, NELEMS(v0), ov39_02256284, param0, 8);
        param0->unk_30 = 0;

        for (v1 = 0; v1 < 6; v1++) {
            param0->unk_04.unk_04[v1] = 1;
        }

        return 1;
    }

    return 0;
}

static void ov39_02256268 (UnkStruct_ov39_0225621C * param0)
{
    if (param0->unk_2C) {
        ov25_02255B34(param0->unk_2C);
    }

    ov39_0225640C(param0->unk_24);
    Heap_FreeToHeap(param0);
}

static void ov39_02256284 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov39_0225621C * v0 = param3;

    v0->unk_30 = param1;
    v0->unk_34 = param0;
}

static void ov39_0225628C (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov39_0225621C *) = {
        ov39_022562E4,
        ov39_02256324,
        ov39_022563A8
    };

    UnkStruct_ov39_0225621C * v1 = (UnkStruct_ov39_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->unk_28, v1->unk_2C);

        if (v0[v1->unk_00](v1)) {
            ov39_02256268(v1);
            SysTask_Done(param0);
            ov25_02254260(v1->unk_28);
        }
    } else {
    }
}

static void ov39_022562C8 (void * param0)
{
    ((UnkStruct_ov39_0225621C *)param0)->unk_02 = 1;
}

static void ov39_022562D0 (UnkStruct_ov39_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov39_022562E4 (UnkStruct_ov39_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov39_02256418(param0->unk_24, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov39_0225643C(param0->unk_24, 0)) {
            ov25_0225424C(param0->unk_28);
            ov39_022562D0(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov39_02256324 (UnkStruct_ov39_0225621C * param0)
{
    if (param0->unk_02) {
        ov39_022562D0(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (param0->unk_30 == 1) {
            if (param0->unk_04.unk_04[param0->unk_34]) {
                param0->unk_04.unk_1C = param0->unk_34;
                ov39_02256418(param0->unk_24, 2);
                ov25_02254424(1635);
                param0->unk_01++;
            } else {
                ov25_02254424(1646);
            }
        }
        break;
    case 1:
        if (param0->unk_30 == 2) {
            ov39_02256418(param0->unk_24, 3);
            param0->unk_01 = 0;
            break;
        }

        if (param0->unk_30 == 3) {
            ov39_02256418(param0->unk_24, 3);
            param0->unk_01 = 0;
            break;
        }
        break;
    }

    return 0;
}

static BOOL ov39_022563A8 (UnkStruct_ov39_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov39_02256418(param0->unk_24, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov39_02256448(param0->unk_24)) {
            return 1;
        }
        break;
    }

    return 0;
}
