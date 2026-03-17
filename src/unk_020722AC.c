#include <nitro.h>
#include <string.h>

#include "struct_defs/mail.h"
#include "struct_defs/struct_02097728.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "field/field_system.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay006/pc_animation.h"

#include "bag.h"
#include "bg_window.h"
#include "field_system.h"
#include "field_task.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "item.h"
#include "list_menu.h"
#include "mail.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "scroll_prompts.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_0203D1B8.h"
#include "unk_02097624.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 trainerGender;
    u8 mailType;
    u16 item;
    String *unk_08;
} UnkStruct_02072EB8;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_020F0524;

typedef struct {
    StringTemplate *unk_00;
    String *unk_04;
    String *unk_08;
    String *unk_0C;
    String *unk_10[6];
} UnkStruct_02072334_sub1;

typedef struct {
    enum HeapID heapID;
    int *unk_04;
    SysTask *unk_08;
    SysTaskFunc unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    UnkStruct_02072EB8 unk_1C[20];
    MessageLoader *unk_10C;
    UnkStruct_02072334_sub1 unk_110;
    u8 unk_138;
    u8 unk_139;
    u8 unk_13A;
    u8 unk_13B_0 : 4;
    u8 unk_13B_4 : 2;
    u8 unk_13B_6 : 2;
    u16 unk_13C;
    u16 unk_13E;
    ListMenuTemplate unk_140;
    ListMenu *unk_160;
    StringList *unk_164;
    Menu *unk_168;
    FieldSystem *fieldSystem;
    BgConfig *unk_170;
    Window unk_174;
    Window unk_184;
    Window unk_194;
    ScrollPrompts *unk_1A4;
    UnkStruct_02097728 *unk_1A8;
    Mailbox *mailbox;
    Bag *bag;
    PartyMenu *partyMenu;
} UnkStruct_02072334;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_020736D8;

void sub_020736D8(FieldTask *param0);
void sub_020722AC(void *param0, int *param1);
static void sub_02072334(UnkStruct_02072334 *param0);
static void sub_02072364(SysTask *param0, void *param1);
static void sub_02072370(SysTask *param0, void *param1);
static void sub_02072390(SysTask *param0, void *param1);
static void sub_02072418(SysTask *param0, void *param1);
static void sub_02072470(SysTask *param0, void *param1);
static void sub_02072518(SysTask *param0, void *param1);
static void sub_02072534(SysTask *param0, void *param1);
static void sub_02072550(SysTask *param0, void *param1);
static void sub_020725D0(SysTask *param0, void *param1);
static void sub_020726B4(SysTask *param0, void *param1);
static void sub_02072754(SysTask *param0, void *param1);
static void sub_020727F8(SysTask *param0, void *param1);
static void sub_02072878(SysTask *param0, void *param1);
static void sub_02072EA4(UnkStruct_02072334 *param0, SysTaskFunc param1, SysTaskFunc param2);
static void sub_02072EB8(UnkStruct_02072EB8 *param0, u8 param1);
static void sub_02072ED0(UnkStruct_02072EB8 *param0, u8 param1, enum HeapID heapID);
static void sub_02072F04(UnkStruct_02072EB8 *param0, u8 param1);
static void sub_020729B4(UnkStruct_02072334 *param0);
static void sub_02072BBC(ListMenu *param0, u32 param1, u8 param2);
static void sub_02072C0C(ListMenu *param0, u32 param1, u8 param2);
static void sub_02072C98(UnkStruct_02072334 *param0, u8 param1, u8 param2);
static void sub_02072DA4(ListMenu *param0, u32 param1, u8 param2);
static void sub_02072DB8(UnkStruct_02072334 *param0);
static void sub_02072E4C(UnkStruct_02072334 *param0);
static void sub_02072F30(UnkStruct_02072334 *param0, SaveData *saveData, enum HeapID heapID);
static void sub_02073020(UnkStruct_02072334 *param0, u8 param1);
static BOOL sub_02073060(UnkStruct_02072334 *param0);
static void sub_020730B8(UnkStruct_02072334 *param0, u8 param1, BOOL param2);
static void sub_02073130(UnkStruct_02072334 *param0);
static void sub_020731A4(UnkStruct_02072334 *param0);
static void sub_020731F4(UnkStruct_02072334 *param0);
static void sub_02073294(UnkStruct_02072334 *param0);
static void sub_020732C4(UnkStruct_02072334 *param0, int param1, u8 param2, u8 param3, int param4);
static void sub_02073398(UnkStruct_02072334 *param0);
static BOOL sub_020733B4(UnkStruct_02072334 *param0);
static void sub_020733E0(UnkStruct_02072334 *param0);
static int sub_0207340C(UnkStruct_02072334 *param0);
static int sub_02073438(UnkStruct_02072334 *param0, int param1);
static int sub_02073480(UnkStruct_02072334 *param0);
static int sub_020734F4(UnkStruct_02072334 *param0, u8 param1);
static int sub_02073524(UnkStruct_02072334 *param0, int mode);
static int sub_020735E8(UnkStruct_02072334 *param0);

