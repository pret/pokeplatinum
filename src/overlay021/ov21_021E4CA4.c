#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "overlay021/struct_ov21_021E6A68.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "unk_02023FCC.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/ov21_021E4CA4.h"

typedef struct {
    int * unk_00;
    UnkStruct_ov21_021D3320 * unk_04;
    UnkStruct_ov21_021E68F4 * unk_08;
    int unk_0C;
} UnkStruct_ov21_021E4D90;

typedef struct {
    UnkStruct_ov21_021D13FC * unk_00;
} UnkStruct_ov21_021E4DA4;

typedef struct {
    void * unk_00;
    void * unk_04;
} UnkStruct_ov21_021E5228;

typedef struct {
    UnkStruct_02023FCC * unk_00;
    UnkUnion_020225E0 * unk_04;
    UnkStruct_ov21_021E5228 unk_08;
    UnkUnion_020225E0 * unk_10;
    UnkStruct_02023FCC * unk_14;
    int unk_18[2];
    BOOL unk_20;
    BOOL unk_24;
    int unk_28;
    BOOL unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    BOOL unk_48;
    BOOL unk_4C;
    int unk_50;
    int unk_54;
    int unk_58;
    int unk_5C;
    int unk_60;
    BOOL unk_64;
    int unk_68;
    const SNDWaveData * unk_6C;
} UnkStruct_ov21_021E51DC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BOOL unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov21_021E5C80;

typedef struct {
    GraphicElementData * unk_00;
    GraphicElementData * unk_04;
    UnkStruct_ov21_021E5C80 unk_08;
    GraphicElementData * unk_20;
    UnkStruct_ov21_021E5C80 unk_24;
    GraphicElementData * unk_3C;
    int unk_40;
    fx32 unk_44;
    int unk_48;
    u16 unk_4C;
    UnkStruct_ov21_021D4CA0 * unk_50[2];
    UnkStruct_02009DC8 * unk_58[4];
    void * unk_68;
    NNSG2dPaletteData * unk_6C;
    BOOL unk_70;
} UnkStruct_ov21_021E5004;

