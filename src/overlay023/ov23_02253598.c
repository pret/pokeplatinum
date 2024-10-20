#include "overlay023/ov23_02253598.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay023/funcptr_ov23_0224DCB8.h"
#include "overlay023/funcptr_ov23_02253834.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_02253598_decl.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "comm_player_manager.h"
#include "communication_system.h"
#include "core_sys.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0202854C.h"

typedef int (*UnkFuncPtr_ov23_022576EC)(const SecretBaseRecord *);

typedef struct {
    UnkFuncPtr_ov23_02253834 unk_00;
    void *unk_04;
    Window unk_08;
    ResourceMetadata *unk_18;
    BmpList *unk_1C;
    UnkFuncPtr_ov23_0224DCB8 unk_20;
    u16 unk_24;
    int unk_28;
} UnkStruct_ov23_022537D4;

typedef struct UnkStruct_ov23_02253598_t {
    UnkStruct_ov23_022537D4 *unk_00;
    SysTask *unk_04;
    SaveData *unk_08;
    SecretBaseRecord *unk_0C;
    SecretBaseRecord *unk_10;
    MATHRandContext32 unk_14;
    u8 unk_2C;
};

static UnkStruct_ov23_02253598 *Unk_ov23_022577BC = NULL;
static void ov23_022537D4(SysTask *param0, void *param1);

void ov23_02253598(UnkStruct_ov23_02253598 *param0, SecretBaseRecord *param1, SaveData *param2)
{
    MI_CpuFill8(param0, 0, sizeof(UnkStruct_ov23_02253598));

    Unk_ov23_022577BC = param0;
    Unk_ov23_022577BC->unk_08 = param2;
    Unk_ov23_022577BC->unk_0C = param1;
    Unk_ov23_022577BC->unk_10 = sub_0202855C(15);

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
    sub_020294B8,
    sub_020294EC,
    sub_02029524,
    sub_020295B8,
    sub_020295F0,
    sub_0202963C,
    sub_020296CC,
    sub_02029704,
    sub_0202973C,
    sub_02029774,
    sub_020297AC,
    sub_020297E4,
    sub_0202981C,
    sub_020295B8
};

static void ov23_0225360C(Window *param0, MessageLoader *param1, TrainerInfo *param2, const SecretBaseRecord *param3)
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

    v3 = sub_0202958C(param3);
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

    Window_Clear(&v0->unk_08, 0);
    sub_0201ACF4(&v0->unk_08);
    BGL_DeleteWindow(&v0->unk_08);

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

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        ov23_022537D4(param0, param1);
    }
}

void ov23_02253834(BGL *param0, TrainerInfo *param1, UnkFuncPtr_ov23_02253834 param2, void *param3, BOOL param4)
{
    SecretBaseRecord *v0;
    MessageLoader *v1;
    UnkStruct_ov84_02240FA8 v2;
    int v3 = 10;
    UnkStruct_ov23_022537D4 *v4 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_022537D4));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_022537D4));

    v4->unk_00 = param2;
    v4->unk_04 = param3;

    BGL_AddWindow(param0, &v4->unk_08, 3, 4, 2, 24, 19, 13, 1);
    Window_Show(&v4->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    v1 = MessageLoader_Init(0, 26, 640, 4);
    BGL_FillWindow(&v4->unk_08, 15);

    if (param4) {
        v0 = Unk_ov23_022577BC->unk_0C;
    } else {
        v0 = Unk_ov23_022577BC->unk_10;
    }

    ov23_0225360C(&v4->unk_08, v1, param1, v0);

    sub_0201A9A4(&v4->unk_08);
    Sound_PlayEffect(1533);

    Unk_ov23_022577BC->unk_04 = SysTask_Start(ov23_0225381C, v4, 10);
    Unk_ov23_022577BC->unk_00 = v4;

    MessageLoader_Free(v1);
}

