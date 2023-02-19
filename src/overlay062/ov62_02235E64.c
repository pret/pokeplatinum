#include <nitro.h>
#include <string.h>

#include "overlay062/ov62_const_funcptr_tables.h"

#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_022323B8.h"
#include "overlay062/struct_ov62_02233F74.h"

#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_02022594.h"
#include "plstring.h"
#include "unk_02023FCC.h"
#include "unk_020244AC.h"
#include "unk_0202F1D4.h"
#include "unk_0208BA78.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_02248408.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov62_022323B8 unk_10;
    UnkStruct_ov62_02233F74 unk_9C;
    UnkStruct_ov62_022312B0 unk_158[1];
    UnkStruct_02023FCC * unk_174[1];
    UnkStruct_0205AA50 unk_178[2];
    int unk_198;
} UnkStruct_ov62_02235E64;

static BOOL ov62_02235E64(UnkStruct_0208C06C * param0);
static BOOL ov62_02235EBC(UnkStruct_0208C06C * param0);
static BOOL ov62_0223604C(UnkStruct_0208C06C * param0);
static BOOL ov62_02236174(UnkStruct_0208C06C * param0);
static BOOL ov62_0223618C(UnkStruct_0208C06C * param0);
static BOOL ov62_022363CC(UnkStruct_0208C06C * param0);
static BOOL ov62_02236624(UnkStruct_0208C06C * param0);
static BOOL ov62_022366D4(UnkStruct_0208C06C * param0);
static BOOL ov62_022367B4(UnkStruct_0208C06C * param0);
static BOOL ov62_02236920(UnkStruct_0208C06C * param0);
static void ov62_02236AB0(u32 param0, u32 param1, void * param2);
static void ov62_02236B2C(UnkStruct_0208C06C * param0);
static void ov62_02236B64(UnkStruct_0208C06C * param0);
static void ov62_02236BA8(UnkStruct_0208C06C * param0);
static void ov62_02236BC8(UnkStruct_0208C06C * param0, int param1);
static void ov62_02236C20(UnkStruct_0208C06C * param0);
static void ov62_02236C94(UnkStruct_0208C06C * param0);

BOOL(*const Unk_ov62_02248C28[])(UnkStruct_0208C06C *) = {
    ov62_02235E64,
    ov62_02235EBC,
    ov62_0223604C,
    ov62_02236174,
    ov62_0223618C,
    ov62_022363CC,
    ov62_02236624,
    ov62_022366D4,
    ov62_022367B4,
    ov62_02236920,
};

static const UnkUnion_02022594 Unk_ov62_02248C1C[] = {
    {0x10, 0x30, 0x40, 0xC8},
    {0x40, 0x70, 0x58, 0xA8},
    {0x98, 0xB8, 0x50, 0xB0}
};

static BOOL ov62_02235E64 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02235E64));

    memset(v0, 0, sizeof(UnkStruct_ov62_02235E64));
    param0->unk_860 = v0;

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);

    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_02235EBC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        sub_02019060(0, 0);
        sub_02019060(1, 3);
        sub_02019060(2, 0);
        sub_02019060(3, 2);
        sub_02019060(4, 0);
        sub_02019060(5, 3);
        sub_02019060(6, 1);
        sub_02019060(7, 2);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        param0->unk_08++;
        break;
    default:
        ov62_0223376C(param0, 0);

        if (ov62_022300BC(param0) == 1) {
            BOOL v1 = 0;

            if (param0->unk_86C == 0) {
                v1 = 1;
            } else if (sub_0202FE98(param0->unk_87C[param0->unk_86C], 5, 0) == 1) {
                v1 = 1;
            } else if (param0->unk_874 == 1) {
                v1 = 1;
            }

            if (v1) {
                ov62_02236C20(param0);
                v0->unk_198 = 0;
                ov62_0222FB60(param0, 9);
            } else {
                v0->unk_198 = 1;
                ov62_0222FB60(param0, 6);
            }
        } else {
            ov62_0222FB60(param0, 2);
        }
        break;
    }

    return 0;
}

static BOOL ov62_0223604C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02236C20(param0);
        ov62_022343B8(param0, 6, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02236B2C(param0);
        v0->unk_174[0] = sub_02023FCC(Unk_ov62_02248C1C, NELEMS(Unk_ov62_02248C1C), ov62_02236AB0, param0, 102);
        param0->unk_08++;
        break;
    case 2:
        ov62_02234540(param0, 1);
        ov62_02234214(&v0->unk_9C, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_9C), 3);
        ov62_0223427C(&v0->unk_9C, 0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_9C, 1);
            ov62_02236B64(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_02236174 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    sub_0202404C(v0->unk_174[0]);
    return 0;
}

