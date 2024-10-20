#include "unk_0200112C.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "struct_decls/struct_02013A04_decl.h"
#include "struct_defs/struct_02013A04_t.h"

#include "overlay084/struct_ov84_02240FA8.h"

#include "colored_arrow.h"
#include "core_sys.h"
#include "font.h"
#include "heap.h"
#include "text.h"
#include "unk_02018340.h"

typedef struct {
    u8 unk_00_0 : 4;
    u8 unk_00_4 : 4;
    u8 unk_01_0 : 4;
    u8 unk_02_0 : 6;
    u8 unk_03_0 : 6;
    u8 unk_04_0 : 7;
    u8 unk_04_7 : 1;
} UnkStruct_0200112C_sub1;

typedef struct UnkStruct_0200112C_t {
    UnkStruct_ov84_02240FA8 unk_00;
    UnkStruct_0200112C_sub1 unk_1F;
    ColoredArrow *unk_24;
    u16 unk_28;
    u16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
    u8 unk_30;
} BmpList;

static void sub_020015D0(BmpList *param0, void *param1, u8 param2, u8 param3);
static void sub_02001688(BmpList *param0, u16 param1, u16 param2, u16 param3);
static void sub_02001720(BmpList *param0);
static void sub_02001778(BmpList *param0, u16 param1);
static u8 sub_020017E0(BmpList *param0, u8 param1);
static void sub_02001900(BmpList *param0, u8 param1, u8 param2);
static u8 sub_02001A18(BmpList *param0, u8 param1, u8 param2, u8 param3);
static void sub_02001AD8(BmpList *param0, u8 param1);

BmpList *sub_0200112C(const UnkStruct_ov84_02240FA8 *param0, u16 param1, u16 param2, u8 param3)
{
    BmpList *v0 = (BmpList *)Heap_AllocFromHeap(param3, sizeof(BmpList));

    v0->unk_00 = *param0;
    v0->unk_24 = ColoredArrow_New(param3);
    v0->unk_28 = param1;
    v0->unk_2A = param2;
    v0->unk_2C = 0;
    v0->unk_2D = 0;
    v0->unk_2E = 0xff;
    v0->unk_2F = 0;
    v0->unk_30 = param3;

    v0->unk_1F.unk_00_0 = v0->unk_00.unk_17_4;
    v0->unk_1F.unk_00_4 = v0->unk_00.unk_18_0;
    v0->unk_1F.unk_01_0 = v0->unk_00.unk_18_4;
    v0->unk_1F.unk_02_0 = v0->unk_00.unk_1A_0;
    v0->unk_1F.unk_04_0 = v0->unk_00.unk_1A_9;
    v0->unk_1F.unk_04_7 = 0;

    if (v0->unk_00.unk_10 < v0->unk_00.unk_12) {
        v0->unk_00.unk_12 = v0->unk_00.unk_10;
    }

    ColoredArrow_SetColor(v0->unk_24, TEXT_COLOR(v0->unk_00.unk_17_4, v0->unk_00.unk_18_4, v0->unk_00.unk_18_0));
    BGL_FillWindow(v0->unk_00.unk_0C, v0->unk_00.unk_18_0);
    sub_02001688(v0, v0->unk_28, 0, v0->unk_00.unk_12);
    sub_02001720(v0);
    sub_02001AD8(v0, 1);
    sub_0201A954(param0->unk_0C);

    return v0;
}

