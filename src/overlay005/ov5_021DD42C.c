#include "overlay005/ov5_021DD42C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sentence.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "overlay005/struct_ov5_021DD42C.h"

#include "field_script_context.h"
#include "game_options.h"
#include "message.h"
#include "save_player.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02014A84.h"
#include "unk_02018340.h"
#include "unk_0205D8CC.h"

typedef struct {
    Strbuf *unk_00;
    Strbuf *unk_04;
    StringTemplate *unk_08;
    Window *unk_0C;
    u8 *unk_10;
    u8 *unk_14;
} UnkStruct_ov5_021DD648;

static u8 ov5_021DD574(ScriptContext *param0);
static void ov5_021DD588(FieldSystem *fieldSystem, UnkStruct_ov5_021DD648 *param1);
static void ov5_021DD5D0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov5_021DD648 *param2);
static void ov5_021DD610(FieldSystem *fieldSystem, UnkStruct_ov5_021DD648 *param1);
static void ov5_021DD648(UnkStruct_ov5_021DD648 *param0, const MessageLoader *param1, u32 param2);
static void ov5_021DD664(UnkStruct_ov5_021DD648 *param0, u16 param1, u16 param2, u16 param3, u16 param4);
static void ov5_021DD6B4(UnkStruct_ov5_021DD648 *param0, int param1, int param2, int param3, int param4);
static void ov5_021DD6DC(UnkStruct_ov5_021DD648 *param0, int param1);

void ov5_021DD42C(UnkStruct_ov5_021DD42C *param0, ScriptContext *param1)
{
    param0->unk_00 = ov5_021DD574(param1);
    param0->unk_01 = 0;
    param0->unk_02 = 1;
}

void ov5_021DD444(ScriptContext *param0, const MessageLoader *param1, u16 param2, u8 param3, UnkStruct_ov5_021DD42C *param4)
{
    UnkStruct_ov5_021DD648 v0;
    u8 v1;
    u8 v2;
    u8 v3;

    ov5_021DD588(param0->fieldSystem, &v0);
    ov5_021DD610(param0->fieldSystem, &v0);
    ov5_021DD648(&v0, param1, param2);

    if (param4 == NULL) {
        v1 = ov5_021DD574(param0);
        v2 = 0;
        v3 = 1;
    } else {
        v1 = param4->unk_00;
        v2 = param4->unk_01;
        v3 = param4->unk_02;
    }

    ov5_021DD6B4(&v0, v3, v1, param3, v2);
}

void ov5_021DD498(ScriptContext *param0, const MessageLoader *param1, int param2)
{
    UnkStruct_ov5_021DD648 v0;

    ov5_021DD588(param0->fieldSystem, &v0);
    ov5_021DD610(param0->fieldSystem, &v0);
    ov5_021DD648(&v0, param1, param2);
    ov5_021DD6DC(&v0, 1);
}

void ov5_021DD4CC(ScriptContext *param0, u16 param1, u16 param2, u16 param3, s16 param4, u8 param5)
{
    UnkStruct_ov5_021DD648 v0;
    Sentence v1;

    ov5_021DD588(param0->fieldSystem, &v0);
    ov5_021DD610(param0->fieldSystem, &v0);
    ov5_021DD664(&v0, param1, param2, param3, param4);

    if (param5 != 0xFF) {
        ov5_021DD6B4(&v0, 1, ov5_021DD574(param0), param5, 0);
    } else {
        ov5_021DD6DC(&v0, 1);
    }
}

void ov5_021DD530(ScriptContext *param0, StringTemplate *param1, u8 param2, u8 param3)
{
    UnkStruct_ov5_021DD648 v0;

    ov5_021DD5D0(param0->fieldSystem, param1, &v0);
    ov5_021DD610(param0->fieldSystem, &v0);
    ov5_021DD648(&v0, param0->loader, param2);
    ov5_021DD6B4(&v0, 1, ov5_021DD574(param0), param3, 0);
}

static u8 ov5_021DD574(ScriptContext *param0)
{
    return Options_TextFrameDelay(SaveData_Options(param0->fieldSystem->saveData));
}

static void ov5_021DD588(FieldSystem *fieldSystem, UnkStruct_ov5_021DD648 *param1)
{
    param1->unk_00 = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    param1->unk_04 = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    param1->unk_08 = *(StringTemplate **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    param1->unk_0C = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    param1->unk_10 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    param1->unk_14 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
}

static void ov5_021DD5D0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov5_021DD648 *param2)
{
    param2->unk_00 = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    param2->unk_04 = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    param2->unk_08 = param1;
    param2->unk_0C = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    param2->unk_10 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    param2->unk_14 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
}

static void ov5_021DD610(FieldSystem *fieldSystem, UnkStruct_ov5_021DD648 *param1)
{
    if (*(param1->unk_10) == 0) {
        FieldMessage_AddWindow(fieldSystem->unk_08, param1->unk_0C, 3);
        FieldMessage_DrawWindow(param1->unk_0C, SaveData_Options(fieldSystem->saveData));
        *(param1->unk_10) = 1;
    }

    BGL_FillWindow(param1->unk_0C, 15);
}

static void ov5_021DD648(UnkStruct_ov5_021DD648 *param0, const MessageLoader *param1, u32 param2)
{
    MessageLoader_GetStrbuf(param1, param2, param0->unk_04);
    StringTemplate_Format(param0->unk_08, param0->unk_00, param0->unk_04);
}

static void ov5_021DD664(UnkStruct_ov5_021DD648 *param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    Sentence v0;
    Strbuf *v1;

    sub_02014A84(&v0);
    sub_02014CE0(&v0, param1, param2);
    sub_02014CF8(&v0, 0, param3);
    sub_02014CF8(&v0, 1, param4);

    v1 = sub_02014B34(&v0, 32);

    Strbuf_Copy(param0->unk_00, v1);
    Strbuf_Free(v1);
}

static void ov5_021DD6B4(UnkStruct_ov5_021DD648 *param0, int param1, int param2, int param3, int param4)
{
    *(param0->unk_14) = sub_0205D9CC(param0->unk_0C, param0->unk_00, param1, param2, param3, param4);
}

static void ov5_021DD6DC(UnkStruct_ov5_021DD648 *param0, int param1)
{
    *(param0->unk_14) = Text_AddPrinterWithParams(param0->unk_0C, param1, param0->unk_00, 0, 0, TEXT_SPEED_INSTANT, NULL);
}
