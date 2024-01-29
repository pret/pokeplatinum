#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "overlay023/struct_ov23_0224271C.h"
#include "overlay023/struct_ov23_02250CD4.h"
#include "overlay023/funcptr_ov23_022515D8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200A9DC.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_02020020.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_0202854C.h"
#include "unk_020329E0.h"
#include "unk_02033200.h"
#include "unk_02034198.h"
#include "unk_0203CC84.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_02057518.h"
#include "unk_0205E7D0.h"
#include "unk_0206A780.h"
#include "unk_0206A8DC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_0225128C.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/ov23_02254A14.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_022513B0;

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08;
} UnkStruct_ov23_02251ACC;

typedef struct {
    int unk_00;
    UnkStruct_0203CDB0 * unk_04;
    UIControlData * unk_08;
    UnkStruct_ov23_022513B0 unk_0C;
    SysTask * unk_10;
} UnkStruct_ov23_02252038;

static void ov23_022520E8(UnkStruct_0203CDB0 * param0, UnkStruct_ov23_022513B0 * param1);
static void ov23_02251F94(UnkStruct_0203CDB0 * param0);
static void ov23_022521C8(UnkStruct_ov23_02250CD4 * param0);

static const UnkStruct_ov61_0222C884 Unk_ov23_022569C8 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

void ov23_0225128C (UnkStruct_ov23_02250CD4 * param0, int param1, int param2, int param3)
{
    if (param2 <= param3) {
        return;
    }

    if (param1 != 0) {
        sub_0206A8C4(param0->unk_08, 0, 1);
    } else {
        sub_0206A8C4(param0->unk_08, 0, 0);
    }

    if (param2 != (param1 + param3)) {
        sub_0206A8C4(param0->unk_08, 1, 1);
    } else {
        sub_0206A8C4(param0->unk_08, 1, 0);
    }

    sub_0206A870(param0->unk_08);
}

int ov23_022512D4 (UnkStruct_ov23_0224271C * param0, int param1)
{
    int v0;
    int v1 = param0->unk_00;
    int v2 = param0->unk_02;
    int v3 = 0;

    if (param1 != -1) {
        if (param1 != 0) {
            return 0xff;
        }
    }

    if (v2 == 12) {
        v3 = 0;
    } else if (v2 == (12 + 32)) {
        v3 = 8;
    } else {
        return 0xff;
    }

    if ((v1 == 15) || (v1 == (15 + 1))) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if ((v1 == (15 + 32)) || (v1 == ((15 + 32) + 1))) {
            return v0 + v3;
        }

        v1 -= 32;
    }

    return 0xff;
}

BOOL ov23_02251324 (int param0, UnkStruct_ov23_0224271C * param1)
{
    int v0;
    int v1 = param1->unk_00;
    int v2 = param1->unk_02;
    UnkStruct_ov23_022513B0 v3;
    int v4 = ov23_022512D4(param1, sub_02058F80(param0));

    if (sub_02058F50(v4) == -1) {
        v4 = 0xff;
    }

    if (v4 != 0xff) {
        sub_02059058(param0, 0);

        v3.unk_01 = v4;
        v3.unk_00 = param0;
        v3.unk_02 = 0;

        if (v4 != param0) {
            if (!ov23_0224AEA4(param0)) {
                v3.unk_02 = 1;
            } else {
                (void)0;
            }
        } else {
            if (ov23_0224AEA4(param0)) {
                u8 v5 = 3;
                ov23_0224A570(param0, 1, &v5, NULL);
                return 1;
            } else {
                (void)0;
            }
        }

        sub_02035B48(83, &v3);
        return 1;
    }

    return 0;
}

static void ov23_022513A4 (int param0)
{
    sub_0205948C(0x40);
}

