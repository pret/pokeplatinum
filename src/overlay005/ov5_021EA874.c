#include "overlay005/ov5_021EA874.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "bag.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_options.h"
#include "heap.h"
#include "message.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202ACE0.h"
#include "unk_0203061C.h"
#include "unk_0203909C.h"
#include "unk_020508D4.h"
#include "unk_0205D8CC.h"

typedef struct {
    ResourceMetadata *unk_00;
    BmpList *unk_04;
    Strbuf *unk_08;
    Strbuf *unk_0C;
    Window unk_10;
    Window unk_20;
    FieldSystem *fieldSystem;
    SaveData *unk_34;
    StringTemplate *unk_38;
    MessageLoader *unk_3C;
    int unk_40;
    UIControlData *unk_44;
    int unk_48;
    int unk_4C[8];
    int unk_6C[8];
    int unk_8C;
    int unk_90;
} UnkStruct_ov5_021EAE78;

static void ov5_021EAE78(UnkStruct_ov5_021EAE78 *param0, int param1);
static void ov5_021EAF1C(UnkStruct_ov5_021EAE78 *param0);
static void ov5_021EAF90(BmpList *param0, u32 param1, u8 param2);

static BOOL ov5_021EA874(UnkStruct_ov5_021EAE78 *param0)
{
    int v0, v1 = 0;
    DWCFriendData *v2 = sub_0202AED8(sub_0202B370(param0->unk_34), 0);
    DWCFriendData *v3;

    if (0 == sub_020391DC(param0->unk_34, param0->unk_4C, 4)) {
        return 1;
    }

    param0->unk_8C = 0;

    sub_0200DD0C(param0->fieldSystem->unk_08, 3, (512 - (18 + 12)), 10, Options_Frame(SaveData_Options(param0->unk_34)), 4);
    sub_0200DAA4(param0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);

    param0->unk_48 = 1;
    return 0;
}

static BOOL ov5_021EA8F0(UnkStruct_ov5_021EAE78 *param0)
{
    int v0;
    TrainerInfo *v1;

    param0->unk_8C = -1;

    for (v0 = 0; v0 < CommSys_ConnectedCount(); v0++) {
        if (param0->unk_4C[v0] == 2) {
            param0->unk_8C = v0;
            param0->unk_4C[v0] = 0;
            break;
        }
    }

    if (param0->unk_8C == -1) {
        return 1;
    }

    if (Bag_CanRemoveItem(SaveData_GetBag(param0->unk_34), 437, 1, 4) == 1) {
        v1 = CommInfo_TrainerInfo(param0->unk_8C);
        StringTemplate_SetPlayerName(param0->unk_38, 0, v1);
        ov5_021EAE78(param0, 57);
        param0->unk_48 = 2;
        return 0;
    }

    {
        UnkStruct_0202B370 *v2 = sub_0202B370(param0->unk_34);

        for (v0 = 0; v0 < 32; v0++) {
            if (!sub_0202AF78(v2, v0)) {
                sub_02039298(param0->unk_34, param0->unk_8C, v0, 4, 0);
                break;
            }
        }
    }
    param0->unk_48 = 1;
    return 0;
}

static const UnkStruct_ov61_0222C884 Unk_ov5_021FAF00 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static BOOL ov5_021EA9BC(UnkStruct_ov5_021EAE78 *param0)
{
    if (Text_IsPrinterActive(param0->unk_40) == 0) {
        param0->unk_44 = sub_02002100(param0->fieldSystem->unk_08, &Unk_ov5_021FAF00, 1024 - (18 + 12) - 9, 11, 4);
        param0->unk_48 = 3;
    }

    return 0;
}

static BOOL ov5_021EA9F8(UnkStruct_ov5_021EAE78 *param0)
{
    DWCFriendData *v0;
    Strbuf *v1;
    int v2;
    int v3 = sub_02002114(param0->unk_44, 4);

    if (v3 == 0xffffffff) {
        return 0;
    } else if (v3 == 0) {
        UnkStruct_0202B370 *v4 = sub_0202B370(param0->unk_34);

        for (v2 = 0; v2 < 32; v2++) {
            if (!sub_0202AF78(v4, v2)) {
                sub_02039298(param0->unk_34, param0->unk_8C, v2, 4, 0);
                break;
            }
        }

        if (v2 == 32) {
            ov5_021EAE78(param0, 58);
            param0->unk_48 = 4;
            return 0;
        }
    }

    param0->unk_48 = 1;
    return 0;
}

static BOOL ov5_021EAA6C(UnkStruct_ov5_021EAE78 *param0)
{
    if (Text_IsPrinterActive(param0->unk_40) == 0) {
        param0->unk_44 = sub_02002100(param0->fieldSystem->unk_08, &Unk_ov5_021FAF00, 1024 - (18 + 12) - 9, 11, 4);
        param0->unk_48 = 5;
    }

    return 0;
}

