#include "overlay021/ov21_021DDD2C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023FCC_decl.h"

#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021DC9BC.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_app.h"
#include "overlay021/pokedex_graphic_data.h"
#include "overlay021/pokedex_main.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/pokedex_sort_data.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_02023FCC.h"
#include "vram_transfer.h"

typedef struct {
    UnkStruct_ov21_021E68F4 *unk_00;
    PokedexSortData *unk_04;
    UnkStruct_ov21_021E68F4 *unk_08;
} UnkStruct_ov21_021DDDA4;

typedef struct {
    PokedexGraphicData *unk_00;
} UnkStruct_ov21_021DDDF0;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021DDE4C_sub1;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_02023FCC *unk_10;
    TouchScreenHitTable *unk_14;
    UnkStruct_ov21_021DDE4C_sub1 unk_18;
    int unk_20;
    BOOL unk_24;
} UnkStruct_ov21_021DDE4C;

typedef struct {
    Sprite *unk_00;
    SpriteResource *unk_04[4];
    void *unk_14;
    int unk_18;
    int unk_1C;
    NNSG2dPaletteData *unk_20;
    int unk_24;
    int unk_28;
} UnkStruct_ov21_021DDEC8;

static UnkStruct_ov21_021DDDA4 *ov21_021DDDA4(enum HeapId heapID, PokedexApp *param1);
static UnkStruct_ov21_021DDDF0 *ov21_021DDDF0(enum HeapId heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021DDE18(enum HeapId heapID, PokedexApp *param1);
static void ov21_021DDE1C(UnkStruct_ov21_021DDDA4 *param0);
static void ov21_021DDE30(UnkStruct_ov21_021DDDF0 *param0);
static void ov21_021DDE44(UnkStruct_ov21_021D4660 *param0);
static int ov21_021DDE48(void);
static int ov21_021DDE4C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DDE84(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DDEB4(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DDEC8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021DDF80(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021DDFB4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021DE040(UnkStruct_ov21_021DDEC8 *param0);
static void ov21_021DE04C(UnkStruct_ov21_021DDEC8 *param0);
static void ov21_021DE058(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3);
static BOOL ov21_021DE0C4(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3);
static void ov21_021DE2EC(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1, enum HeapId heapID);
static void ov21_021DE334(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE44C(u32 param0, u32 param1, void *param2);
static void ov21_021DE484(UnkStruct_ov21_021DDE4C *param0);
static void ov21_021DE3D0(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE5A4(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE358(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE630(UnkStruct_ov21_021DDDF0 *param0, const UnkStruct_ov21_021DDE4C *param1, const UnkStruct_ov21_021DDDA4 *param2);
static void ov21_021DE100(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2);
static void ov21_021DE128(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2);
static void ov21_021DE13C(UnkStruct_ov21_021DDDF0 *param0, int param1);
static void ov21_021DE1A4(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2);
static void ov21_021DE224(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1);
static void ov21_021DE258(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2);
static void ov21_021DE2E0(UnkStruct_ov21_021DDEC8 *param0);
static void ov21_021DE49C(UnkStruct_ov21_021DDEC8 *param0, const UnkStruct_ov21_021DDDA4 *param1, const UnkStruct_ov21_021DDE4C *param2);
static int ov21_021DE5DC(int param0);
static void ov21_021DE4D4(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, const UnkStruct_ov21_021DDDA4 *param2, int param3);

void ov21_021DDD2C(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021DDDA4 *v0;
    UnkStruct_ov21_021DDDF0 *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021DDDA4(heapID, param1);
    v1 = ov21_021DDDF0(heapID, param1);
    v2 = ov21_021DDE18(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021DDE48();

    param0->unk_08[0] = ov21_021DDE4C;
    param0->unk_08[1] = ov21_021DDE84;
    param0->unk_08[2] = ov21_021DDEB4;
    param0->unk_14[0] = ov21_021DDEC8;
    param0->unk_14[1] = ov21_021DDF80;
    param0->unk_14[2] = ov21_021DDFB4;
}

void ov21_021DDD8C(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021DDE1C(param0->unk_00);
    ov21_021DDE30(param0->unk_04);
    ov21_021DDE44(param0->unk_20);
}

static UnkStruct_ov21_021DDDA4 *ov21_021DDDA4(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DDDA4 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DDDA4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DDDA4));

    v0->unk_00 = ov21_021D1410(param1, 6);
    v0->unk_08 = ov21_021D1430(param1, 3);
    v0->unk_04 = ov21_021D13EC(param1);

    return v0;
}

static UnkStruct_ov21_021DDDF0 *ov21_021DDDF0(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DDDF0 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DDDF0));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DDDF0));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021DDE18(enum HeapId heapID, PokedexApp *param1)
{
    return NULL;
}

static void ov21_021DDE1C(UnkStruct_ov21_021DDDA4 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DDE30(UnkStruct_ov21_021DDDF0 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DDE44(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021DDE48(void)
{
    return 0;
}

static int ov21_021DDE4C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DDDA4 *v0 = param1;
    UnkStruct_ov21_021DDE4C *v1 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov21_021DDE4C));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021DDE4C));

    param0->unk_08 = v1;

    ov21_021DE5A4(v1, v0);
    ov21_021DE2EC(v1, v0, param0->heapID);

    return 1;
}

static int ov21_021DDE84(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DDDA4 *v0 = param1;
    UnkStruct_ov21_021DDE4C *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (ov21_021E33AC(v0->unk_08)) {
        ov21_021DE334(v1, v0);
    }

    return 0;
}

static int ov21_021DDEB4(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DDDA4 *v0 = param1;
    UnkStruct_ov21_021DDE4C *v1 = param0->unk_08;

    ov21_021DE484(v1);
    Heap_FreeToHeap(v1);

    return 1;
}

static int ov21_021DDEC8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DDDA4 *v0 = param2;
    const UnkStruct_ov21_021DDE4C *v1 = param3->unk_08;
    UnkStruct_ov21_021DDDF0 *v2 = param0;
    UnkStruct_ov21_021DDEC8 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_ov21_021DDEC8));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021DDEC8));
        param1->unk_00++;
        break;
    case 1:
        ov21_021DE100(v3, v2, param1->heapID);
        ov21_021DE49C(v3, v0, v1);
        ov21_021DE4D4(v3, v2, v0, param1->heapID);
        ov21_021DE058(v3, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        ov21_021DE4D4(v3, v2, v0, param1->heapID);

        if (ov21_021DE0C4(v3, v2, v0, 1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021DE4D4(v3, v2, v0, param1->heapID);
        ov21_021D25AC(&v2->unk_00->unk_1E0, 0);
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021DDF80(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DDDA4 *v0 = param2;
    const UnkStruct_ov21_021DDE4C *v1 = param3->unk_08;
    UnkStruct_ov21_021DDDF0 *v2 = param0;
    UnkStruct_ov21_021DDEC8 *v3 = param1->unk_08;

    ov21_021DE49C(v3, v0, v1);
    ov21_021DE630(v2, v1, v0);
    ov21_021DE4D4(v3, v2, v0, param1->heapID);

    return 0;
}

static int ov21_021DDFB4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DDDA4 *v0 = param2;
    const UnkStruct_ov21_021DDE4C *v1 = param3->unk_08;
    UnkStruct_ov21_021DDDF0 *v2 = param0;
    UnkStruct_ov21_021DDEC8 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021D25AC(&v2->unk_00->unk_1E0, 1);
        ov21_021DE058(v3, v2, v0, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021DE0C4(v3, v2, v0, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021DE128(v3, v2, param1->heapID);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(v3->unk_14);
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_00++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021DE040(UnkStruct_ov21_021DDEC8 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_XLU);
}

static void ov21_021DE04C(UnkStruct_ov21_021DDEC8 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021DE058(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3)
{
    ov21_021DE040(param0);

    if (ov21_021E33A4(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_18C, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_18C, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021DE0C4(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_18C);
    } else {
        v0 = BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN);
    }

    if (v0) {
        if (param3) {
            ov21_021DE04C(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DE100(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2)
{
    ov21_021DE13C(param1, param2);
    ov21_021DE1A4(param0, param1, param2);
    ov21_021DE258(param0, param1, param2);
}

static void ov21_021DE128(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2)
{
    ov21_021DE2E0(param0);
    ov21_021DE224(param0, param1);
}

static void ov21_021DE13C(UnkStruct_ov21_021DDDF0 *param0, int param1)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 34, param0->unk_00->bgConfig, 6, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 69, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 6);
}

static void ov21_021DE1A4(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_04[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, 105, 1, 105 + 6000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_04[0]);
    SpriteResource_ReleaseData(param0->unk_04[0]);

    param0->unk_04[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, 103, 1, 103 + 6000, 2, param2);
    param0->unk_04[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, 104, 1, 104 + 6000, 3, param2);
}

static void ov21_021DE224(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_04[0]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_04[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_04[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_04[3]);
}

static void ov21_021DE258(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;

    SpriteResourcesHeader_Init(&v0, 105 + 6000, 11 + 2100, 103 + 6000, 104 + 6000, 0xffffffff, 0xffffffff, 0, 1, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;
    v1.position.x = 0;
    v1.position.y = 0;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00 = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00, 0);
}

static void ov21_021DE2E0(UnkStruct_ov21_021DDEC8 *param0)
{
    Sprite_Delete(param0->unk_00);
}

static void ov21_021DE2EC(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1, enum HeapId heapID)
{
    param0->unk_14 = Heap_AllocFromHeap(heapID, sizeof(TouchScreenHitTable) * 1);
    param0->unk_14[0].circle.code = TOUCHSCREEN_USE_CIRCLE;
    param0->unk_14[0].circle.x = param0->unk_00;
    param0->unk_14[0].circle.y = param0->unk_04;
    param0->unk_14[0].circle.r = 32;
    param0->unk_18.unk_00 = param1;
    param0->unk_18.unk_04 = param0;
    param0->unk_10 = sub_02023FCC(param0->unk_14, 1, ov21_021DE44C, &param0->unk_18, heapID);
}

static void ov21_021DE334(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    sub_0202404C(param0->unk_10);
    ov21_021DE3D0(param0, param1);

    param0->unk_14[0].circle.x = param0->unk_00;
    param0->unk_14[0].circle.y = param0->unk_04;
}

static void ov21_021DE358(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    s32 v0;

    if (gSystem.touchHeld) {
        return;
    }

    if ((ov21_021E33BC(param1->unk_08) == 1) && (ov21_021D3998(param1->unk_04) == 2)) {
        v0 = ov21_021DCA28(param1->unk_00);

        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            v0--;

            if (v0 < 0) {
                v0 = 0;
            }

            ov21_021DCA30(param1->unk_00, v0);
            ov21_021DE5A4(param0, param1);
            param0->unk_24 = 1;
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            v0++;

            if (v0 >= 3) {
                v0 = 3 - 1;
            }

            ov21_021DCA30(param1->unk_00, v0);
            ov21_021DE5A4(param0, param1);
            param0->unk_24 = 1;
        }
    }
}

static void ov21_021DE3D0(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    int v0;
    int v1;

    param0->unk_24 = 0;

    if (param0->unk_20) {
        if (gSystem.touchHeld) {
            param0->unk_00 = gSystem.touchX - param0->unk_08;
            param0->unk_04 = gSystem.touchY - param0->unk_0C;

            if (param0->unk_00 < 24) {
                param0->unk_00 = 24;
            }

            if (param0->unk_00 > 246) {
                param0->unk_00 = 246;
            }

            if (param0->unk_04 < 64) {
                param0->unk_04 = 64;
            }

            v1 = ov21_021DE5DC(param0->unk_00);

            if (param0->unk_04 > (132 + v1)) {
                param0->unk_04 = (132 + v1);
            }

            v0 = param0->unk_00 / 85;

            if (v0 > 2) {
                v0 = 2;
            }

            ov21_021DCA30(param1->unk_00, v0);
        } else {
            param0->unk_20 = 0;
        }
    } else {
        ov21_021DE358(param0, param1);
    }
}

static void ov21_021DE44C(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021DDE4C_sub1 *v0 = param2;
    UnkStruct_ov21_021DDDA4 *v1 = v0->unk_00;
    UnkStruct_ov21_021DDE4C *v2 = v0->unk_04;

    switch (param1) {
    case 0:
        ov21_021E33B4(v1->unk_08, 1);
        Sound_PlayEffect(1501);

        v2->unk_20 = 1;
        v2->unk_08 = gSystem.touchX - v2->unk_00;
        v2->unk_0C = gSystem.touchY - v2->unk_04;
        break;
    default:
        break;
    }
}

static void ov21_021DE484(UnkStruct_ov21_021DDE4C *param0)
{
    sub_02024034(param0->unk_10);
    Heap_FreeToHeap(param0->unk_14);
    param0->unk_14 = NULL;
}

static void ov21_021DE49C(UnkStruct_ov21_021DDEC8 *param0, const UnkStruct_ov21_021DDDA4 *param1, const UnkStruct_ov21_021DDE4C *param2)
{
    VecFx32 v0;

    v0.x = param2->unk_00 << FX32_SHIFT;
    v0.y = param2->unk_04 << FX32_SHIFT;
    v0.y += (192 << FX32_SHIFT);

    Sprite_SetPosition(param0->unk_00, &v0);
    Sprite_SetAnim(param0->unk_00, ov21_021DCA28(param1->unk_00));
}

static void ov21_021DE4D4(UnkStruct_ov21_021DDEC8 *param0, UnkStruct_ov21_021DDDF0 *param1, const UnkStruct_ov21_021DDDA4 *param2, int param3)
{
    int v0;
    int v1 = 0;
    BOOL v2;

    v0 = ov21_021DCA28(param2->unk_00);

    if ((param0->unk_18 != v0) || (param0->unk_14 == NULL) || (param0->unk_1C != param0->unk_18)) {
        if (param0->unk_1C != v0) {
            param0->unk_18 = param0->unk_1C;
            param0->unk_24 = 0;
        }

        switch (param0->unk_24) {
        case 0:
            param0->unk_1C = v0;

            if (param0->unk_14) {
                Heap_FreeToHeap(param0->unk_14);
            }

            param0->unk_14 = ov21_021D27E0(param1->unk_00, 15 + param0->unk_18, &param0->unk_20, param3);
            param0->unk_28 = 0;

            if (param0->unk_18 > v0) {
                v1 = 1;
            } else {
                v1 = 2;
            }

            param0->unk_24++;
            break;
        case 1:
            if (param0->unk_14) {
                Heap_FreeToHeap(param0->unk_14);
            }

            param0->unk_14 = ov21_021D27E0(param1->unk_00, 15 + param0->unk_1C, &param0->unk_20, param3);
            param0->unk_28 = 0;

            if (param0->unk_18 < param0->unk_1C) {
                v1 = 1;
            } else {
                v1 = 2;
            }

            param0->unk_24++;
            break;
        case 2:
            v1 = 0;
            param0->unk_24 = 0;
            param0->unk_18 = param0->unk_1C;
            break;
        }

        v2 = VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_SUB, 2 * 32, &((u8 *)(param0->unk_20->pRawData))[(v1 * 32)], 32);
        GF_ASSERT(v2);
    }
}

static void ov21_021DE5A4(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    int v0 = ov21_021DCA28(param1->unk_00);

    switch (v0) {
    case 0:
        param0->unk_00 = 32;
        param0->unk_04 = 128;
        break;
    case 1:
        param0->unk_00 = 128;
        param0->unk_04 = 96;
        break;
    case 2:
        param0->unk_00 = 224;
        param0->unk_04 = 128;
        break;
    }
}

static int ov21_021DE5DC(int param0)
{
    int v0;
    int v1;

    if ((param0 < 40) || ((256 - 40) < param0)) {
        return 48;
    }

    param0 -= 40;

    v0 = ((180 * 0xffff) / 360) * param0;
    v0 = v0 / (256 - (40 * 2));
    v1 = FX_Mul(FX_SinIdx((u16)v0), 48 << FX32_SHIFT);
    v1 >>= FX32_SHIFT;
    v1 = 48 - v1;

    return v1;
}

static void ov21_021DE630(UnkStruct_ov21_021DDDF0 *param0, const UnkStruct_ov21_021DDE4C *param1, const UnkStruct_ov21_021DDDA4 *param2)
{
    PokedexGraphicData *v0 = param0->unk_00;

    if (ov21_021E33BC(param2->unk_08) == 1) {
        if (param1->unk_24 == 0) {
            ov21_021D2574(v0, param1->unk_00, param1->unk_04, 32, 32);
        } else {
            ov21_021D25E8(v0, param1->unk_00, param1->unk_04, 32, 32);
        }
    }
}
