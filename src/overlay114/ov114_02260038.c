#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "overlay114/ov114_02260038.h"
#include "overlay114/ov114_02260044.h"

static const UnkStruct_02039A58 Unk_ov114_022603E4[] = {
    {ov114_02260090, ov114_0226007C, NULL},
    {ov114_022600A0, ov114_0226007C, NULL},
    {ov114_022600B0, ov114_0226007C, NULL},
    {ov114_022600BC, ov114_0226007C, NULL},
    {ov114_02260084, ov114_02260080, NULL},
};

const UnkStruct_02039A58 * ov114_02260038 (void)
{
    return Unk_ov114_022603E4;
}

int ov114_02260040 (void)
{
    return sizeof(Unk_ov114_022603E4) / sizeof(UnkStruct_02039A58);
}
