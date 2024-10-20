#include "overlay021/ov21_021DE668.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1F90.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D5600.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021DE6D4.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "pokedex_data_index.h"
#include "pokemon.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_02012744.h"
#include "unk_02018340.h"

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021DE760;

typedef struct {
    CellActor *unk_00[3];
    CellActor *unk_0C;
    UnkStruct_ov21_021D4CA0 *unk_10;
    SpriteResource *unk_14[4];
    SpriteResource *unk_24[4];
    UnkStruct_ov21_021D2648 unk_34;
    UnkStruct_ov21_021D2648 unk_54;
} UnkStruct_ov21_021DF374;

static UnkStruct_ov21_021DE6D4 *ov21_021DE6E8(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021DE760 *ov21_021DE724(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021DE74C(UnkStruct_ov21_021DE6D4 *param0);
static void ov21_021DE760(UnkStruct_ov21_021DE760 *param0);
static int ov21_021DE774(void);
static int ov21_021DE778(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DE79C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DE7F8(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021DE804(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021DE8E4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021DE8E8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021DF374(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static BOOL ov21_021DF3F0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static void ov21_021DF44C(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static BOOL ov21_021DF4D0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static void ov21_021DF548(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static BOOL ov21_021DF5D0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static void ov21_021DF6B4(UnkStruct_ov21_021DE760 *param0);
static void ov21_021DF64C(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DF680(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DF6C4(UnkStruct_ov21_021DF374 *param0, int param1, int param2, int param3);
static BOOL ov21_021DF6E0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1);
static void ov21_021DF6FC(UnkStruct_ov21_021DF374 *param0);
static BOOL ov21_021DF718(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1);
static void ov21_021DE9A4(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DEA0C(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1);
static void ov21_021DEA44(UnkStruct_ov21_021DE760 *param0, int param1);
static void ov21_021DEB58(UnkStruct_ov21_021DE760 *param0, const UnkStruct_ov21_021DE6D4 *param1, int param2);
static void ov21_021DEC2C(Window *param0, int param1, int param2, u32 param3);
static void ov21_021DEC80(Window *param0, int param1, int param2, u32 param3);
static void ov21_021DECD4(Window *param0, int param1, int param2, int param3, u32 param4);
static void ov21_021DED24(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DED68(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1);
static void ov21_021DED7C(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, int param2, int param3);
static void ov21_021DEE38(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1);
static void ov21_021DEE80(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, int param2);
static void ov21_021DEEF8(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DEFA8(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, int param2);
static void ov21_021DF054(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1);
static void ov21_021DF098(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DF1F8(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DF214(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DF35C(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DEF08(UnkStruct_ov21_021DE760 *param0, const UnkStruct_ov21_021DE6D4 *param1, int param2);
static void ov21_021DEF3C(UnkStruct_ov21_021DE760 *param0);
static void ov21_021DEF54(UnkStruct_ov21_021DE760 *param0, const UnkStruct_ov21_021DE6D4 *param1);
static void ov21_021DEF8C(UnkStruct_ov21_021DE760 *param0);

void ov21_021DE668(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021DE6D4 *v0;
    UnkStruct_ov21_021DE760 *v1;

    v0 = ov21_021DE6E8(param2, param1);
    v1 = ov21_021DE724(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021DE774();
    param0->unk_08[0] = ov21_021DE778;
    param0->unk_08[1] = ov21_021DE79C;
    param0->unk_08[2] = ov21_021DE7F8;
    param0->unk_14[0] = ov21_021DE804;
    param0->unk_14[1] = ov21_021DE8E4;
    param0->unk_14[2] = ov21_021DE8E8;
}

void ov21_021DE6C0(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021DE74C(param0->unk_00);
    ov21_021DE760(param0->unk_04);
}

BOOL ov21_021DE6D4(UnkStruct_ov21_021DE6D4 *param0, int param1)
{
    return 0;
}

BOOL ov21_021DE6D8(UnkStruct_ov21_021DE6D4 *param0, int param1)
{
    BOOL v0 = 1;

    if (param1 == 1) {
        param1 = 0;
        v0 = 0;
    }

    param0->unk_18 = param1;
    return v0;
}

static UnkStruct_ov21_021DE6D4 *ov21_021DE6E8(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021DE6D4 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021DE6D4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DE6D4));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v1 = ov21_021D1410(param1, 5);
    v0->unk_10 = v1;

    return v0;
}

static UnkStruct_ov21_021DE760 *ov21_021DE724(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021DE760 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021DE760));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DE760));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021DE74C(UnkStruct_ov21_021DE6D4 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DE760(UnkStruct_ov21_021DE760 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021DE774(void)
{
    return 0;
}

static int ov21_021DE778(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DE6D4 *v0 = param1;

    ov21_021D3434(v0->unk_04, ov21_021D37BC(v0->unk_04));
    ov21_021D344C(v0->unk_04, ov21_021D36D8(v0->unk_04));

    return 1;
}

static int ov21_021DE79C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021DE6D4 *v0 = param1;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    switch (param0->unk_00) {
    case 0:
        if (v0->unk_1C == 1) {
            Sound_PlayPokemonCry(14, ov21_021D37BC(v0->unk_04), 0x1ff, 0x1ff, 0x1ff, 0);
            v0->unk_1C = 0;
        }

        param0->unk_00++;
        break;
    default:
        break;
    }

    return 0;
}

static int ov21_021DE7F8(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    sub_0200592C(0);
    return 1;
}

static int ov21_021DE804(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DE6D4 *v0 = param2;
    UnkStruct_ov21_021DE760 *v1 = param0;
    UnkStruct_ov21_021DF374 *v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021DF374));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021DF374));
        param1->unk_00++;
        break;
    case 1:
        ov21_021DE9A4(v2, v1, v0, param1->unk_04);

        switch (v0->unk_14) {
        case 0:
            ov21_021DF44C(v2, v1, v0, 1);
            break;
        case 1:
            ov21_021DF374(v2, v1, v0, 1);
            break;
        case 2:
            ov21_021DF548(v2, v1, v0, 1);
            break;
        }

        param1->unk_00++;
        break;
    case 2:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021DF4D0(v2, v1, v0, 1);
            break;
        case 1:
            v3 = ov21_021DF3F0(v2, v1, v0, 1);
            break;
        case 2:
            v3 = ov21_021DF5D0(v2, v1, v0, 1);
            break;
        }

        if (v3) {
            param1->unk_00++;
        }
        break;
    case 3:
        G2_BlendNone();
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021DE8E4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    return 0;
}

static int ov21_021DE8E8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021DE6D4 *v0 = param2;
    UnkStruct_ov21_021DE760 *v1 = param0;
    UnkStruct_ov21_021DF374 *v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        switch (v0->unk_14) {
        case 0:
            ov21_021DF44C(v2, v1, v0, 0);
            break;
        case 1:
            ov21_021DF374(v2, v1, v0, 0);
            break;
        case 2:
            ov21_021DF548(v2, v1, v0, 0);
            break;
        }

        param1->unk_00++;
        break;
    case 1:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021DF4D0(v2, v1, v0, 0);
            break;
        case 1:
            v3 = ov21_021DF3F0(v2, v1, v0, 0);
            break;
        case 2:
            v3 = ov21_021DF5D0(v2, v1, v0, 0);
            break;
        }

        if (v3) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021DEA0C(v2, v1);
        param1->unk_00++;
        break;
    case 3:
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

static void ov21_021DE9A4(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
{
    ov21_021DEF08(param1, param2, param3);
    ov21_021DEF54(param1, param2);
    ov21_021DEFA8(param0, param1, param3);
    ov21_021DF214(param0, param1, param2, param3);
    ov21_021DEA44(param1, param3);
    ov21_021DEB58(param1, param2, param3);

    if (ov21_021D37CC(param2->unk_04) == 2) {
        ov21_021DED24(param0, param1, param2, param3);
        ov21_021DF098(param0, param1, param2, param3);
    }
}

static void ov21_021DEA0C(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1)
{
    ov21_021DF35C(param0);

    BGL_FillWindow(&param1->unk_00->unk_04, 0);

    ov21_021DED68(param0, param1);
    ov21_021DF1F8(param0);
    ov21_021DF054(param0, param1);

    sub_02019EBC(param1->unk_00->unk_00, 1);
}

static void ov21_021DEA44(UnkStruct_ov21_021DE760 *param0, int param1)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 50, 1, &v1, param1);
    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 51, 1, &v1, param1);
    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 52, 1, &v1, param1);
    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 54, 1, &v1, param1);
    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021DEB58(UnkStruct_ov21_021DE760 *param0, const UnkStruct_ov21_021DE6D4 *param1, int param2)
{
    int v0 = ov21_021D37BC(param1->unk_04);

    if (ov21_021D37CC(param1->unk_04) != 2) {
        v0 = 0;
    }

    ov21_021DEB8C(&param0->unk_00->unk_04, v0, param2, param1->unk_18, TEXT_COLOR(2, 1, 0));
}

void ov21_021DEB8C(Window *param0, int param1, int param2, int param3, u32 param4)
{
    Strbuf *v0 = Strbuf_Init(64, param2);
    MessageLoader *v1 = MessageLoader_Init(0, 26, 697, param2);

    MessageLoader_GetStrbuf(v1, 9, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 152, 88, TEXT_SPEED_INSTANT, param4, NULL);

    MessageLoader_GetStrbuf(v1, 10, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 152, 104, TEXT_SPEED_INSTANT, param4, NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);

    ov21_021DEC2C(param0, param2, param1, param4);
    ov21_021DEC80(param0, param2, param1, param4);
    ov21_021DECD4(param0, param2, param1, param3, param4);
}

static void ov21_021DEC2C(Window *param0, int param1, int param2, u32 param3)
{
    Strbuf *v0 = Strbuf_Init(64, param1);

    int heightMessageBankIndex = Height_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(0, 26, heightMessageBankIndex, param1);

    MessageLoader_GetStrbuf(v1, param2, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 184, 88, TEXT_SPEED_INSTANT, param3, NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021DEC80(Window *param0, int param1, int param2, u32 param3)
{
    Strbuf *v0 = Strbuf_Init(64, param1);

    int weightMessageBankIndex = Weight_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(0, 26, weightMessageBankIndex, param1);

    MessageLoader_GetStrbuf(v1, param2, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 184, 104, TEXT_SPEED_INSTANT, param3, NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021DECD4(Window *param0, int param1, int param2, int param3, u32 param4)
{
    Strbuf *v0 = ov21_021D56BC(param2, GAME_LANGUAGE, param3, param1);
    u32 v1 = Font_CalcMaxLineWidth(FONT_SYSTEM, v0, 0);
    u32 v2 = (v1 < 240) ? 128 - v1 / 2 : 8;

    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, v2, 136, TEXT_SPEED_INSTANT, param4, NULL);
    ov21_021D5600(v0);
}

static void ov21_021DED24(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
{
    int v0 = ov21_021D37BC(param2->unk_04);
    int v1 = ov21_021D33D4(param2->unk_04, v0);

    if ((v0 == 487) && (v1 > 0)) {
        v0 = 11;
    }

    ov21_021DED7C(param0, param1, param3, v0);
    ov21_021DEE80(param0, param1, param3);
}

static void ov21_021DED68(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1)
{
    ov21_021DEEF8(param0);
    ov21_021DEE38(param0, param1);
}

static void ov21_021DED7C(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, int param2, int param3)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    int v1 = ov21_021D1F90();
    int v2 = ov21_021D1F94(param3);
    int v3 = ov21_021D1F98();
    int v4 = ov21_021D1F9C();
    int v5 = ov21_021D1FA0();

    param0->unk_24[0] = SpriteResourceCollection_AddTiles(v0->unk_13C[0], v1, v2, 1, 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_24[0]);
    SpriteResource_ReleaseData(param0->unk_24[0]);

    param0->unk_24[1] = SpriteResourceCollection_AddPalette(v0->unk_13C[1], v1, v3, 0, 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    sub_0200A640(param0->unk_24[1]);
    SpriteResource_ReleaseData(param0->unk_24[1]);

    param0->unk_24[2] = SpriteResourceCollection_Add(v0->unk_13C[2], v1, v4, 1, 4000, 2, param2);
    param0->unk_24[3] = SpriteResourceCollection_Add(v0->unk_13C[3], v1, v5, 1, 4000, 3, param2);
}

static void ov21_021DEE38(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    if (param0->unk_24[0] == NULL) {
        return;
    }

    sub_0200A4E4(param0->unk_24[0]);
    sub_0200A6DC(param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_24[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_24[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_24[3]);
}

static void ov21_021DEE80(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;

    sub_020093B4(&v0, 4000, 4000, 4000, 4000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.position.y = (88 * FX32_ONE);
    v1.position.x = (120 * FX32_ONE);

    param0->unk_00[0] = CellActorCollection_Add(&v1);
}

static void ov21_021DEEF8(UnkStruct_ov21_021DF374 *param0)
{
    if (param0->unk_00[0]) {
        CellActor_Delete(param0->unk_00[0]);
    }
}

static void ov21_021DEF08(UnkStruct_ov21_021DE760 *param0, const UnkStruct_ov21_021DE6D4 *param1, int param2)
{
    ov21_021D1778(param0->unk_00, param1->unk_04, param2, ov21_021D375C(param1->unk_04), (172 * FX32_ONE), (32 * FX32_ONE));
    ov21_021D238C(param0->unk_00, 0);
}

static void ov21_021DEF3C(UnkStruct_ov21_021DE760 *param0)
{
    ov21_021D23C0(param0->unk_00, 0);
    ov21_021D2360(param0->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021DEF54(UnkStruct_ov21_021DE760 *param0, const UnkStruct_ov21_021DE6D4 *param1)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);
    int v1 = ov21_021D37BC(param1->unk_04);

    ov21_021D1890(param0->unk_00, param1->unk_04, v1, 2, 48, 72);
    sub_02007DEC(v0, 6, 0);
}

static void ov21_021DEF8C(UnkStruct_ov21_021DE760 *param0)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);

    sub_02007DEC(v0, 6, 1);
    sub_02008780(v0);
}

static void ov21_021DEFA8(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_14[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 90, 1, 90 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_14[0]);
    SpriteResource_ReleaseData(param0->unk_14[0]);

    param0->unk_14[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 13, 0, 13 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    sub_0200A640(param0->unk_14[1]);
    SpriteResource_ReleaseData(param0->unk_14[1]);

    param0->unk_14[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 88, 1, 88 + 4000, 2, param2);
    param0->unk_14[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 89, 1, 89 + 4000, 3, param2);
}

static void ov21_021DF054(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_14[0]);
    sub_0200A6DC(param0->unk_14[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_14[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_14[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_14[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_14[3]);
}

static void ov21_021DF098(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3 = ov21_021D37BC(param2->unk_04);
    int v4, v5;
    int v6 = ov21_021D33D4(param2->unk_04, v3);

    v4 = PokemonPersonalData_GetFormValue(v3, v6, 6);
    v5 = PokemonPersonalData_GetFormValue(v3, v6, 7);
    v4 = ov21_021DF180(v4);
    v5 = ov21_021DF180(v5);

    sub_020093B4(&v0, 90 + 4000, 13 + 4000, 88 + 4000, 89 + 4000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = (170 * FX32_ONE);
    v1.position.y = (72 * FX32_ONE);

    param0->unk_00[1] = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_00[1], 0 + v4);

    if (v4 != v5) {
        v1.position.x = (220 * FX32_ONE);
        v1.position.y = (72 * FX32_ONE);
        param0->unk_00[2] = CellActorCollection_Add(&v1);
        CellActor_SetAnim(param0->unk_00[2], 0 + v5);
    } else {
        param0->unk_00[2] = NULL;
    }
}

int ov21_021DF180(int param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 0x0;
        break;
    case 1:
        v0 = 0x6;
        break;
    case 2:
        v0 = 0xe;
        break;
    case 3:
        v0 = 0xa;
        break;
    case 4:
        v0 = 0x8;
        break;
    case 5:
        v0 = 0x5;
        break;
    case 6:
        v0 = 0xb;
        break;
    case 7:
    case 9:
        v0 = 0x7;
        break;
    case 8:
        v0 = 0x9;
        break;
    case 10:
        v0 = 0x1;
        break;
    case 11:
        v0 = 0x3;
        break;
    case 12:
        v0 = 0x2;
        break;
    case 13:
        v0 = 0x4;
        break;
    case 14:
        v0 = 0xf;
        break;
    case 15:
        v0 = 0xd;
        break;
    case 16:
        v0 = 0x10;
        break;
    case 17:
        v0 = 0xc;
        break;
    }

    return v0;
}

static void ov21_021DF1F8(UnkStruct_ov21_021DF374 *param0)
{
    if (param0->unk_00[1]) {
        CellActor_Delete(param0->unk_00[1]);
    }

    if (param0->unk_00[2]) {
        CellActor_Delete(param0->unk_00[2]);
    }
}

static void ov21_021DF214(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3 = ov21_021D37BC(param2->unk_04);
    Window *v4;
    UnkStruct_ov21_021D4CB8 v5;
    SpriteResource *v6;

    sub_020093B4(&v0, 90 + 4000, 13 + 4000, 88 + 4000, 89 + 4000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = (192 * FX32_ONE);
    v1.position.y = (52 * FX32_ONE);

    param0->unk_0C = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_0C, 0x11);

    if (ov21_021D37CC(param2->unk_04) != 2) {
        v3 = 0;
    }

    v4 = ov21_021DF30C(param1->unk_00->unk_14C, v3, param3);
    v6 = ov21_021D2344(param1->unk_00, 1);

    v5.unk_00 = param1->unk_00->unk_14C;
    v5.unk_08 = sub_0200A72C(v6, NULL);
    v5.unk_0C = param0->unk_0C;
    v5.unk_10 = -78;
    v5.unk_14 = -8;
    v5.unk_18 = 0;
    v5.unk_1C = 32 - 1;
    v5.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v5.unk_24 = param3;
    v5.unk_04 = v4;

    param0->unk_10 = ov21_021D4CA0(&v5);

    ov21_021D4DA0(v4);
}

Window *ov21_021DF30C(UnkStruct_ov21_021D4C0C *param0, int param1, int param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = ov21_021D4D6C(param0, 18, 2);
    v1 = ov21_021D566C(param1, GAME_LANGUAGE, param2);

    {
        u32 v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);
        u32 v3 = (v2 < 136) ? (136 - v2) / 2 : 0;

        ov21_021D4E80(param0, v0, v1, v3, 0);
    }

    ov21_021D5600(v1);

    return v0;
}

static void ov21_021DF35C(UnkStruct_ov21_021DF374 *param0)
{
    CellActor_Delete(param0->unk_0C);
    param0->unk_0C = NULL;
    ov21_021D4D1C(param0->unk_10);
}

static void ov21_021DF374(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    ov21_021D2360(param1->unk_00, GX_OAM_MODE_XLU);
    ov21_021DF64C(param0);

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021DF6B4(param1);
}

static BOOL ov21_021DF3F0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_10)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021DF680(param0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021DEF8C(param1);
            ov21_021DEF3C(param1);
        }
    } else {
        ov21_021DF6B4(param1);
    }

    return v0;
}

static void ov21_021DF44C(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    ov21_021DF64C(param0);

    if (param3 == 0) {
        ov21_021DF6C4(param0, param2->unk_08, param2->unk_0C, 4);
        ov21_021DF6FC(param0);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DF4D0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    BOOL v0[3];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021DF6E0(param0, param1);
        v0[1] = ov21_021DF718(param0, param1);
    } else {
        v0[0] = 1;
        v0[1] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[2] = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0[2] = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    for (v1 = 0; v1 < 3; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 3) {
        if (param3 == 1) {
            ov21_021DF680(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DF548(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    ov21_021DF64C(param0);
    ov21_021D2360(param1->unk_00, GX_OAM_MODE_XLU);

    if (param3 == 0) {
        ov21_021DF6C4(param0, param2->unk_08, param2->unk_0C, 1);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DF5D0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021DF6E0(param0, param1);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[1] = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0[1] = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            ov21_021DF680(param0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021DEF3C(param1);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DF64C(UnkStruct_ov21_021DF374 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_00[v0]) {
            CellActor_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        }
    }

    CellActor_SetExplicitOAMMode(param0->unk_0C, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->unk_10->unk_00, GX_OAM_MODE_XLU);
}

static void ov21_021DF680(UnkStruct_ov21_021DF374 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_00[v0]) {
            CellActor_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        }
    }

    CellActor_SetExplicitOAMMode(param0->unk_0C, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_10->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021DF6B4(UnkStruct_ov21_021DE760 *param0)
{
    ov21_021D24FC(param0->unk_00, &param0->unk_00->unk_168);
}

static void ov21_021DF6C4(UnkStruct_ov21_021DF374 *param0, int param1, int param2, int param3)
{
    ov21_021D2648(&param0->unk_34, 48, param1, 72, param2, param3);
}

static BOOL ov21_021DF6E0(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1)
{
    BOOL v0;

    v0 = ov21_021D2664(&param0->unk_34);
    ov21_021D2164(param1->unk_00, param0->unk_34.unk_00, param0->unk_34.unk_04);

    return v0;
}

static void ov21_021DF6FC(UnkStruct_ov21_021DF374 *param0)
{
    ov21_021D2648(&param0->unk_54, 172, 170, 32, 82, 4);
}

static BOOL ov21_021DF718(UnkStruct_ov21_021DF374 *param0, UnkStruct_ov21_021DE760 *param1)
{
    BOOL v0;

    v0 = ov21_021D2664(&param0->unk_54);
    ov21_021D1848(param1->unk_00, param0->unk_54.unk_00, param0->unk_54.unk_04);

    return v0;
}
