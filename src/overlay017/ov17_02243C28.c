#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "overlay016/struct_ov16_02264408.h"
#include "overlay016/struct_ov16_02265BBC.h"
#include "overlay017/struct_ov17_02243C28.h"
#include "overlay017/struct_ov17_02243C80.h"
#include "overlay017/struct_ov17_02243D34.h"
#include "overlay017/struct_ov17_02243DCC.h"
#include "overlay017/struct_ov17_02243F10.h"
#include "overlay017/struct_ov17_02244240.h"
#include "overlay017/struct_ov17_022443F8.h"
#include "overlay017/struct_ov17_022444BC.h"
#include "overlay017/struct_ov17_02244970.h"
#include "overlay017/struct_ov17_022449B8.h"
#include "overlay017/struct_ov17_02244BB0.h"
#include "overlay017/struct_ov17_02244C08.h"
#include "overlay017/struct_ov17_02245690.h"
#include "overlay017/struct_ov17_02245C60.h"
#include "overlay017/struct_ov17_02245E14.h"
#include "overlay017/struct_ov17_02246F24.h"
#include "overlay017/struct_ov17_02246F24_sub1.h"
#include "overlay017/struct_ov17_022472F8.h"
#include "overlay017/struct_ov17_0224F30C.h"
#include "overlay017/struct_ov17_0224F3D8.h"
#include "overlay017/struct_ov17_022539E4.h"

#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "pokemon.h"
#include "unk_02094EDC.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay017/ov17_0223F7E4.h"
#include "overlay017/ov17_022413D8.h"
#include "overlay017/ov17_02243C28.h"
#include "overlay017/ov17_0224F18C.h"