static UnkStruct_ov21_021E4D90 * ov21_021E4D24(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021E4DA4 * ov21_021E4D64(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021D4660 * ov21_021E4D8C(int param0, UnkStruct_ov21_021D0F60 * param1);
static void ov21_021E4D90(UnkStruct_ov21_021E4D90 * param0);
static void ov21_021E4DA4(UnkStruct_ov21_021E4DA4 * param0);
static void ov21_021E4DB8(UnkStruct_ov21_021D4660 * param0);
static int ov21_021E4DBC(void);
static int ov21_021E4DC0(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E4E00(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E4E84(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E4E98(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021E4F20(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021E4F78(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static void ov21_021E5004(UnkStruct_ov21_021E5004 * param0);
static void ov21_021E5040(UnkStruct_ov21_021E5004 * param0);
static void ov21_021E507C(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, const UnkStruct_ov21_021E4D90 * param2, BOOL param3);
static BOOL ov21_021E50EC(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, const UnkStruct_ov21_021E4D90 * param2, BOOL param3);
static void ov21_021E5128(UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1, int param2);
static void ov21_021E51DC(UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1);
static void ov21_021E5200(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5228(u32 param0, u32 param1, void * param2);
static void ov21_021E5F5C(UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1);
static void ov21_021E5FD0(UnkStruct_ov21_021E4DA4 * param0, const UnkStruct_ov21_021E4D90 * param1);
static void ov21_021E5268(u32 param0, u32 param1, void * param2);
static void ov21_021E530C(u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2);
static void ov21_021E537C(u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2);
static void ov21_021E545C(u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2);
static void ov21_021E5498(u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2);
static void ov21_021E5DE8(UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1, int param2);
static void ov21_021E5E18(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5E48(UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1);
static void ov21_021E5E78(UnkStruct_ov21_021E51DC * param0, BOOL param1);
static void ov21_021E5C80(GraphicElementData * param0, UnkStruct_ov21_021E5C80 * param1, BOOL param2, BOOL param3);
static void ov21_021E5CF8(GraphicElementData * param0, UnkStruct_ov21_021E5C80 * param1, BOOL param2, int param3);
static void ov21_021E5D90(GraphicElementData * param0, UnkStruct_ov21_021E5C80 * param1, BOOL param2);
static void ov21_021E59B4(UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1);
static void ov21_021E5A04(UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1);
static void ov21_021E5A2C(UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1);
static void ov21_021E5C4C(UnkStruct_ov21_021E5004 * param0);
static void ov21_021E5ED8(UnkStruct_ov21_021E51DC * param0, BOOL param1);
static void ov21_021E5EF0(UnkStruct_ov21_021E51DC * param0, BOOL param1);
static void ov21_021E5EF4(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5F00(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5F38(UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1);
static void ov21_021E5F28(int param0);
static void ov21_021E5FF4(int param0);
static void ov21_021E5A44(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5AAC(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5AD8(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5B50(UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1);
static void ov21_021E5E28(UnkStruct_ov21_021E51DC * param0);
static void ov21_021E5B6C(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, const UnkStruct_ov21_021E51DC * param2);
static void ov21_021E5BE4(UnkStruct_ov21_021E51DC * param0, int param1);
static void ov21_021E5C18(UnkStruct_ov21_021E51DC * param0, int param1);
static void ov21_021E54D4(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2);
static void ov21_021E5510(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2);
static void ov21_021E5538(UnkStruct_ov21_021E4DA4 * param0, int param1);
static void ov21_021E5620(UnkStruct_ov21_021E4DA4 * param0);
static void ov21_021E5644(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2);
static void ov21_021E56F0(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1);
static void ov21_021E5734(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2);
static void ov21_021E5898(UnkStruct_ov21_021E5004 * param0);
static void ov21_021E58B8(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2);
static void ov21_021E599C(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1);
static void ov21_021E5E80(UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2);
static void ov21_021E5E98(UnkStruct_ov21_021E5004 * param0);
static void ov21_021E5EAC(UnkStruct_ov21_021E5004 * param0);
static void ov21_021E5EC0(UnkStruct_ov21_021E5004 * param0);

void ov21_021E4CA4 (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D0F60 * param1, int param2)
{
    UnkStruct_ov21_021E4D90 * v0;
    UnkStruct_ov21_021E4DA4 * v1;
    UnkStruct_ov21_021D4660 * v2;

    v0 = ov21_021E4D24(param2, param1);
    v1 = ov21_021E4D64(param2, param1);
    v2 = ov21_021E4D8C(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E4DBC();

    param0->unk_08[0] = ov21_021E4DC0;
    param0->unk_08[1] = ov21_021E4E00;
    param0->unk_08[2] = ov21_021E4E84;
    param0->unk_14[0] = ov21_021E4E98;
    param0->unk_14[1] = ov21_021E4F20;
    param0->unk_14[2] = ov21_021E4F78;
}

void ov21_021E4D04 (UnkStruct_ov21_021E68F4 * param0)
{
    ov21_021E4D90(param0->unk_00);
    ov21_021E4DA4(param0->unk_04);
    ov21_021E4DB8(param0->unk_20);
}

int ov21_021E4D1C (const UnkStruct_ov21_021E68F4 * param0)
{
    const UnkStruct_ov21_021E4D90 * v0 = param0->unk_00;

    return v0->unk_0C;
}

static UnkStruct_ov21_021E4D90 * ov21_021E4D24 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021E4D90 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E4D90));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E4D90));

    v0->unk_00 = ov21_021D13A0(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1430(param1, 3);

    return v0;
}

static UnkStruct_ov21_021E4DA4 * ov21_021E4D64 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021E4DA4 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E4DA4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E4DA4));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 * ov21_021E4D8C (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    return NULL;
}

static void ov21_021E4D90 (UnkStruct_ov21_021E4D90 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E4DA4 (UnkStruct_ov21_021E4DA4 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E4DB8 (UnkStruct_ov21_021D4660 * param0)
{
    return;
}

static int ov21_021E4DBC (void)
{
    return 0;
}

static int ov21_021E4DC0 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E4D90 * v0 = param1;
    UnkStruct_ov21_021E51DC * v1 = param0->unk_08;
    int v2;
    int v3 = ov21_021D37BC(v0->unk_04);

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021E51DC));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E51DC));

    ov21_021E5128(v1, v0, param0->unk_04);
    ov21_021E51DC(v1, v0);

    v1->unk_6C = sub_020050F8(v3);

    param0->unk_08 = v1;

    return 1;
}

static int ov21_021E4E00 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E4D90 * v0 = param1;
    UnkStruct_ov21_021E51DC * v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        ov21_021E5E18(v1);
        ov21_021E5E28(v1);
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    v0->unk_0C = v1->unk_3C;

    if (ov21_021E33AC(v0->unk_08)) {
        if (sub_0200598C() == 0) {
            if (v1->unk_64 == 0) {
                ov21_021E5E18(v1);
            }
        }

        ov21_021E51DC(v1, v0);

        if (ov21_021E33BC(v0->unk_08) && (ov21_021D3998(v0->unk_04) == 2)) {
            ov21_021E5F5C(v1, v0);
        }

        if (v1->unk_64 && v1->unk_2C) {
            ov21_021E5E48(v1, v0);
        }
    }

    return 0;
}

static int ov21_021E4E84 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E4D90 * v0 = param1;
    UnkStruct_ov21_021E51DC * v1 = param0->unk_08;

    ov21_021E5200(v1);
    Heap_FreeToHeap(v1);

    return 1;
}

static int ov21_021E4E98 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E4D90 * v0 = param2;
    const UnkStruct_ov21_021E51DC * v1 = param3->unk_08;
    UnkStruct_ov21_021E4DA4 * v2 = param0;
    UnkStruct_ov21_021E5004 * v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021E5004));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E5004));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E54D4(v3, v2, param1->unk_04);
        ov21_021E507C(v3, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021E50EC(v3, v2, v0, 1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021D25AC(&v2->unk_00->unk_1E0, 0);
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021E4F20 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E4D90 * v0 = param2;
    const UnkStruct_ov21_021E51DC * v1 = param3->unk_08;
    UnkStruct_ov21_021E4DA4 * v2 = param0;
    UnkStruct_ov21_021E5004 * v3 = param1->unk_08;

    if (ov21_021E33AC(v0->unk_08)) {
        ov21_021E59B4(v3, v1);
        ov21_021E5A04(v3, v1);
        ov21_021E5A2C(v3, v1);
        ov21_021E5B50(v3, v1);
        ov21_021E5B6C(v3, v2, v1);
        ov21_021E5C4C(v3);
        ov21_021E5F38(v3, v1);
        ov21_021E5FD0(v2, v0);
    }

    return 0;
}

static int ov21_021E4F78 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E4D90 * v0 = param2;
    const UnkStruct_ov21_021E51DC * v1 = param3->unk_08;
    UnkStruct_ov21_021E4DA4 * v2 = param0;
    UnkStruct_ov21_021E5004 * v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021D25AC(&v2->unk_00->unk_1E0, 1);
        ov21_021E5EC0(v3);
        ov21_021E507C(v3, v2, v0, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021E50EC(v3, v2, v0, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E5510(v3, v2, param1->unk_04);
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

static void ov21_021E5004 (UnkStruct_ov21_021E5004 * param0)
{
    sub_02021FE0(param0->unk_00, GX_OAM_MODE_XLU);
    sub_02021FE0(param0->unk_3C, GX_OAM_MODE_XLU);
    sub_02021FE0(param0->unk_04, GX_OAM_MODE_XLU);
    sub_02021FE0(param0->unk_20, GX_OAM_MODE_XLU);

    sub_02012AF0(param0->unk_50[0]->unk_00, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->unk_50[1]->unk_00, GX_OAM_MODE_XLU);
}

static void ov21_021E5040 (UnkStruct_ov21_021E5004 * param0)
{
    sub_02021FE0(param0->unk_00, GX_OAM_MODE_NORMAL);
    sub_02021FE0(param0->unk_3C, GX_OAM_MODE_NORMAL);
    sub_02021FE0(param0->unk_04, GX_OAM_MODE_NORMAL);
    sub_02021FE0(param0->unk_20, GX_OAM_MODE_NORMAL);

    sub_02012AF0(param0->unk_50[0]->unk_00, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_50[1]->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021E507C (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, const UnkStruct_ov21_021E4D90 * param2, BOOL param3)
{
    ov21_021E5004(param0);

    if (ov21_021E33A4(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_18C, 3, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_18C, 3, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021E50EC (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, const UnkStruct_ov21_021E4D90 * param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_18C);
    } else {
        v0 = sub_0200AC1C(2);
    }

    if (v0) {
        if (param3) {
            ov21_021E5040(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E5128 (UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1, int param2)
{
    param0->unk_04 = Heap_AllocFromHeap(param2, sizeof(UnkUnion_020225E0) * 3);
    param0->unk_10 = Heap_AllocFromHeap(param2, sizeof(UnkUnion_020225E0) * 2);

    ov21_021D154C(&param0->unk_04[0], 67 - 14, 67 + 14, 64 - 42, 64 + 42);

    param0->unk_04[1].val2.unk_00 = 0xfe;
    param0->unk_04[1].val2.unk_01 = 51;
    param0->unk_04[1].val2.unk_02 = 157;
    param0->unk_04[1].val2.unk_03 = 32;

    param0->unk_04[2].val2.unk_00 = 0xfe;
    param0->unk_04[2].val2.unk_01 = (131 - -48);
    param0->unk_04[2].val2.unk_02 = (99 - -16) + 8;
    param0->unk_04[2].val2.unk_03 = 72;

    ov21_021D154C(&param0->unk_10[0], 131 - 24, 131 + 24, 180 - 24, 180 + 24);
    ov21_021D154C(&param0->unk_10[1], 166 - 16, 166 + 16, 230 - 16, 230 + 16);

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;

    param0->unk_00 = sub_02023FCC(param0->unk_04, 3, ov21_021E5228, &param0->unk_08, param2);
    param0->unk_14 = sub_02023FCC(param0->unk_10, 2, ov21_021E5268, &param0->unk_08, param2);
}

static void ov21_021E51DC (UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_18[v0] = 100;
    }

    sub_0202404C(param0->unk_00);
    sub_0202404C(param0->unk_14);
}

static void ov21_021E5200 (UnkStruct_ov21_021E51DC * param0)
{
    sub_02024034(param0->unk_00);
    sub_02024034(param0->unk_14);
    Heap_FreeToHeap(param0->unk_04);

    param0->unk_04 = NULL;
    Heap_FreeToHeap(param0->unk_10);
    param0->unk_10 = NULL;
}

static void ov21_021E5228 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov21_021E5228 * v0 = param2;
    UnkStruct_ov21_021E4D90 * v1 = v0->unk_00;
    UnkStruct_ov21_021E51DC * v2 = v0->unk_04;

    switch (param1) {
    case 0:
        ov21_021E530C(param0, v1, v2);
        break;
    case 2:
        ov21_021E537C(param0, v1, v2);
        break;
    case 1:
        ov21_021E545C(param0, v1, v2);
        break;
    case 3:
        ov21_021E5498(param0, v1, v2);
        break;
    default:
        break;
    }
}

static void ov21_021E5268 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov21_021E5228 * v0 = param2;
    UnkStruct_ov21_021E4D90 * v1 = v0->unk_00;
    UnkStruct_ov21_021E51DC * v2 = v0->unk_04;
    int v3 = ov21_021D37BC(v1->unk_04);

    v2->unk_18[param0] = param1;

    switch (param1) {
    case 0:
        ov21_021E33B4(v1->unk_08, 1);
        v2->unk_24 = 0;
        break;
    case 2:
        if (v2->unk_24 == 0) {
            v2->unk_24 = 1;

            switch (param0) {
            case 0:
                if (v2->unk_64 == 1) {
                    if (v2->unk_2C == 0) {
                        ov21_021E5DE8(v2, v1, v3);
                    } else {
                        ov21_021E5E18(v2);
                    }
                } else {
                    if (v2->unk_2C == 1) {
                        sub_0200592C(0);
                    }

                    ov21_021E5DE8(v2, v1, v3);
                }
                break;
            case 1:
                v2->unk_28 = 2;
                ov21_021E5E78(v2, v2->unk_64 ^ 1);
                Sound_PlayEffect(1501);
                break;
            default:
                break;
            }
        }
        break;
    case 1:
        break;
    case 3:
        break;
    default:
        break;
    }
}

static void ov21_021E530C (u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2)
{
    switch (param0) {
    case 0:
        if (param2->unk_2C == 1) {
            ov21_021E5E18(param2);
        }

        param2->unk_38 = gCoreSys.touchX;
        param2->unk_30 = 1;
        break;
    case 1:
        if (param2->unk_2C == 1) {
            ov21_021E5E18(param2);
        }

        param2->unk_4C = 1;
        param2->unk_54 = gCoreSys.touchX;
        param2->unk_58 = gCoreSys.touchY;
        break;
    case 2:
        if (param2->unk_2C) {
            param2->unk_20 = sub_02022734(&param2->unk_10[0]);
            param2->unk_20 |= sub_02022734(&param2->unk_10[1]);
        } else {
            param2->unk_20 = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021E537C (u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2)
{
    int v0;

    switch (param0) {
    case 0:
        if (param2->unk_30 == 1) {
            v0 = gCoreSys.touchX - param2->unk_38;

            if (param2->unk_34 == 0) {
                if (12 <= v0) {
                    param2->unk_34 = 1;
                    param2->unk_38 = gCoreSys.touchX;
                    Sound_PlayEffect(1527);
                }
            } else {
                if (-12 >= v0) {
                    param2->unk_34 = 0;
                    param2->unk_38 = gCoreSys.touchX;
                    Sound_PlayEffect(1527);
                }
            }
        }
        break;
    case 1:
        if (param2->unk_4C == 1) {
            ov21_021E5A44(param2);
            ov21_021E5AAC(param2);
            ov21_021E5AD8(param2);

            param2->unk_54 = gCoreSys.touchX;
            param2->unk_58 = gCoreSys.touchY;
        }
        break;
    case 2:
        if (param2->unk_20 == 0) {
            if (param2->unk_2C == 0) {
                param2->unk_20 = 1;
                ov21_021E5ED8(param2, 0);
            } else {
                if (gCoreSys.touchY < (99 - -16) + 16) {
                    if (param2->unk_34 == 0) {
                        ov21_021E5BE4(param2, gCoreSys.touchX);
                    } else {
                        ov21_021E5C18(param2, gCoreSys.touchX);
                    }

                    param2->unk_3C = 0;
                    ov21_021E5ED8(param2, 1);
                } else {
                    ov21_021E5EF0(param2, 0);
                    param2->unk_3C = (-(64 * 12) * 2);
                }
            }

            ov21_021E5F00(param2);
        }
        break;
    default:
        break;
    }
}

static void ov21_021E545C (u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2)
{
    switch (param0) {
    case 0:
        param2->unk_30 = 0;
        break;
    case 1:
        param2->unk_5C = param2->unk_60 * ((32 / 8));
        param2->unk_4C = 0;
        break;
    case 2:
        if (param2->unk_20 == 0) {
            ov21_021E5ED8(param2, 0);
            ov21_021E5F00(param2);
        }
        break;
    default:
        break;
    }
}

static void ov21_021E5498 (u32 param0, UnkStruct_ov21_021E4D90 * param1, UnkStruct_ov21_021E51DC * param2)
{
    switch (param0) {
    case 0:
        param2->unk_30 = 0;
        break;
    case 1:
        param2->unk_5C = param2->unk_60 * ((32 / 8));
        param2->unk_4C = 0;
        break;
    case 2:
        if (param2->unk_20 == 0) {
            ov21_021E5ED8(param2, 0);
            ov21_021E5F00(param2);
        }
        break;
    default:
        break;
    }
}

static void ov21_021E54D4 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2)
{
    ov21_021E5538(param1, param2);
    ov21_021E5644(param0, param1, param2);
    ov21_021E5734(param0, param1, param2);
    ov21_021E58B8(param0, param1, param2);
    ov21_021E5E80(param0, param1, param2);
}

static void ov21_021E5510 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2)
{
    int v0;

    ov21_021E5898(param0);
    ov21_021E599C(param0, param1);
    ov21_021E56F0(param0, param1);
    ov21_021E5620(param1);
    ov21_021E5E98(param0);
}

static void ov21_021E5538 (UnkStruct_ov21_021E4DA4 * param0, int param1)
{
    void * v0;
    NNSG2dScreenData * v1;

    ov21_021D2724(param0->unk_00, 34, param0->unk_00->unk_00, 6, 0, 0, 1, param1);
    v0 = ov21_021D27B8(param0->unk_00, 71, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 6);

    ov21_021D2724(param0->unk_00, 35, param0->unk_00->unk_00, 7, 0, 0, 1, param1);
    v0 = ov21_021D27B8(param0->unk_00, 72, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 7, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 7);
    sub_02019184(param0->unk_00->unk_00, 7, 0, -48);
    sub_02019184(param0->unk_00->unk_00, 7, 3, -16);
    BGL_SetPriority(7, 3);
}

static void ov21_021E5620 (UnkStruct_ov21_021E4DA4 * param0)
{
    sub_02019EBC(param0->unk_00->unk_00, 6);
    sub_02019EBC(param0->unk_00->unk_00, 7);
    BGL_SetPriority(7, 1);
}

static void ov21_021E5644 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;
    NARC * v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_58[0] = sub_02009A4C(v0->unk_13C[0], v1, 113, 1, 113 + 10000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_58[0]);
    sub_02009D4C(param0->unk_58[0]);

    param0->unk_58[1] = sub_02009B04(v0->unk_13C[1], v1, 18, 0, 18 + 10000, NNS_G2D_VRAM_TYPE_2DSUB, 3, param2);

    sub_0200A640(param0->unk_58[1]);
    sub_02009D4C(param0->unk_58[1]);

    param0->unk_58[2] = sub_02009BC4(v0->unk_13C[2], v1, 114, 1, 114 + 10000, 2, param2);
    param0->unk_58[3] = sub_02009BC4(v0->unk_13C[3], v1, 112, 1, 112 + 10000, 3, param2);
}

static void ov21_021E56F0 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_58[0]);
    sub_0200A6DC(param0->unk_58[1]);
    sub_02009D68(v0->unk_13C[0], param0->unk_58[0]);
    sub_02009D68(v0->unk_13C[1], param0->unk_58[1]);
    sub_02009D68(v0->unk_13C[2], param0->unk_58[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_58[3]);
}

static void ov21_021E5734 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;
    int v3;
    int v4, v5;

    sub_020093B4(&v0, 113 + 10000, 18 + 10000, 114 + 10000, 112 + 10000, 0xffffffff, 0xffffffff, 0, 2, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.unk_00 = v2->unk_138;
    v1.unk_04 = &v0;
    v1.unk_14 = 31;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_1C = param2;

    v1.unk_08.x = 64 << FX32_SHIFT;
    v1.unk_08.y = 67 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_3C = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_3C, 4);
    sub_02021CC8(param0->unk_3C, 1);
    sub_02021CE4(param0->unk_3C, (FX32_ONE * 2));
    sub_02021E50(param0->unk_3C, 8);

    v1.unk_08.x = 51 << FX32_SHIFT;
    v1.unk_08.y = 157 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_00 = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_00, 1);
    sub_02021CF8(param0->unk_00, 1);

    v1.unk_08.x = 180 << FX32_SHIFT;
    v1.unk_08.y = 131 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_04 = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_04, 3);
    sub_02021CC8(param0->unk_04, 1);
    sub_02021CE4(param0->unk_04, (FX32_ONE * 2));
    sub_02021E50(param0->unk_04, 5);

    param0->unk_08.unk_00 = 3;
    param0->unk_08.unk_04 = 2;
    param0->unk_08.unk_08 = 3;
    param0->unk_08.unk_10 = 5;
    param0->unk_08.unk_14 = 2;

    v1.unk_08.x = 230 << FX32_SHIFT;
    v1.unk_08.y = 166 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_20 = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_20, 6);
    sub_02021CC8(param0->unk_20, 1);
    sub_02021CE4(param0->unk_20, (FX32_ONE * 2));
    sub_02021E50(param0->unk_20, 5);

    param0->unk_24.unk_00 = 6;
    param0->unk_24.unk_04 = 5;
    param0->unk_24.unk_08 = 6;
    param0->unk_24.unk_10 = 5;
    param0->unk_24.unk_14 = 2;
}

static void ov21_021E5898 (UnkStruct_ov21_021E5004 * param0)
{
    sub_02021BD4(param0->unk_00);
    sub_02021BD4(param0->unk_3C);
    sub_02021BD4(param0->unk_04);
    sub_02021BD4(param0->unk_20);
}

static void ov21_021E58B8 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2)
{
    Window * v0;
    UnkStruct_ov21_021D4CB8 v1;
    UnkStruct_02009DC8 * v2;
    UnkStruct_ov21_021D13FC * v3 = param1->unk_00;
    int v4;
    u32 v5;

    v2 = sub_02009DC8(v3->unk_13C[1], 18 + 10000);

    v1.unk_00 = v3->unk_14C;
    v1.unk_08 = sub_0200A72C(v2, NULL);
    v1.unk_0C = NULL;
    v1.unk_14 = 84 + 192;
    v1.unk_18 = 2;
    v1.unk_1C = 0;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_24 = param2;

    v4 = sub_0201FAB4(v1.unk_08, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = ov21_021D4D6C(v3->unk_14C, 8, 2);

    v5 = ov21_021D4DAC(v3->unk_14C, v0, 697, 41, 0, 0);
    v1.unk_10 = 64 - v5 / 2;
    v1.unk_04 = v0;

    param0->unk_50[0] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_50[0]->unk_00, v4 + 0);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(v3->unk_14C, 8, 2);
    v5 = ov21_021D4DAC(v3->unk_14C, v0, 697, 42, 0, 0);

    v1.unk_10 = 64 - v5 / 2;
    v1.unk_04 = v0;

    param0->unk_50[1] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_50[1]->unk_00, v4 + 0);
    ov21_021D4DA0(v0);
    sub_020129D0(param0->unk_50[1]->unk_00, 0);
}

static void ov21_021E599C (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov21_021D4D1C(param0->unk_50[v0]);
    }
}