void ov23_022513B0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_022513B0 * v0 = param2;
    UnkStruct_0203CDB0 * v1 = param3;

    if (!sub_02035EE0()) {
        return;
    }

    if (v0->unk_00 == sub_0203608C()) {
        if (v0->unk_01 == sub_0203608C()) {
            Sound_PlayEffect(1548);
            sub_020594FC();
            ov23_02251F94(v1);
        } else {
            sub_02059464(0x40);

            if (v0->unk_02) {
                ov23_022520E8(v1, v0);
            } else {
                ov23_02253F40(ov23_022421AC(), 9, 1, ov23_022513A4);
            }
        }
    } else {
        (void)0;
    }

    if (v0->unk_02) {
        (void)0;
    }
}

int ov23_02251414 (void)
{
    return sizeof(UnkStruct_ov23_022513B0);
}

static BOOL ov23_02251418 (int param0, UnkStruct_ov23_02250CD4 * param1)
{
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(param1->unk_0C));
    int v1;

    v1 = sub_02028B88(v0, param0);

    if (sub_0202895C(v0, v1)) {
        sub_02028B94(v0, param0);
        return 1;
    }

    return 0;
}

static int ov23_0225144C (int param0, UnkStruct_ov23_02250CD4 * param1)
{
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(param1->unk_0C));
    int v1;

    if (sub_02028AFC(v0, param0)) {
        return -1;
    }

    v1 = sub_020289B8(v0, param0);

    if (ov23_0224F744(v1)) {
        sub_020289C4(v0, param0);
        return 1;
    }

    return 0;
}

static void ov23_0225148C (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 * v0 = (UnkStruct_ov23_02250CD4 *)sub_02001504(param0, 19);
    int v1 = param1;

    if (param1 == 0xfffffffe) {
        v1 = 5;
    }

    ov23_02253F60(ov23_022421BC(), 6 + v1, 0, NULL);
}

static void ov23_022514B0 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 * v0 = (UnkStruct_ov23_02250CD4 *)sub_02001504(param0, 19);
    int v1 = param1;

    if (param1 == 0xfffffffe) {
        v1 = 3;
    }

    ov23_02253F60(ov23_022421BC(), 44 + v1, 0, NULL);
}

static BOOL ov23_022514D8 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02250CD4 * v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = sub_02001288(v0->unk_48);
    sub_020014DC(v0->unk_48, &v2, &v3);

    ov23_022430E0(23, v3, v2);
    ov23_022521C8(v0);

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1550);
        v0->unk_2AA = 2;
        break;
    case 0:
    {
        UnkStruct_020298B0 * v4 = sub_020298B0(v0->unk_0C->unk_0C);

        if (0 == sub_020289A0(v4)) {
            ov23_02253F40(ov23_022421BC(), 60, 0, NULL);
            v0->unk_2AA = 23;
        } else if (sub_02033DFC()) {
            ov23_02243204();
            v0->unk_2AA = 3;
        } else {
            ov23_02253F40(ov23_022421BC(), 56, 0, NULL);
            v0->unk_2AA = 23;
        }
    }
    break;
    case 4:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 8;
        break;
    case 3:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 6;
        break;
    case 1:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 17;
        break;
    case 2:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 20;
        break;
    default:
        break;
    }

    return 1;
}

static void ov23_022515D8 (UnkStruct_ov23_02250CD4 * param0, int param1, int param2, UnkFuncPtr_ov23_022515D8 param3, int param4)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1 = param2 + 1;
    BOOL v2 = 1;

    if (3 > sub_0202958C(sub_020298A0(param0->unk_0C->unk_0C))) {
        v2 = 0;
        v1 -= 1;
    }

    ov23_0224FB7C(param0);

    param0->unk_40 = sub_02013A04(v1, 4);

    BGL_AddWindow(param0->unk_0C->unk_08, &param0->unk_10, 3, 17, 3, 14, v1 * 2, 13, 2);
    Window_Show(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader * v3;
        int v4 = 0;

        v3 = MessageLoader_Init(0, 26, 639, 4);

        for (v4 = 0; v4 < v1; v4++) {
            if (v4 == (v1 - 1)) {
                sub_02013A4C(param0->unk_40, v3, param1 + 5, 0xfffffffe);
            } else {
                sub_02013A4C(param0->unk_40, v3, param1 + v4, v4);
            }
        }

        MessageLoader_Free(v3);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(UnkStruct_ov84_02240FA8));

    v0.unk_10 = v1;
    v0.unk_12 = v1;
    v0.unk_00 = param0->unk_40;
    v0.unk_0C = &param0->unk_10;

    if (param3) {
        v0.unk_04 = param3;
    }

    v0.unk_1C = param0;
    ov23_02251238(param0, v1, v0.unk_10);
    param0->unk_48 = sub_0200112C(&v0, param0->unk_294, param0->unk_290, 4);
}

