#include "overlay007/ov7_0224CD28.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02081CF4.h"

#include "field/field_system.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay007/struct_ov7_0224D008.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "bag.h"
#include "camera.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "journal.h"
#include "map_header.h"
#include "message.h"
#include "narc.h"
#include "player_avatar.h"
#include "save_player.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200A328.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202854C.h"
#include "unk_0202C9F4.h"
#include "unk_0202D05C.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_020573FC.h"
#include "unk_0205D8CC.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "unk_0207CB08.h"
#include "unk_0208C098.h"
#include "unk_02097B18.h"
#include "unk_0209AC14.h"
#include "vars_flags.h"

static u8 ov7_0224CE90(FieldSystem *fieldSystem);
static u8 ov7_0224D250(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1);
static void ov7_0224D008(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224D018(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224D040(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224D1EC(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224D21C(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224D388(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1);
static void ov7_0224D3E8(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224D474(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224D620(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224DC84(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224E950(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1);
static void ov7_0224D6BC(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224D85C(BmpList *param0, u32 param1, u8 param2);
static void ov7_0224D9B8(BmpList *param0, u32 param1, u8 param2);
static void ov7_0224DAF8(UnkStruct_ov7_0224D008 *param0, u8 param1);
static u8 ov7_0224DE94(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224DFB0(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224E28C(UnkStruct_ov7_0224D008 *param0, u8 param1);
static void ov7_0224DED4(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224E6B8(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224E7C8(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224E3A0(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224E3D8(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224E5B0(UnkStruct_ov7_0224D008 *param0);
static u8 ov7_0224EA2C(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224EA54(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1);
static void ov7_0224EC20(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1);
static void ov7_0224EC38(TaskManager *param0);
static u8 ov7_0224EC9C(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1);
static void ov7_0224EAD0(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224EB14(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224EB38(UnkStruct_ov7_0224D008 *param0, u8 param1);
static void ov7_0224EB7C(UnkStruct_ov7_0224D008 *param0, u16 param1);
static void ov7_0224EC10(UnkStruct_ov7_0224D008 *param0, u8 param1);
static u8 ov7_0224E098(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224E834(UnkStruct_ov7_0224D008 *param0, u16 param1, u16 param2);
static u32 ov7_0224E890(UnkStruct_ov7_0224D008 *param0, u16 param1);
static u16 ov7_0224E8CC(UnkStruct_ov7_0224D008 *param0, u16 param1);
static u32 ov7_0224E8F4(UnkStruct_ov7_0224D008 *param0);
static void ov7_0224E920(UnkStruct_ov7_0224D008 *param0, u32 param1);

static const UnkStruct_ov61_0222C884 Unk_ov7_0224F328[] = {
    { 0x2, 0xC, 0x2, 0x13, 0xE, 0xD, 0x1 },
    { 0x2, 0x5, 0x12, 0x1B, 0x6, 0xD, 0x10B },
    { 0x3, 0x1, 0x1, 0x9, 0x4, 0xD, 0x28 },
    { 0x3, 0x13, 0xD, 0xC, 0x4, 0xD, 0x4C },
    { 0x3, 0x1, 0xF, 0xE, 0x2, 0xD, 0x7C },
    { 0x3, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x98 }
};

static const UnkStruct_ov61_0222C884 Unk_ov7_0224F2BC = {
    0x2,
    0x1,
    0x12,
    0x1B,
    0x6,
    0xD,
    0x10B
};

static const UnkStruct_ov61_0222C884 Unk_ov7_0224F2CC = {
    0x3,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x104
};

static const u8 Unk_ov7_0224F49C[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0xff
};

static const UnkStruct_ov61_0222C884 Unk_ov7_0224F2C4 = {
    0x3,
    0x1,
    0x1,
    0x9,
    0x2,
    0xD,
    0x28
};

static void ov7_0224CD28(UnkStruct_ov7_0224D008 *param0, u16 *param1)
{
    u16 v0;

    for (v0 = 0; v0 < 256; v0++) {
        if (param1[v0] == 0xffff) {
            break;
        }
    }

    param0->unk_294 = v0;
    param0->unk_290 = Heap_AllocFromHeap(11, param0->unk_294 * 2);

    for (v0 = 0; v0 < param0->unk_294; v0++) {
        param0->unk_290[v0] = param1[v0];
    }
}

static UnkStruct_ov7_0224D008 *ov7_0224CD88(void)
{
    UnkStruct_ov7_0224D008 *v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov7_0224D008));

    memset(v0, 0, sizeof(UnkStruct_ov7_0224D008));
    return v0;
}

void ov7_0224CDA4(TaskManager *param0, FieldSystem *fieldSystem, u16 *param2, u8 param3, BOOL param4)
{
    UnkStruct_ov7_0224D008 *v0 = ov7_0224CD88();

    v0->unk_00 = fieldSystem->unk_08;

    v0->unk_298 = Strbuf_Init((24 * 2 * 2), 11);
    v0->unk_270 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v0->unk_278 = SaveData_Options(fieldSystem->saveData);
    v0->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    v0->unk_288 = SaveData_GetVarsFlags(fieldSystem->saveData);
    v0->unk_28C = param4;
    v0->unk_2A6 = ov7_0224CE90(fieldSystem);
    v0->unk_27C = fieldSystem->journal;
    v0->unk_2A9 = param3;
    v0->unk_284 = fieldSystem->saveData;
    v0->unk_2B4 = sub_0200C440(1, 2, 0, 11);

    if (v0->unk_2A9 == 0) {
        v0->unk_274 = SaveData_GetBag(fieldSystem->saveData);
    } else if (v0->unk_2A9 == 3) {
        v0->unk_274 = SaveData_GetBag(fieldSystem->saveData);
    } else if (v0->unk_2A9 == 1) {
        v0->unk_274 = sub_020298B0(fieldSystem->saveData);
    } else {
        v0->unk_274 = sub_0202CA1C(fieldSystem->saveData);
    }

    ov7_0224CD28(v0, param2);
    FieldTask_Start(param0, ov7_0224CEAC, v0);
}

static u8 ov7_0224CE90(FieldSystem *fieldSystem)
{
    int v0 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if ((v0 == 0) || (v0 == 1) || (v0 == 3)) {
        return 10;
    }

    return 8;
}

BOOL ov7_0224CEAC(TaskManager *param0)
{
    FieldSystem *fieldSystem;
    UnkStruct_ov7_0224D008 *v1;

    fieldSystem = TaskManager_FieldSystem(param0);
    v1 = TaskManager_Environment(param0);

    switch (v1->unk_297) {
    case 0:
        ov7_0224D008(v1);
        v1->unk_297 = 1;
        break;
    case 1:
        v1->unk_297 = ov7_0224D1EC(v1);
        break;
    case 2:
        ov7_0224D388(fieldSystem, v1);
        v1->unk_297 = 3;
        break;
    case 3:
        v1->unk_297 = ov7_0224D620(v1);
        break;
    case 4:
        v1->unk_297 = ov7_0224DC84(v1);
        break;
    case 5:
        v1->unk_297 = ov7_0224DE94(v1);
        break;
    case 6:
        v1->unk_297 = ov7_0224DFB0(v1);
        break;
    case 7:
        v1->unk_297 = ov7_0224E3A0(v1);
        break;
    case 8:
        v1->unk_297 = ov7_0224E3D8(v1);
        break;
    case 9:
        v1->unk_297 = ov7_0224E5B0(v1);
        break;
    case 10:
        v1->unk_297 = ov7_0224E6B8(v1);
        break;
    case 11:
        v1->unk_297 = ov7_0224E7C8(v1);
        break;
    case 12:
        v1->unk_297 = ov7_0224E950(fieldSystem, v1);
        break;
    case 13:
        v1->unk_297 = ov7_0224EA2C(v1);
        break;
    case 14:
        ov7_0224EC20(fieldSystem, v1);
        break;
    case 15:
        ov7_0224EC38(param0);
        break;
    case 16:
    case 17:
        break;
    case 18:
        v1->unk_297 = ov7_0224EC9C(fieldSystem, v1);
        break;
    case 19:
        ov7_0224EA54(fieldSystem, v1);
        v1->unk_297 = 20;
        break;
    case 20:
        return ov7_0224D250(fieldSystem, v1);
    }

    if ((v1->unk_297 >= 4) && (v1->unk_297 <= 11)) {
        CellActor_UpdateAnim(v1->unk_25C[0], FX32_ONE);
        CellActor_UpdateAnim(v1->unk_25C[1], FX32_ONE);
        CellActorCollection_Update(v1->unk_94.unk_00);
    }

    return 0;
}

static void ov7_0224D008(UnkStruct_ov7_0224D008 *param0)
{
    ov7_0224D018(param0);
    ov7_0224D040(param0);
}

static void ov7_0224D018(UnkStruct_ov7_0224D008 *param0)
{
    param0->unk_88 = MessageLoader_Init(0, 26, 543, 11);
    param0->unk_8C = StringTemplate_Default(11);
}

static void ov7_0224D040(UnkStruct_ov7_0224D008 *param0)
{
    UnkStruct_02081CF4 v0;
    u8 v1;

    if (param0->unk_2A9 == 0) {
        v1 = 3;
        param0->unk_84 = sub_02013A04(v1, 11);

        sub_02013A4C(param0->unk_84, param0->unk_88, 15, 2);
        sub_02013A4C(param0->unk_84, param0->unk_88, 16, 14);
        sub_02013A4C(param0->unk_84, param0->unk_88, 17, 0xfffffffe);
        BGL_AddWindow(param0->unk_00, &param0->unk_08[0], 3, 1, 1, 13, 6, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6)));
    } else if (param0->unk_2A9 == 3) {
        v1 = 2;
        param0->unk_84 = sub_02013A04(v1, 11);

        sub_02013A4C(param0->unk_84, param0->unk_88, 29, 2);
        sub_02013A4C(param0->unk_84, param0->unk_88, 30, 0xfffffffe);
        BGL_AddWindow(param0->unk_00, &param0->unk_08[0], 3, 23, 13, 7, 4, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6)));
    } else {
        v1 = 2;
        param0->unk_84 = sub_02013A04(v1, 11);

        sub_02013A4C(param0->unk_84, param0->unk_88, 15, 2);
        sub_02013A4C(param0->unk_84, param0->unk_88, 17, 0xfffffffe);
        BGL_AddWindow(param0->unk_00, &param0->unk_08[0], 3, 1, 1, 13, 4, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6)));
    }

    v0.unk_00 = param0->unk_84;
    v0.unk_04 = &param0->unk_08[0];
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = v1;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    sub_0200DAA4(param0->unk_00, 3, 1024 - (18 + 12) - 9, 11, 0, 11);
    Window_Show(&param0->unk_08[0], 1, 1024 - (18 + 12) - 9, 11);

    param0->unk_80 = sub_02001B7C(&v0, 8, 0, 0, 11, PAD_BUTTON_B);
}

static u8 ov7_0224D1EC(UnkStruct_ov7_0224D008 *param0)
{
    u32 v0 = sub_02001BE0(param0->unk_80);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        ov7_0224D21C(param0);
        return 19;
    default:
        return (u8)v0;
    }

    return 1;
}

static void ov7_0224D21C(UnkStruct_ov7_0224D008 *param0)
{
    Window_Clear(&param0->unk_08[0], 1);
    sub_0201ACF4(&param0->unk_08[0]);
    sub_02001BC4(param0->unk_80, NULL);
    sub_02013A3C(param0->unk_84);
    BGL_DeleteWindow(&param0->unk_08[0]);
}

static u8 ov7_0224D250(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1)
{
    if (FieldMessage_FinishedPrinting(param1->unk_2A4) == 0) {
        return 0;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        void *v0;

        sub_0200E084(&param1->unk_08[1], 0);
        BGL_DeleteWindow(&param1->unk_08[1]);
        MessageLoader_Free(param1->unk_88);
        StringTemplate_Free(param1->unk_8C);
        Strbuf_Free(param1->unk_298);

        if (param1->unk_2A9 == 0) {
            if ((MapHeader_GetMapLabelTextID(fieldSystem->location->mapId) != 101) && (fieldSystem->location->mapId != 81) && (fieldSystem->location->mapId != 446)) {
                if ((param1->unk_2A7 != 0) && (param1->unk_2A8 != 0)) {
                    v0 = sub_0202BD38(11);
                    Journal_SaveData(param1->unk_27C, v0, 1);
                } else if (param1->unk_2A7 > 1) {
                    v0 = sub_0202BD14(11);
                    Journal_SaveData(param1->unk_27C, v0, 1);
                } else if (param1->unk_2A8 > 1) {
                    v0 = sub_0202BD2C(11);
                    Journal_SaveData(param1->unk_27C, v0, 1);
                } else if (param1->unk_2A7 != 0) {
                    v0 = sub_0202BD08(11);
                    Journal_SaveData(param1->unk_27C, v0, 1);
                } else if (param1->unk_2A8 != 0) {
                    v0 = sub_0202BD20(11);
                    Journal_SaveData(param1->unk_27C, v0, 1);
                }
            }
        }

        sub_0200C560(param1->unk_2B4);
        Heap_FreeToHeap(param1->unk_290);
        Heap_FreeToHeap(param1);

        return 1;
    }

    return 0;
}

static void ov7_0224D388(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1)
{
    sub_02019CB8(param1->unk_00, 3, 0, 2 - 2, 19 - 1, 27 + 5, 4 + 2, 0);

    ov7_0224D21C(param1);
    ov7_0224D3E8(param1);

    param1->camera = Camera_Alloc(11);

    Camera_Copy(fieldSystem->camera, param1->camera);
    Camera_SetAsActive(param1->camera);

    param1->unk_2A5 = 0;
}

static void ov7_0224D3E8(UnkStruct_ov7_0224D008 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if ((param0->unk_2A9 != 0) && (param0->unk_2A9 != 3) && (v0 == 1)) {
            sub_0201A8D4(param0->unk_00, &param0->unk_08[v0], &Unk_ov7_0224F2BC);
        } else if ((param0->unk_2A9 == 3) && (v0 == 2)) {
            sub_0201A8D4(param0->unk_00, &param0->unk_08[v0], &Unk_ov7_0224F2C4);
        } else {
            sub_0201A8D4(param0->unk_00, &param0->unk_08[v0], &Unk_ov7_0224F328[v0]);
        }
    }
}

static void ov7_0224D44C(UnkStruct_ov7_0224D008 *param0)
{
    u32 v0;

    Window_Clear(&param0->unk_08[2], 1);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0201ACF4(&param0->unk_08[v0]);
        BGL_DeleteWindow(&param0->unk_08[v0]);
    }
}

static void ov7_0224D474(UnkStruct_ov7_0224D008 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, 11);

    sub_020070E8(v0, 0, param0->unk_00, 1, 0, 0, 0, 11);

    if ((param0->unk_2A9 == 0) || (param0->unk_2A9 == 3)) {
        sub_0200710C(v0, 2, param0->unk_00, 1, 0, 0, 0, 11);
    } else {
        sub_0200710C(v0, 3, param0->unk_00, 1, 0, 0, 0, 11);
    }

    if (param0->unk_2A9 == 3) {
        sub_02007130(v0, 11, 0, 0, 32, 11);
    } else {
        sub_02007130(v0, 1, 0, 0, 32, 11);
    }

    sub_0200DAA4(param0->unk_00, 3, (1 + (18 + 12)), 11, 0, 11);
    sub_0200DD0C(param0->unk_00, 3, 1, 10, Options_Frame(param0->unk_278), 11);
    NARC_dtor(v0);
}

static void ov7_0224D548(UnkStruct_ov7_0224D008 *param0)
{
    param0->unk_2A0 = GXLayers_EngineAGetLayers();
    param0->unk_29C[0] = sub_0201A008(param0->unk_00, 0);
    param0->unk_29C[1] = sub_0201A008(param0->unk_00, 1);
    param0->unk_29C[2] = sub_0201A008(param0->unk_00, 2);
    param0->unk_29C[3] = sub_0201A008(param0->unk_00, 3);

    BGL_SetPriority(0, 3);
    BGL_SetPriority(1, 2);
    BGL_SetPriority(2, 1);
    BGL_SetPriority(3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void ov7_0224D5D8(UnkStruct_ov7_0224D008 *param0)
{
    BGL_SetPriority(0, param0->unk_29C[0]);
    BGL_SetPriority(1, param0->unk_29C[1]);
    BGL_SetPriority(2, param0->unk_29C[2]);
    BGL_SetPriority(3, param0->unk_29C[3]);
    GXLayers_EngineASetLayers(param0->unk_2A0);
}

static u8 ov7_0224D620(UnkStruct_ov7_0224D008 *param0)
{
    if (param0->unk_2A5 != param0->unk_2A6) {
        VecFx32 v0 = { 8 * FX32_ONE, 0, 0 };

        Camera_Move(&v0, param0->camera);
        param0->unk_2A5++;
        return 3;
    }

    param0->unk_2A5 = 0;
    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);

    ov7_0224EAD0(param0);
    ov7_0224D474(param0);
    ov7_0224D548(param0);
    ov7_0224D6BC(param0);
    ov7_0224DAF8(param0, 0);

    return 4;
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224F308 = {
    NULL,
    ov7_0224D85C,
    ov7_0224D9B8,
    NULL,
    0x0,
    0x7,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x0,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x1,
    NULL
};

static u32 ov7_0224D698(UnkStruct_ov7_0224D008 *param0, u16 param1)
{
    if (param0->unk_2A9 == 1) {
        return 1 + param1 - 1;
    } else if (param0->unk_2A9 == 2) {
        return (u32)sub_02098164((u8)param1);
    }

    return (u32)param1;
}

static void ov7_0224D6BC(UnkStruct_ov7_0224D008 *param0)
{
    MessageLoader *v0;
    Strbuf *v1;
    UnkStruct_ov84_02240FA8 v2;
    u32 v3;
    u32 v4;
    MessageLoader *v5;
    BOOL v6 = 0;

    if ((param0->unk_2A9 == 0) || (param0->unk_2A9 == 3)) {
        v0 = MessageLoader_Init(0, 26, 392, 11);
        v5 = MessageLoader_Init(0, 26, 647, 11);
    } else if (param0->unk_2A9 == 1) {
        v0 = MessageLoader_Init(0, 26, 626, 11);
    } else {
        v0 = MessageLoader_Init(0, 26, 12, 11);
    }

    param0->unk_7C = sub_02013A04(param0->unk_294 + 1, 11);

    for (v3 = 0; v3 < param0->unk_294; v3++) {
        v4 = ov7_0224D698(param0, param0->unk_290[v3]);

        if ((v4 <= 420) && (v4 >= 328)) {
            v1 = MessageLoader_GetNewStrbuf(v5, Item_MoveForTMHM(v4));
            sub_02013A6C(param0->unk_7C, v1, param0->unk_290[v3]);
            Strbuf_Free(v1);

            v6 = 1;
        } else {
            v1 = MessageLoader_GetNewStrbuf(v0, v4);
            sub_02013A6C(param0->unk_7C, v1, param0->unk_290[v3]);
            Strbuf_Free(v1);
        }
    }

    if (v6) {
        sub_02013A4C(param0->unk_7C, param0->unk_88, 26, 0xfffffffe);
    } else {
        sub_02013A4C(param0->unk_7C, param0->unk_88, 8, 0xfffffffe);
    }

    MessageLoader_Free(v0);

    if ((param0->unk_2A9 == 0) || (param0->unk_2A9 == 3)) {
        MessageLoader_Free(v5);
    }

    v2 = Unk_ov7_0224F308;

    if ((v4 <= 420) && (v4 >= 328)) {
        v2.unk_15 = 35;
    } else {
        v2.unk_15 = 0;
    }

    v2.unk_00 = param0->unk_7C;
    v2.unk_0C = &param0->unk_08[0];
    v2.unk_10 = param0->unk_294 + 1;
    v2.unk_1C = (void *)param0;

    param0->unk_78 = sub_0200112C(&v2, 0, 0, 11);
}

static void ov7_0224D85C(BmpList *param0, u32 param1, u8 param2)
{
    UnkStruct_ov7_0224D008 *v0 = (UnkStruct_ov7_0224D008 *)sub_02001504(param0, 19);

    if (param2 != 1) {
        Sound_PlayEffect(1592);
    }

    BGL_FillWindow(&v0->unk_08[1], 0);

    if (param1 != 0xfffffffe) {
        Strbuf *v1;

        if (v0->unk_2A9 == 0) {
            v1 = Strbuf_Init(130, 11);
            Item_LoadDescription(v1, (u16)param1, 11);
        } else if (v0->unk_2A9 == 3) {
            v1 = Strbuf_Init(130, 11);
            Item_LoadDescription(v1, (u16)param1, 11);
        } else if (v0->unk_2A9 == 1) {
            MessageLoader *v2;

            v2 = MessageLoader_Init(0, 26, 626, 11);
            v1 = MessageLoader_GetNewStrbuf(v2, 139 + param1 - 1);
            MessageLoader_Free(v2);
        } else {
            MessageLoader *v3;

            v3 = MessageLoader_Init(0, 26, 542, 11);
            v1 = MessageLoader_GetNewStrbuf(v3, sub_020981F4((u8)param1));

            MessageLoader_Free(v3);
        }

        Text_AddPrinterWithParamsAndColor(&v0->unk_08[1], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        Strbuf_Free(v1);

        ov7_0224EB7C(v0, (u16)param1);
    } else {
        ov7_0224EB7C(v0, 0xffff);
    }

    {
        u32 v4;
        u16 v5, v6;

        sub_020014DC(param0, &v5, &v6);

        if (v5 == 0) {
            CellActor_SetDrawFlag(v0->unk_25C[0], 0);
        } else {
            CellActor_SetDrawFlag(v0->unk_25C[0], 1);
        }

        v4 = sub_02001504(param0, 2);

        if ((v4 > 7) && (v4 > v5 + 7)) {
            CellActor_SetDrawFlag(v0->unk_25C[1], 1);
        } else {
            CellActor_SetDrawFlag(v0->unk_25C[1], 0);
        }
    }
    sub_0201A9A4(&v0->unk_08[1]);
}

static void ov7_0224D9B8(BmpList *param0, u32 param1, u8 param2)
{
    UnkStruct_ov7_0224D008 *v0 = (UnkStruct_ov7_0224D008 *)sub_02001504(param0, 19);

    if (param1 != 0xfffffffe) {
        Strbuf *v1;
        Strbuf *v2;
        u32 v3;
        u32 v4;
        u16 v5 = (u16)param1;

        if ((v5 <= 420) && (v5 >= 328)) {
            v5 = v5 - 328 + 1;

            sub_0200C648(v0->unk_2B4, 2, v5, 2, 2, &v0->unk_08[0], 0, param2 + 4);
        }

        v3 = ov7_0224E890(v0, (u16)param1);
        v1 = Strbuf_Init(12, 11);

        if (v0->unk_2A9 == 3) {
            v2 = MessageLoader_GetNewStrbuf(v0->unk_88, 32);
        } else {
            v2 = MessageLoader_GetNewStrbuf(v0->unk_88, 9);
        }

        StringTemplate_SetNumber(v0->unk_8C, 0, v3, 4, 1, 1);
        StringTemplate_Format(v0->unk_8C, v1, v2);

        v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

        Text_AddPrinterWithParamsAndColor(&v0->unk_08[0], FONT_SYSTEM, v1, (19 * 8) - v4, param2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v2);
        Strbuf_Free(v1);
    }

    if (param1 == 0xfffffffe) {
        Strbuf *v6 = MessageLoader_GetNewStrbuf(v0->unk_88, 8);

        BGL_WindowColor(&v0->unk_08[0], 15, 0, param2, 19 * 8, 16);
        Text_AddPrinterWithParamsAndColor(&v0->unk_08[0], FONT_SYSTEM, v6, 0, param2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v6);
    }
}

static void ov7_0224DAF8(UnkStruct_ov7_0224D008 *param0, u8 param1)
{
    Strbuf *v0;
    Strbuf *v1;
    u32 v2;
    u32 v3;

    if (param0->unk_2A9 == 3) {
        if (param1 == 0) {
            BGL_FillWindow(&param0->unk_08[2], 15);
            Window_Show(
                &param0->unk_08[2], 1, (1 + (18 + 12)), 11);
        } else {
            BGL_WindowColor(&param0->unk_08[2], 15, 0, 0, (9 * 8), 16);
        }

        v0 = Strbuf_Init(16, 11);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 38);
        v2 = ov7_0224E8F4(param0);

        StringTemplate_SetNumber(param0->unk_8C, 0, v2, 6, 1, 1);
        StringTemplate_Format(param0->unk_8C, v0, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

        Text_AddPrinterWithParams(&param0->unk_08[2], FONT_SYSTEM, v0, (9 * 8) - v3 - 8, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    } else {
        if (param1 == 0) {
            BGL_FillWindow(&param0->unk_08[2], 15);
            Window_Show(&param0->unk_08[2], 1, (1 + (18 + 12)), 11);

            v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 18);

            Text_AddPrinterWithParams(&param0->unk_08[2], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Strbuf_Free(v1);
        } else {
            BGL_WindowColor(&param0->unk_08[2], 15, 0, 16, (9 * 8), 16);
        }

        v0 = Strbuf_Init(16, 11);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 19);
        v2 = ov7_0224E8F4(param0);

        StringTemplate_SetNumber(param0->unk_8C, 0, v2, 6, 1, 1);
        StringTemplate_Format(param0->unk_8C, v0, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

        Text_AddPrinterWithParams(&param0->unk_08[2], FONT_SYSTEM, v0, (9 * 8) - v3, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    Strbuf_Free(v1);
    Strbuf_Free(v0);
    sub_0201A9A4(&param0->unk_08[2]);
}

static u8 ov7_0224DC84(UnkStruct_ov7_0224D008 *param0)
{
    u32 v0;
    u16 v1, v2;

    sub_020014DC(param0->unk_78, NULL, &v1);
    v0 = sub_02001288(param0->unk_78);
    sub_020014DC(param0->unk_78, NULL, &v2);

    if (v1 != v2) {
        SpriteActor_SetPositionXY(param0->unk_25C[2], (176 - 4), 24 + v2 * 16);
    }

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_02001384(param0->unk_78, NULL, NULL);
        sub_02013A3C(param0->unk_7C);
        ov7_0224D44C(param0);
        ov7_0224D5D8(param0);
        sub_02019EBC(param0->unk_00, 1);
        Sound_PlayEffect(1500);
        return 12;

    default: {
        Strbuf *v3;
        u32 v4;

        param0->unk_26C[0] = (u16)CellActor_GetDrawFlag(param0->unk_25C[0]);
        param0->unk_26C[1] = (u16)CellActor_GetDrawFlag(param0->unk_25C[1]);

        CellActor_SetDrawFlag(param0->unk_25C[0], 0);
        CellActor_SetDrawFlag(param0->unk_25C[1], 0);

        ov7_0224EC10(param0, 1);

        BGL_FillWindow(&param0->unk_08[5], 15);
        sub_0201ACF4(&param0->unk_08[1]);
        sub_0200E060(&param0->unk_08[5], 0, 1, 10);

        param0->unk_2AA = (u16)v0;
        param0->unk_2AC = 1;
        param0->unk_2B0 = ov7_0224E890(param0, param0->unk_2AA);

        v4 = ov7_0224E8F4(param0);

        if (v4 < param0->unk_2B0) {
            if (param0->unk_2A9 == 3) {
                v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 37);
            } else {
                v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 3);
            }

            StringTemplate_Format(param0->unk_8C, param0->unk_298, v3);
            Strbuf_Free(v3);

            param0->unk_2A4 = FieldMessage_Print(&param0->unk_08[5], param0->unk_298, param0->unk_278, 1);
            return 10;
        }

        if (param0->unk_2A9 == 1) {
            Sound_PlayEffect(1500);

            return ov7_0224E098(param0);
        }

        param0->unk_2AE = v4 / param0->unk_2B0;

        if (param0->unk_2AE > 99) {
            param0->unk_2AE = 99;
        }

        ov7_0224E834(param0, param0->unk_2AA, 0);

        if (param0->unk_2A9 == 3) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 33);
        } else {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 4);
        }

        StringTemplate_Format(param0->unk_8C, param0->unk_298, v3);
        Strbuf_Free(v3);

        param0->unk_2A4 = FieldMessage_Print(&param0->unk_08[5], param0->unk_298, param0->unk_278, 1);

        ov7_0224EB38(param0, 1);
        Sound_PlayEffect(1500);

        return 5;
    }
    }

    return 4;
}

static u8 ov7_0224DE94(UnkStruct_ov7_0224D008 *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 5;
    }

    ov7_0224DED4(param0);
    ov7_0224E28C(param0, 0);

    CellActor_SetDrawFlag(param0->unk_25C[0], 1);
    CellActor_SetDrawFlag(param0->unk_25C[1], 1);

    return 6;
}

static void ov7_0224DED4(UnkStruct_ov7_0224D008 *param0)
{
    Strbuf *v0;
    Strbuf *v1;
    u16 v2;

    if (param0->unk_2A9 == 0) {
        v2 = Bag_GetItemQuantity(param0->unk_274, param0->unk_2AA, 11);
    } else if (param0->unk_2A9 == 3) {
        v2 = Bag_GetItemQuantity(param0->unk_274, param0->unk_2AA, 11);
    } else if (param0->unk_2A9 == 2) {
        v2 = sub_0202CBC8(param0->unk_274, param0->unk_2AA);
    } else {
        v2 = 0;
    }

    BGL_FillWindow(&param0->unk_08[4], 15);
    Window_Show(&param0->unk_08[4], 1, (1 + (18 + 12)), 11);

    v0 = Strbuf_Init((12 * 2), 11);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 20);

    StringTemplate_SetNumber(param0->unk_8C, 0, v2, 3, 1, 1);
    StringTemplate_Format(param0->unk_8C, v0, v1);
    Text_AddPrinterWithParams(&param0->unk_08[4], FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
    sub_0201A9A4(&param0->unk_08[4]);
}

static u8 ov7_0224DFB0(UnkStruct_ov7_0224D008 *param0)
{
    if (sub_0208C15C(&param0->unk_2AC, param0->unk_2AE) != 0) {
        Sound_PlayEffect(1592);
        ov7_0224E28C(param0, 1);
        return 6;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        CellActor_SetDrawFlag(param0->unk_25C[0], 0);
        CellActor_SetDrawFlag(param0->unk_25C[1], 0);
        Window_Clear(&param0->unk_08[4], 1);
        Window_Clear(&param0->unk_08[3], 1);
        BGL_FillWindow(&param0->unk_08[5], 15);
        Sound_PlayEffect(1500);

        return ov7_0224E098(param0);
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Window_Clear(&param0->unk_08[4], 1);
        Window_Clear(&param0->unk_08[3], 1);
        sub_0200E084(&param0->unk_08[5], 0);

        ov7_0224EB38(param0, 0);

        CellActor_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        CellActor_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);

        ov7_0224EC10(param0, 0);

        sub_0201A9A4(&param0->unk_08[1]);
        Sound_PlayEffect(1500);

        return 4;
    }

    return 6;
}

static u8 ov7_0224E098(UnkStruct_ov7_0224D008 *param0)
{
    Strbuf *v0;
    BOOL v1;

    if (param0->unk_2A9 == 0) {
        v1 = Bag_CanFitItem(param0->unk_274, param0->unk_2AA, param0->unk_2AC, 11);
    } else if (param0->unk_2A9 == 3) {
        v1 = Bag_CanFitItem(param0->unk_274, param0->unk_2AA, param0->unk_2AC, 11);
    } else if (param0->unk_2A9 == 1) {
        if (sub_020289A0(param0->unk_274) == 200) {
            v1 = 0;
        } else {
            v1 = 1;
        }
    } else {
        v1 = sub_0202CB70(param0->unk_274, param0->unk_2AA, param0->unk_2AC);
    }

    if (v1 == 0) {
        param0->unk_2AC = 0;

        if (param0->unk_2A9 == 0) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 7);
        } else if (param0->unk_2A9 == 3) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 7);
        } else if (param0->unk_2A9 == 1) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 12);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 14);
        }

        StringTemplate_Format(param0->unk_8C, param0->unk_298, v0);
        Strbuf_Free(v0);

        param0->unk_2A4 = FieldMessage_Print(&param0->unk_08[5], param0->unk_298, param0->unk_278, 1);
        return 10;
    }

    ov7_0224E834(param0, param0->unk_2AA, 0);

    StringTemplate_SetNumber(param0->unk_8C, 1, param0->unk_2AC, 2, 0, 1);
    StringTemplate_SetNumber(param0->unk_8C, 2, param0->unk_2B0 * param0->unk_2AC, 6, 0, 1);

    if ((param0->unk_2AA <= 420) && (param0->unk_2AA >= 328)) {
        u16 v2 = Item_MoveForTMHM(param0->unk_2AA);

        StringTemplate_SetMoveName(param0->unk_8C, 3, v2);

        if (param0->unk_2A9 == 3) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 36);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 27);
        }
    } else {
        if (param0->unk_2A9 == 3) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 35);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 5);
        }
    }

    StringTemplate_Format(param0->unk_8C, param0->unk_298, v0);
    Strbuf_Free(v0);

    param0->unk_2A4 = FieldMessage_Print(&param0->unk_08[5], param0->unk_298, param0->unk_278, 1);
    return 7;
}