static void ov21_021E59B4 (UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1)
{
    int v0;

    if (param0->unk_40 != param1->unk_34) {
        v0 = sub_02021E74(param0->unk_3C);

        if (param1->unk_34 == 0) {
            sub_02021D6C(param0->unk_3C, 4);
            sub_02021E50(param0->unk_3C, 8 - v0);
        } else {
            sub_02021D6C(param0->unk_3C, 0);
            sub_02021E50(param0->unk_3C, 8 - v0);
        }

        param0->unk_40 = param1->unk_34;
    }
}

static void ov21_021E5A04 (UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1)
{
    int v0 = param1->unk_18[0];

    if (param1->unk_64 == 0) {
        ov21_021E5CF8(param0->unk_04, &param0->unk_08, 0, v0);
    } else {
        ov21_021E5C80(param0->unk_04, &param0->unk_08, param1->unk_2C, v0);
    }
}

static void ov21_021E5A2C (UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1)
{
    int v0 = param1->unk_18[1];

    ov21_021E5C80(param0->unk_20, &param0->unk_24, param1->unk_64, v0);
}

static void ov21_021E5A44 (UnkStruct_ov21_021E51DC * param0)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;
    u16 v6, v7;

    v1 = param0->unk_54 - 51;
    v0 = param0->unk_58 - 157;
    v3 = gCoreSys.touchX - 51;
    v2 = gCoreSys.touchY - 157;
    v4 = sub_0201D4CC(v1, v0, v3, v2, 0);

    if (MATH_IAbs(v4) < 1) {
        return;
    }

    param0->unk_5C += v4;

    if (param0->unk_5C < 0) {
        param0->unk_5C += 88;
    } else {
        param0->unk_5C %= 88;
    }

    if ((param0->unk_5C >= 32) && (param0->unk_5C <= ((88 - 32)))) {
        if (v4 > 0) {
            param0->unk_5C = 32;
        } else {
            param0->unk_5C = ((88 - 32));
        }
    }
}

