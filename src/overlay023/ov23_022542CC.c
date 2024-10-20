#include "overlay023/ov23_022542CC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0206A844.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_02248D20.h"
#include "overlay023/struct_ov23_022542D8_decl.h"
#include "overlay023/struct_ov23_02254594_decl.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202854C.h"
#include "unk_0206A780.h"

typedef struct UnkStruct_ov23_022542D8_t {
    FieldSystem *fieldSystem;
    Window unk_04;
    Window unk_14;
    ResourceMetadata *unk_24;
    BmpList *unk_28;
    Strbuf *unk_2C;
    u16 *unk_30;
    u16 *unk_34;
    u8 unk_38;
    u32 unk_3C;
    u16 unk_40;
};

typedef struct UnkStruct_ov23_02254594_t {
    FieldSystem *fieldSystem;
    UnkStruct_0206A844 *unk_04;
    Window unk_08;
    Window unk_18;
    ResourceMetadata *unk_28;
    UnkStruct_ov23_02248D20 *unk_2C;
    BmpList *unk_30;
    Strbuf *unk_34;
    u16 *unk_38;
    u16 *unk_3C;
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u32 unk_44;
    int unk_48;
};

static void ov23_0225437C(UnkStruct_ov23_022542D8 *param0);
static void ov23_022544C0(UnkStruct_ov23_022542D8 *param0);
static void ov23_0225451C(UnkStruct_ov23_022542D8 *param0);
static void ov23_022546E0(UnkStruct_ov23_02254594 *param0);
static void ov23_0225461C(UnkStruct_ov23_02254594 *param0);
static void ov23_02254958(UnkStruct_ov23_02254594 *param0);
static void ov23_022549A8(UnkStruct_0206A844 *param0, const u16 param1, const u16 param2, const u16 param3);
static void ov23_022549EC(UnkStruct_ov23_022542D8 *param0);

static const UnkStruct_ov84_02240FA8 Unk_ov23_02256B3C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x4,
    0x4,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

UnkStruct_ov23_022542D8 *ov23_022542CC(void)
{
    UnkStruct_ov23_022542D8 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_022542D8));

    return v0;
}

void ov23_022542D8(UnkStruct_ov23_022542D8 *param0, FieldSystem *fieldSystem, u16 *param2, u16 *param3)
{
    param0->fieldSystem = fieldSystem;
    param0->unk_38 = 0;
    param0->unk_30 = param2;
    param0->unk_34 = param3;
    param0->unk_40 = 0;

    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 2, 4);
}

void ov23_0225430C(UnkStruct_ov23_022542D8 *param0)
{
    Heap_FreeToHeap(param0);
}

const u32 ov23_02254314(UnkStruct_ov23_022542D8 *param0)
{
    return param0->unk_3C;
}

BOOL ov23_02254318(UnkStruct_ov23_022542D8 *param0)
{
    switch (param0->unk_38) {
    case 0:
        ov23_0225437C(param0);
        break;
    case 1:
        ov23_022544C0(param0);
        break;
    case 2:
        param0->unk_38 = 0;
        ov23_0225451C(param0);
        return 1;
    }

    return 0;
}

static void ov23_02254350(BmpList *param0, u32 param1, u8 param2)
{
    const int v0[4] = {
        5,
        6,
        7,
        8,
    };

    ov23_02253F60(ov23_022421CC(), v0[param1], 0, NULL);
}

static void ov23_0225437C(UnkStruct_ov23_022542D8 *param0)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1, v2;
    int v3 = 3;
    int v4 = 4;

    param0->unk_24 = sub_02013A04(v3 + 1, 4);

    v1 = 12 * v4 * 2;
    v2 = 7 * (1 * 2);

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_04, 3, 19, 3, 12, v4 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v1));
    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_14, 3, 1, 1, 7, (1 * 2), 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v1 + v2));

    Window_Show(&param0->unk_04, 1, 1024 - (18 + 12) - 9, 11);
    Window_Show(&param0->unk_14, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v5;
        int v6;
        const int v7[3 + 1] = {
            1,
            2,
            3,
            4,
        };

        v5 = MessageLoader_Init(0, 26, 637, 4);

        {
            Strbuf *v8;

            BGL_FillWindow(&param0->unk_14, 15);
            v8 = MessageLoader_GetNewStrbuf(v5, 0);
            Text_AddPrinterWithParams(&param0->unk_14, FONT_SYSTEM, v8, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Strbuf_Free(v8);
        }

        for (v6 = 0; v6 < v3 + 1; v6++) {
            sub_02013A4C(param0->unk_24, v5, v7[v6], v6);
        }

        MessageLoader_Free(v5);
    }

    v0 = Unk_ov23_02256B3C;
    v0.unk_10 = v3 + 1;
    v0.unk_12 = v4;
    v0.unk_00 = param0->unk_24;
    v0.unk_0C = &param0->unk_04;
    v0.unk_04 = ov23_02254350;

    param0->unk_28 = sub_0200112C(&v0, *(param0->unk_30), *(param0->unk_34), 4);
    sub_0201A954(&param0->unk_04);
    sub_0201A954(&param0->unk_14);
    param0->unk_38 = 1;
}