static void ov7_0224E28C(UnkStruct_ov7_0224D008 *param0, u8 param1)
{
    Strbuf *v0;
    Strbuf *v1;
    u32 v2;

    BGL_FillWindow(&param0->unk_08[3], 15);

    if (param1 == 0) {
        Window_Show(&param0->unk_08[3], 1, (1 + (18 + 12)), 11);
    }

    v0 = Strbuf_Init(24, 11);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 21);

    StringTemplate_SetNumber(param0->unk_8C, 0, param0->unk_2AC, 2, 2, 1);
    StringTemplate_Format(param0->unk_8C, v0, v1);
    Text_AddPrinterWithParams(&param0->unk_08[3], FONT_SYSTEM, v0, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    if (param0->unk_2A9 == 3) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 34);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 22);
    }

    StringTemplate_SetNumber(param0->unk_8C, 0, param0->unk_2B0 * param0->unk_2AC, 6, 1, 1);
    StringTemplate_Format(param0->unk_8C, v0, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParams(&param0->unk_08[3], FONT_SYSTEM, v0, (12 * 8) - v2, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
    sub_0201A9A4(&param0->unk_08[3]);
}

static u8 ov7_0224E3A0(UnkStruct_ov7_0224D008 *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 7;
    }

    param0->unk_80 = sub_02002100(param0->unk_00, &Unk_ov7_0224F2CC, (1 + (18 + 12)), 11, 11);
    return 8;
}