static void ov23_022516E8 (UnkStruct_ov23_02250CD4 * param0, int param1, int param2, UnkFuncPtr_ov23_022515D8 param3, int param4)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1 = param2 + 1;
    BOOL v2 = 1;

    ov23_0224FB7C(param0);

    param0->unk_40 = sub_02013A04(v1, 4);

    BGL_AddWindow(param0->unk_0C->unk_08, &param0->unk_10, 3, 17, 3, 14, v1 * 2, 13, (2 + 14 * 16));
    Window_Show(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader * v3;
        int v4 = 0;

        v3 = MessageLoader_Init(0, 26, 639, 4);

        for (v4 = 0; v4 < v1; v4++) {
            if (v4 == param2) {
                sub_02013A4C(param0->unk_40, v3, param1 + v4, 0xfffffffe);
            } else {
                sub_02013A4C(param0->unk_40, v3, param1 + v4, v4);
            }
        }

        MessageLoader_Free(v3);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(UnkStruct_ov84_02240FA8));

    v0.unk_10 = param2 + 1;
    v0.unk_12 = v1;
    v0.unk_00 = param0->unk_40;
    v0.unk_0C = &param0->unk_10;

    if (param3) {
        v0.unk_04 = param3;
    }

    v0.unk_1C = param0;
    ov23_02251238(param0, v1, v0.unk_10);
    param0->unk_48 = sub_0200112C(&v0, param0->unk_294, param0->unk_290, 4);
}

static BOOL ov23_022517E0 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02250CD4 * v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = sub_02001288(v0->unk_48);
    sub_020014DC(v0->unk_48, &v2, &v3);

    ov23_022430E0(22, v3, v2);
    ov23_022521C8(v0);

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 0;
        break;
    case 0:
        if (sub_02033DFC()) {
            v0->unk_2AA = 11;
        } else {
            v0->unk_2AA = 10;
        }
        break;
    case 1:
        if (sub_02033DFC()) {
            v0->unk_2AA = 13;
        } else {
            v0->unk_2AA = 12;
        }
        break;
    case 2:
        if (sub_02033DFC()) {
            v0->unk_2AA = 15;
        } else {
            v0->unk_2AA = 14;
        }
        break;
    default:
        v0->unk_2AA = 2;
        break;
    }

    return 1;
}

static BOOL ov23_02251894 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02250CD4 * v0 = param1;
    u32 v1, v2;
    u16 v3, v4;

    v1 = ov23_02248D20(v0->unk_4C);

    sub_020014DC(v0->unk_4C->unk_0C, &v3, &v4);
    ov23_022430E0(2, v4, v3);

    if (v1 == 0xfffffffe) {
        v1 = 0xfffffffe;
    }

    switch (v1) {
    case 0xffffffff:
        ov23_0225128C(v0, v3, sub_02001504(v0->unk_4C->unk_0C, 2), 6);
        return 0;
    case 0xfffffffe:
        ov23_02254044(ov23_022421DC());
        v0->unk_2AA = 0;
        break;
    default:
        ov23_02254044(ov23_022421DC());
        v2 = ov23_0224F61C(v1, v0);

        if (ov23_02251418(v1, v0)) {
            ov23_022540F4(ov23_022421BC(), v2);
            ov23_02253F40(ov23_022421BC(), 37, 0, NULL);
        } else {
            ov23_02253F40(ov23_022421BC(), 38, 0, NULL);
        }

        v0->unk_2AA = 19;
        ov23_0224FB7C(v0);
        break;
    }

    return 1;
}

