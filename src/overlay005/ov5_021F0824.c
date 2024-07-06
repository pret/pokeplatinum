#include "overlay005/ov5_021F0824.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029894_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay023/ov23_02241F74.h"

#include "field_comm_manager.h"
#include "unk_0202854C.h"
#include "unk_020573FC.h"

void ov5_021F0824(FieldSystem *fieldSystem)
{
    int v0;
    int v1;
    UnkStruct_02029894 *v2;
    int v3, v4;
    int v5, v6;
    int v7, v8;
    VecFx32 v9;
    int v10;

    v2 = sub_0205A080(fieldSystem->saveData);

    if (v2 == NULL) {
        return;
    }

    v3 = ov23_02242E28();
    v4 = ov23_02242E40();

    for (v0 = 0; v0 < 32; v0++) {
        v1 = sub_020293B0(v2, v0);
        v7 = sub_020573FC(v1);
        v8 = sub_0205740C(v1);

        if (v1 != 0) {
            v5 = sub_020293FC(v2, v0);
            v6 = sub_0202942C(v2, v0);

            v9.x = v5 * (FX32_ONE * 16);
            v9.z = v6 * (FX32_ONE * 16);
            v9.y = FX32_ONE;

            v9.x += (v3 * FX32_ONE * 16 * 32);
            v9.z += (v4 * FX32_ONE * 16 * 32);

            v9.x += (v7 * FX32_ONE * 8);
            v9.z += (v8 * FX32_ONE * 8);
            v10 = ov5_021EFAE8(fieldSystem->unk_30, v1);

            ov5_021E19CC(fieldSystem->unk_A4, fieldSystem->unk_30, v10, &v9, NULL, fieldSystem->unk_50);
        }
    }
}
