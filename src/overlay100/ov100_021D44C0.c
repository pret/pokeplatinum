#include "overlay100/ov100_021D44C0.h"

#include <nitro.h>
#include <string.h>

#include "overlay100/struct_ov100_021D49B4.h"
#include "overlay100/struct_ov100_021D54D0.h"

#include "easy3d_object.h"

void ov100_021D44C0(UnkStruct_ov100_021D49B4 *param0, UnkStruct_ov100_021D54D0 *param1);
void ov100_021D4510(UnkStruct_ov100_021D49B4 *param0);
void ov100_021D45A4(UnkStruct_ov100_021D49B4 *param0);

static const int Unk_ov100_021D5344[][5] = {
    { 0x1, 0x2, 0x3, 0x2, 0xFF },
    { 0x5, 0x6, 0x7, 0x6, 0xFF },
    { 0x9, 0xA, 0xB, 0xA, 0xFF },
    { 0xD, 0xE, 0xF, 0xE, 0xFF },
    { 0x0, 0x0, 0x0, 0x0, 0xFF },
    { 0x4, 0x4, 0x4, 0x4, 0xFF },
    { 0xA, 0xA, 0xA, 0xA, 0xFF },
    { 0xE, 0xE, 0xE, 0xE, 0xFF },
    { 0x0, 0x0, 0x0, 0x0, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0xFF },
    { 0x4, 0x5, 0x6, 0x7, 0xFF },
    { 0x8, 0x9, 0xA, 0xB, 0xFF },
    { 0xC, 0xD, 0xE, 0xF, 0xFF }
};

void ov100_021D44C0(UnkStruct_ov100_021D49B4 *param0, UnkStruct_ov100_021D54D0 *param1)
{
    param0->unk_160 = 1;
    param0->unk_184 = param1;
    param0->unk_180 = 0;
    param0->unk_178 = param1[param0->unk_180].unk_04;
    param0->unk_17C = param1[param0->unk_180].unk_04;
    param0->unk_158 = param1[param0->unk_180].unk_00;
}

void ov100_021D4510(UnkStruct_ov100_021D49B4 *param0)
{
    int v0;
    int v1;
    int v2;
    fx32 v3;
    fx32 v4 = Easy3DAnim_GetFrame(&param0->unk_88[0]);
    fx32 v5;

    v0 = v4 >> FX32_SHIFT;
    v0 %= 4;
    v5 = v4 + param0->unk_154;
    v1 = v5 >> FX32_SHIFT;
    v1 %= 4;
    v2 = Unk_ov100_021D5344[param0->unk_158 - 1][param0->unk_15C];

    if (v2 == 0xFF) {
        return;
    }

    if (v1 != v0) {
        param0->unk_15C++;
        v3 = FX32_CONST(v2 * 4);
    } else {
        v3 = v5;
    }

    Easy3DAnim_SetFrame(&param0->unk_88[0], v3);
}

void ov100_021D45A4(UnkStruct_ov100_021D49B4 *param0)
{
    int v0;
    UnkStruct_ov100_021D54D0 *v1 = param0->unk_184;

    if ((param0->unk_178 == 0xFF) || (param0->unk_180 == 0xFF)) {
        return;
    }

    v0 = v1[param0->unk_180].unk_00;

    if (v0 == 0) {
        param0->unk_160 = 0;
        param0->unk_180 = 0xFF;
        param0->unk_178 = 0xFF;
        param0->unk_17C = 0xFF;
    } else {
        if (param0->unk_15C >= 4) {
            param0->unk_178--;
            param0->unk_15C = 0;

            if (param0->unk_178 == 0) {
                param0->unk_180++;
                param0->unk_158 = v1[param0->unk_180].unk_00;
                param0->unk_178 = v1[param0->unk_180].unk_04;
                param0->unk_17C = v1[param0->unk_180].unk_04;

                if (param0->unk_158 == 0) {
                    param0->unk_160 = 0;
                    param0->unk_180 = 0xFF;
                    param0->unk_178 = 0xFF;
                    param0->unk_17C = 0xFF;
                }
            }
        } else {
            if ((param0->unk_15C == 0) && (param0->unk_178 == param0->unk_17C)) {
                return;
            }

            switch (param0->unk_158) {
            case 1:
            case 2:
            case 9:
                param0->unk_00.position.z -= v1[param0->unk_180].unk_08;
                break;
            case 4:
            case 3:
                param0->unk_00.position.x += v1[param0->unk_180].unk_08;
                break;
            }
        }
    }
}