static int ov17_02243C68(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02243C80(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02243C94(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, UnkStruct_ov17_0224F3D8 * param3, int param4);
static int ov17_02243CDC(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02243CF4(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02243D34(SysTask * param0, void * param1);
static int ov17_02243EF8(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02243F10(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02243F68(SysTask * param0, void * param1);
static int ov17_022440C8(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_022440E0(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_0224413C(SysTask * param0, void * param1);
static int ov17_02244228(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02244240(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_022442AC(SysTask * param0, void * param1);
static int ov17_022443E0(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_022443F8(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_022444BC(SysTask * param0, void * param1);
static int ov17_02244958(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02244970(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02244BB0(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, UnkStruct_ov17_0224F3D8 * param3, int param4);
static void ov17_022449B8(SysTask * param0, void * param1);
static int ov17_02244BD4(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02244BEC(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static int ov17_02244BF0(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02244C08(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02244C68(SysTask * param0, void * param1);
static int ov17_02243C98(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02243CB0(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static int ov17_02245DA4(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245DBC(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static int ov17_02244D20(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02244D38(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02244D98(SysTask * param0, void * param1);
static int ov17_02244FBC(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02244FD4(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02245034(SysTask * param0, void * param1);
static int ov17_02245124(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_0224513C(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_0224519C(SysTask * param0, void * param1);
static int ov17_02245510(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245528(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02245588(SysTask * param0, void * param1);
static int ov17_02245678(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245690(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_022456E8(SysTask * param0, void * param1);
static int ov17_02245B48(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245B60(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02245BC8(SysTask * param0, void * param1);
static int ov17_02245E00(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245E14(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02245E8C(SysTask * param0, void * param1);
static int ov17_02245C4C(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245C60(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02245CA4(SysTask * param0, void * param1);
static int ov17_0224595C(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02245974(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_022459D4(SysTask * param0, void * param1);
static int ov17_02243DB4(UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3);
static void ov17_02243DCC(UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3);
static void ov17_02243E2C(SysTask * param0, void * param1);

static const UnkStruct_ov17_022539E4 Unk_ov17_022539E4[] = {
    {ov17_02243C68, ov17_02243C80, ov17_02243C94},
    {ov17_02243C98, ov17_02243CB0, NULL},
    {ov17_02243CDC, ov17_02243CF4, NULL},
    {ov17_02243DB4, ov17_02243DCC, NULL},
    {ov17_02243EF8, ov17_02243F10, NULL},
    {ov17_022440C8, ov17_022440E0, NULL},
    {ov17_02244228, ov17_02244240, NULL},
    {ov17_022443E0, ov17_022443F8, NULL},
    {ov17_02244958, ov17_02244970, ov17_02244BB0},
    {ov17_02244BD4, ov17_02244BEC, NULL},
    {ov17_02244BF0, ov17_02244C08, NULL},
    {ov17_02244D20, ov17_02244D38, NULL},
    {ov17_02244FBC, ov17_02244FD4, NULL},
    {ov17_02245124, ov17_0224513C, NULL},
    {ov17_02245510, ov17_02245528, NULL},
    {ov17_02245510, ov17_02245528, NULL},
    {ov17_02245678, ov17_02245690, NULL},
    {ov17_0224595C, ov17_02245974, NULL},
    {ov17_02245B48, ov17_02245B60, NULL},
    {ov17_02245DA4, ov17_02245DBC, NULL},
    {ov17_02245E00, ov17_02245E14, NULL},
    {ov17_02245C4C, ov17_02245C60, NULL}
};

void ov17_02243C28 (UnkStruct_ov17_02246F24 * param0)
{
    UnkStruct_ov17_02243C28 v0;

    v0.unk_00 = Unk_ov17_022539E4;
    v0.unk_04 = NELEMS(Unk_ov17_022539E4);
    v0.unk_06 = param0->unk_00->unk_00.unk_113;
    v0.unk_08 = param0->unk_00->unk_00.unk_10C;
    v0.unk_07 = param0->unk_00->unk_155;

    ov17_0224F18C(&param0->unk_BF8, &v0);
}

static int ov17_02243C68 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02243C80 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    ov17_0224F26C(&v0->unk_BF8, param2, NULL, 0);
}

static void ov17_02243C94 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, UnkStruct_ov17_0224F3D8 * param3, int param4)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    return;
}

static int ov17_02243C98 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02243CB0 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;

    v0->unk_1614 = 1;

    if (sub_02094EDC(v0->unk_00) == 0) {
        ov17_0224F26C(&v0->unk_BF8, param2, NULL, 0);
    }
}

static int ov17_02243CDC (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02243CF4 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02243D34 * v1;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02243D34));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02243D34));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;

    SysTask_Start(ov17_02243D34, v1, 30000);
}

static void ov17_02243D34 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02243D34 * v0 = param1;

    switch (v0->unk_0F) {
    case 0:
        ov17_022431A0(v0->unk_00, 0, 0, 70, 0, &v0->unk_0E);
        v0->unk_0F++;
        break;
    case 1:
        v0->unk_0C++;

        if (v0->unk_0C > 30) {
            v0->unk_0C = 0;
            v0->unk_0F++;
        }
        break;
    case 2:
        if (v0->unk_0E == 1) {
            v0->unk_0F++;
        }
        break;
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02243DB4 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02243DCC (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02246F24_sub1 * v1 = param3;
    UnkStruct_ov17_02243DCC * v2;

    v2 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02243DCC));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_02243DCC));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_18 = v1->unk_C6.unk_0C;
    v2->unk_12 = v1->unk_C6.unk_00;

    SysTask_Start(ov17_02243E2C, v2, 30000);
}

static void ov17_02243E2C (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02243DCC * v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        if (v0->unk_18 != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_18, &v0->unk_12, NULL);
        }

        Sound_PlayEffect(1785);
        v0->unk_0C++;
        break;
    case 1:
        if ((v0->unk_18 == 0) || (ov17_02242ECC(v0->unk_00) == 0)) {
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_0E++;

        if (v0->unk_0E > 30) {
            v0->unk_0E = 0;
            v0->unk_0C++;
        }
        break;
    case 3:
        ov17_022431A0(v0->unk_00, 0, 0, 70, 0, &v0->unk_10);
        v0->unk_0C++;
        break;
    case 4:
        if (v0->unk_10 == 1) {
            v0->unk_0C++;
        }
        break;
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02243EF8 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02243F10 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02243F10 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2;

    v2 = param3;
    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02243F10));

    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02243F10));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_15 = v2->unk_00;

    ov17_022426E8(v0, 0, &v1->unk_16);
    SysTask_Start(ov17_02243F68, v1, 30000);
    ov17_02242DA8(v0);
}

static void ov17_02243F68 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02243F10 * v0 = param1;
    int v1, v2;

    v1 = v0->unk_15;
    v2 = Pokemon_SpriteYOffset(v0->unk_00->unk_0C.unk_00->unk_00[v1], 0);

    switch (v0->unk_14) {
    case 0:
        v0->unk_18++;

        if (v0->unk_18 > 10) {
            v0->unk_18 = 0;
            v0->unk_14++;
        }
        break;
    case 1:
    {
        int v3, v4;

        v3 = v0->unk_15;
        v4 = Pokemon_SpriteYOffset(v0->unk_00->unk_0C.unk_00->unk_00[v3], 0);

        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v3], 37, 0);
        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v3], 6, 0);
        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v3], 0, ((((256 - 40))) + 40));
        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v3], 1, (((((104 + 8)))) + 60) + v4);

        v0->unk_0C = ((((256 - 40))) + 40) << 8;
        v0->unk_10 = (((((104 + 8)))) + 60) << 8;
    }
        v0->unk_14++;
        break;

    case 2:
        if (v0->unk_15 == v0->unk_00->unk_00->unk_00.unk_113) {
            Sound_PlayEffect(1784);
        }

        v0->unk_14++;

    case 3:
        v0->unk_0C -= (((((((256 - 40))) + 40) - (((256 - 40)))) << 8) / 7);
        v0->unk_10 -= ((((((((104 + 8)))) + 60) - ((((104 + 8))))) << 8) / 7);

        if (((v0->unk_0C >> 8) <= (((256 - 40)))) || ((v0->unk_10 >> 8) <= ((((104 + 8)))))) {
            v0->unk_0C = (((256 - 40))) << 8;
            v0->unk_10 = ((((104 + 8)))) << 8;
            v0->unk_14++;
        }

        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_15], 0, v0->unk_0C >> 8);
        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_15], 1, (v0->unk_10 >> 8) + v2);
        break;
    default:
        if (v0->unk_16 == 1) {
            ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
            return;
        }
        break;
    }
}

static int ov17_022440C8 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_022440E0 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02243F10 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2;
    int v3, v4;

    v2 = param3;
    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02243F10));

    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02243F10));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_15 = v2->unk_00;

    v4 = v1->unk_15;
    v3 = Pokemon_SpriteYOffset(v0->unk_0C.unk_00->unk_00[v4], 0);

    v1->unk_0C = (((256 - 40))) << 8;
    v1->unk_10 = ((((104 + 8)))) << 8;

    SysTask_Start(ov17_0224413C, v1, 30000);
}

static void ov17_0224413C (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02243F10 * v0 = param1;
    int v1, v2;

    v1 = v0->unk_15;
    v2 = Pokemon_SpriteYOffset(v0->unk_00->unk_0C.unk_00->unk_00[v1], 0);

    switch (v0->unk_14) {
    case 0:
        v0->unk_0C += (((((((256 - 40))) + 40) - (((256 - 40)))) << 8) / 7);
        v0->unk_10 += ((((((((104 + 8)))) + 60) - ((((104 + 8))))) << 8) / 7);

        if (((v0->unk_0C >> 8) >= ((((256 - 40))) + 40)) || ((v0->unk_10 >> 8) >= (((((104 + 8)))) + 60))) {
            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v1], 37, 1);
            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v1], 6, 1);
            v0->unk_14++;
        }

        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_15], 0, v0->unk_0C >> 8);
        sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_15], 1, (v0->unk_10 >> 8) + v2);
        break;
    case 1:
        if (v0->unk_00->unk_1616[v0->unk_15] == 1) {
            ov17_02241524(&v0->unk_00->unk_0C, v0->unk_15);
            v0->unk_00->unk_1616[v0->unk_15] = 0;
        }

        v0->unk_14++;
        break;
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02244228 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02244240 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244240 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244240));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244240));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_02;
    v1->unk_1A = v2->unk_C6.unk_0C;
    v1->unk_14 = v2->unk_C6.unk_00;
    v1->unk_10 = v2->unk_03;

    SysTask_Start(ov17_022442AC, v1, 30000);
}

