#include "string_list.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "message.h"
#include "strbuf.h"

static StringList *FindFirstEmptyEntry(StringList *param0, u32 *param1);
static void FreeEntries(StringList *param0);

StringList *StringList_New(u32 param0, u32 param1)
{
    StringList *v0 = Heap_AllocFromHeap(param1, sizeof(StringList) * (param0 + 1));

    if (v0) {
        u32 v1;

        for (v1 = 0; v1 < param0; v1++) {
            v0[v1].entry = NULL;
            v0[v1].index = 0;
        }

        v0[v1].entry = ((const void *)0xffffffff);
        v0[v1].index = param1;
    }

    return v0;
}

void StringList_Free(StringList *param0)
{
    FreeEntries(param0);
    Heap_FreeToHeap(param0);
}

void StringList_AddFromMessageBank(StringList *param0, const MessageLoader *param1, u32 param2, u32 param3)
{
    u32 v0;

    param0 = FindFirstEmptyEntry(param0, &v0);

    if (param0) {
        param0->entry = MessageLoader_GetNewStrbuf(param1, param2);
        param0->index = param3;
    }
}

void StringList_AddFromStrbuf(StringList *param0, const Strbuf *param1, u32 param2)
{
    u32 v0;

    param0 = FindFirstEmptyEntry(param0, &v0);

    if (param0) {
        param0->entry = Strbuf_Clone(param1, v0);
        param0->index = param2;
    }
}

void StringList_AddFromEntry(StringList *param0, const StringList *param1)
{
    u32 v0;

    param0 = FindFirstEmptyEntry(param0, &v0);

    if (param0) {
        param0->entry = param1->entry;
        param0->index = param1->index;
    }
}

static StringList *FindFirstEmptyEntry(StringList *param0, u32 *param1)
{
    StringList *v0;

    while (param0->entry != NULL) {
        if (param0->entry == ((const void *)0xffffffff)) {
            GF_ASSERT(0);
            return NULL;
        }

        param0++;
    }

    v0 = param0;

    while (param0->entry != ((const void *)0xffffffff)) {
        param0++;
    }

    *param1 = param0->index;

    return v0;
}

static void FreeEntries(StringList *param0)
{
    StringList *v0 = param0;

    while (v0->entry != ((const void *)0xffffffff)) {
        if (v0->entry == NULL) {
            break;
        }

        Strbuf_Free((Strbuf *)(v0->entry));

        v0->entry = NULL;
        v0++;
    }
}
