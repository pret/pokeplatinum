#include "overlay023/ov23_022521F0.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0225426C.h"
#include "overlay023/ov23_0225429C.h"
#include "overlay023/underground_item_list_menu.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "goods.h"
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
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_0202854C.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
} UnkStruct_ov23_02257674;

static void ov23_02252D1C(UndergroundMenu *param0);
static void ov23_02252C78(UndergroundMenu *param0);

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

static void ov23_022521F0(UndergroundMenu *param0, int param1)
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

static void ov23_022522F0(UndergroundMenu *param0, int param1)
{
    MATHRandContext16 v0;
    int v2, v3, v4, v5;
    SaveData *saveData = FieldSystem_GetSaveData(param0->fieldSystem);
    Underground *v7 = SaveData_GetUnderground(saveData);
    BOOL natdexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(saveData));

    MATH_InitRand16(&v0, Underground_GetRandomSeed(v7) + param1);

    for (v5 = 0; v5 < 5; v5++) {
        int v1 = MATH_Rand16(&v0, 139 - 1) + 1;

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
        param0->unk_279[v5] = Good_GetSpherePriceType(v1);

        if ((natdexObtained == 0) && (1 == Good_IsNatDexRequired(v1))) {
            v5--;
            continue;
        }

        if (param0->unk_279[v5] == 0) {
            v5--;
            continue;
        } else if (param0->unk_279[v5] == 6) {
            param0->unk_279[v5] = MATH_Rand16(&v0, 6 - 1) + 1;
        }

        v3 = Good_GetSpherePriceMinSize(v1);
        v2 = Good_GetSpherePriceMaxSize(v1);

        param0->unk_27E[v5] = MATH_Rand16(&v0, v2 - v3) + v3;
    }
}

static int ov23_02252404(UndergroundMenu *param0, int param1, int param2)
{
    BOOL v0 = 0;
    Underground *v1 = SaveData_GetUnderground(FieldSystem_GetSaveData(param0->fieldSystem));

    if (param0->unk_279[param1] != UndergroundMenu_GetSphereTypeAtSlot(param2, param0)) {
        return 0xfffd;
    }

    if (param0->unk_27E[param1] > UndergroundMenu_GetSphereSizeAtSlot(param2, param0)) {
        return 0xfffb;
    }

    if (param0->unk_2AC == 1) {
        v0 = Underground_TryAddTrap(v1, param0->unk_274[param1]);
    } else if (param0->unk_2AC == 0) {
        v0 = Underground_TryAddGoodBag(v1, param0->unk_274[param1]);
    } else if (param0->unk_2AC == 2) {
        v0 = Underground_TryAddTreasure(v1, param0->unk_274[param1]);
    }

    if (v0) {
        Underground_RemoveSphereAtSlot(v1, param2);
    } else {
        return 0xfffc;
    }

    return param0->unk_274[param1];
}

static void *ov23_022524B8(UndergroundMenu *param0)
{
    ListMenuTemplate v0;
    int v1 = 3;

    if (param0->unk_2AC == 2) {
        v1 = 2;
    }

    UndergroundMenu_EraseCurrentMenu(param0);

    param0->menuOptions = StringList_New(v1, HEAP_ID_FIELD1);

    Window_Add(param0->fieldSystem->bgConfig, &param0->primaryWindow, 3, 19, 3, 12, v1 * 2, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - 12 * 6));
    Window_DrawStandardFrame(&param0->primaryWindow, 1, 1024 - (18 + 12) - 9, 11);

    {
        int v2, v3;

        if (param0->unk_2AC == 1) {
            v3 = 13;
            ov23_022521F0(param0, param0->unk_288);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), v3, 0);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), v3 + 1, 1);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), v3 + 2, 0xfffffffe);
        } else if (param0->unk_2AC == 0) {
            v3 = 16;
            ov23_022522F0(param0, param0->unk_288);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), v3, 0);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), v3 + 1, 1);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), v3 + 2, 0xfffffffe);
        } else {
            v3 = 28;
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 28, 0);
            StringList_AddFromMessageBank(param0->menuOptions, UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 22, 0xfffffffe);
        }
    }

    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &v0, sizeof(ListMenuTemplate));

    v0.choices = param0->menuOptions;
    v0.window = &param0->primaryWindow;
    v0.count = v1;
    v0.maxDisplay = v1;

    param0->listMenuListPos = CommManUnderground_GetStoredListPos(19);
    param0->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(19);

    UndergroundMenu_MoveListCursorPosInBounds(param0, v0.maxDisplay, v0.count);

    param0->unk_48 = ListMenu_New(&v0, param0->listMenuListPos, param0->listMenuCursorPos, HEAP_ID_FIELD1);
    param0->unk_2AE = param0->listMenuCursorPos;

    Window_CopyToVRAM(&param0->primaryWindow);

    return param0;
}

