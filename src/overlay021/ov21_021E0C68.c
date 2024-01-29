#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "overlay021/struct_ov21_021E6A68.h"

#include "unk_02002B7C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "message.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D5600.h"
#include "overlay021/ov21_021E0C68.h"
#include "overlay021/ov21_021E29DC.h"

typedef struct {
    int * unk_00;
    UnkStruct_ov21_021D3320 * unk_04;
    int unk_08;
    int unk_0C;
    const UnkStruct_ov21_021E68F4 * unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_ov21_021E0D68;

typedef struct {
    UnkStruct_ov21_021D13FC * unk_00;
} UnkStruct_ov21_021E0D7C;

typedef struct {
    GraphicElementData * unk_00;
    UnkStruct_ov21_021D4CA0 * unk_04;
    UnkStruct_02009DC8 * unk_08[4];
    UnkStruct_ov21_021D2648 unk_18;
    UnkStruct_ov21_021D2648 unk_38;
} UnkStruct_ov21_021E14D4;

static UnkStruct_ov21_021E0D68 * ov21_021E0D04(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021E0D7C * ov21_021E0D40(int param0, UnkStruct_ov21_021D0F60 * param1);
static void ov21_021E0D68(UnkStruct_ov21_021E0D68 * param0);
static void ov21_021E0D7C(UnkStruct_ov21_021E0D7C * param0);
static int ov21_021E0D90(void);
static int ov21_021E0D94(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E0D98(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E0DA8(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E0DAC(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021E0E8C(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021E0E90(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static void ov21_021E14D4(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3);
static BOOL ov21_021E1550(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3);
static void ov21_021E15AC(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3);
static BOOL ov21_021E1630(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3);
static void ov21_021E16A8(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3);
static BOOL ov21_021E1730(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3);
static void ov21_021E17DC(UnkStruct_ov21_021E0D7C * param0);
static void ov21_021E17AC(UnkStruct_ov21_021E14D4 * param0);
static void ov21_021E17C4(UnkStruct_ov21_021E14D4 * param0);
static void ov21_021E17EC(UnkStruct_ov21_021E14D4 * param0, int param1, int param2, int param3);
static BOOL ov21_021E1808(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1);
static void ov21_021E1824(UnkStruct_ov21_021E14D4 * param0);
static BOOL ov21_021E1840(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1);
static void ov21_021E0F4C(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, int param3);
static void ov21_021E0F94(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1);
static void ov21_021E0FBC(UnkStruct_ov21_021E0D7C * param0, int param1);
static void ov21_021E10D0(UnkStruct_ov21_021E0D7C * param0, const UnkStruct_ov21_021E0D68 * param1, int param2);
static void ov21_021E1188(UnkStruct_ov21_021E0D7C * param0, int param1, int param2, int param3, int param4);
static int ov21_021E185C(int param0);
static void ov21_021E18A0(UnkStruct_ov21_021E0D7C * param0, int param1, int param2, int param3);
static void ov21_021E18DC(UnkStruct_ov21_021E0D7C * param0, int param1, int param2, int param3);
static void ov21_021E136C(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, int param3);
static void ov21_021E14BC(UnkStruct_ov21_021E14D4 * param0);
static Window * ov21_021E1460(UnkStruct_ov21_021E0D7C * param0, int param1, int param2);
static void ov21_021E127C(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, int param2);
static void ov21_021E1328(UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1);
static void ov21_021E11DC(UnkStruct_ov21_021E0D7C * param0, const UnkStruct_ov21_021E0D68 * param1, int param2);
static void ov21_021E1210(UnkStruct_ov21_021E0D7C * param0);
static void ov21_021E1228(UnkStruct_ov21_021E0D7C * param0, const UnkStruct_ov21_021E0D68 * param1);
static void ov21_021E1260(UnkStruct_ov21_021E0D7C * param0);

void ov21_021E0C68 (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D0F60 * param1, int param2)
{
    UnkStruct_ov21_021E0D68 * v0;
    UnkStruct_ov21_021E0D7C * v1;

    v0 = ov21_021E0D04(param2, param1);
    v1 = ov21_021E0D40(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021E0D90();
    param0->unk_08[0] = ov21_021E0D94;
    param0->unk_08[1] = ov21_021E0D98;
    param0->unk_08[2] = ov21_021E0DA8;
    param0->unk_14[0] = ov21_021E0DAC;
    param0->unk_14[1] = ov21_021E0E8C;
    param0->unk_14[2] = ov21_021E0E90;
}

void ov21_021E0CC0 (UnkStruct_ov21_021E68F4 * param0)
{
    ov21_021E0D68(param0->unk_00);
    ov21_021E0D7C(param0->unk_04);
}

void ov21_021E0CD4 (UnkStruct_ov21_021E68F4 * param0, int param1, int param2)
{
    UnkStruct_ov21_021E0D68 * v0 = param0->unk_00;

    v0->unk_08 = param1;
    v0->unk_0C = param2;
}

void ov21_021E0CDC (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021E0D68 * v0 = param0->unk_00;
    v0->unk_14 = param1;
}

BOOL ov21_021E0CE4 (UnkStruct_ov21_021E68F4 * param0)
{
    UnkStruct_ov21_021E0D68 * v0 = param0->unk_00;
    return 0;
}

BOOL ov21_021E0CE8 (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021E0D68 * v0 = param0->unk_00;
    BOOL v1 = 1;

    if (param1 == 1) {
        param1 = 0;
        v1 = 0;
    }

    v0->unk_1C = param1;

    return v1;
}

void ov21_021E0CF8 (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021E0D68 * v0 = param0->unk_00;

    v0->unk_18 = param1;
    v0->unk_1C = 0;
}

static UnkStruct_ov21_021E0D68 * ov21_021E0D04 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021E0D68 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E0D68));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E0D68));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);

    v1 = ov21_021D1410(param1, 5);

    v0->unk_10 = v1;

    return v0;
}

static UnkStruct_ov21_021E0D7C * ov21_021E0D40 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021E0D7C * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E0D7C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E0D7C));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021E0D68 (UnkStruct_ov21_021E0D68 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E0D7C (UnkStruct_ov21_021E0D7C * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021E0D90 (void)
{
    return 0;
}

static int ov21_021E0D94 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    return 1;
}

static int ov21_021E0D98 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E0D68 * v0 = param1;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021E0DA8 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    return 1;
}

static int ov21_021E0DAC (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E0D68 * v0 = param2;
    UnkStruct_ov21_021E0D7C * v1 = param0;
    UnkStruct_ov21_021E14D4 * v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021E14D4));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E14D4));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E0F4C(v2, v1, v0, param1->unk_04);

        switch (v0->unk_14) {
        case 0:
            ov21_021E15AC(v2, v1, v0, 1);
            break;
        case 1:
            ov21_021E14D4(v2, v1, v0, 1);
            break;
        case 2:
            ov21_021E16A8(v2, v1, v0, 1);
            break;
        }

        param1->unk_00++;
        break;

    case 2:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021E1630(v2, v1, v0, 1);
            break;
        case 1:
            v3 = ov21_021E1550(v2, v1, v0, 1);
            break;
        case 2:
            v3 = ov21_021E1730(v2, v1, v0, 1);
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

