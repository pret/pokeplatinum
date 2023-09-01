#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0203CDB0_sub2_t.h"

#include "unk_02002B7C.h"
#include "message.h"
#include "map_header.h"
#include "strbuf.h"
#include "unk_02071CFC.h"

u32 sub_02071CFC (MessageLoader * param0, const int param1, Strbuf *param2)
{
    u32 v0;

    MessageLoader_GetStrbuf(param0, param1, param2);
    v0 = sub_02002D7C(0, param2, 0);

    return v0;
}

void sub_02071D10 (const int param0, const u32 param1, Strbuf *param2)
{
    int v0;
    MessageLoader * v1;

    v1 = MessageLoader_Init(1, 26, 433, param1);
    v0 = sub_0203A138(param0);

    sub_02071CFC(v1, v0, param2);
    MessageLoader_Free(v1);
}
