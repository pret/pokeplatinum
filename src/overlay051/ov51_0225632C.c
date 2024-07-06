#include "overlay051/ov51_0225632C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay051/struct_ov51_0225632C_1.h"
#include "overlay051/struct_ov51_0225632C_decl.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "heap.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"

struct UnkStruct_ov51_0225632C_t {
    const UnkStruct_ov51_0225632C_1 *unk_00;
    BGL *unk_04;
    u32 unk_08[10];
};

static void ov51_022563A4(UnkStruct_ov25_02255224 *param0);
static void ov51_022563B8(SysTask *param0, void *param1);
static void ov51_02256458(SysTask *param0, void *param1);

BOOL ov51_0225632C(UnkStruct_ov51_0225632C **param0, const UnkStruct_ov51_0225632C_1 *param1, BGL *param2)
{
    UnkStruct_ov51_0225632C *v0 = (UnkStruct_ov51_0225632C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov51_0225632C));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov51_0225635C(UnkStruct_ov51_0225632C *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov51_0225649C[] = {
    { 0x0, ov51_022563B8, 0x0 },
    { 0x1, ov51_02256458, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov51_02256368(UnkStruct_ov51_0225632C *param0, u32 param1)
{
    ov25_0225517C(Unk_ov51_0225649C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov51_0225638C(UnkStruct_ov51_0225632C *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov51_02256398(UnkStruct_ov51_0225632C *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov51_022563A4(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov51_0225632C *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov51_022563B8(SysTask *param0, void *param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov51_0225632C *v2;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 8, v2->unk_04, 6, 0, 0, 0, 8);
    sub_02019CB8(v2->unk_04, 6, 0, 0, 0, 32, 24, 0);
    sub_02006E84(12, 9, 4, 0 * 0x20, 0x20, 8);

    ov25_02255440(v2->unk_04, 26, 6);
    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov51_022563A4(param1);
}

static void ov51_02256458(SysTask *param0, void *param1)
{
    UnkStruct_ov51_0225632C *v0 = ov25_0225523C(param1);

    sub_02019044(v0->unk_04, 6);
    ov51_022563A4(param1);
}
