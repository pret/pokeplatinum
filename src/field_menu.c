#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0209747C_decl.h"

#include "constdata/const_020EA02C.h"
#include "constdata/const_020F1E88.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/sentence.h"
#include "functypes/funcptr_0203B7C0.h"
#include "functypes/funcptr_0203BC5C.h"
#include "field/field_system.h"
#include "struct_defs/struct_0203D8AC.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_02068630.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_020709CC.h"
#include "struct_defs/struct_02072014.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"
#include "overlay021/struct_ov21_021D0D80.h"
#include "struct_defs/sprite_template.h"
#include "overlay104/struct_ov104_02241308.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "narc.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02014A84.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "savedata.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_02028124.h"
#include "unk_0202B604.h"
#include "unk_0202CD50.h"
#include "unk_0202D778.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "map_header.h"
#include "unk_0203A6DC.h"
#include "field_menu.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020553DC.h"
#include "unk_020559DC.h"
#include "unk_020562F8.h"
#include "poketch_data.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_020683F4.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B9D8.h"
#include "unk_0207064C.h"
#include "unk_0207070C.h"
#include "unk_02071D40.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207AE68.h"
#include "unk_0207CB08.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "pokemon_summary_app.h"
#include "unk_020972FC.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "unk_020989DC.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay005/ov5_021E1D20.h"

#include "gmm/pl_msg_0367.h"

typedef enum FieldMenuPos {
    MENU_POS_POKEDEX,
    MENU_POS_POKEMON,
    MENU_POS_BAG,
    MENU_POS_TRAINER_CARD,
    MENU_POS_SAVE,
    MENU_POS_OPTIONS,
    MENU_POS_EXIT,
    MENU_POS_CHAT,
    MENU_POS_RETIRE
} FieldMenuPos;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_0203C540;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    int unk_08;
} UnkStruct_0203C7B8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0203C1C8;

typedef struct {
    void * unk_00;
    u16 unk_04;
} SaveMenu;

