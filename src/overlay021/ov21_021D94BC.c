#include "overlay021/ov21_021D94BC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023FCC_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D4EE4.h"
#include "overlay021/ov21_021D85B0.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D4EE4_decl.h"
#include "overlay021/struct_ov21_021D4FE4.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "text/pl_msg.naix"

#include "bg_window.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "heap.h"
#include "narc.h"
#include "sprite_resource.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_02012744.h"
#include "unk_0201F834.h"
#include "unk_02023FCC.h"

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021D3320 *unk_04;
    UnkStruct_ov21_021E68F4 *unk_08;
    UnkStruct_ov21_021E68F4 *unk_0C;
} UnkStruct_ov21_021D95B8;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
    int unk_04;
    BOOL *unk_08;
} UnkStruct_ov21_021D95CC;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021D9D18;

typedef struct {
    UnkStruct_02023FCC *unk_00;
    TouchScreenHitTable *unk_04;
    UnkStruct_02023FCC *unk_08;
    TouchScreenHitTable *unk_0C;
    UnkStruct_ov21_021D9D18 unk_10;
    UnkStruct_ov21_021D4EE4 *unk_18;
    UnkStruct_ov21_021D4FE4 *unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C[6];
    int unk_44[15];
    int unk_80;
    int unk_84;
    int unk_88;
    BOOL unk_8C;
    BOOL unk_90;
    int unk_94;
    BOOL unk_98;
} UnkStruct_ov21_021D9B24;

typedef struct {
    CellActor *unk_00[6];
    UnkStruct_ov21_021D4CA0 *unk_18[6];
    CellActor *unk_30[15];
    UnkStruct_ov21_021D4CA0 *unk_6C[15];
    CellActor *unk_A8[15];
    SpriteResource *unk_E4[4];
    SpriteResource *unk_F4[4];
    int unk_104;
    int unk_108;
    UnkStruct_ov21_021D2648 unk_10C;
    int unk_12C;
    int unk_130;
    BOOL *unk_134;
} UnkStruct_ov21_021DC96C;

