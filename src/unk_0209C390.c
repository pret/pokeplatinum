#include "unk_0209C390.h"

#include <nitro.h>
#include <string.h>

#include "overlay065/ov65_0223648C.h"
#include "overlay065/struct_ov65_022366E4.h"
#include "overlay065/struct_ov65_02236744_decl.h"
#include "overlay065/struct_ov65_02236760.h"

#include "unk_02032798.h"
#include "unk_02039A58.h"

void sub_0209C390(UnkStruct_ov65_02236744 *param0)
{
    CommCmd_Init(sub_02039A58(), sub_02039A60(), param0);
}

void sub_0209C3AC(void)
{
    CommCmd_Init(sub_02039A58(), sub_02039A60(), NULL);
}

int sub_0209C3C4(void)
{
    return 0;
}

int sub_0209C3C8(void)
{
    return sizeof(UnkStruct_ov65_022366E4);
}

int sub_0209C3CC(void)
{
    return sizeof(UnkStruct_ov65_02236760);
}

void sub_0209C3D0(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov65_02236744 *v0 = param3;
    UnkStruct_ov65_022366E4 *v1 = param2;

    if (v0 == NULL) {
        return;
    }

    ov65_022366E4(v0, v1);
}

void sub_0209C3E0(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov65_02236744 *v0 = param3;

    if (v0 == NULL) {
        return;
    }

    ov65_02236744(v0);
}

void sub_0209C3F0(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov65_02236744 *v0 = param3;

    if (v0 == NULL) {
        return;
    }

    ov65_02236760(v0, param2);
}