u32 sub_02001288(BmpList *param0)
{
    u16 v0, v1;

    param0->unk_2F = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        return param0->unk_00.unk_00[param0->unk_28 + param0->unk_2A].unk_04;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        return 0xfffffffe;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        if (sub_02001A18(param0, 1, 1, 0) == 0) {
            param0->unk_2F = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        if (sub_02001A18(param0, 1, 1, 1) == 0) {
            param0->unk_2F = 2;
        }

        return 0xffffffff;
    }

    switch (param0->unk_00.unk_1A_7) {
    default:
    case 0:
        v0 = 0;
        v1 = 0;
        break;
    case 1:
        v0 = (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT);
        v1 = (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT);
        break;
    case 2:
        v0 = (gCoreSys.pressedKeysRepeatable & PAD_BUTTON_L);
        v1 = (gCoreSys.pressedKeysRepeatable & PAD_BUTTON_R);
        break;
    }

    if (v0) {
        if (sub_02001A18(param0, 1, (u8)param0->unk_00.unk_12, 0) == 0) {
            param0->unk_2F = 3;
        }

        return 0xffffffff;
    }

    if (v1) {
        if (sub_02001A18(param0, 1, (u8)param0->unk_00.unk_12, 1) == 0) {
            param0->unk_2F = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

void sub_02001384(BmpList *param0, u16 *param1, u16 *param2)
{
    if (param1 != NULL) {
        *param1 = param0->unk_28;
    }

    if (param2 != NULL) {
        *param2 = param0->unk_2A;
    }

    ColoredArrow_Free(param0->unk_24);
    Heap_FreeToHeapExplicit(param0->unk_30, param0);
}

void sub_020013AC(BmpList *param0)
{
    BGL_FillWindow(param0->unk_00.unk_0C, param0->unk_00.unk_18_0);
    sub_02001688(param0, param0->unk_28, 0, param0->unk_00.unk_12);
    sub_02001720(param0);
    sub_0201A954(param0->unk_00.unk_0C);
}

void sub_020013D8(BmpList *param0, u8 param1, u8 param2, u8 param3)
{
    param0->unk_00.unk_17_4 = param1;
    param0->unk_00.unk_18_0 = param2;
    param0->unk_00.unk_18_4 = param3;
}

u32 sub_02001408(BmpList *param0, UnkStruct_ov84_02240FA8 *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 *param6, u16 *param7)
{
    if (param1) {
        param0->unk_00 = *param1;
    }

    param0->unk_28 = param2;
    param0->unk_2A = param3;
    param0->unk_2C = 0;
    param0->unk_2D = 0;

    if (param5 == PAD_KEY_UP) {
        sub_02001A18(param0, param4, 1, 0);
    } else if (param5 == PAD_KEY_DOWN) {
        sub_02001A18(param0, param4, 1, 1);
    }

    if (param6 != NULL) {
        *param6 = param0->unk_28;
    }

    if (param7 != NULL) {
        *param7 = param0->unk_2A;
    }

    return 0xffffffff;
}

void sub_0200147C(BmpList *param0, u8 param1, u8 param2, u8 param3)
{
    param0->unk_1F.unk_00_0 = param1;
    param0->unk_1F.unk_00_4 = param2;
    param0->unk_1F.unk_01_0 = param3;
    param0->unk_1F.unk_04_7 = 1;
}

void sub_020014D0(BmpList *param0, u16 *param1)
{
    *param1 = (u16)(param0->unk_28 + param0->unk_2A);
}

void sub_020014DC(BmpList *param0, u16 *param1, u16 *param2)
{
    if (param1 != NULL) {
        *param1 = param0->unk_28;
    }

    if (param2 != NULL) {
        *param2 = param0->unk_2A;
    }
}

u8 sub_020014F0(BmpList *param0)
{
    return param0->unk_2F;
}

u32 sub_020014F8(BmpList *param0, u16 param1)
{
    return param0->unk_00.unk_00[param1].unk_04;
}

u32 sub_02001504(BmpList *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        v0 = (u32)param0->unk_00.unk_04;
        break;
    case 1:
        v0 = (u32)param0->unk_00.unk_08;
        break;
    case 2:
        v0 = (u32)param0->unk_00.unk_10;
        break;
    case 3:
        v0 = (u32)param0->unk_00.unk_12;
        break;
    case 5:
        v0 = (u32)param0->unk_00.unk_14;
        break;
    case 6:
        v0 = (u32)param0->unk_00.unk_15;
        break;
    case 7:
        v0 = (u32)param0->unk_00.unk_16;
        break;
    case 8:
        v0 = (u32)param0->unk_00.unk_17_0;
        break;
    case 9:
        v0 = (u32)Font_GetAttribute(param0->unk_00.unk_1A_9, 1) + param0->unk_00.unk_1A_3;
        break;
    case 10:
        v0 = (u32)param0->unk_00.unk_17_4;
        break;
    case 11:
        v0 = (u32)param0->unk_00.unk_18_0;
        break;
    case 12:
        v0 = (u32)param0->unk_00.unk_18_4;
        break;
    case 13:
        v0 = (u32)param0->unk_00.unk_1A_0;
        break;
    case 14:
        v0 = (u32)param0->unk_00.unk_1A_3;
        break;
    case 15:
        v0 = (u32)param0->unk_00.unk_1A_7;
        break;
    case 16:
        v0 = (u32)param0->unk_00.unk_1A_9;
        break;
    case 17:
        v0 = (u32)param0->unk_00.unk_1A_15;
        break;
    case 18:
        v0 = (u32)param0->unk_00.unk_0C;
        break;
    case 19:
        v0 = (u32)param0->unk_00.unk_1C;
        break;
    default:
        v0 = 0xffffffff;
    }

    return v0;
}

void sub_020015CC(BmpList *param0, ResourceMetadata *param1)
{
    param0->unk_00.unk_00 = param1;
}

static void sub_020015D0(BmpList *param0, void *param1, u8 param2, u8 param3)
{
    if (param1 == NULL) {
        return;
    }

    if (param0->unk_1F.unk_04_7) {
        Text_AddPrinterWithParamsColorAndSpacing(param0->unk_00.unk_0C, param0->unk_1F.unk_04_0, param1, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(param0->unk_1F.unk_00_0, param0->unk_1F.unk_01_0, param0->unk_1F.unk_00_4), param0->unk_1F.unk_02_0, 0, NULL);
    } else {
        Text_AddPrinterWithParamsColorAndSpacing(param0->unk_00.unk_0C, param0->unk_00.unk_1A_9, param1, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(param0->unk_00.unk_17_4, param0->unk_00.unk_18_4, param0->unk_00.unk_18_0), param0->unk_00.unk_1A_0, 0, NULL);
    }
}

static void sub_02001688(BmpList *param0, u16 param1, u16 param2, u16 param3)
{
    int v0;
    u8 v1, v2, v3;

    v3 = Font_GetAttribute(param0->unk_00.unk_1A_9, 1) + param0->unk_00.unk_1A_3;

    for (v0 = 0; v0 < param3; v0++) {
        if (param0->unk_00.unk_00[param1].unk_04 != 0xfffffffd) {
            v1 = param0->unk_00.unk_15;
        } else {
            v1 = param0->unk_00.unk_14;
        }

        v2 = (u8)(((v0 + param2) * v3) + param0->unk_00.unk_17_0);

        if (param0->unk_00.unk_08 != NULL) {
            param0->unk_00.unk_08(param0, param0->unk_00.unk_00[param1].unk_04, v2);
        }

        sub_020015D0(param0, (void *)param0->unk_00.unk_00[param1].unk_00, v1, v2);
        param1++;
    }
}

static void sub_02001720(BmpList *param0)
{
    u8 v0, v1, v2;

    v2 = Font_GetAttribute(param0->unk_00.unk_1A_9, 1) + param0->unk_00.unk_1A_3;
    v0 = param0->unk_00.unk_16;
    v1 = (u8)((param0->unk_2A * v2) + param0->unk_00.unk_17_0);

    switch (param0->unk_00.unk_1A_15) {
    case 0:
        ColoredArrow_Print(param0->unk_24, param0->unk_00.unk_0C, v0, v1);
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    }
}

static void sub_02001778(BmpList *param0, u16 param1)
{
    u8 v0;

    switch (param0->unk_00.unk_1A_15) {
    case 0:
        v0 = Font_GetAttribute(param0->unk_00.unk_1A_9, 1) + param0->unk_00.unk_1A_3;
        BGL_WindowColor(param0->unk_00.unk_0C, (u8)param0->unk_00.unk_18_0, param0->unk_00.unk_16, (u16)(param1 * v0 + param0->unk_00.unk_17_0), 8, 16);
        break;
    case 1:
    case 2:
    case 3:
        break;
    }
}

static u8 sub_020017E0(BmpList *param0, u8 param1)
{
    u16 v0, v1, v2;

    v1 = param0->unk_2A;
    v0 = param0->unk_28;

    if (param1 == 0) {
        if (param0->unk_00.unk_12 == 1) {
            v2 = 0;
        } else {
            v2 = (u16)(param0->unk_00.unk_12 - ((param0->unk_00.unk_12 / 2) + (param0->unk_00.unk_12 % 2)) - 1);
        }

        if (v0 == 0) {
            while (v1 > 0) {
                v1--;

                if (param0->unk_00.unk_00[v0 + v1].unk_04 != 0xfffffffd) {
                    param0->unk_2A = v1;
                    return 1;
                }
            }

            return 0;
        }

        while (v1 > v2) {
            v1--;

            if (param0->unk_00.unk_00[v0 + v1].unk_04 != 0xfffffffd) {
                param0->unk_2A = v1;
                return 1;
            }
        }

        v0--;

        param0->unk_2A = v2;
        param0->unk_28 = v0;
    } else {
        if (param0->unk_00.unk_12 == 1) {
            v2 = 0;
        } else {
            v2 = (u16)((param0->unk_00.unk_12 / 2) + (param0->unk_00.unk_12 % 2));
        }

        if (v0 == (param0->unk_00.unk_10 - param0->unk_00.unk_12)) {
            while (v1 < (param0->unk_00.unk_12 - 1)) {
                v1++;

                if (param0->unk_00.unk_00[v0 + v1].unk_04 != 0xfffffffd) {
                    param0->unk_2A = v1;
                    return 1;
                }
            }

            return 0;
        }

        while (v1 < v2) {
            v1++;

            if (param0->unk_00.unk_00[v0 + v1].unk_04 != 0xfffffffd) {
                param0->unk_2A = v1;
                return 1;
            }
        }

        v0++;

        param0->unk_2A = v2;
        param0->unk_28 = v0;
    }

    return 2;
}

static void sub_02001900(BmpList *param0, u8 param1, u8 param2)
{
    u8 v0;
    u16 v1;

    if (param1 >= param0->unk_00.unk_12) {
        BGL_FillWindow(param0->unk_00.unk_0C, param0->unk_00.unk_18_0);
        sub_02001688(param0, param0->unk_28, 0, param0->unk_00.unk_12);
        return;
    }

    v0 = Font_GetAttribute(param0->unk_00.unk_1A_9, 1) + param0->unk_00.unk_1A_3;

    if (param2 == 0) {
        sub_0201C04C(param0->unk_00.unk_0C, 1, (u8)(param1 * v0), (u8)((param0->unk_00.unk_18_0 << 4) | param0->unk_00.unk_18_0));
        sub_02001688(param0, param0->unk_28, 0, param1);

        v1 = (u16)(param0->unk_00.unk_12 * v0 + param0->unk_00.unk_17_0);

        BGL_WindowColor(param0->unk_00.unk_0C, (u8)param0->unk_00.unk_18_0, 0, v1, (u16)(sub_0201C294(param0->unk_00.unk_0C) * 8), (u16)(sub_0201C298(param0->unk_00.unk_0C) * 8 - v1));
    } else {
        sub_0201C04C(param0->unk_00.unk_0C, 0, (u8)(param1 * v0), (u8)((param0->unk_00.unk_18_0 << 4) | param0->unk_00.unk_18_0));
        sub_02001688(param0, (u16)(param0->unk_28 + (param0->unk_00.unk_12 - param1)), (u16)(param0->unk_00.unk_12 - param1), (u16)param1);
        BGL_WindowColor(param0->unk_00.unk_0C, (u8)param0->unk_00.unk_18_0, 0, 0, (u16)(sub_0201C294(param0->unk_00.unk_0C) * 8), (u16)param0->unk_00.unk_17_0);
    }
}

static u8 sub_02001A18(BmpList *param0, u8 param1, u8 param2, u8 param3)
{
    u16 v0;
    u8 v1, v2;
    u8 v3, v4;

    v0 = param0->unk_2A;
    v4 = 0;
    v2 = 0;

    for (v3 = 0; v3 < param2; v3++) {
        do {
            v1 = sub_020017E0(param0, param3);
            v2 |= v1;

            if (v1 != 2) {
                break;
            }

            v4++;
        } while (param0->unk_00.unk_00[param0->unk_28 + param0->unk_2A].unk_04 == 0xfffffffd);
    }

    if (param1) {
        switch (v2) {
        default:
        case 0:
            return 1;
            break;
        case 1:
            sub_02001778(param0, v0);
            sub_02001720(param0);
            sub_02001AD8(param0, 0);
            sub_0201A954(param0->unk_00.unk_0C);
            break;
        case 2:
        case 3:
            sub_02001778(param0, v0);
            sub_02001900(param0, v4, param3);
            sub_02001720(param0);
            sub_02001AD8(param0, 0);
            sub_0201A954(param0->unk_00.unk_0C);
            break;
        }
    }

    return 0;
}

static void sub_02001AD8(BmpList *param0, u8 param1)
{
    if (param0->unk_00.unk_04 != NULL) {
        param0->unk_00.unk_04(param0, param0->unk_00.unk_00[param0->unk_28 + param0->unk_2A].unk_04, param1);
    }
}
