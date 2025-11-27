#include "overlay007/ov7_0224B4E8.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "field/field_system.h"

#include "battle_regulation.h"
#include "battle_regulation_validation.h"
#include "bg_window.h"
#include "field_message.h"
#include "field_task.h"
#include "font.h"
#include "heap.h"
#include "height_weight_data.h"
#include "list_menu.h"
#include "message.h"
#include "party.h"
#include "pokedex_heightweight.h"
#include "render_window.h"
#include "save_player.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

typedef struct {
    ListMenu *unk_00;
    ListMenu *unk_04;
    StringList *unk_08;
    StringList *unk_0C;
    FieldSystem *fieldSystem;
    Strbuf *unk_14;
    Strbuf *unk_18;
    Strbuf *unk_1C;
    Strbuf *unk_20;
    Window unk_24;
    Window unk_34;
    Window unk_44;
    Window unk_54;
    StringTemplate *unk_64;
    MessageLoader *unk_68;
    HeightWeightData *unk_6C;
    u16 *unk_70;
    int unk_74;
    u16 unk_78;
    u16 unk_7A;
    int unk_7C;
    u16 unk_80;
    u16 unk_82;
} UnkStruct_ov7_0224B4E8;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov7_0224F4D8;

static const ListMenuTemplate Unk_ov7_0224F188 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x0,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

static void ov7_0224B4E8(UnkStruct_ov7_0224B4E8 *param0, int param1)
{
    if (Window_IsInUse(&param0->unk_54) == 0) {
        Window_Init(&param0->unk_54);
        FieldMessage_AddWindow(param0->fieldSystem->bgConfig, &param0->unk_54, 3);
        FieldMessage_DrawWindow(&param0->unk_54, SaveData_GetOptions(param0->fieldSystem->saveData));
    } else {
        FieldMessage_ClearWindow(&param0->unk_54);
    }

    MessageLoader_GetStrbuf(param0->unk_68, param1, param0->unk_14);
    StringTemplate_Format(param0->unk_64, param0->unk_18, param0->unk_14);

    param0->unk_74 = FieldMessage_Print(&param0->unk_54, param0->unk_18, SaveData_GetOptions(param0->fieldSystem->saveData), 1);
}

static void ov7_0224B558(UnkStruct_ov7_0224B4E8 *param0, BOOL param1)
{
    if (param1) {
        Window_EraseMessageBox(&param0->unk_54, 0);
        Window_ClearAndCopyToVRAM(&param0->unk_54);
    }

    Window_Remove(&param0->unk_54);
}

static void ov7_0224B57C(UnkStruct_ov7_0224B4E8 *param0, int param1)
{
    BattleRegulation_GetNameByIndex(param0->fieldSystem->saveData, param1, param0->unk_1C, HEAP_ID_FIELD1);
    StringTemplate_SetStrbuf(param0->unk_64, 0, param0->unk_1C, 0, 1, GAME_LANGUAGE);
}

static void ov7_0224B5A8(UnkStruct_ov7_0224B4E8 *param0)
{
    ListMenuTemplate v0;
    Window *v1 = &(param0->unk_34);
    BattleRegulation *v2 = BattleRegulation_Load(param0->fieldSystem->saveData, 0);
    int v3 = 5;

    if (v2) {
        v3++;
    }

    if (Window_IsInUse(v1) == 0) {
        int v4;

        param0->unk_08 = StringList_New(v3 + 2, HEAP_ID_FIELD1);

        Window_Add(param0->fieldSystem->bgConfig, v1, 3, 1, 1, 16, (v3 + 2) * 2, 13, 1);
        Window_DrawStandardFrame(&param0->unk_34, 1, 1024 - (18 + 12) - 9, 11);
        StringList_AddFromMessageBank(param0->unk_08, param0->unk_68, 123, 12);

        for (v4 = 0; v4 < v3; v4++) {
            ov7_0224B57C(param0, v4);

            MessageLoader_GetStrbuf(param0->unk_68, 113, param0->unk_1C);
            StringTemplate_Format(param0->unk_64, param0->unk_20, param0->unk_1C);
            StringList_AddFromStrbuf(param0->unk_08, param0->unk_20, v4);
        }

        StringList_AddFromMessageBank(param0->unk_08, param0->unk_68, 114, 0xfffffffe);
    }

    v0 = Unk_ov7_0224F188;
    v0.count = v3 + 2;
    v0.maxDisplay = v3 + 2;
    v0.choices = param0->unk_08;
    v0.window = &param0->unk_34;
    v0.parent = param0;

    param0->unk_00 = ListMenu_New(&v0, 0, param0->unk_78, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&param0->unk_34);
}