static void ov23_0225265C(ListMenu *param0, u32 param1, u8 param2)
{
    UndergroundMenu *v0 = (UndergroundMenu *)ListMenu_GetAttribute(param0, 19);
    u32 v1 = param1;

    Window_FillTilemap(&v0->secondaryWindow, 15);
    MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 23 + v0->unk_2AB, v0->string);
    Text_AddPrinterWithParams(&v0->secondaryWindow, FONT_SYSTEM, v0->string, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    if (param1 != 0xfffffffe) {
        StringTemplate_SetUndergroundItemName(v0->template, 2, v0->unk_279[v1]);
        StringTemplate_SetNumber(v0->template, 6, v0->unk_27E[v1], 2, 1, 1);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 25, v0->string);
        StringTemplate_Format(v0->template, v0->fmtString, v0->string);
        Text_AddPrinterWithParams(&v0->secondaryWindow, FONT_SYSTEM, v0->fmtString, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);
    } else {
        (void)0;
    }

    Window_ScheduleCopyToVRAM(&v0->secondaryWindow);

    if (v1 == 0xfffffffe) {
        v1 = 0xfffffffe;
    }

    if (v0->unk_2AC == 1) {
        UndergroundMenu_PrintTrapDescription(param0, v1, param2);
    } else if (v0->unk_2AC == 0) {
        UndergroundMenu_PrintGoodDescription(param0, v1, param2);
    } else {
        UndergroundMenu_PrintTreasureDescription(param0, v1, param2);
    }
}