static BOOL ov23_02251960 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02250CD4 * v0 = param1;
    u32 v1, v2;
    u16 v3, v4;
    int v5;

    v1 = ov23_02248D20(v0->unk_4C);

    sub_020014DC(v0->unk_4C->unk_0C, &v3, &v4);
    ov23_022430E0(6, v4, v3);

    if (v1 == 0xfffffffe) {
        v1 = 0xfffffffe;
    }

    switch (v1) {
    case 0xffffffff:
        ov23_0225128C(v0, v3, sub_02001504(v0->unk_4C->unk_0C, 2), 6);
        return 0;
    case 0xfffffffe:
        ov23_02254044(ov23_022421DC());
        v0->unk_2AA = 0;
        break;
    default:
        ov23_02254044(ov23_022421DC());
        v2 = ov23_0224F5F0(v1, v0);
        v5 = ov23_0225144C(v1, v0);

        if (1 == v5) {
            ov23_022540F4(ov23_022421BC(), v2);
            ov23_02253F40(ov23_022421BC(), 36, 0, NULL);
        } else if (-1 == v5) {
            ov23_02253F40(ov23_022421BC(), 55, 0, NULL);
        } else {
            ov23_02253F40(ov23_022421BC(), 39, 0, NULL);
        }

        v0->unk_2AA = 22;
        ov23_0224FB7C(v0);
        break;
    }

    sub_0206A8C4(v0->unk_08, 0, 0);
    sub_0206A8C4(v0->unk_08, 1, 0);

    return 1;
}

static BOOL ov23_02251A58 (UnkStruct_ov23_02250CD4 * param0)
{
    if (ov23_02254238(ov23_022421BC()) == 0) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov23_02254044(ov23_022421BC());
            return 1;
        }
    }

    return 0;
}

static void ov23_02251A84 (BOOL param0, UnkStruct_0203CDB0 * param1)
{
    VecFx32 v0;

    v0.y = 0;
    v0.x = 15 * FX32_ONE * 16 - sub_0205EABC(param1->unk_3C) * FX32_ONE * 16;
    v0.z = 17 * FX32_ONE * 16 - sub_0205EAC8(param1->unk_3C) * FX32_ONE * 16;

    if (!param0) {
        v0.x = -v0.x;
        v0.z = -v0.z;
    }

    sub_02020990(&v0, param1->unk_24);
}

