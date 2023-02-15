#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02073C74.h"

#include "constdata/const_020F2DAC.h"
#include "constdata/const_020F67FC.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E2FC.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_0209843C.h"
#include "overlay119/struct_ov119_021D0FD0.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_0200762C.h"
#include "unk_0200F174.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "gx_layers.h"
#include "unk_02024220.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_0202CD50.h"
#include "unk_0202F180.h"
#include "map_header.h"
#include "unk_0203CC84.h"
#include "unk_020508D4.h"
#include "unk_02055808.h"
#include "unk_02073C2C.h"
#include "unk_0208694C.h"
#include "unk_02092494.h"
#include "unk_02098218.h"
#include "overlay005/ov5_021E622C.h"
#include "overlay119/ov119_021D0D80.h"
#include "overlay119/ov119_021D191C.h"

FS_EXTERN_OVERLAY(overlay119);

static int sub_02098218(UnkStruct_020067E8 * param0, int * param1);
static int sub_02098304(UnkStruct_020067E8 * param0, int * param1);
static int sub_02098388(UnkStruct_020067E8 * param0, int * param1);


const UnkStruct_0208BE5C Unk_020F67FC = {
    sub_02098218,
    sub_02098304,
    sub_02098388,
    FS_OVERLAY_ID(overlay119)
};

static int sub_02098218 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0209843C * v0;
    UnkStruct_ov119_021D0FD0 * v1;

    sub_02017798(NULL, NULL);
    sub_020177A4();
    Heap_Create(3, 71, 0x40000);

    v1 = sub_0200681C(param0, sizeof(UnkStruct_ov119_021D0FD0), 71);
    memset(v1, 0, sizeof(UnkStruct_ov119_021D0FD0));

    v0 = sub_02006840(param0);

    v1->unk_00 = v0;
    v1->unk_04.unk_0C = sub_02027AC0(v1->unk_00->unk_0C.unk_04);
    v1->unk_04.unk_10 = sub_02027B50(v1->unk_00->unk_0C.unk_04);
    v1->unk_04.unk_34 = ov119_021D0DD4();
    v1->unk_04.unk_38 = sub_0200762C(71);
    v1->unk_04.unk_3C = NARC_ctor(147, 71);
    v1->unk_04.unk_00 = sub_02018340(71);

    sub_0201DBEC(64, 71);

    v1->unk_04.unk_54 = sub_02015F84(71, 1, 0);
    v1->unk_04.unk_04 = sub_02002F38(71);

    sub_02003858(v1->unk_04.unk_04, 1);
    sub_02002F70(v1->unk_04.unk_04, 0, 0x200, 71);
    sub_02002F70(v1->unk_04.unk_04, 2, 0x200, 71);
    sub_02002F70(v1->unk_04.unk_04, 1, 0x200, 71);
    sub_02002F70(v1->unk_04.unk_04, 3, 0x200, 71);

    ov119_021D0D80();
    ov119_021D0DA8();
    ov119_021D0E78();

    ov119_021D0EB8(v1->unk_04.unk_00);
    ov119_021D17B8(&v1->unk_04);

    sub_0200569C();
    sub_02017798(ov119_021D0FD0, v1);

    return 1;
}

static int sub_02098304 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov119_021D0FD0 * v0;

    v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        if (sub_0200F2AC() == 1) {
            (*param1)++;
        }

        {
            int v1;

            v1 = GetMonData(v0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);

            sub_02078A4C(v0->unk_04.unk_3C, &v0->unk_6C, v1, 1);

            if (v1 == 490) {
                v0->unk_5C = 1;
            } else {
                v0->unk_5C = 0;
            }
        }
        break;
    case 1:
    {
        BOOL v2;

        v2 = ov119_021D191C(v0);

        if (v2 == 0) {
            (*param1)++;
            break;
        }

        sub_02007768(v0->unk_04.unk_38);
        ov119_021D1004();
    }
    break;
    default:
        if (sub_0200F2AC() == 1) {
            return 1;
        }

        break;
    }

    return 0;
}