static BOOL ov62_0223618C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (v0->unk_0C == 0) {
            ov62_02234228(&v0->unk_9C, param0);
        } else {
            ov62_02232394(&v0->unk_10, param0);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 1)) {
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02234540(param0, 1);

        if (v0->unk_0C == 0) {
            ov62_02232378(&v0->unk_10, param0);
            ov62_022323B8(&v0->unk_10, 0);
            ov62_022343B8(param0, 80, 3);
        } else {
            ov62_02234214(&v0->unk_9C, param0);
            ov62_0223427C(&v0->unk_9C, 0);
            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_9C), 3);
        }

        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            if (v0->unk_0C == 0) {
                ov62_022323B8(&v0->unk_10, 1);
            } else {
                ov62_0223427C(&v0->unk_9C, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }
        break;
    default:
        v0->unk_0C ^= 1;
        ov62_02236BC8(param0, 121 + v0->unk_0C);
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static const UnkUnion_02022594 Unk_ov62_02248C14[] = {
    {0x28, 0x48, 0x20, 0x78},
    {0x28, 0x48, 0x90, 0xE8}
};

static void ov62_022362B8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;
    UnkStruct_0205AA50 * v1;
    PLString * v2;
    int v3 = 1;
    int v4;

    v1 = &v0->unk_178[0];
    sub_0201A7A0(v1);
    sub_0201A7E8(param0->unk_14.unk_10, v1, 6, 4, 6, 10, 2, 14, v3);
    sub_0201ADA4(v1, 0x0);

    v2 = sub_0200B1EC(param0->unk_14.unk_34, 130);
    v4 = ov62_0223429C(v1, v2);

    sub_0201D78C(v1, 0, v2, v4, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v2);
    sub_0201A9A4(v1);

    v3 += (10 * 2);
    v1 = &v0->unk_178[1];

    sub_0201A7A0(v1);
    sub_0201A7E8(param0->unk_14.unk_10, v1, 6, 18, 6, 10, 2, 14, v3);
    sub_0201ADA4(v1, 0x0);

    v2 = sub_0200B1EC(param0->unk_14.unk_34, 131);
    v4 = ov62_0223429C(v1, v2);

    sub_0201D78C(v1, 0, v2, v4, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02236398 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_178[0]);
    sub_0201A8FC(&v0->unk_178[0]);
    sub_0201ACF4(&v0->unk_178[1]);
    sub_0201A8FC(&v0->unk_178[1]);
}

static BOOL ov62_022363CC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02024034(v0->unk_174[0]);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        ov62_02234540(param0, 1);

        if (v0->unk_0C == 0) {
            ov62_02234228(&v0->unk_9C, param0);
        } else {
            ov62_02232394(&v0->unk_10, param0);
        }

        ov62_02234540(param0, 0);
        ov62_02236BA8(param0);
        v0->unk_198 = 0;
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02234540(param0, 1);
            ov62_02236C94(param0);
            ov62_02234540(param0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_022362B8(param0);
        ov62_02231AAC(param0, 296);
        sub_0200710C(param0->unk_14.unk_00, 84, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 4:
        if (sub_02022760(&Unk_ov62_02248C14[0])) {
            v0->unk_198 = 1;
            ov62_02234520(param0);

            if (sub_02024800(param0->unk_830)) {
                ov62_02231B3C(param0, 298);
            } else {
                ov62_02231B3C(param0, 299);
            }

            param0->unk_08++;
        } else if (sub_02022760(&Unk_ov62_02248C14[1])) {
            v0->unk_198 = 2;
            ov62_02234520(param0);

            param0->unk_08 = 6;
        }

        break;
    case 5:
        sub_020246E0(param0->unk_830);
        param0->unk_08++;
        break;
    case 6:
        ov62_02231B8C(param0);
        ov62_02236398(param0);
        param0->unk_08++;
        break;
    case 7:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        if (v0->unk_198 == 1) {
            ov62_0222FB60(param0, 7);
        } else {
            v0->unk_198 = 0;
            v0->unk_0C = 0;
            ov62_0222FB60(param0, 2);
        }
        break;
    }

    return 0;
}