static void ov21_021E5AAC (UnkStruct_ov21_021E51DC * param0)
{
    if ((param0->unk_5C / ((32 / 8))) != param0->unk_60) {
        Sound_PlayEffect(1527);
        param0->unk_60 = param0->unk_5C / ((32 / 8));
    }
}

static void ov21_021E5AD8 (UnkStruct_ov21_021E51DC * param0)
{
    int v0;

    if (param0->unk_5C == 0) {
        ov21_021E5E28(param0);
        return;
    }

    if ((param0->unk_5C > 0) && (param0->unk_5C <= (88 / 2))) {
        if (param0->unk_50 == 1) {
            sub_02004EEC(0);
        }

        if (param0->unk_50 != 2) {
            sub_02004EFC();
            param0->unk_50 = 2;
        }

        v0 = param0->unk_60 * 1;

        if (v0 == 0) {
            v0 = 1;
        }

        sub_02004F4C(v0);
    } else {
        if (param0->unk_50 == 2) {
            sub_02004F44();
        }

        if (param0->unk_50 != 1) {
            sub_02004EC8(0);
            param0->unk_50 = 1;
        }

        if (param0->unk_5C == 0) {
            param0->unk_5C = 88;
        }

        v0 = (88 / ((32 / 8))) - param0->unk_60;
        v0 = v0 * 8;

        if (v0 > 0) {
            v0--;
        }

        sub_02004EF4(v0, 0);
    }
}

