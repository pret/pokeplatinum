#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021E1890_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_02055130.h"

#include "unk_02054D00.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay006/ov6_02247078.h"

void ov6_02247078 (FieldSystem * param0, const u8 param1)
{
    BOOL v0;
    UnkStruct_ov5_021E1890 * v1;
    UnkStruct_02055130 v2;
    int v3;
    int v4[] = {119, 112, 115, 248};

    v0 = sub_02055324(param0, v4, 4, &v1, &v3);

    if (v0) {
        NNSG3dResTex * v5;

        v5 = ov5_021EFAA0(param0->unk_30);
        ov5_021D41C8(param0->unk_50, param0->unk_54, param1, v3, ov5_021E18BC(v1), ov5_021E18C0(v1), v5, 2, 1, 0);
    } else {
        GF_ASSERT(0);
    }
}

void ov6_022470E8 (FieldSystem * param0, const u8 param1)
{
    ov5_021D4250(param0->unk_54, param1, 0);
}

void ov6_022470F4 (FieldSystem * param0, const u8 param1)
{
    ov5_021D4250(param0->unk_54, param1, 1);
}
