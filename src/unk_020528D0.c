#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020508D4_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_0203A6DC.h"
#include "unk_0203A7D8.h"
#include "unk_0203CC84.h"
#include "unk_0203E880.h"
#include "unk_020508D4.h"
#include "unk_020528D0.h"
#include "unk_020530C8.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_02070428.h"
#include "pokemon.h"
#include "party.h"

typedef struct {
    int unk_00;
    UnkStruct_0203CDB0 * unk_04;
    UnkStruct_02018340 * unk_08;
    UnkStruct_0205AA50 unk_0C;
    MessageLoader * unk_1C;
    UnkStruct_0200B358 * unk_20;
} UnkStruct_02052AA4;

static void sub_02052914(UnkStruct_0203CDB0 * param0, UnkStruct_020508D4 * param1);
static BOOL sub_020529C4(UnkStruct_020508D4 * param0);
static void sub_02052AA4(UnkStruct_02052AA4 * param0, u16 param1, u8 param2, u8 param3);

static const UnkStruct_ov61_0222C884 Unk_020EC2F0 = {
    0x3,
    0x4,
    0x5,
    0x19,
    0xF,
    0xD,
    0x1
};

static void sub_020528D0 (UnkStruct_02018340 * param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    GXLayers_SetBanks(&v0);
    sub_02018368(&v1);
    sub_020183C4(param0, 3, &v2, 0);
    sub_02006E84(14, 6, 0, 13 * 0x20, 0x20, 11);
}

static void sub_02052914 (UnkStruct_0203CDB0 * param0, UnkStruct_020508D4 * param1)
{
    UnkStruct_02052AA4 * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02052AA4));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    memset(v0, 0, sizeof(UnkStruct_02052AA4));

    v0->unk_00 = 0;
    v0->unk_04 = param0;
    v0->unk_08 = sub_02018340(11);

    sub_020528D0(v0->unk_08);

    v0->unk_1C = MessageLoader_Init(1, 26, 373, 11);
    v0->unk_20 = sub_0200B358(11);

    sub_0201A8D4(v0->unk_08, &v0->unk_0C, &Unk_020EC2F0);
    sub_0200B498(v0->unk_20, 0, sub_02025E38(sub_0203D174(param0)));

    if (param0->unk_1C->unk_00 == 414) {
        sub_02052AA4(v0, 4, 0, 0);
    } else {
        sub_02052AA4(v0, 3, 0, 0);
    }

    sub_0201A954(&v0->unk_0C);
    sub_02050944(param1, sub_020529C4, v0);

    return;
}

static BOOL sub_020529C4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02052AA4 * v0 = sub_02050A64(param0);

    switch (v0->unk_00) {
    case 0:
        sub_0200F174(3, 1, 42, 0x0, 8, 1, 32);
        v0->unk_00++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            v0->unk_00++;
        }
        break;
    case 2:
        if ((gCoreSys.padInput & PAD_BUTTON_A) || (gCoreSys.padInput & PAD_BUTTON_B)) {
            sub_0200F174(0, 0, 0, 0x0, 8, 1, 32);
            v0->unk_00++;
        }
        break;
    case 3:
        if (ScreenWipe_Done()) {
            sub_0201ADA4(&v0->unk_0C, 0);
            v0->unk_00++;
        }
        break;
    case 4:
        sub_0200E084(&v0->unk_0C, 0);
        sub_0201A8FC(&v0->unk_0C);
        sub_0200B3F0(v0->unk_20);
        MessageLoader_Free(v0->unk_1C);
        sub_02019044(v0->unk_08, 3);
        Heap_FreeToHeap(v0->unk_08);
        Heap_FreeToHeap(v0);

        return 1;
    }

    return 0;
}

static void sub_02052AA4 (UnkStruct_02052AA4 * param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf* v0 = Strbuf_Init(1024, 11);
    Strbuf* v1 = Strbuf_Init(1024, 11);

    sub_0201ADA4(&param0->unk_0C, 0);
    MessageLoader_GetStrbuf(param0->unk_1C, param1, v0);
    sub_0200C388(param0->unk_20, v1, v0);

    {
        u32 v2 = sub_02002EB4(0, v1, 0);
        param2 = (u8)(param0->unk_0C.unk_07 * 8 - v2) / 2 - 4;
    }

    sub_0201D78C(&param0->unk_0C, 0, v1, param2, param3, 0xff, (u32)(((15 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0))), NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);

    return;
}

BOOL sub_02052B2C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    int * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A68(param0);

    switch (*v1) {
    case 0:
    {
        if ((v0 != NULL) && (v0->unk_0C != NULL)) {
            Party_SetGiratinaForm(Party_GetFromSavedata(v0->unk_0C), 0);
        }
    }

        {
            UnkStruct_02049FA8 v2;
            UnkStruct_0203A790 * v3 = sub_0203A790(v0->unk_0C);
            u16 v4 = sub_0203A75C(v3);

            sub_0203A824(v4, &v2);
            sub_0203A7F0(v4, sub_0203A72C(v3));
            sub_020539A0(param0, &v2);
            sub_020705B4(v0);
        }
        (*v1)++;
        break;
    case 1:
        sub_0200564C(0, 20);
        (*v1)++;
        break;
    case 2:
        if (sub_02005684() == 0) {
            sub_020553DC();
            (*v1)++;
        }
        break;
    case 3:
        sub_0200AB4C(-16, ((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) ^ GX_BLEND_PLANEMASK_BG3), 1);
        sub_0200AB4C(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        sub_02052914(v0, param0);
        (*v1)++;
        break;
    case 4:
        sub_02055868(param0);
        (*v1)++;
        break;
    case 5:
        sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

        if (sub_0203A7EC()
            == sub_0203A75C(sub_0203A790(v0->unk_0C))) {
            sub_0203E8E0(param0, 2020, NULL, NULL);
        } else {
            sub_0203E8E0(param0, 2021, NULL, NULL);
        }

        (*v1)++;
        break;
    case 6:
        return 1;
    }

    return 0;
}

void sub_02052C5C (UnkStruct_020508D4 * param0)
{
    sub_02050944(param0, sub_02052B2C, NULL);
}
