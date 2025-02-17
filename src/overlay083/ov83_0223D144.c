#include "overlay083/ov83_0223D144.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "overlay083/ov83_0223D150.h"

#include "poffin.h"

static const CommCmdTable Unk_ov83_02240390[] = {
    { ov83_0223D204, ov83_0223D4AC, NULL },
    { ov83_0223D210, ov83_0223D4AC, NULL },
    { ov83_0223D21C, ov83_0223D4B4, NULL },
    { ov83_0223D258, ov83_0223D4B8, NULL },
    { ov83_0223D2E8, ov83_0223D4BC, NULL },
    { ov83_0223D3D8, ov83_0223D4C0, NULL },
    { ov83_0223D3F8, Poffin_SizeOf, NULL },
    { ov83_0223D410, ov83_0223D4B0, NULL },
    { ov83_0223D430, ov83_0223D4B0, NULL },
    { ov83_0223D354, ov83_0223D4C4, NULL },
    { ov83_0223D3A8, ov83_0223D4C8, NULL }
};

const CommCmdTable *ov83_0223D144(void)
{
    return Unk_ov83_02240390;
}

int ov83_0223D14C(void)
{
    return sizeof(Unk_ov83_02240390) / sizeof(CommCmdTable);
}