static u8 ov7_0224E3D8(UnkStruct_ov7_0224D008 *param0)
{
    switch (sub_02002114(param0->unk_80, 11)) {
    case 0: {
        Strbuf *v0;

        if (param0->unk_2A9 == 0) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 6);

            if (param0->unk_2AC == 1) {
                StringTemplate_SetItemName(param0->unk_8C, 0, param0->unk_2AA);
            } else {
                StringTemplate_SetItemNamePlural(param0->unk_8C, 0, param0->unk_2AA);
            }

            StringTemplate_SetBagPocketName(param0->unk_8C, 1, Item_LoadParam(param0->unk_2AA, 5, 11));
        } else if (param0->unk_2A9 == 3) {
            if (param0->unk_2AC == 1) {
                StringTemplate_SetItemName(param0->unk_8C, 0, param0->unk_2AA);
            } else {
                StringTemplate_SetItemNamePlural(param0->unk_8C, 0, param0->unk_2AA);
            }

            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 6);
            StringTemplate_SetBagPocketName(param0->unk_8C, 1, Item_LoadParam(param0->unk_2AA, 5, 11));
        } else {
            if (param0->unk_2A9 == 1) {
                ov7_0224E834(param0, param0->unk_2AA, 0);
                v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 11);
            } else {
                if (param0->unk_2AC == 1) {
                    StringTemplate_SetBallSealName(param0->unk_8C, 0, sub_02098164((u8)param0->unk_2AA));
                } else {
                    StringTemplate_SetBallSealNamePlural(param0->unk_8C, 0, sub_02098164((u8)param0->unk_2AA));
                }

                v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 13);
            }
        }

        StringTemplate_Format(param0->unk_8C, param0->unk_298, v0);
        Strbuf_Free(v0);
    }
        BGL_FillWindow(&param0->unk_08[5], 15);
        param0->unk_2A4 = FieldMessage_Print(&param0->unk_08[5], param0->unk_298, param0->unk_278, 1);
        Sound_PlayEffect(1604);
        return 9;
    case 0xfffffffe:
        sub_0200E084(&param0->unk_08[5], 0);
        ov7_0224EB38(param0, 0);
        CellActor_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        CellActor_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);
        ov7_0224EC10(param0, 0);
        sub_0201A9A4(&param0->unk_08[1]);
        return 4;
    }

    return 8;
}

