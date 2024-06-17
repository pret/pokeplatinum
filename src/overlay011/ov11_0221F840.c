#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"
#include "camera.h"

#include "unk_02014000.h"
#include "heap.h"
#include "camera.h"
#include "unk_0202419C.h"
#include "overlay011/ov11_0221F840.h"

static u32 ov11_0221F914(u32 param0, BOOL param1);
static u32 ov11_0221F930(u32 param0, BOOL param1);

UnkStruct_02014014 * ov11_0221F840 (int param0)
{
    UnkStruct_02014014 * v0;
    void * v1;
    UnkStruct_020203AC * v2;

    v1 = Heap_AllocFromHeap(param0, 0x4800);
    v0 = sub_02014014(ov11_0221F914, ov11_0221F930, v1, 0x4800, 1, param0);
    v2 = sub_02014784(v0);

    if (v2 != NULL) {
        sub_020206BC((FX32_ONE), (FX32_ONE * 900), v2);
    }

    return v0;
}

UnkStruct_02014014 * ov11_0221F888 (int param0)
{
    UnkStruct_02014014 * v0;
    void * v1;
    UnkStruct_020203AC * v2;

    v1 = Heap_AllocFromHeap(param0, 0x4200);

    if (v1 == NULL) {
        return NULL;
    }

    v0 = sub_02014014(ov11_0221F914, ov11_0221F930, v1, 0x4200, 1, param0);
    v2 = sub_02014784(v0);

    if (v2 != NULL) {
        sub_020206BC((FX32_ONE), (FX32_ONE * 900), v2);
    }

    return v0;
}

void ov11_0221F8D8 (UnkStruct_02014014 * param0)
{
    void * v0;

    v0 = sub_02014730(param0);

    sub_0201411C(param0);
    Heap_FreeToHeap(v0);
}

void ov11_0221F8F0 (void)
{
    int v0;
    const MtxFx43 * v1;

    sub_020241B4();

    if (sub_02014680() == 0) {
        return;
    }

    v0 = sub_0201469C();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    sub_020146C0();
}

static u32 ov11_0221F914 (u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;
    u32 v1;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    sub_020145B4(v0);
    v1 = NNS_GfdGetTexKeyAddr(v0);

    return v1;
}

static u32 ov11_0221F930 (u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, 0);
    sub_020145F4(v0);
    v1 = NNS_GfdGetPlttKeyAddr(v0);

    return v1;
}