static FieldMenu * FieldMenu_Alloc(void);
static u32 sub_0203ABD0(FieldSystem * param0);
static u32 sub_0203AC24(FieldSystem * param0);
static u32 sub_0203AC28(FieldSystem * param0);
static u32 sub_0203AC2C(FieldSystem * param0);
static u32 sub_0203AC34(FieldSystem * param0);
static u32 sub_0203AC3C(FieldSystem * param0);
static void sub_0203B318(FieldMenu * param0, u8 * param1, u32 param2, u8 param3);
static void sub_0203B4E8(FieldMenu * param0);
static void sub_0203B520(FieldMenu * param0);
static void sub_0203B558(GraphicElementData * param0, u32 param1);
static void sub_0203B588(GraphicElementData * param0, u16 param1, u16 param2);
static void sub_0203B5B4(FieldMenu * param0, u16 param1, u16 param2);
static void sub_0203B5E8(GraphicElementData * param0);
static BOOL sub_0203AC44(UnkStruct_020508D4 * param0);
static void sub_0203ADFC(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_Select(UnkStruct_020508D4 * param0);
static u32 FieldMenu_MakeList(FieldMenu * param0, u8 * param1);
static void FieldMenu_Close(FieldMenu * param0);
static void sub_0203B2EC(FieldMenu * param0, FieldSystem * param1);
static void sub_0203B094(UnkStruct_020508D4 * param0);
static void sub_0203B200(UnkStruct_020508D4 * param0);
static void FieldMenu_ApplicationStart(UnkStruct_020508D4 * param0);
static void FieldMenu_ApplicationRun(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectPokedex(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_Pokedex(UnkStruct_020508D4 * param0);
static BOOL sub_0203B738(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectTrainerCard(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_TrainerCard(UnkStruct_020508D4 * param0);
static BOOL sub_0203BF00(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectOptions(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_Options(UnkStruct_020508D4 * param0);
static BOOL sub_0203C050(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectChat(UnkStruct_020508D4 * param0);
static BOOL sub_0203C0A0(UnkStruct_020508D4 * param0);
static BOOL sub_0203C0F8(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectPokemon(UnkStruct_020508D4 * param0);
static BOOL sub_0203B78C(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectBag(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_Bag(UnkStruct_020508D4 * param0);
static BOOL sub_0203BC5C(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectSave(UnkStruct_020508D4 * param0);
static void FieldMenu_SaveWait(UnkStruct_020508D4 * param0);
static void FieldMenu_Save(UnkStruct_020508D4 * param0);
static BOOL sub_0203C1C8(UnkStruct_020508D4 * param0);
static void sub_0203C2D8(UnkStruct_020508D4 * param0, u16 param1);
static BOOL sub_0203C390(UnkStruct_020508D4 * param0);
BOOL sub_0203C434(UnkStruct_020508D4 * param0);
static void FieldMenu_EvolveInit(UnkStruct_020508D4 * param0);
static void FieldMenu_Evolve(UnkStruct_020508D4 * param0);
static BOOL FieldMenu_SelectRetire(UnkStruct_020508D4 * param0);

static const u32 Unk_020EA05C[][2] = {
    {pl_msg_00000367_00000, (u32)FieldMenu_SelectPokedex},
    {pl_msg_00000367_00001, (u32)FieldMenu_SelectPokemon},
    {pl_msg_00000367_00002, (u32)FieldMenu_SelectBag},
    {pl_msg_00000367_00003, (u32)FieldMenu_SelectTrainerCard},
    {pl_msg_00000367_00004, (u32)FieldMenu_SelectSave},
    {pl_msg_00000367_00005, (u32)FieldMenu_SelectOptions},
    {pl_msg_00000367_00006, (u32)0xfffffffe}, //Exit
    {pl_msg_00000367_00007, (u32)FieldMenu_SelectChat},
    {pl_msg_00000367_00008, (u32)FieldMenu_SelectRetire}
};

static const SpriteTemplate Unk_020EA0A4[] = {
    {
        0xCC,
        0x14,
        0x0,
        0x0,
        0x1,
        0x1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0},
        0x0,
        0x0
    },
    {
        0xAE,
        0x14,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x34D9, 0x34D8, 0x34D9, 0x34D9, 0x0, 0x0},
        0x0,
        0x0
    }
};

static const u8 Unk_020EA020[] = {
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

const u8 Unk_020EA02C[] = {
    0x0,
    0x1,
    0x2,
    0x4,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8
};

static const u8 Unk_020EA01C[] = {
    0x3,
    0x5,
    0x8
};

BOOL sub_0203A9C8 (FieldSystem * fieldSystem)
{
    if (MapHeader_GetMapLabelTextID(fieldSystem->unk_1C->unk_00) == 0) {
        return FALSE;
    }

    return TRUE;
}

void FieldMenu_Init (FieldSystem * fieldSystem)
{
    FieldMenu * menu = FieldMenu_Alloc();

    if (sub_0206AE5C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        menu->unk_224 = sub_0203AC24(fieldSystem);
    } else if (sub_0206AE8C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        menu->unk_224 = sub_0203AC28(fieldSystem);
    } else if (sub_0206C0D0(fieldSystem) == 1) {
        menu->unk_224 = sub_0203AC2C(fieldSystem);
    } else {
        menu->unk_224 = sub_0203ABD0(fieldSystem);
    }

    menu->unk_228 = 0;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, Player_Dir(fieldSystem->playerAvatar));
    }

    sub_02050904(fieldSystem, sub_0203AC44, menu);
}

void sub_0203AA78 (FieldSystem * fieldSystem)
{
    FieldMenu * menu = FieldMenu_Alloc();

    menu->unk_224 = sub_0203AC34(fieldSystem);
    menu->unk_228 = 1;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, Player_Dir(fieldSystem->playerAvatar));
    }

    sub_02050904(fieldSystem, sub_0203AC44, menu);
}

void sub_0203AABC (FieldSystem * fieldSystem)
{
    FieldMenu * menu = FieldMenu_Alloc();

    menu->unk_224 = sub_0203AC3C(fieldSystem);
    menu->unk_228 = 0;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, Player_Dir(fieldSystem->playerAvatar));
    }

    sub_02050904(fieldSystem, sub_0203AC44, menu);
}

void sub_0203AB00 (FieldSystem * fieldSystem)
{
    FieldMenu * menu;

    Sound_PlayEffect(1533);
    menu = FieldMenu_Alloc();

    menu->unk_228 = 0;

    if (sub_0206AE5C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        menu->unk_224 = sub_0203AC24(fieldSystem);
    } else if (sub_0206AE8C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        menu->unk_224 = sub_0203AC28(fieldSystem);
    } else if (sub_0206C0D0(fieldSystem) == 1) {
        menu->unk_224 = sub_0203AC2C(fieldSystem);
    } else if (fieldSystem->unk_70 == 3) {
        menu->unk_224 = sub_0203AC3C(fieldSystem);
    } else if (fieldSystem->unk_70 == 2) {
        menu->unk_224 = sub_0203AC34(fieldSystem);
        menu->unk_228 = 1;
    } else {
        menu->unk_224 = sub_0203ABD0(fieldSystem);
    }

    sub_02050924(fieldSystem->unk_10, sub_0203AC44, menu);
}

static FieldMenu * FieldMenu_Alloc (void)
{
    FieldMenu * menu;

    menu = Heap_AllocFromHeap(11, sizeof(FieldMenu));

    menu->state = FIELD_MENU_STATE_INIT;
    menu->unk_28 = 0;
    menu->unk_25C = NULL;

    return menu;
}

static u32 sub_0203ABD0 (FieldSystem * fieldSystem)
{
    u32 v0 = 0;

    if (sub_02027520(sub_02027560(fieldSystem->unk_0C)) == 0) {
        v0 |= 0x1;
    }

    if (sub_0206B054(SaveData_Events(fieldSystem->unk_0C)) == 0) {
        v0 |= 0x2;
    }

    if (sub_0206A938(SaveData_Events(fieldSystem->unk_0C)) == 0) {
        v0 |= 0x4;
    }

    if (MapHeader_IsAmitySquare(fieldSystem->unk_1C->unk_00) == 1) {
        v0 |= 0x2;
        v0 |= 0x4;
    }

    v0 |= 0x80;
    v0 |= 0x100;

    return v0;
}

static u32 sub_0203AC24 (FieldSystem * fieldSystem)
{
    return 0x10 | 0x80;
}

static u32 sub_0203AC28 (FieldSystem * fieldSystem)
{
    return 0x10 | 0x80 | 0x4;
}

static u32 sub_0203AC2C (FieldSystem * fieldSystem)
{
    return 0x1 | 0x4 | 0x10 | 0x80 | 0x100;
}

static u32 sub_0203AC34 (FieldSystem * fieldSystem)
{
    return 0x10 | 0x100;
}

static u32 sub_0203AC3C (FieldSystem * fieldSystem)
{
    return 0x10 | 0x1 | 0x80 | 0x100;
}

static BOOL sub_0203AC44 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    switch (menu->state) {
    case FIELD_MENU_STATE_INIT:
        sub_02062C48(fieldSystem->unk_38);
        sub_0206842C(fieldSystem, &menu->unk_230);
        sub_02070728(fieldSystem, &menu->unk_24C);
        sub_0203ADFC(param0);
        sub_0203B094(param0);
        menu->state = FIELD_MENU_STATE_SELECT;
        break;
    case FIELD_MENU_STATE_SELECT:
        if (FieldMenu_Select(param0) == FALSE) {
            return FALSE;
        }
        break;
    case FIELD_MENU_STATE_APP_START:
        FieldMenu_ApplicationStart(param0);
        break;
    case FIELD_MENU_STATE_APP_RUN:
        FieldMenu_ApplicationRun(param0);
        break;
    case FIELD_MENU_STATE_SAVE:
        FieldMenu_Save(param0);
        break;
    case FIELD_MENU_STATE_SAVE_WAIT:
        FieldMenu_SaveWait(param0);
        break;
    case FIELD_MENU_STATE_EVOLVE_INIT:
        FieldMenu_EvolveInit(param0);
        break;
    case FIELD_MENU_STATE_EVOLVE:
        FieldMenu_Evolve(param0);
        break;
    case FIELD_MENU_STATE_12:
        if (sub_020509DC(fieldSystem)) {
            sub_02062C48(fieldSystem->unk_38);
            sub_0203ADFC(param0);
            sub_0203B094(param0);
            ov5_021D1744(1);
            menu->state = FIELD_MENU_STATE_14;
        }
        break;
    case FIELD_MENU_STATE_8:
        if (sub_020509DC(fieldSystem)) {
            ov5_021D1744(1);
            menu->state = FIELD_MENU_STATE_9;
        }
        break;
    case FIELD_MENU_STATE_9:
        if (ScreenWipe_Done()) {
            sub_0203B2EC(menu, fieldSystem);
            Heap_FreeToHeap(menu);
            sub_02062C78(fieldSystem->unk_38);
            return TRUE;
        }
        break;
    case FIELD_MENU_STATE_10:
        if (sub_020509DC(fieldSystem)) {
            sub_02062C48(fieldSystem->unk_38);
            ov5_021D1744(1);
            menu->state = FIELD_MENU_STATE_11;
        }
        break;
    case FIELD_MENU_STATE_11:
        if (ScreenWipe_Done()) {
            sub_02050924(param0, menu->unk_22C, menu->unk_25C);
            Heap_FreeToHeap(menu);
        }
        break;
    case FIELD_MENU_STATE_15:
        Heap_FreeToHeap(menu);
        sub_02062C78(fieldSystem->unk_38);
        return TRUE;
    case FIELD_MENU_STATE_END:
        sub_0203B2EC(menu, fieldSystem);
        FieldMenu_Close(menu);
        Window_Clear(&menu->unk_00, 1);
        BGL_DeleteWindow(&menu->unk_00);
        sub_0203B200(param0);
        sub_0201C3C0(fieldSystem->unk_08, 3);
        Heap_FreeToHeap(menu);
        sub_02062C78(fieldSystem->unk_38);
        return TRUE;
    case FIELD_MENU_STATE_14:
        if (ScreenWipe_Done()) {
            menu->state = FIELD_MENU_STATE_SELECT;
        }
        break;
    }

    if (menu->unk_20 != NULL) {
        sub_0203B520(menu);
        sub_020219F8(menu->unk_38.unk_00);
    }

    return FALSE;
}

static void sub_0203ADFC (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    MessageLoader * v2;
    UnkStruct_02081CF4 v3;
    u32 v4, v5;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v5 = FieldMenu_MakeList(menu, menu->unk_30);

    BGL_AddWindow(fieldSystem->unk_08, &menu->unk_00, 3, 20, 1, 11, v5 * 3, 12, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)));
    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 1, 11);
    Window_Show(&menu->unk_00, 1, 1024 - (18 + 12) - 9, 11);

    v2 = MessageLoader_Init(0, 26, 367, 11);

    menu->unk_24 = sub_02013A04(v5, 11);
    menu->unk_28 = 0;

    for (v4 = 0; v4 < v5; v4++) {
        if (menu->unk_30[v4] == 3) {
            StringFormatter * v6;
            Strbuf* v7;
            Strbuf* v8;

            v6 = StringFormatter_New(11);
            v7 = Strbuf_Init(8, 11);
            v8 = MessageLoader_GetNewStrbuf(v2, Unk_020EA05C[menu->unk_30[v4]][0]);

            StringFormatter_FormatPlayerName(v6, 0, SaveData_GetTrainerInfo(fieldSystem->unk_0C));
            StringFormatter_Format(v6, v7, v8);
            sub_02013A6C(menu->unk_24, v7, menu->unk_30[v4]);
            Strbuf_Free(v8);
            Strbuf_Free(v7);
            sub_0200B3F0(v6);
        } else {
            sub_02013A4C(
                menu->unk_24, v2, Unk_020EA05C[menu->unk_30[v4]][0], menu->unk_30[v4]);
        }

        if (fieldSystem->unk_90 == menu->unk_30[v4]) {
            menu->unk_28 = v4;
        }
    }

    fieldSystem->unk_90 = menu->unk_30[menu->unk_28];
    MessageLoader_Free(v2);

    v3.unk_00 = menu->unk_24;
    v3.unk_04 = &menu->unk_00;
    v3.unk_08 = 1;
    v3.unk_09 = 1;
    v3.unk_0A = v5;
    v3.unk_0B_0 = 8;
    v3.unk_0B_4 = 1;

    if (v5 >= 4) {
        v3.unk_0B_6 = 1;
    } else {
        v3.unk_0B_6 = 0;
    }

    menu->unk_20 = sub_02001AF4(&v3, 28, 4, menu->unk_28, 11, PAD_BUTTON_B | PAD_BUTTON_X);

    sub_0201A9A4(&menu->unk_00);
    sub_0203B318(menu, menu->unk_30, v5, TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->unk_0C)));
}