static void ov17_022442AC (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244240 * v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
    {
        int v2;

        v2 = ov17_02243174(v0->unk_00->unk_220.unk_12[v0->unk_0D]);

        if (v2 > 0) {
            ov17_022431A0(v0->unk_00, 0, 0, v2, 0, &v0->unk_12);
        } else {
            v0->unk_0C = 2;
            break;
        }
    }
        v0->unk_0C++;
        break;
    case 1:
        if (v0->unk_12 == 1) {
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_0C++;
        break;
    case 3:
        if (v0->unk_1A != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_1A, &v0->unk_14, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 5;
        }
        break;
    case 4:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 5:
        v0->unk_0C++;
        break;
    case 6:
        ov17_02241A8C(&v0->unk_00->unk_0C, v0->unk_0E, v0->unk_10);
        ov17_02241B3C(v0->unk_00, v0->unk_0E, v0->unk_10, &v0->unk_0F);
        v0->unk_0C++;
        break;
    case 7:
        if (v0->unk_0F == 1) {
            v0->unk_0C++;
        }
        break;
    case 8:
        v0->unk_11++;

        if (v0->unk_11 > 5) {
            ov17_02241B1C(&v0->unk_00->unk_0C);
            v0->unk_0C++;
        }
        break;

    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_022443E0 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_022443F8 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_022443F8 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_022443F8));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_022443F8));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_10.unk_00[v2->unk_00].unk_00;
    v1->unk_F8 = v2->unk_C6.unk_0C;
    v1->unk_F2 = v2->unk_C6.unk_00;
    v1->unk_100 = v2->unk_C6.unk_0D;
    v1->unk_FA = v2->unk_C6.unk_06;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_022444BC, v1, 5);
}

