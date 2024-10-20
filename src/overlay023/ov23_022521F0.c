#include "overlay023/ov23_022521F0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/ov23_0225426C.h"
#include "overlay023/ov23_0225429C.h"
#include "overlay023/struct_ov23_02250CD4.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_system.h"
#include "heap.h"
#include "map_header_data.h"
#include "map_object.h"
#include "message.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202631C.h"
#include "unk_0202854C.h"
#include "unk_020573FC.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
} UnkStruct_ov23_02257674;

static void ov23_02252D1C(UnkStruct_ov23_02250CD4 *param0);
static void ov23_02252C78(UnkStruct_ov23_02250CD4 *param0);

UnkStruct_ov23_02257674 Unk_ov23_02257674[] = {
    { 0x0, 0x48, 0x68 },
    { 0x0, 0x1A8, 0x57 },
    { 0x0, 0xC8, 0xB9 },
    { 0x0, 0x14F, 0x108 },
    { 0x0, 0xAF, 0x117 },
    { 0x0, 0x1A8, 0x1B7 },
    { 0x0, 0x57, 0x1C8 },
    { 0x0, 0x137, 0x166 },
    { 0x1, 0xE8, 0x57 },
    { 0x1, 0x148, 0x97 },
    { 0x1, 0xE8, 0xD7 },
    { 0x1, 0xE8, 0x12A },
    { 0x1, 0x117, 0x148 },
    { 0x1, 0x117, 0x1C8 },
    { 0x1, 0xB7, 0x188 },
    { 0x1, 0x117, 0xF5 },
    { 0x2, 0x28, 0x1D7 },
    { 0x2, 0x1D7, 0x48 },
    { 0x2, 0x1D7, 0x1D7 },
    { 0x2, 0x28, 0x48 }
};

static const UnkStruct_ov61_0222C884 Unk_ov23_022569D8 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void ov23_022521F0(UnkStruct_ov23_02250CD4 *param0, int param1)
{
    MATHRandContext16 v0;
    int v1, v2, v3, v4, v5;
    UndergroundData *v6 = sub_020298B0(FieldSystem_SaveData(param0->fieldSystem));

    MATH_InitRand16(&v0, sub_02028930(v6) + param1);

    for (v5 = 0; v5 < 5; v5++) {
        if (v5 == 0) {
            v1 = 33;
        } else {
            v1 = MATH_Rand16(&v0, 34 - 1) + 1;
        }

        for (v4 = 0; v4 < v5; v4++) {
            if (param0->unk_274[v4] == v1) {
                v1 = 0;
            }
        }

        if (v1 == 0) {
            v5--;
            continue;
        }

        v3 = ov23_022542AC(v1);
        v2 = ov23_022542BC(v1);

        if ((v3 == 0) && (v2 == 0)) {
            v5--;
            continue;
        }

        param0->unk_274[v5] = v1;
        param0->unk_279[v5] = ov23_0225429C(v1);

        if (param0->unk_279[v5] == 6) {
            param0->unk_279[v5] = MATH_Rand16(&v0, 6 - 1) + 1;
        }

        param0->unk_27E[v5] = MATH_Rand16(&v0, v2 - v3) + v3;
    }
}

static void ov23_022522F0(UnkStruct_ov23_02250CD4 *param0, int param1)
{
    MATHRandContext16 v0;
    int v1, v2, v3, v4, v5;
    SaveData *v6 = FieldSystem_SaveData(param0->fieldSystem);
    UndergroundData *v7 = sub_020298B0(v6);
    BOOL v8 = sub_02027474(SaveData_Pokedex(v6));

    MATH_InitRand16(&v0, sub_02028930(v7) + param1);

    for (v5 = 0; v5 < 5; v5++) {
        v1 = MATH_Rand16(&v0, 139 - 1) + 1;

        for (v4 = 0; v4 < v5; v4++) {
            if (param0->unk_274[v4] == v1) {
                v1 = 0;
            }
        }

        if (v1 == 0) {
            v5--;
            continue;
        }

        param0->unk_274[v5] = v1;
        param0->unk_279[v5] = sub_0205742C(v1);

        if ((v8 == 0) && (1 == sub_0205747C(v1))) {
            v5--;
            continue;
        }

        if (param0->unk_279[v5] == 0) {
            v5--;
            continue;
        } else if (param0->unk_279[v5] == 6) {
            param0->unk_279[v5] = MATH_Rand16(&v0, 6 - 1) + 1;
        }

        v3 = sub_0205743C(v1);
        v2 = sub_0205744C(v1);

        param0->unk_27E[v5] = MATH_Rand16(&v0, v2 - v3) + v3;
    }
}