static BOOL ov5_021EAAA8(UnkStruct_ov5_021EAE78 *param0)
{
    TrainerInfo *v0;
    DWCFriendData *v1;
    Strbuf *v2;
    int v3;
    int v4 = sub_02002114(param0->unk_44, 4);

    if (v4 == 0xffffffff) {
        return 0;
    } else if (v4 == 0) {
        param0->unk_48 = 8;
    } else {
        v0 = CommInfo_TrainerInfo(param0->unk_8C);
        StringTemplate_SetPlayerName(param0->unk_38, 0, v0);
        ov5_021EAE78(param0, 59);
        param0->unk_48 = 6;
    }

    return 0;
}

static BOOL ov5_021EAAEC(UnkStruct_ov5_021EAE78 *param0)
{
    if (Text_IsPrinterActive(param0->unk_40) == 0) {
        param0->unk_44 = sub_02002100(param0->fieldSystem->unk_08, &Unk_ov5_021FAF00, 1024 - (18 + 12) - 9, 11, 4);
        param0->unk_48 = 7;
    }

    return 0;
}

static BOOL ov5_021EAB28(UnkStruct_ov5_021EAE78 *param0)
{
    TrainerInfo *v0;
    DWCFriendData *v1;
    Strbuf *v2;
    int v3;
    int v4 = sub_02002114(param0->unk_44, 4);

    if (v4 == 0xffffffff) {
        return 0;
    } else if (v4 == 0) {
        param0->unk_48 = 12;
    } else {
        ov5_021EAE78(param0, 58);
        param0->unk_48 = 4;
    }

    return 0;
}

static const UnkStruct_ov84_02240FA8 Unk_ov5_021FAF08 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x20,
    0x20,
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

static BOOL ov5_021EAB58(UnkStruct_ov5_021EAE78 *param0)
{
    UnkStruct_0202B370 *v0 = sub_0202B370(param0->unk_34);
    UnkStruct_ov84_02240FA8 v1;
    int v2 = sub_0202AF94(v0);
    int v3 = 5;

    param0->unk_00 = sub_02013A04(v2 + 1, 4);

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_20, 3, 19, 1, 12, v3 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (10 * (v3 + 2) * 2));
    Window_Show(&param0->unk_20, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v4;
        int v5 = 0;

        for (v5 = 0; v5 < 32; v5++) {
            if (sub_0202AF78(v0, v5)) {
                Strbuf_CopyChars(param0->unk_08, sub_0202AEF0(v0, v5));
                sub_02013A6C(param0->unk_00, param0->unk_08, v5);
            }
        }

        sub_02013A4C(param0->unk_00, param0->unk_3C, 11, 0xfffffffe);
    }

    v1 = Unk_ov5_021FAF08;

    v1.unk_10 = v2 + 1;
    v1.unk_12 = v3;
    v1.unk_00 = param0->unk_00;
    v1.unk_0C = &param0->unk_20;
    v1.unk_04 = ov5_021EAF90;
    v1.unk_1C = param0;

    param0->unk_04 = sub_0200112C(&v1, 0, 0, 4);
    sub_0201A954(&param0->unk_20);
    param0->unk_48 = 9;

    return 0;
}

static BOOL ov5_021EAC44(UnkStruct_ov5_021EAE78 *param0)
{
    TrainerInfo *v0;
    int v1;

    v1 = sub_02001288(param0->unk_04);

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        v0 = CommInfo_TrainerInfo(param0->unk_8C);
        StringTemplate_SetPlayerName(param0->unk_38, 0, v0);
        ov5_021EAE78(param0, 59);
        param0->unk_48 = 6;
        break;
    default:
        Sound_PlayEffect(1500);
        param0->unk_90 = v1;

        {
            UnkStruct_0202B370 *v2 = sub_0202B370(param0->unk_34);
            TrainerInfo *v3 = TrainerInfo_New(4);

            TrainerInfo_SetName(v3, sub_0202AEF0(v2, v1));
            StringTemplate_SetPlayerName(param0->unk_38, 0, v3);
            Heap_FreeToHeap(v3);
        }

        ov5_021EAE78(param0, 60);
        param0->unk_48 = 10;
        break;
    }

    Window_Clear(&param0->unk_20, 0);
    BGL_DeleteWindow(&param0->unk_20);
    sub_02001384(param0->unk_04, NULL, NULL);
    sub_02013A3C(param0->unk_00);

    return 0;
}