static void ov17_022444BC (SysTask * param0, void * param1)
{
    UnkStruct_ov17_022443F8 * v0 = param1;
    int v1;
    UnkStruct_ov17_022444BC * v2;

    v2 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        if (v0->unk_F8 != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_F8, &v0->unk_F2, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 2;
        }
        break;
    case 1:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_0C++;
        break;
    case 3:
        if (v2->unk_12 != 0) {
            ov17_02242E9C(v0->unk_00, v2->unk_12, v2->unk_13, &v2->unk_0C, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 5;
        }
        break;
    case 4:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 5:
        v0->unk_0C++;
        break;
    case 6:
        if (v0->unk_100 != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_100, &v0->unk_F2, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 8;
        }
        break;
    case 7:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 8:
        v0->unk_0C++;
        break;
    case 9:
        ov17_022439C8(v0->unk_00->unk_00, v0->unk_0D, v0->unk_0E, &v0->unk_104);
        v0->unk_0C++;
    case 10:
    {
        UnkStruct_ov16_02265BBC v3;
        UnkStruct_ov16_02264408 v4;
        int v5;
        int v6, v7, v8, v9;
        int v10, v11, v12, v13;
        u32 v14, v15;
        int v16;

        v16 = v0->unk_0D + 1;

        if (v16 >= 4) {
            v16 = 0;
        }

        MI_CpuClear8(&v3, sizeof(UnkStruct_ov16_02265BBC));
        MI_CpuClear8(&v4, sizeof(UnkStruct_ov16_02264408));

        v6 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D], MON_DATA_SPECIES, NULL);
        v7 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D], MON_DATA_GENDER, NULL);
        v8 = Pokemon_IsShiny(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D]);
        v9 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D], MON_DATA_FORM, NULL);
        v14 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D], MON_DATA_PERSONALITY, NULL);

        v10 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v16], MON_DATA_SPECIES, NULL);
        v11 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v16], MON_DATA_GENDER, NULL);
        v12 = Pokemon_IsShiny(v0->unk_00->unk_0C.unk_00->unk_00[v16]);
        v13 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v16], MON_DATA_FORM, NULL);
        v15 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v16], MON_DATA_PERSONALITY, NULL);

        v3.unk_00 = 0;
        v3.unk_01 = 0;
        v3.unk_02 = v0->unk_104.unk_04;
        v3.unk_04 = 1;
        v3.unk_08 = 10;
        v3.unk_0A = v0->unk_104.unk_07;
        v3.unk_0C = v0->unk_104.unk_08;
        v3.unk_10 = 0;
        v3.unk_14 = 0;
        v3.unk_16 = 1;
        v3.unk_54 = 9;

        for (v5 = 0; v5 < 4; v5++) {
            v3.unk_18[v5] = v6;
        }

        v3.unk_18[1] = v10;

        v4.unk_04 = v0->unk_00->unk_0C.unk_24;
        v4.unk_08 = v0->unk_00->unk_0C.unk_50;
        v4.unk_0C[0] = &v0->unk_00->unk_0C.unk_58[v0->unk_0D];
        v4.unk_0C[1] = &v0->unk_00->unk_0C.unk_98;

        for (v5 = 0; v5 < 4; v5++) {
            v4.unk_1C[v5] = 0xff;
            v4.unk_34[v5] = v6;
            v4.unk_3C[v5] = v7;
            v4.unk_40[v5] = v8;
            v4.unk_44[v5] = v9;
            v4.unk_48[v5] = v14;
            v4.unk_4C[v5] = 0;
        }

        v4.unk_4C[0] = v0->unk_104.unk_00;
        v4.unk_1C[0] = 0;
        v4.unk_1C[1] = 1;
        v4.unk_34[1] = v10;
        v4.unk_3C[1] = v11;
        v4.unk_40[1] = v12;
        v4.unk_44[1] = v13;
        v4.unk_48[1] = v15;
        v4.unk_20[0] = v0->unk_00->unk_0C.unk_08[v0->unk_0D];

        v1 = (v0->unk_0D == 0) ? 1 : 0;

        v4.unk_20[1] = v0->unk_00->unk_0C.unk_08[v1];
        v4.unk_30 = 0;
        v4.unk_50 = 8;
        v4.unk_54.unk_00 = 45;
        v4.unk_54.unk_04 = 1;
        v4.unk_54.unk_08 = 30;
        v4.unk_54.unk_0C = 2;
        v4.unk_54.unk_10 = 0;
        v4.unk_54.unk_14 = 3;
        v4.unk_00 = v0->unk_00->unk_0C.unk_18;
        v4.unk_6C = v0->unk_00->unk_00->unk_14C[v0->unk_0D];

        ov12_0221FE30(v0->unk_00->unk_0C.unk_20, &v3, v0->unk_104.unk_04, &v4);
    }

        {
            int v17;

            v17 = Pokemon_SpriteYOffset(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D], 0);

            if (v0->unk_104.unk_00 != ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff))) {
                sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_0D], 6, 0);
            }

            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_0D], 37, 0);
            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_0D], 0, ((256 - 40)));
            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v0->unk_0D], 1, (((104 + 8))) + v17);

            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v1], 37, 1);
            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v1], 0, 80);
            sub_02007DEC(v0->unk_00->unk_0C.unk_08[v1], 1, (((50 - 8))));
        }

        v0->unk_0C++;
        break;
    case 11:
        ov12_0222016C(v0->unk_00->unk_0C.unk_20);

        if (ov12_02220188(v0->unk_00->unk_0C.unk_20) == 0) {
            ov12_02220198(v0->unk_00->unk_0C.unk_20);

            if (v0->unk_104.unk_06 > 0) {
                v0->unk_104.unk_06--;
                v0->unk_104.unk_07++;

                if (v0->unk_104.unk_00 == (0x40 | 0x80 | 0x40000 | 0x20000000)) {
                    v0->unk_104.unk_00 = ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
                }

                v0->unk_0C = 10;
            } else {
                v0->unk_0C++;
            }
        }
        break;
    case 12:
        switch (v0->unk_104.unk_04) {
        case 144:
        case 164:
            v0->unk_00->unk_1616[v0->unk_0D] = 1;
            break;
        }

        v0->unk_0C++;
        break;
    case 13:
        ov17_022426E8(v0->unk_00, 1, &v0->unk_10);
        v0->unk_0C++;
        break;
    case 14:
        if (v0->unk_10 == 1) {
            v0->unk_0C++;
        }
        break;
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02244958 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02244970 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244970 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244970));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244970));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v0->unk_0C.unk_00->unk_113;

    SysTask_Start(ov17_022449B8, v1, 100);
}

