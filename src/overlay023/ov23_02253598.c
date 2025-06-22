#include "overlay023/ov23_02253598.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/underground_data.h"
#include "struct_defs/underground_record.h"

#include "overlay023/funcptr_ov23_0224DCB8.h"
#include "overlay023/funcptr_ov23_02253834.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_02253598_decl.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "game_records.h"
#include "heap.h"
#include "list_menu.h"
#include "message.h"
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
#include "trainer_info.h"
#include "unk_0202854C.h"

typedef int (*UnkFuncPtr_ov23_022576EC)(const UndergroundRecord *);

typedef struct {
    UnkFuncPtr_ov23_02253834 unk_00;
    void *unk_04;
    Window unk_08;
    StringList *unk_18;
    ListMenu *unk_1C;
    UnkFuncPtr_ov23_0224DCB8 unk_20;
    u16 unk_24;
    int unk_28;
} UnkStruct_ov23_022537D4;

typedef struct UnkStruct_ov23_02253598_t {
    UnkStruct_ov23_022537D4 *unk_00;
    SysTask *unk_04;
    SaveData *saveData;
    UndergroundRecord *unk_0C;
    UndergroundRecord *unk_10;
    MATHRandContext32 unk_14;
    u8 unk_2C;
};

static UnkStruct_ov23_02253598 *Unk_ov23_022577BC = NULL;
static void ov23_022537D4(SysTask *param0, void *param1);

void ov23_02253598(UnkStruct_ov23_02253598 *param0, UndergroundRecord *param1, SaveData *saveData)
{
    MI_CpuFill8(param0, 0, sizeof(UnkStruct_ov23_02253598));

    Unk_ov23_022577BC = param0;
    Unk_ov23_022577BC->saveData = saveData;
    Unk_ov23_022577BC->unk_0C = param1;
    Unk_ov23_022577BC->unk_10 = UndergroundRecord_Init(HEAP_ID_COMMUNICATION);

    CommSys_Seed(&Unk_ov23_022577BC->unk_14);
}

void ov23_022535CC(void)
{
    Heap_FreeToHeap(Unk_ov23_022577BC->unk_10);
    Heap_FreeToHeap(Unk_ov23_022577BC);

    Unk_ov23_022577BC = NULL;
}

void ov23_022535EC(void)
{
    if (Unk_ov23_022577BC->unk_04) {
        ov23_022537D4(Unk_ov23_022577BC->unk_04, Unk_ov23_022577BC->unk_00);
    }
}

void ov23_02253604(void)
{
    return;
}

int ov23_02253608(void)
{
    return sizeof(UnkStruct_ov23_02253598);
}

static UnkFuncPtr_ov23_022576EC Unk_ov23_022576EC[] = {
    UndergroundRecord_GetTrainerScore,
    UndergroundRecord_GetPeopleMet,
    UndergroundRecord_GetNumGiftsGiven,
    UndergroundRecord_GetCapturedFlagCount,
    UndergroundRecord_GetNumSpheresDug,
    UndergroundRecord_GetNumFossilsDug,
    UndergroundRecord_GetNumTrapsHit,
    sub_02029704,
    sub_0202973C,
    sub_02029774,
    sub_020297AC,
    sub_020297E4,
    sub_0202981C,
    UndergroundRecord_GetCapturedFlagCount
};

