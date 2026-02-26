#include "applications/pc_boxes/ov19_021DE3E8.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/ov19_021D8B54.h"
#include "applications/pc_boxes/ov19_021DC5F0.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8E00.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DE3E8_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static const struct {
    u32 unk_00;
    u32 unk_04;
} Unk_ov19_021E04CC[] = {
    { 1536 * 0x20, 7 },
    { 1552 * 0x20, 8 },
    { 1568 * 0x20, 9 },
};

struct UnkStruct_ov19_021DE3E8_t {
    BOOL unk_00;
    UnkStruct_ov19_021D61B0 *unk_04;
    const BoxApplication *unk_08;
    BgConfig *unk_0C;
    SpriteList *unk_10;
    UnkStruct_ov19_021DA384 *unk_14;
    UnkStruct_ov19_021D8E00 *unk_18;
    Sprite *unk_1C[3];
    int unk_28[3];
    int unk_34;
    int unk_38;
};

typedef struct {
    UnkStruct_ov19_021DE3E8 *unk_00;
    Sprite *unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    fx32 unk_20;
    fx32 unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
} UnkStruct_ov19_021DE858;

static void ov19_021DE450(UnkStruct_ov19_021DE3E8 *param0);
static void ov19_021DE51C(UnkStruct_ov19_021DE3E8 *param0);
static int ov19_021DE538(UnkStruct_ov19_021DE3E8 *param0, int param1);
static int ov19_021DE560(UnkStruct_ov19_021DE3E8 *param0, int param1);
static void ov19_021DE57C(UnkStruct_ov19_021DE3E8 *param0, int param1, int param2);
static void ov19_021DE59C(UnkStruct_ov19_021DE3E8 *param0);
static void ov19_021DE5D4(UnkStruct_ov19_021DE3E8 *param0);
static void ov19_021DE694(UnkStruct_ov19_021DE3E8 *param0, VecFx32 *param1, u32 *param2);
static void ov19_021DE718(UnkStruct_ov19_021DE3E8 *param0, int param1, int param2);
static void ov19_021DE858(UnkStruct_ov19_021DE3E8 *param0, int param1, const VecFx32 *param2, int param3, int param4);
static void ov19_021DE8E0(SysTask *param0, void *param1);

BOOL ov19_021DE3E8(UnkStruct_ov19_021DE3E8 **param0, UnkStruct_ov19_021D61B0 *param1, const BoxApplication *param2, BgConfig *param3, SpriteList *param4)
{
    UnkStruct_ov19_021DE3E8 *v0 = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(UnkStruct_ov19_021DE3E8));

    if (v0) {
        v0->unk_04 = param1;
        v0->unk_08 = param2;
        v0->unk_0C = param3;
        v0->unk_10 = param4;
        v0->unk_14 = ov19_021D77D8(param1);
        v0->unk_18 = ov19_021D77F4(param1);
        v0->unk_34 = 0;
        v0->unk_00 = (BoxApp_GetBoxMode(param2) == PC_MODE_MOVE_ITEMS);

        ov19_021DE450(v0);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov19_021DE440(UnkStruct_ov19_021DE3E8 *param0)
{
    ov19_021DE51C(param0);
    Heap_Free(param0);
}

static void ov19_021DE450(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        SpriteResourcesHeader v0;
        NNSG2dImageProxy v1;
        NNSG2dCharacterData *v2;
        void *v3;
        int v4;

        ov19_021D783C(&v0, &v1, ov19_021D77D0(param0->unk_04), param0->unk_14->unk_1C, param0->unk_14->unk_20, 0);
        v3 = Graphics_GetCharData(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(1, 1), 0, &v2, HEAP_ID_BOX_GRAPHICS);

        if (v3) {
            int v5;

            v2->mappingType = GX_GetOBJVRamModeChar();

            for (v5 = 0; v5 < 3; v5++) {
                NNS_G2dInitImageProxy(&v1);
                NNS_G2dLoadImage1DMapping(v2, Unk_ov19_021E04CC[v5].unk_00, NNS_G2D_VRAM_TYPE_2DMAIN, &v1);

                param0->unk_1C[v5] = ov19_021D785C(param0->unk_10, &v0, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

                Sprite_SetExplicitPalette(param0->unk_1C[v5], Unk_ov19_021E04CC[v5].unk_04);
                Sprite_SetDrawFlag(param0->unk_1C[v5], FALSE);
                Sprite_SetAffineOverwriteMode(param0->unk_1C[v5], 1);

                param0->unk_28[v5] = 0;
            }

            Heap_Free(v3);
        }
    } else {
        int v6;

        for (v6 = 0; v6 < 3; v6++) {
            param0->unk_1C[v6] = NULL;
            param0->unk_28[v6] = 0;
        }
    }
}

static void ov19_021DE51C(UnkStruct_ov19_021DE3E8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_1C[v0]) {
            Sprite_Delete(param0->unk_1C[v0]);
        }
    }
}