static void ov17_022449B8 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244970 * v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        ov17_0223F9C4(v0->unk_00->unk_7E4, 1, 0, NULL);
        v0->unk_0C++;
        break;
    case 1:
        ov17_0223F9C4(v0->unk_00->unk_7E4, 2, 0, NULL);

        {
            u32 v2;
            UnkStruct_ov17_022449B8 v3;

            if (v0->unk_00->unk_220.unk_00 + 1 == 4) {
                v2 = 3;
            } else {
                v2 = 2;
            }

            v3.unk_04 = v0->unk_00->unk_220.unk_00 + 1;
            ov17_02242E5C(v0->unk_00, v2, &v3, NULL);
        }

        if ((v0->unk_00->unk_220.unk_00 + 1 == 4) && (v0->unk_0E == 0)) {
            Sound_PlayEffect(1782);
            v0->unk_0E++;
        }

        v0->unk_0C++;
        break;
    case 2:
        if (ov17_02242ECC(v0->unk_00) != 0) {
            break;
        }

        v0->unk_0C++;

    case 3:
        v1 = ov17_0223FAF8(v0->unk_00->unk_7E4);

        if (v1 != 0xffffffff) {
            v0->unk_10.unk_00 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00->unk_00[v0->unk_0D], MON_DATA_MOVE1 + v1, NULL);
            Sound_PlayEffect(1501);
            v0->unk_0C++;
        }
        break;
    case 4:
        if (ov17_0223FBC0(v0->unk_00->unk_7E4) == 0) {
            break;
        }

        v0->unk_0C++;
    case 5:
        v0->unk_0C++;
    case 6:
        ov17_0223F9C4(v0->unk_00->unk_7E4, 3, 0, NULL);

        {
            u32 v4;
            UnkStruct_ov17_022449B8 v5;

            v4 = 1;
            v5.unk_04 = v0->unk_00->unk_220.unk_00 + 1;
            ov17_02242E5C(v0->unk_00, v4, &v5, NULL);
        }

        v0->unk_0C++;
        break;
    case 7:
        if (ov17_02242ECC(v0->unk_00) != 0) {
            break;
        }

        v0->unk_0C++;
    case 8:
        v1 = ov17_0223FAF8(v0->unk_00->unk_7E4);

        if (v1 != 0xffffffff) {
            v0->unk_10.unk_02 = v1;
            Sound_PlayEffect(1501);
            v0->unk_0C++;
        }
        break;
    case 9:
        if (ov17_0223FBC0(v0->unk_00->unk_7E4) == 0) {
            break;
        }

        if (v0->unk_10.unk_02 == 3) {
            v0->unk_0C = 1;
            break;
        } else {
            v0->unk_0C++;
        }
    case 10:
        v0->unk_0C++;
    default:
        if (v0->unk_00->unk_00->unk_155 == 1) {
            ov17_02242E5C(v0->unk_00, 46, NULL, NULL);
        }

        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, &v0->unk_10, sizeof(UnkStruct_ov17_02244BB0));
        ov17_0223F9C4(v0->unk_00->unk_7E4, 0, 0, NULL);

        Heap_FreeToHeap(v0);
        SysTask_Done(param0);

        return;
    }
}

static void ov17_02244BB0 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, UnkStruct_ov17_0224F3D8 * param3, int param4)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244BB0 * v1;

    v1 = param3->unk_00[param4];

    v0->unk_220.unk_06[param4] = v1->unk_00;
    v0->unk_220.unk_0E[param4] = v1->unk_02;
}

static int ov17_02244BD4 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02244BEC (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    return;
}

static int ov17_02244BF0 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02244C08 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_02244C68, v1, 30000);
}

static void ov17_02244C68 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        v0->unk_F2 = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 1:
        v0->unk_0C++;
        break;
    case 2:
        if (v0->unk_F2 < v1->unk_18) {
            v0->unk_F2 += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v0->unk_0D, v0->unk_0E, v0->unk_F2);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 4;
        }
        break;
    case 3:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 4:
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);

        return;
    }
}

static int ov17_02244D20 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02244D38 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_02244D98, v1, 30000);
}

static void ov17_02244D98 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        v0->unk_F2 = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 1:
        if (v1->unk_12 != 0) {
            ov17_02242E9C(v0->unk_00, v1->unk_12, v1->unk_13, &v1->unk_0C, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 3;
        }
        break;
    case 2:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 3:
        v0->unk_0C++;
    case 4:
        v0->unk_0C++;
    case 5:
        if (v0->unk_F2 < v1->unk_18) {
            v0->unk_F2 += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v0->unk_0D, v0->unk_0E, v0->unk_F2);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 7;
        }
        break;
    case 6:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 7:
        v0->unk_0C++;
    case 8:
        if (v1->unk_28_3 == 1) {
            v0->unk_F4 = v0->unk_14.unk_10.unk_B0[v1->unk_03];
            v0->unk_10 = 0;
            v0->unk_0C++;
        } else {
            v0->unk_0C = 11;
        }
        break;
    case 9:
    {
        int v2 = 0, v3, v4;

        v0->unk_10++;

        for (v4 = 0; v4 < (1 + 2); v4++) {
            v3 = v0->unk_14.unk_10.unk_B0[v4] - v0->unk_10 * 10;

            if (v0->unk_14.unk_10.unk_B3[v4] <= v3) {
                v2++;
                ov17_022424D4(&v0->unk_00->unk_0C, v4, v3);
                Sound_PlayEffect(1759);
            }
        }

        if (v2 > 0) {
            v0->unk_0C++;
        } else {
            v0->unk_0C = 11;
        }
    }
    break;
    case 10:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 11:
        v0->unk_0C++;
    case 12:
        v0->unk_0C++;
    case 13:
    {
        int v5, v6;

        for (v5 = 0; v5 < 4; v5++) {
            v6 = v0->unk_00->unk_220.unk_01[v5];

            if ((v0->unk_14.unk_10.unk_00[v6].unk_28_4 != v0->unk_14.unk_10.unk_00[v6].unk_28_8) || (v0->unk_14.unk_10.unk_00[v6].unk_28_6 != v0->unk_14.unk_10.unk_00[v6].unk_28_10)) {
                ov17_022430AC(&v0->unk_00->unk_0C, v5, v0->unk_14.unk_10.unk_00[v6].unk_28_6);
                Sound_PlayEffect(1762);
            }
        }
    }
        v0->unk_0C++;
    case 14:
        v0->unk_0C++;
    case 15:
        v0->unk_0C++;
    case 16:
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02244FBC (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02244FD4 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_02245034, v1, 30000);
}