static u32 FieldMenu_MakeList (FieldMenu * param0, u8 * param1)
{
    u32 v0 = 0;

    if ((param0->unk_224 & 0x100) == 0) {
        param1[v0] = MENU_POS_RETIRE;
        v0++;
    }

    if ((param0->unk_224 & 0x80) == 0) {
        param1[v0] = MENU_POS_CHAT;
        v0++;
    }

    if ((param0->unk_224 & 0x1) == 0) {
        param1[v0] = MENU_POS_POKEDEX;
        v0++;
    }

    if ((param0->unk_224 & 0x2) == 0) {
        param1[v0] = MENU_POS_POKEMON;
        v0++;
    }

    if ((param0->unk_224 & 0x4) == 0) {
        param1[v0] = MENU_POS_BAG;
        v0++;
    }

    if ((param0->unk_224 & 0x8) == 0) {
        param1[v0] = MENU_POS_TRAINER_CARD;
        v0++;
    }

    if ((param0->unk_224 & 0x10) == 0) {
        param1[v0] = MENU_POS_SAVE;
        v0++;
    }

    if ((param0->unk_224 & 0x20) == 0) {
        param1[v0] = MENU_POS_OPTIONS;
        v0++;
    }

    if ((param0->unk_224 & 0x40) == 0) {
        param1[v0] = MENU_POS_EXIT;
        v0++;
    }

    return v0;
}

static void FieldMenu_Close (FieldMenu * param0)
{
    sub_0203B4E8(param0);
    sub_02001BC4(param0->unk_20, NULL);
    sub_02013A3C(param0->unk_24);

    param0->unk_20 = NULL;
}

static void sub_0203B094 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    MessageLoader * v2;
    StringFormatter * v3;
    Strbuf* v4;
    Strbuf* v5;
    u8 v6;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    if (sub_0206AE5C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        v6 = 0;
    } else if (sub_0206AE8C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        v6 = 1;
    } else {
        return;
    }

    BGL_AddWindow(fieldSystem->unk_08, &menu->unk_10, 3, 1, 1, 12, 4, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4))));
    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 1, 11);
    Window_Show(&menu->unk_10, 1, 1024 - (18 + 12) - 9, 11);
    BGL_FillWindow(&menu->unk_10, 15);

    v2 = MessageLoader_Init(0, 26, 367, 11);

    if (v6 == 0) {
        v5 = MessageLoader_GetNewStrbuf(v2, 9);
    } else {
        v5 = MessageLoader_GetNewStrbuf(v2, 10);
    }

    PrintStringSimple(&menu->unk_10, 0, v5, 0, 0, 0xff, NULL);
    Strbuf_Free(v5);

    v3 = StringFormatter_New(11);
    v4 = Strbuf_Init(32, 11);
    v5 = MessageLoader_GetNewStrbuf(v2, 11);

    if (v6 == 0) {
        u16 * v7 = sub_0203A784(sub_0203A790(fieldSystem->unk_0C));

        StringFormatter_FormatNumber(v3, 0, *v7, 2, 0, 1);
    } else {
        int v8 = sub_020563BC(fieldSystem);

        StringFormatter_FormatNumber(v3, 0, v8, 2, 0, 1);
    }

    StringFormatter_Format(v3, v4, v5);
    PrintStringSimple(&menu->unk_10, 0, v4, 0, 16, 0xff, NULL);
    Strbuf_Free(v4);
    Strbuf_Free(v5);
    sub_0200B3F0(v3);
    MessageLoader_Free(v2);
    sub_0201A9A4(&menu->unk_10);
}

static void sub_0203B200 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    if ((sub_0206AE5C(SaveData_Events(fieldSystem->unk_0C)) == 0) && (sub_0206AE8C(SaveData_Events(fieldSystem->unk_0C)) == 0)) {
        return;
    }

    Window_Clear(&menu->unk_10, 1);
    BGL_DeleteWindow(&menu->unk_10);
}

