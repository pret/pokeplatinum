#include "overlay114/ov114_02260044.h"

#include <nitro.h>
#include <string.h>

#include "overlay114/ov114_0225C700.h"
#include "overlay114/ov114_02260038.h"
#include "overlay114/struct_ov114_0225D678_decl.h"
#include "overlay114/struct_ov114_0225E854_decl.h"

#include "unk_02032798.h"

void ov114_02260044(UnkStruct_ov114_0225E854 *param0)
{
    CommCmd_Init(ov114_02260038(), ov114_02260040(), param0);
}

void ov114_02260060(UnkStruct_ov114_0225D678 *param0)
{
    CommCmd_Init(ov114_02260038(), ov114_02260040(), param0);
}

int ov114_0226007C(void)
{
    return 0;
}

int ov114_02260080(void)
{
    return sizeof(u32);
}

void ov114_02260084(int param0, int param1, void *param2, void *param3)
{
    ov114_0225CA24(param3, *((u32 *)param2));
}

void ov114_02260090(int param0, int param1, void *param2, void *param3)
{
    ov114_0225CA2C(param3, param0, 1);
}

void ov114_022600A0(int param0, int param1, void *param2, void *param3)
{
    ov114_0225CA2C(param3, param0, 0);
}

void ov114_022600B0(int param0, int param1, void *param2, void *param3)
{
    ov114_0225CA44(param3, 1);
}

void ov114_022600BC(int param0, int param1, void *param2, void *param3)
{
    ov114_0225CA44(param3, 0);
}
