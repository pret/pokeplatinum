#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D5844.h"
#include "overlay021/struct_ov21_021D5868.h"
#include "overlay021/struct_ov21_021D5890.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "overlay021/struct_ov21_021E6A68.h"

#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D517C.h"
#include "overlay021/ov21_021D57B4.h"
#include "overlay021/ov21_021DC9BC.h"
#include "overlay021/ov21_021E29DC.h"

static const u16 Unk_ov21_021E9D78[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D76[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D74[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D72[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D70[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D6E[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D6C[] = {
	0xffff
};

static const u16 Unk_ov21_021E9D7A[] = {
	0xA,
	0xffff
};

typedef struct {
    UnkStruct_ov21_021D3320 * unk_00;
    int unk_04;
    UnkStruct_ov21_021E68F4 * unk_08;
} UnkStruct_ov21_021DCACC;

typedef struct {
    UnkStruct_ov21_021D13FC * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov21_021DCAE0;

typedef struct {
    int unk_00;
    u8 * unk_04;
    u8 * unk_08;
    u32 unk_0C;
    u32 unk_10;
    UnkStruct_ov21_021D5844 unk_14;
    UnkStruct_ov21_021D5844 unk_1C;
    UnkStruct_ov21_021D5844 unk_24;
    UnkStruct_ov21_021D5844 unk_2C;
} UnkStruct_ov21_021DDABC;

typedef struct {
    int unk_00;
    GraphicElementData * unk_04[44];
    UnkStruct_02009DC8 * unk_B4[4];
    int unk_C4;
    GraphicElementData * unk_C8;
    UnkStruct_ov21_021D4CA0 * unk_CC;
    UnkStruct_02009DC8 * unk_D0[4];
    UnkStruct_ov21_021D4CA0 * unk_E0[3];
    u8 unk_EC[900];
    u8 unk_470[900];
    void * unk_7F4;
    NNSG2dCharacterData * unk_7F8;
    void * unk_7FC;
    NNSG2dCharacterData * unk_800;
    UnkStruct_ov21_021D5868 * unk_804;
    UnkStruct_ov21_021D5890 * unk_808;
    int unk_80C;
    int unk_810;
    UnkStruct_ov21_021D2648 unk_814;
    u32 unk_834;
    u32 unk_838;
    u32 unk_83C;
    u32 unk_840;
} UnkStruct_ov21_021DD420;

static UnkStruct_ov21_021DCACC * ov21_021DCA5C(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021DCAE0 * ov21_021DCAA0(int param0, UnkStruct_ov21_021D0F60 * param1);
static void ov21_021DCACC(UnkStruct_ov21_021DCACC * param0);
static void ov21_021DCAE0(UnkStruct_ov21_021DCAE0 * param0);
static int ov21_021DCAF4(void);
static int ov21_021DCAF8(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021DCB6C(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021DCBA8(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021DCBD8(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021DCCD8(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021DCD04(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static void ov21_021DDCF4(UnkStruct_ov21_021DCAE0 * param0, const UnkStruct_ov21_021DCACC * param1);
static void ov21_021DD420(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DD458(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DD490(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3);
static BOOL ov21_021DD508(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3);
static void ov21_021DD554(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3);
static BOOL ov21_021DD5E4(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3);
static void ov21_021DCDD0(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, const UnkStruct_ov21_021DDABC * param3, int param4);
static void ov21_021DCE20(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1);
static void ov21_021DCE40(UnkStruct_ov21_021DCAE0 * param0, const UnkStruct_ov21_021DCACC * param1, int param2);
static void ov21_021DD668(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, int param2);
static void ov21_021DD6C0(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1);
static void ov21_021DCFC8(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, int param2);
static void ov21_021DD114(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1);
static void ov21_021DD1A8(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, int param2);
static void ov21_021DD2B8(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DD2E0(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, int param3);
static void ov21_021DD3FC(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DD9E8(UnkStruct_ov21_021DD420 * param0, const UnkStruct_ov21_021DDABC * param1);
static void ov21_021DDA48(UnkStruct_ov21_021DD420 * param0, int param1);
static void ov21_021DDA80(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, const UnkStruct_ov21_021DDABC * param3, int param4);
static void ov21_021DD710(UnkStruct_ov21_021DD420 * param0, const UnkStruct_ov21_021DCACC * param1, const UnkStruct_ov21_021DDABC * param2, int param3);
static void ov21_021DD8B4(UnkStruct_ov21_021DD420 * param0);
static u8 * ov21_021DD900(u32 param0, const UnkStruct_ov21_021DCACC * param1, u32 * param2);
static u8 * ov21_021DD908(u32 param0, const UnkStruct_ov21_021DCACC * param1, u32 * param2);
static void ov21_021DD964(UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1);
static void ov21_021DDB8C(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DDBCC(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DDC14(UnkStruct_ov21_021DD420 * param0);
static void ov21_021DDABC(UnkStruct_ov21_021DDABC * param0, UnkStruct_ov21_021DCACC * param1, int param2);
static void ov21_021DDB68(UnkStruct_ov21_021DDABC * param0);

void ov21_021DC9BC (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D0F60 * param1, int param2)
{
    UnkStruct_ov21_021DCACC * v0;
    UnkStruct_ov21_021DCAE0 * v1;

    v0 = ov21_021DCA5C(param2, param1);
    v1 = ov21_021DCAA0(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021DCAF4();
    param0->unk_08[0] = ov21_021DCAF8;
    param0->unk_08[1] = ov21_021DCB6C;
    param0->unk_08[2] = ov21_021DCBA8;
    param0->unk_14[0] = ov21_021DCBD8;
    param0->unk_14[1] = ov21_021DCCD8;
    param0->unk_14[2] = ov21_021DCD04;
}

void ov21_021DCA14 (UnkStruct_ov21_021E68F4 * param0)
{
    ov21_021DCACC(param0->unk_00);
    ov21_021DCAE0(param0->unk_04);
}

int ov21_021DCA28 (const UnkStruct_ov21_021E68F4 * param0)
{
    const UnkStruct_ov21_021DCACC * v0 = param0->unk_00;
    return v0->unk_04;
}

void ov21_021DCA30 (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021DCACC * v0 = param0->unk_00;

    GF_ASSERT(param1 < 3);
    v0->unk_04 = param1;
}

void ov21_021DCA44 (UnkStruct_ov21_021E68F4 * param0, int param1, int param2)
{
    UnkStruct_ov21_021DCAE0 * v0 = param0->unk_04;

    v0->unk_04 = param1;
    v0->unk_08 = param2;
}

void ov21_021DCA4C (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021DCAE0 * v0 = param0->unk_04;
    v0->unk_0C = param1;
}

void ov21_021DCA54 (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021DCAE0 * v0 = param0->unk_04;
    v0->unk_10 = param1;
}

static UnkStruct_ov21_021DCACC * ov21_021DCA5C (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021DCACC * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021DCACC));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DCACC));

    v0->unk_00 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);

    return v0;
}

static UnkStruct_ov21_021DCAE0 * ov21_021DCAA0 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021DCAE0 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021DCAE0));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DCAE0));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021DCACC (UnkStruct_ov21_021DCACC * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DCAE0 (UnkStruct_ov21_021DCAE0 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021DCAF4 (void)
{
    return 0;
}

static int ov21_021DCAF8 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021DCACC * v0 = param1;
    UnkStruct_ov21_021DDABC * v1;

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021DDABC));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021DDABC));

    param0->unk_08 = v1;

    if (v0->unk_00->unk_1744 == 0) {
        v0->unk_04 = 0;
    } else {
        if ((v0->unk_00->unk_1744 == 1) || (v0->unk_00->unk_1744 == 2)) {
            v0->unk_04 = 1;
        } else {
            v0->unk_04 = 2;
        }
    }

    v1->unk_04 = ov21_021DD900(param0->unk_04, v0, &v1->unk_0C);
    v1->unk_08 = ov21_021DD908(param0->unk_04, v0, &v1->unk_10);

    ov21_021DDABC(v1, v0, param0->unk_04);

    v1->unk_00 = v0->unk_04;

    return 1;
}

static int ov21_021DCB6C (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021DCACC * v0 = param1;
    UnkStruct_ov21_021DDABC * v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (v1->unk_00 != v0->unk_04) {
        ov21_021DDB68(v1);
        ov21_021DDABC(v1, v0, param0->unk_04);
        v1->unk_00 = v0->unk_04;
    }

    return 0;
}

static int ov21_021DCBA8 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021DDABC * v0 = param0->unk_08;

    if (v0->unk_04) {
        Heap_FreeToHeap(v0->unk_04);
    }

    if (v0->unk_08) {
        Heap_FreeToHeap(v0->unk_08);
    }

    ov21_021DDB68(v0);
    Heap_FreeToHeap(v0);

    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021DCBD8 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021DCACC * v0 = param2;
    const UnkStruct_ov21_021DDABC * v1 = param3->unk_08;
    UnkStruct_ov21_021DCAE0 * v2 = param0;
    UnkStruct_ov21_021DD420 * v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021DD420));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021DD420));

        v3 = param1->unk_08;
        v3->unk_00 = v0->unk_04;
        v3->unk_804 = ov21_021D5868(param1->unk_04, NULL);
        v3->unk_808 = ov21_021D5890(param1->unk_04, NULL);

        param1->unk_00++;
        break;
    case 1:
        ov21_021DCDD0(v3, v2, v0, v1, param1->unk_04);
        ov21_021DD710(param1->unk_08, v0, v1, param1->unk_04);
        ov21_021DD9E8(param1->unk_08, v1);
        ov21_021DDB8C(v3);
        ov21_021DD964(v3, v2);

        if (v2->unk_0C == 0) {
            ov21_021DD490(v3, v2, v0, 1);
        } else {
            ov21_021DD554(v3, v2, v0, 1);
        }

        param1->unk_00++;
        break;
    case 2:
        if (v2->unk_0C == 0) {
            v4 = ov21_021DD508(v3, v2, v0, 1);
        } else {
            v4 = ov21_021DD5E4(v3, v2, v0, 1);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021DDBCC(v3);
        return 1;
    }

    return 0;
}

static int ov21_021DCCD8 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021DCACC * v0 = param2;
    const UnkStruct_ov21_021DDABC * v1 = param3->unk_08;
    UnkStruct_ov21_021DCAE0 * v2 = param0;
    UnkStruct_ov21_021DD420 * v3 = param1->unk_08;

    ov21_021DDC14(v3);
    ov21_021DDA80(v3, v2, v0, v1, param1->unk_04);

    return 0;
}

static int ov21_021DCD04 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021DCACC * v0 = param2;
    const UnkStruct_ov21_021DDABC * v1 = param3->unk_08;
    UnkStruct_ov21_021DCAE0 * v2 = param0;
    UnkStruct_ov21_021DD420 * v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        ov21_021DDB8C(v3);

        if (v2->unk_0C == 0) {
            ov21_021DD490(v3, v2, v0, 0);
        } else {
            ov21_021DD554(v3, v2, v0, 0);
        }

        param1->unk_00++;
        break;
    case 1:
        if (v2->unk_0C == 0) {
            v4 = ov21_021DD508(v3, v2, v0, 0);
        } else {
            v4 = ov21_021DD5E4(v3, v2, v0, 0);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021DD8B4(v3);
        ov21_021DCE20(v3, v2);
        param1->unk_00++;
        break;
    case 3:
        GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);
        Heap_FreeToHeap(v3->unk_804);
        Heap_FreeToHeap(v3->unk_808);
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021DCDD0 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, const UnkStruct_ov21_021DDABC * param3, int param4)
{
    ov21_021DCE40(param1, param2, param4);
    ov21_021DD668(param0, param1, param4);
    ov21_021DCFC8(param0, param1, param4);
    ov21_021DD1A8(param0, param1, param4);
    ov21_021DD2E0(param0, param1, param2, param4);
    ov21_021DDA48(param0, param2->unk_04);
    ov21_021DDCF4(param1, param2);
}

static void ov21_021DCE20 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1)
{
    ov21_021DD6C0(param0, param1);
    ov21_021DD3FC(param0);
    ov21_021DD2B8(param0);
    ov21_021DD114(param0, param1);
}

static void ov21_021DCE40 (UnkStruct_ov21_021DCAE0 * param0, const UnkStruct_ov21_021DCACC * param1, int param2)
{
    void * v0;
    NNSG2dScreenData * v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 64, 1, &v1, param2);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    if (param1->unk_00->unk_1764) {
        v0 = ov21_021D27B8(param0->unk_00, 65, 1, &v1, param2);

        sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 13, 8, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    if (param1->unk_00->unk_176C) {
        v0 = ov21_021D27B8(param0->unk_00, 66, 1, &v1, param2);

        sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 28, 7, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    if (param1->unk_00->unk_1760) {
        v0 = ov21_021D27B8(param0->unk_00, 67, 1, &v1, param2);

        sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 11, 8, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    if (param1->unk_00->unk_1768) {
        v0 = ov21_021D27B8(param0->unk_00, 68, 1, &v1, param2);

        sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 25, 16, v1->screenWidth / 8, v1->screenHeight / 8);
        Heap_FreeToHeap(v0);
    }

    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021DCFC8 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, int param2)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;
    NARC * v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_B4[0] = sub_02009A4C(v0->unk_13C[0], v1, 108, 1, 108 + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_B4[0]);
    sub_02009D4C(param0->unk_B4[0]);

    param0->unk_B4[2] = sub_02009BC4(v0->unk_13C[2], v1, 106, 1, 106 + 6000, 2, param2);
    param0->unk_B4[3] = sub_02009BC4(v0->unk_13C[3], v1, 107, 1, 107 + 6000, 3, param2);
    param0->unk_D0[0] = sub_02009A4C(v0->unk_13C[0], v1, 93, 1, 93 + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_D0[0]);
    sub_02009D4C(param0->unk_D0[0]);

    param0->unk_D0[1] = sub_02009B04(v0->unk_13C[1], v1, 14, 0, 14 + 6000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    sub_0200A640(param0->unk_D0[1]);
    sub_02009D4C(param0->unk_D0[1]);

    param0->unk_D0[2] = sub_02009BC4(v0->unk_13C[2], v1, 91, 1, 91 + 6000, 2, param2);
    param0->unk_D0[3] = sub_02009BC4(v0->unk_13C[3], v1, 92, 1, 92 + 6000, 3, param2);
}

static void ov21_021DD114 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_B4[0]);
    sub_02009D68(v0->unk_13C[0], param0->unk_B4[0]);
    sub_02009D68(v0->unk_13C[2], param0->unk_B4[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_B4[3]);
    sub_0200A4E4(param0->unk_D0[0]);
    sub_0200A6DC(param0->unk_D0[1]);
    sub_02009D68(v0->unk_13C[0], param0->unk_D0[0]);
    sub_02009D68(v0->unk_13C[1], param0->unk_D0[1]);
    sub_02009D68(v0->unk_13C[2], param0->unk_D0[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_D0[3]);
}

static void ov21_021DD1A8 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;
    int v3;

    sub_020093B4(&v0, 93 + 6000, 14 + 6000, 91 + 6000, 92 + 6000, 0xffffffff, 0xffffffff, 0, 1, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.manager = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.position.x = 160 * FX32_ONE;
    v1.position.y = 96 * FX32_ONE;

    param0->unk_C8 = sub_02021B90(&v1);

    SpriteActor_SetSpriteAnimActive(param0->unk_C8, 2);
    sub_020093B4(&v0, 108 + 6000, 14 + 6000, 106 + 6000, 107 + 6000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.manager = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.position.x = 0;
    v1.position.y = 0;

    for (v3 = 0; v3 < (22 * 2); v3++) {
        param0->unk_04[v3] = sub_02021B90(&v1);
        sub_02021CAC(param0->unk_04[v3], 0);
        sub_02021FE0(param0->unk_04[v3], GX_OAM_MODE_XLU);
    }
}

static void ov21_021DD2B8 (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    GraphicElementData_Delete(param0->unk_C8);
    param0->unk_C8 = NULL;

    for (v0 = 0; v0 < (22 * 2); v0++) {
        GraphicElementData_Delete(param0->unk_04[v0]);
        param0->unk_04[v0] = NULL;
    }
}

static void ov21_021DD2E0 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, int param3)
{
    Window * v0;
    UnkStruct_ov21_021D4CB8 v1;
    UnkStruct_02009DC8 * v2;
    UnkStruct_ov21_021D13FC * v3 = param1->unk_00;
    int v4;
    int v5;
    u32 v6;

    GF_ASSERT(param0->unk_C8);

    v2 = sub_02009DC8(param1->unk_00->unk_13C[1], 14 + 6000);

    v1.unk_00 = v3->unk_14C;
    v1.unk_08 = sub_0200A72C(v2, NULL);
    v1.unk_18 = 1;
    v1.unk_1C = 31 - 1;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_24 = param3;

    v4 = sub_0201FAB4(v1.unk_08, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0 = ov21_021D4D6C(v3->unk_14C, 16, 2);
    v6 = ov21_021D4DAC(v3->unk_14C, v0, 697, 35, 0, 0);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_C8;
    v1.unk_10 = -(v6 / 2);
    v1.unk_14 = -8;

    param0->unk_CC = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_CC->unk_00, v4 + 2);
    ov21_021D4DA0(v0);

    for (v5 = 0; v5 < 3; v5++) {
        v0 = ov21_021D4D6C(v3->unk_14C, 9, 2);
        v6 = ov21_021D4DAC(v3->unk_14C, v0, 697, 36 + v5, 0, 0);

        v1.unk_04 = v0;
        v1.unk_0C = NULL;
        v1.unk_10 = 8 + ((9 * 8) - v6) / 2;
        v1.unk_14 = 32;

        param0->unk_E0[v5] = ov21_021D4CA0(&v1);

        sub_02012A60(param0->unk_E0[v5]->unk_00, v4 + 2);
        ov21_021D4DA0(v0);
    }
}

static void ov21_021DD3FC (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    ov21_021D4D1C(param0->unk_CC);

    for (v0 = 0; v0 < 3; v0++) {
        ov21_021D4D1C(param0->unk_E0[v0]);
    }
}

static void ov21_021DD420 (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    sub_02021FE0(param0->unk_C8, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->unk_CC->unk_00, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02012AF0(param0->unk_E0[v0]->unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021DD458 (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    sub_02021FE0(param0->unk_C8, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_CC->unk_00, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02012AF0(param0->unk_E0[v0]->unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021DD490 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3)
{
    ov21_021DD420(param0);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }

    ov21_021D24FC(param1->unk_00, &param1->unk_00->unk_168);
}

static BOOL ov21_021DD508 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0) {
        if (param3) {
            ov21_021DD458(param0);
        }

        return 1;
    } else {
        ov21_021D24FC(param1->unk_00, &param1->unk_00->unk_168);
    }

    return 0;
}

static void ov21_021DD554 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3)
{
    ov21_021DD420(param0);

    if (param3 == 0) {
        ov21_021D2648(&param0->unk_814, 40, param1->unk_04, 120, param1->unk_08, param1->unk_10);
    }

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, param1->unk_10, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, param1->unk_10, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DD5E4 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021D2664(&param0->unk_814);
        ov21_021D2164(param1->unk_00, param0->unk_814.unk_00, param0->unk_814.unk_04);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_08)) {
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
            ov21_021DD458(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DD668 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, int param2)
{
    BGL_FillWindow(&param1->unk_00->unk_04, 0);

    param0->unk_7F4 = ov21_021D2808(param1->unk_00, 30, 1, &param0->unk_7F8, param2);
    param0->unk_7FC = ov21_021D2808(param1->unk_00, 31, 1, &param0->unk_800, param2);

    sub_0201C2B4(&param1->unk_00->unk_04, 8);
}

static void ov21_021DD6C0 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1)
{
    BGL_FillWindow(&param1->unk_00->unk_04, 0);
    sub_02019EBC(param1->unk_00->unk_00, 1);
    Heap_FreeToHeap(param0->unk_7F4);

    param0->unk_7F4 = NULL;
    param0->unk_7F8 = NULL;

    Heap_FreeToHeap(param0->unk_7FC);

    param0->unk_7FC = NULL;
    param0->unk_800 = NULL;

    sub_0201C2B4(&param1->unk_00->unk_04, 0);
}

static void ov21_021DD710 (UnkStruct_ov21_021DD420 * param0, const UnkStruct_ov21_021DCACC * param1, const UnkStruct_ov21_021DDABC * param2, int param3)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6;
    u8 * v7;
    int v8;

    ov21_021DD8B4(param0);

    param0->unk_838 = ov21_021D5948(param0->unk_EC, 30, 30, param0->unk_808, &param2->unk_1C, param2->unk_04, param2->unk_0C);
    v8 = (param2->unk_1C.unk_04 - 1) + param2->unk_0C;
    v7 = Heap_AllocFromHeapAtEnd(param3, v8);

    for (v0 = 0; v0 < v8; v0++) {
        if (v0 < param2->unk_0C) {
            v7[v0] = param2->unk_04[v0];
        } else {
            v7[v0] = param2->unk_1C.unk_00[v0 - param2->unk_0C];
        }
    }

    param0->unk_840 = ov21_021D5948(param0->unk_470, 30, 30, param0->unk_808, &param2->unk_2C, v7, v8);

    Heap_FreeToHeap(v7);
    ov21_021D5214(param0->unk_EC, 30, 30);
    ov21_021D5214(param0->unk_470, 30, 30);

    v6 = ov21_021D37BC(param1->unk_00);

    if (v6 == 349) {
        v2 = 4;
        v3 = 5;
        v4 = 92 + 0;
        v5 = 32 + -18;
    } else {
        v2 = 0;
        v3 = 1;
        v4 = 92;
        v5 = 32;
    }

    param0->unk_C4 = 0;
    param0->unk_C4 = ov21_021D5A20(param0->unk_04, param0->unk_C4, (22 * 2), v4, v5, 5, 5, param0->unk_804, &param2->unk_14, 2, v2, param2->unk_08, param2->unk_10, &param0->unk_834);

    v8 = (param2->unk_14.unk_04 - 1) + param2->unk_10;
    v7 = Heap_AllocFromHeapAtEnd(param3, v8);

    for (v0 = 0; v0 < v8; v0++) {
        if (v0 < param2->unk_10) {
            v7[v0] = param2->unk_08[v0];
        } else {
            v7[v0] = param2->unk_14.unk_00[v0 - param2->unk_10];
        }
    }

    param0->unk_C4 = ov21_021D5A20(param0->unk_04, param0->unk_C4, (22 * 2), v4, v5, 5, 5, param0->unk_804, &param2->unk_24, 3, v3, v7, v8, &param0->unk_83C);

    Heap_FreeToHeap(v7);
}

static void ov21_021DD8B4 (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    memset(param0->unk_EC, 0, sizeof(u8) * (30 * 30));
    memset(param0->unk_470, 0, sizeof(u8) * (30 * 30));

    for (v0 = 0; v0 < param0->unk_C4; v0++) {
        sub_02021CAC(param0->unk_04[v0], 0);
    }

    param0->unk_C4 = 0;
}

static u8 * ov21_021DD900 (u32 param0, const UnkStruct_ov21_021DCACC * param1, u32 * param2)
{
    u32 v0;
    int v1;
    u8 * v2;

    v0 = 0;

    if (param1->unk_00->unk_1760 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D78[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_176C == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D74[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1764 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D70[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1768 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D6C[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (v0 > 0) {
        v2 = Heap_AllocFromHeap(param0, sizeof(u8) * v0);
    } else {
        v2 = NULL;
    }

    *param2 = v0;

    if (param1->unk_00->unk_1760 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D78[v1] != 0xffff) {
            v2[v1] = Unk_ov21_021E9D78[v1];
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_176C == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D74[v1] != 0xffff) {
            v2[v1] = Unk_ov21_021E9D74[v1];
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1764 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D70[v1] != 0xffff) {
            v2[v1] = Unk_ov21_021E9D70[v1];
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1768 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D6C[v1] != 0xffff) {
            v2[v1] = Unk_ov21_021E9D6C[v1];
            v0++;
            v1++;
        }
    }

    return v2;
}

static u8 * ov21_021DD908 (u32 param0, const UnkStruct_ov21_021DCACC * param1, u32 * param2)
{
    u32 v0;
    int v1;
    u8 * v2;

    v0 = 0;

    if (param1->unk_00->unk_1760 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D76[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_176C == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D72[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1764 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D6E[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1768 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D7A[v1] != 0xffff) {
            v0++;
            v1++;
        }
    }

    if (v0 > 0) {
        v2 = Heap_AllocFromHeap(param0, sizeof(u8) * v0);
    } else {
        v2 = NULL;
    }

    *param2 = v0;

    v0 = 0;

    if (param1->unk_00->unk_1760 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D76[v1] != 0xffff) {
            v2[v0] = Unk_ov21_021E9D76[v1];
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_176C == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D72[v1] != 0xffff) {
            v2[v0] = Unk_ov21_021E9D72[v1];
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1764 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D6E[v1] != 0xffff) {
            v2[v0] = Unk_ov21_021E9D6E[v1];
            v0++;
            v1++;
        }
    }

    if (param1->unk_00->unk_1768 == 0) {
        v1 = 0;

        while (Unk_ov21_021E9D7A[v1] != 0xffff) {
            v2[v0] = Unk_ov21_021E9D7A[v1];
            v0++;
            v1++;
        }
    }

    return v2;
}

static void ov21_021DD964 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1)
{
    BGL_FillWindow(&param1->unk_00->unk_04, 0);

    ov21_021D517C(&param1->unk_00->unk_04, param0->unk_800->pRawData, param0->unk_800->W * 8, param0->unk_800->H * 8, 5, param0->unk_470, 30, 30, 89, 30);
    ov21_021D517C(&param1->unk_00->unk_04, param0->unk_7F8->pRawData, param0->unk_7F8->W * 8, param0->unk_7F8->H * 8, 5, param0->unk_EC, 30, 30, 89, 30);

    sub_0201A954(&param1->unk_00->unk_04);
}

static void ov21_021DD9E8 (UnkStruct_ov21_021DD420 * param0, const UnkStruct_ov21_021DDABC * param1)
{
    if ((param0->unk_834 <= 0) && (param0->unk_838 <= 0) && (param0->unk_83C <= 0) && (param0->unk_840 <= 0)) {
        sub_02021CAC(param0->unk_C8, 1);
        sub_020129D0(param0->unk_CC->unk_00, 1);
    } else {
        sub_02021CAC(param0->unk_C8, 0);
        sub_020129D0(param0->unk_CC->unk_00, 0);
    }
}

static void ov21_021DDA48 (UnkStruct_ov21_021DD420 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (v0 == param1) {
            sub_020129D0(param0->unk_E0[v0]->unk_00, 1);
        } else {
            sub_020129D0(param0->unk_E0[v0]->unk_00, 0);
        }
    }
}

static void ov21_021DDA80 (UnkStruct_ov21_021DD420 * param0, UnkStruct_ov21_021DCAE0 * param1, const UnkStruct_ov21_021DCACC * param2, const UnkStruct_ov21_021DDABC * param3, int param4)
{
    if (param0->unk_00 != param3->unk_00) {
        ov21_021DD710(param0, param2, param3, param4);
        ov21_021DD964(param0, param1);
        ov21_021DDA48(param0, param2->unk_04);
        ov21_021DD9E8(param0, param3);
        param0->unk_00 = param3->unk_00;
    }
}

static void ov21_021DDABC (UnkStruct_ov21_021DDABC * param0, UnkStruct_ov21_021DCACC * param1, int param2)
{
    int v0;
    int v1;
    int v2 = ov21_021D37BC(param1->unk_00);

    switch (param1->unk_04) {
    case 0:
        v0 = 0;
        v1 = 5;
        break;
    case 1:
        v0 = 1;
        v1 = 6;
        break;
    case 2:
        v0 = 2;
        v1 = 7;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov21_021D57B4(&param0->unk_14, v2, v0, param2);
    ov21_021D57B4(&param0->unk_1C, v2, v1, param2);

    if (ov21_021D3428(param1->unk_00) == 0) {
        ov21_021D57B4(&param0->unk_24, v2, 3, param2);
        ov21_021D57B4(&param0->unk_2C, v2, 8, param2);
    } else {
        ov21_021D57B4(&param0->unk_24, v2, 4, param2);
        ov21_021D57B4(&param0->unk_2C, v2, 9, param2);
    }
}

static void ov21_021DDB68 (UnkStruct_ov21_021DDABC * param0)
{
    ov21_021D5844(&param0->unk_14);
    ov21_021D5844(&param0->unk_1C);
    ov21_021D5844(&param0->unk_24);
    ov21_021D5844(&param0->unk_2C);
}

static void ov21_021DDB8C (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    param0->unk_80C = 0;
    param0->unk_810 = 0;

    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 0);

    for (v0 = 0; v0 < param0->unk_C4; v0++) {
        sub_02021CAC(param0->unk_04[v0], 0);
    }
}

static void ov21_021DDBCC (UnkStruct_ov21_021DD420 * param0)
{
    int v0;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG3, 0, 16);
    GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);

    for (v0 = 0; v0 < param0->unk_C4; v0++) {
        sub_02021CAC(param0->unk_04[v0], 0);
    }
}

static void ov21_021DDC14 (UnkStruct_ov21_021DD420 * param0)
{
    fx32 v0;
    int v1;
    int v2;

    if (param0->unk_80C >= 32) {
        param0->unk_80C = 0;

        if (param0->unk_810 == 0) {
            for (v2 = 0; v2 < param0->unk_C4; v2++) {
                sub_02021CAC(param0->unk_04[v2], 1);
            }

            param0->unk_810 = 1;
        } else {
            GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 1);
            param0->unk_810 = 0;
        }
    }

    if (param0->unk_80C < 16) {
        v1 = param0->unk_80C;
    } else {
        v1 = 32 - param0->unk_80C;
    }

    v0 = FX_Mul((16 << FX32_SHIFT), (v1 << FX32_SHIFT));
    v0 = FX_Div(v0, (16 << FX32_SHIFT));

    G2_ChangeBlendAlpha(v0 >> FX32_SHIFT, 16);

    param0->unk_80C++;

    if (param0->unk_80C >= 32) {
        if (param0->unk_810 == 0) {
            GXLayers_EngineAToggleLayers(GX_BLEND_PLANEMASK_BG1, 0);
        } else {
            for (v2 = 0; v2 < param0->unk_C4; v2++) {
                sub_02021CAC(param0->unk_04[v2], 0);
            }
        }
    }
}

static void ov21_021DDCF4 (UnkStruct_ov21_021DCAE0 * param0, const UnkStruct_ov21_021DCACC * param1)
{
    Sprite * v0 = ov21_021D2170(param0->unk_00);
    int v1 = ov21_021D37BC(param1->unk_00);

    ov21_021D1890(param0->unk_00, param1->unk_00, v1, 2, 40, 120);
    sub_02007DEC(v0, 6, 0);
}