static int ov19_021DE538(UnkStruct_ov19_021DE3E8 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_28[v0] == 0) {
            param0->unk_28[v0] = param1;
            return v0;
        }
    }

    return -1;
}

static int ov19_021DE560(UnkStruct_ov19_021DE3E8 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_28[v0] == param1) {
            return v0;
        }
    }

    return -1;
}

static void ov19_021DE57C(UnkStruct_ov19_021DE3E8 *param0, int param1, int param2)
{
    param0->unk_28[param1] = param2;
}

void ov19_021DE584(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    ov19_021DE59C(param0);
    ov19_021DE5D4(param0);
}

static void ov19_021DE59C(UnkStruct_ov19_021DE3E8 *param0)
{
    u32 v0 = BoxApp_GetPreviewedMonHeldItem(param0->unk_08);

    if (v0 != 0) {
        int v1 = ov19_021DE538(param0, 1);

        ov19_021DE718(param0, v1, v0);
        Sprite_SetAnim(param0->unk_1C[v1], 6);
        Sprite_SetDrawFlag(param0->unk_1C[v1], TRUE);
    }
}

static void ov19_021DE5D4(UnkStruct_ov19_021DE3E8 *param0)
{
    u32 item = BoxApp_GetCursorItem(param0->unk_08);

    if (item != ITEM_NONE) {
        VecFx32 v1;
        u32 v2;
        int v3 = ov19_021DE538(param0, 3);

        ov19_021D9B1C(param0->unk_18, &v1);

        v1.x += (0 << FX32_SHIFT);
        v1.y += (8 << FX32_SHIFT);

        if (BoxApp_GetCursorLocation(param0->unk_08) == CURSOR_IN_PARTY) {
            v2 = 1;
        } else {
            v2 = 2;
        }

        Graphics_LoadObjectTiles(16, Item_FileID(item, 1), 0, Unk_ov19_021E04CC[v3].unk_00, 0, 0, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadPalette(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, 2), 1, Unk_ov19_021E04CC[v3].unk_04 * 0x20, 0x20, HEAP_ID_BOX_GRAPHICS);
        Sprite_SetExplicitPriority(param0->unk_1C[v3], v2);

        BoxGraphics_SetSpritePriority(param0->unk_1C[v3], 2);

        Sprite_SetPosition(param0->unk_1C[v3], &v1);
        Sprite_SetAnim(param0->unk_1C[v3], 0);
        Sprite_SetDrawFlag(param0->unk_1C[v3], TRUE);
    }
}

static void ov19_021DE694(UnkStruct_ov19_021DE3E8 *param0, VecFx32 *param1, u32 *param2)
{
    param1->z = 0;

    if (BoxApp_GetCursorLocation(param0->unk_08) == CURSOR_IN_PARTY) {
        s32 v0, v1;

        ov19_021DCD30(ov19_021D77E8(param0->unk_04), BoxApp_GetCursorPartyPosition(param0->unk_08), &v0, &v1);

        param1->x = (v0 + 10) << FX32_SHIFT;
        param1->y = (v1 + 8) << FX32_SHIFT;
        *param2 = 1;
    } else {
        param1->x = 112 + ov19_021D7820(param0->unk_04) + BoxApp_GetCursorBoxCol(param0->unk_08) * 24 + 10;
        param1->y = 40 + BoxApp_GetCursorBoxRow(param0->unk_08) * 24 + 8;
        param1->x <<= FX32_SHIFT;
        param1->y <<= FX32_SHIFT;
        *param2 = 2;
    }
}