static void ov21_021E5B50 (UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1)
{
    sub_02021C94(param0->unk_00, sub_0201D580(14, param1->unk_5C));
}

static void ov21_021E5B6C (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, const UnkStruct_ov21_021E51DC * param2)
{
    int v0 = sub_02005188(1, param2->unk_6C, param2->unk_3C);

    if (v0 == 0) {
        param0->unk_48 = 0;
    }

    param0->unk_4C += (v0 - param0->unk_48) * -16;
    param0->unk_4C &= 0xffff;

    sub_0201C660(param1->unk_00->unk_00, 7, 0, param0->unk_4C / 182);
    sub_0201C718(param1->unk_00->unk_00, 7, 9, 131);
    sub_0201C718(param1->unk_00->unk_00, 7, 12, 99);

    param0->unk_48 = v0;
}

static void ov21_021E5BE4 (UnkStruct_ov21_021E51DC * param0, int param1)
{
    int v0;
    fx32 v1;
    int v2;

    v0 = param1 - ((131 - -48) - 72);
    v1 = FX_Mul(127 << FX32_SHIFT, v0 << FX32_SHIFT);
    v1 = FX_Div(v1, (72 * 2) << FX32_SHIFT);
    v2 = v1 >> FX32_SHIFT;

    param0->unk_44 = v2;
}

