#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "overlay113/struct_ov113_0225DBCC_decl.h"

#include "overlay113/struct_ov113_0225CA04.h"
#include "overlay113/struct_ov113_022607EC.h"
#include "overlay113/struct_ov113_02260818.h"

#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay113/ov113_0225C700.h"
#include "overlay113/ov113_022607D8.h"

static void ov113_02260838(s32 param0, const void * param1, u32 param2, void * param3);
static void ov113_0226085C(s32 param0, const void * param1, u32 param2, void * param3);
static void ov113_02260884(s32 param0, const void * param1, u32 param2, void * param3);
static BOOL ov113_022607EC(s32 param0, UnkStruct_ov113_022607EC * param1);

static const UnkStruct_ov66_022589B4 Unk_ov113_02261548[] = {
    {ov113_02260838, sizeof(UnkStruct_ov113_0225CA04)},
    {ov113_0226085C, 0x0},
    {ov113_02260884, sizeof(UnkStruct_ov113_02260818)}
};

void ov113_022607D8 (UnkStruct_ov113_0225DBCC * param0)
{
    ov66_02232D60(Unk_ov113_02261548, (NELEMS(Unk_ov113_02261548)), param0);
}

static BOOL ov113_022607EC (s32 param0, UnkStruct_ov113_022607EC * param1)
{
    if (param1->unk_04 == param0) {
        return 0;
    }

    if (param1->unk_00 == 0) {
        return 0;
    }

    if (ov66_02232B8C(param0) == 0xffffffff) {
        return 0;
    }

    return 1;
}

BOOL ov113_02260818 (const UnkStruct_ov113_02260818 * param0)
{
    if (ov66_02231760() == 1) {
        return 0;
    }

    ov66_02232EBC(2, param0, sizeof(UnkStruct_ov113_02260818));
    return 1;
}

static void ov113_02260838 (s32 param0, const void * param1, u32 param2, void * param3)
{
    UnkStruct_ov113_0225DBCC * v0 = param3;
    UnkStruct_ov113_022607EC * v1 = ov113_0225DD44(v0);
    const UnkStruct_ov113_0225CA04 * v2 = param1;

    if (ov113_022607EC(param0, v1) == 0) {
        return;
    }

    ov113_0225E044(v0, param0);
}

static void ov113_0226085C (s32 param0, const void * param1, u32 param2, void * param3)
{
    UnkStruct_ov113_0225DBCC * v0 = param3;
    UnkStruct_ov113_022607EC * v1 = ov113_0225DD44(v0);

    if (ov113_022607EC(param0, v1) == 0) {
        return;
    }

    ov113_0225E05C(v0, ov66_02232B8C(param0));
}

static void ov113_02260884 (s32 param0, const void * param1, u32 param2, void * param3)
{
    UnkStruct_ov113_0225DBCC * v0 = param3;
    UnkStruct_ov113_022607EC * v1 = ov113_0225DD44(v0);
    const UnkStruct_ov113_02260818 * v2 = param1;

    if (ov113_022607EC(param0, v1) == 0) {
        return;
    }

    ov113_0225DDC0(v0, v2, param0);
}