void ov23_022538FC(int param0)
{
    int v0 = sub_02028558();
    int v1 = GameRecords_GetTrainerScore(SaveData_GetGameRecordsPtr(Unk_ov23_022577BC->unk_08));
    u8 *v2 = Heap_AllocFromHeap(4, v0 + 1);

    MI_CpuClear8(v2, v0 + 1);
    v2[0] = param0;

    if (v1 >= 999999) {
        v1 = 999999;
    }

    sub_020294D4(Unk_ov23_022577BC->unk_0C, v1);

    MI_CpuCopy8(Unk_ov23_022577BC->unk_0C, &v2[1], v0);

    CommSys_SendData(81, v2, v0 + 1);
    Heap_FreeToHeap(v2);
}

void ov23_02253968(void)
{
    int v0 = GameRecords_GetTrainerScore(SaveData_GetGameRecordsPtr(Unk_ov23_022577BC->unk_08));

    if (v0 >= 999999) {
        v0 = 999999;
    }

    sub_020294D4(Unk_ov23_022577BC->unk_0C, v0);
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

void ov23_02253A00(SecretBaseRecord *param0, int param1)
{
    s32 v0;
    SecretBaseRecord *v1;
    UnkFuncPtr_ov23_022576EC v2 = Unk_ov23_022576EC[param1 - 32];

    GF_ASSERT(param1 >= 32);
    GF_ASSERT(param1 <= 45);

    sub_020594FC();
    ov23_02253DFC(ov23_022421BC(), 640, 1);

    v1 = sub_0202855C(4);
    MI_CpuCopy8(param0, v1, sub_02028558());

    v0 = v2(v1);
    Heap_FreeToHeap(v1);

    ov23_02254178(ov23_022421BC(), v0);
    ov23_02253F40(ov23_022421BC(), param1, 1, ov23_022539F8);
}

static void ov23_02253A78(Window *param0, MessageLoader *param1, TrainerInfo *param2, const SecretBaseRecord *param3, const UndergroundData *param4)
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

    v0 = StringTemplate_Default(4);
    v1 = Strbuf_Init(40, 4);
    v2 = Strbuf_Init(40, 4);

    StringTemplate_SetPlayerName(v0, 1, param2);
    MessageLoader_GetStrbuf(param1, 12, v1);
    StringTemplate_Format(v0, v2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetStrbuf(param1, 13, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, 1 + v8, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetNumber(v0, 6, sub_020295B8(param3), 6, 1, 1);
    MessageLoader_GetStrbuf(param1, 14, v1);
    StringTemplate_Format(v0, v2, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v2, v7 + 100, 1 + v8, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetStrbuf(param1, 15, v1);
    Text_AddPrinterWithParams(param0, FONT_SYSTEM, v1, v7, 1 + v8 * 3, TEXT_SPEED_NO_TRANSFER, NULL);

    for (v3 = 0; v3 < 5; v3++) {
        TrainerInfo *v13 = sub_020288C8(param4, 4, v3);

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

void *ov23_02253C64(BGL *param0, TrainerInfo *param1, UndergroundData *param2, UnkFuncPtr_ov23_02253834 param3, void *param4)
{
    SecretBaseRecord *v0;
    MessageLoader *v1;
    UnkStruct_ov84_02240FA8 v2;
    int v3 = 10;
    UnkStruct_ov23_022537D4 *v4 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_022537D4));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_022537D4));

    v4->unk_00 = param3;
    v4->unk_04 = param4;

    BGL_AddWindow(param0, &v4->unk_08, 3, 4, 2, 24, 19, 13, 1);
    Window_Show(&v4->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    v1 = MessageLoader_Init(0, 26, 639, 4);
    BGL_FillWindow(&v4->unk_08, 15);

    v0 = Unk_ov23_022577BC->unk_0C;
    ov23_02253A78(&v4->unk_08, v1, param1, v0, param2);

    Sound_PlayEffect(1533);
    sub_0201A9A4(&v4->unk_08);
    MessageLoader_Free(v1);

    return v4;
}

void ov23_02253D10(void *param0)
{
    UnkStruct_ov23_022537D4 *v0 = param0;

    Window_Clear(&v0->unk_08, 0);
    sub_0201ACF4(&v0->unk_08);
    BGL_DeleteWindow(&v0->unk_08);

    {
        UnkFuncPtr_ov23_02253834 v1 = v0->unk_00;

        if (v1 != NULL) {
            v1(v0->unk_04);
        }
    }

    Heap_FreeToHeap(v0);
}