static int ov23_02252404(UnkStruct_ov23_02250CD4 *param0, int param1, int param2)
{
    BOOL v0 = 0;
    UndergroundData *v1 = sub_020298B0(FieldSystem_SaveData(param0->fieldSystem));

    if (param0->unk_279[param1] != ov23_0224F684(param2, param0)) {
        return 0xfffd;
    }

    if (param0->unk_27E[param1] > ov23_0224F69C(param2, param0)) {
        return 0xfffb;
    }

    if (param0->unk_2AC == 1) {
        v0 = sub_02028E84(v1, param0->unk_274[param1]);
    } else if (param0->unk_2AC == 0) {
        v0 = sub_02028BC8(v1, param0->unk_274[param1]);
    } else if (param0->unk_2AC == 2) {
        v0 = sub_02028DB4(v1, param0->unk_274[param1]);
    }

    if (v0) {
        sub_02028C6C(v1, param2);
    } else {
        return 0xfffc;
    }

    return param0->unk_274[param1];
}

static void *ov23_022524B8(UnkStruct_ov23_02250CD4 *param0)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1 = 3;

    if (param0->unk_2AC == 2) {
        v1 = 2;
    }

    ov23_0224FB7C(param0);

    param0->unk_40 = sub_02013A04(v1, 4);

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_10, 3, 19, 3, 12, v1 * 2, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - 12 * 6));
    Window_Show(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        int v2, v3;

        if (param0->unk_2AC == 1) {
            v3 = 13;
            ov23_022521F0(param0, param0->unk_288);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3, 0);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 1, 1);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 2, 0xfffffffe);
        } else if (param0->unk_2AC == 0) {
            v3 = 16;
            ov23_022522F0(param0, param0->unk_288);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3, 0);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 1, 1);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 2, 0xfffffffe);
        } else {
            v3 = 28;
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), 28, 0);
            sub_02013A4C(param0->unk_40, ov23_02253E3C(ov23_022421BC()), 22, 0xfffffffe);
        }
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(UnkStruct_ov84_02240FA8));

    v0.unk_00 = param0->unk_40;
    v0.unk_0C = &param0->unk_10;
    v0.unk_10 = v1;
    v0.unk_12 = v1;

    param0->unk_294 = ov23_02243154(19);
    param0->unk_290 = ov23_0224318C(19);

    ov23_02251238(param0, v0.unk_12, v0.unk_10);

    param0->unk_48 = sub_0200112C(&v0, param0->unk_294, param0->unk_290, 4);
    param0->unk_2AE = param0->unk_290;

    sub_0201A954(&param0->unk_10);

    return param0;
}

static void ov23_0225265C(BmpList *param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)sub_02001504(param0, 19);
    u32 v1 = param1;

    BGL_FillWindow(&v0->unk_20, 15);
    MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), 23 + v0->unk_2AB, v0->unk_68);
    Text_AddPrinterWithParams(&v0->unk_20, FONT_SYSTEM, v0->unk_68, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    if (param1 != 0xfffffffe) {
        StringTemplate_SetUndergroundItemName(v0->unk_70, 2, v0->unk_279[v1]);
        StringTemplate_SetNumber(v0->unk_70, 6, v0->unk_27E[v1], 2, 1, 1);
        MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), 25, v0->unk_68);
        StringTemplate_Format(v0->unk_70, v0->unk_6C, v0->unk_68);
        Text_AddPrinterWithParams(&v0->unk_20, FONT_SYSTEM, v0->unk_6C, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);
    } else {
        (void)0;
    }

    sub_0201A9A4(&v0->unk_20);

    if (v1 == 0xfffffffe) {
        v1 = 0xfffffffe;
    }

    if (v0->unk_2AC == 1) {
        ov23_0224FD84(param0, v1, param2);
    } else if (v0->unk_2AC == 0) {
        ov23_02250C3C(param0, v1, param2);
    } else {
        ov23_02250540(param0, v1, param2);
    }
}

