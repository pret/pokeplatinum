#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021EF3BC_decl.h"
#include "overlay005/struct_ov5_021EF43C_decl.h"

#include "overlay005/funcptr_ov5_021EF418.h"

#include "unk_02017728.h"
#include "heap.h"
#include "overlay005/ov5_021EF3A8.h"

typedef struct UnkStruct_ov5_021EF43C_t {
    u32 unk_00;
    void * unk_04;
    UnkFuncPtr_ov5_021EF418 unk_08;
};

typedef struct UnkStruct_ov5_021EF3BC_t {
    u32 unk_00;
    UnkStruct_ov5_021EF43C unk_04[2];
};

static void ov5_021EF444(UnkStruct_ov5_021EF3BC * param0);
static void ov5_021EF46C(UnkStruct_ov5_021EF43C * param0);
static void ov5_021EF47C(void * param0);
static void ov5_021EF498(UnkStruct_ov5_021EF43C * param0, void * param1);
static UnkStruct_ov5_021EF43C * ov5_021EF49C(UnkStruct_ov5_021EF3BC * param0);

UnkStruct_ov5_021EF3BC * ov5_021EF3A8 (u32 param0)
{
    UnkStruct_ov5_021EF3BC * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021EF3BC));
    ov5_021EF444(v0);

    return v0;
}

void ov5_021EF3BC (UnkStruct_ov5_021EF3BC * param0)
{
    if (param0 == NULL) {
        return;
    }

    if (param0->unk_00 == 1) {
        ov5_021EF3FC(param0);
    }

    ov5_021EF444(param0);
    FreeToHeap(param0);
}

void ov5_021EF3DC (UnkStruct_ov5_021EF3BC * param0)
{
    BOOL v0;

    v0 = sub_020177BC(ov5_021EF47C, param0);

    GF_ASSERT(v0 == 1);
    param0->unk_00 = 1;
}

void ov5_021EF3FC (UnkStruct_ov5_021EF3BC * param0)
{
    BOOL v0;

    v0 = sub_020177BC(NULL, NULL);

    GF_ASSERT(v0 == 1);
    param0->unk_00 = 0;
}

UnkStruct_ov5_021EF43C * ov5_021EF418 (UnkStruct_ov5_021EF3BC * param0, UnkFuncPtr_ov5_021EF418 param1, void * param2)
{
    UnkStruct_ov5_021EF43C * v0;

    v0 = ov5_021EF49C(param0);

    GF_ASSERT(v0);

    if (v0) {
        v0->unk_04 = param2;
        v0->unk_08 = param1;
        v0->unk_00 = 1;
    }

    return v0;
}

void ov5_021EF43C (UnkStruct_ov5_021EF43C * param0)
{
    ov5_021EF46C(param0);
}

static void ov5_021EF444 (UnkStruct_ov5_021EF3BC * param0)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_ov5_021EF3BC));
    param0->unk_00 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        ov5_021EF46C(&param0->unk_04[v0]);
    }
}

static void ov5_021EF46C (UnkStruct_ov5_021EF43C * param0)
{
    param0->unk_00 = 0;
    param0->unk_08 = ov5_021EF498;
    param0->unk_04 = NULL;
}

static void ov5_021EF47C (void * param0)
{
    int v0;
    UnkStruct_ov5_021EF3BC * v1 = param0;

    for (v0 = 0; v0 < 2; v0++) {
        v1->unk_04[v0].unk_08(&v1->unk_04[v0], v1->unk_04[v0].unk_04);
    }
}

static void ov5_021EF498 (UnkStruct_ov5_021EF43C * param0, void * param1)
{
    (void)0;
}

static UnkStruct_ov5_021EF43C * ov5_021EF49C (UnkStruct_ov5_021EF3BC * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_04[v0].unk_00 == 0) {
            return &param0->unk_04[v0];
        }
    }

    return NULL;
}