static const ListMenuTemplate Unk_020F0504 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x7,
    0x2,
    0xA,
    0x1,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x1,
    0x1,
    0x0,
    0x0,
    NULL
};

static const UnkStruct_020F0524 Unk_020F0524[] = {
    { 0x1, 0x0 },
    { 0x2, 0x1 },
    { 0x3, 0x2 },
    { 0x4, 0x3 }
};

void sub_020722AC(void *param0, int *param1)
{
    UnkStruct_02072334 *v0 = NULL;
    SaveData *saveData;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_43, 0x5000);

    v0 = Heap_Alloc(HEAP_ID_43, sizeof(UnkStruct_02072334));
    MI_CpuClear8(v0, sizeof(UnkStruct_02072334));
    v0->unk_04 = param1;

    saveData = FieldSystem_GetSaveData(param0);

    v0->fieldSystem = (FieldSystem *)param0;
    v0->heapID = HEAP_ID_43;
    v0->unk_19 = 0;
    v0->unk_1A = 0xFF;
    v0->unk_16 = Options_TextFrameDelay(SaveData_GetOptions(saveData));
    v0->unk_14 = Options_Frame(SaveData_GetOptions(saveData));

    sub_02072ED0(v0->unk_1C, 20, v0->heapID);
    sub_02072F30(v0, saveData, v0->heapID);
    sub_02073130(v0);

    v0->unk_08 = SysTask_Start(sub_02072370, v0, 0);
}

void sub_02072334(UnkStruct_02072334 *param0)
{
    SysTask_Done(param0->unk_08);
    *(param0->unk_04) = 1;
    sub_020731A4(param0);
    sub_02072F04(param0->unk_1C, 20);
    Heap_Free(param0);
    Heap_Destroy(param0->heapID);
}

static void sub_02072364(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;
    sub_02072334(v0);
}

static void sub_02072370(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;

    sub_020731F4(v0);
    sub_020729B4(v0);
    SysTask_SetCallback(param0, sub_02072390);
}

static void sub_02072390(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;
    s32 v1 = ListMenu_ProcessInput(v0->unk_160);

    if (v0->unk_1A4 != NULL) {
        ScrollPrompts_UpdateAnim(v0->unk_1A4);
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        sub_02072EA4(v0, sub_02072518, sub_02072364);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        switch (v1) {
        case 0xffffffff:
        case 0xfffffffe:
        case 0xFFFF:
            sub_02072EA4(v0, sub_02072518, sub_02072364);
            break;
        default:
            v0->unk_18 = v1;
            sub_02072EA4(v0, sub_02072518, sub_02072418);
            break;
        }
    }

    return;
}

static void sub_02072418(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;

    switch (v0->unk_10) {
    case 0:
        sub_020731F4(v0);
        sub_02072C98(v0, 0, 0);
        sub_020732C4(v0, 0, v0->unk_16, 0, 1);
        ++v0->unk_10;
        break;
    case 1:
        if (!sub_020733B4(v0)) {
            break;
        }

        SysTask_SetCallback(param0, sub_02072470);
        v0->unk_10 = 0;
        break;
    }

    return;
}

static void sub_02072470(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;
    s32 v1 = ListMenu_ProcessInput(v0->unk_160);

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        sub_02072EA4(v0, sub_02072534, sub_02072370);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        switch (v1) {
        case 0xffffffff:
        case 0xfffffffe:
        case 3:
            sub_02072EA4(v0, sub_02072534, sub_02072370);
            break;
        case 1:
            sub_02072EA4(v0, sub_020725D0, NULL);
            break;
        case 2:
            sub_02072EA4(v0, sub_02072754, sub_020727F8);
            break;
        case 0:
        default:
            SysTask_SetCallback(param0, sub_02072550);
            break;
        }
    }

    return;
}

static void sub_02072518(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;

    sub_02072DB8(v0);
    sub_02073294(v0);
    SysTask_SetCallback(param0, v0->unk_0C);
}

static void sub_02072534(SysTask *param0, void *param1)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)param1;

    sub_02072E4C(v0);
    sub_02073294(v0);
    SysTask_SetCallback(param0, v0->unk_0C);
}

