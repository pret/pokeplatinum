#include "overlay019/ov19_021DF964.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pc_boxes_decl.h"

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021DF964.h"

#include "enums.h"
#include "pc_boxes.h"
#include "sound_playback.h"
#include "system.h"

static void ov19_021DFCF8(UnkStruct_ov19_021DF964 *param0);
static void ov19_021DFD08(UnkStruct_ov19_021DF964 *param0, UnkEnum_021DFB94 param1);

void ov19_021DF964(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);

    ov19_021DFCF8(v0);
    ov19_021DFD08(v0, UnkEnum_021DFB94_54);
    ov19_021DFD08(v0, UnkEnum_021DFB94_55);

    v0->unk_20 = param1;
    v0->unk_23 = 0;
}

void ov19_021DF990(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);

    ov19_021DFCF8(v0);
    v0->unk_23 = 1;

    switch (ov19_GetBoxMode(param0)) {
    case PC_MODE_MOVE_MONS:
    default:
        if (ov19_GetPreviewMonSource(param0) == PREVIEW_MON_IN_CURSOR) {
            ov19_021DFD08(v0, ov19_IsMonUnderCursor(param0) ? UnkEnum_021DFB94_36 : UnkEnum_021DFB94_35);
        } else {
            ov19_021DFD08(v0, UnkEnum_021DFB94_34);
        }

        ov19_021DFD08(v0, UnkEnum_021DFB94_37);

        {
            const PCMonPreview *preview = ov19_GetPCMonPreview(param0);

            if (preview->isEgg == FALSE) {
                ov19_021DFD08(v0, UnkEnum_021DFB94_40);
            }
        }

        ov19_021DFD08(v0, (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) ? UnkEnum_021DFB94_38 : UnkEnum_021DFB94_39);
        ov19_021DFD08(v0, UnkEnum_021DFB94_41);
        ov19_021DFD08(v0, UnkEnum_021DFB94_42);
        ov19_021DFD08(v0, UnkEnum_021DFB94_43);
        break;
    case PC_MODE_DEPOSIT:
        ov19_021DFD08(v0, UnkEnum_021DFB94_39);
        ov19_021DFD08(v0, UnkEnum_021DFB94_37);
        ov19_021DFD08(v0, UnkEnum_021DFB94_41);
        ov19_021DFD08(v0, UnkEnum_021DFB94_42);
        ov19_021DFD08(v0, UnkEnum_021DFB94_43);
        break;
    case PC_MODE_WITHDRAW:
        ov19_021DFD08(v0, UnkEnum_021DFB94_38);
        ov19_021DFD08(v0, UnkEnum_021DFB94_37);
        ov19_021DFD08(v0, UnkEnum_021DFB94_41);
        ov19_021DFD08(v0, UnkEnum_021DFB94_42);
        ov19_021DFD08(v0, UnkEnum_021DFB94_43);
        break;
    case PC_MODE_COMPARE:
        ov19_021DFD08(v0, (ov19_021D5F9C(param0) == 0) ? UnkEnum_021DFB94_52 : UnkEnum_021DFB94_53);
        ov19_021DFD08(v0, (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) ? UnkEnum_021DFB94_38 : UnkEnum_021DFB94_39);
        ov19_021DFD08(v0, UnkEnum_021DFB94_41);
        ov19_021DFD08(v0, UnkEnum_021DFB94_43);
    }
}

void ov19_021DFAD0(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0;
    u32 v1, v2;

    v0 = &(param0->unk_74);
    v1 = ov19_GetCursorItem(param0);
    v2 = ov19_GetPreviewedMonHeldItem(param0);

    ov19_021DFCF8(v0);
    v0->unk_23 = 1;

    if (v1 != 0) {
        if (v2 != 0) {
            ov19_021DFD08(v0, UnkEnum_021DFB94_49);
        } else {
            ov19_021DFD08(v0, UnkEnum_021DFB94_46);
        }

        ov19_021DFD08(v0, UnkEnum_021DFB94_50);
        ov19_021DFD08(v0, UnkEnum_021DFB94_48);
    } else {
        if (v2 != 0) {
            ov19_021DFD08(v0, UnkEnum_021DFB94_47);
            ov19_021DFD08(v0, UnkEnum_021DFB94_50);
            ov19_021DFD08(v0, UnkEnum_021DFB94_48);
        } else {
            ov19_021DFD08(v0, UnkEnum_021DFB94_46);
        }
    }

    ov19_021DFD08(v0, UnkEnum_021DFB94_51);
}

void ov19_021DFB50(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);
    const PCBoxes *unused = ov19_GetPCBoxes(param0);

    ov19_021DFCF8(v0);
    ov19_021DFD08(v0, UnkEnum_021DFB94_00);

    if (ov19_GetBoxMode(param0) != PC_MODE_COMPARE) {
        ov19_021DFD08(v0, UnkEnum_021DFB94_01);
        ov19_021DFD08(v0, UnkEnum_021DFB94_02);
    }

    ov19_021DFD08(v0, UnkEnum_021DFB94_03);

    v0->unk_23 = 2;
}

