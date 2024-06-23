#include "unk_02039A58.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "unk_0209C390.h"

static const CommCmdTable Unk_020E5F24[] = {
    { sub_0209C3D0, sub_0209C3C8, NULL },
    { sub_0209C3E0, sub_0209C3C4, NULL },
    { sub_0209C3F0, sub_0209C3CC, NULL }
};

const CommCmdTable *sub_02039A58(void)
{
    return Unk_020E5F24;
}

int sub_02039A60(void)
{
    return sizeof(Unk_020E5F24) / sizeof(CommCmdTable);
}
