#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"

#include "overlay005/struct_ov5_021EEC68.h"
#include "overlay005/struct_ov5_021EED38.h"
#include "overlay005/struct_ov5_021EF13C.h"
#include "overlay005/struct_ov5_021EF13C_sub1.h"

#include "narc.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "overlay005/ov5_021EEF34.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov5_021EEF98;

typedef struct {
    FSFile unk_00;
    int unk_AC;
    UnkStruct_ov5_021EEF98 unk_B0;
    BOOL unk_C8;
    u8 unk_CC;
    u8 * unk_D0;
    UnkStruct_ov5_021EF13C * unk_D4;
    BOOL unk_D8;
    int * unk_DC;
    NARC * unk_E0;
    int unk_E4;
    int * unk_E8;
} UnkStruct_ov5_021EF05C;

static void ov5_021EEF98(const UnkStruct_ov5_021EEF98 * param0, UnkStruct_ov5_021EF13C * param1, void ** param2);
static void ov5_021EEFF8(NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2);
static void ov5_021EF008(NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2);
static void ov5_021EF01C(NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2);
static void ov5_021EF02C(NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2);
static void ov5_021EF03C(NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2);
static void ov5_021EF04C(NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2);

static void ov5_021EEF34 (NARC * param0, UnkStruct_ov5_021EEF98 * param1)
{
    u16 v0[4];

    MI_CpuClear32(param1, sizeof(UnkStruct_ov5_021EEF98));

    NARC_ReadFile(param0, 4, v0);
    NARC_ReadFile(param0, 2, &param1->unk_00);
    NARC_ReadFile(param0, 2, &param1->unk_04);
    NARC_ReadFile(param0, 2, &param1->unk_08);
    NARC_ReadFile(param0, 2, &param1->unk_0C);
    NARC_ReadFile(param0, 2, &param1->unk_10);
    NARC_ReadFile(param0, 2, &param1->unk_14);
}

static void ov5_021EEF98 (const UnkStruct_ov5_021EEF98 * param0, UnkStruct_ov5_021EF13C * param1, void ** param2)
{
    void * v0;
    int v1;
    u8 v2;

    v1 = 0;

    v0 = &((u8 *)(*param2))[0];
    param1->unk_10 = v0;
    v1 += (sizeof(UnkStruct_ov5_021EEC68) * param0->unk_00);

    v0 = &((u8 *)(*param2))[v1];
    param1->unk_14 = v0;
    v1 += (sizeof(VecFx32) * param0->unk_04);

    v0 = &((u8 *)(*param2))[v1];
    param1->unk_04 = v0;
    v1 += (sizeof(fx32) * param0->unk_08);

    v0 = &((u8 *)(*param2))[v1];
    param1->unk_00 = v0;
    v1 += (sizeof(UnkStruct_ov5_021EF13C_sub1) * param0->unk_0C);

    v0 = &((u8 *)(*param2))[v1];
    param1->unk_08 = v0;
    v1 += sizeof(UnkStruct_ov5_021EED38) * param0->unk_10;

    v0 = &((u8 *)(*param2))[v1];
    param1->unk_0C = v0;
    v1 += sizeof(u16) * param0->unk_14;

    GF_ASSERT(v1 <= 0x9000);
}

static void ov5_021EEFF8 (NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2)
{
    NARC_ReadFile(param0, sizeof(UnkStruct_ov5_021EEC68) * param2->unk_00, param1->unk_10);
}

static void ov5_021EF008 (NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2)
{
    NARC_ReadFile(param0, sizeof(VecFx32) * param2->unk_04, param1->unk_14);
}

static void ov5_021EF01C (NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2)
{
    NARC_ReadFile(param0, sizeof(fx32) * param2->unk_08, param1->unk_04);
}

static void ov5_021EF02C (NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2)
{
    NARC_ReadFile(param0, sizeof(UnkStruct_ov5_021EF13C_sub1) * param2->unk_0C, param1->unk_00);
}

static void ov5_021EF03C (NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2)
{
    NARC_ReadFile(param0, sizeof(UnkStruct_ov5_021EED38) * param2->unk_10, param1->unk_08);
}

static void ov5_021EF04C (NARC * param0, UnkStruct_ov5_021EF13C * param1, const UnkStruct_ov5_021EEF98 * param2)
{
    NARC_ReadFile(param0, sizeof(u16) * param2->unk_14, param1->unk_0C);
}

