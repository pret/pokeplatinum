#include <nitro.h>
#include <string.h>

#include "message.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "strbuf.h"

#include "struct_defs/struct_02013A04_t.h"

#include "message.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "strbuf.h"

static ResourceMetadata * sub_02013AAC(ResourceMetadata * param0, u32 * param1);

ResourceMetadata * sub_02013A04 (u32 param0, u32 param1)
{
    ResourceMetadata * v0 = Heap_AllocFromHeap(param1, sizeof(ResourceMetadata) * (param0 + 1));

    if (v0) {
        u32 v1;

        for (v1 = 0; v1 < param0; v1++) {
            v0[v1].unk_00 = NULL;
            v0[v1].unk_04 = 0;
        }

        v0[v1].unk_00 = ((const void *)0xffffffff);
        v0[v1].unk_04 = param1;
    }

    return v0;
}

void sub_02013A3C (ResourceMetadata * param0)
{
    sub_02013AE8(param0);
    Heap_FreeToHeap(param0);
}

void sub_02013A4C (ResourceMetadata * param0, const MessageLoader * param1, u32 param2, u32 param3)
{
    u32 v0;

    param0 = sub_02013AAC(param0, &v0);

    if (param0) {
        param0->unk_00 = MessageLoader_GetNewStrbuf(param1, param2);
        param0->unk_04 = param3;
    }
}

void sub_02013A6C (ResourceMetadata * param0, const Strbuf *param1, u32 param2)
{
    u32 v0;

    param0 = sub_02013AAC(param0, &v0);

    if (param0) {
        param0->unk_00 = Strbuf_Clone(param1, v0);
        param0->unk_04 = param2;
    }
}

void sub_02013A90 (ResourceMetadata * param0, const ResourceMetadata * param1)
{
    u32 v0;

    param0 = sub_02013AAC(param0, &v0);

    if (param0) {
        param0->unk_00 = param1->unk_00;
        param0->unk_04 = param1->unk_04;
    }
}

static ResourceMetadata * sub_02013AAC (ResourceMetadata * param0, u32 * param1)
{
    ResourceMetadata * v0;

    while (param0->unk_00 != NULL) {
        if (param0->unk_00 == ((const void *)0xffffffff)) {
            GF_ASSERT(0);
            return NULL;
        }

        param0++;
    }

    v0 = param0;

    while (param0->unk_00 != ((const void *)0xffffffff)) {
        param0++;
    }

    *param1 = param0->unk_04;

    return v0;
}

void sub_02013AE8 (ResourceMetadata * param0)
{
    ResourceMetadata * v0 = param0;

    while (v0->unk_00 != ((const void *)0xffffffff)) {
        if (v0->unk_00 == NULL) {
            break;
        }

        Strbuf_Free((Strbuf *)(v0->unk_00));

        v0->unk_00 = NULL;
        v0++;
    }
}
