#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_021C0794_decl.h"

#include "unk_020068C8.h"
#include "unk_02017E74.h"
#include "unk_0202D7A8.h"
#include "overlay006/ov6_022475B0.h"

void ov6_022475B0 (UnkStruct_021C0794 * param0)
{
    u16 v0;
    u16 v1, v2;
    int v3[2];
    int * v4;

    v4 = sub_02006ADC(106, 8, 4);

    sub_0202DA10(param0, &v1, &v2);

    if (v1 != 0xffff) {
        v3[0] = v4[v1];
    } else {
        v3[0] = 0;
    }

    if (v2 != 0xffff) {
        v3[1] = v4[v2];
    } else {
        v3[1] = 0;
    }

    while (TRUE) {
        v0 = inline_020564D0(16);

        if ((v3[0] != v4[v0]) && (v3[1] != v4[v0])) {
            sub_0202DA24(param0, v0);
            break;
        }
    }

    sub_020181C4(v4);
}

int ov6_02247624 (UnkStruct_021C0794 * param0)
{
    int v0;
    int * v1;
    u16 v2, v3;

    sub_0202DA10(param0, &v2, &v3);

    GF_ASSERT(v2 != 0xffff);

    v1 = sub_02006ADC(106, 8, 4);
    v0 = v1[v2];

    sub_020181C4(v1);

    return v0;
}
