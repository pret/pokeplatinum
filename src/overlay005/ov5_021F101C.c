#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "overlay005/struct_ov5_021F0468_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_020711C8.h"

#include "unk_02017E74.h"
#include "unk_020508D4.h"
#include "unk_0205E7D0.h"
#include "overlay005/ov5_021F007C.h"
#include "overlay005/ov5_021F101C.h"
#include "overlay006/ov6_02243258.h"

typedef struct {
    UnkStruct_0201CD38 * unk_00;
    UnkStruct_ov5_021F0468 * unk_04;
} UnkStruct_ov5_021F101C;

BOOL ov5_021F101C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020711C8 * v1 = sub_02050A64(param0);
    int * v2 = sub_02050A68(param0);
    UnkStruct_ov5_021F101C * v3 = v1->unk_04;

    switch (*v2) {
    case 0:
        v1->unk_04 = sub_02018184(11, sizeof(UnkStruct_ov5_021F101C));
        (*v2)++;
        break;
    case 1:
    {
        int v4 = ov5_021F0484();

        v3->unk_04 = sub_02018184(11, v4);
        memset(v3->unk_04, 0, v4);
    }
        (*v2)++;
        break;
    case 2:
    {
        int v5 = sub_0205EB98(v0->unk_3C);
        v3->unk_00 = ov6_02243F88(v0, 0, v1->unk_00, v5);
    }
        (*v2)++;
        break;
    case 3:
        if (ov6_02243FBC(v3->unk_00)) {
            ov6_02243FC8(v3->unk_00);
            (*v2)++;
        }
        break;
    case 4:
        sub_02050944(param0, ov5_021F0488, v3->unk_04);
        (*v2)++;
        break;
    case 5:
        sub_020181C4(v1->unk_04);
        sub_020181C4(v1);
        return 1;
    }

    return 0;
}