static void ov23_02252754(BmpList *param0, u32 param1, u8 param2)
{
    MATHRandContext16 v0;
    UnkStruct_ov23_02250CD4 *v1 = (UnkStruct_ov23_02250CD4 *)sub_02001504(param0, 19);
    UndergroundData *v2 = sub_020298B0(FieldSystem_SaveData(v1->fieldSystem));
    int v3 = param1, v4, v5;
    int v6, v7 = 0, v8;

    BGL_FillWindow(&v1->unk_20, 15);

    if (param1 != 0xfffffffe) {
        if (v1->unk_2AC == 1) {
            v6 = ov23_0224F66C(v3, v1);
            MATH_InitRand16(&v0, sub_02028930(v2) + v1->unk_288 + v6);
            v7 = ov23_0225429C(v6);

            if (v7 == 6) {
                v7 = MATH_Rand16(&v0, 6 - 1) + 1;
            }

            v4 = ov23_022542AC(v6);
            v5 = ov23_022542BC(v6);
            v8 = MATH_Rand16(&v0, v5 - v4) + v4;
            v8 = v8 / 2;
        } else if (v1->unk_2AC == 0) {
            v6 = ov23_0224F61C(v3, v1);
            MATH_InitRand16(&v0, sub_02028930(v2) + v1->unk_288 + v6);
            v7 = sub_0205742C(v6);

            if (v7 == 6) {
                v7 = MATH_Rand16(&v0, 6 - 1) + 1;
            }

            v4 = sub_0205743C(v6);
            v5 = sub_0205744C(v6);
            v8 = MATH_Rand16(&v0, v5 - v4) + v4;
            v8 = v8 / 2;
        } else {
            v6 = ov23_0224F6C8(v3, v1);
            MATH_InitRand16(&v0, sub_02028930(v2) + v1->unk_288 + v6);
            v7 = ov23_0225426C(v6);

            if (v7 == 6) {
                v7 = MATH_Rand16(&v0, 6 - 1) + 1;
            }

            v4 = ov23_0225427C(v6);
            v5 = ov23_0225428C(v6);
            v8 = MATH_Rand16(&v0, v5 - v4) + v4;
        }
    }

    MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), 23 + v1->unk_2AB, v1->unk_68);
    Text_AddPrinterWithParams(&v1->unk_20, FONT_SYSTEM, v1->unk_68, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    if (param1 == 0xfffffffe) {
        (void)0;
    } else if (v7 != 0) {
        StringTemplate_SetUndergroundItemName(v1->unk_70, 2, v7);
        StringTemplate_SetNumber(v1->unk_70, 6, v8, 2, 1, 1);
        MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), 25, v1->unk_68);
        StringTemplate_Format(v1->unk_70, v1->unk_6C, v1->unk_68);
        Text_AddPrinterWithParams(&v1->unk_20, FONT_SYSTEM, v1->unk_6C, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);

        v1->unk_279[0] = v7;
        v1->unk_27E[0] = v8;
    } else {
        v1->unk_279[0] = v7;

        MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), 26, v1->unk_68);
        Text_AddPrinterWithParams(&v1->unk_20, FONT_SYSTEM, v1->unk_68, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    sub_0201A9A4(&v1->unk_20);

    if (v1->unk_2AC == 1) {
        ov23_0224FD84(param0, param1, param2);
    } else if (v1->unk_2AC == 0) {
        ov23_02250C3C(param0, param1, param2);
    } else {
        ov23_02250540(param0, param1, param2);
    }
}

static int ov23_02252A04(int param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;

    if (param0 >= 5) {
        return 0;
    }

    return v0->unk_274[param0];
}

