#include "overlay063/ov63_0222D160.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222BE18.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay063/struct_ov63_0222D160.h"

void ov63_0222D160(UnkStruct_ov63_0222D160 *param0, const UnkStruct_ov63_0222BEC0 *param1) {
    UnkStruct_ov63_0222CC3C v0;

    v0 = ov63_0222C0FC(param1);
    ov63_0222D1A8(param0, v0.unk_02 - 96, v0.unk_00 - 112);
}

void ov63_0222D19C(UnkStruct_ov63_0222D160 *param0) {
    memset(param0, 0, sizeof(UnkStruct_ov63_0222D160));
}

void ov63_0222D1A8(UnkStruct_ov63_0222D160 *param0, s16 param1, s16 param2) {
    param0->unk_00 = param1;
    param0->unk_02 = param2;
}

s16 ov63_0222D1B0(const UnkStruct_ov63_0222D160 *param0) {
    return param0->unk_00;
}

s16 ov63_0222D1B8(const UnkStruct_ov63_0222D160 *param0) {
    return param0->unk_02;
}
