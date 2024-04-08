#include <nitro.h>
#include <string.h>

#include "message.h"
#include "strbuf.h"

#include "message.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "strbuf.h"

Strbuf* sub_0200B29C (StringFormatter * param0, MessageLoader * param1, u32 param2, u32 param3)
{
    Strbuf* v0 = NULL;
    Strbuf* v1;

    v1 = Strbuf_Init(1024, 0);

    if (v1) {
        Strbuf* v2 = MessageLoader_GetNewStrbuf(param1, param2);

        if (v2) {
            StringFormatter_Format(param0, v1, v2);
            v0 = Strbuf_Clone(v1, param3);
            Strbuf_Free(v2);
        }

        Strbuf_Free(v1);
    }

    return v0;
}

Strbuf* sub_0200B2EC (u32 param0, u32 param1)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 647, param1);

    if (v0) {
        Strbuf* v1 = Strbuf_Init(16, param1);

        if (v1) {
            MessageLoader_GetStrbuf(v0, param0, v1);
        }

        MessageLoader_Free(v0);
        return v1;
    }

    return NULL;
}

Strbuf* sub_0200B32C (u32 param0, u32 param1)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 412, param1);

    if (v0) {
        Strbuf* v1 = MessageLoader_GetNewStrbuf(v0, param0);

        MessageLoader_Free(v0);
        return v1;
    }

    return NULL;
}