static BOOL FieldMenu_Select (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    u16 v2;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = sub_02001DC4(menu->unk_20);

    menu->unk_2C = sub_02001C94(menu->unk_20, 1504);
    menu->unk_28 = sub_02001DC4(menu->unk_20);

    if (v2 != menu->unk_28) {
        sub_0203B558(menu->unk_200[0]->unk_00, menu->unk_28);
        sub_0203B5B4(menu, v2, menu->unk_28);
        fieldSystem->unk_90 = menu->unk_30[menu->unk_28];
    }

    sub_0203B5E8(menu->unk_200[1 + menu->unk_28]->unk_00);

    switch (menu->unk_2C) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        menu->state = FIELD_MENU_STATE_END;
        break;
    default:
        if (Unk_020EA05C[menu->unk_2C][1] == 0xfffffffe) {
            menu->state = FIELD_MENU_STATE_END;
        } else if (Unk_020EA05C[menu->unk_2C][1] != 0xffffffff) {
            UnkFuncPtr_02050904 v3 = (UnkFuncPtr_02050904)Unk_020EA05C[menu->unk_2C][1];

            return v3(param0);
        }
    }

    return TRUE;
}

static void sub_0203B2EC (FieldMenu * param0, FieldSystem * param1)
{
    if (sub_02033E1C()) {
        if (param0->unk_228) {
            sub_0205C2B0(param1->unk_80);

            sub_02036AC4();
            sub_0205BEA8(0);
        }
    }
}

static void sub_0203B318 (FieldMenu * param0, u8 * param1, u32 param2, u8 param3)
{
    UnkStruct_ov104_02241308 v0 = {
        8, 1, 2, 2, 0, 0
    };
    u32 i;
    NARC * v2;

    ov5_021D3190(&param0->unk_38, &v0, (7 + 1), 11);

    v2 = NARC_ctor(NARC_INDEX_GRAPHIC__MENU_GRA, 11);

    ov5_021D32E8(&param0->unk_38, v2, 5, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    ov5_021D3374(&param0->unk_38, v2, 1, 0, 13528);
    ov5_021D339C(&param0->unk_38, v2, 0, 0, 13528);
    ov5_021D3414(&param0->unk_38, v2, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    param0->unk_200[0] = ov5_021D3584(&param0->unk_38, &Unk_020EA0A4[0]);

    sub_0203B558(param0->unk_200[0]->unk_00, param0->unk_28);

    ov5_021D3374(&param0->unk_38, v2, 4, 0, 13529);
    ov5_021D339C(&param0->unk_38, v2, 3, 0, 13529);
    ov5_021D3414(&param0->unk_38, v2, 6, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13529);

    for (i = 0; i < param2; i++) {
        SpriteTemplate v3;

        v3 = Unk_020EA0A4[1];
        v3.y += 24 * i;

        if ((param1[i] == 2) && (param3 == 1)) {
            v3.animIdx = 9 * 3;
        } else {
            v3.animIdx = param1[i] * 3;
        }

        param0->unk_200[1 + i] = ov5_021D3584(&param0->unk_38, &v3);

        {
            VecFx32 v4 = {FX32_ONE, FX32_ONE, FX32_ONE};
            sub_02021C80(param0->unk_200[1 + i]->unk_00, &v4, 1);
        }
    }

    sub_0203B588(param0->unk_200[1 + param0->unk_28]->unk_00, 2, 1);

    param0->unk_220 = param2 + 1;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(v2);
}

static void sub_0203B4E8 (FieldMenu * param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_220; v0++) {
        sub_0200D0F4(param0->unk_200[v0]);
    }

    ov5_021D375C(&param0->unk_38);
}

static void sub_0203B520 (FieldMenu * param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_220; v0++) {
        sub_02021E2C(param0->unk_200[v0]->unk_00, FX32_ONE);
    }
}

static void sub_0203B558 (GraphicElementData * param0, u32 param1)
{
    VecFx32 vec;

    vec = *(sub_02021D28(param0));
    vec.y = (20 + 24 * param1) * FX32_ONE;

    sub_02021C50(param0, &vec);
}

static void sub_0203B588 (GraphicElementData * param0, u16 param1, u16 param2)
{
    u32 v0 = sub_02021E24(param0);

    SpriteActor_SetSpriteAnimActive(param0, (v0 / 3) * 3 + param1);
    sub_02021EC4(param0, param2);
}

static void sub_0203B5B4 (FieldMenu * param0, u16 param1, u16 param2)
{
    sub_0203B588(param0->unk_200[1 + param1]->unk_00, 0, 0);
    sub_0203B588(param0->unk_200[1 + param2]->unk_00, 1, 1);
}

static void sub_0203B5E8 (GraphicElementData * param0)
{
    if ((sub_02021E24(param0) % 3) != 1) {
        return;
    }

    if (sub_02021FD0(param0) == 0) {
        sub_0203B588(param0, 2, 1);
    }
}

static void FieldMenu_ApplicationStart (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    if (ScreenWipe_Done() == 0) {
        return;
    }

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    FieldMenu_Close(menu);
    BGL_DeleteWindow(&menu->unk_00);
    sub_0203B200(param0);

    menu->unk_22C(param0);
    menu->state = FIELD_MENU_STATE_APP_RUN;
}

static void FieldMenu_ApplicationRun (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    if (sub_020509B4(fieldSystem)) {
        return;
    }

    menu->unk_22C(param0);
}

void sub_0203B674 (FieldMenu * param0, void * param1)
{
    param0->unk_22C = param1;
    param0->state = FIELD_MENU_STATE_APP_RUN;
}

static BOOL FieldMenu_SelectPokedex (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu;

    menu = sub_02050A64(param0);

    ov5_021D1744(0);

    menu->unk_22C = FieldMenu_Pokedex;
    menu->state = FIELD_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL FieldMenu_Pokedex (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    UnkStruct_ov21_021D0D80 * v2;
    PokedexData * v3;
    TrainerInfo * v4;
    UnkStruct_020507E4 * v5;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov21_021D0D80));
    v3 = sub_02027560(fieldSystem->unk_0C);
    v4 = SaveData_GetTrainerInfo(fieldSystem->unk_0C);
    v5 = SaveData_Events(fieldSystem->unk_0C);

    v2->unk_00 = v3;
    v2->unk_04 = v4;
    v2->unk_08 = sub_02055BA8(fieldSystem);
    v2->unk_0C = sub_0206B1F0(v5, 0);
    v2->unk_10 = sub_0206B1F0(v5, 1);
    v2->unk_14 = sub_0206B1F0(v5, 2);
    v2->unk_18 = sub_0206B1F0(v5, 3);
    v2->unk_1C = fieldSystem->unk_B4;

    sub_0203E0AC(fieldSystem, v2);

    menu->unk_25C = v2;
    menu->unk_22C = sub_0203B738;

    return 0;
}

static BOOL sub_0203B738 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    sub_020509D4(fieldSystem);

    if (menu->unk_25C != NULL) {
        Heap_FreeToHeapExplicit(11, menu->unk_25C);
    }

    menu->state = FIELD_MENU_STATE_12;

    return 0;
}

