#include "overlay023/ov23_022521F0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/ov23_0225426C.h"
#include "overlay023/ov23_0225429C.h"
#include "overlay023/struct_ov23_02250CD4.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "heap.h"
#include "list_menu.h"
#include "map_header_data.h"
#include "map_object.h"
#include "menu.h"
#include "message.h"
#include "pokedex.h"
#include "render_window.h"
#include "savedata.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
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

static const WindowTemplate Unk_ov23_022569D8 = {
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
    Underground *v6 = SaveData_GetUnderground(FieldSystem_GetSaveData(param0->fieldSystem));

    MATH_InitRand16(&v0, Underground_GetRandomSeed(v6) + param1);

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
    SaveData *saveData = FieldSystem_GetSaveData(param0->fieldSystem);
    Underground *v7 = SaveData_GetUnderground(saveData);
    BOOL natdexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(saveData));

    MATH_InitRand16(&v0, Underground_GetRandomSeed(v7) + param1);

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

        if ((natdexObtained == 0) && (1 == sub_0205747C(v1))) {
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
    Underground *v1 = SaveData_GetUnderground(FieldSystem_GetSaveData(param0->fieldSystem));

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
        v0 = Underground_TryAddTreasure(v1, param0->unk_274[param1]);
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
    ListMenuTemplate v0;
    int v1 = 3;

    if (param0->unk_2AC == 2) {
        v1 = 2;
    }

    ov23_0224FB7C(param0);

    param0->unk_40 = StringList_New(v1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 19, 3, 12, v1 * 2, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - 12 * 6));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        int v2, v3;

        if (param0->unk_2AC == 1) {
            v3 = 13;
            ov23_022521F0(param0, param0->unk_288);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3, 0);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 1, 1);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 2, 0xfffffffe);
        } else if (param0->unk_2AC == 0) {
            v3 = 16;
            ov23_022522F0(param0, param0->unk_288);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3, 0);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 1, 1);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), v3 + 2, 0xfffffffe);
        } else {
            v3 = 28;
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), 28, 0);
            StringList_AddFromMessageBank(param0->unk_40, ov23_02253E3C(ov23_022421BC()), 22, 0xfffffffe);
        }
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(ListMenuTemplate));

    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;
    v0.count = v1;
    v0.maxDisplay = v1;

    param0->unk_294 = ov23_02243154(19);
    param0->unk_290 = ov23_0224318C(19);

    ov23_02251238(param0, v0.maxDisplay, v0.count);

    param0->unk_48 = ListMenu_New(&v0, param0->unk_294, param0->unk_290, HEAP_ID_FIELD);
    param0->unk_2AE = param0->unk_290;

    Window_CopyToVRAM(&param0->unk_10);

    return param0;
}

