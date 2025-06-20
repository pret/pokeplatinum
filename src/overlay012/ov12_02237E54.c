#include "overlay012/ov12_02237E54.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/seal_case.h"

#include "unk_0202C9F4.h"
#include "unk_02097B18.h"

int ov12_02237E54(s16 param0, s16 param1, s16 param2, s16 param3)
{
    int v0;
    s16 v1 = (param0 - param2);
    s16 v2 = (param1 - param3) * -1;

    v0 = FX_Sqrt(((v2 * v2) + (v1 * v1)) * FX32_ONE) / FX32_ONE;

    return v0;
}

int ov12_02237E80(BallSealCoords *param0)
{
    int v0;
    s16 v1 = sub_0202CA80(param0);
    s16 v2 = sub_0202CA84(param0);
    v0 = ov12_02237E54(v1, v2, 190, 70);

    return v0;
}

int ov12_02237EA0(BallSealCoords *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    const u8 v5[] = {
        0,
        8,
        14,
        20,
        20,
        16,
        16,
    };

    v3 = sub_0202CA7C(param0);
    v0 = sub_020981AC(v3);

    if (v0 == 0) {
        v2 = ov12_02237E80(param0);

        if (v2 >= (60 - 4)) {
            v4 = 3;
        } else {
            v4 = ((v2 + 1) / 20);

            if (v4 >= (60 / 20)) {
                v4 = 3;
            }
        }

        v1 = v5[v4];
    } else {
        v1 = v5[1];
    }

    return v1;
}