static void ov21_021E5C18 (UnkStruct_ov21_021E51DC * param0, int param1)
{
    int v0;
    fx32 v1;
    int v2;

    v0 = param1 - (131 - -48);
    v1 = FX_Mul(127 << FX32_SHIFT, v0 << FX32_SHIFT);
    v1 = FX_Div(v1, 72 << FX32_SHIFT);
    v2 = v1 >> FX32_SHIFT;

    param0->unk_40 = v2;
}

static void ov21_021E5C4C (UnkStruct_ov21_021E5004 * param0)
{
    if (param0->unk_40 == 0) {
        sub_020129D0(param0->unk_50[0]->unk_00, 1);
        sub_020129D0(param0->unk_50[1]->unk_00, 0);
    } else {
        sub_020129D0(param0->unk_50[0]->unk_00, 0);
        sub_020129D0(param0->unk_50[1]->unk_00, 1);
    }
}

static void ov21_021E5C80 (GraphicElementData * param0, UnkStruct_ov21_021E5C80 * param1, BOOL param2, int param3)
{
    int v0;

    if (param3 == 3) {
        param3 = 1;
    }

    v0 = sub_02021E74(param0);

    if (param1->unk_0C != param2) {
        ov21_021E5D90(param0, param1, param2);
        param1->unk_0C = param2;
    }

    switch (param3) {
    case 0:
        break;
    case 2:
        if (v0 > param1->unk_14) {
            sub_02021E50(param0, param1->unk_14);
            sub_02021CE4(param0, 0);
        }
        break;
    case 1:
    case 100:
        ov21_021E5D90(param0, param1, param2);
        sub_02021CE4(param0, (FX32_ONE * 2));
        break;
    default:
        break;
    }
}

