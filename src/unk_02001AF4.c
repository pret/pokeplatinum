#include "unk_02001AF4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"

#include "overlay061/struct_ov61_0222C884.h"

#include "colored_arrow.h"
#include "core_sys.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"

typedef struct UIControlData_t {
    UnkStruct_02081CF4 unk_00;
    ColoredArrow *unk_0C;
    u32 unk_10;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
} UIControlData;

static void sub_0200DB10(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u16 param7);
static void sub_0200DD7C(BGL *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u16 param7);
static BOOL sub_02001DCC(UIControlData *param0, u8 param1, u16 param2);
static u8 sub_02001E24(UIControlData *param0, u8 param1);
static u8 sub_02001F1C(UIControlData *param0);
static void sub_02001F5C(UIControlData *param0);
static void sub_02001FE8(UIControlData *param0);
static void sub_02002018(UIControlData *param0, u8 *param1, u8 *param2, u8 param3);

UIControlData *sub_02001AF4(const UnkStruct_02081CF4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    UIControlData *v0 = (UIControlData *)Heap_AllocFromHeap(param4, sizeof(UIControlData));

    v0->unk_00 = *param0;
    v0->unk_0C = ColoredArrow_New(param4);
    v0->unk_10 = param5;
    v0->unk_15 = param3;
    v0->unk_16 = sub_02001F1C(v0);
    v0->unk_1C = param4;
    v0->unk_17 = param1;
    v0->unk_18 = param2;
    v0->unk_19 = Font_GetAttribute(param0->unk_08, 0) + Font_GetAttribute(param0->unk_08, 2);
    v0->unk_1A = Font_GetAttribute(param0->unk_08, 1) + Font_GetAttribute(param0->unk_08, 3);

    sub_02001F5C(v0);
    sub_02001FE8(v0);

    return v0;
}

UIControlData *sub_02001B7C(const UnkStruct_02081CF4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    UIControlData *v0 = sub_02001AF4(param0, param1, param2, param3, param4, param5);

    sub_0201A954(v0->unk_00.unk_04);
    return v0;
}

UIControlData *sub_02001B9C(const UnkStruct_02081CF4 *param0, u8 param1, u8 param2)
{
    return sub_02001B7C(param0, Font_GetAttribute(param0->unk_08, 0), 0, param1, param2, PAD_BUTTON_B);
}

void sub_02001BC4(UIControlData *param0, u8 *param1)
{
    if (param1 != NULL) {
        *param1 = param0->unk_15;
    }

    ColoredArrow_Free(param0->unk_0C);
    Heap_FreeToHeapExplicit(param0->unk_1C, param0);
}

