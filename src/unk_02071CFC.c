#include "unk_02071CFC.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system_sub2_t.h"

#include "font.h"
#include "map_header.h"
#include "message.h"
#include "strbuf.h"

u32 sub_02071CFC(MessageLoader *param0, const int param1, Strbuf *param2)
{
    u32 v0;

    MessageLoader_GetStrbuf(param0, param1, param2);
    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param2, 0);

    return v0;
}

void sub_02071D10(const int param0, const u32 param1, Strbuf *param2)
{
    int v0;
    MessageLoader *v1;

    v1 = MessageLoader_Init(1, 26, 433, param1);
    v0 = MapHeader_GetMapLabelTextID(param0);

    sub_02071CFC(v1, v0, param2);
    MessageLoader_Free(v1);
}