static void ov21_021E5CF8 (GraphicElementData * param0, UnkStruct_ov21_021E5C80 * param1, BOOL param2, int param3)
{
    int v0;

    if (param3 == 1) {
        param3 = 3;
    }

    v0 = sub_02021E74(param0);

    if (param1->unk_0C != param2) {
        ov21_021E5D90(param0, param1, param2);
        param1->unk_0C = param2;
    }

    switch (param3) {
    case 0:
        if (param2 == 1) {
            ov21_021E5D90(param0, param1, 0);
        } else {
            ov21_021E5D90(param0, param1, 1);
        }

        sub_02021E50(param0, param1->unk_14 - 1);
        break;
    case 2:
        sub_02021E50(param0, param1->unk_14);
        sub_02021CE4(param0, 0);
        break;
    case 3:
    case 100:
        ov21_021E5D90(param0, param1, param2);
        sub_02021CE4(param0, (FX32_ONE * 2));
        break;
    default:
        break;
    }
}

static void ov21_021E5D90 (GraphicElementData * param0, UnkStruct_ov21_021E5C80 * param1, BOOL param2)
{
    int v0;

    v0 = sub_02021E74(param0);

    if (param2 == 1) {
        if (param1->unk_08 == param1->unk_00) {
            sub_02021D6C(param0, param1->unk_04);
            param1->unk_08 = param1->unk_04;
            sub_02021E50(param0, param1->unk_10 - v0);
        }
    } else {
        if (param1->unk_08 == param1->unk_04) {
            sub_02021D6C(param0, param1->unk_00);
            param1->unk_08 = param1->unk_00;
            sub_02021E50(param0, param1->unk_10 - v0);
        }
    }
}

