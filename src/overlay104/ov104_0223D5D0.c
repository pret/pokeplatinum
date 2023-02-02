#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_020203AC_decl.h"

#include "unk_02014000.h"
#include "heap.h"
#include "unk_02020020.h"
#include "unk_0202419C.h"
#include "overlay104/ov104_0223D5D0.h"

typedef struct UnkStruct_ov104_0223D5F0_t {
    UnkStruct_02014014 * unk_00[8];
    u16 unk_20;
} UnkStruct_ov104_0223D5F0;

static u32 ov104_0223D720(u32 param0, BOOL param1);
static u32 ov104_0223D744(u32 param0, BOOL param1);
static void ov104_0223D708(UnkStruct_02014014 * param0);

UnkStruct_ov104_0223D5F0 * ov104_0223D5D0 (int param0)
{
    UnkStruct_ov104_0223D5F0 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov104_0223D5F0));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223D5F0));

    v0->unk_20 = param0;
    sub_02014000();

    return v0;
}

void ov104_0223D5F0 (UnkStruct_ov104_0223D5F0 * param0)
{
    int v0;
    void * v1;

    for (v0 = 0; v0 < (((3 + 1) + 3) + 1); v0++) {
        if (param0->unk_00[v0] != NULL) {
            ov104_0223D708(param0->unk_00[v0]);
        }
    }

    Heap_FreeToHeap(param0);
}

UnkStruct_02014014 * ov104_0223D614 (UnkStruct_ov104_0223D5F0 * param0, int param1, int param2, int param3)
{
    UnkStruct_02014014 * v0;
    void * v1;
    UnkStruct_020203AC * v2;
    void * v3;

    GF_ASSERT(param0->unk_00[param1] == NULL);

    v1 = Heap_AllocFromHeap(param0->unk_20, 0x4800);
    v0 = sub_02014014(ov104_0223D720, ov104_0223D744, v1, 0x4800, 1, param0->unk_20);
    v2 = sub_02014784(v0);

    sub_020206BC((FX32_ONE), (FX32_ONE * 900), v2);
    sub_02014788(v0, param3);

    v3 = sub_020144C4(157, param2, param0->unk_20);
    sub_020144CC(v0, v3, (1 << 1) | (1 << 3), 1);

    param0->unk_00[param1] = v0;
    return v0;
}

void ov104_0223D68C (UnkStruct_ov104_0223D5F0 * param0, int param1)
{
    GF_ASSERT(param0->unk_00[param1] != NULL);

    ov104_0223D708(param0->unk_00[param1]);
    param0->unk_00[param1] = NULL;
}

int ov104_0223D6A8 (void)
{
    int v0;

    sub_020241B4();

    if (sub_02014680() == 0) {
        return 0;
    }

    v0 = sub_0201469C();

    if (v0 > 0) {
        sub_020241B4();
    }

    sub_020146C0();

    return 1;
}

UnkStruct_02014014 * ov104_0223D6D0 (UnkStruct_ov104_0223D5F0 * param0, int param1)
{
    GF_ASSERT(param0->unk_00[param1] != NULL);
    return param0->unk_00[param1];
}

BOOL ov104_0223D6E4 (UnkStruct_ov104_0223D5F0 * param0)
{
    int v0;

    for (v0 = 0; v0 < (((3 + 1) + 3) + 1); v0++) {
        if (param0->unk_00[v0] != NULL) {
            if (sub_02014710(param0->unk_00[v0]) > 0) {
                return 0;
            }
        }
    }

    return 1;
}

static void ov104_0223D708 (UnkStruct_02014014 * param0)
{
    void * v0;

    v0 = sub_02014730(param0);

    sub_0201411C(param0);
    Heap_FreeToHeap(v0);
}

static u32 ov104_0223D720 (u32 param0, BOOL param1)
{
    u32 v0;
    NNSGfdTexKey v1;

    v1 = NNS_GfdAllocTexVram(param0, param1, 0);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_TEXKEY);

    sub_020145B4(v1);

    v0 = NNS_GfdGetTexKeyAddr(v1);
    return v0;
}

static u32 ov104_0223D744 (u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, NNS_GFD_ALLOC_FROM_LOW);

    if (v0 == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(FALSE);
    }

    sub_020145F4(v0);
    v1 = NNS_GfdGetPlttKeyAddr(v0);

    return v1;
}
