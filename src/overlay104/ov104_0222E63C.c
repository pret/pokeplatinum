#include <nitro.h>
#include <string.h>

#include "message.h"
#include "struct_decls/struct_0209B75C_decl.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_022320B4_decl.h"

#include "overlay104/const_ov104_0223F674.h"
#include "overlay104/const_ov104_0223F63C.h"

#include "overlay104/struct_ov104_0222E8C8.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "narc.h"
#include "message.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "strbuf.h"
#include "unk_0209B6F8.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222EA90.h"
#include "overlay104/ov104_0223D860.h"

static BOOL ov104_0222E7CC(UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_0222E930 * param1);
static void ov104_0222E7FC(UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_0222E930 * param1);
static void ov104_0222E82C(UnkStruct_ov104_022320B4 * param0, u16 param1, u32 * param2, void * param3);
static void ov104_0222E830(u8 ** param0, MessageLoader ** param1, int param2, int param3);
static void ov104_0222E904(UnkStruct_ov104_0222E930 * param0, int param1);

UnkStruct_ov104_022320B4 * ov104_0222E63C (UnkStruct_0209B75C * param0, int param1, int param2)
{
    UnkStruct_ov104_022320B4 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov104_022320B4));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_022320B4));

    v0->unk_00 = param0;
    v0->unk_34 = param1;
    v0->unk_52 = param2;

    ov104_0222E830(&v0->unk_40, &v0->unk_3C, param2, param1);

    v0->unk_44 = sub_0200B368(8, 64, param1);
    v0->unk_48 = Strbuf_Init(1024, param1);
    v0->unk_4C = Strbuf_Init(1024, param1);

    ov104_0222E82C(v0, param2, NULL, NULL);

    return v0;
}

BOOL ov104_0222E6A8 (UnkStruct_ov104_022320B4 * param0)
{
    int v0;
    UnkStruct_ov104_0222E930 * v1;

    if (param0->unk_51 == 0) {
        return 1;
    }

    switch (param0->unk_38) {
    case 0:
        for (v0 = 0; v0 < 8; v0++) {
            v1 = param0->unk_04[v0];

            if (v1 != NULL) {
                if (ov104_0222E988(v1) == 0) {
                    ov104_0222E7FC(param0, v1);
                    param0->unk_04[v0] = NULL;
                    param0->unk_51--;
                }
            }
        }

        ov104_0223D8C4(param0->unk_00);
        break;
    default:
        break;
    }

    if (param0->unk_51 == 0) {
        return 1;
    }

    return 0;
}

void ov104_0222E710 (UnkStruct_ov104_022320B4 * param0)
{
    GF_ASSERT(param0->unk_51 == 0);

    sub_0200B3F0(param0->unk_44);
    Strbuf_Free(param0->unk_48);
    Strbuf_Free(param0->unk_4C);
    Heap_FreeToHeap(param0->unk_40);
    MessageLoader_Free(param0->unk_3C);

    Heap_FreeToHeap(param0);
}

void ov104_0222E748 (UnkStruct_ov104_022320B4 * param0, int param1, int param2)
{
    UnkStruct_ov104_0222E930 * v0;

    v0 = Heap_AllocFromHeap(param0->unk_34, sizeof(UnkStruct_ov104_0222E930));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0222E930));

    ov104_0222E930(v0, Unk_ov104_0223F674, Unk_ov104_0223F63C);

    v0->unk_00 = param0;

    if ((param1 == 0xffff) || (param0->unk_52 == param1)) {
        v0->unk_84 = param0->unk_40;
        v0->unk_80 = param0->unk_3C;
    } else {
        ov104_0222E830(&v0->unk_84, &v0->unk_80, param1, param0->unk_34);
    }

    ov104_0222E968(v0, v0->unk_84);
    ov104_0222E904(v0, param2);
    ov104_0222E7CC(param0, v0);
}

static BOOL ov104_0222E7CC (UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_0222E930 * param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_04[v0] == NULL) {
            param0->unk_04[v0] = param1;
            param0->unk_51++;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static void ov104_0222E7FC (UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_0222E930 * param1)
{
    if (param1->unk_80 != param0->unk_3C) {
        MessageLoader_Free(param1->unk_80);
    }

    if (param1->unk_84 != param0->unk_40) {
        Heap_FreeToHeap(param1->unk_84);
    }

    Heap_FreeToHeap(param1);
}

static void ov104_0222E82C (UnkStruct_ov104_022320B4 * param0, u16 param1, u32 * param2, void * param3)
{
    if (param2 != NULL) {
        (void)0;
    }
}

static void ov104_0222E830 (u8 ** param0, MessageLoader ** param1, int param2, int param3)
{
    int v0, v1;

    v0 = ov104_0222EA90(param2, 1);
    v1 = ov104_0222EA90(param2, 2);

    *param0 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FRONTIER__SCRIPT__FR_SCRIPT, v0, param3);
    *param1 = MessageLoader_Init(1, 26, v1, param3);
}

void ov104_0222E86C (UnkStruct_ov104_022320B4 * param0, int param1, int param2)
{
    int v0;
    UnkStruct_ov104_0222E930 * v1;
    int v2, v3;
    MessageLoader * v4;

    v2 = ov104_0222EA90(param0->unk_52, 2);
    v3 = ov104_0222EA90(param1, 2);

    if (v2 == v3) {
        return;
    }

    v4 = MessageLoader_Init(1, 26, v3, param2);

    for (v0 = 0; v0 < 8; v0++) {
        v1 = param0->unk_04[v0];

        if (v1 != NULL) {
            if (v1->unk_80 == param0->unk_3C) {
                v1->unk_80 = v4;
            }
        }
    }

    MessageLoader_Free(param0->unk_3C);
    param0->unk_3C = v4;
}

UnkStruct_ov104_0222E8C8 * ov104_0222E8C8 (UnkStruct_ov104_022320B4 * param0, int param1)
{
    UnkStruct_ov104_0222E8C8 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov104_0222E8C8));
    *v0 = param0->unk_24;

    return v0;
}

void ov104_0222E8E8 (UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_0222E8C8 * param1)
{
    param0->unk_24 = *param1;
    Heap_FreeToHeap(param1);
}

static void ov104_0222E904 (UnkStruct_ov104_0222E930 * param0, int param1)
{
    param0->unk_1C += (param1 * 4);
    param0->unk_1C += ov104_0222EA60(param0);
}

u16 * ov104_0222E91C (UnkStruct_ov104_022320B4 * param0, int param1)
{
    return &param0->unk_24.unk_00[param1];
}

UnkStruct_ov104_0223C4CC * ov104_0222E924 (UnkStruct_ov104_022320B4 * param0)
{
    return sub_0209B974(param0->unk_00);
}
