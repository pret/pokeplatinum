#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_02098700.h"
#include "unk_02098988.h"



typedef struct HeightWeightData {
    int * unk_00;
    int * unk_04;
    short * unk_08;
    short * unk_0C;
    short * unk_10;
    short * unk_14;
} HeightWeightData;

static int * sub_020988C8(NARC * param0, int param1);
static int * sub_020988D8(NARC * param0, int param1);
static void sub_020988E8(NARC * param0, short ** param1, short ** param2, int param3);
static void sub_02098910(NARC * param0, short ** param1, short ** param2, int param3);
static void sub_02098938(NARC * param0, short ** param1, short ** param2, int param3);
static void sub_02098960(NARC * param0, short ** param1, short ** param2, int param3);

HeightWeightData * Pokedex_HeightWeightData (int param0)
{
    HeightWeightData * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(HeightWeightData));
    memset(v0, 0, sizeof(HeightWeightData));

    return v0;
}

void Pokedex_HeightWeightData_Free (HeightWeightData * param0)
{
    GF_ASSERT(param0);

    Heap_FreeToHeap(param0);
    param0 = NULL;
}

void Pokedex_HeightWeightData_Load (HeightWeightData * param0, int param1, int param2)
{
    NARC * v0;
    u32 v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00 == NULL);
    GF_ASSERT(param0->unk_04 == NULL);

    v1 = sub_020989B8();
    v0 = NARC_ctor(v1, param2);

    param0->unk_00 = sub_020988C8(v0, param2);
    param0->unk_04 = sub_020988D8(v0, param2);

    if (param1 == 0) {
        sub_020988E8(v0, &param0->unk_08, &param0->unk_0C, param2);
        sub_02098938(v0, &param0->unk_10, &param0->unk_14, param2);
    } else {
        sub_02098910(v0, &param0->unk_08, &param0->unk_0C, param2);
        sub_02098960(v0, &param0->unk_10, &param0->unk_14, param2);
    }

    NARC_dtor(v0);
}

void Pokedex_HeightWeightData_Release (HeightWeightData * param0)
{
    GF_ASSERT(param0->unk_00);
    GF_ASSERT(param0->unk_04);

    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);

    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0->unk_0C);
    Heap_FreeToHeap(param0->unk_10);
    Heap_FreeToHeap(param0->unk_14);

    param0->unk_00 = NULL;
    param0->unk_04 = NULL;
    param0->unk_08 = NULL;
    param0->unk_0C = NULL;
    param0->unk_10 = NULL;
    param0->unk_14 = NULL;
}

int sub_02098808 (const HeightWeightData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);
    return param0->unk_00[param1];
}

int Pokedex_HeightWeightData_Weight (const HeightWeightData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04);
    return param0->unk_04[param1];
}

short sub_02098848 (const HeightWeightData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_08);
    return param0->unk_08[param1];
}

short sub_02098868 (const HeightWeightData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_0C);
    return param0->unk_0C[param1];
}

short sub_02098888 (const HeightWeightData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10);
    return param0->unk_10[param1];
}

short sub_020988A8 (const HeightWeightData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_14);
    return param0->unk_14[param1];
}

static int * sub_020988C8 (NARC * param0, int param1)
{
    void * v0;

    v0 = sub_0200723C(param0, 0, 0, param1, 0);
    return (int *)v0;
}

static int * sub_020988D8 (NARC * param0, int param1)
{
    void * v0;

    v0 = sub_0200723C(param0, 1, 0, param1, 0);
    return (int *)v0;
}

static void sub_020988E8 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 9, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 10, 0, param3, 0);
}

static void sub_02098910 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 7, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 8, 0, param3, 0);
}

static void sub_02098938 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 5, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 6, 0, param3, 0);
}

static void sub_02098960 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 3, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 4, 0, param3, 0);
}