static BOOL ov23_02251ACC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_ov23_02251ACC * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 v2;
    u32 v3;
    BOOL v4 = 0;
    int v5;

    switch (v1->unk_00) {
    case 0:
        Sound_PlayEffect(1549);
        sub_0200F174(2, 0, 0, 0x0, 6, 1, 4);
        v1->unk_00 = 1;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            sub_0205EB18(v0->unk_3C, 0);

            ov23_02251A84(1, v0);
            v1->unk_00 = 2;
        }
        break;
    case 2:
        ov23_02254D98(v0, param0);
        v1->unk_00 = 3;
        break;
    case 3:
        v1->unk_00 = 4;
        break;
    case 4:
        sub_0205EB18(v0->unk_3C, 1);
        ov23_02251A84(0, v0);
        sub_0200F174(1, 1, 1, 0x0, 6, 1, 4);
        v1->unk_00 = 5;
        break;
    case 5:
        if (ScreenWipe_Done()) {
            ov23_0224B2C8(v0);
            sub_0206AA30(sub_020507E4(v0->unk_0C));
            ov23_02251F94(v0);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

static void ov23_02251BB4 (SysTask * param0, UnkStruct_ov23_02250CD4 * param1)
{
    Strbuf_Free(param1->unk_68);
    Strbuf_Free(param1->unk_6C);
    sub_0200B3F0(param1->unk_70);

    if (param1->unk_260 != NULL) {
        param1->unk_260(0);
    }

    if (param1->unk_08) {
        sub_0206A844(param1->unk_08);
        param1->unk_08 = NULL;
    }

    ov23_0224FB7C(param1);
    ov23_02254044(ov23_022421BC());

    SysTask_Done(param0);
    Heap_FreeToHeap(param1);
}

static void ov23_02251C04 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02250CD4 * v0 = param1;
    u32 v1;
    UnkStruct_ov23_02251ACC * v2;

    switch (v0->unk_2AA) {
    case 0:
        ov23_02252E18(param1);
        v0->unk_290 = ov23_0224318C(23);
        v0->unk_294 = ov23_02243154(23);
        v0->unk_2AE = v0->unk_290;
        ov23_022515D8(param1, 0, 5, ov23_0225148C, 0);
        v0->unk_2AA = 1;
        break;
    case 1:
        ov23_022514D8(param0, param1);
        break;
    case 2:
        sub_02059514();
        ov23_02243204();
        ov23_02251BB4(param0, v0);
        break;
    case 6:
        ov23_0224FB7C(param1);
        ov23_02254044(ov23_022421BC());
        v0->unk_270 = ov23_02253C64(v0->unk_0C->unk_08, sub_02025E38(sub_0203D174(v0->unk_0C)), sub_020298B0(sub_0203D174(v0->unk_0C)), NULL, NULL);
        v0->unk_2AA = 7;
        break;
    case 7:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov23_02253D10(v0->unk_270);
            v0->unk_270 = NULL;
            v0->unk_2AA = 0;
        }
        break;
    case 8:
        ov23_02254044(ov23_022421BC());
        v0->unk_290 = ov23_0224318C(22);
        v0->unk_294 = ov23_02243154(22);
        v0->unk_2AE = v0->unk_290;
        ov23_022516E8(param1, 40, 3, ov23_022514B0, 1);
        v0->unk_2AA = 9;
        break;
    case 9:
        ov23_022517E0(param0, param1);
        break;
    case 10:
        ov23_0224FB7C(v0);
        ov23_02242FF8();
        ov23_022412F0();
        sub_0200AAE0(1, -6, 0, GX_BLEND_PLANEMASK_BG0, 1);
        ov23_02253F40(ov23_022421BC(), 48, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 11:
        ov23_02253F40(ov23_022421BC(), 57, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 12:
        ov23_0224FB7C(v0);
        ov23_02242FD0();
        ov23_02241E6C();
        sub_0200AAE0(1, -6, 0, GX_BLEND_PLANEMASK_BG0, 1);
        ov23_02253F40(ov23_022421BC(), 49, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 13:
        ov23_02253F40(ov23_022421BC(), 58, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 14:
        ov23_0224FB7C(v0);
        ov23_02242FE4();
        ov23_02245728();
        sub_0200AAE0(1, -6, 0, GX_BLEND_PLANEMASK_BG0, 1);
        ov23_02253F40(ov23_022421BC(), 50, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 15:
        ov23_02253F40(ov23_022421BC(), 59, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 16:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                if (!sub_02033DFC()) {
                    sub_0200AAE0(1, 0, -6, GX_BLEND_PLANEMASK_BG0, 1);
                }

                ov23_02254044(ov23_022421BC());

                if (sub_02033DFC()) {
                    ov23_02242FA8();
                } else {
                    ov23_02242FBC();
                }

                ov23_02245784();
                ov23_02241364();
                ov23_02241ED0();

                v0->unk_2AA = 8;
            }
        }
        break;
    case 3:
        if (v0->unk_0C->unk_10 == NULL) {
            v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_02251ACC));
            MI_CpuClear8(v2, sizeof(UnkStruct_ov23_02251ACC));
            v2->unk_00 = 0;
            v2->unk_04 = 0;
            sub_02050904(v0->unk_0C, ov23_02251ACC, v2);
        }

        ov23_02251BB4(param0, v0);
        break;
    case 17:
        v0->unk_290 = ov23_0224318C(2);
        v0->unk_294 = ov23_02243154(2);
        ov23_02250D2C(param1);
        ov23_02252D74(param1, 28);
        v0->unk_2AA = 18;
        break;
    case 18:
        ov23_02251894(param0, param1);
        break;
    case 19:
        if (ov23_02251A58(v0)) {
            v0->unk_2AA = 17;
        }
        break;
    case 20:
        v0->unk_290 = ov23_0224318C(6);
        v0->unk_294 = ov23_02243154(6);
        ov23_02250D5C(param1);
        ov23_02252D74(param1, 32);
        v0->unk_2AA = 21;
        break;
    case 21:
        ov23_02251960(param0, param1);
        break;
    case 22:
        if (ov23_02251A58(v0)) {
            v0->unk_2AA = 20;
        }
        break;
    case 23:
        if (ov23_02251A58(v0)) {
            v0->unk_2AA = 0;
        }
        break;
    }
}

static void ov23_02251F94 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov84_02240FA8 v0;
    UnkStruct_ov23_02250CD4 * v1;
    const int v2 = 6;

    ov23_022430D0(1);

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02250CD4));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02250CD4));
    v1->unk_0C = param0;

    ov23_02253DFC(ov23_022421BC(), 639, 1);

    v1->unk_2AA = 0;
    v1->unk_68 = Strbuf_Init((50 * 2), 4);
    v1->unk_6C = Strbuf_Init((50 * 2), 4);
    v1->unk_70 = sub_0200B358(4);
    v1->unk_08 = sub_0206A780(4);

    sub_0206A8A0(v1->unk_08, 200, 20, 122);
    sub_0206A8C4(v1->unk_08, 0, 0);
    sub_0206A8C4(v1->unk_08, 1, 0);

    v1->unk_04 = SysTask_Start(ov23_02251C04, v1, 10000);

    ov23_022431EC(v1, v1->unk_04, ov23_02251270);
}