static void ov23_022544C0(UnkStruct_ov23_022542D8 *param0)
{
    u32 v0;

    v0 = sub_02001288(param0->unk_28);

    ov23_022549EC(param0);

    if (v0 == 3) {
        v0 = 0xfffffffe;
    }

    switch (v0) {
    case 0xffffffff:
        return;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        param0->unk_3C = v0;
        param0->unk_38 = 2;
        Sound_PlayEffect(1500);
        break;
    default: {
        Sound_PlayEffect(1500);
        param0->unk_3C = v0;
        param0->unk_38 = 2;
        Sound_PlayEffect(1500);
    } break;
    }

    return;
}

static void ov23_0225451C(UnkStruct_ov23_022542D8 *param0)
{
    ov23_02254044(ov23_022421CC());

    Window_Clear(&param0->unk_14, 1);
    sub_02001384(param0->unk_28, param0->unk_30, param0->unk_34);
    Window_Clear(&param0->unk_04, 1);
    sub_0201C3C0(param0->unk_04.unk_00, param0->unk_04.unk_04);
    BGL_DeleteWindow(&param0->unk_04);
    BGL_DeleteWindow(&param0->unk_14);
    sub_02013A3C(param0->unk_24);
}

static void ov23_02254564(BmpList *param0, u32 param1, u8 param2)
{
    u8 v0;

    v0 = param1 & 0x1;

    if (v0) {
        sub_0200147C(param0, 1, 15, 2);
    } else {
        sub_0200147C(param0, 2, 15, 2);
    }
}

UnkStruct_ov23_02254594 *ov23_02254588(void)
{
    UnkStruct_ov23_02254594 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02254594));
    return v0;
}

void ov23_02254594(UnkStruct_ov23_02254594 *param0, FieldSystem *fieldSystem, u16 *param2, u16 *param3)
{
    param0->fieldSystem = fieldSystem;
    param0->unk_42 = 0;
    param0->unk_04 = NULL;
    param0->unk_38 = param2;
    param0->unk_3C = param3;

    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 2, 4);
}

void ov23_022545C4(UnkStruct_ov23_02254594 *param0, const u8 param1, const u8 param2)
{
    param0->unk_40 = param1;
    param0->unk_41 = param2;
}

void ov23_022545D0(UnkStruct_ov23_02254594 *param0)
{
    Heap_FreeToHeap(param0);
}

const u32 ov23_022545D8(UnkStruct_ov23_02254594 *param0)
{
    return param0->unk_44;
}

BOOL ov23_022545DC(UnkStruct_ov23_02254594 *param0)
{
    switch (param0->unk_42) {
    case 0:
        ov23_022546E0(param0);
        break;
    case 1:
        ov23_0225461C(param0);
        break;
    case 2:
        param0->unk_42 = 0;
        ov23_02254958(param0);
        return 1;
    }

    if (param0->unk_04) {
        sub_0206A870(param0->unk_04);
    }

    return 0;
}

static void ov23_0225461C(UnkStruct_ov23_02254594 *param0)
{
    u32 v0;
    u32 v1;
    u16 v2, v3;

    v0 = ov23_02248D20(param0->unk_2C);
    v1 = (v0 >> 1);

    if (param0->unk_48 == v1) {
        v1 = 0xfffffffe;
    }

    {
        sub_020014DC(param0->unk_2C->unk_0C, &v2, &v3);
        ov23_022549A8(param0->unk_04, v2, sub_02001504(param0->unk_2C->unk_0C, 2), sub_02001504(param0->unk_2C->unk_0C, 3));
    }

    switch (v0) {
    case 0xffffffff:
        return;
    case 0xfffffffe:
        param0->unk_44 = 0xfffffffe;
        param0->unk_42 = 2;
        Sound_PlayEffect(1500);
        break;
    default: {
        param0->unk_44 = v1;
        param0->unk_42 = 2;
        Sound_PlayEffect(1500);
    } break;
    }

    return;
}

static void ov23_022546A0(BmpList *param0, u32 param1, u8 param2)
{
    int v0;
    UndergroundData *v1;
    u32 v2;
    u32 v3;

    v1 = (UndergroundData *)sub_02001504(param0, 19);
    v3 = sub_02001504(param0, 2);
    v2 = (param1 >> 1);

    if (v2 == v3 - 1) {
        v0 = 278;
    } else {
        v0 = sub_020289B8(v1, v2);
        v0 = 145 + v0 - 7;
    }

    ov23_02253F60(ov23_022421DC(), v0, 0, NULL);
}