static void ov19_021DE718(UnkStruct_ov19_021DE3E8 *param0, int param1, int param2)
{
    if (param1 >= 0) {
        VecFx32 v0;
        u32 v1;

        ov19_021DE694(param0, &v0, &v1);

        Graphics_LoadObjectTiles(16, Item_FileID(param2, 1), 0, Unk_ov19_021E04CC[param1].unk_00, 0, 0, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadPalette(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(param2, 2), 1, Unk_ov19_021E04CC[param1].unk_04 * 0x20, 0x20, HEAP_ID_BOX_GRAPHICS);
        Sprite_SetExplicitPriority(param0->unk_1C[param1], v1);

        BoxGraphics_SetSpritePriority(param0->unk_1C[param1], 3);
        Sprite_SetPosition(param0->unk_1C[param1], &v0);
    }
}

void ov19_021DE7A0(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0, v1;

        v0 = ov19_021DE560(param0, 1);

        if (v0 >= 0) {
            ov19_021DE57C(param0, v0, 2);
            Sprite_SetAnim(param0->unk_1C[v0], 2);
        }

        v1 = BoxApp_GetPreviewedMonHeldItem(param0->unk_08);

        if (v1 != 0) {
            v0 = ov19_021DE538(param0, 1);

            if (v0 >= 0) {
                ov19_021DE718(param0, v0, v1);
                Sprite_SetAnim(param0->unk_1C[v0], 1);
                Sprite_SetDrawFlag(param0->unk_1C[v0], TRUE);
            }
        }
    }
}

BOOL ov19_021DE800(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00 == 0) {
        return 1;
    } else {
        int v0 = ov19_021DE560(param0, 1);

        if (v0 >= 0) {
            if (Sprite_IsAnimated(param0->unk_1C[v0])) {
                return 0;
            }
        }

        v0 = ov19_021DE560(param0, 2);

        if (v0 >= 0) {
            if (Sprite_IsAnimated(param0->unk_1C[v0])) {
                return 0;
            }

            ov19_021DE57C(param0, v0, 0);
        }

        return 1;
    }
}

static void ov19_021DE858(UnkStruct_ov19_021DE3E8 *param0, int param1, const VecFx32 *param2, int param3, int param4)
{
    UnkStruct_ov19_021DE858 *v0 = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(UnkStruct_ov19_021DE858));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_1C[param1];
        v0->unk_08 = *(Sprite_GetPosition(v0->unk_04));
        v0->unk_14 = *param2;
        v0->unk_20 = (v0->unk_14.x - v0->unk_08.x) / param4;
        v0->unk_24 = (v0->unk_14.y - v0->unk_08.y) / param4;
        v0->unk_2C = param4;
        v0->unk_28 = param3;
        v0->unk_30 = 0;

        if (ov19_021D77C8(ov19_021DE8E0, v0, 0)) {
            param0->unk_34++;
        } else {
            Heap_Free(v0);
        }
    }
}

static void ov19_021DE8E0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DE858 *v0 = param1;

    switch (v0->unk_30) {
    case 0:
        if (v0->unk_2C) {
            v0->unk_08.x += v0->unk_20;
            v0->unk_08.y += v0->unk_24;
            Sprite_SetPosition(v0->unk_04, &v0->unk_08);
            v0->unk_2C--;
        } else {
            Sprite_SetPosition(v0->unk_04, &v0->unk_14);
            v0->unk_30++;
        }
        break;
    case 1:
        if (Sprite_IsAnimated(v0->unk_04) == 0) {
            BoxGraphics_SetSpritePriority(v0->unk_04, v0->unk_28);
            v0->unk_00->unk_34--;
            SysTask_Done(param0);
            ov19_021D79B8(v0, NULL, NULL);
        }
        break;
    }
}