static void ov23_02252A18(UnkStruct_ov23_02250CD4 *param0)
{
    UnkStruct_ov84_02240FA8 v0;
    const int v1 = 5 + 1;

    ov23_0224FB7C(param0);
    param0->unk_40 = sub_02013A04(v1, 4);

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_10, 3, 19, 3, 12, v1 * 2, 13, (((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - 12 * 6) - 12 * 12));
    Window_Show(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v2;
        int v3;

        if (param0->unk_2AC == 1) {
            v2 = MessageLoader_Init(0, 26, 630, 4);
            ov23_02253DFC(ov23_022421DC(), 630, 0);
        } else if (param0->unk_2AC == 0) {
            v2 = MessageLoader_Init(0, 26, 626, 4);
            ov23_02253DFC(ov23_022421DC(), 626, 0);
        } else {
            v2 = MessageLoader_Init(0, 26, 628, 4);
            ov23_02253DFC(ov23_022421DC(), 628, 0);
        }

        for (v3 = 0; v3 < v1 - 1; v3++) {
            sub_02013A4C(param0->unk_40, v2, param0->unk_274[v3], v3);
        }

        sub_02013A4C(param0->unk_40, v2, 0, 0xfffffffe);
        MessageLoader_Free(v2);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(UnkStruct_ov84_02240FA8));

    v0.unk_00 = param0->unk_40;
    v0.unk_0C = &param0->unk_10;
    v0.unk_10 = v1;
    v0.unk_12 = v1;
    v0.unk_04 = ov23_0225265C;
    v0.unk_1C = param0;

    param0->unk_268 = ov23_02252A04;
    param0->unk_294 = ov23_02243154(13 + param0->unk_2AC);
    param0->unk_290 = ov23_0224318C(13 + param0->unk_2AC);
    param0->unk_2AE = param0->unk_290;

    ov23_02251238(param0, v0.unk_12, v0.unk_10);
    param0->unk_48 = sub_0200112C(&v0, param0->unk_294, param0->unk_290, 4);
    sub_0201A954(&param0->unk_10);
}

static void ov23_02252B90(UnkStruct_ov23_02250CD4 *param0, BOOL param1)
{
    if (BGL_WindowAdded(&param0->unk_20)) {
        Window_Clear(&param0->unk_20, 1);
        BGL_DeleteWindow(&param0->unk_20);
    }

    ov23_0224FB7C(param0);
}

static void ov23_02252BB8(int param0, UnkStruct_ov23_02250CD4 *param1)
{
    int v0;

    if (param1->unk_2AC == 1) {
        v0 = ov23_0224F66C(param0, param1);
        ov23_02252CF4(2, v0);
    } else if (param1->unk_2AC == 0) {
        v0 = ov23_0224F61C(param0, param1);
        ov23_02252D08(2, v0);
    } else {
        v0 = ov23_0224F6C8(param0, param1);
        ov23_02252CE0(2, v0);
    }

    ov23_02252CE0(4, param1->unk_279[0]);
    ov23_02252C9C(10);
}

static u32 ov23_02252C08(UnkStruct_ov23_02250CD4 *param0)
{
    UndergroundData *v0 = sub_020298B0(FieldSystem_SaveData(param0->fieldSystem));

    if (ov23_0224F6E0(param0->unk_279[0], param0->unk_27E[0])) {
        if (param0->unk_2AC == 1) {
            sub_02028E50(v0, param0->unk_2A8);
        } else if (param0->unk_2AC == 0) {
            sub_02028B94(v0, param0->unk_2A8);
        } else if (param0->unk_2AC == 2) {
            sub_02028D80(v0, param0->unk_2A8);
        }

        return param0->unk_279[0];
    }

    return 0xfffc;
}

int ov23_02252C70(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    u32 v1 = 0xfffe;
    u32 v2 = 0xfffe;
    u16 v3, v4;

    return v2;
}

static void ov23_02252C78(UnkStruct_ov23_02250CD4 *param0)
{
    Strbuf_Free(param0->unk_68);
    Strbuf_Free(param0->unk_6C);
    StringTemplate_Free(param0->unk_70);
    Heap_FreeToHeap(param0);
}

void *ov23_02252C98(int param0, FieldSystem *fieldSystem, int param2)
{
    UnkStruct_ov23_02250CD4 *v0 = NULL;
    return v0;
}