static void sub_02072550(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_02072334 *v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        if (!sub_02073438(v1, 0)) {
            return;
        }

        sub_020734F4(v1, 1);
        break;
    case 1:
        if (!sub_020735E8(v1)) {
            return;
        }

        break;
    case 2:
        if (!sub_02073480(v1)) {
            return;
        }

        break;
    case 3:
        if (!sub_02073438(v1, 1)) {
            return;
        }

        sub_020731F4(v1);
        sub_020729B4(v1);
        v1->unk_10 = 0;
        SysTask_SetCallback(param0, sub_02072390);
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_020725D0(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_02072334 *v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        sub_020732C4(v1, 1, v1->unk_16, 0, 1);
        break;
    case 1:
        if (!sub_020733B4(v1)) {
            return;
        }

        sub_020733E0(v1);
        break;
    case 2:
        v0 = sub_0207340C(v1);

        if (v0 < 0) {
            return;
        }

        if (v0) {
            sub_020732C4(v1, 2, v1->unk_16, 0, 0);
            v1->unk_10 = 4;
        } else {
            v1->unk_10 = 3;
        }
        return;
    case 3:
        sub_02073398(v1);
        sub_02072EA4(v1, sub_02072534, sub_02072370);
        v1->unk_10 = 0;
        return;
    case 4:
        if (!sub_020733B4(v1)) {
            return;
        }

        sub_020733E0(v1);
        break;
    case 5:
        v0 = sub_0207340C(v1);

        if (v0 < 0) {
            return;
        }

        if (v0) {
            sub_02072EA4(v1, sub_02072878, NULL);
        } else {
            sub_02072EA4(v1, sub_020726B4, sub_02072534);
        }

        sub_02073398(v1);
        v1->unk_10 = 0;
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_020726B4(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_02072334 *v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        if (v1->unk_0C == NULL) {
            sub_020731F4(v1);
            sub_02072C98(v1, 0, 1);
        }

        if (sub_02073060(v1)) {
            sub_020732C4(v1, 3, v1->unk_16, 0, 1);
        } else {
            sub_020732C4(v1, 4, v1->unk_16, 0, 1);
        }
        break;
    case 1:
        if (!sub_020733B4(v1)) {
            return;
        }
        break;
    case 2:
        if (!(gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            return;
        }

        sub_02073398(v1);
        sub_02072EA4(v1, sub_02072534, sub_02072370);

        v1->unk_10 = 0;
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_02072754(SysTask *param0, void *param1)
{
    u8 v0;
    PartyMenu *partyMenu;
    UnkStruct_02072334 *v2 = (UnkStruct_02072334 *)param1;

    switch (v2->unk_10) {
    case 0:
        if (!sub_02073438(v2, 0)) {
            return;
        }

        sub_020734F4(v2, 1);
        break;
    case 1:
        if (!sub_02073524(v2, PARTY_MENU_MODE_MAILBOX)) {
            return;
        }
        break;
    case 2:
        if (!sub_02073480(v2)) {
            return;
        }
        break;
    case 3:
        if (!sub_02073438(v2, 1)) {
            return;
        }

        v0 = v2->partyMenu->selectedMonSlot;
        Heap_Free(v2->partyMenu);

        if (v0 == 7) {
            sub_02072EA4(v2, v2->unk_0C, NULL);
            v2->unk_10 = 0;
            return;
        }

        sub_020730B8(v2, v0, 0);
        sub_02072EA4(v2, sub_02072370, NULL);
        v2->unk_10 = 0;
        return;
    }

    v2->unk_10++;
    return;
}

static void sub_020727F8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_02072334 *v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        sub_020731F4(v1);
        sub_02072C98(v1, 0, 2);
        sub_020732C4(v1, 5, v1->unk_16, 0, 1);
        break;
    case 1:
        if (!sub_020733B4(v1)) {
            return;
        }
        break;
    case 2:
        if (!(gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            return;
        }

        sub_02073398(v1);
        sub_02072EA4(v1, sub_02072534, sub_02072370);
        v1->unk_10 = 0;
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_02072878(SysTask *param0, void *param1)
{
    int v0;
    u8 v1, v2;
    PartyMenu *partyMenu;
    UnkStruct_02072334 *v4 = (UnkStruct_02072334 *)param1;

    switch (v4->unk_10) {
    case 0:
        if (!sub_02073438(v4, 0)) {
            return;
        }

        sub_020734F4(v4, 1);

        if (Bag_GetItemQuantity(v4->bag, v4->unk_1C[v4->unk_18].item, v4->heapID) > 0) {
            v4->unk_13B_6 = 1;
        } else {
            v4->unk_13B_6 = 0;
        }
        break;
    case 1:

        if (!sub_02073524(v4, PARTY_MENU_MODE_GIVE_ITEM)) {
            return;
        }

        v1 = v4->partyMenu->selectedMonSlot;
        v2 = v4->partyMenu->menuSelectionResult;

        Heap_Free(v4->partyMenu);

        if ((v2 != 6) || (v1 == 7)) {
            v4->unk_0C = sub_020726B4;
            v4->unk_10 = 4;
            return;
        }

        v4->unk_17 = v1;
        v4->unk_1C[v4->unk_18].unk_01 = 0;
        break;
    case 2:
        v0 = sub_020735E8(v4);
        if (!v0) {
            return;
        }

        if (v0 == 1) {
            v4->unk_0C = sub_020726B4;
            v4->unk_10 = 4;
            return;
        }

        v4->unk_0C = sub_02072370;
        break;
    case 3:
        if (!sub_02073524(v4, PARTY_MENU_MODE_GIVE_MAIL)) {
            return;
        }

        Heap_Free(v4->partyMenu);
        sub_020730B8(v4, v4->unk_17, v4->unk_13B_6);
        v4->unk_13B_6 = 0;
        break;
    case 4:
        if (!sub_02073480(v4)) {
            return;
        }
        break;
    case 5:
        if (!sub_02073438(v4, 1)) {
            return;
        }

        sub_02072EA4(v4, v4->unk_0C, NULL);
        v4->unk_10 = 0;
        return;
    }

    ++v4->unk_10;
}

static void sub_020729B4(UnkStruct_02072334 *param0)
{
    u8 v0 = 0, v1 = 0;
    UnkStruct_02072EB8 *v2;
    static const WindowTemplate v3[2] = {
        { 0x3, 0x13, 0x1, 0xC, 0x10, 0xD, 0x295 },
        { 0x3, 0x1, 0x1, 0x9, 0x2, 0xD, 0x283 }
    };

    param0->unk_1A4 = ScrollPrompts_New(param0->heapID);

    ScrollPrompts_SetPosition(param0->unk_1A4, 200, 10, 138);
    ScrollPrompts_SetDrawFlag(param0->unk_1A4, SCROLL_PROMPT_TOP_ARROW, TRUE);
    ScrollPrompts_SetDrawFlag(param0->unk_1A4, SCROLL_PROMPT_BOTTOM_ARROW, TRUE);
    Window_AddFromTemplate(param0->unk_170, &(param0->unk_174), &v3[0]);
    Window_AddFromTemplate(param0->unk_170, &(param0->unk_194), &v3[1]);
    Window_FillTilemap(&param0->unk_174, (15 << 4) | 15);
    Window_FillTilemap(&param0->unk_194, (15 << 4) | 15);

    param0->unk_164 = StringList_New(param0->unk_1B + 1, param0->heapID);

    for (v0 = 0; v0 < 20; v0++) {
        v2 = &(param0->unk_1C[v0]);

        if (!v2->unk_01) {
            continue;
        }

        StringList_AddFromString(param0->unk_164, v2->unk_08, v2->unk_00);
        v1++;
    }

    StringList_AddFromString(param0->unk_164, param0->unk_110.unk_08, 0xFFFF);
    v1++;

    MI_CpuCopy8((void *)&Unk_020F0504, (void *)&(param0->unk_140), sizeof(ListMenuTemplate));

    param0->unk_140.window = &(param0->unk_174);
    param0->unk_140.choices = param0->unk_164;
    param0->unk_140.parent = (void *)param0;
    param0->unk_140.count = v1;
    param0->unk_140.yOffset = 6;
    param0->unk_140.cursorCallback = sub_02072C0C;
    param0->unk_140.printCallback = sub_02072BBC;

    if (param0->unk_13B_4) {
        if (param0->unk_13C == 0) {
            if ((param0->unk_13E != 0) && (param0->unk_13E >= (v1 - 1))) {
                --param0->unk_13E;
            }
        } else {
            if (param0->unk_13C + 7 >= v1) {
                --param0->unk_13C;
            }
        }

        param0->unk_13B_4 = 0;
    }

    param0->unk_160 = ListMenu_New(&(param0->unk_140), param0->unk_13C, param0->unk_13E, param0->heapID);

    Window_DrawStandardFrame(&param0->unk_174, 0, 1024 - (18 + 12) - 9, 11);
    Text_AddPrinterWithParamsAndColor(&param0->unk_194, FONT_SYSTEM, param0->unk_110.unk_0C, 2, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Window_DrawStandardFrame(&param0->unk_194, 0, 1024 - (18 + 12) - 9, 11);
    Bg_ScheduleTilemapTransfer(param0->unk_170, 3);

    param0->unk_13B_0 = 0;
}

static void sub_02072BBC(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_02072334 *v0 = (UnkStruct_02072334 *)ListMenu_GetAttribute(param0, 19);

    if (param1 == 0xFFFF) {
        ListMenu_SetAltTextColors(param0, 1, 15, 2);
    } else {
        if (v0->unk_1C[param1].trainerGender != GENDER_MALE) {
            ListMenu_SetAltTextColors(param0, 3, 15, 4);
        } else {
            ListMenu_SetAltTextColors(param0, 7, 15, 8);
        }
    }
}

static void sub_02072C0C(ListMenu *param0, u32 param1, u8 param2)
{
    u16 v0, v1, v2;
    UnkStruct_02072334 *v3 = (UnkStruct_02072334 *)ListMenu_GetAttribute(param0, 19);

    ListMenu_GetListAndCursorPos(param0, &v0, &v1);
    v2 = ListMenu_GetAttribute(param0, 2);

    if (!param2) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    if (v0 == 0) {
        ScrollPrompts_SetDrawFlag(v3->unk_1A4, SCROLL_PROMPT_TOP_ARROW, FALSE);
    } else {
        ScrollPrompts_SetDrawFlag(v3->unk_1A4, SCROLL_PROMPT_TOP_ARROW, TRUE);
    }

    if (v0 < (v2 - 7)) {
        ScrollPrompts_SetDrawFlag(v3->unk_1A4, SCROLL_PROMPT_BOTTOM_ARROW, TRUE);
    } else {
        ScrollPrompts_SetDrawFlag(v3->unk_1A4, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
    }
}

static void sub_02072C98(UnkStruct_02072334 *param0, u8 param1, u8 param2)
{
    u8 v0 = 0, v1 = 0;
    static const WindowTemplate v2 = {
        0x3,
        0x1,
        0x1,
        0xE,
        0x8,
        0xD,
        0x295
    };

    v1 = NELEMS(Unk_020F0524);
    param0->unk_164 = StringList_New(v1, param0->heapID);

    Window_AddFromTemplate(param0->unk_170, &(param0->unk_174), &v2);
    Window_FillTilemap(&param0->unk_174, (15 << 4) | 15);

    for (v0 = 0; v0 < v1; v0++) {
        StringList_AddFromMessageBank(param0->unk_164, param0->unk_10C, Unk_020F0524[v0].unk_00, Unk_020F0524[v0].unk_04);
    }

    MI_CpuCopy8((void *)&Unk_020F0504, (void *)&(param0->unk_140), sizeof(ListMenuTemplate));

    param0->unk_140.window = &(param0->unk_174);
    param0->unk_140.choices = param0->unk_164;
    param0->unk_140.parent = (void *)param0;
    param0->unk_140.count = v1;
    param0->unk_140.maxDisplay = 4;
    param0->unk_140.pagerMode = PAGER_MODE_NONE;
    param0->unk_140.cursorCallback = sub_02072DA4;
    param0->unk_160 = ListMenu_New(&(param0->unk_140), param1, param2, param0->heapID);

    Window_DrawStandardFrame(&param0->unk_174, 0, 1024 - (18 + 12) - 9, 11);
    Bg_ScheduleTilemapTransfer(param0->unk_170, 3);

    param0->unk_13B_0 = 1;
}

static void sub_02072DA4(ListMenu *param0, u32 param1, u8 param2)
{
    if (!param2) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static void sub_02072DB8(UnkStruct_02072334 *param0)
{
    u16 v0, v1;

    ListMenu_Free(param0->unk_160, &v0, &v1);
    StringList_Free(param0->unk_164);

    Window_ClearAndCopyToVRAM(&(param0->unk_194));
    Window_EraseStandardFrame(&(param0->unk_194), 0);
    Window_Remove(&(param0->unk_194));

    Window_ClearAndCopyToVRAM(&(param0->unk_174));
    Window_EraseStandardFrame(&(param0->unk_174), 0);
    Window_Remove(&(param0->unk_174));

    param0->unk_13C = v0;
    param0->unk_13E = v1;

    if (param0->unk_1A4 != NULL) {
        ScrollPrompts_Free(param0->unk_1A4);
        param0->unk_1A4 = NULL;
    }

    Bg_ScheduleTilemapTransfer(param0->unk_170, 3);
}

static void sub_02072E4C(UnkStruct_02072334 *param0)
{
    u16 v0, v1;

    Window_ClearAndCopyToVRAM(&(param0->unk_174));
    Window_EraseStandardFrame(&(param0->unk_174), 0);
    ListMenu_Free(param0->unk_160, &v0, &v1);
    StringList_Free(param0->unk_164);
    Window_Remove(&(param0->unk_174));
    sub_02073398(param0);
    Bg_ScheduleTilemapTransfer(param0->unk_170, 3);
}

static void sub_02072EA4(UnkStruct_02072334 *param0, SysTaskFunc param1, SysTaskFunc param2)
{
    SysTask_SetCallback(param0->unk_08, param1);

    param0->unk_10 = 0;
    param0->unk_0C = param2;
}

static void sub_02072EB8(UnkStruct_02072EB8 *param0, u8 param1)
{
    param0->unk_00 = param1;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_03 = 0;

    if (param0->unk_08 != NULL) {
        String_Clear(param0->unk_08);
    }
}

static void sub_02072ED0(UnkStruct_02072EB8 *param0, u8 param1, enum HeapID heapID)
{
    u8 v0 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        param0[v0].unk_08 = String_Init(8, heapID);
        sub_02072EB8(param0, v0);
    }
}

static void sub_02072F04(UnkStruct_02072EB8 *param0, u8 param1)
{
    u8 v0 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_08 != NULL) {
            String_Free(param0[v0].unk_08);
        }
    }
}

static void sub_02072F30(UnkStruct_02072334 *param0, SaveData *saveData, enum HeapID heapID)
{
    u8 i = 0, v1 = 0, v2 = 0xFF, v3 = 0;
    int v4;
    Mailbox *mailbox;
    Mail *mail;
    UnkStruct_02072EB8 *v7, *v8;

    mailbox = SaveData_GetMailbox(saveData);

    param0->mailbox = mailbox;
    param0->bag = SaveData_GetBag(saveData);

    mail = Mail_New(heapID);

    for (i = 0; i < MAILBOX_SIZE; i++) {
        sub_020284CC(mailbox, 0, i, mail);

        v7 = &(param0->unk_1C[i]);
        v8 = &(param0->unk_1C[param0->unk_19]);

        sub_02072EB8(v7, i);

        v7->unk_00 = i;

        if (!Mail_IsEmpty(mail)) {
            continue;
        }

        v7->unk_01 = 1;
        v7->trainerGender = Mail_GetTrainerGender(mail);
        v7->mailType = Mail_GetMailType(mail);
        v7->item = Item_ForMailNumber(v7->mailType);

        String_CopyChars(v7->unk_08, Mail_GetTrainerName(mail));

        v7->unk_02 = param0->unk_19;
        v8->unk_03 = v7->unk_00;

        param0->unk_19 = v7->unk_00;
        param0->unk_1B++;

        if (param0->unk_1A == 0xFF) {
            param0->unk_1A = i;
        }
    }

    param0->unk_1C[param0->unk_19].unk_03 = param0->unk_1A;
    param0->unk_1C[param0->unk_1A].unk_02 = param0->unk_19;

    Heap_Free(mail);
}

static void sub_02073020(UnkStruct_02072334 *param0, u8 param1)
{
    UnkStruct_02072EB8 *v0 = &(param0->unk_1C[param1]);

    param0->unk_1C[v0->unk_02].unk_03 = v0->unk_03;
    param0->unk_1C[v0->unk_03].unk_02 = v0->unk_02;
    param0->unk_1C[param1].unk_01 = 0;
    param0->unk_13B_4 = 1;
}

static BOOL sub_02073060(UnkStruct_02072334 *param0)
{
    UnkStruct_02072EB8 *v0;
    BOOL canFitItem;

    v0 = &(param0->unk_1C[param0->unk_18]);
    canFitItem = Bag_CanFitItem(param0->bag, v0->item, 1, param0->heapID);

    if (canFitItem) {
        Bag_TryAddItem(param0->bag, v0->item, 1, param0->heapID);
    }

    sub_02028470(param0->mailbox, 0, param0->unk_18);
    sub_02073020(param0, param0->unk_18);
    sub_02072EB8(v0, param0->unk_18);

    return canFitItem;
}

static void sub_020730B8(UnkStruct_02072334 *param0, u8 param1, BOOL param2)
{
    UnkStruct_02072EB8 *v0;
    Party *v1;
    Pokemon *v2;

    v0 = &(param0->unk_1C[param0->unk_18]);

    if (!v0->unk_01) {
        return;
    }

    v1 = SaveData_GetParty(FieldSystem_GetSaveData(param0->fieldSystem));
    v2 = Party_GetPokemonBySlotIndex(v1, param1);

    sub_020977E4(param0->mailbox, param0->unk_18, v2, param0->heapID);

    if (param2) {
        if (Bag_CanFitItem(param0->bag, v0->item, 1, param0->heapID)) {
            Bag_TryAddItem(param0->bag, v0->item, 1, param0->heapID);
        }
    }

    sub_02073020(param0, param0->unk_18);
    sub_02072EB8(v0, param0->unk_18);
}

static void sub_02073130(UnkStruct_02072334 *param0)
{
    MessageLoader *v0;
    int v1;
    String *v2;

    param0->unk_10C = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MAILBOX, param0->heapID);
    param0->unk_110.unk_00 = StringTemplate_New(1, 128, param0->heapID);
    param0->unk_110.unk_04 = String_Init(128, param0->heapID);
    param0->unk_110.unk_08 = MessageLoader_GetNewString(param0->unk_10C, 4);
    param0->unk_110.unk_0C = MessageLoader_GetNewString(param0->unk_10C, 0);

    for (v1 = 0; v1 < 6; v1++) {
        param0->unk_110.unk_10[v1] = MessageLoader_GetNewString(param0->unk_10C, 6 + v1);
    }
}

static void sub_020731A4(UnkStruct_02072334 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        String_Free(param0->unk_110.unk_10[v0]);
    }

    String_Free(param0->unk_110.unk_0C);
    String_Free(param0->unk_110.unk_08);
    String_Free(param0->unk_110.unk_04);
    StringTemplate_Free(param0->unk_110.unk_00);
    MessageLoader_Free(param0->unk_10C);
}

static void sub_020731F4(UnkStruct_02072334 *param0)
{
    param0->unk_170 = FieldSystem_GetBgConfig(param0->fieldSystem);

    LoadMessageBoxGraphics(param0->unk_170, BG_LAYER_MAIN_3, 1024 - (18 + 12), 10, param0->unk_14, param0->heapID);
    LoadStandardWindowGraphics(param0->unk_170, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 0, param0->heapID);

    Font_LoadTextPalette(0, 13 * 32, param0->heapID);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, param0->heapID);

    Window_Add(param0->unk_170, &param0->unk_184, 3, 2, 19, 27, 4, 12, (1024 - (18 + 12) - 9) - 27 * 4);
    Window_FillTilemap(&param0->unk_184, 0);
}

static void sub_02073294(UnkStruct_02072334 *param0)
{
    Window_ClearAndCopyToVRAM(&param0->unk_184);
    Window_Remove(&param0->unk_184);

    MI_CpuClear8(&param0->unk_184, sizeof(Window));
    param0->unk_170 = NULL;
}

static void sub_020732C4(UnkStruct_02072334 *param0, int param1, u8 param2, u8 param3, int param4)
{
    String *v0;

    if (param4) {
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_184, 1, 1024 - (18 + 12), 10);
    }

    Window_FillRectWithColor(&param0->unk_184, (15 << 4) | 15, 0, 0, 27 * 8, 4 * 8);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);

    if (param1 == 0) {
        String_Clear(param0->unk_110.unk_04);
        StringTemplate_SetString(param0->unk_110.unk_00, 0, param0->unk_1C[param0->unk_18].unk_08, 2, 1, GAME_LANGUAGE);
        StringTemplate_Format(param0->unk_110.unk_00, param0->unk_110.unk_04, param0->unk_110.unk_10[param1]);

        v0 = param0->unk_110.unk_04;
    } else {
        v0 = param0->unk_110.unk_10[param1];
    }

    param0->unk_138 = Text_AddPrinterWithParamsAndColor(&param0->unk_184, FONT_MESSAGE, v0, 0, 0, param2, TEXT_COLOR(1, 2, 15), NULL);
    Window_CopyToVRAM(&param0->unk_184);
    param0->unk_139 = param3;
}