static void ov17_02245034 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        v0->unk_F2 = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 1:
        if (v1->unk_12 != 0) {
            ov17_02242E9C(v0->unk_00, v1->unk_12, v1->unk_13, &v1->unk_0C, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 3;
        }
        break;
    case 2:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 3:
        v0->unk_0C++;
    case 4:
        v0->unk_0C++;
    case 5:
        if (v0->unk_F2 < v1->unk_18) {
            v0->unk_F2 += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v0->unk_0D, v0->unk_0E, v0->unk_F2);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 7;
        }
        break;
    case 6:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 7:
        v0->unk_0C++;
    case 8:
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02245124 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_0224513C (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_0224519C, v1, 30000);
}

static void ov17_0224519C (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        v0->unk_F4 = v0->unk_14.unk_10.unk_B0[v1->unk_03];
        v0->unk_0C++;
        break;
    case 1:
        if (v0->unk_14.unk_10.unk_B3[v1->unk_03] > v0->unk_14.unk_10.unk_B0[v1->unk_03]) {
            int v2;

            if (v0->unk_14.unk_10.unk_B3[v1->unk_03] >= (10 * 5)) {
                v2 = 3;
            } else {
                v2 = 2;
            }

            ov17_02241A8C(&v0->unk_00->unk_0C, v1->unk_03, v2);
            ov17_02241B3C(v0->unk_00, v1->unk_03, v2, &v0->unk_F8);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 3;
        }
        break;
    case 2:
        if (v0->unk_F8 == 1) {
            v0->unk_0C++;
        }
        break;
    case 3:
        v0->unk_0C++;
    case 4:
        if (v0->unk_14.unk_C6.unk_0C != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_14.unk_C6.unk_0C, &v0->unk_14.unk_C6.unk_00, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 6;
        }
        break;
    case 5:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 6:
        v0->unk_0C++;
    case 7:
        if (v0->unk_14.unk_10.unk_B3[v1->unk_03] > v0->unk_14.unk_10.unk_B0[v1->unk_03]) {
            ov17_022431A0(v0->unk_00, v0->unk_14.unk_10.unk_B3[v1->unk_03], 0, 70, 1, &v0->unk_11);
        } else {
            v0->unk_11 = 1;
        }

        v0->unk_0C++;
        break;
    case 8:
        v0->unk_0F++;

        if (v0->unk_0F > 8) {
            v0->unk_0F = 0;
            v0->unk_0C++;
        }
        break;
    case 9:
        v0->unk_0C++;
    case 10:
        v0->unk_0C++;
    case 11:
        if (v0->unk_F4 != v0->unk_14.unk_10.unk_B3[v1->unk_03]) {
            if (v0->unk_14.unk_10.unk_B3[v1->unk_03] - v0->unk_14.unk_10.unk_B0[v1->unk_03] > 0) {
                v0->unk_F4 += 10;
                ov17_022424D4(&v0->unk_00->unk_0C, v1->unk_03, v0->unk_F4);
            } else {
                v0->unk_F4 -= 10;
                ov17_022424D4(&v0->unk_00->unk_0C, v1->unk_03, v0->unk_F4);
                Sound_PlayEffect(1759);
            }

            v0->unk_0C++;
        } else {
            v0->unk_0C = 14;
        }
        break;
    case 12:
        if (ov17_022424A8(&v0->unk_00->unk_0C, v1->unk_03) == 1) {
            v0->unk_0C++;
        }
        break;
    case 13:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C = 11;
        }
        break;
    case 14:
        if (v0->unk_F4 >= (10 * 5)) {
            v0->unk_FC = ov17_0224365C(v0->unk_00, v1->unk_03);
        }

        v0->unk_0C++;
        break;
    case 15:
        if (v0->unk_14.unk_C6.unk_0D != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_14.unk_C6.unk_0D, &v0->unk_14.unk_C6.unk_06, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 17;
        }
        break;
    case 16:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 17:
        v0->unk_0C++;
    case 18:
        if (v0->unk_F4 >= (10 * 5)) {
            ov17_022436D0(v0->unk_00, v0->unk_0D, v0->unk_0E, v1->unk_03, &v0->unk_12);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 20;
        }
        break;
    case 19:
        if (v0->unk_12 == 0) {
            v0->unk_0C++;
        }
        break;
    case 20:
        v0->unk_0C++;
    case 21:
        v0->unk_F2 = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 22:
        if (v0->unk_F2 < v1->unk_18) {
            v0->unk_F2 += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v0->unk_0D, v0->unk_0E, v0->unk_F2);
            v0->unk_0C++;
        } else {
            ov17_02241B1C(&v0->unk_00->unk_0C);
            v0->unk_0C = 24;
        }
        break;
    case 23:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 24:
        if (v0->unk_F4 >= (10 * 5)) {
            ov17_02243690(v0->unk_FC);
            ov17_022424D4(&v0->unk_00->unk_0C, v1->unk_03, 0);
        }

        v0->unk_0C++;
        break;
    case 25:
    default:
        if (v0->unk_11 == 1) {
            ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
            return;
        }
        break;
    }
}

