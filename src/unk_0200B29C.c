#include <nitro.h>
#include <string.h>

#include "struct_decls/message_formatter.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/strbuf.h"

#include "message_data.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "strbuf.h"

Strbuf* sub_0200B29C (UnkStruct_0200B358 * param0, MessageFormatter * param1, u32 param2, u32 param3)
{
    Strbuf* v0 = NULL;
    Strbuf* v1;

    v1 = Strbuf_Init(1024, 0);

    if (v1) {
        Strbuf* v2 = MessageFormatter_AllocStrbuf(param1, param2);

        if (v2) {
            sub_0200C388(param0, v1, v2);
            v0 = Strbuf_Clone(v1, param3);
            Strbuf_Free(v2);
        }

        Strbuf_Free(v1);
    }

    return v0;
}

Strbuf* sub_0200B2EC (u32 param0, u32 param1)
{
    MessageFormatter * v0 = MessageFormatter_Init(1, 26, 647, param1);

    if (v0) {
        Strbuf* v1 = Strbuf_Init(16, param1);

        if (v1) {
            MessageFormatter_LoadStrbuf(v0, param0, v1);
        }

        MessageFormatter_Free(v0);
        return v1;
    }

    return NULL;
}

Strbuf* sub_0200B32C (u32 param0, u32 param1)
{
    MessageFormatter * v0 = MessageFormatter_Init(1, 26, 412, param1);

    if (v0) {
        Strbuf* v1 = MessageFormatter_AllocStrbuf(v0, param0);

        MessageFormatter_Free(v0);
        return v1;
    }

    return NULL;
}
