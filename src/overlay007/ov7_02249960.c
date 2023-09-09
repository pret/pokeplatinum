#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_02025E6C_decl.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02005474.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020329E0.h"
#include "unk_02033200.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203CC84.h"
#include "unk_0205964C.h"
#include "unk_0205D8CC.h"
#include "overlay007/ov7_02249960.h"

typedef struct UnkStruct_ov7_02249C2C_t UnkStruct_ov7_02249C2C;
typedef void (* UnkFuncPtr_ov7_02249C2C)(UnkStruct_0201CD38 *, void *);
typedef void (* UnkFuncPtr_ov7_02249C2C_1)(UnkStruct_ov7_02249C2C *);

typedef struct UnkStruct_ov7_02249C2C_t {
    Strbuf* unk_00[8];
    UnkStruct_0205AA50 unk_20;
    UnkStruct_0205AA50 unk_30;
    UnkStruct_0205AA50 unk_40;
    UnkStruct_0200B358 * unk_50;
    UnkStruct_0200B358 * unk_54;
    UnkStruct_0200B358 * unk_58;
    UnkStruct_0200112C * unk_5C;
    UnkStruct_02001AF4 * unk_60;
    UnkStruct_02013A04 * unk_64;
    UnkStruct_0203CDB0 * unk_68;
    UnkFuncPtr_ov7_02249C2C unk_6C;
    UnkFuncPtr_ov7_02249C2C_1 unk_70;
    MessageLoader * unk_74;
    UnkStruct_02025E6C * unk_78;
    UnkStruct_02025E6C * unk_7C;
    u8 unk_80[8];
    u32 unk_88;
    u16 unk_8C;
    u16 unk_8E;
    u8 unk_90;
    u8 unk_91;
    u8 unk_92;
    u8 unk_93;
    u8 unk_94;
    u8 unk_95;
    u8 unk_96;
    u8 unk_97;
    u8 unk_98;
} UnkStruct_ov7_02249C2C;