static u8 ov7_0224E5B0(UnkStruct_ov7_0224D008 *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 9;
    }

    if (param0->unk_2A9 == 0) {
        Bag_TryAddItem(param0->unk_274, param0->unk_2AA, param0->unk_2AC, 11);
        sub_0206D504(param0->unk_284, param0->unk_2AA, param0->unk_2AC);
    } else if (param0->unk_2A9 == 3) {
        Bag_TryAddItem(param0->unk_274, param0->unk_2AA, param0->unk_2AC, 11);
    } else if (param0->unk_2A9 == 1) {
        sub_0202895C(param0->unk_274, param0->unk_2AA);
    } else {
        sub_0202CAE0(param0->unk_274, param0->unk_2AA, param0->unk_2AC);
    }

    ov7_0224E920(param0, param0->unk_2B0 * param0->unk_2AC);

    if (param0->unk_2A9 == 3) {
        GameRecords_AddToRecordValue(param0->records, RECORD_UNK_069, param0->unk_2B0 * param0->unk_2AC);
    } else {
        GameRecords_AddToRecordValue(param0->records, RECORD_UNK_035, param0->unk_2B0 * param0->unk_2AC);
    }

    ov7_0224DAF8(param0, 1);

    if (param0->unk_2AC > 1) {
        param0->unk_2A7 = 2;
    } else {
        if (param0->unk_2A7 != 0xff) {
            param0->unk_2A7++;
        }
    }

    return 10;
}

