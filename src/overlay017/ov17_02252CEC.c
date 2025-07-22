#include "overlay017/ov17_02252CEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02095C48.h"

#include "overlay017/ov17_0224A0FC.h"
#include "overlay017/struct_ov17_02246F24.h"
#include "overlay017/struct_ov17_02247A48.h"
#include "overlay017/struct_ov17_0224DF54.h"
#include "overlay017/struct_ov17_0224EDE0.h"
#include "overlay017/struct_ov17_0224F30C.h"
#include "overlay017/struct_ov17_0224FCA0.h"

void ov17_02252CEC(int param0, int param1, void *param2, void *param3) {
    UnkStruct_02095C48 *v0 = param3;
    UnkStruct_ov17_0224F30C *v1;

    if (v0->unk_154 == 0) {
        UnkStruct_ov17_02247A48 *v2;
        v2 = v0->unk_150;
        v1 = &v2->unk_4F8;
    } else if (v0->unk_154 == 1) {
        UnkStruct_ov17_0224DF54 *v3;
        v3 = v0->unk_150;
        v1 = &v3->unk_109C;
    } else if (v0->unk_154 == 2) {
        UnkStruct_ov17_02246F24 *v4;
        v4 = v0->unk_150;
        v1 = &v4->unk_BF8;
    } else if (v0->unk_154 == 3) {
        UnkStruct_ov17_0224FCA0 *v5;
        v5 = v0->unk_150;
        v1 = &v5->unk_85C;
    } else {
        GF_ASSERT(FALSE);
        return;
    }

    GF_ASSERT(param1 <= 512);
    GF_ASSERT(v1->unk_A11[param0] == 0);

    MI_CpuCopy8(param2, v1->unk_210[param0], param1);
    v1->unk_A11[param0] = 1;
}

void ov17_02252D7C(int param0, int param1, void *param2, void *param3) {
    UnkStruct_02095C48 *v0 = param3;
    UnkStruct_ov17_0224DF54 *v1 = v0->unk_150;
    UnkStruct_ov17_0224EDE0 *v2 = param2;

    ov17_0224B20C(v1, v2);
}