static BOOL FieldMenu_SelectPokemon (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu;

    menu = sub_02050A64(param0);

    ov5_021D1744(0);

    menu->unk_22C = sub_0203B78C;
    menu->state = FIELD_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL sub_0203B78C (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0203D390(fieldSystem, &menu->unk_24C, 0);
    menu->unk_22C = sub_0203B7C0;

    return 0;
}

BOOL sub_0203B7C0 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    PartyManagementData * v2;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = (PartyManagementData *)Heap_AllocFromHeap(11, sizeof(PartyManagementData));

    memcpy(v2, menu->unk_25C, sizeof(PartyManagementData));
    Heap_FreeToHeap(menu->unk_25C);

    switch (v2->unk_23) {
    case 1:
    {
        PokemonSummary * v3 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

        v3->monData = Party_GetFromSavedata(fieldSystem->unk_0C);
        v3->options = sub_02025E44(fieldSystem->unk_0C);
        v3->dataType = 1;
        v3->pos = v2->unk_22;
        v3->max = (u8)Party_GetCurrentCount(v3->monData);
        v3->move = 0;
        v3->mode = 0;
        v3->ribbons = sub_0202D79C(fieldSystem->unk_0C);
        v3->dexMode = sub_0207A274(fieldSystem->unk_0C);
        v3->contest = PokemonSummary_ShowContestData(fieldSystem->unk_0C);
        v3->chatotCry = NULL;

        PokemonSummary_FlagVisiblePages(v3, Unk_020EA02C);
        PokemonSummary_SetPlayerProfile(v3, SaveData_GetTrainerInfo(fieldSystem->unk_0C));
        sub_0203D334(fieldSystem, v3);

        menu->unk_25C = v3;
        sub_0203B674(menu, sub_0203C1C8);
    }
    break;
    case 4:
    {
        PokemonSummary * v4 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

        v4->monData = Party_GetFromSavedata(fieldSystem->unk_0C);
        v4->options = sub_02025E44(fieldSystem->unk_0C);
        v4->dataType = 1;
        v4->pos = v2->unk_22;
        v4->max = 1;
        v4->move = v2->unk_26;
        v4->mode = 2;
        v4->dexMode = sub_0207A274(fieldSystem->unk_0C);
        v4->contest = PokemonSummary_ShowContestData(fieldSystem->unk_0C);
        v4->chatotCry = NULL;

        PokemonSummary_FlagVisiblePages(v4, Unk_020EA01C);
        PokemonSummary_SetPlayerProfile(v4, SaveData_GetTrainerInfo(fieldSystem->unk_0C));
        sub_0203D334(fieldSystem, v4);

        {
            UnkStruct_0203C1C8 * v5 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C1C8));

            v5->unk_00 = v2->unk_24;
            v5->unk_02 = 0;
            menu->unk_260 = v5;
        }

        menu->unk_25C = v4;
        sub_0203B674(menu, sub_0203C1C8);
    }
    break;
    case 5:
    {
        PokemonSummary * v6 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

        v6->monData = Party_GetFromSavedata(fieldSystem->unk_0C);
        v6->options = sub_02025E44(fieldSystem->unk_0C);
        v6->dataType = 1;
        v6->pos = v2->unk_22;
        v6->max = 1;
        v6->move = v2->unk_26;
        v6->mode = 2;
        v6->dexMode = sub_0207A274(fieldSystem->unk_0C);
        v6->contest = PokemonSummary_ShowContestData(fieldSystem->unk_0C);
        v6->chatotCry = NULL;

        PokemonSummary_FlagVisiblePages(v6, Unk_020EA01C);
        PokemonSummary_SetPlayerProfile(v6, SaveData_GetTrainerInfo(fieldSystem->unk_0C));
        sub_0203D334(fieldSystem, v6);

        {
            UnkStruct_0203C1C8 * v7 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C1C8));

            v7->unk_00 = 0;
            v7->unk_02 = (u16)v2->unk_34;
            menu->unk_260 = v7;
        }

        menu->unk_25C = v6;
        sub_0203B674(menu, sub_0203C1C8);
    }
    break;
    case 6:
    {
        UnkStruct_02097728 * v8;

        v8 = sub_0203D920(fieldSystem, 2, v2->unk_22, Item_MailNumber(v2->unk_24), 11);
        menu->unk_25C = v8;

        if (v2->unk_20 == 10) {
            menu->unk_260 = sub_0203C540(
                v2->unk_24, 0, v2->unk_22);
        } else {
            menu->unk_260 = sub_0203C540(
                v2->unk_24, 1, v2->unk_22);
        }

        sub_0203B674(menu, sub_0203C558);
    }
    break;
    case 7:
    {
        UnkStruct_02097728 * v9;
        Pokemon * v10;

        v10 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->unk_0C), v2->unk_22);
        v9 = sub_0203D984(fieldSystem, v10, 11);

        menu->unk_25C = v9;
        menu->unk_260 = sub_0203C540(v2->unk_24, 2, v2->unk_22);

        sub_0203B674(menu, sub_0203C558);
    }
    break;
    case 3:
    {
        UnkStruct_0207D3C0 * v11;
        void * v12;
        u32 * v13;

        v13 = (u32 *)Heap_AllocFromHeap(11, 4);
        *v13 = v2->unk_22;
        menu->unk_260 = (void *)v13;

        v11 = sub_0207D990(fieldSystem->unk_0C);
        v12 = SaveData_GetTrainerInfo(fieldSystem->unk_0C);
        menu->unk_25C = sub_0207D824(v11, Unk_020EA020, 11);

        sub_0207CB2C(menu->unk_25C, fieldSystem->unk_0C, 1, fieldSystem->unk_98);
    }

        sub_0203D1E4(fieldSystem, menu->unk_25C);
        sub_0203B674(menu, sub_0203BC5C);
        break;
    case 8:
    {
        UnkStruct_0203C7B8 * v14 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C7B8));

        v14->unk_02 = v2->unk_24;
        v14->unk_01 = 3;
        v14->unk_00 = v2->unk_22;
        v14->unk_04 = v2->unk_38;
        v14->unk_08 = v2->unk_3C;

        menu->unk_25C = v14;
        menu->state = FIELD_MENU_STATE_EVOLVE_INIT;
    }
    break;
    case 9:
    {
        UnkStruct_0203C7B8 * v15 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C7B8));

        v15->unk_02 = MapHeader_GetMapEvolutionMethod(fieldSystem->unk_1C->unk_00);
        v15->unk_01 = 0;
        v15->unk_00 = v2->unk_22;
        v15->unk_04 = v2->unk_38;
        v15->unk_08 = v2->unk_3C;
        menu->unk_25C = v15;
        menu->state = FIELD_MENU_STATE_EVOLVE_INIT;
    }
    break;
    case 16:
    case 11:
    case 12:
    case 15:
    case 14:
    case 13:
    case 18:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    {
        UnkFuncPtr_0203B7C0 v16;
        UnkStruct_020709CC v17;

        v17.unk_06 = v2->unk_23 - 11;
        v17.unk_04 = v2->unk_22;
        v17.unk_00 = param0;

        v16 = (UnkFuncPtr_0203B7C0)sub_0207070C(0, v17.unk_06);
        v16(&v17, &menu->unk_24C);
    }
    break;
    case 10:
        menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
        sub_0203B674(menu, sub_0203BC5C);
        break;
    default:
        if ((v2->unk_20 == 5) || (v2->unk_20 == 6) || (v2->unk_20 == 7) || (v2->unk_20 == 16) || (v2->unk_20 == 8)) {
            menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);

            if (v2->unk_22 >= 6) {
                sub_0207CB70(menu->unk_25C, 0);
            } else {
                sub_0207CB70(menu->unk_25C, v2->unk_22);
            }

            sub_0203B674(menu, sub_0203BC5C);
        } else if (v2->unk_20 == 9) {
            menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
            sub_0203B674(menu, sub_0203BC5C);
        } else {
            sub_020509D4(fieldSystem);
            menu->state = FIELD_MENU_STATE_12;
        }
    }

    Heap_FreeToHeap(v2);

    return 0;
}