static u8 ov7_0224E6B8(UnkStruct_ov7_0224D008 *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 10;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        if (param0->unk_28C == 1) {
            sub_0206B3B4(param0->unk_288);
        }

        if (((param0->unk_2A9 == 0) || (param0->unk_2A9 == 3)) && (param0->unk_2AA == 4) && (param0->unk_2AC >= 10)) {
            if (Bag_TryAddItem(param0->unk_274, 12, 1, 11) == 1) {
                Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 10);

                StringTemplate_Format(param0->unk_8C, param0->unk_298, v0);
                Strbuf_Free(v0);
                BGL_FillWindow(&param0->unk_08[5], 15);

                param0->unk_2A4 = FieldMessage_Print(&param0->unk_08[5], param0->unk_298, param0->unk_278, 1);

                {
                    GameRecords *v1 = SaveData_GetGameRecordsPtr(param0->unk_284);
                    GameRecords_IncrementRecordValue(v1, RECORD_UNK_050);
                }

                return 11;
            }
        }

        sub_0200E084(&param0->unk_08[5], 0);
        ov7_0224EB38(param0, 0);
        CellActor_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        CellActor_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);
        ov7_0224EC10(param0, 0);
        sub_0201A9A4(&param0->unk_08[1]);

        return 4;
    }

    return 10;
}

