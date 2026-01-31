#include "overlay022/ov22_0225894C.h"

#include <nitro.h>
#include <string.h>

#include "generated/accessories.h"
#include "generated/backdrops.h"

#include "overlay022/struct_ov22_0225899C.h"

#include "unk_020298BC.h"

void ov22_0225894C(const FashionCase *fashionCase, UnkStruct_ov22_0225899C *param1)
{
    int i;
    u32 v1;

    for (i = 0; i < ACCESSORY_COUNT; i++) {
        param1->accessoryCounts[i] = FashionCase_GetAccessoryCount(fashionCase, i);
    }

    for (i = 0; i < BACKDROP_COUNT; i++) {
        param1->backdropCounts[i] = BACKDROP_COUNT;
    }

    for (i = 0; i < BACKDROP_COUNT; i++) {
        v1 = FashionCase_GetBackdropCount(fashionCase, i);

        if (v1 != BACKDROP_COUNT) {
            param1->backdropCounts[v1] = i;
        }
    }
}

u32 ov22_0225899C(const UnkStruct_ov22_0225899C *param0, u32 param1)
{
    GF_ASSERT(param1 < 100);
    return param0->accessoryCounts[param1];
}

u32 ov22_022589B0(const UnkStruct_ov22_0225899C *param0, u32 param1)
{
    return param0->backdropCounts[param1];
}

u32 ov22_022589BC(const UnkStruct_ov22_0225899C *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 18; v0++) {
        if (param0->backdropCounts[v0] == param1) {
            return v0;
        }
    }

    return v0;
}