static int ov21_021E0E8C (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    return 0;
}

static int ov21_021E0E90 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E0D68 * v0 = param2;
    UnkStruct_ov21_021E0D7C * v1 = param0;
    UnkStruct_ov21_021E14D4 * v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        switch (v0->unk_14) {
        case 0:
            ov21_021E15AC(v2, v1, v0, 0);
            break;
        case 1:
            ov21_021E14D4(v2, v1, v0, 0);
            break;
        case 2:
            ov21_021E16A8(v2, v1, v0, 0);
            break;
        }

        param1->unk_00++;
        break;
    case 1:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021E1630(v2, v1, v0, 0);
            break;
        case 1:
            v3 = ov21_021E1550(v2, v1, v0, 0);
            break;
        case 2:
            v3 = ov21_021E1730(v2, v1, v0, 0);
            break;
        }

        if (v3) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E0F94(v2, v1);
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

static void ov21_021E0F4C (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, int param3)
{
    ov21_021E11DC(param1, param2, param3);
    ov21_021E1228(param1, param2);
    ov21_021E127C(param0, param1, param3);
    ov21_021E136C(param0, param1, param2, param3);
    ov21_021E0FBC(param1, param3);
    ov21_021E10D0(param1, param2, param3);
}

static void ov21_021E0F94 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1)
{
    ov21_021E14BC(param0);
    BGL_FillWindow(&param1->unk_00->unk_04, 0);

    ov21_021E1328(param0, param1);
    sub_02019EBC(param1->unk_00->unk_00, 1);
}

