#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_defs/struct_020300F4.h"
#include "unk_0203E724.h"

#include "unk_0202FF4C.h"
#include "unk_0203061C.h"
#include "unk_0204F04C.h"
#include "unk_0205DFC4.h"

BOOL sub_0204F04C(UnkStruct_0203E724 * param0);

BOOL sub_0204F04C (UnkStruct_0203E724 * param0)
{
    u32 v0;
    u8 v1[4];
    UnkStruct_020300F4 * v2;
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);

    v2 = sub_020300F4(param0->unk_34->saveData);
    v1[0] = 0;

    sub_020300B0(v2, 10, (v4 * 4) + v3, v1);

    if (v3 == 3) {
        if (v4 == 0) {
            v0 = 102;
        } else {
            v0 = 104;
        }

        sub_020306E4(sub_0203068C(param0->unk_34->saveData), v0, sub_0205E6A8(v0), 0);
    }

    sub_020306E4(sub_0203068C(param0->unk_34->saveData), sub_0205E430(v4, v3), sub_0205E6A8(sub_0205E430(v4, v3)), 0);
    sub_020306E4(sub_0203068C(param0->unk_34->saveData), sub_0205E488(v4, v3), sub_0205E6A8(sub_0205E488(v4, v3)), 0);

    return 0;
}
