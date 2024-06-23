#include "overlay097/ov97_0222D2F8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "overlay097/ov97_0222D04C.h"

#include "unk_02032798.h"

static const CommCmdTable Unk_ov97_0223D704[] = {
    { ov97_0222D284, ov97_0222D2B0, ov97_0222D2B8 },
    { ov97_0222D2C4, sub_0203294C, NULL }
};

void ov97_0222D2F8(void *param0)
{
    int v0 = sizeof(Unk_ov97_0223D704) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_ov97_0223D704, v0, param0);
}