static BOOL ov62_02236624 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231AAC(param0, 299);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        if (param0->unk_874 == 0) {
            {
                int v1;
                int v2;

                sub_0202F298(param0->unk_830, 102, &v1, NULL, param0->unk_86C);
                v2 = ov62_022486A4(param0->unk_830, param0->unk_86C);
                sub_0202F22C();

                ov62_022339A0(param0);
                ov62_022338A8(param0);
            }
        }

        param0->unk_08++;
        break;
    default:
        ov62_02231B8C(param0);
        ov62_02236C20(param0);
        ov62_0222FB60(param0, 9);
        break;
    }

    return 0;
}

static BOOL ov62_022366D4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        if (v0->unk_198 == 0) {
            ov62_02234540(param0, 1);

            if (v0->unk_0C == 0) {
                ov62_02234228(&v0->unk_9C, param0);
            } else {
                ov62_02232394(&v0->unk_10, param0);
            }

            ov62_02234540(param0, 0);
            sub_02024034(v0->unk_174[0]);
            ov62_02236BA8(param0);
            ov62_02236C94(param0);
        }

        ov62_02234540(param0, 1);
        ov62_022314A8(param0);
        ov62_02234540(param0, 0);
        ov62_022300C8(param0, *(param0->unk_10));
        sub_0208BA84(param0->unk_868, 1, 0);
        param0->unk_08++;
        break;
    default:
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

static BOOL ov62_022367B4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02024034(v0->unk_174[0]);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (v0->unk_0C == 0) {
            ov62_02234228(&v0->unk_9C, param0);
        } else {
            ov62_02232394(&v0->unk_10, param0);
        }

        ov62_02236BA8(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02236C94(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_0223376C(param0, 1);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02236920 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 6, 7);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->unk_08++;
        break;
    case 1:
        ov62_02236B2C(param0);
        v0->unk_174[0] = sub_02023FCC(Unk_ov62_02248C1C, NELEMS(Unk_ov62_02248C1C), ov62_02236AB0, param0, 102);
        param0->unk_08++;
        break;
    case 2:
        ov62_02234540(param0, 1);
        ov62_02234214(&v0->unk_9C, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_9C), 3);
        ov62_0223427C(&v0->unk_9C, 0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_9C, 1);
            ov62_02236B64(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);

            if (v0->unk_198 == 1) {
                param0->unk_08 = 0xFF;
            } else {
                param0->unk_08++;
            }

            v0->unk_198 = 0;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 4:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 5:
        if (sub_0200F2AC() == 1) {
            param0->unk_08++;
        }

        break;
    default:
        param0->unk_534.unk_1A4 += 1;
        ov62_02230098(param0);
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static void ov62_02236AB0 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02235E64 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 4);
        break;
    case 1:
        ov62_02234520(v0);

        if ((v0->unk_86C == 0) || (sub_0202FE98(v1->unk_9C.unk_04, 5, 0) == 1)) {
            ov62_0222FB60(v0, 7);
        } else {
            ov62_0222FB60(v0, 5);
        }
        break;
    case 2:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 8);
        break;
    }
}

static void ov62_02236B2C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    v0->unk_10.unk_00 = param0->unk_88C[param0->unk_86C];
    v0->unk_9C.unk_00 = v0->unk_10.unk_00;
    v0->unk_9C.unk_04 = param0->unk_87C[param0->unk_86C];
}

static void ov62_02236B64 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;
    UnkStruct_0205AA50 * v1;
    int v2 = 1;

    v1 = &v0->unk_178[0];
    sub_0201A7A0(v1);
    sub_0201A7E8(param0->unk_14.unk_10, v1, 6, 8, 3, 16, 2, 14, v2);
    ov62_02236BC8(param0, 121);
}

static void ov62_02236BA8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_178[0]);
    sub_0201A8FC(&v0->unk_178[0]);
}

static void ov62_02236BC8 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;
    UnkStruct_0205AA50 * v1;
    PLString * v2;
    int v3;

    v1 = &v0->unk_178[0];

    sub_0201ADA4(v1, 0x0);

    v2 = sub_0200B1EC(param0->unk_14.unk_34, param1);
    v3 = ov62_0223429C(v1, v2);

    sub_0201D78C(v1, 0, v2, v3, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02236C20 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    ov62_022312CC(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_158[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_158[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_158[0], &param0->unk_14, 3);

    sub_0200D364(v0->unk_158[0].unk_08, 0);
    sub_0200D4C4(v0->unk_158[0].unk_08, 80, 232);
    sub_020128C4(v0->unk_158[0].unk_0C, 36, -8);
    sub_020129D0(v0->unk_158[0].unk_0C, 1);
}

static void ov62_02236C94 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02235E64 * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_158[0]);
    sub_0200D0F4(v0->unk_158[0].unk_08);
    ov62_022313BC(param0);
}
