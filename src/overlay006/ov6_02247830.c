#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014FB0_decl.h"
#include "unk_02025E68.h"

#include "unk_02014D38.h"
#include "unk_02025E68.h"
#include "overlay006/ov6_02247830.h"

static void ov6_02247830 (u8 * param0, u8 param1, u8 param2)
{
    u8 v0;
    int v1;

    while (param2--) {
        v0 = param0[param1 - 1] & 1;

        for (v1 = param1 - 1; v1 > 0; v1--) {
            param0[v1] >>= 1;
            param0[v1] |= ((param0[v1 - 1] & 1) << 7);
        }

        param0[v1] >>= 1;
        param0[v1] |= v0 << 7;
    }
}

static int ov6_02247890 (const UnkStruct_02014FB0 * param0, u16 param1, u16 param2, u16 param3, u16 param4, u16 param5)
{
    int v0, v1, v2;
    s16 v3[4];
    u8 v4[4];

    v0 = sub_02015004(param0);

    v3[0] = sub_02015030(param0, param2);
    v3[1] = sub_02015030(param0, param3);
    v3[2] = sub_02015030(param0, param4);
    v3[3] = sub_02015030(param0, param5);

    for (v2 = 0; v2 < 4; v2++) {
        if (v3[v2] < 0) {
            return -1;
        }

        if (v2 > 0) {
            if (v3[v2] >= v3[v2 - 1]) {
                v1 = v3[v2] - v3[v2 - 1];

                if (v1 > 255) {
                    return -1;
                }

                v4[v2] = v1;
            } else {
                v1 = v0 - (v3[v2 - 1] - v3[v2]);

                if (v1 > 255) {
                    return -1;
                }

                v4[v2] = v1;
            }
        } else {
            if (v3[0] > 255) {
                return -1;
            }

            v4[0] = v3[0];
        }
    }

    ov6_02247830(v4, 4, 5);

    for (v2 = 0; v2 < 3; v2++) {
        v4[v2] ^= ((v4[3] >> 4) | (v4[3] & 0xf0));
    }

    ov6_02247830(v4, 3, (v4[3] & 0xf));

    if ((v4[0] & 0xf) >= 8) {
        return -1;
    }

    v4[1] ^= v4[0];
    v4[2] ^= v4[0];

    if ((((v4[1] << 8) | (v4[2])) == param1) && (((v4[0] & 0xf0) >> 4) == 6) && (v4[3] == (((v4[0] + v4[1]) * v4[2]) & 0xff))) {
        return v4[0] & 0xf;
    }

    return -1;
}

int ov6_022479D0 (const TrainerInfo * param0, u16 param1, u16 param2, u16 param3, u16 param4, u32 param5)
{
    int v0;
    u16 v1;
    UnkStruct_02014FB0 * v2;

    v2 = sub_02014FB0(param5);
    v1 = sub_02025F24(param0);
    v0 = ov6_02247890(v2, v1, param1, param2, param3, param4);

    sub_02014FF0(v2);

    return v0;
}