static void ov5_021EF05C (UnkStruct_0201CD38 * param0, void * param1)
{
    BOOL v0;
    UnkStruct_ov5_021EF05C * v1;

    v1 = (UnkStruct_ov5_021EF05C *)param1;

    if (v1->unk_D8 == 1) {
        v1->unk_CC = 2;
    }

    switch (v1->unk_CC) {
    case 0:
        if (*v1->unk_E8) {
            v0 = 0;
            break;
        }

        ov5_021EEF34(v1->unk_E0, &v1->unk_B0);
        v1->unk_D4->unk_1C = v1->unk_B0.unk_10;
        ov5_021EEF98(&v1->unk_B0, v1->unk_D4, (void **)&v1->unk_D0);
        v0 = 1;
        break;
    case 1:
        ov5_021EEFF8(v1->unk_E0, v1->unk_D4, &v1->unk_B0);
        ov5_021EF008(v1->unk_E0, v1->unk_D4, &v1->unk_B0);
        ov5_021EF01C(v1->unk_E0, v1->unk_D4, &v1->unk_B0);
        ov5_021EF02C(v1->unk_E0, v1->unk_D4, &v1->unk_B0);
        ov5_021EF03C(v1->unk_E0, v1->unk_D4, &v1->unk_B0);
        ov5_021EF04C(v1->unk_E0, v1->unk_D4, &v1->unk_B0);
        v0 = 1;
        break;
    case 2:
        *v1->unk_DC = 0;
        Heap_FreeToHeap((void *)param1);
        sub_0200DA58(param0);
        return;
    }

    if (v0 == 1) {
        v1->unk_CC++;

        if (v1->unk_CC == 2) {
            v1->unk_D4->unk_18 = 1;
        }
    }
}

UnkStruct_ov5_021EF13C * ov5_021EF13C (void)
{
    UnkStruct_ov5_021EF13C * v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021EF13C));

    v0->unk_10 = NULL;
    v0->unk_14 = NULL;
    v0->unk_00 = NULL;
    v0->unk_08 = NULL;
    v0->unk_0C = NULL;
    v0->unk_0C = NULL;
    v0->unk_18 = 0;
    v0->unk_1C = 0;

    return v0;
}

void ov5_021EF158 (NARC * param0, const int param1, UnkStruct_ov5_021EF13C * param2, u8 * param3)
{
    if (1) {
        char v0[256];
        UnkStruct_ov5_021EEF98 * v1;

        v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021EEF98));

        ov5_021EEF34(param0, v1);
        param2->unk_1C = v1->unk_10;
        ov5_021EEF98(v1, param2, (void **)&param3);

        ov5_021EEFF8(param0, param2, v1);
        ov5_021EF008(param0, param2, v1);
        ov5_021EF01C(param0, param2, v1);
        ov5_021EF02C(param0, param2, v1);
        ov5_021EF03C(param0, param2, v1);
        ov5_021EF04C(param0, param2, v1);

        {
            int v2;

            for (v2 = 0; v2 < v1->unk_00; v2++) {
                (void)0;
            }

            for (v2 = 0; v2 < v1->unk_04; v2++) {
                (void)0;
            }

            for (v2 = 0; v2 < v1->unk_08; v2++) {
                (void)0;
            }

            for (v2 = 0; v2 < v1->unk_0C; v2++) {
                (void)0;
            }

            for (v2 = 0; v2 < v1->unk_10; v2++) {
                (void)0;
            }

            for (v2 = 0; v2 < v1->unk_14; v2++) {
                (void)0;
            }
        }

        Heap_FreeToHeap(v1);
        param2->unk_18 = 1;
    }
}

void ov5_021EF1D0 (UnkStruct_ov5_021EF13C * param0)
{
    if (param0 == NULL) {
        return;
    }

    Heap_FreeToHeap(param0);
    param0 = NULL;
}

void ov5_021EF1DC (UnkStruct_ov5_021EF13C * param0)
{
    if (param0 == NULL) {
        return;
    }

    param0->unk_18 = 0;
    param0->unk_10 = NULL;
    param0->unk_14 = NULL;
    param0->unk_00 = NULL;
    param0->unk_08 = NULL;
    param0->unk_0C = NULL;
}

UnkStruct_0201CD38 * ov5_021EF1F0 (NARC * param0, const int param1, UnkStruct_ov5_021EF13C * param2, int * param3, u8 ** param4, int * param5)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_ov5_021EF05C * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021EF05C));

    if (v1 == NULL) {
        (void)0;
    }

    v1->unk_CC = 0;
    v1->unk_E0 = param0;
    v1->unk_E4 = param1;
    v1->unk_D4 = param2;
    v1->unk_DC = param3;
    v1->unk_D8 = 0;
    v1->unk_C8 = 0;
    v1->unk_AC = 0;
    v1->unk_D0 = *param4;
    v1->unk_E8 = param5;

    v0 = sub_0200D9E8(ov5_021EF05C, (void *)v1, 1);
    return v0;
}

void ov5_021EF23C (UnkStruct_0201CD38 * param0)
{
    UnkStruct_ov5_021EF05C * v0;

    v0 = (UnkStruct_ov5_021EF05C *)sub_0201CED0(param0);
    v0->unk_D8 = 1;
}

void ov5_021EF248 (UnkStruct_ov5_021EF13C * param0)
{
    param0->unk_18 = 0;
}