static void sub_02073398(UnkStruct_02072334 *param0)
{
    Window_EraseMessageBox(&param0->unk_184, 1);
    Window_ClearAndCopyToVRAM(&param0->unk_184);
}

static BOOL sub_020733B4(UnkStruct_02072334 *param0)
{
    if (Text_IsPrinterActive(param0->unk_138)) {
        return 0;
    }

    if (param0->unk_139) {
        sub_02073398(param0);
    }

    return 1;
}

static void sub_020733E0(UnkStruct_02072334 *param0)
{
    static const WindowTemplate v0 = {
        0x3,
        0x19,
        0xD,
        0x6,
        0x4,
        0xD,
        0x355
    };

    param0->unk_168 = Menu_MakeYesNoChoice(param0->unk_170, &v0, 1024 - (18 + 12) - 9, 11, param0->heapID);
}

static int sub_0207340C(UnkStruct_02072334 *param0)
{
    switch (Menu_ProcessInputAndHandleExit(param0->unk_168, param0->heapID)) {
    case 0:
        return 1;
    case 0xfffffffe:
        return 0;
    }

    return -1;
}

static int sub_02073438(UnkStruct_02072334 *param0, int param1)
{
    switch (param0->unk_12) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, param1, param1, 0x0, 6, 1, param0->heapID);
        param0->unk_12++;
        break;
    case 1:
        if (!IsScreenFadeDone()) {
            break;
        }

        param0->unk_12 = 0;
        return 1;
    }

    return 0;
}