static void ov7_0224B6AC(UnkStruct_ov7_0224B4E8 *param0)
{
    if (param0->unk_00) {
        ListMenu_Free(param0->unk_00, NULL, NULL);
        Window_EraseStandardFrame(&param0->unk_34, 1);
        Bg_ScheduleTilemapTransfer(param0->unk_34.bgConfig, param0->unk_34.bgLayer);
        Window_Remove(&param0->unk_34);
        StringList_Free(param0->unk_08);

        param0->unk_00 = NULL;
    }
}

static int ov7_0224B6E8(UnkStruct_ov7_0224B4E8 *param0)
{
    int v0;
    u16 v1;

    v0 = ListMenu_ProcessInput(param0->unk_00);
    ListMenu_GetListAndCursorPos(param0->unk_00, NULL, &param0->unk_78);

    v1 = param0->unk_80;
    ListMenu_CalcTrueCursorPos(param0->unk_00, &param0->unk_80);

    if (v1 != param0->unk_80) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (v0) {
    case 0xffffffff:
        return 0;
    case 12:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->fieldSystem->unk_B0 = NULL;
        ov7_0224B6AC(param0);
        return 2;
    case 0xfffffffe:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->fieldSystem->unk_B0 = NULL;
        ov7_0224B6AC(param0);
        return -1;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->fieldSystem->unk_B0 = BattleRegulation_GetByIndex(param0->fieldSystem->saveData, v0);
        break;
    }

    return 1;
}

static UnkStruct_ov7_0224F4D8 Unk_ov7_0224F4D8[] = {
    { 0x73, (u32)1 },
    { 0x74, (u32)2 },
    { 0x72, (u32)0xfffffffe }
};

static void ov7_0224B788(UnkStruct_ov7_0224B4E8 *param0)
{
    ListMenuTemplate v0;
    int v1 = 3, v2;
    int v3 = 10;
    int v4 = 9;
    int v5 = 22;
    UnkStruct_ov7_0224F4D8 *v6 = Unk_ov7_0224F4D8;

    param0->unk_0C = StringList_New(v1, HEAP_ID_FIELD1);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_44, 3, v5, v3, v4, v1 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - v4 * v1 * 2);
    Window_DrawStandardFrame(&param0->unk_44, 1, 1024 - (18 + 12) - 9, 11);

    {
        int v7;

        for (v7 = 0; v7 < v1; v7++) {
            StringList_AddFromMessageBank(param0->unk_0C, param0->unk_68, v6->unk_00, v6->unk_04);
            v6++;
        }
    }

    v0 = Unk_ov7_0224F188;
    v0.count = v1;
    v0.maxDisplay = v1;
    v0.choices = param0->unk_0C;
    v0.window = &param0->unk_44;
    v0.parent = param0;

    param0->unk_04 = ListMenu_New(&v0, 0, param0->unk_7A, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&param0->unk_44);
}

static int ov7_0224B83C(UnkStruct_ov7_0224B4E8 *param0)
{
    int v0;
    u16 v1;

    v0 = ListMenu_ProcessInput(param0->unk_04);
    ListMenu_GetListAndCursorPos(param0->unk_04, NULL, &param0->unk_7A);

    v1 = param0->unk_82;
    ListMenu_CalcTrueCursorPos(param0->unk_04, &param0->unk_82);

    if (v1 != param0->unk_82) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (v0) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        v0 = -1;
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov7_0224B6AC(param0);
        break;
    }

    if (param0->unk_04) {
        ListMenu_Free(param0->unk_04, NULL, NULL);
        Window_EraseStandardFrame(&param0->unk_44, 1);
        Bg_ScheduleTilemapTransfer(param0->unk_44.bgConfig, param0->unk_44.bgLayer);
        Window_Remove(&param0->unk_44);
        StringList_Free(param0->unk_0C);

        param0->unk_04 = NULL;
    }

    return v0;
}

static u8 Unk_ov7_0224F4C0[] = {
    0x1,
    0x2,
    0x3,
    0x5,
    0x7,
    0x4,
    0xB,
    0xA,
    0x9
};

static u8 Unk_ov7_0224F4CC[] = {
    0x54,
    0x55,
    0x56,
    0x57,
    0x59,
    0x5B,
    0x5B,
    0x5B,
    0x5D
};