static void ov23_0225360C(Window *param0, MessageLoader *param1, TrainerInfo *param2, const UndergroundRecord *param3)
{
    StringTemplate *v0;
    Strbuf *v1;
    Strbuf *v2;
    int v3, v4;
    const int v5 = 17;
    const int v6 = 39;
    const int v7 = 2;
    const int v8 = 16;
    const int v9 = 55;
    const int v10 = 130;
    const int v11 = 146;
    const int v12 = 146;

    v0 = StringTemplate_Default(HEAP_ID_FIELD);
    v1 = Strbuf_Init(30, HEAP_ID_FIELD);
    v2 = Strbuf_Init(30, HEAP_ID_FIELD);

    MessageLoader_GetStrbuf(param1, 0, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetStrbuf(param1, 1, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, v5, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetStrbuf(param1, 2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7 + v10, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetNumber(v0, 6, TrainerInfo_ID_LowHalf(param2), 5, 2, 1);
    MessageLoader_GetStrbuf(param1, 5, v1);
    StringTemplate_Format(v0, v2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7 + v12, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetPlayerName(v0, 0, param2);
    MessageLoader_GetStrbuf(param1, 4, v1);
    StringTemplate_Format(v0, v2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7 + v9, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    v3 = UndergroundRecord_GetFlagRank(param3);
    MessageLoader_GetStrbuf(param1, 20 + v3, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7 + v9, v5, TEXT_SPEED_NO_TRANSFER, NULL);

    for (v3 = 0; v3 < 7; v3++) {
        MessageLoader_GetStrbuf(param1, 6 + v3, v1);
        Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, v6 + v8 * v3, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    for (v3 = 0; v3 < 7; v3++) {
        UnkFuncPtr_ov23_022576EC v13 = Unk_ov23_022576EC[v3];

        v4 = v13(param3);
        StringTemplate_SetNumber(v0, 6, v4, 6, 1, 1);
        MessageLoader_GetStrbuf(param1, 13, v1);
        StringTemplate_Format(v0, v2, v1);
        Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7 + v12, v6 + v8 * v3, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    StringTemplate_Free(v0);
}

static void ov23_022537D4(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022537D4 *v0 = param1;

    Window_EraseStandardFrame(&v0->unk_08, 0);
    Window_ClearAndCopyToVRAM(&v0->unk_08);
    Window_Remove(&v0->unk_08);

    {
        UnkFuncPtr_ov23_02253834 v1 = v0->unk_00;

        if (v1 != NULL) {
            v1(v0->unk_04);
        }
    }

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);

    Unk_ov23_022577BC->unk_04 = NULL;
    Unk_ov23_022577BC->unk_00 = NULL;
}

static void ov23_0225381C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022537D4 *v0 = param1;

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        ov23_022537D4(param0, param1);
    }
}

void ov23_02253834(BgConfig *param0, TrainerInfo *param1, UnkFuncPtr_ov23_02253834 param2, void *param3, BOOL param4)
{
    UndergroundRecord *v0;
    MessageLoader *v1;
    ListMenuTemplate v2;
    int v3 = 10;
    UnkStruct_ov23_022537D4 *v4 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_022537D4));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_022537D4));

    v4->unk_00 = param2;
    v4->unk_04 = param3;

    Window_Add(param0, &v4->unk_08, 3, 4, 2, 24, 19, 13, 1);
    Window_DrawStandardFrame(&v4->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    v1 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0640, HEAP_ID_FIELD);
    Window_FillTilemap(&v4->unk_08, 15);

    if (param4) {
        v0 = Unk_ov23_022577BC->unk_0C;
    } else {
        v0 = Unk_ov23_022577BC->unk_10;
    }

    ov23_0225360C(&v4->unk_08, v1, param1, v0);

    Window_ScheduleCopyToVRAM(&v4->unk_08);
    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);

    Unk_ov23_022577BC->unk_04 = SysTask_Start(ov23_0225381C, v4, 10);
    Unk_ov23_022577BC->unk_00 = v4;

    MessageLoader_Free(v1);
}

void ov23_022538FC(int param0)
{
    int undergroundRecordSize = UndergroundRecord_Size();
    int trainerScore = GameRecords_GetTrainerScore(SaveData_GetGameRecords(Unk_ov23_022577BC->saveData));
    u8 *v2 = Heap_AllocFromHeap(HEAP_ID_FIELD, undergroundRecordSize + 1);

    MI_CpuClear8(v2, undergroundRecordSize + 1);
    v2[0] = param0;

    if (trainerScore >= 999999) {
        trainerScore = 999999;
    }

    UndergroundRecord_SetTrainerScore(Unk_ov23_022577BC->unk_0C, trainerScore);

    MI_CpuCopy8(Unk_ov23_022577BC->unk_0C, &v2[1], undergroundRecordSize);

    CommSys_SendData(81, v2, undergroundRecordSize + 1);
    Heap_FreeToHeap(v2);
}

void ov23_02253968(void)
{
    int trainerScore = GameRecords_GetTrainerScore(SaveData_GetGameRecords(Unk_ov23_022577BC->saveData));

    if (trainerScore >= 999999) {
        trainerScore = 999999;
    }

    UndergroundRecord_SetTrainerScore(Unk_ov23_022577BC->unk_0C, trainerScore);
}

void ov23_02253998(int param0, int param1, void *param2, void *param3)
{
    CommSys_SendDataServer(82, param2, param1);
}

void ov23_022539A8(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if (v0[0] == CommSys_CurNetId()) {
        MI_CpuCopy8(&v0[1], Unk_ov23_022577BC->unk_10, param1 - 1);
        Unk_ov23_022577BC->unk_2C = 1;
    }
}

BOOL ov23_022539D8(void)
{
    return Unk_ov23_022577BC->unk_2C;
}

void ov23_022539E8(void)
{
    Unk_ov23_022577BC->unk_2C = 0;
}

static void ov23_022539F8(int param0)
{
    sub_02059514();
}

