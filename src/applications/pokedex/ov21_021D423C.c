#include "applications/pokedex/ov21_021D423C.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "applications/pokedex/struct_ov21_021D4660.h"

#include "heap.h"

typedef struct UnkStruct_ov21_021D423C_t {
    UnkStruct_ov21_021D4660 *unk_00;
    int unk_04;
    UnkStruct_ov21_021D4660 *unk_08;
} UnkStruct_ov21_021D423C;

static BOOL ov21_021D42EC(UnkStruct_ov21_021D423C *param0);
static UnkStruct_ov21_021D4660 *ov21_021D42FC(UnkStruct_ov21_021D423C *param0, int param1);
static void ov21_021D4334(UnkStruct_ov21_021D423C *param0, UnkStruct_ov21_021D4660 *param1);

UnkStruct_ov21_021D423C *ov21_021D423C(enum HeapID heapID)
{
    UnkStruct_ov21_021D423C *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D423C));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D423C));

    return v0;
}

void ov21_021D426C(UnkStruct_ov21_021D423C *param0, UnkStruct_ov21_021D4660 *param1, int param2)
{
    GF_ASSERT(param0);

    param0->unk_00 = param1;
    param0->unk_04 = param2;
}

const UnkStruct_ov21_021D4660 *ov21_021D4284(UnkStruct_ov21_021D423C *param0, int param1)
{
    UnkStruct_ov21_021D4660 *v0;
    BOOL v1;

    GF_ASSERT(param0);

    if (ov21_021D42EC(param0) == 0) {
        v0 = ov21_021D42FC(param0, param1);

        if (v0) {
            ov21_021D4334(param0, v0);
        }
    }

    if (ov21_021D42EC(param0) == 1) {
        v1 = param0->unk_08->unk_04(&param0->unk_08->unk_08);

        if (v1 == 1) {
            ov21_021D4334(param0, NULL);
        }
    }

    return param0->unk_08;
}

BOOL ov21_021D42D4(UnkStruct_ov21_021D423C *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_08) {
        return 1;
    }

    return 0;
}

static BOOL ov21_021D42EC(UnkStruct_ov21_021D423C *param0)
{
    if (param0->unk_08) {
        return 1;
    }

    return 0;
}

static UnkStruct_ov21_021D4660 *ov21_021D42FC(UnkStruct_ov21_021D423C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        GF_ASSERT(param0->unk_00);

        if (param0->unk_00[v0].unk_00 & param1) {
            return param0->unk_00 + v0;
        }
    }

    return NULL;
}

static void ov21_021D4334(UnkStruct_ov21_021D423C *param0, UnkStruct_ov21_021D4660 *param1)
{
    param0->unk_08 = param1;

    if (param0->unk_08) {
        param0->unk_08->unk_08.unk_00 = 0;
    }
}