static void ov23_02252754(ListMenu *param0, u32 index, u8 onInit)
{
    MATHRandContext16 v0;
    UndergroundMenu *v1 = (UndergroundMenu *)ListMenu_GetAttribute(param0, 19);
    Underground *v2 = SaveData_GetUnderground(FieldSystem_GetSaveData(v1->fieldSystem));
    int v3 = index, v4, v5;
    int v7 = 0, v8;

    Window_FillTilemap(&v1->secondaryWindow, 15);

    if (index != 0xfffffffe) {
        if (v1->unk_2AC == 1) {
            int v6 = UndergroundMenu_GetTrapAtSlot(v3, v1);
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
            const int v6 = UndergroundMenu_GetGoodAtSlotBag(v3, v1);
            MATH_InitRand16(&v0, Underground_GetRandomSeed(v2) + v1->unk_288 + v6);
            v7 = Good_GetSpherePriceType(v6);

            if (v7 == 6) {
                v7 = MATH_Rand16(&v0, 6 - 1) + 1;
            }

            v4 = Good_GetSpherePriceMinSize(v6);
            v5 = Good_GetSpherePriceMaxSize(v6);
            v8 = MATH_Rand16(&v0, v5 - v4) + v4;
            v8 = v8 / 2;
        } else {
            int v6 = UndergroundMenu_GetTreasureAtSlot(v3, v1);
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

    MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 23 + v1->unk_2AB, v1->string);
    Text_AddPrinterWithParams(&v1->secondaryWindow, FONT_SYSTEM, v1->string, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    if (index == 0xfffffffe) {
        (void)0;
    } else if (v7 != 0) {
        StringTemplate_SetUndergroundItemName(v1->template, 2, v7);
        StringTemplate_SetNumber(v1->template, 6, v8, 2, 1, 1);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 25, v1->string);
        StringTemplate_Format(v1->template, v1->fmtString, v1->string);
        Text_AddPrinterWithParams(&v1->secondaryWindow, FONT_SYSTEM, v1->fmtString, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);

        v1->unk_279[0] = v7;
        v1->unk_27E[0] = v8;
    } else {
        v1->unk_279[0] = v7;

        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), 26, v1->string);
        Text_AddPrinterWithParams(&v1->secondaryWindow, FONT_SYSTEM, v1->string, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    Window_ScheduleCopyToVRAM(&v1->secondaryWindow);

    if (v1->unk_2AC == 1) {
        UndergroundMenu_PrintTrapDescription(param0, index, onInit);
    } else if (v1->unk_2AC == 0) {
        UndergroundMenu_PrintGoodDescription(param0, index, onInit);
    } else {
        UndergroundMenu_PrintTreasureDescription(param0, index, onInit);
    }
}

static int ov23_02252A04(int param0, void *param1)
{
    UndergroundMenu *v0 = param1;

    if (param0 >= 5) {
        return 0;
    }

    return v0->unk_274[param0];
}

static void ov23_02252A18(UndergroundMenu *param0)
{
    ListMenuTemplate v0;
    const int v1 = 5 + 1;

    UndergroundMenu_EraseCurrentMenu(param0);
    param0->menuOptions = StringList_New(v1, HEAP_ID_FIELD1);

    Window_Add(param0->fieldSystem->bgConfig, &param0->primaryWindow, 3, 19, 3, 12, v1 * 2, 13, (((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - 12 * 6) - 12 * 12));
    Window_DrawStandardFrame(&param0->primaryWindow, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v2;
        int v3;

        if (param0->unk_2AC == 1) {
            v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_TRAPS, HEAP_ID_FIELD1);
            UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_TRAPS, MSG_LOADER_PRELOAD_ENTIRE_BANK);
        } else if (param0->unk_2AC == 0) {
            v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD1);
            UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_GOODS, MSG_LOADER_PRELOAD_ENTIRE_BANK);
        } else {
            v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_ITEMS, HEAP_ID_FIELD1);
            UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_ITEMS, MSG_LOADER_PRELOAD_ENTIRE_BANK);
        }

        for (v3 = 0; v3 < v1 - 1; v3++) {
            StringList_AddFromMessageBank(param0->menuOptions, v2, param0->unk_274[v3], v3);
        }

        StringList_AddFromMessageBank(param0->menuOptions, v2, 0, 0xfffffffe);
        MessageLoader_Free(v2);
    }

    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &v0, sizeof(ListMenuTemplate));

    v0.choices = param0->menuOptions;
    v0.window = &param0->primaryWindow;
    v0.count = v1;
    v0.maxDisplay = v1;
    v0.cursorCallback = ov23_0225265C;
    v0.parent = param0;

    param0->getItem = ov23_02252A04;
    param0->listMenuListPos = CommManUnderground_GetStoredListPos(13 + param0->unk_2AC);
    param0->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(13 + param0->unk_2AC);
    param0->unk_2AE = param0->listMenuCursorPos;

    UndergroundMenu_MoveListCursorPosInBounds(param0, v0.maxDisplay, v0.count);
    param0->unk_48 = ListMenu_New(&v0, param0->listMenuListPos, param0->listMenuCursorPos, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&param0->primaryWindow);
}

static void ov23_02252B90(UndergroundMenu *param0, BOOL param1)
{
    if (Window_IsInUse(&param0->secondaryWindow)) {
        Window_EraseStandardFrame(&param0->secondaryWindow, 1);
        Window_Remove(&param0->secondaryWindow);
    }

    UndergroundMenu_EraseCurrentMenu(param0);
}

static void ov23_02252BB8(int param0, UndergroundMenu *param1)
{
    int v0;

    if (param1->unk_2AC == 1) {
        v0 = UndergroundMenu_GetTrapAtSlot(param0, param1);
        ov23_02252CF4(2, v0);
    } else if (param1->unk_2AC == 0) {
        v0 = UndergroundMenu_GetGoodAtSlotBag(param0, param1);
        ov23_02252D08(2, v0);
    } else {
        v0 = UndergroundMenu_GetTreasureAtSlot(param0, param1);
        ov23_02252CE0(2, v0);
    }

    ov23_02252CE0(4, param1->unk_279[0]);
    ov23_02252C9C(10);
}