static void ov23_02252038 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02252038 * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_08 = sub_02002100(v0->unk_04->unk_08, &Unk_ov23_022569C8, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_00 = 1;
        }
        break;
    case 1:
        v1 = sub_02002114(v0->unk_08, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            sub_020360D0(89, &v0->unk_0C);
        } else {
            sub_0205948C(0x40);
            ov23_02254044(ov23_0224219C());
        }

        v0->unk_00 = 2;
        v0->unk_08 = NULL;
        break;
    case 2:
        Heap_FreeToHeap(v0);
        ov23_02243204();
        SysTask_Done(param0);
        break;
    }
}

static void ov23_022520C8 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02252038 * v0 = param1;

    if (v0->unk_08) {
        sub_02002154(v0->unk_08, 4);
    }

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

static void ov23_022520E8 (UnkStruct_0203CDB0 * param0, UnkStruct_ov23_022513B0 * param1)
{
    UnkStruct_ov23_02252038 * v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02250CD4));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02252038));

    v0->unk_00 = 0;
    v0->unk_04 = param0;
    v0->unk_10 = SysTask_Start(ov23_02252038, v0, 10000);

    ov23_02254068(ov23_0224219C(), sub_02032EE8(param1->unk_01));
    ov23_02253F40(ov23_0224219C(), 67, 0, NULL);

    v0->unk_0C.unk_00 = param1->unk_00;
    v0->unk_0C.unk_01 = param1->unk_01;
    v0->unk_0C.unk_02 = param1->unk_02;

    ov23_022431EC(v0, v0->unk_10, ov23_022520C8);
}

void ov23_0225215C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_022513B0 * v0 = param2;

    if (ov23_0224AEC4(v0->unk_00, v0->unk_01)) {
        sub_02035B48(90, v0);
    }
}

void ov23_02252178 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0203CDB0 * v0 = param3;
    UnkStruct_ov23_022513B0 * v1 = param2;

    if (sub_0203608C() == v1->unk_00) {
        ov23_02254068(ov23_022421AC(), sub_02032EE8(v1->unk_01));
        ov23_02253F40(ov23_022421AC(), 8, 1, ov23_022513A4);
        Sound_PlayBGM(1061);
    }

    ov23_0224AEC4(v1->unk_00, v1->unk_01);
    ov23_0224D500(v1->unk_00, v1->unk_01);
}

static void ov23_022521C8 (UnkStruct_ov23_02250CD4 * param0)
{
    u16 v0;

    v0 = param0->unk_2AE;
    sub_020014D0(param0->unk_48, &param0->unk_2AE);

    if (v0 != param0->unk_2AE) {
        Sound_PlayEffect(1500);
    }

    return;
}