static void ov7_0224B8DC(UnkStruct_ov7_0224B4E8 *param0)
{
    MessageLoader *v0;
    StringTemplate *v1 = param0->unk_64;
    Strbuf *v2;
    Strbuf *v3;
    Window *v4;
    int v5, v6, v7, v8;
    const int v9 = 16;
    const int v10 = 2;
    const int v11 = 15;
    const int v12 = 55;
    const int v13 = (24 * 8) - 1;

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0353, HEAP_ID_FIELD1);
    v2 = Strbuf_Init((90 * 2), HEAP_ID_FIELD1);
    v3 = Strbuf_Init((90 * 2), HEAP_ID_FIELD1);
    v4 = &param0->unk_24;

    Window_Add(param0->fieldSystem->bgConfig, v4, 3, 4, 2, 24, 19, 13, 1);
    Window_DrawStandardFrame(v4, 1, 1024 - (18 + 12) - 9, 11);
    Window_FillTilemap(v4, 15);

    ov7_0224B57C(param0, param0->unk_78 - 1);

    MessageLoader_GetStrbuf(v0, 95, v2);
    StringTemplate_Format(v1, v3, v2);
    Text_AddPrinterWithParams(v4, FONT_SYSTEM, v3, v10 + v12, 0, TEXT_SPEED_NO_TRANSFER, NULL);

    for (v5 = 0; v5 < 9; v5++) {
        MessageLoader_GetStrbuf(v0, 75 + v5, v2);
        Text_AddPrinterWithParams(v4, FONT_SYSTEM, v2, v10, v9 + v11 * v5, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    for (v5 = 0; v5 < 9; v5++) {
        v6 = BattleRegulation_GetRuleValue(param0->fieldSystem->unk_B0, Unk_ov7_0224F4C0[v5]);
        v7 = Unk_ov7_0224F4CC[v5];

        switch (Unk_ov7_0224F4C0[v5]) {
        case 1:
            StringTemplate_SetNumber(v1, 0, v6, 1, 1, 1);
            break;
        case 2:
            StringTemplate_SetNumber(v1, 0, v6, 3, 0, 1);
            break;
        case 3:
            if (v6 == 0) {
                v7 = 96;
            } else {
                StringTemplate_SetNumber(v1, 0, v6, 3, 0, 1);
            }
            break;
        case 5:
            v6 = (v6 >= 0) ? (((v6 * 10 * 1000) / 254 + 5) / 10) : -(((-v6 * 10 * 1000) / 254 + 5) / 10);

            StringTemplate_SetNumber(v1, 0, abs(v6 / 12), 2, 0, 1);
            StringTemplate_SetNumber(v1, 1, abs(v6 % 12), 2, 2, 1);

            if (v6 == 0) {
                v7 = 96;
            } else if (v6 > 0) {
                v7++;
            }
            break;
        case 7:
            v6 = (v6 >= 0) ? (((v6 * 220462) + 50000) / 100000) : -(((-v6 * 220462) + 50000) / 100000);
            StringTemplate_SetNumber(v1, 0, abs(v6), 3, 0, 1);

            if (v6 == 0) {
                v7 = 96;
            } else if (v6 > 0) {
                v7++;
            }
            break;
        case 4:
        case 11:
        case 10:
        case 9:
            if (v6 == 0) {
                v7++;
            }
            break;
        default:
            break;
        }

        MessageLoader_GetStrbuf(v0, v7, v2);
        StringTemplate_Format(v1, v3, v2);
        {
            int v14 = Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);
            int v15 = v13 - v14;

            Text_AddPrinterWithParams(v4, FONT_SYSTEM, v3, v15, v9 + v11 * v5, TEXT_SPEED_NO_TRANSFER, NULL);
        }
    }

    Strbuf_Free(v2);
    Strbuf_Free(v3);
    MessageLoader_Free(v0);
    Window_CopyToVRAM(v4);
}

static void ov7_0224BBA0(UnkStruct_ov7_0224B4E8 *param0)
{
    Window_EraseStandardFrame(&param0->unk_24, 1);
    Bg_ScheduleTilemapTransfer(param0->unk_24.bgConfig, param0->unk_24.bgLayer);
    Window_Remove(&param0->unk_24);
}

