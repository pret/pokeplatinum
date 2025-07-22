#include "overlay022/ov22_0225AF44.h"

#include <nitro.h>
#include <string.h>

#include "overlay022/ov22_022597BC.h"
#include "overlay022/struct_ov22_02257964.h"
#include "overlay022/struct_ov22_0225AF44.h"
#include "overlay022/struct_ov22_0225AF68.h"

void ov22_0225AF44(UnkStruct_ov22_0225AF68 *param0, const UnkStruct_ov22_02257964 *param1, int param2) {
    UnkStruct_ov22_0225AF44 v0;

    param0->unk_00 = param1;

    v0.unk_00 = &param1->unk_2C.unk_1C;
    v0.unk_04 = (param1->unk_2C.unk_48) * 4 + 134 + 3;
    v0.unk_08 = 16;
    v0.unk_0C = param2;

    ov22_02259820(&param0->unk_04, &v0);
}

void ov22_0225AF68(UnkStruct_ov22_0225AF68 *param0) {
    ov22_02259838(&param0->unk_04, 1);
}

void ov22_0225AF74(UnkStruct_ov22_0225AF68 *param0) {
    ov22_022598A0(&param0->unk_04);
    memset(param0, 0, sizeof(UnkStruct_ov22_0225AF68));
}