void ov23_02253A00(UndergroundRecord *undergroundRecord, int param1)
{
    s32 v0;
    UndergroundRecord *undergroundRecordBuffer;
    UnkFuncPtr_ov23_022576EC v2 = Unk_ov23_022576EC[param1 - 32];

    GF_ASSERT(param1 >= 32);
    GF_ASSERT(param1 <= 45);

    sub_020594FC();
    ov23_02253DFC(ov23_022421BC(), 640, 1);

    undergroundRecordBuffer = UndergroundRecord_Init(HEAP_ID_FIELD);
    MI_CpuCopy8(undergroundRecord, undergroundRecordBuffer, UndergroundRecord_Size());

    v0 = v2(undergroundRecordBuffer);
    Heap_FreeToHeap(undergroundRecordBuffer);

    ov23_02254178(ov23_022421BC(), v0);
    ov23_02253F40(ov23_022421BC(), param1, 1, ov23_022539F8);
}

static void ov23_02253A78(Window *param0, MessageLoader *param1, TrainerInfo *param2, const UndergroundRecord *param3, const UndergroundData *param4)
{
    StringTemplate *v0;
    Strbuf *v1;
    Strbuf *v2;
    int v3, v4;
    const int v5 = 17;
    const int v6 = 39;
    const int v7 = 2;
    const int v8 = 17;
    const int v9 = 55;
    const int v10 = 130;
    const int v11 = 146;
    const int v12 = 100;

    v0 = StringTemplate_Default(HEAP_ID_FIELD);
    v1 = Strbuf_Init(40, HEAP_ID_FIELD);
    v2 = Strbuf_Init(40, HEAP_ID_FIELD);

    StringTemplate_SetPlayerName(v0, 1, param2);
    MessageLoader_GetStrbuf(param1, 12, v1);
    StringTemplate_Format(v0, v2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetStrbuf(param1, 13, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, 1 + v8, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetNumber(v0, 6, UndergroundRecord_GetCapturedFlagCount(param3), 6, 1, 1);
    MessageLoader_GetStrbuf(param1, 14, v1);
    StringTemplate_Format(v0, v2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7 + 100, 1 + v8, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetStrbuf(param1, 15, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, 1 + v8 * 3, TEXT_SPEED_NO_TRANSFER, NULL);

    for (v3 = 0; v3 < 5; v3++) {
        TrainerInfo *v13 = sub_020288C8(param4, HEAP_ID_FIELD, v3);

        if (v13) {
            StringTemplate_SetPlayerName(v0, 0, v13);
            MessageLoader_GetStrbuf(param1, 16, v1);
            StringTemplate_Format(v0, v2, v1);
            Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7, 1 + v8 * (4 + v3), TEXT_SPEED_NO_TRANSFER, NULL);

            StringTemplate_SetNumber(v0, 5, TrainerInfo_ID_LowHalf(v13), 5, 2, 1);
            MessageLoader_GetStrbuf(param1, 17, v1);
            StringTemplate_Format(v0, v2, v1);

            Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7 + v12, 1 + v8 * (4 + v3), TEXT_SPEED_NO_TRANSFER, NULL);
            Heap_FreeToHeap(v13);
        } else {
            MessageLoader_GetStrbuf(param1, 51, v1);
            Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, 1 + v8 * (4 + v3), TEXT_SPEED_NO_TRANSFER, NULL);
            MessageLoader_GetStrbuf(param1, 52, v1);
            Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7 + v12, 1 + v8 * (4 + v3), TEXT_SPEED_NO_TRANSFER, NULL);
        }
    }

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    StringTemplate_Free(v0);
}

void *ov23_02253C64(BgConfig *param0, TrainerInfo *param1, UndergroundData *param2, UnkFuncPtr_ov23_02253834 param3, void *param4)
{
    UndergroundRecord *v0;
    MessageLoader *v1;
    ListMenuTemplate v2;
    int v3 = 10;
    UnkStruct_ov23_022537D4 *v4 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_022537D4));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_022537D4));

    v4->unk_00 = param3;
    v4->unk_04 = param4;

    Window_Add(param0, &v4->unk_08, 3, 4, 2, 24, 19, 13, 1);
    Window_DrawStandardFrame(&v4->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    v1 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0639, HEAP_ID_FIELD);
    Window_FillTilemap(&v4->unk_08, 15);

    v0 = Unk_ov23_022577BC->unk_0C;
    ov23_02253A78(&v4->unk_08, v1, param1, v0, param2);

    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
    Window_ScheduleCopyToVRAM(&v4->unk_08);
    MessageLoader_Free(v1);

    return v4;
}

void ov23_02253D10(void *param0)
{
    UnkStruct_ov23_022537D4 *v0 = param0;

    Window_EraseStandardFrame(&v0->unk_08, 0);
    Window_ClearAndCopyToVRAM(&v0->unk_08);
    Window_Remove(&v0->unk_08);

    {
        UnkFuncPtr_ov23_02253834 v1 = v0->unk_00;

        if (v1 != NULL) {
            v1(v0->unk_04);
        }
    }

    Heap_FreeToHeap(v0);
}