static u8 ov7_0224E7C8(UnkStruct_ov7_0224D008 *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 11;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_0200E084(&param0->unk_08[5], 0);
        ov7_0224EB38(param0, 0);
        CellActor_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        CellActor_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);
        ov7_0224EC10(param0, 0);
        sub_0201A9A4(&param0->unk_08[1]);

        return 4;
    }

    return 11;
}

static void ov7_0224E834(UnkStruct_ov7_0224D008 *param0, u16 param1, u16 param2)
{
    if (param0->unk_2A9 == 0) {
        StringTemplate_SetItemName(param0->unk_8C, param2, param1);
    } else if (param0->unk_2A9 == 3) {
        StringTemplate_SetItemName(param0->unk_8C, param2, param1);
    } else if (param0->unk_2A9 == 1) {
        StringTemplate_SetUndergroundGoodsName(param0->unk_8C, param2, param1);
    } else {
        StringTemplate_SetBallSealName(param0->unk_8C, param2, sub_02098164((u8)param1));
    }
}

static u32 ov7_0224E890(UnkStruct_ov7_0224D008 *param0, u16 param1)
{
    if (param0->unk_2A9 == 0) {
        return Item_LoadParam(param1, 0, 11);
    } else if (param0->unk_2A9 == 3) {
        return ov7_0224E8CC(param0, param1);
    } else if (param0->unk_2A9 == 1) {
        return sub_0205745C((const int)param1);
    }

    return sub_020981D0((u8)param1);
}