int ov23_02252C9C(int param0)
{
    ov23_02253DFC(ov23_022421BC(), 636, 1);
    ov23_02254068(ov23_022421BC(), CommInfo_TrainerInfo(CommSys_CurNetId()));

    return ov23_02253F40(ov23_022421BC(), param0, 0, NULL);
}

void ov23_02252CD4(void)
{
    ov23_02254044(ov23_022421BC());
}

void ov23_02252CE0(int param0, int param1)
{
    ov23_022541A0(ov23_022421BC(), param0, param1);
}

void ov23_02252CF4(int param0, int param1)
{
    ov23_022541B4(ov23_022421BC(), param0, param1);
}

void ov23_02252D08(int param0, int param1)
{
    ov23_022541C8(ov23_022421BC(), param0, param1);
}

static void ov23_02252D1C(UnkStruct_ov23_02250CD4 *param0)
{
    if (!BGL_WindowAdded(&param0->unk_20)) {
        BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_20, 3, 1, 12, 12, 4, 13, 1);
        Window_Show(&param0->unk_20, 1, 1024 - (18 + 12) - 9, 11);
    }

    BGL_FillWindow(&param0->unk_20, 15);
    sub_0201A954(&param0->unk_20);
}

void ov23_02252D74(UnkStruct_ov23_02250CD4 *param0, int param1)
{
    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_30, 3, 1, 1, 7, 4, 13, 51);
    Window_Show(&param0->unk_30, 1, 1024 - (18 + 12) - 9, 11);

    BGL_FillWindow(&param0->unk_30, 15);
    sub_0201A954(&param0->unk_30);

    MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), param1, param0->unk_68);
    Text_AddPrinterWithParams(&param0->unk_30, FONT_SYSTEM, param0->unk_68, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);
    sub_0201A9A4(&param0->unk_30);
}

void ov23_02252DF4(UnkStruct_ov23_02250CD4 *param0)
{
    if (BGL_WindowAdded(&param0->unk_30)) {
        Window_Clear(&param0->unk_30, 1);
        BGL_DeleteWindow(&param0->unk_30);
    }
}

void ov23_02252E18(UnkStruct_ov23_02250CD4 *param0)
{
    if (BGL_WindowAdded(&param0->unk_30)) {
        Window_Clear(&param0->unk_30, 0);
        BGL_DeleteWindow(&param0->unk_30);
    }
}