static int sub_02098388 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov119_021D0FD0 * v0;

    v0 = sub_0200682C(param0);

    sub_020242C4(v0->unk_04.unk_34);

    GXLayers_EngineAToggleLayers(1, 0);
    GXLayers_EngineAToggleLayers(2, 0);
    GXLayers_EngineAToggleLayers(3, 0);
    GXLayers_EngineBToggleLayers(4, 0);

    sub_02002FA0(v0->unk_04.unk_04, 0);
    sub_02002FA0(v0->unk_04.unk_04, 2);
    sub_02002FA0(v0->unk_04.unk_04, 1);
    sub_02002FA0(v0->unk_04.unk_04, 3);
    sub_02002F54(v0->unk_04.unk_04);

    sub_02019044(v0->unk_04.unk_00, 1);
    sub_02019044(v0->unk_04.unk_00, 2);
    sub_02019044(v0->unk_04.unk_00, 3);
    sub_02019044(v0->unk_04.unk_00, 4);

    Heap_FreeToHeap(v0->unk_04.unk_00);
    sub_0201DC3C();
    sub_02007B6C(v0->unk_04.unk_38);
    sub_02015FB8(v0->unk_04.unk_54);
    NARC_dtor(v0->unk_04.unk_3C);

    ov119_021D1844(&v0->unk_04);

    sub_02006830(param0);
    Heap_Destroy(71);

    sub_02017798(NULL, NULL);
    sub_020177A4();

    return 1;
}

static BOOL sub_0209843C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0209843C * v0 = sub_02050A64(param0);

    switch (v0->unk_00) {
    case 0:
        ov5_021E771C(v0->unk_0C.unk_00, 11);
        sub_02055820(param0);
        v0->unk_00++;
        break;
    case 1:
        sub_02050A38(param0, &Unk_020F67FC, v0);
        v0->unk_00++;
        break;
    case 2:
    {
        UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

        {
            Pokemon *v2 = v0->unk_0C.unk_00;
            UnkStruct_02025E6C * v3 = sub_02025E38(sub_0203D174(v1));
            int v4 = 6;
            int v5 = sub_0203A138(v1->unk_1C->unk_00);
            int v6 = 11;
            int v7 = 0;

            sub_02074B30(v2, 76, &v7);
            sub_0209304C(v2, v3, v4, v5, v6);
            sub_02074B30(v2, 179, NULL);
        }

        {
            sub_0202F180(sub_0203D174(v1), v0->unk_0C.unk_00);
        }

        if (v0->unk_04 == 1) {
            v0->unk_00 = 3;
        } else {
            v0->unk_00 = 5;
        }
    }
    break;
    case 3:
    {
        UnkStruct_0203CDB0 * v8 = sub_02050A60(param0);
        int v9;

        v9 = GetMonData(v0->unk_0C.unk_00, MON_DATA_SPECIES, 0);

        v0->unk_08 = sub_0208712C(11, 1, v9, 10, sub_02025E44(sub_0203D174(v8)));
        v0->unk_08->unk_10 = GetMonData(v0->unk_0C.unk_00, MON_DATA_111, NULL);
        v0->unk_08->unk_08 = GetMonData(v0->unk_0C.unk_00, MON_DATA_FORM, NULL);
        sub_02050A38(param0, &Unk_020F2DAC, v0->unk_08);
        v0->unk_00++;
    }
    break;
    case 4:
        if (v0->unk_08->unk_14 == 0) {
            sub_02074B30(v0->unk_0C.unk_00, 120, v0->unk_08->unk_18);

            {
                UnkStruct_0203CDB0 * v10 = sub_02050A60(param0);
                UnkStruct_0202CD88 * v11 = sub_0202CD88(sub_0203D174(v10));

                sub_0202CF28(v11, (1 + 48));
            }
        }

        sub_0208716C(v0->unk_08);
        v0->unk_00++;
        break;
    case 5:
        sub_02055868(param0);
        v0->unk_00++;
        break;
    case 6:
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

void sub_020985AC (UnkStruct_020508D4 * param0, void * param1)
{
    UnkStruct_0209843C * v0;
    UnkStruct_0203E2FC * v1;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0209843C));
    memset(v0, 0, sizeof(UnkStruct_0209843C));

    v1 = (UnkStruct_0203E2FC *)param1;
    v0->unk_0C = *v1;

    sub_02050944(param0, sub_0209843C, v0);
}