static u32 ov23_02252C08(UndergroundMenu *param0)
{
    Underground *v0 = SaveData_GetUnderground(FieldSystem_GetSaveData(param0->fieldSystem));

    if (UndergroundInventory_TryAddSphere(param0->unk_279[0], param0->unk_27E[0])) {
        if (param0->unk_2AC == 1) {
            Underground_RemoveTrapAtSlot(v0, param0->unk_2A8);
        } else if (param0->unk_2AC == 0) {
            Underground_RemoveGoodAtSlotBag(v0, param0->unk_2A8);
        } else if (param0->unk_2AC == 2) {
            Underground_RemoveTreasureAtSlot(v0, param0->unk_2A8);
        }

        return param0->unk_279[0];
    }

    return 0xfffc;
}

int ov23_02252C70(void *param0)
{
    UndergroundMenu *v0 = param0;
    u32 v1 = 0xfffe;
    u32 v2 = 0xfffe;
    u16 v3, v4;

    return v2;
}

static void ov23_02252C78(UndergroundMenu *param0)
{
    String_Free(param0->string);
    String_Free(param0->fmtString);
    StringTemplate_Free(param0->template);
    Heap_Free(param0);
}

void *ov23_02252C98(int param0, FieldSystem *fieldSystem, int param2)
{
    UndergroundMenu *v0 = NULL;
    return v0;
}

int ov23_02252C9C(int param0)
{
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetMiscTextPrinter(), TEXT_BANK_UNDERGROUND_NPCS, MSG_LOADER_LOAD_ON_DEMAND);
    UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetMiscTextPrinter(), CommInfo_TrainerInfo(CommSys_CurNetId()));

    return UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), param0, FALSE, NULL);
}

void ov23_02252CD4(void)
{
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
}

void ov23_02252CE0(int param0, int param1)
{
    UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetMiscTextPrinter(), param0, param1);
}

void ov23_02252CF4(int param0, int param1)
{
    UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(CommManUnderground_GetMiscTextPrinter(), param0, param1);
}

void ov23_02252D08(int param0, int param1)
{
    UndergroundTextPrinter_SetGoodNameWithIndex(CommManUnderground_GetMiscTextPrinter(), param0, param1);
}

static void ov23_02252D1C(UndergroundMenu *param0)
{
    if (!Window_IsInUse(&param0->secondaryWindow)) {
        Window_Add(param0->fieldSystem->bgConfig, &param0->secondaryWindow, 3, 1, 12, 12, 4, 13, 1);
        Window_DrawStandardFrame(&param0->secondaryWindow, 1, 1024 - (18 + 12) - 9, 11);
    }

    Window_FillTilemap(&param0->secondaryWindow, 15);
    Window_CopyToVRAM(&param0->secondaryWindow);
}

void UndergroundMenu_PrintMenuDescription(UndergroundMenu *menu, int bankEntry)
{
    Window_Add(menu->fieldSystem->bgConfig, &menu->menuDescriptionWindow, BG_LAYER_MAIN_3, 1, 1, 7, 4, 13, 51);
    Window_DrawStandardFrame(&menu->menuDescriptionWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    Window_FillTilemap(&menu->menuDescriptionWindow, 15);
    Window_CopyToVRAM(&menu->menuDescriptionWindow);

    MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetMiscTextPrinter()), bankEntry, menu->string);
    Text_AddPrinterWithParams(&menu->menuDescriptionWindow, FONT_SYSTEM, menu->string, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&menu->menuDescriptionWindow);
}

void UndergroundMenu_RemoveDescriptionWindow(UndergroundMenu *menu)
{
    if (Window_IsInUse(&menu->menuDescriptionWindow)) {
        Window_EraseStandardFrame(&menu->menuDescriptionWindow, TRUE);
        Window_Remove(&menu->menuDescriptionWindow);
    }
}

