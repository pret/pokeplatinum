#include <nitro.h>
#include <string.h>

#include "overlay115/struct_ov115_0226095C_decl.h"

#include "overlay115/struct_ov115_02265AD0.h"
#include "overlay115/struct_ov115_02265AD4.h"

#include "unk_02032798.h"
#include "communication_system.h"
#include "overlay115/ov115_02260440.h"
#include "overlay115/ov115_02265A18.h"
#include "overlay115/ov115_02265A24.h"

void ov115_02265A24 (UnkStruct_ov115_0226095C * param0)
{
    sub_02032798(ov115_02265A18(), ov115_02265A20(), param0);
}

int ov115_02265A40 (void)
{
    return 0;
}

void ov115_02265A44 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;
    ov115_0226095C(v0);
}

void ov115_02265A50 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;
    ov115_02260964(v0);
}

void ov115_02265A5C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;

    ov115_02260988(v0, param2, param0);

    if (CommSys_CurNetId() == 0) {
        ov115_0226096C(v0, param2, param0);
    }
}

void ov115_02265A84 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;

    ov115_02260994(v0, *((u32 *)param2), param0);
}

void ov115_02265A94 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;
    ov115_022609B4(v0, param2, param0);
}

void ov115_02265AA4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;
    u32 v1;

    v1 = *((u32 *)param2);
    ov115_022609E4(v0, v1, param0);
}

void ov115_02265AB4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;
    ov115_02260A48(v0);
}

void ov115_02265AC0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov115_0226095C * v0 = param3;
    u32 v1;

    v1 = *((u32 *)param2);

    if (param0 == 0) {
        ov115_022609D8(v0, v1);
    }
}

int ov115_02265AD0 (void)
{
    return sizeof(UnkStruct_ov115_02265AD0);
}

int ov115_02265AD4 (void)
{
    return sizeof(UnkStruct_ov115_02265AD4);
}

int ov115_02265AD8 (void)
{
    return sizeof(u32);
}

int ov115_02265ADC (void)
{
    return sizeof(u32);
}