static int ov17_02245510 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02245528 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_02245588, v1, 30000);
}

static void ov17_02245588 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        v0->unk_F2 = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 1:
        if (v1->unk_12 != 0) {
            ov17_02242E9C(v0->unk_00, v1->unk_12, v1->unk_13, &v1->unk_0C, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 3;
        }
        break;
    case 2:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 3:
        v0->unk_0C++;
    case 4:
        v0->unk_0C++;
    case 5:
        if (v0->unk_F2 < v1->unk_18) {
            v0->unk_F2 += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v0->unk_0D, v0->unk_0E, v0->unk_F2);
        } else {
            v0->unk_0C = 7;
        }

        v0->unk_0C++;
        break;
    case 6:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 7:
        v0->unk_0C++;
    case 8:
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02245678 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02245690 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02245690 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02245690));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02245690));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_10 = *v2;

    SysTask_Start(ov17_022456E8, v1, 30000);
}

static void ov17_022456E8 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02245690 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;
    int v2, v3, v4;

    v2 = v0->unk_10.unk_D6_val1.unk_01[v0->unk_F0];
    v3 = 0;

    if (v2 != 4) {
        v1 = &v0->unk_10.unk_10.unk_00[v2];

        for (v4 = 0; v4 < 4; v4++) {
            if (v0->unk_00->unk_220.unk_01[v4] == v2) {
                v3 = v4;
                break;
            }
        }
    } else {
        v1 = NULL;
    }

    switch (v0->unk_0C) {
    case 0:
        v0->unk_EE = v1->unk_1A;
        v0->unk_0C++;
    case 1:
    {
        int v5;

        if (v1->unk_09 == 0) {
            v5 = 4;
            Sound_PlayEffect(1776);
        } else if (v1->unk_09 == 1) {
            v5 = 5;
            Sound_PlayEffect(1775);
        } else if (v1->unk_09 == 2) {
            v5 = 6;
            Sound_PlayEffect(1774);
        } else {
            v0->unk_0C = 3;
            Sound_PlayEffect(1759);
            break;
        }

        ov17_02241B3C(v0->unk_00, v1->unk_03, v5, &v0->unk_F1);
    }
        v0->unk_0C++;
        break;
    case 2:
        if (v0->unk_F1 == 1) {
            v0->unk_0C++;
        }
        break;
    case 3:
        v0->unk_0C++;
    case 4:
        if (v1->unk_12 != 0) {
            ov17_02242E9C(v0->unk_00, v1->unk_12, v1->unk_13, &v1->unk_0C, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 6;
        }
        break;
    case 5:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 6:
        v0->unk_0C++;
    case 7:
        if (v0->unk_10.unk_C6.unk_0C != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_10.unk_C6.unk_0C, &v0->unk_10.unk_C6.unk_00, &v0->unk_10.unk_D6_val1);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 9;
        }
        break;
    case 8:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 9:
        v0->unk_0C++;
    case 10:
        if (v0->unk_10.unk_C6.unk_0D != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_10.unk_C6.unk_0D, &v0->unk_10.unk_C6.unk_06, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 12;
        }
        break;
    case 11:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 12:
        v0->unk_0C++;
    case 13:
        v0->unk_EE = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 14:
        if (v0->unk_EE < v1->unk_18) {
            v0->unk_EE += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v2, v3, v0->unk_EE);
        } else {
            v0->unk_0C = 16;
            break;
        }

        v0->unk_0C++;
        break;
    case 15:
        v0->unk_0D++;

        if (v0->unk_0D > 2) {
            v0->unk_0D = 0;
            v0->unk_0C--;
        }
        break;
    case 16:
        v0->unk_F0++;

        if ((v0->unk_F0 < 4) && (v0->unk_10.unk_D6_val1.unk_01[v0->unk_F0] != 4)) {
            v0->unk_0C = 13;
        } else {
            v0->unk_0C++;
        }
        break;
    case 17:
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0224595C (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02245974 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v2->unk_00;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_022459D4, v1, 30000);
}