static void ov21_021E0FBC (UnkStruct_ov21_021E0D7C * param0, int param1)
{
    void * v0;
    NNSG2dScreenData * v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 50, 1, &v1, param1);
    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 51, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 55, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 56, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021E10D0 (UnkStruct_ov21_021E0D7C * param0, const UnkStruct_ov21_021E0D68 * param1, int param2)
{
    Strbuf* v0 = Strbuf_Init(64, param2);
    MessageLoader * v1 = MessageLoader_Init(0, 26, 697, param2);
    int v2 = ov21_021D37BC(param1->unk_04);
    int v3;
    int v4;

    if (ov21_021D37CC(param1->unk_04) != 2) {
        v2 = 0;
        GF_ASSERT(0);
    }

    v3 = ov21_021E185C(param1->unk_18);

    MessageLoader_GetStrbuf(v1, v3, v0);

    v4 = sub_02002D7C(0, v0, 0);
    v4 /= 2;

    sub_0201D78C(&param0->unk_00->unk_04, 0, v0, 176 - v4, 72, 0, ((u32)(((2 & 0xff) << 16) | ((1 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);

    ov21_021E1188(param0, param2, v2, param1->unk_18, param1->unk_1C);
    ov21_021E18A0(param0, param2, v2, param1->unk_18);
    ov21_021E18DC(param0, param2, v2, param1->unk_18);
}

static void ov21_021E1188 (UnkStruct_ov21_021E0D7C * param0, int param1, int param2, int param3, int param4)
{
    Strbuf* v0 = ov21_021D56BC(param2, param3, param4, param1);
    u32 v1 = sub_02002EB4(0, v0, 0);
    u32 v2 = (v1 < 240) ? 128 - v1 / 2 : 8;

    sub_0201D78C(&param0->unk_00->unk_04, 0, v0, v2, 136, 0, ((u32)(((2 & 0xff) << 16) | ((1 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    ov21_021D5600(v0);
}

static void ov21_021E11DC (UnkStruct_ov21_021E0D7C * param0, const UnkStruct_ov21_021E0D68 * param1, int param2)
{
    ov21_021D1778(param0->unk_00, param1->unk_04, param2, ov21_021D375C(param1->unk_04), (172 * FX32_ONE), (32 * FX32_ONE));
    ov21_021D238C(param0->unk_00, 0);
}

static void ov21_021E1210 (UnkStruct_ov21_021E0D7C * param0)
{
    ov21_021D23C0(param0->unk_00, 0);
    ov21_021D2360(param0->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021E1228 (UnkStruct_ov21_021E0D7C * param0, const UnkStruct_ov21_021E0D68 * param1)
{
    Sprite * v0 = ov21_021D2170(param0->unk_00);
    int v1 = ov21_021D37BC(param1->unk_04);

    ov21_021D1890(param0->unk_00, param1->unk_04, v1, 2, 48, 72);
    sub_02007DEC(v0, 6, 0);
}

static void ov21_021E1260 (UnkStruct_ov21_021E0D7C * param0)
{
    Sprite * v0 = ov21_021D2170(param0->unk_00);

    sub_02007DEC(v0, 6, 1);
    sub_02008780(v0);
}

static void ov21_021E127C (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, int param2)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;
    NARC * v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_08[0] = sub_02009A4C(v0->unk_13C[0], v1, 90, 1, 90 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_08[0]);
    sub_02009D4C(param0->unk_08[0]);

    param0->unk_08[1] = sub_02009B04(v0->unk_13C[1], v1, 13, 0, 13 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    sub_0200A640(param0->unk_08[1]);
    sub_02009D4C(param0->unk_08[1]);

    param0->unk_08[2] = sub_02009BC4(v0->unk_13C[2], v1, 88, 1, 88 + 4000, 2, param2);
    param0->unk_08[3] = sub_02009BC4(v0->unk_13C[3], v1, 89, 1, 89 + 4000, 3, param2);
}

static void ov21_021E1328 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_08[0]);
    sub_0200A6DC(param0->unk_08[1]);

    sub_02009D68(v0->unk_13C[0], param0->unk_08[0]);
    sub_02009D68(v0->unk_13C[1], param0->unk_08[1]);
    sub_02009D68(v0->unk_13C[2], param0->unk_08[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_08[3]);
}

static void ov21_021E136C (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, int param3)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;
    int v3 = ov21_021D37BC(param2->unk_04);
    Window * v4;
    UnkStruct_ov21_021D4CB8 v5;
    UnkStruct_02009DC8 * v6;

    sub_020093B4(&v0, 90 + 4000, 13 + 4000, 88 + 4000, 89 + 4000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.unk_00 = v2->unk_138;
    v1.unk_04 = &v0;
    v1.unk_14 = 32;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_1C = param3;
    v1.unk_08.x = (192 * FX32_ONE);
    v1.unk_08.y = (52 * FX32_ONE);

    param0->unk_00 = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_00, 0x11);

    if (ov21_021D37CC(param2->unk_04) != 2) {
        v3 = 0;
    }

    v4 = ov21_021E1460(param1, v3, param3);
    v6 = ov21_021D2344(param1->unk_00, 1);

    v5.unk_00 = param1->unk_00->unk_14C;
    v5.unk_08 = sub_0200A72C(v6, NULL);
    v5.unk_0C = param0->unk_00;
    v5.unk_10 = -78;
    v5.unk_14 = -8;
    v5.unk_18 = 0;
    v5.unk_1C = 32 - 1;
    v5.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v5.unk_24 = param3;
    v5.unk_04 = v4;

    param0->unk_04 = ov21_021D4CA0(&v5);

    ov21_021D4DA0(v4);
}

static Window * ov21_021E1460 (UnkStruct_ov21_021E0D7C * param0, int param1, int param2)
{
    Window * v0;
    Strbuf* v1;

    v0 = ov21_021D4D6C(param0->unk_00->unk_14C, 18, 2);
    v1 = ov21_021D566C(param1, GAME_LANGUAGE, param2);

    {
        u32 v2 = sub_02002D7C(2, v1, 0);
        u32 v3 = (v2 < 136) ? (136 - v2) / 2 : 0;
        ov21_021D4E80(param0->unk_00->unk_14C, v0, v1, v3, 0);
    }

    ov21_021D5600(v1);

    return v0;
}

static void ov21_021E14BC (UnkStruct_ov21_021E14D4 * param0)
{
    sub_02021BD4(param0->unk_00);
    param0->unk_00 = NULL;
    ov21_021D4D1C(param0->unk_04);
}

static void ov21_021E14D4 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3)
{
    ov21_021D2360(param1->unk_00, GX_OAM_MODE_XLU);
    ov21_021E17AC(param0);

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021E17DC(param1);
}

static BOOL ov21_021E1550 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_10)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021E17C4(param0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021E1260(param1);
            ov21_021E1210(param1);
        }
    } else {
        ov21_021E17DC(param1);
    }

    return v0;
}

static void ov21_021E15AC (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3)
{
    ov21_021E17AC(param0);

    if (param3 == 0) {
        ov21_021E17EC(param0, param2->unk_08, param2->unk_0C, 4);
        ov21_021E1824(param0);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E1630 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3)
{
    BOOL v0[3];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021E1808(param0, param1);

        v0[1] = ov21_021E1840(param0, param1);
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
            ov21_021E17C4(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E16A8 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3)
{
    ov21_021E17AC(param0);
    ov21_021D2360(param1->unk_00, GX_OAM_MODE_XLU);

    if (param3 == 0) {
        ov21_021E17EC(param0, param2->unk_08, param2->unk_0C, 1);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E1730 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1, const UnkStruct_ov21_021E0D68 * param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021E1808(param0, param1);
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
            ov21_021E17C4(param0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021E1210(param1);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E17AC (UnkStruct_ov21_021E14D4 * param0)
{
    sub_02021FE0(param0->unk_00, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->unk_04->unk_00, GX_OAM_MODE_XLU);
}

static void ov21_021E17C4 (UnkStruct_ov21_021E14D4 * param0)
{
    sub_02021FE0(param0->unk_00, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_04->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021E17DC (UnkStruct_ov21_021E0D7C * param0)
{
    ov21_021D24FC(param0->unk_00, &param0->unk_00->unk_168);
}

static void ov21_021E17EC (UnkStruct_ov21_021E14D4 * param0, int param1, int param2, int param3)
{
    ov21_021D2648(&param0->unk_18, 48, param1, 72, param2, param3);
}

static BOOL ov21_021E1808 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1)
{
    BOOL v0;

    v0 = ov21_021D2664(&param0->unk_18);
    ov21_021D2164(param1->unk_00, param0->unk_18.unk_00, param0->unk_18.unk_04);

    return v0;
}

static void ov21_021E1824 (UnkStruct_ov21_021E14D4 * param0)
{
    ov21_021D2648(&param0->unk_38, 172, 170, 32, 82, 4);
}

static BOOL ov21_021E1840 (UnkStruct_ov21_021E14D4 * param0, UnkStruct_ov21_021E0D7C * param1)
{
    BOOL v0;

    v0 = ov21_021D2664(&param0->unk_38);
    ov21_021D1848(param1->unk_00, param0->unk_38.unk_00, param0->unk_38.unk_04);

    return v0;
}

static int ov21_021E185C (int param0)
{
    int v0;

    switch (param0) {
    case 1:
        v0 = 125;
        break;
    case 2:
        v0 = 22;
        break;
    case 3:
        v0 = 23;
        break;
    case 4:
        v0 = 25;
        break;
    case 5:
        v0 = 24;
        break;
    case 7:
        v0 = 26;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

static void ov21_021E18A0 (UnkStruct_ov21_021E0D7C * param0, int param1, int param2, int param3)
{
    Strbuf* v0 = ov21_021D561C(param2, param3, param1);

    sub_0201D78C(&param0->unk_00->unk_04, 0, v0, 120, 96, 0, ((u32)(((2 & 0xff) << 16) | ((1 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    ov21_021D5600(v0);
}

static void ov21_021E18DC (UnkStruct_ov21_021E0D7C * param0, int param1, int param2, int param3)
{
    Strbuf* v0 = ov21_021D566C(param2, param3, param1);
    u32 v1;

    v1 = 240 - sub_02002D7C(0, v0, 0);

    sub_0201D78C(&param0->unk_00->unk_04, 0, v0, v1, 112, 0, ((u32)(((2 & 0xff) << 16) | ((1 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    ov21_021D5600(v0);
}
