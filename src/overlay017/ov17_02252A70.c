#include "overlay017/ov17_02252A70.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/contest_photo.h"

#include "graphics.h"
#include "image_clips.h"

u32 ov17_02252A70(const ContestPhoto *param0, const u8 *param1)
{
    u8 v0;
    u32 v1;
    int v2;

    v1 = 0;

    for (v2 = 0; v2 < CONTEST_PHOTO_ACCESSORY_COUNT; v2++) {
        if (ContestPhoto_HasAccessory(param0, v2) == 1) {
            v0 = ContestPhoto_GetAccessoryID(param0, v2);
            v1 += param1[v0];
        }
    }

    return v1;
}

u8 *ov17_02252A9C(u32 param0, u32 param1)
{
    return LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 3 + param1, 0, param0, 0);
}