static int ov23_02252E3C(int param0, int param1, int *param2)
{
    int v0, v1 = NELEMS(Unk_ov23_02257674);

    for (v0 = 0; v0 < v1; v0++) {
        if ((Unk_ov23_02257674[v0].unk_02 == param0) && (Unk_ov23_02257674[v0].unk_04 == param1)) {
            *param2 = v0;
            return Unk_ov23_02257674[v0].unk_00;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static void ov23_02252E70(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1 = 0xfffe;
    u32 v2 = 0xfffe;
    u16 v3, v4, v5;

    switch (v0->unk_2AA) {
    case 0:
        if (v0->unk_2AC == 2) {
            ov23_02252C9C(27);
        } else {
            ov23_02252C9C(0);
        }

        v0->unk_2AA = 1;
        break;
    case 1:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            v0->unk_2AA = 2;
        }
        break;
    case 2:
        ov23_022524B8(v0);
        v0->unk_2AA = 3;
        break;
    case 3:
        v1 = sub_02001288(v0->unk_48);
        sub_020014DC(v0->unk_48, &v3, &v4);
        ov23_022430E0(19, v4, v3);

        v5 = v0->unk_2AE;
        sub_020014D0(v0->unk_48, &v0->unk_2AE);

        if (v5 != v0->unk_2AE) {
            Sound_PlayEffect(1500);
        }

        switch (v1) {
        case 0xfffffffe:
            Sound_PlayEffect(1500);
            ov23_02252B90(v0, 0);
            v0->unk_2AA = 17;
            break;
        case 0xffffffff:
            break;
        default:
            if (v0->unk_2AC == 2) {
                v0->unk_2AB = 1;
                v0->unk_2AA = 12;
            } else {
                v0->unk_2AB = v1;

                if (v1 == 0) {
                    Sound_PlayEffect(1500);
                    v0->unk_2AA = 4;
                } else {
                    Sound_PlayEffect(1500);
                    v0->unk_2AA = 12;
                }
            }
            break;
        }
        break;
    case 4:
        ov23_02252D1C(v0);
        ov23_02252A18(v0);
        v0->unk_2AA = 5;
        break;
    case 5:
        v1 = sub_02001288(v0->unk_48);
        sub_020014DC(v0->unk_48, &v3, &v4);
        ov23_022430E0(13 + v0->unk_2AC, v4, v3);

        v5 = v0->unk_2AE;
        sub_020014D0(v0->unk_48, &v0->unk_2AE);

        if (v5 != v0->unk_2AE) {
            Sound_PlayEffect(1500);
        }

        if (v1 == 0xfffffffe) {
            v1 = 0xfffffffe;
        }

        if (v1 != 0xffffffff) {
            ov23_02254044(ov23_022421DC());
        }

        switch (v1) {
        case 0xfffffffe:
            Sound_PlayEffect(1500);
            ov23_02252B90(v0, 1);
            v0->unk_2AA = 2;
            break;
        case 0xffffffff:
            break;
        default:
            Sound_PlayEffect(1500);
            v0->unk_2A8 = v1;

            if (v0->unk_2AC == 1) {
                ov23_02252CF4(2, v0->unk_274[v0->unk_2A8]);
            } else if (v0->unk_2AC == 0) {
                ov23_02252D08(2, v0->unk_274[v0->unk_2A8]);
            }

            ov23_02252C9C(1);
            v0->unk_2AA = 6;
            break;
        }
        break;
    case 6:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v0->unk_2AA = 7;
            }
        }
        break;
    case 7:
        ov23_0224FB7C(v0);

        v0->unk_290 = ov23_0224318C(12);
        v0->unk_294 = ov23_02243154(12);

        ov23_02250184(v0);
        ov23_02252D74(v0, 19);

        if (v0->unk_2AC == 1) {
            ov23_02252CF4(2, v0->unk_274[v0->unk_2A8]);
        } else if (v0->unk_2AC == 0) {
            ov23_02252D08(2, v0->unk_274[v0->unk_2A8]);
        }

        v0->unk_2AA = 8;
        break;
    case 8:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            v1 = ov23_02248D20(v0->unk_4C);
            sub_020014DC(v0->unk_4C->unk_0C, &v3, &v4);
            ov23_022430E0(12, v4, v3);

            if (v1 != 0xffffffff) {
                ov23_02254044(ov23_022421DC());
            }

            switch (v1) {
            case 0xffffffff:
                break;
            case 0xfffffffe:
                ov23_02252DF4(v0);
                v0->unk_2AA = 4;
                break;
            default:
                v1 = ov23_02252404(v0, v0->unk_2A8, v1);
                ov23_02252B90(v0, 1);
                ov23_02252DF4(v0);

                if (v1 == 0xfffc) {
                    ov23_02252C9C(3);
                    v0->unk_2AA = 10;
                } else if (v1 == 0xfffd) {
                    ov23_02252C9C(4);
                    v0->unk_2AA = 10;
                } else if (v1 == 0xfffb) {
                    ov23_02252C9C(5);
                    v0->unk_2AA = 10;
                } else {
                    v0->unk_2A8 = v1;
                    ov23_02252C9C(2);
                    v0->unk_2AA = 9;
                }
                break;
            }
        }
        break;
    case 11:
        ov23_02252C9C(3);
        v0->unk_2AA = 10;
        break;
    case 9:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                if (v0->unk_2AC == 1) {
                    ov23_02252CF4(2, v0->unk_2A8);
                } else if (v0->unk_2AC == 0) {
                    ov23_02252D08(2, v0->unk_2A8);
                }

                ov23_02252C9C(6);
                Sound_PlayEffect(1507);

                v0->unk_2AA = 10;
            }
        }
        break;
    case 10:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                ov23_02252C9C(8);
                v0->unk_2AA = 2;
            }
        }
        break;
    case 12:
        ov23_02252D1C(v0);

        v0->unk_290 = ov23_0224318C(16 + v0->unk_2AC);
        v0->unk_294 = ov23_02243154(16 + v0->unk_2AC);
        v0->unk_60 = ov23_02252754;

        if (v0->unk_2AC == 1) {
            ov23_0224FDBC(v0);
            ov23_02252D74(v0, 20);
        } else if (v0->unk_2AC == 0) {
            ov23_02250CB0(v0);
            ov23_02252D74(v0, 21);
        } else {
            ov23_02250578(v0);
            ov23_02252D74(v0, 29);
        }

        v0->unk_2AA = 13;
        break;
    case 13:
        v1 = ov23_02248D20(v0->unk_4C);
        sub_020014DC(v0->unk_4C->unk_0C, &v3, &v4);
        ov23_022430E0(16 + v0->unk_2AC, v4, v3);

        switch (v1) {
        case 0xfffffffe:
            ov23_02254044(ov23_022421DC());
            ov23_02252B90(v0, 1);
            ov23_02252DF4(v0);
            v0->unk_2AA = 2;
            break;
        case 0xffffffff:
            break;
        default:
            if (v0->unk_279[0] != 0) {
                ov23_02254044(ov23_022421DC());
                v0->unk_2A8 = v1;
                ov23_02252B90(v0, 1);
                ov23_02252DF4(v0);
                ov23_02252BB8(v1, v0);
                v0->unk_2AA = 14;
            }
            break;
        }
        break;
    case 14:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            v0->unk_5C = sub_02002100(v0->fieldSystem->unk_08, &Unk_ov23_022569D8, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_2AA = 15;
        }
        break;
    case 15:
        v1 = sub_02002114(v0->unk_5C, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            v1 = ov23_02252C08(v0);

            if (v1 == 0xfffc) {
                ov23_02252C9C(3);
                v0->unk_2AA = 10;
            } else {
                ov23_02252C9C(11);
                v0->unk_2AA = 16;
            }
        } else {
            v0->unk_2AA = 17;
        }

        v0->unk_5C = NULL;
        break;
    case 16:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                ov23_0225412C(ov23_022421BC(), v0->unk_27E[0]);
                ov23_02252CE0(2, v0->unk_279[0]);
                ov23_02252C9C(7);

                Sound_PlayEffect(1507);

                v0->unk_2AA = 10;
            }
        }
        break;
    case 17:
        ov23_02252C9C(9);
        v0->unk_2AA = 18;
        break;
    case 18:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                ov23_02252CD4();
                ov23_02252C78(v0);
                ov23_02243204();
                SysTask_Done(param0);
                sub_02059514();
            }
        }
        break;
    default:
        break;
    }
}