static BOOL FieldMenu_SelectBag (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu;

    menu = sub_02050A64(param0);

    ov5_021D1744(0);

    menu->unk_22C = FieldMenu_Bag;
    menu->state = FIELD_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL FieldMenu_Bag (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0207CB70(menu->unk_25C, 0);
    menu->unk_22C = sub_0203BC5C;

    ov5_021E2064(fieldSystem);

    return 0;
}

static BOOL sub_0203BC5C (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    UnkStruct_0207CB08 * v2;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = sub_0207CB08(11);

    memcpy(v2, menu->unk_25C, sub_0207CB20());
    Heap_FreeToHeap(menu->unk_25C);

    switch (sub_0207CB9C(v2)) {
    case 0:
    {
        UnkFuncPtr_0203BC5C v3;
        UnkStruct_02068630 v4;
        s32 v5;

        v4.unk_04 = sub_0207CB94(v2);
        v4.unk_06 = sub_0207CBA4(v2);
        v4.unk_00 = param0;
        v5 = Item_LoadParam(v4.unk_04, 6, 11);
        v3 = (UnkFuncPtr_0203BC5C)sub_020683F4(0, v5);
        v3(&v4, &menu->unk_230);
    }
    break;
    case 1:
        sub_0203C2D8(param0, sub_0207CB94(v2));
        break;
    case 2:
    {
        PartyManagementData * v6;

        v6 = Heap_AllocFromHeap(11, sizeof(PartyManagementData));
        memset(v6, 0, sizeof(PartyManagementData));

        v6->unk_00 = Party_GetFromSavedata(fieldSystem->unk_0C);
        v6->unk_04 = sub_0207D990(fieldSystem->unk_0C);
        v6->unk_08 = sub_02028430(fieldSystem->unk_0C);
        v6->unk_0C = sub_02025E44(fieldSystem->unk_0C);
        v6->unk_18 = &menu->unk_24C;
        v6->unk_21 = 0;
        v6->unk_20 = 9;
        v6->unk_24 = sub_0207CB94(v2);
        v6->unk_1C = fieldSystem;

        sub_0203CD84(fieldSystem, &Unk_020F1E88, v6);
        menu->unk_25C = v6;
        sub_0203B674(menu, sub_0203B7C0);
    }
    break;
    case 4:
    {
        Party * v7;
        Pokemon * v8;
        u32 v9;
        u16 v10;

        v7 = Party_GetFromSavedata(fieldSystem->unk_0C);
        v9 = *(u32 *)menu->unk_260;
        v10 = sub_0207CB94(v2);
        v8 = Party_GetPokemonBySlotIndex(v7, v9);

        Heap_FreeToHeap(menu->unk_260);

        if ((Item_IsMail(v10) == 1) && (Pokemon_GetValue(v8, MON_DATA_HELD_ITEM, NULL) == 0)) {
            UnkStruct_02097728 * v11;
            UnkStruct_0203C540 * v12;

            v11 = sub_0203D920(fieldSystem, 2, v9, Item_MailNumber(v10), 11);
            menu->unk_25C = v11;
            menu->unk_260 = sub_0203C540(v10, 0, (u8)v9);
            sub_0203B674(menu, sub_0203C558);
        } else {
            PartyManagementData * v13;

            v13 = Heap_AllocFromHeap(11, sizeof(PartyManagementData));
            memset(v13, 0, sizeof(PartyManagementData));

            v13->unk_00 = v7;
            v13->unk_04 = sub_0207D990(fieldSystem->unk_0C);
            v13->unk_08 = sub_02028430(fieldSystem->unk_0C);
            v13->unk_0C = sub_02025E44(fieldSystem->unk_0C);
            v13->unk_18 = &menu->unk_24C;
            v13->unk_21 = 0;
            v13->unk_24 = sub_0207CB94(v2);
            v13->unk_22 = (u8)v9;
            v13->unk_1C = fieldSystem;

            if (v13->unk_24 == 0) {
                v13->unk_20 = 0;
            } else {
                v13->unk_20 = 10;
            }

            sub_0203CD84(fieldSystem, &Unk_020F1E88, v13);
            menu->unk_25C = v13;
            sub_0203B674(menu, sub_0203B7C0);
        }
    }
    break;
    case 5:
    default:
        sub_020509D4(fieldSystem);
        menu->state = FIELD_MENU_STATE_12;
    }

    Heap_FreeToHeap(v2);

    return 0;
}

static BOOL FieldMenu_SelectTrainerCard (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu;

    menu = sub_02050A64(param0);

    ov5_021D1744(0);

    menu->unk_22C = FieldMenu_TrainerCard;
    menu->state = FIELD_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL FieldMenu_TrainerCard (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_02071F04(11);

    sub_02071D40(1, 1, 0, 0xff, fieldSystem, (TrainerCard *)menu->unk_25C);
    sub_0203E09C(fieldSystem, (TrainerCard *)menu->unk_25C);

    menu->unk_22C = sub_0203BF00;
    return 0;
}

static BOOL sub_0203BF00 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    sub_020721D4(fieldSystem, (TrainerCard *)menu->unk_25C);
    sub_02071F20((TrainerCard *)menu->unk_25C);
    sub_020509D4(fieldSystem);

    menu->state = FIELD_MENU_STATE_12;

    return 0;
}

static BOOL FieldMenu_SelectSave (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu = sub_02050A64(param0);

    FieldMenu_Close(menu);
    Window_Clear(&menu->unk_00, 1);
    sub_0201C3C0(menu->unk_00.unk_00, menu->unk_00.unk_04);
    BGL_DeleteWindow(&menu->unk_00);
    sub_0203B200(param0);

    menu->state = FIELD_MENU_STATE_SAVE;

    return TRUE;
}

static void FieldMenu_Save (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu = sub_02050A64(param0);
    FieldSystem * fieldSystem = sub_02050A60(param0);
    SaveMenu * saveMenu;

    if (SaveData_OverwriteCheck(fieldSystem->unk_0C)) {
        sub_0203E8E0(param0, 2034, NULL, NULL);
    } else {
        menu->unk_25C = Heap_AllocFromHeap(32, sizeof(SaveMenu));
        saveMenu = menu->unk_25C;
        saveMenu->unk_04 = 0;

        sub_0203E8E0(param0, 2005, NULL, &saveMenu->unk_04);
    }

    menu->state = FIELD_MENU_STATE_SAVE_WAIT;
}

static void FieldMenu_SaveWait (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem = sub_02050A60(param0);
    FieldMenu * menu = sub_02050A64(param0);
    SaveMenu * saveMenu = menu->unk_25C;

    if (SaveData_OverwriteCheck(fieldSystem->unk_0C)) {
        menu->state = FIELD_MENU_STATE_INIT;
    } else {
        if (saveMenu->unk_04 == 0) {
            menu->state = FIELD_MENU_STATE_INIT;
        } else {
            menu->state = FIELD_MENU_STATE_15;
        }

        Heap_FreeToHeap(saveMenu);
    }
}

static BOOL FieldMenu_SelectOptions (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu;

    menu = sub_02050A64(param0);

    ov5_021D1744(0);

    menu->unk_22C = FieldMenu_Options;
    menu->state = FIELD_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL FieldMenu_Options (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0203D8EC(fieldSystem);
    menu->unk_22C = sub_0203C050;

    return FALSE;
}

static BOOL sub_0203C050 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    Heap_FreeToHeap(menu->unk_25C);
    sub_020509D4(fieldSystem);

    menu->state = FIELD_MENU_STATE_12;

    return 0;
}

static BOOL FieldMenu_SelectChat (UnkStruct_020508D4 * param0)
{
    FieldMenu * menu;

    menu = sub_02050A64(param0);

    ov5_021D1744(0);

    menu->unk_22C = sub_0203C0A0;
    menu->state = FIELD_MENU_STATE_APP_START;

    return 1;
}

static BOOL sub_0203C0A0 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    Sentence v2;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0209747C(2, 0, fieldSystem->unk_0C, 11);

    sub_02014A9C(&v2, 4);
    sub_02097500(menu->unk_25C, &v2);
    sub_0203D874(fieldSystem, (UnkStruct_0209747C *)menu->unk_25C);

    menu->unk_22C = sub_0203C0F8;

    return 0;
}

