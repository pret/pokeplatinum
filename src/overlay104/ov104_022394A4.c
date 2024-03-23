#include <nitro.h>
#include <string.h>

#include "savedata.h"

#include "struct_defs/struct_0204AFC4.h"

#include "unk_0206B9D8.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223A0C4.h"

void ov104_022394A4(UnkStruct_0204AFC4 * param0, SaveData * param1);
u16 ov104_02239588(UnkStruct_0204AFC4 * param0, u16 param1);
void ov104_022395A0(UnkStruct_0204AFC4 * param0, u16 param1);
u16 ov104_022395B4(UnkStruct_0204AFC4 * param0);
u16 ov104_022395D8(UnkStruct_0204AFC4 * param0);

void ov104_022394A4 (UnkStruct_0204AFC4 * param0, SaveData * param1)
{
    int v0;
    u16 v1[2];
    u16 v2[2];

    switch (param0->unk_0F) {
    case 4:
    case 5:
        ov104_0223A30C(param1, param0->unk_78, param0->unk_0C - 1);
        break;
    case 2:
    case 3:
    case 6:
        ov104_0223A0C4(param0, &(param0->unk_78[0]), param0->unk_3E[(param0->unk_0C - 1) * 2 + 0], param0->unk_0E, NULL, NULL, NULL, param0->unk_04);

        for (v0 = 0; v0 < param0->unk_0E; v0++) {
            v1[v0] = param0->unk_78[0].unk_30[v0].unk_00_val1_0;
            v2[v0] = param0->unk_78[0].unk_30[v0].unk_02;
        }

        ov104_0223A0C4(param0, &(param0->unk_78[1]), param0->unk_3E[(param0->unk_0C - 1) * 2 + 1], param0->unk_0E, v1, v2, NULL, param0->unk_04);
        break;
    case 1:
    case 0:
    default:
        ov104_0223A0C4(param0, &(param0->unk_78[0]), param0->unk_3E[param0->unk_0C - 1], param0->unk_0E, NULL, NULL, NULL, param0->unk_04);
        break;
    }
}

u16 ov104_02239588 (UnkStruct_0204AFC4 * param0, u16 param1)
{
    return ov104_0222E10C(param0->unk_78[param1].unk_00.unk_04);
}

void ov104_022395A0 (UnkStruct_0204AFC4 * param0, u16 param1)
{
    param0->unk_10_1 = param1;
}

u16 ov104_022395B4 (UnkStruct_0204AFC4 * param0)
{
    ++param0->unk_0D;

    if (param0->unk_0F != 6) {
        param0->unk_08 = sub_0206BFF0(param0->unk_08);
    }

    return ++param0->unk_0C;
}

u16 ov104_022395D8 (UnkStruct_0204AFC4 * param0)
{
    if ((u32)param0->unk_1A + param0->unk_0D > 0xFFFF) {
        return 0xFFFF;
    } else {
        return param0->unk_1A + param0->unk_0D;
    }
}