void ov19_021DFB94(UnkStruct_ov19_021D4DF0 *param0, UnkEnum_021DFB94 param1)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);
    const PCBoxes *pcBoxes = ov19_GetPCBoxes(param0);
    u32 numUnlockedWallpapers;

    ov19_021DFCF8(v0);
    ov19_021DFD08(v0, UnkEnum_021DFB94_04);
    ov19_021DFD08(v0, UnkEnum_021DFB94_05);
    ov19_021DFD08(v0, UnkEnum_021DFB94_06);
    ov19_021DFD08(v0, UnkEnum_021DFB94_07);

    numUnlockedWallpapers = PCBoxes_CountUnlockedWallpapers(pcBoxes);

    if (numUnlockedWallpapers > 0) {
        ov19_021DFD08(v0, UnkEnum_021DFB94_08);
    }

    if (numUnlockedWallpapers > 4) {
        ov19_021DFD08(v0, UnkEnum_021DFB94_09);
    }

    v0->unk_23 = 3;

    if ((param1 >= UnkEnum_021DFB94_04) && (param1 <= UnkEnum_021DFB94_09)) {
        v0->unk_20 = param1 - UnkEnum_021DFB94_04;
    } else {
        GF_ASSERT(0);
    }
}

void ov19_021DFC04(UnkStruct_ov19_021D4DF0 *param0, UnkEnum_021DFB94 param1)
{
    static const u16 v0[][4] = {
        { UnkEnum_021DFB94_10, UnkEnum_021DFB94_11, UnkEnum_021DFB94_12, UnkEnum_021DFB94_13 },
        { UnkEnum_021DFB94_14, UnkEnum_021DFB94_15, UnkEnum_021DFB94_16, UnkEnum_021DFB94_17 },
        { UnkEnum_021DFB94_18, UnkEnum_021DFB94_19, UnkEnum_021DFB94_20, UnkEnum_021DFB94_21 },
        { UnkEnum_021DFB94_22, UnkEnum_021DFB94_23, UnkEnum_021DFB94_24, UnkEnum_021DFB94_25 },
    };
    UnkStruct_ov19_021DF964 *v1 = &(param0->unk_74);
    const PCBoxes *pcBoxes = ov19_GetPCBoxes(param0);
    int v3;

    ov19_021DFCF8(v1);

    if ((param1 >= UnkEnum_021DFB94_04) && (param1 <= UnkEnum_021DFB94_07)) {
        param1 -= UnkEnum_021DFB94_04;

        for (v3 = 0; v3 < 4; v3++) {
            ov19_021DFD08(v1, v0[param1][v3]);
        }
    } else {
        int v4 = 0;
        int v5 = 0;

        if (param1 == UnkEnum_021DFB94_09) {
            v4 = 4;
        }

        for (v3 = 0; v3 < 8; v3++) {
            if (PCBoxes_CheckHasUnlockedWallpaper(pcBoxes, v3)) {
                if (v4) {
                    v4--;
                } else {
                    ov19_021DFD08(v1, UnkEnum_021DFB94_26 + v3);

                    if (++v5 >= 4) {
                        break;
                    }
                }
            }
        }
    }

    v1->unk_23 = 3;
}

void ov19_021DFC80(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);

    ov19_021DFCF8(v0);

    v0->unk_23 = 4;
    v0->unk_22 = param0->pcMonPreview.markings;

    ov19_021DFD08(v0, UnkEnum_021DFB94_56);
    ov19_021DFD08(v0, UnkEnum_021DFB94_57);
    ov19_021DFD08(v0, UnkEnum_021DFB94_58);
    ov19_021DFD08(v0, UnkEnum_021DFB94_59);
    ov19_021DFD08(v0, UnkEnum_021DFB94_60);
    ov19_021DFD08(v0, UnkEnum_021DFB94_61);
    ov19_021DFD08(v0, UnkEnum_021DFB94_44);
    ov19_021DFD08(v0, UnkEnum_021DFB94_45);
}

void ov19_021DFCE4(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);
    v0->unk_22 ^= (1 << param1);
}

static void ov19_021DFCF8(UnkStruct_ov19_021DF964 *param0)
{
    param0->unk_21 = 0;
    param0->unk_20 = 0;
}

static void ov19_021DFD08(UnkStruct_ov19_021DF964 *param0, UnkEnum_021DFB94 param1)
{
    if (param0->unk_21 < 8) {
        param0->unk_00[param0->unk_21++] = param1;
    }
}

int ov19_021DFD2C(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (v0->unk_20) {
            v0->unk_20--;
            return -2;
        } else if (v0->unk_21 >= 3) {
            v0->unk_20 = v0->unk_21 - 1;
            return -2;
        }
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (v0->unk_20 < (v0->unk_21 - 1)) {
            v0->unk_20++;
            return -2;
        } else if (v0->unk_21 >= 3) {
            v0->unk_20 = 0;
            return -2;
        }
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return -1;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return v0->unk_00[v0->unk_20];
    }

    return -3;
}

UnkEnum_021DFB94 ov19_021DFDDC(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);
    return v0->unk_00[v0->unk_20];
}

UnkEnum_021DFB94 ov19_021DFDEC(UnkStruct_ov19_021D4DF0 *param0)
{
    UnkStruct_ov19_021DF964 *v0 = &(param0->unk_74);
    return v0->unk_00[0];
}