static BOOL sub_0203C0F8 (UnkStruct_020508D4 * param0)
{
    Sentence sentence;
    FieldSystem * fieldSystem;
    FieldMenu * v2;

    fieldSystem = sub_02050A60(param0);
    v2 = sub_02050A64(param0);

    if (sub_02097528(v2->unk_25C) == 0) {
        sub_02097540(v2->unk_25C, &sentence);

        if (sub_02033E1C()) {
            sub_0205C12C(&sentence);
            sub_0205C010(fieldSystem->unk_7C, &sentence);
        }

        v2->state = FIELD_MENU_STATE_8;
    } else {
        v2->state = FIELD_MENU_STATE_12;
    }

    sub_020974EC((UnkStruct_0209747C *)v2->unk_25C);
    sub_020509D4(fieldSystem);
    sub_0205C2B0(fieldSystem->unk_80);

    return 0;
}

static BOOL FieldMenu_SelectRetire (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    FieldMenu_Close(menu);
    Window_Clear(&menu->unk_00, 1);
    sub_0201C3C0(menu->unk_00.unk_00, menu->unk_00.unk_04);
    BGL_DeleteWindow(&menu->unk_00);
    sub_0203B200(param0);

    if (sub_0206AE5C(SaveData_Events(fieldSystem->unk_0C)) == 1) {
        sub_0203E918(param0, 8821, NULL);
    } else {
        sub_0203E918(param0, 4, NULL);
    }

    Heap_FreeToHeap(menu);
    return 0;
}

static BOOL sub_0203C1C8 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    PokemonSummary * v2;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

    memcpy(v2, menu->unk_25C, sizeof(PokemonSummary));
    Heap_FreeToHeap(menu->unk_25C);

    switch (v2->mode) {
    case 2:
    {
        PartyManagementData * v3;
        UnkStruct_0203C1C8 * v4;

        v3 = Heap_AllocFromHeap(11, sizeof(PartyManagementData));
        v4 = (UnkStruct_0203C1C8 *)menu->unk_260;

        memset(v3, 0, sizeof(PartyManagementData));

        v3->unk_00 = Party_GetFromSavedata(fieldSystem->unk_0C);
        v3->unk_04 = sub_0207D990(fieldSystem->unk_0C);
        v3->unk_08 = sub_02028430(fieldSystem->unk_0C);
        v3->unk_0C = sub_02025E44(fieldSystem->unk_0C);
        v3->unk_18 = &menu->unk_24C;
        v3->unk_21 = 0;
        v3->unk_1C = fieldSystem;

        if (v4->unk_00 != 0) {
            v3->unk_20 = 7;
            v3->unk_34 = 0;
        } else {
            v3->unk_20 = 8;
            v3->unk_34 = v4->unk_02;
        }

        v3->unk_24 = v4->unk_00;
        v3->unk_22 = v2->pos;
        v3->unk_26 = v2->move;
        v3->unk_28 = v2->selectedSlot;

        sub_0203CD84(fieldSystem, &Unk_020F1E88, v3);
        Heap_FreeToHeap(menu->unk_260);
        menu->unk_25C = v3;
        sub_0203B674(menu, sub_0203B7C0);
    }
    break;
    default:
        menu->unk_25C = sub_0203D390(fieldSystem, &menu->unk_24C, v2->pos);
        sub_0203B674(menu, sub_0203B7C0);
    }

    Heap_FreeToHeap(v2);

    return 0;
}

static void sub_0203C2D8 (UnkStruct_020508D4 * param0, u16 param1)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    UnkStruct_0207D3C0 * v2;
    u8 v3;
    u8 v4, v5, v6;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_020972FC(11);
    v2 = sub_0207D990(fieldSystem->unk_0C);
    sub_02097320(menu->unk_25C, param1, 1);
    v6 = 0;

    for (v3 = 0; v3 < 64; v3++) {
        param1 = Item_ForBerryNumber(v3);

        if (sub_0207D688(v2, param1, 1, 11) == 1) {
            sub_02097320(menu->unk_25C, param1, 0);
            v6++;
        }
    }

    sub_0207D9B4(fieldSystem->unk_98, 4, &v5, &v4);
    sub_0209733C(menu->unk_25C, v4, v5, v6 + 3);

    sub_0203D2E4(fieldSystem, menu->unk_25C);
    sub_0203B674(menu, sub_0203C390);
}

