#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "unk_0201E0A4.h"

int sub_0201E0A4 (char * param0)
{
    int v0 = 0;

    while (param0[v0] != 0) {
        v0++;
    }

    return v0;
}

char * sub_0201E0B8 (char * param0, char * param1, char param2)
{
    int v0;

    for (v0 = 0; v0 < 256; v0++) {
        param1[v0] = param0[v0];

        if ((param0[v0] == param2) || (param0[v0] == 0)) {
            param1[v0] = 0;

            if ((param2 == 0xd) && (param0[v0 + 1] == 0xa)) {
                return &param0[v0 + 2];
            } else {
                return &param0[v0 + 1];
            }
        }
    }

    return NULL;
}

int sub_0201E0FC (char * param0)
{
    int v0, v1, v2, v3;

    v0 = sub_0201E0A4(param0);
    v2 = 1;
    v3 = 0;

    for (v1 = v0 - 1; v1 >= 0; v1--) {
        if ((param0[v1] >= '0') && (param0[v1] <= '9')) {
            v3 += v2 * (param0[v1] - '0');
        } else {
            if (v1 == 0) {
                if (param0[v1] == '-') {
                    v3 *= -1;
                }
            } else {
                return -1;
            }
        }

        v2 *= 10;
    }

    return v3;
}

void sub_0201E140 (NNSG3dResName * param0, const char * param1)
{
    u8 v0;
    u8 v1;

    for (v1 = 0; v1 < 4; v1++) {
        param0->val[v1] = 0;
    }

    v0 = sub_0201E0A4((char *)param1);

    for (v1 = 0; v1 < v0; v1++) {
        param0->name[v1] = param1[v1];
    }
}

BOOL sub_0201E17C (u16 param0)
{
    return param0 < 0x121;
}