static void ov7_0224A718(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A530(UnkFuncPtr_ov7_02249C2C param0);
static void ov7_02249960(int param0, BOOL param1);
static void ov7_02249C2C(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224A510(UnkStruct_ov7_02249C2C * param0);
static void ov7_02249C44(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_02249C64(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_02249C94(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_02249E0C(UnkStruct_ov7_02249C2C * param0);
static void ov7_02249EE0(UnkStruct_ov7_02249C2C * param0);
static void ov7_02249F54(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_02249FFC(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A0C8(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224A128(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A34C(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A394(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A3E4(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A528(void);
static void ov7_0224A53C(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224A5D0(void);
static void ov7_0224A64C(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224A438(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_0224A72C(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A7D0(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224A97C(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224ABA4(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224ABE0(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AC08(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AC48(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224ACA4(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AE10(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AD68(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224ADD8(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AECC(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AE78(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AF2C(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AF84(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AB64(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224AFD8(UnkStruct_0201CD38 * param0, UnkStruct_ov7_02249C2C * param1);
static void ov7_0224A6D4(int param0, UnkStruct_ov7_02249C2C * param1);
static void ov7_0224B054(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224B08C(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224B0E8(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224B14C(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224B274(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224B2A0(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224B2DC(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224B31C(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224B348(UnkStruct_ov7_02249C2C * param0);
static void ov7_0224B370(UnkStruct_0201CD38 * param0, void * param1);
static void ov7_0224B3A8(UnkStruct_ov7_02249C2C * param0);
static int ov7_0224B3E8(void);
static int ov7_0224B3D4(void);
static int ov7_0224B3FC(void);

static UnkStruct_ov7_02249C2C * Unk_ov7_0224F5A0 = NULL;

static const UnkStruct_ov61_0222C884 Unk_ov7_0224ED0C = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void ov7_02249960 (int param0, BOOL param1)
{
    if (!sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        sub_0201D730(Unk_ov7_0224F5A0->unk_94);
    }

    if (param1) {
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, param0, Unk_ov7_0224F5A0->unk_00[4]);
        sub_0200C388(Unk_ov7_0224F5A0->unk_58, Unk_ov7_0224F5A0->unk_00[5], Unk_ov7_0224F5A0->unk_00[4]);
    } else {
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, param0, Unk_ov7_0224F5A0->unk_00[5]);
    }

    if (!sub_0201A7CC(&Unk_ov7_0224F5A0->unk_40)) {
        sub_0205D8F4(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224F5A0->unk_40, 3);
    }

    sub_0205D944(&Unk_ov7_0224F5A0->unk_40, sub_02025E44(Unk_ov7_0224F5A0->unk_68->unk_0C));
    Unk_ov7_0224F5A0->unk_94 = sub_0205D994(&Unk_ov7_0224F5A0->unk_40, Unk_ov7_0224F5A0->unk_00[5], sub_02025E44(Unk_ov7_0224F5A0->unk_68->unk_0C), 1);
}

static void ov7_02249A10 (UnkStruct_ov84_02240FA8 param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5)
{
    UnkStruct_ov84_02240FA8 v0;

    if (!sub_0201A7CC(&Unk_ov7_0224F5A0->unk_20)) {
        sub_0201A7E8(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224F5A0->unk_20, 3, param1, param2, param3, param4, 13, param5);
    }

    sub_0200DC48(&Unk_ov7_0224F5A0->unk_20, 1, 1024 - (18 + 12) - 9, 11);

    v0 = param0;
    v0.unk_00 = Unk_ov7_0224F5A0->unk_64;
    v0.unk_0C = &Unk_ov7_0224F5A0->unk_20;

    Unk_ov7_0224F5A0->unk_5C = sub_0200112C(&v0, 0, 0, 4);
    sub_0201A954(&Unk_ov7_0224F5A0->unk_20);
}

static void ov7_02249AB4 (UnkStruct_0203CDB0 * param0)
{
    int v0;

    GF_ASSERT((Unk_ov7_0224F5A0 == NULL));

    Unk_ov7_0224F5A0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov7_02249C2C));
    MI_CpuFill8(Unk_ov7_0224F5A0, 0, sizeof(UnkStruct_ov7_02249C2C));

    Unk_ov7_0224F5A0->unk_88 = 0;
    Unk_ov7_0224F5A0->unk_68 = param0;
    Unk_ov7_0224F5A0->unk_97 = 0;
    Unk_ov7_0224F5A0->unk_74 = MessageLoader_Init(1, 26, 353, 4);
    Unk_ov7_0224F5A0->unk_78 = sub_02025E38(sub_0203D174(Unk_ov7_0224F5A0->unk_68));
    Unk_ov7_0224F5A0->unk_7C = sub_02025E6C(4);

    sub_0201A7A0(&Unk_ov7_0224F5A0->unk_20);
    sub_0201A7A0(&Unk_ov7_0224F5A0->unk_30);
    sub_0201A7A0(&Unk_ov7_0224F5A0->unk_40);

    Unk_ov7_0224F5A0->unk_50 = sub_0200B358(4);
    Unk_ov7_0224F5A0->unk_54 = sub_0200B358(4);
    Unk_ov7_0224F5A0->unk_58 = sub_0200B358(4);
    Unk_ov7_0224F5A0->unk_98 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_ov7_0224F5A0->unk_80[v0] = 0;
    }

    for (v0 = 0; v0 < 8; v0++) {
        Unk_ov7_0224F5A0->unk_00[v0] = Strbuf_Init((70 * 2), 4);
    }
}

static void ov7_02249B98 (void)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        Strbuf_Free(Unk_ov7_0224F5A0->unk_00[v0]);
    }

    Heap_FreeToHeap(Unk_ov7_0224F5A0->unk_7C);

    if (Unk_ov7_0224F5A0->unk_50) {
        sub_0200B3F0(Unk_ov7_0224F5A0->unk_50);
        Unk_ov7_0224F5A0->unk_50 = NULL;
    }

    if (Unk_ov7_0224F5A0->unk_54) {
        sub_0200B3F0(Unk_ov7_0224F5A0->unk_54);
        Unk_ov7_0224F5A0->unk_54 = NULL;
    }

    if (Unk_ov7_0224F5A0->unk_58) {
        sub_0200B3F0(Unk_ov7_0224F5A0->unk_58);
        Unk_ov7_0224F5A0->unk_58 = NULL;
    }

    MessageLoader_Free(Unk_ov7_0224F5A0->unk_74);

    if (Unk_ov7_0224F5A0->unk_40.unk_0C != NULL) {
        sub_0201A8FC(&Unk_ov7_0224F5A0->unk_40);
    }

    Heap_FreeToHeap(Unk_ov7_0224F5A0);
    Unk_ov7_0224F5A0 = NULL;
}

static void ov7_02249C2C (UnkStruct_ov7_02249C2C * param0)
{
    sub_02059748(param0->unk_68, param0->unk_91, ov7_0224B3FC());
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224ED34 = {
    NULL,
    ov7_02249C44,
    ov7_02249C64,
    NULL,
    0x10,
    0x5,
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

static void ov7_02249C44 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    Unk_ov7_0224F5A0->unk_98 = 1;

    if (param2 == 0) {
        sub_02005748(1500);
    }
}

static void ov7_02249C64 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < sub_02001504(param0, 3); v0++) {
        ov7_02249C94(param0, 0, v0);
    }
}

static void ov7_02249C94 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    int v0 = sub_02033808();
    u16 v1 = 0;

    if (Unk_ov7_0224F5A0->unk_5C) {
        sub_020014DC(Unk_ov7_0224F5A0->unk_5C, &v1, NULL);
    }

    v1 += param2;

    sub_0201AE78(&Unk_ov7_0224F5A0->unk_20, 15, 8, param2 * 16, sub_0201C294(&Unk_ov7_0224F5A0->unk_20) * 8 - 8, 16);

    if (v1 < v0) {
        sub_020339AC(v1, Unk_ov7_0224F5A0->unk_7C);
        sub_0200B60C(Unk_ov7_0224F5A0->unk_50, 0, v1 + 1, 2, 2, 1);
        sub_0200B498(Unk_ov7_0224F5A0->unk_50, 1, Unk_ov7_0224F5A0->unk_7C);
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 63, Unk_ov7_0224F5A0->unk_00[1]);
        sub_0200C388(Unk_ov7_0224F5A0->unk_50, Unk_ov7_0224F5A0->unk_00[0], Unk_ov7_0224F5A0->unk_00[1]);
        sub_0201D738(&Unk_ov7_0224F5A0->unk_20, 0, Unk_ov7_0224F5A0->unk_00[0], 8, param2 * 16, 0xff, NULL);
        sub_0200B60C(Unk_ov7_0224F5A0->unk_50, 2, sub_02025F20(Unk_ov7_0224F5A0->unk_7C) % 0x10000, 5, 2, 1);
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 65, Unk_ov7_0224F5A0->unk_00[3]);
        sub_0200C388(Unk_ov7_0224F5A0->unk_50, Unk_ov7_0224F5A0->unk_00[2], Unk_ov7_0224F5A0->unk_00[3]);
        sub_0201D738(&Unk_ov7_0224F5A0->unk_20, 0, Unk_ov7_0224F5A0->unk_00[2], 11 * 8, param2 * 16, 0xff, NULL);
    } else {
        sub_0200B60C(Unk_ov7_0224F5A0->unk_50, 0, v1 + 1, 2, 2, 1);
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 64, Unk_ov7_0224F5A0->unk_00[1]);
        sub_0200C388(Unk_ov7_0224F5A0->unk_50, Unk_ov7_0224F5A0->unk_00[0], Unk_ov7_0224F5A0->unk_00[1]);
        sub_0201D738(&Unk_ov7_0224F5A0->unk_20, 0, Unk_ov7_0224F5A0->unk_00[0], 8, param2 * 16, 0xff, NULL);
    }
}

static void ov7_02249E0C (UnkStruct_ov7_02249C2C * param0)
{
    int v0;

    if (!sub_0201A7CC(&Unk_ov7_0224F5A0->unk_30)) {
        sub_0201A7E8(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224F5A0->unk_30, 3, 23, 2, 8, 4, 13, (1 + 20 * 5 * 2));
    }

    sub_0200DC48(&Unk_ov7_0224F5A0->unk_30, 1, 1024 - (18 + 12) - 9, 11);
    sub_0201ADA4(&Unk_ov7_0224F5A0->unk_30, 15);
    sub_0201A954(&Unk_ov7_0224F5A0->unk_30);

    param0->unk_97 = 1;

    sub_0200D9E8(ov7_0224A718, param0, 0);
    ov7_02249EE0(Unk_ov7_0224F5A0);

    {
        int v1[] = {
            40,
            41,
            42,
            44,
            43,
            43,
            45,
            46,
            47,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            48,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            49,
            50,
            0,
            51,
            52,
            53
        };

        if (Unk_ov7_0224F5A0->unk_91 == 8) {
            ov7_02249960(103 + Unk_ov7_0224F5A0->unk_92, 0);
        } else {
            ov7_02249960(v1[Unk_ov7_0224F5A0->unk_91], 0);
        }
    }
    ov7_0224A530(ov7_02249F54);
}

static void ov7_02249EE0 (UnkStruct_ov7_02249C2C * param0)
{
    sub_0200B498(Unk_ov7_0224F5A0->unk_54, 0, Unk_ov7_0224F5A0->unk_78);
    sub_0200B60C(Unk_ov7_0224F5A0->unk_54, 1, sub_02025F20(Unk_ov7_0224F5A0->unk_78) % 0x10000, 5, 2, 1);
    MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 62, Unk_ov7_0224F5A0->unk_00[6]);
    sub_0200C388(Unk_ov7_0224F5A0->unk_54, Unk_ov7_0224F5A0->unk_00[7], Unk_ov7_0224F5A0->unk_00[6]);
    sub_0201D738(&Unk_ov7_0224F5A0->unk_30, 0, Unk_ov7_0224F5A0->unk_00[7], 2, 2, 0, NULL);
}

static void ov7_02249F54 (UnkStruct_0201CD38 * param0, void * param1)
{
    u32 v0;
    UnkStruct_ov7_02249C2C * v1 = (UnkStruct_ov7_02249C2C *)param1;

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        int v2;

        Unk_ov7_0224F5A0->unk_64 = sub_02013A04(16, 4);

        for (v2 = 0; v2 < 16; v2++) {
            sub_0200B60C(Unk_ov7_0224F5A0->unk_50, 0, v2 + 1, 2, 2, 1);
            MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 64, Unk_ov7_0224F5A0->unk_00[1]);
            sub_0200C388(Unk_ov7_0224F5A0->unk_50, Unk_ov7_0224F5A0->unk_00[0], Unk_ov7_0224F5A0->unk_00[1]);
            sub_02013A6C(Unk_ov7_0224F5A0->unk_64, Unk_ov7_0224F5A0->unk_00[0], 0);
        }

        ov7_02249A10(Unk_ov7_0224ED34, 1, 2, 20, 5 * 2, 1);
        ov7_0224A530(ov7_02249FFC);
    }
}

static void ov7_02249FFC (UnkStruct_0201CD38 * param0, void * param1)
{
    u32 v0;
    int v1;
    UnkStruct_ov7_02249C2C * v2 = (UnkStruct_ov7_02249C2C *)param1;

    ov7_02249EE0(v2);

    if (sub_020360F0()) {
        Unk_ov7_0224F5A0->unk_88 = 3;
        ov7_0224A528();
        ov7_0224AFD8(param0, v2);
    } else {
        if (!sub_02033870()) {
            v0 = sub_02001288(Unk_ov7_0224F5A0->unk_5C);
        } else {
            v0 = 0xffffffff;
        }

        switch (v0) {
        case 0xffffffff:
            ov7_0224A0C8(v2);
            break;
        case 0xfffffffe:
            sub_02005748(1500);
            Unk_ov7_0224F5A0->unk_88 = 1;
            ov7_0224A528();
            ov7_0224AFD8(param0, v2);
            break;
        default:
            sub_02005748(1500);
            sub_020014D0(v2->unk_5C, &v2->unk_8E);

            if (sub_02033808() > v2->unk_8E) {
                ov7_0224A0C8(v2);
                v2->unk_8E = sub_0203383C(v2->unk_8E);
                sub_02059788(v2->unk_8E);
                sub_020365D0();
                ov7_0224A530(ov7_0224A128);
            }
            break;
        }
    }
}

static void ov7_0224A0C8 (UnkStruct_ov7_02249C2C * param0)
{
    if (sub_02033870() || Unk_ov7_0224F5A0->unk_98) {
        Unk_ov7_0224F5A0->unk_98 = 0;
        sub_02033884();
        sub_0201AE78(&Unk_ov7_0224F5A0->unk_20, 15, 8, 0, 20 - 8, (5 * 2) * 8);
        ov7_02249C64(Unk_ov7_0224F5A0->unk_5C, 0, 0);
        sub_0201A954(&Unk_ov7_0224F5A0->unk_20);
    }
}

asm static void ov7_0224A128 (UnkStruct_0201CD38 * param0, void * param1)
{
    push {r4, r5, lr}
    sub sp, #0xc
    add r5, r0, #0
    add r4, r1, #0
    bl sub_020360F0
    cmp r0, #0
    beq _0224A152
    add r0, r5, #0
    add r1, r4, #0
    bl ov7_0224AFD8
    mov r0, #0
    add r1, r0, #0
    bl ov7_02249960
    add r0, r4, #0
    bl ov7_0224B348
    add sp, #0xc
    pop {r4, r5, pc}
 _0224A152:
    bl sub_0203608C
    bl sub_02032EE8
    cmp r0, #0
    beq _0224A238
    bl sub_020365D0
    ldr r1, = Unk_ov7_0224F5A0
              add r0, r4, #0
    add r0, #0x8e
    ldr r1, [r1, #0]
    ldrh r0, [r0]
    ldr r1, [r1, #0x7c]
    bl sub_020339AC
    ldr r2, = Unk_ov7_0224F5A0
              ldr r0, [r4, #0x58]
    ldr r2, [r2, #0]
    mov r1, #1
    ldr r2, [r2, #0x7c]
    bl sub_0200B498
    bl ov7_0224B3D4
    cmp r0, #2
    bgt _0224A192
    mov r0, #1
    add r1, r0, #0
    bl ov7_02249960
    b _0224A232
 _0224A192:
    ldr r0, = Unk_ov7_0224F5A0
              ldr r0, [r0, #0]
    add r0, #0x94
    ldrb r0, [r0]
    bl sub_0205DA04
    cmp r0, #0
    bne _0224A1AE
    ldr r0, = Unk_ov7_0224F5A0
              ldr r0, [r0, #0]
    add r0, #0x94
    ldrb r0, [r0]
    bl sub_0201D730
 _0224A1AE:
    ldr r0, = Unk_ov7_0224F5A0
              mov r1, #2
    ldr r2, [r0, #0]
    ldr r0, [r2, #0x74]
    ldr r2, [r2, #0x10]
    bl MessageLoader_GetStrbuf
    ldr r0, = Unk_ov7_0224F5A0
              ldr r2, [r0, #0]
    ldr r0, [r2, #0x58]
    ldr r1, [r2, #0x14]
    ldr r2, [r2, #0x10]
    bl sub_0200C388
    ldr r0, = Unk_ov7_0224F5A0
              ldr r0, [r0, #0]
    add r0, #0x40
    bl sub_0201A7CC
    cmp r0, #0
    bne _0224A1E8
    ldr r0, = Unk_ov7_0224F5A0
              mov r2, #3
    ldr r1, [r0, #0]
    ldr r0, [r1, #0x68]
    add r1, #0x40
    ldr r0, [r0, #8]
    bl sub_0205D8F4
 _0224A1E8:
    ldr r0, = Unk_ov7_0224F5A0
              ldr r0, [r0, #0]
    ldr r0, [r0, #0x68]
    ldr r0, [r0, #0xc]
    bl sub_02025E44
    add r1, r0, #0
    ldr r0, = Unk_ov7_0224F5A0
              ldr r0, [r0, #0]
    add r0, #0x40
    bl sub_0205D944
    mov r0, #1
    bl sub_02002AC8
    mov r0, #0
    bl sub_02002AE4
    mov r0, #0
    bl sub_02002B20
    ldr r0, = Unk_ov7_0224F5A0
              mov r3, #0
    ldr r2, [r0, #0]
    mov r1, #1
    str r3, [sp]
    str r1, [sp, #4]
    add r0, r2, #0
    str r3, [sp, #8]
    ldr r2, [r2, #0x14]
    add r0, #0x40
    bl sub_0201D738
    ldr r1, = Unk_ov7_0224F5A0
              ldr r1, [r1, #0]
    add r1, #0x94
    strb r0, [r1]
 _0224A232:
    ldr r0, = ov7_0224A34C
              bl ov7_0224A530
 _0224A238:
              add sp, #0xc
    pop {r4, r5, pc}
}

static BOOL ov7_0224A244 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = param1;

    if (sub_020360F0()) {
        ov7_0224AFD8(param0, v0);
        ov7_02249960(0, 0);
        ov7_0224B348(v0);
    } else if (sub_020365A8(0, 3) == sub_0203608C()) {
        sub_020365D0();
        ov7_0224AFD8(param0, v0);
        ov7_0224B2DC(v0);
    } else if (sub_020365A8(0, 5) != -1) {
        sub_020365D0();
        ov7_0224AFD8(param0, v0);
        ov7_0224B2DC(v0);
    } else if (sub_020365A8(0, 4) == sub_0203608C()) {
        ov7_02249960(97, 0);
        ov7_0224A530(ov7_0224AB64);
    } else if (sub_020365A8(0, 2) == sub_0203608C()) {
        sub_020365D0();

        v0->unk_90 = sub_02032E64();

        if (!sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
            sub_0201D730(Unk_ov7_0224F5A0->unk_94);
        }

        ov7_0224AFD8(param0, v0);
        ov7_0224B08C(v0);
    } else if (ov7_0224B4E4()) {
        ov7_0224AFD8(param0, v0);
        ov7_0224B2DC(v0);
    } else {
        return 0;
    }

    return 1;
}

static void ov7_0224A34C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = param1;

    if (!sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        return;
    }

    if (ov7_0224A244(param0, param1)) {
        (void)0;
    } else if (( PAD_BUTTON_B )&Unk_021BF67C.unk_48) {
        ov7_02249960(3, 0);
        ov7_0224A530(ov7_0224A394);
    }
}

static void ov7_0224A394 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = param1;

    if (ov7_0224A244(param0, param1)) {
        (void)0;
    } else if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        v0->unk_60 = sub_02002100(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        ov7_0224A530(ov7_0224A3E4);
    }
}

static void ov7_0224A3E4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = param1;
    u32 v1;

    if (ov7_0224A244(param0, param1)) {
        sub_02002154(v0->unk_60, 4);
        v0->unk_60 = NULL;
        return;
    }

    v1 = sub_02002114(v0->unk_60, 4);

    if (v1 == 0) {
        ov7_0224AFD8(param0, v0);
        ov7_02249960(6, 0);
        ov7_0224B348(v0);
    } else if (v1 != 0xffffffff) {
        ov7_0224A530(ov7_0224A128);
    }
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224ED14 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x5,
    0x5,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x1,
    NULL
};

static void ov7_0224A438 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u16 v0 = 0;

    if (Unk_ov7_0224F5A0->unk_5C) {
        sub_020014DC(Unk_ov7_0224F5A0->unk_5C, &v0, NULL);
    }

    v0 += param2;

    if (NULL != sub_02032EE8(v0)) {
        sub_0200B498(Unk_ov7_0224F5A0->unk_50, 0, sub_02032EE8(v0));
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 66, Unk_ov7_0224F5A0->unk_00[1]);
        sub_0200C388(Unk_ov7_0224F5A0->unk_50, Unk_ov7_0224F5A0->unk_00[0], Unk_ov7_0224F5A0->unk_00[1]);
        sub_0201D738(&Unk_ov7_0224F5A0->unk_20, 0, Unk_ov7_0224F5A0->unk_00[0], 8, param2 * 16, 0, NULL);
        sub_0200B60C(Unk_ov7_0224F5A0->unk_50, 2, sub_02025F24(sub_02032EE8(v0)), 5, 2, 1);
        MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, 65, Unk_ov7_0224F5A0->unk_00[3]);
        sub_0200C388(Unk_ov7_0224F5A0->unk_50, Unk_ov7_0224F5A0->unk_00[2], Unk_ov7_0224F5A0->unk_00[3]);
        sub_0201D738(&Unk_ov7_0224F5A0->unk_20, 0, Unk_ov7_0224F5A0->unk_00[2], 9 * 8, param2 * 16, 0, NULL);
    }
}

static void ov7_0224A510 (UnkStruct_ov7_02249C2C * param0)
{
    sub_02059708(param0->unk_68, param0->unk_91, ov7_0224B3FC());
}

static void ov7_0224A528 (void)
{
    sub_0205987C();
}

static void ov7_0224A530 (UnkFuncPtr_ov7_02249C2C param0)
{
    Unk_ov7_0224F5A0->unk_6C = param0;
}

static void ov7_0224A53C (UnkStruct_ov7_02249C2C * param0)
{
    int v0;

    sub_0200D9E8(ov7_0224A718, param0, 0);
    ov7_0224A5D0();

    if (!sub_0201A7CC(&Unk_ov7_0224F5A0->unk_30)) {
        sub_0201A7E8(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224F5A0->unk_30, 3, 22, 2, 9, 4, 13, (1 + 17 * 6 * 2));
    }

    sub_0200DC48(&Unk_ov7_0224F5A0->unk_30, 1, 1024 - (18 + 12) - 9, 11);
    sub_0201ADA4(&Unk_ov7_0224F5A0->unk_30, 15);
    sub_0201A954(&Unk_ov7_0224F5A0->unk_30);

    param0->unk_97 = 1;

    sub_02032E1C(0);
    ov7_0224A530(ov7_0224A72C);
}

static void ov7_0224A5D0 (void)
{
    int v0[] = {
        7,
        8,
        9,
        11,
        10,
        10,
        12,
        13,
        14,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        15,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        16,
        17,
        0,
        18,
        19,
        20
    };

    GF_ASSERT(Unk_ov7_0224F5A0->unk_91 < (sizeof(v0) / sizeof(int)));

    if (Unk_ov7_0224F5A0->unk_91 == 8) {
        if (sub_02032E64() > 1) {
            ov7_02249960(108 + Unk_ov7_0224F5A0->unk_92, 0);
        } else {
            ov7_02249960(98 + Unk_ov7_0224F5A0->unk_92, 0);
        }
    } else {
        ov7_02249960(v0[Unk_ov7_0224F5A0->unk_91], 0);
    }
}

static void ov7_0224A64C (UnkStruct_ov7_02249C2C * param0)
{
    int v0, v1;

    if (sub_02032E64() >= ov7_0224B3D4()) {
        v1 = sub_02032E64();
        v0 = 68;
    } else {
        v1 = ov7_0224B3D4() - sub_02032E64();
        v0 = 67;
    }

    sub_0200B60C(Unk_ov7_0224F5A0->unk_54, 0, v1, 2, 5, 1);
    sub_0201ADA4(&Unk_ov7_0224F5A0->unk_30, 15);
    MessageLoader_GetStrbuf(Unk_ov7_0224F5A0->unk_74, v0, Unk_ov7_0224F5A0->unk_00[7]);
    sub_0200C388(Unk_ov7_0224F5A0->unk_54, Unk_ov7_0224F5A0->unk_00[6], Unk_ov7_0224F5A0->unk_00[7]);
    sub_0201D738(&Unk_ov7_0224F5A0->unk_30, 0, Unk_ov7_0224F5A0->unk_00[6], 2, 2, 0, NULL);
}

static void ov7_0224A6D4 (int param0, UnkStruct_ov7_02249C2C * param1)
{
    int v0[] = {
        21,
        22,
        23,
        24,
        25,
        25,
        31,
        25,
        25,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        26,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        27,
        27,
        0,
        28,
        29,
        30
    };
    UnkStruct_02025E6C * v1 = sub_02032EE8(param0);

    if (v1) {
        sub_0200B498(param1->unk_58, 1, v1);
    }

    ov7_02249960(v0[param1->unk_91], 1);
}

static void ov7_0224A718 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if (Unk_ov7_0224F5A0->unk_6C != NULL) {
        UnkFuncPtr_ov7_02249C2C v1 = Unk_ov7_0224F5A0->unk_6C;

        v1(param0, v0);
    }
}

static void ov7_0224A72C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        int v2;

        Unk_ov7_0224F5A0->unk_64 = sub_02013A04(5, 4);

        for (v2 = 0; v2 < 5; v2++) {
            sub_02013A4C(Unk_ov7_0224F5A0->unk_64, Unk_ov7_0224F5A0->unk_74, 69, 0);
        }

        Unk_ov7_0224F5A0->unk_98 = 1;

        for (v2 = 0; v2 < (7 + 1); v2++) {
            Unk_ov7_0224F5A0->unk_80[v2] = 0;
        }

        ov7_02249A10(Unk_ov7_0224ED14, 1, 2, 17, 6 * 2, 1);
        ov7_0224A530(ov7_0224A7D0);
    }
}

static void ov7_0224A7D0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(v0);

    for (v2 = 0; v2 < (7 + 1); v2++) {
        if (sub_02032DC4(v2) && (v2 != 0)) {
            Unk_ov7_0224F5A0->unk_80[v2] = 1;
            Unk_ov7_0224F5A0->unk_98 = 1;
        } else if ((NULL != sub_02032EE8(v2)) && !Unk_ov7_0224F5A0->unk_80[v2]) {
            Unk_ov7_0224F5A0->unk_80[v2] = 1;
            Unk_ov7_0224F5A0->unk_98 = 1;
        } else if ((NULL == sub_02032EE8(v2)) && Unk_ov7_0224F5A0->unk_80[v2]) {
            Unk_ov7_0224F5A0->unk_80[v2] = 0;
            Unk_ov7_0224F5A0->unk_98 = 1;
        }
    }

    if (Unk_ov7_0224F5A0->unk_98) {
        Unk_ov7_0224F5A0->unk_98 = 0;
        sub_020013AC(Unk_ov7_0224F5A0->unk_5C);

        for (v2 = 0; v2 < sub_02001504(Unk_ov7_0224F5A0->unk_5C, 3); v2++) {
            ov7_0224A438(Unk_ov7_0224F5A0->unk_5C, 0, v2);
        }
    }

    v1 = sub_02001288(v0->unk_5C);

    if (sub_02032E44() != 0xff) {
        v0->unk_95 = sub_02032E44();
        sub_02005748(1549);
        ov7_0224A6D4(v0->unk_95, v0);
        ov7_0224A530(ov7_0224AF84);
        return;
    }

    if (sub_020360F0()) {
        ov7_0224A528();
        ov7_0224AFD8(param0, v0);
        Unk_ov7_0224F5A0->unk_88 = 3;
    } else {
        switch (v1) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov7_0224A530(ov7_0224AE10);
            break;
        default:
            if (ov7_0224B3D4() <= sub_02032E64()) {
                int v3[] = {
                    0,
                    0,
                    0,
                    32,
                    32,
                    32,
                    33,
                    34,
                    35,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0
                };

                v0->unk_90 = sub_02032E64();

                ov7_02249960(v3[v0->unk_91], 0);
                ov7_0224A530(ov7_0224AC48);
            }

            break;
        }
    }
}

static void ov7_0224A97C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    v1 = sub_02002114(v0->unk_60, 4);

    if (!sub_02035D78(v0->unk_95)) {
        if (v1 == 0xffffffff) {
            sub_02002154(v0->unk_60, 4);
        }

        if (v0->unk_91 == 8) {
            for (v2 = 1; v2 < ov7_0224B3E8(); v2++) {
                if (sub_02035D78(v2)) {
                    sub_02032D98(v2);
                    sub_02036594(5, v2);
                }
            }

            ov7_02249960(0, 0);
            ov7_0224A530(ov7_0224ABA4);
        } else {
            sub_02032D98(v0->unk_95);
            ov7_02249960(0, 0);
            ov7_0224A530(ov7_0224ABA4);
        }
    } else if (sub_020360F0() || ov7_0224B4E4()) {
        if (v1 == 0xffffffff) {
            sub_02002154(v0->unk_60, 4);
        }

        sub_02032D98(v0->unk_95);
        ov7_02249960(0, 0);
        ov7_0224A530(ov7_0224ABA4);
    } else if (v1 == 0) {
        if ((v0->unk_91 == 1) || (v0->unk_91 == 2)) {
            if (!sub_02032FE4()) {
                ov7_02249960(97, 0);
                ov7_0224A530(ov7_0224AB64);
                sub_02036594(4, v0->unk_95);
                return;
            }
        }

        sub_02032E1C(v0->unk_95);
        sub_02036594(2, v0->unk_95);

        if (ov7_0224B3E8() == sub_02032E64()) {
            v0->unk_90 = sub_02032E64();

            if (ov7_0224B3E8() > 2) {
                ov7_0224A530(ov7_0224AC08);
            } else {
                ov7_0224AFD8(param0, v0);
                ov7_0224B054(v0);
            }
        } else {
            ov7_0224A5D0();
            ov7_0224A530(ov7_0224ABE0);
        }
    } else if (v1 != 0xffffffff) {
        if (v0->unk_91 == 8) {
            for (v2 = 1; v2 < ov7_0224B3E8(); v2++) {
                if (sub_02035D78(v2)) {
                    sub_02032D98(v2);
                    sub_02036594(5, v2);
                }
            }

            ov7_0224A5D0();
            ov7_0224A530(ov7_0224ABE0);
        } else {
            sub_02032D98(v0->unk_95);
            sub_02036594(3, v0->unk_95);
            ov7_0224A5D0();
            ov7_0224A530(ov7_0224ABE0);
        }
    }
}

static void ov7_0224AB64 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_0224AFD8(param0, v0);
            ov7_0224A528();
            Unk_ov7_0224F5A0->unk_88 = 4;
        }
    }
}

static void ov7_0224ABA4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_0224A5D0();
            ov7_0224A530(ov7_0224ABE0);
        }
    }
}

static void ov7_0224ABE0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        ov7_0224A530(ov7_0224A7D0);
    }
}

static void ov7_0224AC08 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;
    int v2[] = {
        0,
        0,
        0,
        32,
        32,
        32,
        33,
        34,
        35,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };

    ov7_0224A64C(v0);
    ov7_02249960(v2[v0->unk_91], 0);
    ov7_0224A530(ov7_0224AC48);
}

static void ov7_0224AC48 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    sub_02036994(0);
    sub_02001288(v0->unk_5C);

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        v0->unk_60 = sub_02002100(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        ov7_0224A530(ov7_0224ACA4);
    }
}

static void ov7_0224ACA4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    v1 = sub_02002114(v0->unk_60, 4);

    if (sub_020360F0() || (sub_02035E18() != v0->unk_90)) {
        if (v1 == 0xffffffff) {
            sub_02002154(v0->unk_60, 4);
        }

        v0->unk_60 = NULL;
        ov7_0224A530(ov7_0224AD68);
    } else if (v1 == 0) {
        if (v0->unk_91 == 8) {
            for (v2 = 1; v2 < sub_02035E18(); v2++) {
                if (!sub_02035D78(v2)) {
                    ov7_0224A530(ov7_0224AD68);
                    return;
                }
            }
        }

        sub_020364F0(10);
        ov7_0224A530(ov7_0224AF2C);
    } else if (v1 != 0xffffffff) {
        sub_02036994(1);
        ov7_0224A528();
        ov7_0224AFD8(param0, v0);
        Unk_ov7_0224F5A0->unk_88 = 1;
    }
}

static void ov7_0224AD68 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    int v1[] = {
        0,
        0,
        0,
        0,
        0,
        0,
        54,
        55,
        56,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };

    ov7_0224AFD8(param0, v0);

    if (Unk_ov7_0224F5A0->unk_91 == 8) {
        ov7_02249960(118 + Unk_ov7_0224F5A0->unk_92, 0);
    } else {
        ov7_02249960(v1[v0->unk_91], 0);
    }

    sub_0205987C();
    sub_0200D9E8(ov7_0224ADD8, v0, 0);
}

static void ov7_0224ADD8 (UnkStruct_0201CD38 * param0, void * param1)
{
    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Unk_ov7_0224F5A0->unk_88 = 1;
            sub_0200DA58(param0);
        }
    }
}

static void ov7_0224AE10 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;
    int v2[] = {
        0,
        0,
        0,
        36,
        36,
        36,
        37,
        38,
        39,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };

    ov7_0224A64C(v0);

    if (sub_02032E64() > 1) {
        ov7_02249960(v2[v0->unk_91], 0);
        ov7_0224A530(ov7_0224AE78);
    } else {
        ov7_0224A528();
        ov7_0224AFD8(param0, v0);
        Unk_ov7_0224F5A0->unk_88 = 1;
    }
}

static void ov7_0224AE78 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        v0->unk_60 = sub_02002100(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        ov7_0224A530(ov7_0224AECC);
    }
}

static void ov7_0224AECC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    sub_02001288(v0->unk_5C);
    v1 = sub_02002114(v0->unk_60, 4);

    if (sub_020360F0()) {
        v1 = 0xfffffffe;
    }

    if (v1 == 0) {
        ov7_0224A528();
        ov7_0224AFD8(param0, v0);
        Unk_ov7_0224F5A0->unk_88 = 1;
    } else if (v1 != 0xffffffff) {
        ov7_0224A5D0();
        ov7_0224A530(ov7_0224ABE0);
    }
}

static void ov7_0224AF2C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    if (sub_020360F0() || (sub_02035E18() != v0->unk_90)) {
        ov7_0224A530(ov7_0224AD68);
    } else {
        ov7_0224A64C(v0);
        sub_02001288(v0->unk_5C);

        if (sub_02036540(10)) {
            if (sub_02036450()) {
                ov7_0224AFD8(param0, v0);
                ov7_0224B3A8(v0);
            }
        }
    }
}

static void ov7_0224AF84 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        v0->unk_60 = sub_02002100(Unk_ov7_0224F5A0->unk_68->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        ov7_0224A530(ov7_0224A97C);
    }
}

static void ov7_0224AFD8 (UnkStruct_0201CD38 * param0, UnkStruct_ov7_02249C2C * param1)
{
    sub_0201ADA4(&Unk_ov7_0224F5A0->unk_40, 15);
    sub_0200DC9C(&param1->unk_20, 0);
    sub_02013A3C(param1->unk_64);
    sub_02001384(param1->unk_5C, NULL, NULL);
    sub_0201ACF4(&param1->unk_20);
    sub_0201A8FC(&param1->unk_20);

    if (param1->unk_97) {
        sub_0200DC9C(&Unk_ov7_0224F5A0->unk_30, 0);
        sub_0201ACF4(&Unk_ov7_0224F5A0->unk_30);
        sub_0201A8FC(&Unk_ov7_0224F5A0->unk_30);
        param1->unk_97 = 0;
    }

    if (param0) {
        sub_0200DA58(param0);
    }
}

static void ov7_0224B054 (UnkStruct_ov7_02249C2C * param0)
{
    sub_0200B498(param0->unk_58, 1, sub_02032EE8(1));
    ov7_02249960(57, 1);

    sub_0200D9E8(ov7_0224A718, param0, 0);
    ov7_0224A530(ov7_0224B0E8);
}

static void ov7_0224B08C (UnkStruct_ov7_02249C2C * param0)
{
    sub_020339AC(param0->unk_8E, Unk_ov7_0224F5A0->unk_7C);
    sub_0200B498(param0->unk_58, 1, Unk_ov7_0224F5A0->unk_7C);
    ov7_02249960(4, 1);

    param0->unk_90 = sub_02035E18();

    sub_0200D9E8(ov7_0224A718, param0, 0);
    ov7_0224A530(ov7_0224B0E8);

    Unk_ov7_0224F5A0->unk_96 = (30 * 3);
}

static void ov7_0224B0E8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if ((sub_0203608C() == 0) && (sub_02035E18() != v0->unk_90)) {
        ov7_0224A530(ov7_0224B274);
    } else if (ov7_0224B4E4() || sub_020360F0()) {
        ov7_0224A530(ov7_0224B274);
    } else if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        sub_020364F0(10);
        ov7_0224A530(ov7_0224B14C);
    }
}

static void ov7_0224B14C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if ((sub_0203608C() == 0) && (sub_02035E18() != v0->unk_90)) {
        ov7_0224A530(ov7_0224B274);
    } else if (ov7_0224B4E4() || sub_020360F0()) {
        ov7_0224A530(ov7_0224B274);
        return;
    } else if (!sub_02035D78(0)) {
        ov7_0224A530(ov7_0224B274);
        return;
    } else if (sub_020365A8(0, 5) != -1) {
        ov7_0224A530(ov7_0224B274);
        return;
    } else if (sub_02036540(10)) {
        if (sub_02036450()) {
            if (!sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
                sub_0201D730(Unk_ov7_0224F5A0->unk_94);
            }

            v0->unk_90 = sub_02035E18();
            ov7_0224B3A8(v0);
            sub_0200DA58(param0);
            return;
        }
    }

    if (Unk_ov7_0224F5A0->unk_96 != 0) {
        Unk_ov7_0224F5A0->unk_96--;

        if (Unk_ov7_0224F5A0->unk_96 == 0) {
            int v1[] = {
                NULL,
                NULL,
                NULL,
                58,
                58,
                58,
                59,
                60,
                61,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL
            };

            if (Unk_ov7_0224F5A0->unk_91 == 8) {
                ov7_02249960(113 + Unk_ov7_0224F5A0->unk_92, 0);
            } else {
                ov7_02249960(v1[v0->unk_91], 0);
            }
        }
    }
}

static void ov7_0224B274 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        ov7_02249960(0, 0);
        ov7_0224A530(ov7_0224B2A0);
    }
}

static void ov7_0224B2A0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_0200DA58(param0);
            ov7_0224A528();
            Unk_ov7_0224F5A0->unk_88 = 1;
        }
    }
}

static void ov7_0224B2DC (UnkStruct_ov7_02249C2C * param0)
{
    sub_020339AC(param0->unk_8E, Unk_ov7_0224F5A0->unk_7C);
    sub_0200B498(param0->unk_58, 1, Unk_ov7_0224F5A0->unk_7C);

    ov7_02249960(5, 1);

    sub_020597A4();
    sub_0200D9E8(ov7_0224B31C, param0, 0);
}

static void ov7_0224B31C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        sub_020597A4();
        ov7_02249E0C(v0);
        sub_0200DA58(param0);
    }
}

static void ov7_0224B348 (UnkStruct_ov7_02249C2C * param0)
{
    sub_020597A4();

    {
        int v0;

        for (v0 = 0; v0 < (7 + 1); v0++) {
            sub_02032D98(v0);
        }
    }

    sub_0200D9E8(ov7_0224B370, param0, 0);
}

static void ov7_0224B370 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov7_02249C2C * v0 = (UnkStruct_ov7_02249C2C *)param1;

    if (sub_0205DA04(Unk_ov7_0224F5A0->unk_94)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_02249E0C(v0);
            sub_0200DA58(param0);
        }
    }
}

static void ov7_0224B3A8 (UnkStruct_ov7_02249C2C * param0)
{
    sub_02036994(0);
    Unk_ov7_0224F5A0->unk_88 = 2;
    sub_020388F4(1, 1);
    sub_02032AC0();
    sub_02033EA8(1);
}

int ov7_0224B3D4 (void)
{
    return sub_02036158(Unk_ov7_0224F5A0->unk_91);
}

static int ov7_0224B3E8 (void)
{
    return sub_02036148(Unk_ov7_0224F5A0->unk_91);
}

static int ov7_0224B3FC (void)
{
    return Unk_ov7_0224F5A0->unk_92 + (Unk_ov7_0224F5A0->unk_93 << 4);
}

void ov7_0224B414 (UnkStruct_0203CDB0 * param0, int param1, int param2, int param3)
{
    ov7_02249AB4(param0);
    Unk_ov7_0224F5A0->unk_91 = param1;

    if ((param1 == 3) || (param1 == 4)) {
        param0->unk_B0 = NULL;
    }

    Unk_ov7_0224F5A0->unk_92 = param2;
    Unk_ov7_0224F5A0->unk_93 = param3;

    ov7_02249C2C(Unk_ov7_0224F5A0);
}

void ov7_0224B450 (void)
{
    ov7_02249E0C(Unk_ov7_0224F5A0);
}

u32 ov7_0224B460 (void)
{
    u32 v0 = Unk_ov7_0224F5A0->unk_88;

    if (0 != v0) {
        ov7_02249B98();
    }

    return v0;
}

void ov7_0224B47C (UnkStruct_0203CDB0 * param0, int param1, int param2, int param3)
{
    ov7_02249AB4(param0);
    Unk_ov7_0224F5A0->unk_91 = param1;

    if ((param1 == 3) || (param1 == 4)) {
        param0->unk_B0 = NULL;
    }

    Unk_ov7_0224F5A0->unk_92 = param2;
    Unk_ov7_0224F5A0->unk_93 = param3;

    ov7_0224A510(Unk_ov7_0224F5A0);
}

void ov7_0224B4B8 (void)
{
    ov7_0224A53C(Unk_ov7_0224F5A0);
}

u32 ov7_0224B4C8 (void)
{
    u32 v0 = Unk_ov7_0224F5A0->unk_88;

    if (0 != v0) {
        ov7_02249B98();
    }

    return v0;
}

BOOL ov7_0224B4E4 (void)
{
    return 0;
}