static void ov23_0225265C(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    u32 v1 = param1;

    Window_FillTilemap(&v0->unk_20, 15);
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

    Window_ScheduleCopyToVRAM(&v0->unk_20);

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

static void ov23_02252754(ListMenu *param0, u32 param1, u8 param2)
{
    MATHRandContext16 v0;
    UnkStruct_ov23_02250CD4 *v1 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    Underground *v2 = SaveData_GetUnderground(FieldSystem_GetSaveData(v1->fieldSystem));
    int v3 = param1, v4, v5;
    int v6, v7 = 0, v8;

    Window_FillTilemap(&v1->unk_20, 15);

    if (param1 != 0xfffffffe) {
        if (v1->unk_2AC == 1) {
            v6 = ov23_0224F66C(v3, v1);
            MATH_InitRand16(&v0, Underground_GetRandomSeed(v2) + v1->unk_288 + v6);
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
            MATH_InitRand16(&v0, Underground_GetRandomSeed(v2) + v1->unk_288 + v6);
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
            MATH_InitRand16(&v0, Underground_GetRandomSeed(v2) + v1->unk_288 + v6);
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

    Window_ScheduleCopyToVRAM(&v1->unk_20);

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
    ListMenuTemplate v0;
    const int v1 = 5 + 1;

    ov23_0224FB7C(param0);
    param0->unk_40 = StringList_New(v1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 19, 3, 12, v1 * 2, 13, (((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - 12 * 6) - 12 * 12));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v2;
        int v3;

        if (param0->unk_2AC == 1) {
            v2 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_TRAP_NAMES, HEAP_ID_FIELD);
            ov23_02253DFC(ov23_022421DC(), 630, 0);
        } else if (param0->unk_2AC == 0) {
            v2 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD);
            ov23_02253DFC(ov23_022421DC(), 626, 0);
        } else {
            v2 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_ITEM_NAMES, HEAP_ID_FIELD);
            ov23_02253DFC(ov23_022421DC(), 628, 0);
        }

        for (v3 = 0; v3 < v1 - 1; v3++) {
            StringList_AddFromMessageBank(param0->unk_40, v2, param0->unk_274[v3], v3);
        }

        StringList_AddFromMessageBank(param0->unk_40, v2, 0, 0xfffffffe);
        MessageLoader_Free(v2);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(ListMenuTemplate));

    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;
    v0.count = v1;
    v0.maxDisplay = v1;
    v0.cursorCallback = ov23_0225265C;
    v0.parent = param0;

    param0->unk_268 = ov23_02252A04;
    param0->unk_294 = ov23_02243154(13 + param0->unk_2AC);
    param0->unk_290 = ov23_0224318C(13 + param0->unk_2AC);
    param0->unk_2AE = param0->unk_290;

    ov23_02251238(param0, v0.maxDisplay, v0.count);
    param0->unk_48 = ListMenu_New(&v0, param0->unk_294, param0->unk_290, HEAP_ID_FIELD);
    Window_CopyToVRAM(&param0->unk_10);
}