void ov19_021DE954(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 1);

        if (v0 >= 0) {
            VecFx32 v1;

            ov19_021D9B1C(param0->unk_18, &v1);

            v1.x += (0 << FX32_SHIFT);
            v1.y += (8 << FX32_SHIFT);

            ov19_021DE57C(param0, v0, 3);
            Sprite_SetAnim(param0->unk_1C[v0], 3);
            ov19_021DE858(param0, v0, &v1, 2, 12);
        }
    }
}

BOOL ov19_021DE9A8(UnkStruct_ov19_021DE3E8 *param0)
{
    return param0->unk_34 == 0;
}

void ov19_021DE9B8(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 1);

        if (v0 >= 0) {
            ov19_021DE57C(param0, v0, 2);
            Sprite_SetAnim(param0->unk_1C[v0], 2);
        }
    }
}

BOOL ov19_021DE9E4(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 2);

        if (v0 >= 0) {
            if (Sprite_IsAnimated(param0->unk_1C[v0])) {
                return 0;
            }

            ov19_021DE57C(param0, v0, 0);
        }
    }

    return 1;
}

void ov19_021DEA18(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 3);

        if (v0 >= 0) {
            VecFx32 v1;
            u32 v2;

            ov19_021DE694(param0, &v1, &v2);
            ov19_021DE57C(param0, v0, 1);
            Sprite_SetAnim(param0->unk_1C[v0], 4);
            ov19_021DE858(param0, v0, &v1, 3, 12);
        }
    }
}

BOOL ov19_021DEA64(UnkStruct_ov19_021DE3E8 *param0)
{
    return param0->unk_34 == 0;
}

void ov19_021DEA74(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 3);
        int v1 = ov19_021DE560(param0, 1);

        if ((v0 >= 0) && (v1 >= 0)) {
            VecFx32 v2;
            u32 v3;

            ov19_021DE694(param0, &v2, &v3);
            ov19_021DE57C(param0, v0, 1);
            Sprite_SetAnim(param0->unk_1C[v0], 4);

            ov19_021DE858(param0, v0, &v2, 3, 12);
            ov19_021D9B1C(param0->unk_18, &v2);

            v2.x += (0 << FX32_SHIFT);
            v2.y += (8 << FX32_SHIFT);

            ov19_021DE57C(param0, v1, 3);
            Sprite_SetAnim(param0->unk_1C[v1], 3);
            ov19_021DE858(param0, v1, &v2, 2, 12);
        }
    }
}

BOOL ov19_021DEB08(UnkStruct_ov19_021DE3E8 *param0)
{
    return param0->unk_34 == 0;
}

void ov19_021DEB18(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 3);

        if (v0 >= 0) {
            Sprite_SetAnim(param0->unk_1C[v0], 5);
            param0->unk_38 = v0;
            return;
        }

        v0 = ov19_021DE560(param0, 1);

        if (v0 >= 0) {
            Sprite_SetAnim(param0->unk_1C[v0], 2);
            param0->unk_38 = v0;
            return;
        }

        param0->unk_38 = -1;
    }
}

BOOL ov19_021DEB60(UnkStruct_ov19_021DE3E8 *param0)
{
    if (param0->unk_00) {
        if (param0->unk_38 != -1) {
            if (Sprite_IsAnimated(param0->unk_1C[param0->unk_38])) {
                return 0;
            }

            ov19_021DE57C(param0, param0->unk_38, 0);
            param0->unk_38 = -1;
        }
    }

    return 1;
}

void ov19_021DEB9C(UnkStruct_ov19_021DE3E8 *param0, const VecFx32 *param1)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 3);

        if (v0 >= 0) {
            VecFx32 v1 = *param1;

            v1.x += (0 << FX32_SHIFT);
            v1.y += (8 << FX32_SHIFT);

            Sprite_SetPosition(param0->unk_1C[v0], &v1);
        }
    }
}

void ov19_021DEBDC(UnkStruct_ov19_021DE3E8 *param0, u32 param1)
{
    if (param0->unk_00) {
        int v0 = ov19_021DE560(param0, 3);

        if (v0 >= 0) {
            Sprite_SetExplicitPriority(param0->unk_1C[v0], param1);
        }
    }
}