void ov23_022534A0(FieldSystem *fieldSystem)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1 = sub_02058D88(CommSys_CurNetId());
    int v2 = sub_02058DC0(CommSys_CurNetId());
    int v3 = CommPlayer_GetOppositeDir(CommPlayer_Dir(CommSys_CurNetId()));
    UnkStruct_ov23_02250CD4 *v4;
    const int v5 = 6;
    int v6;
    int v7 = ov23_02252E3C(v1, v2, &v6);

    ov23_022430D0(3 + v7);

    v4 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02250CD4));
    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_02250CD4));

    v4->fieldSystem = fieldSystem;
    v4->unk_2AC = v7;
    v4->unk_288 = v6;
    v4->unk_68 = Strbuf_Init((50 * 2), 4);
    v4->unk_6C = Strbuf_Init((50 * 2), 4);
    v4->unk_70 = StringTemplate_Default(4);
    v4->unk_2AA = 0;

    Sound_PlayEffect(1500);
    v4->unk_04 = SysTask_Start(ov23_02252E70, v4, 10000);
    ov23_022431EC(v4, v4->unk_04, ov23_02251270);

    {
        int v8, v9;
        const ObjectEvent *v10;
        MapObject *v11;

        v8 = MapHeaderData_GetNumObjectEvents(v4->fieldSystem);
        v10 = MapHeaderData_GetObjectEvents(v4->fieldSystem);

        for (v9 = 0; v9 < v8; v9++) {
            if ((v10[v9].x == v1) && (v10[v9].z == v2)) {
                v11 = MapObjMan_LocalMapObjByIndex(v4->fieldSystem->mapObjMan, v9);
                MapObject_SetDir(v11, v3);
            }
        }
    }
}