static BOOL ov5_021EACFC(UnkStruct_ov5_021EAE78 *param0)
{
    if (Text_IsPrinterActive(param0->unk_40) == 0) {
        param0->unk_44 = sub_02002100(param0->fieldSystem->unk_08, &Unk_ov5_021FAF00, 1024 - (18 + 12) - 9, 11, 4);
        param0->unk_48 = 11;
    }

    return 0;
}

static BOOL ov5_021EAD38(UnkStruct_ov5_021EAE78 *param0)
{
    UnkStruct_0202B370 *v0 = sub_0202B370(param0->unk_34);
    TrainerInfo *v1;
    DWCFriendData *v2;
    Strbuf *v3;
    int v4 = sub_02002114(param0->unk_44, 4);

    if (v4 == 0xffffffff) {
        return 0;
    } else if (v4 == 0) {
        sub_02030788(sub_0203068C(param0->unk_34), param0->unk_90);
        sub_0202AFD4(v0, param0->unk_90);
        sub_02039298(param0->unk_34, param0->unk_8C, 32 - 1, 4, 0);
        param0->unk_48 = 1;
    } else {
        v1 = CommInfo_TrainerInfo(param0->unk_8C);
        StringTemplate_SetPlayerName(param0->unk_38, 0, v1);
        ov5_021EAE78(param0, 59);
        param0->unk_48 = 6;
    }

    return 0;
}

static BOOL ov5_021EADB4(TaskManager *param0)
{
    UnkStruct_ov5_021EAE78 *v0 = TaskManager_Environment(param0);
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    switch (v0->unk_48) {
    case 0:
        if (ov5_021EA874(v0)) {
            v0->unk_48 = 12;
        }
        break;
    case 1:
        if (ov5_021EA8F0(v0)) {
            v0->unk_48 = 12;
        }
        break;
    case 2:
        ov5_021EA9BC(v0);
        break;
    case 3:
        ov5_021EA9F8(v0);
        break;
    case 4:
        ov5_021EAA6C(v0);
        break;
    case 5:
        ov5_021EAAA8(v0);
        break;
    case 6:
        ov5_021EAAEC(v0);
        break;
    case 7:
        ov5_021EAB28(v0);
        break;
    case 8:
        ov5_021EAB58(v0);
        break;
    case 9:
        ov5_021EAC44(v0);
        break;
    case 10:
        ov5_021EACFC(v0);
        break;
    case 11:
        ov5_021EAD38(v0);
        break;
    case 12:
        ov5_021EAF1C(v0);
        Heap_FreeToHeap(v0);
        sub_0203D140();
        return 1;
    }

    return 0;
}

static void ov5_021EAE78(UnkStruct_ov5_021EAE78 *param0, int param1)
{
    if (BGL_WindowAdded(&param0->unk_10)) {
        BGL_DeleteWindow(&param0->unk_10);
    }

    MessageLoader_GetStrbuf(param0->unk_3C, param1, param0->unk_08);
    StringTemplate_Format(param0->unk_38, param0->unk_0C, param0->unk_08);
    FieldMessage_AddWindow(param0->fieldSystem->unk_08, &param0->unk_10, 3);
    FieldMessage_DrawWindow(&param0->unk_10, SaveData_Options(param0->fieldSystem->saveData));

    param0->unk_40 = FieldMessage_Print(&param0->unk_10, param0->unk_0C, SaveData_Options(param0->fieldSystem->saveData), 1);
}

static void ov5_021EAEE0(UnkStruct_ov5_021EAE78 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_ov5_021EAE78));

    param0->unk_38 = StringTemplate_Default(4);
    param0->unk_3C = MessageLoader_Init(0, 26, 675, 4);
    param0->unk_0C = Strbuf_Init(110, 4);
    param0->unk_08 = Strbuf_Init(110, 4);
}

static void ov5_021EAF1C(UnkStruct_ov5_021EAE78 *param0)
{
    MessageLoader_Free(param0->unk_3C);
    StringTemplate_Free(param0->unk_38);
    Strbuf_Free(param0->unk_0C);
    Strbuf_Free(param0->unk_08);

    if (BGL_WindowAdded(&param0->unk_10)) {
        BGL_DeleteWindow(&param0->unk_10);
    }
}

void ov5_021EAF50(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021EAE78 *v0;
    TaskManager *v1 = fieldSystem->unk_10;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov5_021EAE78));
    ov5_021EAEE0(v0);

    v0->fieldSystem = fieldSystem;
    v0->unk_34 = fieldSystem->saveData;
    v0->unk_48 = 0;

    if (v1 == NULL) {
        FieldTask_Set(fieldSystem, ov5_021EADB4, v0);
    } else {
        FieldTask_Start(v1, ov5_021EADB4, v0);
    }
}

static void ov5_021EAF90(BmpList *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }
}