static void ov21_021E5DE8 (UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1, int param2)
{
    param0->unk_2C = 1;

    Sound_PlayPokemonCry(13, param2, 0, 127, 0x1ff, 0);
    ov21_021E5F00(param0);
}

static void ov21_021E5E18 (UnkStruct_ov21_021E51DC * param0)
{
    sub_0200592C(0);
    param0->unk_2C = 0;
}

static void ov21_021E5E28 (UnkStruct_ov21_021E51DC * param0)
{
    if (param0->unk_50 == 1) {
        sub_02004EEC(0);
    }

    if (param0->unk_50 == 2) {
        sub_02004F44();
    }

    param0->unk_50 = 0;
}

static void ov21_021E5E48 (UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1)
{
    int v0 = ov21_021D37BC(param1->unk_04);

    if (sub_0200598C() == 0) {
        param0->unk_68--;

        if (param0->unk_68 == 0) {
            ov21_021E5DE8(param0, param1, v0);
            param0->unk_68 = 10;
        }
    }
}

static void ov21_021E5E78 (UnkStruct_ov21_021E51DC * param0, BOOL param1)
{
    param0->unk_64 = param1;
    param0->unk_68 = 10;
}

static void ov21_021E5E80 (UnkStruct_ov21_021E5004 * param0, UnkStruct_ov21_021E4DA4 * param1, int param2)
{
    param0->unk_68 = ov21_021D27E0(param1->unk_00, 20, &param0->unk_6C, param2);
}

static void ov21_021E5E98 (UnkStruct_ov21_021E5004 * param0)
{
    Heap_FreeToHeap(param0->unk_68);
    param0->unk_68 = NULL;
    param0->unk_6C = NULL;
}

static void ov21_021E5EAC (UnkStruct_ov21_021E5004 * param0)
{
    sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_SUB, 7 * 32, param0->unk_6C->pRawData, 32);
}

static void ov21_021E5EC0 (UnkStruct_ov21_021E5004 * param0)
{
    sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_SUB, 7 * 32, &((u8 *)(param0->unk_6C->pRawData))[32], 32);
}

static void ov21_021E5ED8 (UnkStruct_ov21_021E51DC * param0, BOOL param1)
{
    ov21_021E5EF0(param0, param1);

    if (param1 == 0) {
        ov21_021E5EF4(param0);
    }
}

static void ov21_021E5EF0 (UnkStruct_ov21_021E51DC * param0, BOOL param1)
{
    param0->unk_48 = param1;
}

static void ov21_021E5EF4 (UnkStruct_ov21_021E51DC * param0)
{
    param0->unk_3C = 0;
    param0->unk_40 = 0;
    param0->unk_44 = 0;
}

static void ov21_021E5F00 (UnkStruct_ov21_021E51DC * param0)
{
    if (param0->unk_2C) {
        ov21_021E5FF4(param0->unk_3C);
        sub_02004F94(1, 0xffff, param0->unk_40);
        ov21_021E5F28(param0->unk_44);
    }
}

static void ov21_021E5F28 (int param0)
{
    sub_02004A54(8, param0, 0);
}

static void ov21_021E5F38 (UnkStruct_ov21_021E5004 * param0, const UnkStruct_ov21_021E51DC * param1)
{
    if (param1->unk_48 != param0->unk_70) {
        if (param1->unk_48 == 1) {
            ov21_021E5EAC(param0);
        } else {
            ov21_021E5EC0(param0);
        }

        param0->unk_70 = param1->unk_48;
    }
}

static void ov21_021E5F5C (UnkStruct_ov21_021E51DC * param0, UnkStruct_ov21_021E4D90 * param1)
{
    int v0 = ov21_021D37BC(param1->unk_04);

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        param0->unk_28 = 1;

        param0->unk_18[0] = 0;

        if (param0->unk_64 == 0) {
            if (param0->unk_2C == 1) {
                sub_0200592C(0);
            }

            ov21_021E5DE8(param0, param1, v0);
        } else {
            if (param0->unk_2C == 0) {
                ov21_021E5DE8(param0, param1, v0);
            } else {
                ov21_021E5E18(param0);
            }
        }
    } else if (param0->unk_28 == 1) {
        param0->unk_28 = 2;
        param0->unk_18[0] = 2;
    } else if (param0->unk_28 == 2) {
        param0->unk_28 = 0;
        param0->unk_18[0] = 1;
    }
}

static void ov21_021E5FD0 (UnkStruct_ov21_021E4DA4 * param0, const UnkStruct_ov21_021E4D90 * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param0->unk_00;

    if (ov21_021E33BC(param1->unk_08) == 1) {
        ov21_021D2574(v0, 180, 131, 24, 24);
    }
}

static void ov21_021E5FF4 (int param0)
{
    sub_02004F68(1, 0xffff, param0);
    sub_02004F68(8, 0xffff, 20 + param0);
}
