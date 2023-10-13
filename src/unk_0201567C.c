#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/sys_task.h"

#include "unk_02002F38.h"
#include "unk_0200679C.h"
#include "unk_0201567C.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_020241F0.h"

typedef void (* UnkFuncPtr_020157E4)(void *, u16 *);

typedef struct {
    SysTask * unk_00;
    UnkFuncPtr_020157E4 unk_04;
    UnkStruct_02002F38 * unk_08;
    u16 unk_0C[16];
    u16 unk_2C[16];
    u8 unk_4C;
    u8 unk_4D;
    u8 unk_4E;
    u8 unk_4F;
} UnkStruct_020157E4;

static void sub_0201576C(SysTask * param0, void * param1);
static u8 sub_020157E4(UnkStruct_020157E4 * param0);
static void sub_02015840(void * param0, u16 * param1);
static void sub_02015858(void * param0, u16 * param1);
static void sub_02015870(void * param0, u16 * param1);
static void sub_0201588C(void * param0, u16 * param1);

void * sub_0201567C (UnkStruct_02002F38 * param0, u16 param1, u16 param2, u32 param3)
{
    UnkStruct_020157E4 * v0;
    SysTask * v1;
    u16 * v2;

    v1 = sub_0200679C(sub_0201576C, sizeof(UnkStruct_020157E4), 0, param3);
    v0 = (UnkStruct_020157E4 *)sub_0201CED0(v1);

    if (param0 != NULL) {
        if (param1 == 0) {
            v2 = sub_02003164(param0, 0);
            v0->unk_04 = sub_02015870;
        } else {
            v2 = sub_02003164(param0, 1);
            v0->unk_04 = sub_0201588C;
        }
    } else {
        if (param1 == 0) {
            v2 = (u16 *)sub_020241F0();
            v0->unk_04 = sub_02015840;
        } else {
            v2 = (u16 *)sub_02024200();
            v0->unk_04 = sub_02015858;
        }
    }

    MI_CpuCopy16(&v2[param2 * 16], v0->unk_0C, 0x20);
    MI_CpuCopy16(&v2[param2 * 16], v0->unk_2C, 0x20);

    v0->unk_00 = v1;
    v0->unk_08 = param0;
    v0->unk_4C = param1;
    v0->unk_4D = param2;
    v0->unk_4E = 1;
    v0->unk_4F = 0;

    return v0;
}

void sub_02015738 (void * param0, u8 param1)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param0;

    switch (param1) {
    case 0:
        v0->unk_4E = 0;
        break;
    case 1:
        v0->unk_4E = 2;
        break;
    case 2:
        v0->unk_4E = 3;
    }
}

void sub_02015760 (void * param0)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param0;
    sub_020067D0(v0->unk_00);
}

static void sub_0201576C (SysTask * param0, void * param1)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param1;

    switch (v0->unk_4E) {
    case 0:
        v0->unk_4F = 0;
        v0->unk_4E = 1;
        break;
    case 1:
        if (sub_020157E4(v0) == 1) {
            v0->unk_04(v0, v0->unk_2C);
        }

        v0->unk_4F++;

        if (v0->unk_4F == 32) {
            v0->unk_4F = 0;
        }
        break;
    case 2:
        break;
    case 3:
        v0->unk_04(v0, v0->unk_0C);
        sub_020067D0(param0);
    }
}

static u8 sub_020157E4 (UnkStruct_020157E4 * param0)
{
    u32 v0;

    if (param0->unk_4F == 0) {
        for (v0 = 0; v0 < 16; v0++) {
            if ((0x7800 & (1 << v0)) == 0) {
                continue;
            }

            param0->unk_2C[v0] = param0->unk_0C[v0];
        }

        return 1;
    } else if (param0->unk_4F == 24) {
        for (v0 = 0; v0 < 16; v0++) {
            if ((0x7800 & (1 << v0)) == 0) {
                continue;
            }

            param0->unk_2C[v0] = param0->unk_0C[15];
        }

        return 1;
    }

    return 0;
}

static void sub_02015840 (void * param0, u16 * param1)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param0;
    sub_0201972C(0, param1, 0x20, v0->unk_4D * 0x20);
}

static void sub_02015858 (void * param0, u16 * param1)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param0;
    sub_0201972C(4, param1, 0x20, v0->unk_4D * 0x20);
}

static void sub_02015870 (void * param0, u16 * param1)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param0;
    sub_02002FBC(v0->unk_08, param1, 0, v0->unk_4D * 16, 0x20);
}

static void sub_0201588C (void * param0, u16 * param1)
{
    UnkStruct_020157E4 * v0 = (UnkStruct_020157E4 *)param0;
    sub_02002FBC(v0->unk_08, param1, 1, v0->unk_4D * 16, 0x20);
}