static u16 ov7_0224E8CC(UnkStruct_ov7_0224D008 *param0, u16 param1)
{
    int v0;
    static const u16 v1[][2] = {
        { 46, 1 },
        { 49, 1 },
        { 47, 1 },
        { 52, 1 },
        { 48, 1 },
        { 45, 1 },
        { 289, 16 },
        { 290, 16 },
        { 291, 16 },
        { 292, 16 },
        { 293, 16 },
        { 294, 16 },
        { 272, 16 },
        { 273, 16 },
        { 214, 32 },
        { 271, 32 },
        { 213, 48 },
        { 220, 48 },
        { 230, 48 },
        { 232, 48 },
        { 266, 48 },
        { 275, 48 },
        { 287, 48 },
        { 326, 48 },
        { 327, 48 },
        { 50, 48 },
        { 333, 32 },
        { 400, 32 },
        { 388, 32 },
        { 372, 32 },
        { 367, 40 },
        { 358, 40 },
        { 335, 48 },
        { 331, 48 },
        { 408, 64 },
        { 357, 64 },
        { 380, 64 },
        { 363, 80 },
        { 386, 80 },
        { 398, 80 },
        { 353, 80 }
    };

    for (v0 = 0; v0 < (NELEMS(v1)); v0++) {
        if (v1[v0][0] == param1) {
            return v1[v0][1];
        }
    }

    return 0;
}

u32 ov7_0224E8F4(UnkStruct_ov7_0224D008 *param0)
{
    if (param0->unk_2A9 == 3) {
        return sub_0202D230(sub_0202D750(param0->unk_284), 0, 0);
    } else {
        return TrainerInfo_Money(param0->unk_270);
    }
}

void ov7_0224E920(UnkStruct_ov7_0224D008 *param0, u32 param1)
{
    if (param0->unk_2A9 == 3) {
        sub_0202D230(sub_0202D750(param0->unk_284), (u16)param1, 6);
    } else {
        TrainerInfo_TakeMoney(param0->unk_270, param1);
    }
}

