#include "unk_020528D0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_0203A7D8.h"
#include "unk_020508D4.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_02070428.h"

typedef struct {
    int unk_00;
    FieldSystem *fieldSystem;
    BGL *unk_08;
    Window unk_0C;
    MessageLoader *unk_1C;
    StringTemplate *unk_20;
} UnkStruct_02052AA4;

static void sub_02052914(FieldSystem *fieldSystem, TaskManager *param1);
static BOOL sub_020529C4(TaskManager *param0);
static void sub_02052AA4(UnkStruct_02052AA4 *param0, u16 param1, u8 param2, u8 param3);

static const UnkStruct_ov61_0222C884 Unk_020EC2F0 = {
    0x3,
    0x4,
    0x5,
    0x19,
    0xF,
    0xD,
    0x1
};

static void sub_020528D0(BGL *param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    GXLayers_SetBanks(&v0);
    sub_02018368(&v1);
    sub_020183C4(param0, 3, &v2, 0);
    sub_02006E84(14, 6, 0, 13 * 0x20, 0x20, 11);
}

static void sub_02052914(FieldSystem *fieldSystem, TaskManager *param1)
{
    UnkStruct_02052AA4 *v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02052AA4));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    memset(v0, 0, sizeof(UnkStruct_02052AA4));

    v0->unk_00 = 0;
    v0->fieldSystem = fieldSystem;
    v0->unk_08 = sub_02018340(11);

    sub_020528D0(v0->unk_08);

    v0->unk_1C = MessageLoader_Init(1, 26, 373, 11);
    v0->unk_20 = StringTemplate_Default(11);

    sub_0201A8D4(v0->unk_08, &v0->unk_0C, &Unk_020EC2F0);
    StringTemplate_SetPlayerName(v0->unk_20, 0, SaveData_GetTrainerInfo(FieldSystem_SaveData(fieldSystem)));

    if (fieldSystem->location->mapId == 414) {
        sub_02052AA4(v0, 4, 0, 0);
    } else {
        sub_02052AA4(v0, 3, 0, 0);
    }

    sub_0201A954(&v0->unk_0C);
    FieldTask_Start(param1, sub_020529C4, v0);

    return;
}

static BOOL sub_020529C4(TaskManager *param0)
{
    UnkStruct_02052AA4 *v0 = TaskManager_Environment(param0);

    switch (v0->unk_00) {
    case 0:
        sub_0200F174(3, 1, 42, 0x0, 8, 1, 32);
        v0->unk_00++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            v0->unk_00++;
        }
        break;
    case 2:
        if ((gCoreSys.pressedKeys & PAD_BUTTON_A) || (gCoreSys.pressedKeys & PAD_BUTTON_B)) {
            sub_0200F174(0, 0, 0, 0x0, 8, 1, 32);
            v0->unk_00++;
        }
        break;
    case 3:
        if (ScreenWipe_Done()) {
            BGL_FillWindow(&v0->unk_0C, 0);
            v0->unk_00++;
        }
        break;
    case 4:
        sub_0200E084(&v0->unk_0C, 0);
        BGL_DeleteWindow(&v0->unk_0C);
        StringTemplate_Free(v0->unk_20);
        MessageLoader_Free(v0->unk_1C);
        sub_02019044(v0->unk_08, 3);
        Heap_FreeToHeap(v0->unk_08);
        Heap_FreeToHeap(v0);

        return 1;
    }

    return 0;
}

static void sub_02052AA4(UnkStruct_02052AA4 *param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf *v0 = Strbuf_Init(1024, 11);
    Strbuf *v1 = Strbuf_Init(1024, 11);

    BGL_FillWindow(&param0->unk_0C, 0);
    MessageLoader_GetStrbuf(param0->unk_1C, param1, v0);
    StringTemplate_Format(param0->unk_20, v1, v0);

    {
        u32 v2 = Font_CalcMaxLineWidth(FONT_SYSTEM, v1, 0);
        param2 = (u8)(param0->unk_0C.unk_07 * 8 - v2) / 2 - 4;
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_0C, FONT_SYSTEM, v1, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);

    return;
}

BOOL sub_02052B2C(TaskManager *param0)
{
    FieldSystem *fieldSystem;
    int *v1;

    fieldSystem = TaskManager_FieldSystem(param0);
    v1 = FieldTask_GetState(param0);

    switch (*v1) {
    case 0: {
        if ((fieldSystem != NULL) && (fieldSystem->saveData != NULL)) {
            Party_SetGiratinaForm(Party_GetFromSavedata(fieldSystem->saveData), 0);
        }
    }

        {
            Location v2;
            FieldOverworldState *v3 = SaveData_GetFieldOverworldState(fieldSystem->saveData);
            u16 v4 = FieldOverworldState_GetWarpId(v3);

            sub_0203A824(v4, &v2);
            sub_0203A7F0(v4, sub_0203A72C(v3));
            FieldTask_ChangeMapByLocation(param0, &v2);
            sub_020705B4(fieldSystem);
        }
        (*v1)++;
        break;
    case 1:
        sub_0200564C(0, 20);
        (*v1)++;
        break;
    case 2:
        if (Sound_CheckFade() == 0) {
            sub_020553DC();
            (*v1)++;
        }
        break;
    case 3:
        sub_0200AB4C(-16, ((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) ^ GX_BLEND_PLANEMASK_BG3), 1);
        sub_0200AB4C(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        sub_02052914(fieldSystem, param0);
        (*v1)++;
        break;
    case 4:
        FieldTask_StartFieldMap(param0);
        (*v1)++;
        break;
    case 5:
        sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

        if (sub_0203A7EC()
            == FieldOverworldState_GetWarpId(SaveData_GetFieldOverworldState(fieldSystem->saveData))) {
            ScriptManager_Start(param0, 2020, NULL, NULL);
        } else {
            ScriptManager_Start(param0, 2021, NULL, NULL);
        }

        (*v1)++;
        break;
    case 6:
        return 1;
    }

    return 0;
}

void sub_02052C5C(TaskManager *param0)
{
    FieldTask_Start(param0, sub_02052B2C, NULL);
}