static void ov23_022546E0(UnkStruct_ov23_02254594 *param0)
{
    UndergroundData *v0;
    UnkStruct_ov84_02240FA8 v1;
    int v2, v3;
    int v4;
    int v5;

    v0 = sub_020298B0(param0->fieldSystem->saveData);
    v4 = sub_020289A0(v0);
    param0->unk_48 = v4;
    v5 = v4 + 1;

    if (v5 > 7) {
        v5 = 7;
    }

    param0->unk_28 = sub_02013A04(v4 + 1, 4);

    v2 = 12 * 7 * 2;
    v3 = 8 * (2 * 2);

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, 19, 3, 12, v5 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v2));
    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_18, 3, 1, 1, 8, (2 * 2), 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v2 + v3));
    Window_Show(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    Window_Show(&param0->unk_18, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v6;
        int v7 = 0;
        int v8;
        BOOL v9;
        int v10;
        u8 v11;

        v6 = MessageLoader_Init(0, 26, 626, 4);

        {
            MessageLoader *v12;
            Strbuf *v13;
            Strbuf *v14;
            Strbuf *v15;
            StringTemplate *v16;

            v12 = MessageLoader_Init(0, 26, 637, 4);

            BGL_FillWindow(&param0->unk_18, 15);

            v13 = MessageLoader_GetNewStrbuf(v12, 9);
            v14 = MessageLoader_GetNewStrbuf(v12, 10);
            v15 = Strbuf_Init(6, 4);

            Text_AddPrinterWithParams(&param0->unk_18, FONT_SYSTEM, v13, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            v16 = StringTemplate_Default(4);

            StringTemplate_SetNumber(v16, 0, param0->unk_40, 2, 1, 1);
            StringTemplate_SetNumber(v16, 1, param0->unk_41, 2, 1, 1);
            StringTemplate_Format(v16, v15, v14);
            Text_AddPrinterWithParams(&param0->unk_18, FONT_SYSTEM, v15, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);

            StringTemplate_Free(v16);
            Strbuf_Free(v13);
            Strbuf_Free(v14);
            Strbuf_Free(v15);

            MessageLoader_Free(v12);
        }

        for (v7 = 0; v7 < v4; v7++) {
            v8 = sub_020289B8(v0, v7);
            v9 = sub_02028AFC(v0, v7);

            if (!v9) {
                v11 = 1;
            } else {
                v11 = 0;
            }

            v10 = (v7 << 1) + v11;
            sub_02013A4C(param0->unk_28, v6, v8, v10);
        }

        v10 = (v7 << 1) + 1;

        sub_02013A4C(param0->unk_28, v6, 277, v10);
        MessageLoader_Free(v6);
    }

    ov23_02253DFC(ov23_022421DC(), 626, 0);

    v1 = Unk_ov23_02256B3C;
    v1.unk_08 = ov23_02254564;
    v1.unk_10 = v4 + 1;
    v1.unk_12 = v5;
    v1.unk_00 = param0->unk_28;
    v1.unk_0C = &param0->unk_08;
    v1.unk_04 = ov23_022546A0;
    v1.unk_1C = v0;

    param0->unk_2C = ov23_02248C08(&v1, *(param0->unk_38), *(param0->unk_3C), 4, sub_02028A10, v0, 1);

    sub_0201A954(&param0->unk_08);
    sub_0201A954(&param0->unk_18);

    param0->unk_04 = sub_0206A780(4);

    sub_0206A8A0(param0->unk_04, 200, 10 + 8 * 2, 118 + 8 * 2);
    sub_0206A8C4(param0->unk_04, 0, 0);
    sub_0206A8C4(param0->unk_04, 1, 0);

    param0->unk_42 = 1;
}

static void ov23_02254958(UnkStruct_ov23_02254594 *param0)
{
    ov23_02254044(ov23_022421DC());
    Window_Clear(&param0->unk_18, 1);
    ov23_02248EF8(param0->unk_2C, param0->unk_38, param0->unk_3C);

    Window_Clear(&param0->unk_08, 1);
    sub_0201C3C0(param0->unk_08.unk_00, param0->unk_08.unk_04);
    BGL_DeleteWindow(&param0->unk_08);
    BGL_DeleteWindow(&param0->unk_18);
    sub_02013A3C(param0->unk_28);
    sub_0206A844(param0->unk_04);
}

static void ov23_022549A8(UnkStruct_0206A844 *param0, const u16 param1, const u16 param2, const u16 param3)
{
    if (param2 <= param3) {
        return;
    }

    if (param1 != 0) {
        sub_0206A8C4(param0, 0, 1);
    } else {
        sub_0206A8C4(param0, 0, 0);
    }

    if (param2 != (param1 + param3)) {
        sub_0206A8C4(param0, 1, 1);
    } else {
        sub_0206A8C4(param0, 1, 0);
    }
}

static void ov23_022549EC(UnkStruct_ov23_022542D8 *param0)
{
    u16 v0;

    v0 = param0->unk_40;
    sub_020014D0(param0->unk_28, &param0->unk_40);

    if (v0 != param0->unk_40) {
        Sound_PlayEffect(1500);
    }

    return;
}