static void ov23_02252B90(UnkStruct_ov23_02250CD4 *param0, BOOL param1)
{
    if (Window_IsInUse(&param0->unk_20)) {
        Window_EraseStandardFrame(&param0->unk_20, 1);
        Window_Remove(&param0->unk_20);
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
    Underground *v0 = SaveData_GetUnderground(FieldSystem_GetSaveData(param0->fieldSystem));

    if (Underground_TryAddSphere2(param0->unk_279[0], param0->unk_27E[0])) {
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
    Heap_Free(param0);
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
    if (!Window_IsInUse(&param0->unk_20)) {
        Window_Add(param0->fieldSystem->bgConfig, &param0->unk_20, 3, 1, 12, 12, 4, 13, 1);
        Window_DrawStandardFrame(&param0->unk_20, 1, 1024 - (18 + 12) - 9, 11);
    }

    Window_FillTilemap(&param0->unk_20, 15);
    Window_CopyToVRAM(&param0->unk_20);
}

void ov23_02252D74(UnkStruct_ov23_02250CD4 *param0, int param1)
{
    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_30, 3, 1, 1, 7, 4, 13, 51);
    Window_DrawStandardFrame(&param0->unk_30, 1, 1024 - (18 + 12) - 9, 11);

    Window_FillTilemap(&param0->unk_30, 15);
    Window_CopyToVRAM(&param0->unk_30);

    MessageLoader_GetStrbuf(ov23_02253E3C(ov23_022421BC()), param1, param0->unk_68);
    Text_AddPrinterWithParams(&param0->unk_30, FONT_SYSTEM, param0->unk_68, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&param0->unk_30);
}

void ov23_02252DF4(UnkStruct_ov23_02250CD4 *param0)
{
    if (Window_IsInUse(&param0->unk_30)) {
        Window_EraseStandardFrame(&param0->unk_30, 1);
        Window_Remove(&param0->unk_30);
    }
}

void ov23_02252E18(UnkStruct_ov23_02250CD4 *param0)
{
    if (Window_IsInUse(&param0->unk_30)) {
        Window_EraseStandardFrame(&param0->unk_30, 0);
        Window_Remove(&param0->unk_30);
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
        v1 = ListMenu_ProcessInput(v0->unk_48);
        ListMenu_GetListAndCursorPos(v0->unk_48, &v3, &v4);
        ov23_022430E0(19, v4, v3);

        v5 = v0->unk_2AE;
        ListMenu_CalcTrueCursorPos(v0->unk_48, &v0->unk_2AE);

        if (v5 != v0->unk_2AE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        switch (v1) {
        case 0xfffffffe:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
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
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    v0->unk_2AA = 4;
                } else {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
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
        v1 = ListMenu_ProcessInput(v0->unk_48);
        ListMenu_GetListAndCursorPos(v0->unk_48, &v3, &v4);
        ov23_022430E0(13 + v0->unk_2AC, v4, v3);

        v5 = v0->unk_2AE;
        ListMenu_CalcTrueCursorPos(v0->unk_48, &v0->unk_2AE);

        if (v5 != v0->unk_2AE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        if (v1 == 0xfffffffe) {
            v1 = 0xfffffffe;
        }

        if (v1 != 0xffffffff) {
            ov23_02254044(ov23_022421DC());
        }

        switch (v1) {
        case 0xfffffffe:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov23_02252B90(v0, 1);
            v0->unk_2AA = 2;
            break;
        case 0xffffffff:
            break;
        default:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
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
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
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
            ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v3, &v4);
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
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                if (v0->unk_2AC == 1) {
                    ov23_02252CF4(2, v0->unk_2A8);
                } else if (v0->unk_2AC == 0) {
                    ov23_02252D08(2, v0->unk_2A8);
                }

                ov23_02252C9C(6);
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

                v0->unk_2AA = 10;
            }
        }
        break;
    case 10:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
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
        ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v3, &v4);
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
            v0->unk_5C = Menu_MakeYesNoChoice(v0->fieldSystem->bgConfig, &Unk_ov23_022569D8, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_2AA = 15;
        }
        break;
    case 15:
        v1 = Menu_ProcessInputAndHandleExit(v0->unk_5C, 4);

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
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                ov23_0225412C(ov23_022421BC(), v0->unk_27E[0]);
                ov23_02252CE0(2, v0->unk_279[0]);
                ov23_02252C9C(7);

                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

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
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
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
    ListMenuTemplate v0;
    int v1 = sub_02058D88(CommSys_CurNetId());
    int v2 = sub_02058DC0(CommSys_CurNetId());
    int v3 = CommPlayer_GetOppositeDir(CommPlayer_Dir(CommSys_CurNetId()));
    UnkStruct_ov23_02250CD4 *v4;
    const int v5 = 6;
    int v6;
    int v7 = ov23_02252E3C(v1, v2, &v6);

    ov23_022430D0(3 + v7);

    v4 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02250CD4));
    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_02250CD4));

    v4->fieldSystem = fieldSystem;
    v4->unk_2AC = v7;
    v4->unk_288 = v6;
    v4->unk_68 = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v4->unk_6C = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v4->unk_70 = StringTemplate_Default(HEAP_ID_FIELD);
    v4->unk_2AA = 0;

    Sound_PlayEffect(SEQ_SE_CONFIRM);
    v4->unk_04 = SysTask_Start(ov23_02252E70, v4, 10000);
    ov23_022431EC(v4, v4->unk_04, ov23_02251270);

    {
        int objEventCount, i;
        const ObjectEvent *objEventList;
        MapObject *mapObj;

        objEventCount = MapHeaderData_GetNumObjectEvents(v4->fieldSystem);
        objEventList = MapHeaderData_GetObjectEvents(v4->fieldSystem);

        for (i = 0; i < objEventCount; i++) {
            if (objEventList[i].x == v1 && objEventList[i].z == v2) {
                mapObj = MapObjMan_LocalMapObjByIndex(v4->fieldSystem->mapObjMan, i);
                MapObject_TryFace(mapObj, v3);
            }
        }
    }
}