static BOOL sub_0203C390 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    u8 v2, v3;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    sub_02097390(menu->unk_25C, &v2, &v3);
    sub_0207D9C8(fieldSystem->unk_98, 4, v3, v2);
    Heap_FreeToHeapExplicit(11, menu->unk_25C);

    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C3F4 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    Heap_FreeToHeapExplicit(11, menu->unk_25C);
    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C434 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    UnkStruct_0203D8AC * v2;
    u32 v3;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v3 = *((u32 *)menu->unk_260);

    Heap_FreeToHeapExplicit(11, menu->unk_260);

    v2 = (UnkStruct_0203D8AC *)menu->unk_25C;

    if (!(v2->unk_10)) {
        Heap_FreeToHeapExplicit(11, menu->unk_25C);
        menu->unk_25C = sub_0203D390(fieldSystem, &menu->unk_24C, v3);
        sub_0203B674(menu, sub_0203B7C0);
    } else {
        Pokemon * v4;
        void * v5;
        void * v6;

        v4 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->unk_0C), v3);
        v5 = sub_0207064C(11, fieldSystem, v4, v2->unk_1C, v2->unk_14 * 32 + 16, v2->unk_18 * 32 + 16);
        v6 = sub_0202BE00((20 - 19), v2->unk_1C, 11);

        sub_0202B758(fieldSystem->unk_9C, v6, 1);
        Heap_FreeToHeapExplicit(11, menu->unk_25C);
        sub_020509D4(fieldSystem);

        menu->unk_22C = sub_02070680;
        menu->unk_25C = v5;
        menu->state = FIELD_MENU_STATE_10;
    }

    return 0;
}

BOOL sub_0203C50C (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

static void sub_0203C668(FieldSystem * param0, FieldMenu * param1, u8 param2);

void * sub_0203C540 (u16 param0, u8 param1, u8 param2)
{
    UnkStruct_0203C540 * v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C540));

    v0->unk_00 = param0;
    v0->unk_02 = param2;
    v0->unk_03 = param1;

    return (void *)v0;
}

BOOL sub_0203C558 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    UnkStruct_0203C540 * v2;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = menu->unk_260;

    switch (v2->unk_03) {
    case 3:
        sub_02097770(menu->unk_25C);
        menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
        sub_0203B674(menu, sub_0203BC5C);
        break;
    case 2:
        sub_02097770(menu->unk_25C);
        menu->unk_25C = sub_0203D390(fieldSystem, &menu->unk_24C, v2->unk_02);
        sub_0203B674(menu, sub_0203B7C0);
        break;
    case 0:
        if (sub_02097728(menu->unk_25C) == 1) {
            sub_0203C668(fieldSystem, menu, 12);
        } else {
            sub_02097770(menu->unk_25C);
            menu->unk_25C = sub_0203D390(fieldSystem, &menu->unk_24C, v2->unk_02);
            sub_0203B674(menu, sub_0203B7C0);
        }
        break;
    case 1:
        if (sub_02097728(menu->unk_25C) == 1) {
            sub_0203C668(fieldSystem, menu, 11);
        } else {
            sub_02097770(menu->unk_25C);
            menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
            sub_0203B674(menu, sub_0203BC5C);
        }
        break;
    }

    Heap_FreeToHeap(menu->unk_260);
    return 0;
}

static void sub_0203C668 (FieldSystem * param0, FieldMenu * param1, u8 param2)
{
    UnkStruct_0203C540 * v0;
    PartyManagementData * partyMan;

    v0 = param1->unk_260;
    partyMan = Heap_AllocFromHeap(11, sizeof(PartyManagementData));

    memset(partyMan, 0, sizeof(PartyManagementData));
    partyMan->unk_00 = Party_GetFromSavedata(param0->unk_0C);
    partyMan->unk_04 = sub_0207D990(param0->unk_0C);
    partyMan->unk_08 = sub_02028430(param0->unk_0C);
    partyMan->unk_0C = sub_02025E44(param0->unk_0C);
    partyMan->unk_18 = &param1->unk_24C;
    partyMan->unk_21 = 0;
    partyMan->unk_24 = v0->unk_00;
    partyMan->unk_22 = v0->unk_02;
    partyMan->unk_20 = param2;
    partyMan->unk_1C = param0;

    sub_02097750(param1->unk_25C, Party_GetPokemonBySlotIndex(partyMan->unk_00, v0->unk_02));
    sub_02097770(param1->unk_25C);
    sub_0203CD84(param0, &Unk_020F1E88, partyMan);

    param1->unk_25C = partyMan;
    sub_0203B674(param1, sub_0203B7C0);
}

BOOL sub_0203C710 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    sub_02098AF0(menu->unk_25C);

    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C750 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C784 (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

static void FieldMenu_EvolveInit (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;
    UnkStruct_0203C7B8 * v2;
    Party * v3;
    Pokemon * v4;
    UnkStruct_0207AE68 * v5;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);
    v2 = menu->unk_25C;

    sub_0200569C();
    Heap_Create(3, 73, 0x30000);

    v3 = Party_GetFromSavedata(fieldSystem->unk_0C);
    v4 = Party_GetPokemonBySlotIndex(v3, v2->unk_00);

    if (v2->unk_01 == 0) {
        v5 = sub_0207AE68(v3, v4, v2->unk_04, sub_02025E44(fieldSystem->unk_0C), PokemonSummary_ShowContestData(fieldSystem->unk_0C), sub_02027560(fieldSystem->unk_0C), sub_0207D990(fieldSystem->unk_0C), sub_0202CD88(fieldSystem->unk_0C), SaveData_PoketchData(fieldSystem->unk_0C), v2->unk_08, 0x1, 73);
    } else {
        v5 = sub_0207AE68(v3, v4, v2->unk_04, sub_02025E44(fieldSystem->unk_0C), PokemonSummary_ShowContestData(fieldSystem->unk_0C), sub_02027560(fieldSystem->unk_0C), sub_0207D990(fieldSystem->unk_0C), sub_0202CD88(fieldSystem->unk_0C), SaveData_PoketchData(fieldSystem->unk_0C), v2->unk_08, NULL, 73);
    }

    {
        u32 * v6 = Heap_AllocFromHeap(11, 4);

        *v6 = v2->unk_00;
        menu->unk_260 = v6;
    }

    Heap_FreeToHeap(menu->unk_25C);

    menu->unk_25C = v5;
    menu->state = FIELD_MENU_STATE_EVOLVE;
}

static void FieldMenu_Evolve (UnkStruct_020508D4 * param0)
{
    FieldSystem * fieldSystem;
    FieldMenu * menu;

    fieldSystem = sub_02050A60(param0);
    menu = sub_02050A64(param0);

    if (sub_0207B0D0(menu->unk_25C) == 1) {
        sub_0207B0E0(menu->unk_25C);
        Heap_Destroy(73);
        sub_020055D0(1141, 0);
        sub_02004234(0);
        sub_020556A0(fieldSystem, fieldSystem->unk_1C->unk_00);

        menu->unk_25C = sub_0203D20C(fieldSystem, &menu->unk_230);

        {
            u32 v2 = *((u32 *)menu->unk_260);

            sub_0207CB70(menu->unk_25C, (u8)v2);
            Heap_FreeToHeap(menu->unk_260);
        }

        sub_0203B674(menu, sub_0203BC5C);
    }
}