static UnkStruct_ov21_021D95B8 *ov21_021D9534(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D95CC *ov21_021D957C(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021D95B4(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021D95B8(UnkStruct_ov21_021D95B8 *param0);
static void ov21_021D95CC(UnkStruct_ov21_021D95CC *param0);
static void ov21_021D95E0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D95E4(void);
static int ov21_021D95E8(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D964C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D9780(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D97A0(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021D9830(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021D9960(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021DC96C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2);
static void ov21_021D9A08(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2, const UnkStruct_ov21_021D9B24 *param3, int param4);
static void ov21_021D9A4C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021D9A74(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021DB50C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DB5DC(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021DB634(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DB6C8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021DC7C0(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1);
static void ov21_021DC7F4(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DC8B4(UnkStruct_ov21_021DC96C *param0, int param1, int param2, int param3);
static void ov21_021DC8D0(UnkStruct_ov21_021DC96C *param0, int param1);
static void ov21_021DC90C(UnkStruct_ov21_021DC96C *param0, int param1);
static void ov21_021DC93C(UnkStruct_ov21_021DC96C *param0, int param1);
static void ov21_021DB708(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DB78C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DB81C(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1, int param2, int param3);
static void ov21_021DB79C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DB858(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1);
static void ov21_021DB90C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DB924(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DB944(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1);
static void ov21_021DB9B4(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1);
static void ov21_021DBA24(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1);
static void ov21_021DBAB8(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1);
static void ov21_021DBB74(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1);
static void ov21_021DBBE4(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DBDA0(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DBDC8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DBE2C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DBE98(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2, int param3, int param4);
static void ov21_021DBE3C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2);
static void ov21_021DBEC8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2);
static void ov21_021DC04C(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DC068(UnkStruct_ov21_021DC96C *param0);
static void ov21_021DC088(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2);
static void ov21_021DC12C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2);
static void ov21_021DC1E8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2);
static void ov21_021DC2A4(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2);
static void ov21_021D9ADC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021D9B24(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9B34(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021D9B58(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3, int param4);
static void ov21_021D9B98(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9BB0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3);
static void ov21_021D9B04(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9BEC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021D9C90(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9D00(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9D18(u32 param0, u32 param1, void *param2);
static void ov21_021D9CA8(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9CB8(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021D9D50(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9D68(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021D9D78(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021D9E08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9E90(u32 param0, u32 param1, void *param2);
static void ov21_021D9EB4(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021D9F44(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021D9FF8(u32 param0, u32 param1, void *param2);
static void ov21_021DA018(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021DA0BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA18C(u32 param0, u32 param1, void *param2);
static void ov21_021DA0FC(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA1C8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021DA280(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA2C0(u32 param0, u32 param1, void *param2);
static void ov21_021DA308(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021DA41C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA514(u32 param0, u32 param1, void *param2);
static void ov21_021DB3C8(UnkStruct_ov21_021D9B24 *param0);
static void ov21_021DB3E0(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DB3EC(UnkStruct_ov21_021D9B24 *param0, int param1, int param2, int param3);
static void ov21_021DB428(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB2FC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3);
static void ov21_021DB468(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA534(UnkStruct_ov21_021D4FE4 *param0, int param1);
static void ov21_021DA5A8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA6B0(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA7B0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DA888(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DA988(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DAAD4(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DAC08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DAD74(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DAED8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB02C(UnkStruct_ov21_021D9B24 *param0, int param1);
static void ov21_021DB12C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DB480(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2);
static void ov21_021DB49C(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2);
static void ov21_021DB4D4(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1);
static BOOL ov21_021DB4E4(UnkStruct_ov21_021D95CC *param0, BOOL param1);
static void ov21_021DC35C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC368(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC380(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3);
static void ov21_021DC3BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC48C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC4F8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC57C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC600(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);
static void ov21_021DC67C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2);
static void ov21_021DC720(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1);

void ov21_021D94BC(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021D95B8 *v0;
    UnkStruct_ov21_021D95CC *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021D9534(param2, param1);
    v1 = ov21_021D957C(param2, param1);
    v2 = ov21_021D95B4(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021D95E4();
    param0->unk_08[0] = ov21_021D95E8;
    param0->unk_08[1] = ov21_021D964C;
    param0->unk_08[2] = ov21_021D9780;
    param0->unk_14[0] = ov21_021D97A0;
    param0->unk_14[1] = ov21_021D9830;
    param0->unk_14[2] = ov21_021D9960;
}

void ov21_021D951C(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021D95B8(param0->unk_00);
    ov21_021D95CC(param0->unk_04);
    ov21_021D95E0(param0->unk_20);
}

static UnkStruct_ov21_021D95B8 *ov21_021D9534(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D95B8 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D95B8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D95B8));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1410(param1, 1);
    v0->unk_0C = ov21_021D1430(param1, 1);

    return v0;
}

static UnkStruct_ov21_021D95CC *ov21_021D957C(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D95CC *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D95CC));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D95CC));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021D95B4(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    return NULL;
}

static void ov21_021D95B8(UnkStruct_ov21_021D95B8 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D95CC(UnkStruct_ov21_021D95CC *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D95E0(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021D95E4(void)
{
    return 0;
}

static int ov21_021D95E8(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D95B8 *v0 = param1;
    UnkStruct_ov21_021D9B24 *v1;
    int v2;

    v1 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov21_021D9B24));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021D9B24));
    param0->unk_08 = v1;

    v1->unk_80 = 0xffff;

    ov21_021DC35C(v1, v0);
    ov21_021D9ADC(v1, v0, param0->heapID);
    ov21_021DB3E0(v1, param0->heapID);
    ov21_021DB428(v1, v0);

    for (v2 = 0; v2 < 6; v2++) {
        v1->unk_2C[v2] = (3 + 1);
    }

    return 1;
}

static int ov21_021D964C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D95B8 *v0 = param1;
    UnkStruct_ov21_021D9B24 *v1 = param0->unk_08;
    UnkStruct_ov21_021D95CC *v2 = v0->unk_0C->unk_04;
    int v3;
    int v4;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (ov21_021D86D8(v0->unk_08) != 0) {
        return 0;
    }

    v3 = ov21_021D863C(v0->unk_08);

    switch (param0->unk_00) {
    case 0:

        if ((v1->unk_24 != v3) || (v1->unk_28 != v1->unk_20)) {
            v1->unk_98 = 0;
            v2->unk_04 = 2;
            v2->unk_08 = &v1->unk_98;
            ov21_021D9CA8(v1);
            ov21_021D9CB8(v1, v3);
            param0->unk_00++;
            break;
        }

        ov21_021D9B98(v1, v0);

        if (ov21_021D3998(v0->unk_04) == 2) {
            ov21_021DB2FC(v1, v0);
        }

        ov21_021DC368(v1, v0);
        break;
    case 1:
        if (v1->unk_98) {
            param0->unk_00++;
        }
        break;
    case 2:
        v4 = v1->unk_24;
        v1->unk_24 = v3;
        v1->unk_28 = v1->unk_20;

        ov21_021D9B34(v1, v0, param0->heapID);
        ov21_021DB468(v1, param0->heapID);
        ov21_021DC35C(v1, v0);

        if (v4 != v1->unk_24) {
            ov21_021DB428(v1, v0);
        }

        v1->unk_98 = 0;
        v2->unk_04 = 1;
        v2->unk_08 = &v1->unk_98;

        ov21_021D9D68(v1);

        param0->unk_00++;
        break;
    case 3:
        if (v1->unk_98) {
            param0->unk_00++;
        }
        break;
    case 4:
        param0->unk_00 = 0;
        break;
    }

    return 0;
}

static int ov21_021D9780(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D9B24 *v0 = param0->unk_08;

    ov21_021D9B24(v0);
    ov21_021DB3C8(v0);
    Heap_FreeToHeap(v0);

    param0->unk_08 = NULL;
    return 1;
}

static int ov21_021D97A0(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021D95B8 *v0 = param2;
    const UnkStruct_ov21_021D9B24 *v1 = param3->unk_08;
    UnkStruct_ov21_021D95CC *v2 = param0;
    UnkStruct_ov21_021DC96C *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_ov21_021DC96C));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021DC96C));
        param1->unk_00++;
        break;
    case 1:
        ov21_021D9A08(v3, v2, v0, v1, param1->heapID);
        sub_0200AAE0(1, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        ov21_021DB480(v2, v1, v0);
        param1->unk_00++;
        break;
    case 2:
        if (sub_0200AC1C(2)) {
            param1->unk_00++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021D9830(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021D95B8 *v0 = param2;
    const UnkStruct_ov21_021D9B24 *v1 = param3->unk_08;
    UnkStruct_ov21_021D95CC *v2 = param0;
    UnkStruct_ov21_021DC96C *v3 = param1->unk_08;
    int v4;
    int v5;
    int v6;
    int v7;

    if (ov21_021D86D8(v0->unk_08) != 0) {
        ov21_021DC96C(v3, v2, v0);
    } else {
        ov21_021DC7C0(v3, v2);

        if ((v3->unk_104 != v1->unk_24) || (v3->unk_108 != v1->unk_28)) {
            v5 = v3->unk_104;
            v6 = v3->unk_108;
            v3->unk_104 = v1->unk_24;
            v3->unk_108 = v1->unk_28;

            if (v5 == 3) {
                ov21_021DB6C8(v3, v2);
                ov21_021DBDA0(v3);
            }

            ov21_021DB79C(v3, v2, param1->heapID);
            ov21_021DBE3C(v3, v2, param1->heapID);

            if (v3->unk_104 == 3) {
                ov21_021DB634(v3, v2, param1->heapID);
                ov21_021DBBE4(v3, v2, param1->heapID);
            }

            ov21_021DC8B4(v3, GX_OAM_MODE_XLU, v3->unk_104, v3->unk_108);
        }

        ov21_021DB49C(v2, v1, v0);
    }

    for (v4 = 0; v4 < 6; v4++) {
        ov21_021D144C(v3->unk_00[v4], v1->unk_2C[v4]);

        if (v3->unk_18[v4]) {
            if (v4 == 5) {
                v7 = 1;
            } else {
                v7 = 3;
            }

            ov21_021D1524(v3->unk_00[v4], v3->unk_18[v4], -6, v7, 5);
        }
    }

    for (v4 = 0; v4 < 15; v4++) {
        if (v3->unk_30[v4]) {
            ov21_021D144C(v3->unk_30[v4], v1->unk_44[v4]);
        }

        if (v3->unk_6C[v4]) {
            ov21_021D1524(v3->unk_30[v4], v3->unk_6C[v4], -6, 0xB, 6);
        }

        if (v3->unk_A8[v4]) {
            ov21_021D144C(v3->unk_A8[v4], v1->unk_44[v4]);
        }
    }

    return 0;
}

static int ov21_021D9960(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021D95B8 *v0 = param2;
    const UnkStruct_ov21_021D9B24 *v1 = param3->unk_08;
    UnkStruct_ov21_021D95CC *v2 = param0;
    UnkStruct_ov21_021DC96C *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        if (ov21_021D86D0(v0->unk_08) == 1) {
            param1->unk_00 = 2;
        } else {
            sub_0200AAE0(6, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
            param1->unk_00++;
        }
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021D9A4C(v3, v2);

        if (v3->unk_104 == 3) {
            ov21_021DB6C8(v3, v2);
            ov21_021DBDA0(v3);
        }

        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021D9A08(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2, const UnkStruct_ov21_021D9B24 *param3, int param4)
{
    ov21_021D9A74(param1, param2, param4);
    ov21_021DB50C(param0, param1, param4);
    ov21_021DB708(param0, param1, param4);
    ov21_021DBDC8(param0, param1, param4);
    ov21_021DC8B4(param0, GX_OAM_MODE_XLU, param0->unk_104, param0->unk_108);
}

static void ov21_021D9A4C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    ov21_021DBE2C(param0);
    ov21_021DB78C(param0);
    ov21_021DB5DC(param0, param1);
    ov21_021D2584(&param1->unk_00->unk_1E0, 0);
}

static void ov21_021D9A74(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D95B8 *param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 29, param0->unk_00->unk_00, 6, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 75, 1, &v1, param2);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 6);
}

static void ov21_021D9ADC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    ov21_021D9BEC(param0, param1, param2);
    ov21_021D9B58(param0, param1, param2, param0->unk_24, param0->unk_28);
    ov21_021D9B04(param0);
}

static void ov21_021D9B04(UnkStruct_ov21_021D9B24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_2C[v0] = 3;
    }

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_44[v0] = 3;
    }
}

static void ov21_021D9B24(UnkStruct_ov21_021D9B24 *param0)
{
    ov21_021D9D00(param0);
    ov21_021D9D50(param0);
}

static void ov21_021D9B34(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    ov21_021D9D50(param0);
    ov21_021D9B58(param0, param1, param2, param0->unk_24, param0->unk_28);
}

static void ov21_021D9B58(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3, int param4)
{
    switch (param3) {
    case 0:
        ov21_021D9D78(param0, param1, param2);
        break;
    case 1:
        ov21_021D9EB4(param0, param1, param2);
        break;
    case 2:
        if (param4 == 0) {
            ov21_021DA018(param0, param1, param2);
        } else {
            ov21_021DA1C8(param0, param1, param2);
        }
        break;
    case 3:
        ov21_021DA38C(param0, param1, param2);
        break;
    default:
        break;
    }
}

static void ov21_021D9B98(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    ov21_021D9C90(param0, param1);
    ov21_021D9BB0(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021D9BB0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021D9E08(param0, param1);
        break;
    case 1:
        ov21_021D9F44(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DA0BC(param0, param1);
        } else {
            ov21_021DA280(param0, param1);
        }
        break;
    case 3:
        ov21_021DA41C(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021D9BEC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    param0->unk_04 = Heap_AllocFromHeap(param2, sizeof(TouchScreenHitTable) * 6);

    ov21_021D154C(&param0->unk_04[1], 48 - (32 / 2), 48 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    ov21_021D154C(&param0->unk_04[0], 16 - (32 / 2), 16 + (32 / 2), 212 - (48 / 2), 212 + (48 / 2));
    ov21_021D154C(&param0->unk_04[2], 80 - (32 / 2), 80 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    ov21_021D154C(&param0->unk_04[3], 112 - (32 / 2), 112 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    ov21_021D154C(&param0->unk_04[4], 144 - (32 / 2), 144 + (32 / 2), 224 - (64 / 2), 224 + (64 / 2));
    ov21_021D154C(&param0->unk_04[5], 176 - (32 / 2), 176 + (32 / 2), 212 - (80 / 2), 212 + (80 / 2));

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_00 = sub_02023FCC(param0->unk_04, 6, ov21_021D9D18, &param0->unk_10, param2);
}

static void ov21_021D9C90(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    ov21_021D9CA8(param0);
    sub_0202404C(param0->unk_00);
    ov21_021D9CB8(param0, param0->unk_24);
}

static void ov21_021D9CA8(UnkStruct_ov21_021D9B24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_2C[v0] = 3;
    }
}

static void ov21_021D9CB8(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    switch (param1) {
    case 0:
        if (param0->unk_2C[1] != 2) {
            param0->unk_2C[1] = 1;
        }
        break;
    case 1:
        if (param0->unk_2C[2] != 2) {
            param0->unk_2C[2] = 1;
        }
        break;
    case 2:
        if (param0->unk_2C[3] != 2) {
            param0->unk_2C[3] = 1;
        }
        break;
    case 3:
        if (param0->unk_2C[4] != 2) {
            param0->unk_2C[4] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021D9D00(UnkStruct_ov21_021D9B24 *param0)
{
    sub_02024034(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);
    param0->unk_04 = NULL;
}

static void ov21_021D9D18(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_2C[param0] = param1;

    switch (param1) {
    case 2:
        ov21_021D4F20(v2->unk_18, 4, param0);
        v2->unk_80 = param0;
        v2->unk_94++;
        break;
    default:
        v2->unk_94 = 0;
        break;
    }
}

static void ov21_021D9D50(UnkStruct_ov21_021D9B24 *param0)
{
    sub_02024034(param0->unk_08);
    Heap_FreeToHeap(param0->unk_0C);

    param0->unk_0C = NULL;
}

static void ov21_021D9D68(UnkStruct_ov21_021D9B24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_44[v0] = 3;
    }
}

static void ov21_021D9D78(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_AllocFromHeap(param2, sizeof(TouchScreenHitTable) * 6);

    for (v0 = 0; v0 < 3; v0++) {
        v3 = 48 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            ov21_021D154C(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = sub_02023FCC(param0->unk_0C, 6, ov21_021D9E90, &param0->unk_10, param2);
}

static void ov21_021D9E08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_44[v0] = 3;
    }

    sub_0202404C(param0->unk_08);

    switch (ov21_021D8658(param1->unk_08)) {
    case 0:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 1:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    }
}

static void ov21_021D9E90(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case 2:
        ov21_021D4F20(v2->unk_18, 4, 8 + param0);
        v2->unk_84 = param0;
        break;
    default:
        break;
    }
}

static void ov21_021D9EB4(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_AllocFromHeap(param2, sizeof(TouchScreenHitTable) * 10);

    for (v0 = 0; v0 < 5; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            ov21_021D154C(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = sub_02023FCC(param0->unk_0C, 10, ov21_021D9FF8, &param0->unk_10, param2);
}

static void ov21_021D9F44(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_44[v0] = 3;
    }

    sub_0202404C(param0->unk_08);

    switch (ov21_021D8674(param1->unk_08)) {
    case 1:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 6:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 7:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 8:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    case 9:
        if (param0->unk_44[8] != 2) {
            param0->unk_44[8] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021D9FF8(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case 2:
        ov21_021D4F20(v2->unk_18, 4, 6 + param0);
        v2->unk_84 = param0;
        break;
    default:
        break;
    }
}

static void ov21_021DA018(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_AllocFromHeap(param2, sizeof(TouchScreenHitTable) * 11);

    for (v0 = 0; v0 < 5; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            ov21_021D154C(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    v3 = 176;
    v2 = (48 - 24);

    ov21_021D154C(&param0->unk_0C[10], v3 - (32 / 2), v3 + (32 / 2), v2 - (32 / 2), v2 + (32 / 2));

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = sub_02023FCC(param0->unk_0C, 11, ov21_021DA18C, &param0->unk_10, param2);
}

static void ov21_021DA0BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 11; v0++) {
        param0->unk_44[v0] = 3;
    }

    sub_0202404C(param0->unk_08);
    ov21_021DA0FC(param0, ov21_021D8698(param1->unk_08, 0));
    ov21_021DA0FC(param0, ov21_021D8698(param1->unk_08, 1));
}

static void ov21_021DA0FC(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    switch (param1) {
    case 1:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 6:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 7:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 8:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    case 9:
        if (param0->unk_44[8] != 2) {
            param0->unk_44[8] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021DA18C(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case 2:
        if (v2->unk_90 == 0) {
            ov21_021D4F20(v2->unk_18, 4, 6 + param0);
            v2->unk_84 = param0;
            v2->unk_90 = 1;
        }
        break;
    default:
        v2->unk_90 = 0;
        break;
    }
}

static void ov21_021DA1C8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_AllocFromHeap(param2, sizeof(TouchScreenHitTable) * 10);

    for (v0 = 0; v0 < 4; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 2; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            ov21_021D154C(&param0->unk_0C[(v0 * 2) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));
        }
    }

    v3 = 144;
    v2 = 128;

    ov21_021D154C(&param0->unk_0C[8], v3 - (32 / 2), v3 + (32 / 2), v2 - (80 / 2), v2 + (80 / 2));

    v3 = 176;
    v2 = (48 - 24);

    ov21_021D154C(&param0->unk_0C[9], v3 - (32 / 2), v3 + (32 / 2), v2 - (32 / 2), v2 + (32 / 2));

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = sub_02023FCC(param0->unk_0C, 10, ov21_021DA2C0, &param0->unk_10, param2);
}

static void ov21_021DA280(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_44[v0] = 3;
    }

    sub_0202404C(param0->unk_08);
    ov21_021DA308(param0, ov21_021D8698(param1->unk_08, 0));
    ov21_021DA308(param0, ov21_021D8698(param1->unk_08, 1));
}

static void ov21_021DA2C0(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case 2:
        if (v2->unk_90 == 0) {
            if (param0 == 8) {
                ov21_021D4F20(v2->unk_18, 4, 6 + param0 + 1);
            } else {
                ov21_021D4F20(v2->unk_18, 4, 6 + param0);
            }

            v2->unk_84 = param0;
            v2->unk_90 = 1;
        }
        break;
    default:
        v2->unk_90 = 0;
        break;
    }
}

static void ov21_021DA308(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    switch (param1) {
    case 10:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 11:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 12:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 13:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 14:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 15:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 16:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 17:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021DA38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    int v0, v1;
    int v2, v3;

    param0->unk_0C = Heap_AllocFromHeap(param2, sizeof(TouchScreenHitTable) * 15);

    for (v0 = 0; v0 < 5; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 28 + (v1 * 56);

            ov21_021D154C(&param0->unk_0C[(v0 * 3) + v1], v3 - (32 / 2), v3 + (32 / 2), v2 - (48 / 2), v2 + (48 / 2));
        }
    }

    param0->unk_10.unk_00 = param1;
    param0->unk_10.unk_04 = param0;
    param0->unk_08 = sub_02023FCC(param0->unk_0C, 15, ov21_021DA514, &param0->unk_10, param2);
}

static void ov21_021DA41C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_44[v0] = 3;
    }

    sub_0202404C(param0->unk_08);

    switch (ov21_021D86BC(param1->unk_08)) {
    case 1:
        if (param0->unk_44[7] != 2) {
            param0->unk_44[7] = 1;
        }
        break;
    case 2:
        if (param0->unk_44[11] != 2) {
            param0->unk_44[11] = 1;
        }
        break;
    case 3:
        if (param0->unk_44[5] != 2) {
            param0->unk_44[5] = 1;
        }
        break;
    case 4:
        if (param0->unk_44[1] != 2) {
            param0->unk_44[1] = 1;
        }
        break;
    case 5:
        if (param0->unk_44[12] != 2) {
            param0->unk_44[12] = 1;
        }
        break;
    case 6:
        if (param0->unk_44[8] != 2) {
            param0->unk_44[8] = 1;
        }
        break;
    case 7:
        if (param0->unk_44[13] != 2) {
            param0->unk_44[13] = 1;
        }
        break;
    case 8:
        if (param0->unk_44[4] != 2) {
            param0->unk_44[4] = 1;
        }
        break;
    case 9:
        if (param0->unk_44[3] != 2) {
            param0->unk_44[3] = 1;
        }
        break;
    case 10:
        if (param0->unk_44[6] != 2) {
            param0->unk_44[6] = 1;
        }
        break;
    case 11:
        if (param0->unk_44[9] != 2) {
            param0->unk_44[9] = 1;
        }
        break;
    case 12:
        if (param0->unk_44[2] != 2) {
            param0->unk_44[2] = 1;
        }
        break;
    case 13:
        if (param0->unk_44[0] != 2) {
            param0->unk_44[0] = 1;
        }
        break;
    case 14:
        if (param0->unk_44[10] != 2) {
            param0->unk_44[10] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021DA514(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021D9D18 *v0 = param2;
    UnkStruct_ov21_021D95B8 *v1 = v0->unk_00;
    UnkStruct_ov21_021D9B24 *v2 = v0->unk_04;

    v2->unk_44[param0] = param1;

    switch (param1) {
    case 2:
        ov21_021D4F20(v2->unk_18, 4, 6 + param0);
        v2->unk_84 = param0;
        break;
    default:
        break;
    }
}

static void ov21_021DA534(UnkStruct_ov21_021D4FE4 *param0, int param1)
{
    int v0, v1;
    int v2, v3;

    switch (param1) {
    case 0:
        v0 = 212;
        v1 = 16;
        v2 = 28;
        v3 = 16;
        break;
    case 1:
        v0 = 224;
        v1 = 48;
        v2 = 44;
        v3 = 16;
        break;
    case 2:
        v0 = 224;
        v1 = 80;
        v2 = 44;
        v3 = 16;
        break;
    case 3:
        v0 = 224;
        v1 = 112;
        v2 = 44;
        v3 = 16;
        break;
    case 4:
        v0 = 224;
        v1 = 144;
        v2 = 44;
        v3 = 16;
        break;
    case 5:
        v0 = 212;
        v1 = 176;
        v2 = 60;
        v3 = 16;
        break;
    }

    ov21_021D4FE4(param0, v0, v1, v2, v3, 0, 0, param1);
}

static void ov21_021DA5A8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (ov21_021D4F7C(param0->unk_18)) {
            case 1:
                param0->unk_80 = 1;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 2:
                param0->unk_80 = 2;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 3:
                param0->unk_80 = 3;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 4:
                param0->unk_80 = 4;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 5:
                param0->unk_80 = 5;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            case 0:
                param0->unk_80 = 0;
                param0->unk_2C[param0->unk_80] = 2;
                break;
            default:
                break;
            }

            param0->unk_94++;
        }
    } else {
        param0->unk_94 = 0;
        param0->unk_8C = 0;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        param0->unk_80 = 0;
        param0->unk_2C[param0->unk_80] = 2;
    }
}

static void ov21_021DA6B0(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;

    param0->unk_1C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov21_021D4FE4) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v5 = 6 + (v0 * (3 - 1)) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v5 = 0;
                } else {
                    v4 = 1;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v5 = 1;
                } else {
                    v4 = 0;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v5 = 2;
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v5 = 3;
                } else {
                    v4 = 0;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v5 = 4;
                } else {
                    v4 = 1;
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v5 = 5;
                } else {
                    v4 = 1;
                }
                break;
            }

            if (v1 < (3 - 1)) {
                ov21_021D4FE4(&param0->unk_1C[(v0 * 3) + v1], v2, v3, 60, 16, v4, v4, v5);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v5);
            }
        }
    }

    param0->unk_18 = ov21_021D4EE4(param1);
    ov21_021D4F04(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DA7B0(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (ov21_021D4F7C(param0->unk_18)) {
            case 8:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DA888(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;

    param0->unk_1C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov21_021D4FE4) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v5 = 6 + (v0 * 2) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v5 = 0;
                } else {
                    v4 = 0;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v5 = 1;
                } else {
                    v4 = 0;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v5 = 2;
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v5 = 3;
                } else {
                    v4 = 0;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v5 = 4;
                } else {
                    v4 = 0;
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v5 = 5;
                } else {
                    v4 = 1;
                }
                break;
            }

            if (v1 < (3 - 1)) {
                ov21_021D4FE4(&param0->unk_1C[(v0 * 3) + v1], v2, v3, 60, 16, v4, v4, v5);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v5);
            }
        }
    }

    param0->unk_18 = ov21_021D4EE4(param1);
    ov21_021D4F04(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DA988(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (ov21_021D4F7C(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 14:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DAAD4(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6;
    int v7;

    param0->unk_1C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov21_021D4FE4) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v7 = 6 + (v0 * 2) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v7 = 0;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v7 = 1;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v7 = 2;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v7 = 3;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v7 = 4;
                } else {
                    v6 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v7 = 5;
                } else {
                    if (v1 == 0) {
                        v6 = 0;
                        v4 = 16;
                        v5 = 16;
                        v2 = (48 - 24);
                    } else {
                        v6 = 1;
                        v4 = 60;
                        v5 = 16;
                    }
                }
                break;
            }

            if (v1 < (3 - 1)) {
                ov21_021D4FE4(&param0->unk_1C[(v0 * 3) + v1], v2, v3, v4, v5, v6, v6, v7);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v7);
            }
        }
    }

    param0->unk_18 = ov21_021D4EE4(param1);
    ov21_021D4F04(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DAC08(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (ov21_021D4F7C(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 14:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                param0->unk_8C = 1;
                break;
            case 16:
                param0->unk_84 = 10;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DAD74(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6, v7;
    int v8;

    param0->unk_1C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov21_021D4FE4) * (3 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 3; v1++) {
            v2 = 48 + (v1 * (128 - 48));
            v8 = 6 + (v0 * 2) + v1;

            switch (v0) {
            case 0:
                if (v1 == (3 - 1)) {
                    v8 = 0;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 1:
                if (v1 == (3 - 1)) {
                    v8 = 1;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 2:
                if (v1 == (3 - 1)) {
                    v8 = 2;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 3:
                if (v1 == (3 - 1)) {
                    v8 = 3;
                } else {
                    v6 = 0;
                    v7 = 0;
                    v4 = 60;
                    v5 = 16;
                }
                break;
            case 4:
                if (v1 == (3 - 1)) {
                    v8 = 4;
                } else {
                    if (v1 == 0) {
                        v6 = 1;
                        v7 = 2;
                        v4 = 60;
                        v5 = 16;
                    } else {
                        v6 = 0;
                        v7 = 0;
                        v4 = 60;
                        v5 = 16;
                    }
                }
                break;
            case 5:
                if (v1 == (3 - 1)) {
                    v8 = 5;
                } else {
                    if (v1 == 0) {
                        v6 = 0;
                        v7 = 0;
                        v4 = 16;
                        v5 = 16;
                        v2 = (48 - 24);
                    } else {
                        v6 = 1;
                        v7 = 1;
                        v4 = 60;
                        v5 = 16;
                    }
                }
                break;
            }

            if (v1 < (3 - 1)) {
                ov21_021D4FE4(&param0->unk_1C[(v0 * 3) + v1], v2, v3, v4, v5, v6, v7, v8);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 3) + v1], v8);
            }
        }
    }

    param0->unk_18 = ov21_021D4EE4(param1);
    ov21_021D4F04(param0->unk_18, param0->unk_1C, 3, 6);
}

static void ov21_021DAED8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (ov21_021D4F7C(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                param0->unk_8C = 1;
                break;
            case 16:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DB02C(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    int v0, v1;
    int v2, v3;
    int v4;
    int v5;

    param0->unk_1C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov21_021D4FE4) * (4 * 6));

    for (v0 = 0; v0 < 6; v0++) {
        v3 = 16 + (v0 * (48 - 16));

        for (v1 = 0; v1 < 4; v1++) {
            v2 = 28 + (v1 * 56);
            v5 = 6 + (v0 * (4 - 1)) + v1;

            switch (v0) {
            case 0:
                if (v1 == (4 - 1)) {
                    v5 = 0;
                } else {
                    v4 = 0;
                }
                break;
            case 1:
                if (v1 == (4 - 1)) {
                    v5 = 1;
                } else {
                    v4 = 0;
                }
                break;
            case 2:
                if (v1 == (4 - 1)) {
                    v5 = 2;
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                if (v1 == (4 - 1)) {
                    v5 = 3;
                } else {
                    v4 = 0;
                }
                break;
            case 4:
                if (v1 == (4 - 1)) {
                    v5 = 4;
                } else {
                    v4 = 0;
                }
                break;
            case 5:
                if (v1 == (4 - 1)) {
                    v5 = 5;
                } else {
                    v4 = 1;
                }
                break;
            }

            if (v1 < (4 - 1)) {
                ov21_021D4FE4(&param0->unk_1C[(v0 * 4) + v1], v2, v3, 32, 20, v4, v4, v5);
            } else {
                ov21_021DA534(&param0->unk_1C[(v0 * 4) + v1], v5);
            }
        }
    }

    param0->unk_18 = ov21_021D4EE4(param1);
    ov21_021D4F04(param0->unk_18, param0->unk_1C, 4, 6);
}

static void ov21_021DB12C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        if (param0->unk_8C == 0) {
            switch (ov21_021D4F7C(param0->unk_18)) {
            case 6:
                param0->unk_84 = 0;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 7:
                param0->unk_84 = 1;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 8:
                param0->unk_84 = 2;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 9:
                param0->unk_84 = 3;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 10:
                param0->unk_84 = 4;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 11:
                param0->unk_84 = 5;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 12:
                param0->unk_84 = 6;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 13:
                param0->unk_84 = 7;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 14:
                param0->unk_84 = 8;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 15:
                param0->unk_84 = 9;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 16:
                param0->unk_84 = 10;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 17:
                param0->unk_84 = 11;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 18:
                param0->unk_84 = 12;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 19:
                param0->unk_84 = 13;
                param0->unk_44[param0->unk_84] = 2;
                break;
            case 20:
                param0->unk_84 = 14;
                param0->unk_44[param0->unk_84] = 2;
                break;
            default:
                break;
            }
        }
    } else {
        param0->unk_8C = 0;
    }
}

static void ov21_021DB2FC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        ov21_021D4F20(param0->unk_18, 0, 1);
        param0->unk_8C = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        ov21_021D4F20(param0->unk_18, 0, -1);
        param0->unk_8C = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        ov21_021D4F20(param0->unk_18, 1, -1);
        param0->unk_8C = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        ov21_021D4F20(param0->unk_18, 1, 1);
        param0->unk_8C = 1;
    }

    ov21_021DA5A8(param0, param1);
    ov21_021DB38C(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021DB38C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DA7B0(param0, param1);
        break;
    case 1:
        ov21_021DA988(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DAC08(param0, param1);
        } else {
            ov21_021DAED8(param0, param1);
        }
        break;
    case 3:
        ov21_021DB12C(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DB3C8(UnkStruct_ov21_021D9B24 *param0)
{
    Heap_FreeToHeap(param0->unk_1C);
    ov21_021D4EFC(param0->unk_18);
    param0->unk_18 = NULL;
    param0->unk_1C = NULL;
}

static void ov21_021DB3E0(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    ov21_021DB3EC(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021DB3EC(UnkStruct_ov21_021D9B24 *param0, int param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DA6B0(param0, param1);
        break;
    case 1:
        ov21_021DA888(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DAAD4(param0, param1);
        } else {
            ov21_021DAD74(param0, param1);
        }
        break;
    case 3:
        ov21_021DB02C(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DB428(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0;

    switch (param0->unk_24) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov21_021D4F20(param0->unk_18, 4, v0);
}

static void ov21_021DB468(UnkStruct_ov21_021D9B24 *param0, int param1)
{
    ov21_021DB3C8(param0);
    ov21_021DB3EC(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021DB480(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2)
{
    ov21_021D25B8(param1->unk_18, param0->unk_00);
    ov21_021DB49C(param0, param1, param2);
}

static void ov21_021DB49C(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1, const UnkStruct_ov21_021D95B8 *param2)
{
    BOOL v0;

    if (ov21_021D3998(param2->unk_04) != 0) {
        v0 = ov21_021DB4E4(param0, 1);

        if (v0) {
            ov21_021D25B8(param1->unk_18, param0->unk_00);
        }

        ov21_021DB4D4(param0, param1);
    } else {
        ov21_021DB4E4(param0, 0);
    }
}

static void ov21_021DB4D4(UnkStruct_ov21_021D95CC *param0, const UnkStruct_ov21_021D9B24 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    ov21_021D2544(param1->unk_18, v0);
}

static BOOL ov21_021DB4E4(UnkStruct_ov21_021D95CC *param0, BOOL param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;

    if (ov21_021D25A0(&v0->unk_1E0) != param1) {
        ov21_021D2584(&v0->unk_1E0, param1);
        return 1;
    }

    return 0;
}

static void ov21_021DB50C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_E4[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 125, 1, 125 + 16000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_E4[0]);
    SpriteResource_ReleaseData(param0->unk_E4[0]);

    param0->unk_E4[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 3, 0, 3 + 16000, NNS_G2D_VRAM_TYPE_2DSUB, 6, param2);

    sub_0200A640(param0->unk_E4[1]);
    SpriteResource_ReleaseData(param0->unk_E4[1]);

    param0->unk_E4[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 126, 1, 126 + 16000, 2, param2);
    param0->unk_E4[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 124, 1, 124 + 16000, 3, param2);
}

static void ov21_021DB5DC(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_E4[0]);
    sub_0200A6DC(param0->unk_E4[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_E4[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_E4[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_E4[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_E4[3]);
}

static void ov21_021DB634(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_F4[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 128, 1, 128 + 16000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_F4[0]);
    SpriteResource_ReleaseData(param0->unk_F4[0]);

    param0->unk_F4[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 129, 1, 129 + 16000, 2, param2);
    param0->unk_F4[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 127, 1, 127 + 16000, 3, param2);
}

static void ov21_021DB6C8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_F4[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_F4[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_F4[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_F4[3]);
}

static void ov21_021DB708(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3;

    sub_020093B4(&v0, 125 + 16000, 3 + 16000, 126 + 16000, 124 + 16000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    ov21_021DB858(param0, &v1);
    ov21_021DB81C(param0, &v1, param0->unk_104, param0->unk_108);
}

static void ov21_021DB78C(UnkStruct_ov21_021DC96C *param0)
{
    ov21_021DB90C(param0);
    ov21_021DB924(param0);
}

static void ov21_021DB79C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3;

    sub_020093B4(&v0, 125 + 16000, 3 + 16000, 126 + 16000, 124 + 16000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    ov21_021DB924(param0);
    ov21_021DB81C(param0, &v1, param0->unk_104, param0->unk_108);
}

static void ov21_021DB81C(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DB944(param0, param1);
        break;
    case 1:
        ov21_021DB9B4(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DBA24(param0, param1);
        } else {
            ov21_021DBAB8(param0, param1);
        }
        break;
    case 3:
        ov21_021DBB74(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DB858(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        switch (v0) {
        case 0:
            param1->position.y = (16 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 212 * FX32_ONE;
            break;
        case 1:
            param1->position.y = (48 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 2:
            param1->position.y = (80 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 3:
            param1->position.y = (112 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 4:
            param1->position.y = (144 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 224 * FX32_ONE;
            break;
        case 5:
            param1->position.y = (176 * FX32_ONE) + (192 << FX32_SHIFT);
            param1->position.x = 212 * FX32_ONE;
            break;
        }

        param0->unk_00[v0] = CellActorCollection_Add(param1);

        switch (v0) {
        case 0:
            CellActor_SetAnim(param0->unk_00[v0], 3);
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            CellActor_SetAnim(param0->unk_00[v0], 2);
            break;
        case 5:
            CellActor_SetAnim(param0->unk_00[v0], 1);
            break;
        }
    }
}

static void ov21_021DB90C(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        CellActor_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021DB924(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_30[v0]) {
            CellActor_Delete(param0->unk_30[v0]);
            param0->unk_30[v0] = NULL;
        }
    }
}

static void ov21_021DB944(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 3; v0++) {
        param1->position.y = 48 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = CellActorCollection_Add(param1);
            CellActor_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }
}

static void ov21_021DB9B4(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = CellActorCollection_Add(param1);
            CellActor_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }
}

static void ov21_021DBA24(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = CellActorCollection_Add(param1);
            CellActor_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }

    param1->position.y = 176;
    param1->position.x = (48 - 24);
    param1->position.x <<= FX32_SHIFT;
    param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);
    param0->unk_30[10] = CellActorCollection_Add(param1);

    CellActor_SetAnim(param0->unk_30[10], 5);
}

static void ov21_021DBAB8(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 2; v1++) {
            param1->position.x = 48 + (v1 * (128 - 48));
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 2) + v1] = CellActorCollection_Add(param1);
            CellActor_SetAnim(param0->unk_30[(v0 * 2) + v1], 0);
        }
    }

    param1->position.y = 144;
    param1->position.x = 128;
    param1->position.x <<= FX32_SHIFT;
    param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);
    param0->unk_30[8] = CellActorCollection_Add(param1);

    CellActor_SetAnim(param0->unk_30[8], 0);

    param1->position.y = 176;
    param1->position.x = (48 - 24);
    param1->position.x <<= FX32_SHIFT;
    param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);
    param0->unk_30[9] = CellActorCollection_Add(param1);

    CellActor_SetAnim(param0->unk_30[9], 4);
}

static void ov21_021DBB74(UnkStruct_ov21_021DC96C *param0, CellActorInitParams *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        param1->position.y = 16 + (v0 * (48 - 16));
        param1->position.y = (param1->position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v1 = 0; v1 < 3; v1++) {
            param1->position.x = 28 + (v1 * 56);
            param1->position.x <<= FX32_SHIFT;
            param0->unk_30[(v0 * 3) + v1] = CellActorCollection_Add(param1);

            CellActor_SetAnim(param0->unk_30[(v0 * 3) + v1], 6);
        }
    }
}

static void ov21_021DBBE4(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3, v4;

    sub_020093B4(&v0, 128 + 16000, 3 + 16000, 129 + 16000, 127 + 16000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 15;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    for (v3 = 0; v3 < 5; v3++) {
        v1.position.y = 16 + (v3 * (48 - 16));
        v1.position.y = (v1.position.y << FX32_SHIFT) + (192 << FX32_SHIFT);

        for (v4 = 0; v4 < 3; v4++) {
            v1.position.x = 28 + (v4 * 56);
            v1.position.x <<= FX32_SHIFT;
            param0->unk_A8[(v3 * 3) + v4] = CellActorCollection_Add(&v1);

            switch ((v3 * 3) + v4) {
            case 0:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 0);
                break;
            case 1:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 5);
                break;
            case 2:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 10);
                break;
            case 3:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 1);
                break;
            case 4:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 6);
                break;
            case 5:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 11);
                break;
            case 6:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 2);
                break;
            case 7:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 9);
                break;
            case 8:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 12);
                break;
            case 9:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 3);
                break;
            case 10:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 8);
                break;
            case 11:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 13);
                break;
            case 12:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 4);
                break;
            case 13:
                CellActor_SetAnim(param0->unk_A8[(v3 * 3) + v4], 7);
                break;
            case 14:
                CellActor_SetDrawFlag(param0->unk_A8[(v3 * 3) + v4], 0);
                break;
            }
        }
    }
}

static void ov21_021DBDA0(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_A8[v0]) {
            CellActor_Delete(param0->unk_A8[v0]);
            param0->unk_A8[v0] = NULL;
        }
    }
}

static void ov21_021DBDC8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    UnkStruct_ov21_021D4CB8 v0;
    SpriteResource *v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;

    v1 = SpriteResourceCollection_Find(v2->unk_13C[1], 3 + 16000);

    v0.unk_00 = v2->unk_14C;
    v0.unk_08 = sub_0200A72C(v1, NULL);
    v0.unk_18 = 0;
    v0.unk_1C = 0;
    v0.unk_20 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = param2;

    ov21_021DBEC8(param0, &v0, v2->unk_14C);
    ov21_021DBE98(param0, &v0, v2->unk_14C, param0->unk_104, param0->unk_108);
}

static void ov21_021DBE2C(UnkStruct_ov21_021DC96C *param0)
{
    ov21_021DC04C(param0);
    ov21_021DC068(param0);
}

static void ov21_021DBE3C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, int param2)
{
    UnkStruct_ov21_021D4CB8 v0;
    SpriteResource *v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;

    v1 = SpriteResourceCollection_Find(v2->unk_13C[1], 3 + 16000);

    v0.unk_00 = v2->unk_14C;
    v0.unk_08 = sub_0200A72C(v1, NULL);
    v0.unk_18 = 0;
    v0.unk_1C = 0;
    v0.unk_20 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = param2;

    ov21_021DC068(param0);
    ov21_021DBE98(param0, &v0, v2->unk_14C, param0->unk_104, param0->unk_108);
}

static void ov21_021DBE98(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2, int param3, int param4)
{
    switch (param3) {
    case 0:
        ov21_021DC088(param0, param1, param2);
        break;
    case 1:
        ov21_021DC12C(param0, param1, param2);
        break;
    case 2:
        if (param4 == 0) {
            ov21_021DC1E8(param0, param1, param2);
        } else {
            ov21_021DC2A4(param0, param1, param2);
        }
        break;
    default:
        break;
    }
}

static void ov21_021DBEC8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2)
{
    Window *v0;
    int v1;
    u32 v2;

    v1 = sub_0201FAB4(param1->unk_08, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = ov21_021D4D6C(param2, 8, 2);
    v2 = ov21_021D4DAC(param2, v0, message_bank_pokedex, 50, 0, 0);

    param1->unk_04 = v0;
    param1->unk_0C = param0->unk_00[1];
    param1->unk_10 = -v2 / 2;
    param1->unk_14 = -6;
    param0->unk_18[1] = ov21_021D4CA0(param1);

    sub_02012A60(param0->unk_18[1]->unk_00, v1 + 3);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(param2, 8, 2);
    v2 = ov21_021D4DAC(param2, v0, message_bank_pokedex, 47, 0, 0);

    param1->unk_04 = v0;
    param1->unk_0C = param0->unk_00[2];
    param1->unk_10 = -v2 / 2;
    param1->unk_14 = -6;
    param0->unk_18[2] = ov21_021D4CA0(param1);

    sub_02012A60(param0->unk_18[2]->unk_00, v1 + 3);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(param2, 8, 2);
    v2 = ov21_021D4DAC(param2, v0, message_bank_pokedex, 48, 0, 0);

    param1->unk_04 = v0;
    param1->unk_0C = param0->unk_00[3];
    param1->unk_10 = -v2 / 2;
    param1->unk_14 = -6;
    param0->unk_18[3] = ov21_021D4CA0(param1);

    sub_02012A60(param0->unk_18[3]->unk_00, v1 + 3);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(param2, 8, 2);
    v2 = ov21_021D4DAC(param2, v0, message_bank_pokedex, 49, 0, 0);

    param1->unk_04 = v0;
    param1->unk_0C = param0->unk_00[4];
    param1->unk_10 = -v2 / 2;
    param1->unk_14 = -6;
    param0->unk_18[4] = ov21_021D4CA0(param1);

    sub_02012A60(param0->unk_18[4]->unk_00, v1 + 3);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(param2, 8, 2);
    v2 = ov21_021D4DAC(param2, v0, message_bank_pokedex, 51, 0, 0);

    param1->unk_04 = v0;
    param1->unk_0C = param0->unk_00[5];
    param1->unk_10 = -v2 / 2;
    param1->unk_14 = -6;
    param0->unk_18[5] = ov21_021D4CA0(param1);

    sub_02012A60(param0->unk_18[5]->unk_00, v1 + 1);
    ov21_021D4DA0(v0);
}

static void ov21_021DC04C(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_18[v0]) {
            ov21_021D4D1C(param0->unk_18[v0]);
        }
    }
}

static void ov21_021DC068(UnkStruct_ov21_021DC96C *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_6C[v0]) {
            ov21_021D4D1C(param0->unk_6C[v0]);
            param0->unk_6C[v0] = NULL;
        }
    }
}

static void ov21_021DC088(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2)
{
    Window *v0;
    int v1;
    int v2;
    int v3;
    u32 v4;

    v1 = sub_0201FAB4(param1->unk_08, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 6; v2++) {
        v0 = ov21_021D4D6C(param2, 10, 2);

        switch (v2) {
        case 0:
            v3 = 81;
            break;
        case 1:
            v3 = 82;
            break;
        case 2:
            v3 = 83;
            break;
        case 3:
            v3 = 84;
            break;
        case 4:
            v3 = 85;
            break;
        case 5:
            v3 = 86;
            break;
        }

        v4 = ov21_021D4DAC(param2, v0, message_bank_pokedex, v3, 0, 0);

        param1->unk_10 = -v4 / 2;
        param1->unk_04 = v0;
        param1->unk_0C = param0->unk_30[v2];
        param1->unk_14 = -6;
        param0->unk_6C[v2] = ov21_021D4CA0(param1);

        sub_02012A60(param0->unk_6C[v2]->unk_00, v1 + 0xB);
        ov21_021D4DA0(v0);
    }
}

static void ov21_021DC12C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2)
{
    Window *v0;
    int v1;
    int v2, v3;
    int v4;
    u32 v5;

    v1 = sub_0201FAB4(param1->unk_08, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 10; v2++) {
        v0 = ov21_021D4D6C(param2, 10, 2);

        switch (v2) {
        case 0:
            v4 = 54;
            break;
        case 1:
            v4 = 55;
            break;
        case 2:
            v4 = 56;
            break;
        case 3:
            v4 = 57;
            break;
        case 4:
            v4 = 58;
            break;
        case 5:
            v4 = 59;
            break;
        case 6:
            v4 = 60;
            break;
        case 7:
            v4 = 61;
            break;
        case 8:
            v4 = 62;
            break;
        case 9:
            v4 = 126;
            break;
        }

        v5 = ov21_021D4DAC(param2, v0, message_bank_pokedex, v4, 0, 0);

        param1->unk_10 = -v5 / 2;
        param1->unk_04 = v0;
        param1->unk_0C = param0->unk_30[v2];
        param1->unk_14 = -6;
        param0->unk_6C[v2] = ov21_021D4CA0(param1);

        sub_02012A60(param0->unk_6C[v2]->unk_00, v1 + 0xB);
        ov21_021D4DA0(v0);
    }
}

static void ov21_021DC1E8(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2)
{
    Window *v0;
    int v1;
    int v2, v3;
    int v4;
    u32 v5;

    v1 = sub_0201FAB4(param1->unk_08, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 10; v2++) {
        v0 = ov21_021D4D6C(param2, 10, 2);

        switch (v2) {
        case 0:
            v4 = 64;
            break;
        case 1:
            v4 = 70;
            break;
        case 2:
            v4 = 73;
            break;
        case 3:
            v4 = 71;
            break;
        case 4:
            v4 = 72;
            break;
        case 5:
            v4 = 76;
            break;
        case 6:
            v4 = 75;
            break;
        case 7:
            v4 = 77;
            break;
        case 8:
            v4 = 80;
            break;
        case 9:
            v4 = 127;
            break;
        }

        v5 = ov21_021D4DAC(param2, v0, message_bank_pokedex, v4, 0, 0);

        param1->unk_10 = -v5 / 2;
        param1->unk_04 = v0;
        param1->unk_0C = param0->unk_30[v2];
        param1->unk_14 = -6;
        param0->unk_6C[v2] = ov21_021D4CA0(param1);

        sub_02012A60(param0->unk_6C[v2]->unk_00, v1 + 0xB);
        ov21_021D4DA0(v0);
    }
}

static void ov21_021DC2A4(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D4CB8 *param1, UnkStruct_ov21_021D4C0C *param2)
{
    Window *v0;
    int v1;
    int v2, v3;
    int v4;
    u32 v5;

    v1 = sub_0201FAB4(param1->unk_08, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < 9; v2++) {
        v0 = ov21_021D4D6C(param2, 10, 2);

        switch (v2) {
        case 0:
            v4 = 65;
            break;
        case 1:
            v4 = 66;
            break;
        case 2:
            v4 = 68;
            break;
        case 3:
            v4 = 67;
            break;
        case 4:
            v4 = 74;
            break;
        case 5:
            v4 = 69;
            break;
        case 6:
            v4 = 78;
            break;
        case 7:
            v4 = 79;
            break;
        case 8:
            v4 = 127;
            break;
        }

        v5 = ov21_021D4DAC(param2, v0, message_bank_pokedex, v4, 0, 0);

        param1->unk_10 = -v5 / 2;
        param1->unk_04 = v0;
        param1->unk_0C = param0->unk_30[v2];
        param1->unk_14 = -6;
        param0->unk_6C[v2] = ov21_021D4CA0(param1);

        sub_02012A60(param0->unk_6C[v2]->unk_00, v1 + 0xB);
        ov21_021D4DA0(v0);
    }
}

static void ov21_021DC35C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = param0->unk_24;
    param0->unk_84 = 0xffff;
}

static void ov21_021DC368(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    ov21_021DC3BC(param0, param1);
    ov21_021DC380(param0, param1, param0->unk_24, param0->unk_28);
}

static void ov21_021DC380(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2, int param3)
{
    switch (param2) {
    case 0:
        ov21_021DC48C(param0, param1);
        break;
    case 1:
        ov21_021DC4F8(param0, param1);
        break;
    case 2:
        if (param3 == 0) {
            ov21_021DC57C(param0, param1);
        } else {
            ov21_021DC600(param0, param1);
        }
        break;
    case 3:
        ov21_021DC720(param0, param1);
        break;
    default:
        break;
    }
}

static void ov21_021DC3BC(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    switch (param0->unk_80) {
    case 0:
        ov21_021D86C4(param1->unk_08, 0);
        Sound_PlayEffect(1501);
        break;
    case 1:
        if (ov21_021D863C(param1->unk_08) != 0) {
            ov21_021D8628(param1->unk_08, 0);
            Sound_PlayEffect(1501);
        }
        break;
    case 2:
        if (ov21_021D863C(param1->unk_08) != 1) {
            ov21_021D8628(param1->unk_08, 1);
            Sound_PlayEffect(1501);
        }
        break;
    case 3:
        if (ov21_021D863C(param1->unk_08) != 2) {
            ov21_021D8628(param1->unk_08, 2);
            Sound_PlayEffect(1501);
            param0->unk_88 = 0;
        }
        break;
    case 4:
        if (ov21_021D863C(param1->unk_08) != 3) {
            ov21_021D8628(param1->unk_08, 3);
            Sound_PlayEffect(1501);
        }
        break;
    case 5:
        if (param0->unk_94 <= 1) {
            ov21_021D86C4(param1->unk_08, 1);
            Sound_PlayEffect(1501);
        }
        break;
    default:
        break;
    }

    param0->unk_80 = 0xffff;
}

static void ov21_021DC48C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 0;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 2;
        break;
    case 3:
        v0 = 3;
        break;
    case 4:
        v0 = 4;
        break;
    case 5:
        v0 = 5;
        break;
    default:
        break;
    }

    if (v0 != 100) {
        if (ov21_021D8658(param1->unk_08) != v0) {
            Sound_PlayEffect(1501);
            ov21_021D8644(param1->unk_08, v0);
        }
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC4F8(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    case 4:
        v0 = 5;
        break;
    case 5:
        v0 = 6;
        break;
    case 6:
        v0 = 7;
        break;
    case 7:
        v0 = 8;
        break;
    case 8:
        v0 = 9;
        break;
    case 9:
        v0 = 0;
        break;
    default:
        break;
    }

    if (v0 != 100) {
        if (ov21_021D8674(param1->unk_08) != v0) {
            Sound_PlayEffect(1501);

            ov21_021D8660(param1->unk_08, v0);
        }
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC57C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    case 4:
        v0 = 5;
        break;
    case 5:
        v0 = 6;
        break;
    case 6:
        v0 = 7;
        break;
    case 7:
        v0 = 8;
        break;
    case 8:
        v0 = 9;
        break;
    case 9:
        v0 = 0;
        break;
    case 10:
        param0->unk_20 = 1;
        Sound_PlayEffect(1501);
        break;
    default:
        break;
    }

    if (v0 != 100) {
        ov21_021DC67C(param0, param1, v0);
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC600(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 10;
        break;
    case 1:
        v0 = 11;
        break;
    case 2:
        v0 = 12;
        break;
    case 3:
        v0 = 13;
        break;
    case 4:
        v0 = 14;
        break;
    case 5:
        v0 = 15;
        break;
    case 6:
        v0 = 16;
        break;
    case 7:
        v0 = 17;
        break;
    case 8:
        v0 = 0;
        break;
    case 9:
        param0->unk_20 = 0;
        Sound_PlayEffect(1501);
        break;
    default:
        break;
    }

    if (v0 != 100) {
        ov21_021DC67C(param0, param1, v0);
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC67C(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1, int param2)
{
    if (param2 != 0) {
        if ((ov21_021D8698(param1->unk_08, 0) != param2) && (ov21_021D8698(param1->unk_08, 1) != param2)) {
            if (ov21_021D8698(param1->unk_08, param0->unk_88) != param2) {
                ov21_021D867C(param1->unk_08, param2, param0->unk_88);
                param0->unk_88 = (param0->unk_88 + 1) % 2;
                Sound_PlayEffect(1501);
            }
        }
    } else {
        if (ov21_021D8698(param1->unk_08, 0) != 0) {
            ov21_021D867C(param1->unk_08, param2, 0);

            Sound_PlayEffect(1501);
        } else {
            if (ov21_021D8698(param1->unk_08, 1) != 0) {
                ov21_021D867C(param1->unk_08, param2, 1);
                Sound_PlayEffect(1501);
            }
        }

        param0->unk_88 = 0;
    }
}

static void ov21_021DC720(UnkStruct_ov21_021D9B24 *param0, UnkStruct_ov21_021D95B8 *param1)
{
    int v0 = 100;

    switch (param0->unk_84) {
    case 0:
        v0 = 13;
        break;
    case 1:
        v0 = 4;
        break;
    case 2:
        v0 = 12;
        break;
    case 3:
        v0 = 9;
        break;
    case 4:
        v0 = 8;
        break;
    case 5:
        v0 = 3;
        break;
    case 6:
        v0 = 10;
        break;
    case 7:
        v0 = 1;
        break;
    case 8:
        v0 = 6;
        break;
    case 9:
        v0 = 11;
        break;
    case 10:
        v0 = 14;
        break;
    case 11:
        v0 = 2;
        break;
    case 12:
        v0 = 5;
        break;
    case 13:
        v0 = 7;
        break;
    case 14:
        v0 = 0;
        break;
    default:
        break;
    }

    if (v0 != 100) {
        if (ov21_021D86BC(param1->unk_08) != v0) {
            Sound_PlayEffect(1501);
            ov21_021D86A8(param1->unk_08, v0);
        }
    }

    param0->unk_84 = 0xffff;
}

static void ov21_021DC7C0(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1)
{
    if (param0->unk_12C == 0) {
        if (param1->unk_04 > 0) {
            param0->unk_12C = param1->unk_04;
            param0->unk_130 = 0;
            param0->unk_134 = param1->unk_08;
            *param0->unk_134 = 0;
            param1->unk_04 = 0;
        }
    } else {
        ov21_021DC7F4(param0);
    }
}

static void ov21_021DC7F4(UnkStruct_ov21_021DC96C *param0)
{
    BOOL v0;

    if (param0->unk_12C == 0) {
        return;
    }

    switch (param0->unk_130) {
    case 0:

        if (param0->unk_12C == 1) {
            ov21_021D2648(&param0->unk_10C, 0, 16, 0, 0, 2);
        } else {
            ov21_021D2648(&param0->unk_10C, 16, 0, 0, 0, 2);
        }

        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG2, param0->unk_10C.unk_00, 16 - param0->unk_10C.unk_00);
        param0->unk_130++;
        break;
    case 1:
        v0 = ov21_021D2664(&param0->unk_10C);
        G2S_ChangeBlendAlpha(param0->unk_10C.unk_00, 16 - param0->unk_10C.unk_00);

        if (v0 == 1) {
            if (param0->unk_12C == 1) {
                G2S_BlendNone();
            }

            *param0->unk_134 = 1;
            param0->unk_130 = 0;
            param0->unk_12C = 0;
        }
        break;
    }
}

static void ov21_021DC8B4(UnkStruct_ov21_021DC96C *param0, int param1, int param2, int param3)
{
    if (param2 == 2) {
        if (param3 == 0) {
            ov21_021DC90C(param0, param1);
        } else {
            ov21_021DC93C(param0, param1);
        }
    } else {
        ov21_021DC8D0(param0, param1);
    }
}

static void ov21_021DC8D0(UnkStruct_ov21_021DC96C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_30[v0]) {
            CellActor_SetExplicitOAMMode(param0->unk_30[v0], param1);
        }

        if (param0->unk_6C[v0]) {
            sub_02012AF0(param0->unk_6C[v0]->unk_00, param1);
        }

        if (param0->unk_A8[v0]) {
            CellActor_SetExplicitOAMMode(param0->unk_A8[v0], param1);
        }
    }
}

static void ov21_021DC90C(UnkStruct_ov21_021DC96C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (v0 != 10) {
            if (param0->unk_30[v0]) {
                CellActor_SetExplicitOAMMode(param0->unk_30[v0], param1);
            }

            if (param0->unk_6C[v0]) {
                sub_02012AF0(param0->unk_6C[v0]->unk_00, param1);
            }
        }
    }
}

static void ov21_021DC93C(UnkStruct_ov21_021DC96C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (v0 != 9) {
            if (param0->unk_30[v0]) {
                CellActor_SetExplicitOAMMode(param0->unk_30[v0], param1);
            }

            if (param0->unk_6C[v0]) {
                sub_02012AF0(param0->unk_6C[v0]->unk_00, param1);
            }
        }
    }
}

static void ov21_021DC96C(UnkStruct_ov21_021DC96C *param0, UnkStruct_ov21_021D95CC *param1, const UnkStruct_ov21_021D95B8 *param2)
{
    if (ov21_021D86E0(param2->unk_08) == 4) {
        if (ov21_021D86D8(param2->unk_08) == 3) {
            sub_0200AAE0(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        } else if (ov21_021D86D8(param2->unk_08) == 1) {
            sub_0200AAE0(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        }
    }
}