static void ov17_022459D4 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
        v0->unk_F2 = v1->unk_1A;
        v0->unk_0C++;
        break;
    case 1:
        if (v1->unk_12 != 0) {
            ov17_02242E9C(v0->unk_00, v1->unk_12, v1->unk_13, &v1->unk_0C, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 3;
        }
        break;
    case 2:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 3:
        v0->unk_0C++;
    case 4:
        if (v0->unk_14.unk_C6.unk_0C != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_14.unk_C6.unk_0C, &v0->unk_14.unk_C6.unk_00, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 6;
        }
        break;
    case 5:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 6:
        v0->unk_0C++;
    case 7:
        if (v0->unk_14.unk_C6.unk_0D != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_14.unk_C6.unk_0D, &v0->unk_14.unk_C6.unk_06, NULL);
            v0->unk_0C++;
        } else {
            v0->unk_0C = 9;
        }
        break;
    case 8:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 9:
        v0->unk_0C++;
    case 10:
        v0->unk_0C++;
    case 11:
        if (v0->unk_F2 < v1->unk_18) {
            v0->unk_F2 += 10;
            ov17_02241F34(&v0->unk_00->unk_0C, v0->unk_0D, v0->unk_0E, v0->unk_F2);
        } else {
            v0->unk_0C = 13;
        }

        v0->unk_0C++;
        break;
    case 12:
        v0->unk_0F++;

        if (v0->unk_0F > 2) {
            v0->unk_0F = 0;
            v0->unk_0C--;
        }
        break;
    case 13:
        v0->unk_0C++;
    case 14:
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02245B48 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02245B60 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02244C08 * v1;
    UnkStruct_ov17_02246F24_sub1 * v2 = param3;

    v1 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02244C08));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02244C08));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0D = v0->unk_0C.unk_00->unk_113;
    v1->unk_0E = v2->unk_01;
    v1->unk_14 = *v2;

    SysTask_Start(ov17_02245BC8, v1, 30000);
}

static void ov17_02245BC8 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02244C08 * v0 = param1;
    UnkStruct_ov17_022444BC * v1;

    v1 = &v0->unk_14.unk_10.unk_00[v0->unk_0D];

    switch (v0->unk_0C) {
    case 0:
    {
        u32 v2;
        UnkStruct_ov17_022449B8 v3;

        v2 = ov17_0224314C(v0->unk_0D, v1->unk_18, &v3);
        ov17_02242E5C(v0->unk_00, v2, &v3, NULL);
        v0->unk_0C++;
    }
    break;
    case 1:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_0C++;
        break;
    default:
        ov17_0224F26C(&v0->unk_00->unk_BF8, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02245C4C (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02245C60 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02246F24_sub1 * v1 = param3;
    UnkStruct_ov17_02245C60 * v2;

    v2 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02245C60));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_02245C60));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;

    SysTask_Start(ov17_02245CA4, v2, 30000);
}

static void ov17_02245CA4 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02245C60 * v0 = param1;

    int v1, v2;

    switch (v0->unk_20) {
    case 0:
        ov17_022431A0(v0->unk_00, 0, 0, 70, 0, &v0->unk_27);
        v0->unk_20++;
        break;
    case 1:
    {
        int v3;

        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_10[v3] = ov17_0224145C(v0->unk_00, v0->unk_00->unk_220.unk_01[v3]);
            ov17_0224331C(v0->unk_00, v0->unk_00->unk_220.unk_01[v3], v3, &v0->unk_23[v3], v0->unk_10[v3]);
        }
    }
        v0->unk_20++;
        break;
    case 2:
        v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            if ((v0->unk_23[v1] == 0) && (ov17_022414BC(v0->unk_10[v1]) == 0)) {
                v2++;
            }
        }

        if (v2 == 4) {
            for (v1 = 0; v1 < 4; v1++) {
                ov17_02241494(v0->unk_10[v1]);
            }

            v0->unk_20++;
        }
        break;
    case 3:
    default:
        if (v0->unk_27 == 1) {
            ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
            return;
        }

        break;
    }
}

static int ov17_02245DA4 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(&v0->unk_BF8, 0xff, param2, param3, sizeof(UnkStruct_ov17_022472F8));
    return v1;
}

static void ov17_02245DBC (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_022472F8 * v1;

    v1 = param3;
    v0->unk_220 = *v1;

    ov17_02241EF0(&v0->unk_0C);
    ov17_022430F8(&v0->unk_0C);
    ov17_02242FE8(v0);
    ov17_02241428(v0);
    ov17_0224F26C(&v0->unk_BF8, param2, NULL, 0);
}

static int ov17_02245E00 (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    int v1;

    v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_02246F24_sub1));
    return v1;
}

static void ov17_02245E14 (UnkStruct_ov17_0224F30C * param0, void * param1, const UnkStruct_ov17_02243C80 * param2, void * param3)
{
    UnkStruct_ov17_02246F24 * v0 = param1;
    UnkStruct_ov17_02246F24_sub1 * v1 = param3;
    UnkStruct_ov17_02245E14 * v2;

    v2 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_02245E14));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_02245E14));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_11 = v1->unk_00;
    v2->unk_14 = v1->unk_C6.unk_00;
    v2->unk_1A = v1->unk_C6.unk_0C;
    v2->unk_1C = v1->unk_C6.unk_0F;
    v2->unk_1B = v1->unk_C6.unk_0E;

    SysTask_Start(ov17_02245E8C, v2, 30000);
}

static void ov17_02245E8C (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02245E14 * v0 = param1;

    switch (v0->unk_10) {
    case 0:
        if (v0->unk_1A != 0) {
            ov17_02242E5C(v0->unk_00, v0->unk_1A, &v0->unk_14, NULL);
            v0->unk_10++;
        } else {
            v0->unk_10 = 100;
        }
        break;
    case 1:
        if (ov17_02242ECC(v0->unk_00) == 0) {
            v0->unk_10++;
        }
        break;
    case 2:
        v0->unk_12++;

        if (v0->unk_1C == 1) {
            v0->unk_10++;
        } else if (v0->unk_12 >= v0->unk_1B) {
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}