void UndergroundMenu_RemoveDescriptionWindowInstant(UndergroundMenu *menu)
{
    if (Window_IsInUse(&menu->menuDescriptionWindow)) {
        Window_EraseStandardFrame(&menu->menuDescriptionWindow, FALSE);
        Window_Remove(&menu->menuDescriptionWindow);
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
    UndergroundMenu *v0 = param1;
    u32 v1 = 0xfffe;
    u32 v2 = 0xfffe;
    u16 v3, v4, v5;

    switch (v0->state) {
    case 0:
        if (v0->unk_2AC == 2) {
            ov23_02252C9C(27);
        } else {
            ov23_02252C9C(0);
        }

        v0->state = 1;
        break;
    case 1:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            v0->state = 2;
        }
        break;
    case 2:
        ov23_022524B8(v0);
        v0->state = 3;
        break;
    case 3:
        v1 = ListMenu_ProcessInput(v0->unk_48);
        ListMenu_GetListAndCursorPos(v0->unk_48, &v3, &v4);
        CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_19, v4, v3);

        v5 = v0->unk_2AE;
        ListMenu_CalcTrueCursorPos(v0->unk_48, &v0->unk_2AE);

        if (v5 != v0->unk_2AE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        switch (v1) {
        case 0xfffffffe:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov23_02252B90(v0, 0);
            v0->state = 17;
            break;
        case 0xffffffff:
            break;
        default:
            if (v0->unk_2AC == 2) {
                v0->unk_2AB = 1;
                v0->state = 12;
            } else {
                v0->unk_2AB = v1;

                if (v1 == 0) {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    v0->state = 4;
                } else {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    v0->state = 12;
                }
            }
            break;
        }
        break;
    case 4:
        ov23_02252D1C(v0);
        ov23_02252A18(v0);
        v0->state = 5;
        break;
    case 5:
        v1 = ListMenu_ProcessInput(v0->unk_48);
        ListMenu_GetListAndCursorPos(v0->unk_48, &v3, &v4);
        CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_13 + v0->unk_2AC, v4, v3);

        v5 = v0->unk_2AE;
        ListMenu_CalcTrueCursorPos(v0->unk_48, &v0->unk_2AE);

        if (v5 != v0->unk_2AE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        if (v1 == 0xfffffffe) {
            v1 = 0xfffffffe;
        }

        if (v1 != 0xffffffff) {
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        }

        switch (v1) {
        case 0xfffffffe:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov23_02252B90(v0, 1);
            v0->state = 2;
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
            v0->state = 6;
            break;
        }
        break;
    case 6:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                v0->state = 7;
            }
        }
        break;
    case 7:
        UndergroundMenu_EraseCurrentMenu(v0);

        v0->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(12);
        v0->listMenuListPos = CommManUnderground_GetStoredListPos(12);

        ov23_02250184(v0);
        UndergroundMenu_PrintMenuDescription(v0, 19);

        if (v0->unk_2AC == 1) {
            ov23_02252CF4(2, v0->unk_274[v0->unk_2A8]);
        } else if (v0->unk_2AC == 0) {
            ov23_02252D08(2, v0->unk_274[v0->unk_2A8]);
        }

        v0->state = 8;
        break;
    case 8:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            v1 = UndergroundItemListMenu_ProcessInput(v0->itemListMenu);
            ListMenu_GetListAndCursorPos(v0->itemListMenu->listMenu, &v3, &v4);
            CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_12, v4, v3);

            if (v1 != 0xffffffff) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
            }

            switch (v1) {
            case 0xffffffff:
                break;
            case 0xfffffffe:
                UndergroundMenu_RemoveDescriptionWindow(v0);
                v0->state = 4;
                break;
            default:
                v1 = ov23_02252404(v0, v0->unk_2A8, v1);
                ov23_02252B90(v0, 1);
                UndergroundMenu_RemoveDescriptionWindow(v0);

                if (v1 == 0xfffc) {
                    ov23_02252C9C(3);
                    v0->state = 10;
                } else if (v1 == 0xfffd) {
                    ov23_02252C9C(4);
                    v0->state = 10;
                } else if (v1 == 0xfffb) {
                    ov23_02252C9C(5);
                    v0->state = 10;
                } else {
                    v0->unk_2A8 = v1;
                    ov23_02252C9C(2);
                    v0->state = 9;
                }
                break;
            }
        }
        break;
    case 11:
        ov23_02252C9C(3);
        v0->state = 10;
        break;
    case 9:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                if (v0->unk_2AC == 1) {
                    ov23_02252CF4(2, v0->unk_2A8);
                } else if (v0->unk_2AC == 0) {
                    ov23_02252D08(2, v0->unk_2A8);
                }

                ov23_02252C9C(6);
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

                v0->state = 10;
            }
        }
        break;
    case 10:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                ov23_02252C9C(8);
                v0->state = 2;
            }
        }
        break;
    case 12:
        ov23_02252D1C(v0);

        v0->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(16 + v0->unk_2AC);
        v0->listMenuListPos = CommManUnderground_GetStoredListPos(16 + v0->unk_2AC);
        v0->cursorCallback = ov23_02252754;

        if (v0->unk_2AC == 1) {
            ov23_0224FDBC(v0);
            UndergroundMenu_PrintMenuDescription(v0, 20);
        } else if (v0->unk_2AC == 0) {
            ov23_02250CB0(v0);
            UndergroundMenu_PrintMenuDescription(v0, 21);
        } else {
            ov23_02250578(v0);
            UndergroundMenu_PrintMenuDescription(v0, 29);
        }

        v0->state = 13;
        break;
    case 13:
        v1 = UndergroundItemListMenu_ProcessInput(v0->itemListMenu);
        ListMenu_GetListAndCursorPos(v0->itemListMenu->listMenu, &v3, &v4);
        CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_16 + v0->unk_2AC, v4, v3);

        switch (v1) {
        case 0xfffffffe:
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
            ov23_02252B90(v0, 1);
            UndergroundMenu_RemoveDescriptionWindow(v0);
            v0->state = 2;
            break;
        case 0xffffffff:
            break;
        default:
            if (v0->unk_279[0] != 0) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
                v0->unk_2A8 = v1;
                ov23_02252B90(v0, 1);
                UndergroundMenu_RemoveDescriptionWindow(v0);
                ov23_02252BB8(v1, v0);
                v0->state = 14;
            }
            break;
        }
        break;
    case 14:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            v0->yesNoMenu = Menu_MakeYesNoChoice(v0->fieldSystem->bgConfig, &Unk_ov23_022569D8, 1024 - (18 + 12) - 9, 11, 4);
            v0->state = 15;
        }
        break;
    case 15:
        v1 = Menu_ProcessInputAndHandleExit(v0->yesNoMenu, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            v1 = ov23_02252C08(v0);

            if (v1 == 0xfffc) {
                ov23_02252C9C(3);
                v0->state = 10;
            } else {
                ov23_02252C9C(11);
                v0->state = 16;
            }
        } else {
            v0->state = 17;
        }

        v0->yesNoMenu = NULL;
        break;
    case 16:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                UndergroundTextPrinter_SetTwoDigitNumber(CommManUnderground_GetMiscTextPrinter(), v0->unk_27E[0]);
                ov23_02252CE0(2, v0->unk_279[0]);
                ov23_02252C9C(7);

                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

                v0->state = 10;
            }
        }
        break;
    case 17:
        ov23_02252C9C(9);
        v0->state = 18;
        break;
    case 18:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                ov23_02252CD4();
                ov23_02252C78(v0);
                CommManUnderground_ClearCurrentSysTaskInfo();
                SysTask_Done(param0);
                CommPlayerMan_ResumeFieldSystem();
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
    int v1 = CommPlayer_GetXInFrontOfPlayer(CommSys_CurNetId());
    int v2 = CommPlayer_GetZInFrontOfPlayer(CommSys_CurNetId());
    int v3 = CommPlayer_GetOppositeDir(CommPlayer_Dir(CommSys_CurNetId()));
    UndergroundMenu *v4;
    const int v5 = 6;
    int v6;
    int v7 = ov23_02252E3C(v1, v2, &v6);

    CommManUnderground_SetStoredPosKey(UNDERGROUND_STORED_POS_KEY_3 + v7);

    v4 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));
    MI_CpuClear8(v4, sizeof(UndergroundMenu));

    v4->fieldSystem = fieldSystem;
    v4->unk_2AC = v7;
    v4->unk_288 = v6;
    v4->string = String_Init((50 * 2), HEAP_ID_FIELD1);
    v4->fmtString = String_Init((50 * 2), HEAP_ID_FIELD1);
    v4->template = StringTemplate_Default(HEAP_ID_FIELD1);
    v4->state = 0;

    Sound_PlayEffect(SEQ_SE_CONFIRM);
    v4->sysTask = SysTask_Start(ov23_02252E70, v4, 10000);
    CommManUnderground_SetCurrentSysTask(v4, v4->sysTask, UndergroundMenu_ResetBrightnessAndExit);

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
