#include "overlay005/ov5_021E1D20.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/struct_ov5_021E1FF4_decl.h"

#include "field_overworld_state.h"
#include "font.h"
#include "heap.h"
#include "map_header.h"
#include "message.h"
#include "message_util.h"
#include "play_time.h"
#include "player_avatar.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0202631C.h"
#include "unk_020366A0.h"

typedef struct {
    int unk_00;
    int unk_04;
    TrainerInfo *unk_08;
    PlayTime *playTime;
} UnkStruct_ov5_021E1D20;

struct UnkStruct_ov5_021E1FF4_t {
    FieldSystem *fieldSystem;
    int unk_04;
    u8 unk_08;
    BGL *unk_0C;
    Window *unk_10;
    StringTemplate *unk_14;
    MessageLoader *unk_18;
    UnkStruct_ov5_021E1D20 unk_1C;
    int unk_2C;
    int unk_30;
};

static void ov5_021E2028(FieldSystem *fieldSystem);

static const int Unk_ov5_021F9CCC[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static const int Unk_ov5_021F9CBC[] = {
    0x5,
    0x6,
    0x7,
    0x8
};

static void ov5_021E1D20(UnkStruct_ov5_021E1D20 *param0, const FieldSystem *fieldSystem)
{
    SaveData *v0 = fieldSystem->saveData;
    Location *location = sub_0203A720(SaveData_GetFieldOverworldState(v0));
    PokedexData *v2 = SaveData_Pokedex(v0);

    param0->unk_04 = MapHeader_GetMapLabelTextID(location->mapId);

    if (sub_02027520(v2)) {
        param0->unk_00 = sub_02026E48(v2);
    } else {
        param0->unk_00 = 0;
    }

    param0->unk_08 = SaveData_GetTrainerInfo(v0);
    param0->playTime = SaveData_GetPlayTime(v0);
}

static void ov5_021E1D6C(StringTemplate *strTemplate, const UnkStruct_ov5_021E1D20 *param1)
{
    int v0, v1, v2;

    StringTemplate_SetLocationName(strTemplate, 0, param1->unk_04);
    StringTemplate_SetPlayerName(strTemplate, 1, param1->unk_08);
    StringTemplate_SetNumber(strTemplate, 2, TrainerInfo_BadgeCount(param1->unk_08), 1, 0, 1);

    if (param1->unk_00 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (param1->unk_00 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    StringTemplate_SetNumber(strTemplate, 3, param1->unk_00, v0, v1, 1);
    v2 = PlayTime_GetHours(param1->playTime);

    if (v2 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (v2 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    StringTemplate_SetNumber(strTemplate, 4, v2, v0, v1, 1);
    StringTemplate_SetNumber(strTemplate, 5, PlayTime_GetMinutes(param1->playTime), 2, 2, 1);
}

static int ov5_021E1E10(const UnkStruct_ov5_021E1D20 *param0)
{
    if (param0->unk_00 != 0) {
        return 10;
    } else {
        return 10 - 2;
    }
}

static void ov5_021E1E20(const UnkStruct_ov5_021E1FF4 *param0)
{
    Strbuf *v0;
    int v1, v2;
    int v3;
    int v4;

    v3 = Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_HEIGHT) + Font_GetAttribute(FONT_SYSTEM, FONTATTR_LINE_SPACING);
    v2 = 0;
    v0 = MessageUtil_ExpandedStrbuf(param0->unk_14, param0->unk_18, Unk_ov5_021F9CCC[0], param0->unk_04);

    Text_AddPrinterWithParams(param0->unk_10, FONT_SYSTEM, v0, 0, v2, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v0);

    for (v4 = 1; v4 < NELEMS(Unk_ov5_021F9CCC); v4++) {
        if ((Unk_ov5_021F9CCC[v4] == 3) && (param0->unk_1C.unk_00 == 0)) {
            continue;
        }

        v2 += v3;
        v0 = MessageLoader_GetNewStrbuf(param0->unk_18, Unk_ov5_021F9CCC[v4]);

        Text_AddPrinterWithParams(param0->unk_10, FONT_SYSTEM, v0, 0, v2, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v0);

        v0 = MessageUtil_ExpandedStrbuf(param0->unk_14, param0->unk_18, Unk_ov5_021F9CBC[v4 - 1], param0->unk_04);
        v1 = 13 * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, Font_GetAttribute(FONT_SYSTEM, FONTATTR_LETTER_SPACING));

        Text_AddPrinterWithParams(param0->unk_10, FONT_SYSTEM, v0, v1, v2, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v0);
    }
}

void ov5_021E1F04(UnkStruct_ov5_021E1FF4 *param0)
{
    param0->unk_10 = Heap_AllocFromHeap(param0->unk_04, sizeof(Window));

    BGL_AddWindow(param0->unk_0C, param0->unk_10, param0->unk_08, 1, 1, param0->unk_2C, param0->unk_30, 13, 393);
    sub_0200DAA4(param0->unk_0C, param0->unk_08, 985, 11, 0, param0->unk_04);
    BGL_FillWindow(param0->unk_10, Font_GetAttribute(FONT_SYSTEM, FONTATTR_BG_COLOR));

    ov5_021E1E20(param0);
    Window_Show(param0->unk_10, 0, 985, 11);
}

void ov5_021E1F7C(UnkStruct_ov5_021E1FF4 *param0)
{
    Window_Clear(param0->unk_10, 0);
    BGL_DeleteWindow(param0->unk_10);
    Heap_FreeToHeap(param0->unk_10);
}

UnkStruct_ov5_021E1FF4 *ov5_021E1F98(FieldSystem *fieldSystem, int param1, u8 param2)
{
    UnkStruct_ov5_021E1FF4 *v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov5_021E1FF4));

    v0->fieldSystem = fieldSystem;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = fieldSystem->unk_08;
    v0->unk_14 = StringTemplate_Default(param1);
    v0->unk_18 = MessageLoader_Init(1, 26, 534, param1);

    ov5_021E1D20(&v0->unk_1C, v0->fieldSystem);
    ov5_021E1D6C(v0->unk_14, &v0->unk_1C);

    v0->unk_2C = 13;
    v0->unk_30 = ov5_021E1E10(&v0->unk_1C);

    return v0;
}

void ov5_021E1FF4(UnkStruct_ov5_021E1FF4 *param0)
{
    MessageLoader_Free(param0->unk_18);
    StringTemplate_Free(param0->unk_14);
    Heap_FreeToHeap(param0);
}

BOOL ov5_021E200C(FieldSystem *fieldSystem)
{
    ov5_021E2028(fieldSystem);

    if (SaveData_Save(fieldSystem->saveData) == 2) {
        return 1;
    } else {
        return 0;
    }
}

static void ov5_021E2028(FieldSystem *fieldSystem)
{
    FieldSystem_SaveObjects(fieldSystem);
    ov5_021EA714(fieldSystem, 4, 0);

    fieldSystem->location->x = Player_GetXPos(fieldSystem->playerAvatar);
    fieldSystem->location->z = Player_GetZPos(fieldSystem->playerAvatar);
    fieldSystem->location->unk_04 = -1;
    fieldSystem->location->unk_10 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
}

void ov5_021E2064(FieldSystem *fieldSystem)
{
    if (fieldSystem == NULL) {
        GF_ASSERT(0);
        return;
    }

    switch (fieldSystem->location->mapId) {
    case 466:
    case 332:
    case 333:
        return;
    }

    if (sub_02038EB4() == 1) {
        return;
    }

    ov5_021E2028(fieldSystem);
}