static int sub_02073480(UnkStruct_02072334 *param0)
{
    switch (param0->unk_12) {
    case 0:
        FieldSystem_StartFieldMap(param0->fieldSystem);
        param0->unk_12++;
        break;
    case 1:
        if (!FieldSystem_IsRunningFieldMap(param0->fieldSystem)) {
            break;
        }

        FieldSystem_LoadPCAnimation(param0->fieldSystem, 90);
        FieldSystem_PlayPCBootUpAnimation(param0->fieldSystem, 90);
        param0->unk_12++;
        break;
    case 2:
        if (!MapPropOneShotAnimationManager_IsAnimationLoopFinished(param0->fieldSystem->mapPropOneShotAnimMan, 90)) {
            break;
        }

        param0->unk_12 = 0;
        return 1;
    }

    return 0;
}

static int sub_020734F4(UnkStruct_02072334 *param0, u8 param1)
{
    FieldSystem_UnloadAnimation(param0->fieldSystem, 90);

    if (param1 == 0) {
        sub_02072DB8(param0);
    } else {
        sub_02072E4C(param0);
    }

    sub_02073294(param0);
    return 1;
}

static int sub_02073524(UnkStruct_02072334 *param0, int mode)
{
    PartyMenu *partyMenu;

    switch (param0->unk_12) {
    case 0:
        partyMenu = Heap_Alloc(param0->heapID, sizeof(PartyMenu));
        MI_CpuClear8(partyMenu, sizeof(PartyMenu));

        partyMenu->party = SaveData_GetParty(FieldSystem_GetSaveData(param0->fieldSystem));
        partyMenu->bag = SaveData_GetBag(FieldSystem_GetSaveData(param0->fieldSystem));
        partyMenu->options = SaveData_GetOptions(FieldSystem_GetSaveData(param0->fieldSystem));
        partyMenu->mailbox = SaveData_GetMailbox(param0->fieldSystem->saveData);
        partyMenu->type = PARTY_MENU_TYPE_BASIC;
        partyMenu->mode = mode;
        partyMenu->usedItemID = param0->unk_1C[param0->unk_18].item;

        if (mode == PARTY_MENU_MODE_GIVE_MAIL) {
            partyMenu->selectedMonSlot = param0->unk_17;
        }

        FieldSystem_StartChildProcess(param0->fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
        param0->partyMenu = partyMenu;
        param0->unk_12++;
        break;
    case 1:
        if (FieldSystem_IsRunningApplication(param0->fieldSystem)) {
            break;
        }

        param0->unk_12 = 0;
        return 1;
    }

    return 0;
}

static int sub_020735E8(UnkStruct_02072334 *param0)
{
    int v0 = 0;

    switch (param0->unk_12) {
    case 0:
        if (param0->unk_1C[param0->unk_18].unk_01) {
            param0->unk_1A8 = sub_0203D94C(param0->fieldSystem, 0, param0->unk_18, param0->heapID);
        } else {
            param0->unk_1A8 = sub_0203D920(param0->fieldSystem, 0, param0->unk_17, param0->unk_1C[param0->unk_18].mailType, param0->heapID);
        }

        param0->unk_12++;
        break;
    case 1:
        if (FieldSystem_IsRunningApplication(param0->fieldSystem)) {
            break;
        }

        if (sub_02097728(param0->unk_1A8)) {
            param0->unk_1C[param0->unk_18].unk_01 = 1;
            sub_0209772C(param0->unk_1A8, 0, param0->unk_1C[param0->unk_18].unk_00);

            v0 = 2;
        } else {
            v0 = 1;
        }

        sub_02097770(param0->unk_1A8);
        param0->unk_12 = 0;
        return v0;
    }

    return 0;
}

static BOOL sub_02073694(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020736D8 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_04) {
    case 0:
        sub_020722AC(fieldSystem, &(v1->unk_00));
        v1->unk_04++;
        break;
    case 1:
        if (!v1->unk_00) {
            return 0;
        }

        Heap_Free(v1);
        return 1;
    }

    return 0;
}

void sub_020736D8(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020736D8 *v1 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_020736D8));

    v1->unk_00 = 0;
    v1->unk_04 = 0;

    FieldTask_InitCall(fieldSystem->task, sub_02073694, v1);
}