static u8 ov7_0224E950(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1)
{
    if (param1->unk_2A5 != param1->unk_2A6) {
        VecFx32 v0 = { -8 * FX32_ONE, 0, 0 };

        Camera_Move(&v0, param1->camera);
        param1->unk_2A5++;
        return 12;
    }

    param1->unk_2A5 = 0;

    Camera_Copy(param1->camera, fieldSystem->camera);
    Camera_Delete(param1->camera);
    Camera_SetAsActive(fieldSystem->camera);

    ov7_0224EB14(param1);

    if (param1->unk_2A9 == 3) {
        return 19;
    }

    FieldMessage_AddWindow(fieldSystem->unk_08, &param1->unk_08[1], 3);
    FieldMessage_DrawWindow(&param1->unk_08[1], param1->unk_278);

    {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param1->unk_88, 2);

        StringTemplate_Format(param1->unk_8C, param1->unk_298, v1);
        Strbuf_Free(v1);
    }

    param1->unk_2A4 = FieldMessage_Print(&param1->unk_08[1], param1->unk_298, param1->unk_278, 1);

    return 13;
}

static u8 ov7_0224EA2C(UnkStruct_ov7_0224D008 *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 13;
    }

    BGL_DeleteWindow(&param0->unk_08[1]);
    ov7_0224D040(param0);

    return 1;
}

static void ov7_0224EA54(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1)
{
    Strbuf *v0;

    if (param1->unk_2A9 == 3) {
        v0 = MessageLoader_GetNewStrbuf(param1->unk_88, 31);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param1->unk_88, 1);
    }

    StringTemplate_Format(param1->unk_8C, param1->unk_298, v0);
    Strbuf_Free(v0);
    FieldMessage_AddWindow(fieldSystem->unk_08, &param1->unk_08[1], 3);
    FieldMessage_DrawWindow(&param1->unk_08[1], param1->unk_278);

    param1->unk_2A4 = FieldMessage_Print(&param1->unk_08[1], param1->unk_298, param1->unk_278, 1);
}

static const UnkStruct_ov7_0224F2EC Unk_ov7_0224F2EC = {
    "data/shop_chr.resdat",
    "data/shop_pal.resdat",
    "data/shop_cell.resdat",
    "data/shop_canm.resdat",
    NULL,
    NULL,
    "data/shop_h.cldat"
};

static const UnkStruct_ov7_0224F358 Unk_ov7_0224F358[] = {
    { 0, 0xB1, 0x8, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0, 0xB1, 0x84, 0x0, 0x1, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 1, 0xAC, 0x18, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 2, 0x16, 0xAC, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 }
};

static void ov7_0224EAD0(UnkStruct_ov7_0224D008 *param0)
{
    u32 v0;

    ov5_021D2F14(&param0->unk_94, &Unk_ov7_0224F2EC, 4, 11);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_25C[v0] = ov5_021D3104(&param0->unk_94, &Unk_ov7_0224F358[v0]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov7_0224EB14(UnkStruct_ov7_0224D008 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 4; v0++) {
        CellActor_Delete(param0->unk_25C[v0]);
    }

    ov5_021D30A8(&param0->unk_94);
}

static void ov7_0224EB38(UnkStruct_ov7_0224D008 *param0, u8 param1)
{
    if (param1 == 0) {
        SpriteActor_SetPositionXY(param0->unk_25C[0], 177, 8);
        SpriteActor_SetPositionXY(param0->unk_25C[1], 177, 132);
    } else {
        SpriteActor_SetPositionXY(param0->unk_25C[0], 162, 108);
        SpriteActor_SetPositionXY(param0->unk_25C[1], 162, 132);
    }
}

static void ov7_0224EB7C(UnkStruct_ov7_0224D008 *param0, u16 param1)
{
    SpriteResource *v0;

    if ((param0->unk_2A9 != 0) && (param0->unk_2A9 != 3)) {
        CellActor_SetDrawFlag(param0->unk_25C[3], 0);
        return;
    }

    v0 = SpriteResourceCollection_Find(param0->unk_94.unk_194[0], 2);

    SpriteResourceCollection_ModifyTiles(param0->unk_94.unk_194[0], v0, 16, Item_FileID(param1, 1), 0, 11);
    sub_0200A4C0(v0);

    v0 = SpriteResourceCollection_Find(param0->unk_94.unk_194[1], 1);

    SpriteResourceCollection_ModifyPalette(param0->unk_94.unk_194[1], v0, 16, Item_FileID(param1, 2), 0, 11);
    sub_0200A6B8(v0);
}

static void ov7_0224EC10(UnkStruct_ov7_0224D008 *param0, u8 param1)
{
    sub_0200D414(param0->unk_25C[2], param1);
}

static void ov7_0224EC20(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1)
{
    ov5_021D1744(0);
    param1->unk_297 = 15;
}

static void ov7_0224EC38(TaskManager *param0)
{
    FieldSystem *fieldSystem;
    UnkStruct_ov7_0224D008 *v1;

    if (ScreenWipe_Done() == 0) {
        return;
    }

    fieldSystem = TaskManager_FieldSystem(param0);
    v1 = TaskManager_Environment(param0);

    ov7_0224D21C(v1);

    {
        Bag *v2;

        v2 = SaveData_GetBag(fieldSystem->saveData);
        v1->unk_04 = sub_0207D824(v2, Unk_ov7_0224F49C, 11);

        sub_0207CB2C(v1->unk_04, fieldSystem->saveData, 2, fieldSystem->unk_98);
    }

    sub_0203D1E4(fieldSystem, v1->unk_04);
    FieldTask_Change(param0, sub_0209AC14, v1);

    v1->unk_297 = 16;
}

static u8 ov7_0224EC9C(FieldSystem *fieldSystem, UnkStruct_ov7_0224D008 *param1)
{
    if (ScreenWipe_Done() == 0) {
        return 18;
    }

    FieldMessage_AddWindow(fieldSystem->unk_08, &param1->unk_08[1], 3);
    FieldMessage_DrawWindow(&param1->unk_08[1], param1->unk_278);

    {
        Strbuf *v0 = MessageLoader_GetNewStrbuf(param1->unk_88, 2);

        StringTemplate_Format(param1->unk_8C, param1->unk_298, v0);
        Strbuf_Free(v0);
    }

    param1->unk_2A4 = FieldMessage_Print(&param1->unk_08[1], param1->unk_298, param1->unk_278, 1);
    return 13;
}