u32 sub_02001BE0(UIControlData *param0)
{
    param0->unk_1B = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);
        return param0->unk_00.unk_00[param0->unk_15].unk_04;
    }

    if (gCoreSys.pressedKeys & param0->unk_10) {
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (sub_02001DCC(param0, 0, 1500) == 1) {
            param0->unk_1B = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_02001DCC(param0, 1, 1500) == 1) {
            param0->unk_1B = 2;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (sub_02001DCC(param0, 2, 1500) == 1) {
            param0->unk_1B = 3;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (sub_02001DCC(param0, 3, 1500) == 1) {
            param0->unk_1B = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

u32 sub_02001C94(UIControlData *param0, u16 param1)
{
    param0->unk_1B = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);
        return param0->unk_00.unk_00[param0->unk_15].unk_04;
    }

    if (gCoreSys.pressedKeys & param0->unk_10) {
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (sub_02001DCC(param0, 0, param1) == 1) {
            param0->unk_1B = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_02001DCC(param0, 1, param1) == 1) {
            param0->unk_1B = 2;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (sub_02001DCC(param0, 2, param1) == 1) {
            param0->unk_1B = 3;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (sub_02001DCC(param0, 3, param1) == 1) {
            param0->unk_1B = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

u32 sub_02001D44(UIControlData *param0, u8 param1)
{
    switch (param1) {
    case 0:
        Sound_PlayEffect(1500);
        return param0->unk_00.unk_00[param0->unk_15].unk_04;
    case 1:
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    case 2:
        sub_02001DCC(param0, 0, 1500);
        return 0xffffffff;
    case 3:
        sub_02001DCC(param0, 1, 1500);
        return 0xffffffff;
    case 4:
        sub_02001DCC(param0, 2, 1500);
        return 0xffffffff;
    case 5:
        sub_02001DCC(param0, 3, 1500);
        return 0xffffffff;
    }

    return 0xffffffff;
}

u8 sub_02001DC4(UIControlData *param0)
{
    return param0->unk_15;
}

u8 sub_02001DC8(UIControlData *param0)
{
    return param0->unk_1B;
}

static BOOL sub_02001DCC(UIControlData *param0, u8 param1, u16 param2)
{
    u8 v0 = param0->unk_15;

    if (sub_02001E24(param0, param1) == 0) {
        return 0;
    }

    {
        u8 v1, v2;
        u8 v3;

        v3 = Font_GetAttribute(param0->unk_00.unk_08, 6);

        sub_02002018(param0, &v1, &v2, v0);
        BGL_WindowColor(param0->unk_00.unk_04, v3, v1, v2, 8, param0->unk_1A);
    }

    sub_02001FE8(param0);
    Sound_PlayEffect(param2);

    return 1;
}

static u8 sub_02001E24(UIControlData *param0, u8 param1)
{
    s8 v0;

    if (param1 == 0) {
        if (param0->unk_00.unk_0A <= 1) {
            return 0;
        }

        if ((param0->unk_15 % param0->unk_00.unk_0A) == 0) {
            if (param0->unk_00.unk_0B_6 == 0) {
                return 0;
            }

            v0 = param0->unk_15 + (param0->unk_00.unk_0A - 1);
        } else {
            v0 = param0->unk_15 - 1;
        }
    } else if (param1 == 1) {
        if (param0->unk_00.unk_0A <= 1) {
            return 0;
        }

        if ((param0->unk_15 % param0->unk_00.unk_0A) == (param0->unk_00.unk_0A - 1)) {
            if (param0->unk_00.unk_0B_6 == 0) {
                return 0;
            }

            v0 = param0->unk_15 - (param0->unk_00.unk_0A - 1);
        } else {
            v0 = param0->unk_15 + 1;
        }
    } else if (param1 == 2) {
        if (param0->unk_00.unk_09 <= 1) {
            return 0;
        }

        if (param0->unk_15 < param0->unk_00.unk_0A) {
            if (param0->unk_00.unk_0B_6 == 0) {
                return 0;
            }

            v0 = param0->unk_15 + (param0->unk_00.unk_0A * (param0->unk_00.unk_09 - 1));
        } else {
            v0 = param0->unk_15 - param0->unk_00.unk_0A;
        }
    } else {
        if (param0->unk_00.unk_09 <= 1) {
            return 0;
        }

        if (param0->unk_15 >= (param0->unk_00.unk_0A * (param0->unk_00.unk_09 - 1))) {
            if (param0->unk_00.unk_0B_6 == 0) {
                return 0;
            }

            v0 = param0->unk_15 % param0->unk_00.unk_0A;
        } else {
            v0 = param0->unk_15 + param0->unk_00.unk_0A;
        }
    }

    if (param0->unk_00.unk_00[v0].unk_04 == 0xfffffffd) {
        return 0;
    }

    param0->unk_15 = v0;
    return 1;
}

static u8 sub_02001F1C(UIControlData *param0)
{
    u8 v0 = 0;
    u8 v1, v2;

    for (v1 = 0; v1 < param0->unk_00.unk_09 * param0->unk_00.unk_0A; v1++) {
        v2 = Font_CalcStrbufWidth(param0->unk_00.unk_08, param0->unk_00.unk_00[v1].unk_00, 0);

        if (v0 < v2) {
            v0 = v2;
        }
    }

    return v0;
}

static void sub_02001F5C(UIControlData *param0)
{
    const void *v0;
    u8 v1, v2, v3;
    u8 v4, v5;

    BGL_FillWindow(param0->unk_00.unk_04, Font_GetAttribute(param0->unk_00.unk_08, 6));

    v1 = param0->unk_17;
    v3 = param0->unk_16 + param0->unk_19 * 2;

    for (v4 = 0; v4 < param0->unk_00.unk_09; v4++) {
        for (v5 = 0; v5 < param0->unk_00.unk_0A; v5++) {
            v0 = param0->unk_00.unk_00[v4 * param0->unk_00.unk_0A + v5].unk_00;
            v2 = (param0->unk_1A + param0->unk_00.unk_0B_0) * v5 + param0->unk_18;

            Text_AddPrinterWithParams(param0->unk_00.unk_04, param0->unk_00.unk_08, v0, v1, v2, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        v1 += v3;
    }
}

static void sub_02001FE8(UIControlData *param0)
{
    u8 v0, v1;

    if (param0->unk_00.unk_0B_4 == 1) {
        return;
    }

    sub_02002018(param0, &v0, &v1, param0->unk_15);
    ColoredArrow_Print(param0->unk_0C, param0->unk_00.unk_04, v0, v1);
}

static void sub_02002018(UIControlData *param0, u8 *param1, u8 *param2, u8 param3)
{
    *param1 = (param3 / param0->unk_00.unk_0A) * (param0->unk_16 + param0->unk_19 * 2);
    *param2 = (param3 % param0->unk_00.unk_0A) * (param0->unk_1A + param0->unk_00.unk_0B_0) + param0->unk_18;
}

UIControlData *sub_02002054(BGL *param0, const UnkStruct_ov61_0222C884 *param1, u16 param2, u8 param3, u8 param4, u32 param5)
{
    UnkStruct_02081CF4 v0;
    MessageLoader *v1;
    ResourceMetadata *v2;

    v1 = MessageLoader_Init(1, 26, 361, param5);
    v2 = sub_02013A04(2, param5);

    sub_02013A4C(v2, v1, 41, 0);
    sub_02013A4C(v2, v1, 42, 0xfffffffe);
    MessageLoader_Free(v1);

    v0.unk_00 = v2;
    v0.unk_04 = sub_0201A778(param5, 1);
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 2;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    sub_0201A8D4(param0, v0.unk_04, param1);
    Window_Show(v0.unk_04, 1, param2, param3);

    return sub_02001B7C(&v0, 8, 0, param4, param5, PAD_BUTTON_B);
}

UIControlData *sub_02002100(BGL *param0, const UnkStruct_ov61_0222C884 *param1, u16 param2, u8 param3, u32 param4)
{
    return sub_02002054(param0, param1, param2, param3, 0, param4);
}

u32 sub_02002114(UIControlData *param0, u32 param1)
{
    u32 v0 = sub_02001BE0(param0);

    if (v0 != 0xffffffff) {
        sub_02002154(param0, param1);
    }

    return v0;
}

u32 sub_02002134(UIControlData *param0, u8 param1, u32 param2)
{
    u32 v0 = sub_02001D44(param0, param1);

    if (v0 != 0xffffffff) {
        sub_02002154(param0, param2);
    }

    return v0;
}

void sub_02002154(UIControlData *param0, u32 param1)
{
    Window_Clear(param0->unk_00.unk_04, 0);
    BGL_DeleteWindow(param0->unk_00.unk_04);
    Heap_FreeToHeapExplicit(param1, param0->unk_00.unk_04);
    sub_02013A3C((ResourceMetadata *)param0->unk_00.unk_00);
    sub_02001BC4(param0, NULL);
}

void sub_02002180(Window *param0, u32 param1, u32 param2)
{
    static const u8 v0[] = {
        0xff,
        0xff,
        0xff,
        0x0,
        0xff,
        0xff,
        0xff,
        0x0,
        0x21,
        0xff,
        0xff,
        0x0,
        0x11,
        0xf2,
        0xff,
        0x0,
        0x11,
        0x21,
        0xff,
        0x0,
        0x11,
        0x11,
        0xf2,
        0x0,
        0x11,
        0x11,
        0x21,
        0x0,
        0x11,
        0x11,
        0x22,
        0x0,
        0x11,
        0x21,
        0xf2,
        0x0,
        0x11,
        0x22,
        0xff,
        0x0,
        0x21,
        0xf2,
        0xff,
        0x0,
        0x22,
        0xff,
        0xff,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    };

    sub_0201ADDC(param0, (void *)v0, 0, 0, 8, 16, param1, param2, 8, 16);
}