static BOOL ov7_0224BBC4(UnkStruct_ov7_0224B4E8 *param0)
{
    Party *v0 = SaveData_GetParty(param0->fieldSystem->saveData);
    int v1 = BattleRegulation_SelectValidPokemon(param0->fieldSystem->unk_B0, v0, param0->unk_6C);
    int v2;

    switch (v1) {
    case 0:
        return 1;
    case 4:
        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        ov7_0224B57C(param0, param0->unk_78 - 1);
        v2 = BattleRegulation_GetRuleValue(param0->fieldSystem->unk_B0, BATTLE_REGULATION_RULE_TEAM_SIZE);
        StringTemplate_SetNumber(param0->unk_64, 1, v2, 1, 1, 1);
        ov7_0224B4E8(param0, 107);
        break;
    default:
    case 1:
        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        ov7_0224B57C(param0, param0->unk_78 - 1);
        v2 = BattleRegulation_GetRuleValue(param0->fieldSystem->unk_B0, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);
        StringTemplate_SetNumber(param0->unk_64, 1, v2, 3, 0, 1);
        ov7_0224B4E8(param0, 121);
        break;
    }

    return 0;
}

static BOOL ov7_0224BC74(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov7_0224B4E8 *v1 = FieldTask_GetEnv(param0);
    int v2;

    switch (v1->unk_7C) {
    case 0:
        ov7_0224B4E8(v1, 106);
        v1->unk_7C++;
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(v1->unk_74)) {
            ov7_0224B5A8(v1);
            v1->unk_7C++;
        }
        break;
    case 2:
        v2 = ov7_0224B6E8(v1);

        if (v2 == -1) {
            *v1->unk_70 = 2;
            v1->unk_7C = 11;
        } else if (v2 == 2) {
            *v1->unk_70 = 3;
            v1->unk_7C = 11;
        } else if (v2 == 1) {
            v1->unk_7C = 3;
        }
        break;
    case 3:
        ov7_0224B788(v1);
        v1->unk_7C++;
        break;
    case 4:
        v2 = ov7_0224B83C(v1);

        if (v2 == -1) {
            v1->unk_7C = 2;
        } else if (v2 == 1) {
            v1->unk_7C = 5;
        } else if (v2 == 2) {
            v1->unk_7C = 7;
        }
        break;
    case 5:
        if (ov7_0224BBC4(v1)) {
            *v1->unk_70 = 1;
            v1->unk_7C = 11;
        } else {
            v1->unk_7C = 6;
        }
        break;
    case 6:
        if (FieldMessage_FinishedPrinting(v1->unk_74)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                v1->unk_7C = 0;
            }
        }
        break;
    case 7:
        ov7_0224B558(v1, 1);
        ov7_0224B8DC(v1);
        v1->unk_7C++;
        break;
    case 8:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_0224BBA0(v1);
            ov7_0224B4E8(v1, 106);
            ov7_0224B5A8(v1);
            v1->unk_7C = 9;
        }
        break;
    case 9:
        if (FieldMessage_FinishedPrinting(v1->unk_74)) {
            v1->unk_7C = 3;
        }
        break;
    case 10:
        break;
    case 11:
        ov7_0224B6AC(v1);
        ov7_0224B558(v1, 0);
        StringTemplate_Free(v1->unk_64);
        MessageLoader_Free(v1->unk_68);
        Strbuf_Free(v1->unk_14);
        Strbuf_Free(v1->unk_18);
        Strbuf_Free(v1->unk_1C);
        Strbuf_Free(v1->unk_20);
        HeightWeightData_Free(v1->unk_6C);
        Heap_Free(v1);
        return 1;
    default:
        return 1;
    }

    return 0;
}

static UnkStruct_ov7_0224B4E8 *ov7_0224BE10(FieldSystem *fieldSystem)
{
    UnkStruct_ov7_0224B4E8 *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov7_0224B4E8));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov7_0224B4E8));

    v0->unk_7C = 0;
    v0->fieldSystem = fieldSystem;
    v0->fieldSystem->unk_B0 = NULL;
    v0->unk_64 = StringTemplate_Default(HEAP_ID_FIELD1);
    v0->unk_68 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0221, HEAP_ID_FIELD1);
    v0->unk_14 = Strbuf_Init((90 * 2), HEAP_ID_FIELD1);
    v0->unk_18 = Strbuf_Init((90 * 2), HEAP_ID_FIELD1);
    v0->unk_1C = Strbuf_Init((90 * 2), HEAP_ID_FIELD1);
    v0->unk_20 = Strbuf_Init((90 * 2), HEAP_ID_FIELD1);
    v0->unk_6C = HeightWeightData_Load(HEAP_ID_FIELD2);

    return v0;
}

void ov7_0224BE7C(FieldTask *param0, u16 *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov7_0224B4E8 *v1 = ov7_0224BE10(fieldSystem);

    v1->unk_70 = param1;
    FieldTask_InitCall(param0, ov7_0224BC74, v1);
}
