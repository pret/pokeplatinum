#include "overlay097/ov97_0222D30C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_02025CCC_decl.h"
#include "struct_defs/struct_0202DF40.h"
#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay077/const_ov77_021D742C.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/ov97_0222D04C.h"
#include "overlay097/ov97_02232054.h"
#include "overlay097/ov97_02237520.h"
#include "overlay097/ov97_02237694.h"
#include "overlay097/ov97_02238534.h"
#include "overlay097/struct_ov97_0222D04C.h"
#include "overlay097/struct_ov97_0222D250.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay097/struct_ov97_02237808.h"
#include "overlay097/struct_ov97_02237AEC.h"
#include "overlay097/struct_ov97_0223829C.h"
#include "overlay097/union_ov97_0222D2B0.h"
#include "savedata/save_table.h"

#include "cell_actor.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02000C88.h"
#include "unk_0200112C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0202DAB4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay97);

typedef struct {
    int unk_00;
    u32 unk_04;
} UnkStruct_ov97_0223E5B8;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    CellActor *unk_0C;
    VecFx32 unk_10;
    fx32 unk_1C;
    fx32 unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    SysTask *unk_48;
} UnkStruct_ov97_0222EEB8;

typedef struct {
    int unk_00;
    int unk_04;
    s8 unk_08;
    UnkStruct_ov97_02237AEC *unk_0C;
    CellActorResourceData unk_10[2];
    SpriteResource *unk_58[2][6];
    UnkStruct_ov97_0222EEB8 unk_88[80];
    UnkStruct_ov97_0222EEB8 unk_1848[80];
    UnkStruct_ov97_0222EEB8 unk_3008;
    UnkStruct_ov97_0222EEB8 unk_3054;
    int *unk_30A0;
} UnkStruct_ov97_0222E398;

typedef struct {
    f32 unk_00;
    f32 unk_04;
} UnkStruct_ov97_0222EDC0;

void Strbuf_ToChars(const Strbuf *param0, u16 *param1, u32 param2);
void Strbuf_CopyNumChars(Strbuf *param0, const u16 *param1, u32 param2);
MysteryGift *SaveData_MysteryGift(SaveData *param0);
void ov97_02231FFC(BGL *param0, void *, int param2);
static int ov97_0222D474(OverlayManager *param0);
static int ov97_0222D4D8(OverlayManager *param0);
static int ov97_0222DA18(OverlayManager *param0);
static int ov97_0222D984(OverlayManager *param0);
static int ov97_0222D75C(OverlayManager *param0);
static int ov97_0222D94C(OverlayManager *param0);
static int ov97_0222D798(OverlayManager *param0);
static int ov97_0222D814(OverlayManager *param0);
static int ov97_0222D884(OverlayManager *param0);
static int ov97_0222D9BC(OverlayManager *param0);
static int ov97_0222D9F0(OverlayManager *param0);
static int ov97_0222DA64(OverlayManager *param0);
static int ov97_0222DA84(OverlayManager *param0);
static int ov97_0222DB08(OverlayManager *param0);
static int ov97_0222DB40(OverlayManager *param0);
static void ov97_0222DD1C(OverlayManager *param0, UnkStruct_ov97_0223E5B8 *param1, int param2, Window *param3, u32 param4);
static void ov97_0222DDD0(OverlayManager *param0, int param1, u32 param2);
static void ov97_0222DE78(OverlayManager *param0, Window *param1, u32 param2);
static void ov97_022302D4(void);
static void ov97_02230224(UnkStruct_ov97_0222D04C *param0);
static void ov97_022302F4(UnkStruct_ov97_0222D04C *param0);
static int ov97_0222E228(OverlayManager *param0, Window *param1, int param2, int param3);
int ov97_02238EAC(OverlayManager *param0, int *param1);
static void ov97_0222EEB8(SysTask *param0, void *param1);

static OverlayManager *Unk_ov97_0223F1B0;

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E5B8[] = {
    { 0xC, (u32)ov97_0222DA84 },
    { 0xD, (u32)ov97_0222DB08 },
    { 0xE, (u32)ov97_0222DB40 }
};

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E5F0[] = {
    { 0xF, (u32)ov97_0222D798 },
    { 0x14, (u32)ov97_0222D884 },
    { 0x10, (u32)ov97_0222D814 },
    { 0x11, (u32)ov97_0222DA64 }
};

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E598[] = {
    { 0x12, (u32)ov97_0222D474 },
    { 0x13, (u32)ov97_0222D75C }
};

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E5A8[] = {
    { 0x12, (u32)ov97_0222D4D8 },
    { 0x13, (u32)ov97_0222D94C }
};

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E568[] = {
    { 0x12, (u32)ov97_0222DA18 },
    { 0x13, (u32)ov97_0222D75C }
};

UnkStruct_ov97_0223E5B8 dummy_UnkStruct_ov97_0223E5B8[] = {
    { 0x12, (u32)ov97_0222D4D8 },
    { 0x13, (u32)NULL }
};

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E578[] = {
    { 0x12, (u32)ov97_0222D984 },
    { 0x13, (u32)ov97_0222D75C }
};

UnkStruct_ov97_0223E5B8 Unk_ov97_0223E588[] = {
    { 0x12, (u32)ov97_0222D9BC },
    { 0x13, (u32)ov97_0222D9F0 }
};

static UnkStruct_ov84_02240FA8 Unk_ov97_0223E5D0 = {
    NULL,
    ov97_022383C4,
    NULL,
    NULL,
    0x0,
    0x3,
    0x0,
    0xC,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0
};

static int Unk_ov97_0223F1A8;
static int Unk_ov97_0223F1B4;
static void *Unk_ov97_0223F1AC;

static void ov97_0222D30C(UnkStruct_ov97_0222D04C *param0, int param1)
{
    if (param1 == 1) {
        if (param0->unk_2A50 == NULL) {
            param0->unk_2A50 = sub_0200E7FC(&param0->unk_18, 1);
        }
    } else {
        if (param0->unk_2A50) {
            DeleteWaitDial(param0->unk_2A50);
        }

        param0->unk_2A50 = NULL;
    }
}

void ov97_0222D344(UnkStruct_ov97_0222D04C *param0, int param1)
{
    ov97_0222D30C(param0, param1);
}

static void ov97_0222D34C(OverlayManager *param0)
{
    int v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    ov97_02237DA0();

    if (v1->unk_7C) {
        sub_02013A3C(v1->unk_7C);
    }

    if (v1->unk_78) {
        sub_02001384(v1->unk_78, NULL, NULL);
    }

    sub_0201ACF4(&v1->unk_18);
    BGL_DeleteWindow(&v1->unk_18);

    if (BGL_WindowAdded(&v1->unk_58)) {
        sub_0201ACF4(&v1->unk_58);
        BGL_DeleteWindow(&v1->unk_58);
    }

    for (v0 = 0; v0 < 3; v0++) {
        if (v1->unk_28[v0].unk_00) {
            sub_0201ACF4(&v1->unk_28[v0]);
            BGL_DeleteWindow(&v1->unk_28[v0]);
        }
    }

    sub_02019044(v1->unk_00, 0);
    sub_02019044(v1->unk_00, 1);
    sub_02019044(v1->unk_00, 4);
    sub_02019044(v1->unk_00, 5);
    Heap_FreeToHeap(v1->unk_00);
}

static void ov97_0222D3E8(UnkStruct_ov97_0222D04C *param0)
{
    ov97_02237A20();
    ov97_02237A74();
    ov97_02237B0C(116, 10, 7, 9, 8, 0);
}

static void ov97_0222D40C(UnkStruct_ov97_0222D04C *param0, int param1)
{
    if (param1 != -1) {
        param0->unk_628 = ov97_02237D14(0, param0->unk_628, HW_LCD_WIDTH / 2, 100, param1);
    } else {
        CellActor_SetDrawFlag(param0->unk_628, 0);
    }
}

static void ov97_0222D444(Window *param0, u8 param1)
{
    if (BGL_WindowAdded(param0) == 1) {
        Window_Clear(param0, param1);
    }
}

static void ov97_0222D45C(Window *param0, u8 param1)
{
    if (BGL_WindowAdded(param0) == 1) {
        sub_0200E084(param0, param1);
    }
}

static int ov97_0222D474(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    if (v0->unk_1638 != 2) {
        ov97_0222DE78(param0, &v0->unk_18, 3);
    }

    ov97_0222D444(&v0->unk_28[2], 0);

    if (v0->unk_1638 != 2) {
        ov97_0222D200(v0, 15);
        v0->unk_434 = (60 * 120);
        sub_02039734();
        ov97_0222D30C(v0, 1);
        return 7;
    } else {
        v0->unk_84 = 19;
        return 19;
    }
}

static int ov97_0222D4D8(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    if (v0->unk_80 == 1) {
        return 49;
    }

    if ((v0->unk_80 == 3) || (v0->unk_80 == 4) || (v0->unk_80 == 2)) {
        return 49;
    }

    if (v0->unk_80 == 5) {
        return 49;
    }

    if (v0->unk_1638 == 1) {
        ov97_0222D234(v0->unk_438);
    }

    ov97_0222DE78(param0, &v0->unk_18, 6);
    ov97_0222D444(&v0->unk_28[2], 0);

    if (v0->unk_1638 == 1) {
        ov97_0222D40C(v0, 0);
        ov97_0222D30C(v0, 1);
    }

    if (v0->unk_1638 == 1) {
        CommTiming_StartSync(0xAB);
        return 9;
    } else {
        return 21;
    }
}

static UnkStruct_0202DF40 *ov97_0222D55C(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);
    UnkUnion_ov97_0222D2B0 *v1 = &v0->unk_8C.unk_50;
    UnkStruct_ov97_0222D250 *v2 = &v0->unk_8C.unk_00;
    UnkStruct_ov97_0223829C *v3;

    switch (v0->unk_1638) {
    case 1:
        memcpy(v1, ov97_0222D2B8(0, NULL, 0), sizeof(UnkUnion_ov97_0222D2B0));
        ov97_02238324(&v0->unk_8C, &v0->unk_8C.unk_50, 86);
        break;
    case 3:
        v3 = (UnkStruct_ov97_0223829C *)v0->unk_638;
        memcpy(v1, &v3->unk_50, sizeof(UnkUnion_ov97_0222D2B0));
        memcpy(v2, &v3->unk_00, sizeof(UnkStruct_ov97_0222D250));
        break;
    }

    return &v1->val1;
}

static BOOL ov97_0222D5C8(UnkStruct_0202DF40 *param0)
{
    switch (param0->unk_00) {
    case 13:
        return 1;
    case 3:
        if (param0->unk_04.val3.unk_04 == 1) {
            return 1;
        }
        break;
    case 1:
    case 2: {
        Pokemon *v0;
        int v1;

        v0 = (Pokemon *)&param0->unk_04.val1.unk_04;
        v1 = Pokemon_GetValue(v0, MON_DATA_MET_LOCATION, NULL);

        if (((v1 >= 3) && (v1 <= 14)) || ((v1 >= 64) && (v1 <= 71))) {
            return 1;
        }
    } break;
    }

    return 0;
}

static void ov97_0222D614(void *param0)
{
    int v0;
    UnkStruct_ov97_0222D04C *v1 = (UnkStruct_ov97_0222D04C *)param0;

    if (v1->unk_2A4C == 1) {
        v1->unk_2A48 = NULL;
    }

    v0 = ov97_0223847C();

    if ((v0 == 2) || (v0 == 3)) {
        if (ov97_0222D5C8(&v1->unk_8C.unk_50.val1) == 1) {
            (void)0;
        } else {
            Sound_PlayEffect(1563);
        }

        v1->unk_2A48 = NULL;
    }
}

static void ov97_0222D658(OverlayManager *param0)
{
    int v0, v1;
    UnkStruct_ov97_0222D04C *v2 = OverlayManager_Data(param0);
    UnkStruct_ov97_0222D250 *v3 = &v2->unk_8C.unk_00;
    UnkUnion_ov97_0222D2B0 *v4 = &v2->unk_8C.unk_50;
    SaveData *v5 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    MysteryGift *v6;

    if (v3->unk_4E_2 == 0) {
        v0 = 0;
    } else {
        RTCDate v7;

        v0 = 1;
        v4->val2.unk_350 = 0;

        if (v3->unk_4E_4 == 0) {
            v4->val2.unk_348 = 0;
        }

        GetCurrentDate(&v7);
        v4->val2.unk_354 = RTC_ConvertDateToDay(&v7);
    }

    v6 = SaveData_MysteryGift(v5);
    sub_0202DE5C(v6, v3->unk_4C);

    if (v0 == 0) {
        v1 = sub_0202DB2C(v6, (const void *)v4, 3);
    } else {
        v1 = sub_0202DBAC(v6, (const void *)v4);
    }

    ov97_0223846C(v5);

    v2->unk_2A4C = 0;
    v2->unk_2A48 = ov97_0222D614;
}

static void ov97_0222D6F8(OverlayManager *param0, int param1)
{
    int v0;
    Window *v1;
    UnkStruct_ov97_0222D04C *v2 = OverlayManager_Data(param0);

    if (param1 == 0) {
        v0 = 4;
    } else {
        v0 = -1;
    }

    v1 = &v2->unk_28[2];

    if (v1->unk_00 == NULL) {
        BGL_AddWindow(v2->unk_00, v1, 0, 23, 10, 6, 4, 0, (((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8));
    }

    Window_Show(v1, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, Unk_ov97_0223E5A8, NELEMS(Unk_ov97_0223E5A8), v1, v0);
}

static int ov97_0222D75C(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    ov97_0222D444(&v0->unk_28[2], 0);
    ov97_0222D444(&v0->unk_58, 0);

    if (v0->unk_1638 == 1) {
        ov97_0222D30C(v0, 0);
    }

    sub_02039794();

    return ov97_0222DA84(param0);
}

static int ov97_0222D798(OverlayManager *param0)
{
    Window *v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    if (ov97_02237624()) {
        v1->unk_1638 = 2;
    } else {
        v1->unk_1638 = 1;
    }

    ov97_0222D444(&v1->unk_28[1], 0);

    v0 = &v1->unk_28[2];

    if (v0->unk_00 == NULL) {
        BGL_AddWindow(v1->unk_00, v0, 0, 23, 10, 6, 4, 0, (((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8));
    }

    Window_Show(v0, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, Unk_ov97_0223E598, NELEMS(Unk_ov97_0223E598), v0, 2);

    return 5;
}

static int ov97_0222D814(OverlayManager *param0)
{
    Window *v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    v1->unk_1638 = 4;

    ov97_0222D444(&v1->unk_28[1], 0);

    v0 = &v1->unk_28[2];

    if (v0->unk_00 == NULL) {
        BGL_AddWindow(v1->unk_00, v0, 0, 23, 10, 6, 4, 0, (((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8));
    }

    Window_Show(v0, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, Unk_ov97_0223E568, NELEMS(Unk_ov97_0223E568), v0, 78);

    return 5;
}

static int ov97_0222D884(OverlayManager *param0)
{
    Window *v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    v1->unk_1638 = 3;

    ov97_0222D444(&v1->unk_28[1], 0);

    v0 = &v1->unk_28[2];

    if (v0->unk_00 == NULL) {
        BGL_AddWindow(v1->unk_00, v0, 0, 23, 10, 6, 4, 0, (((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8));
    }

    Window_Show(v0, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, Unk_ov97_0223E578, NELEMS(Unk_ov97_0223E578), v0, 77);

    return 5;
}

static void ov97_0222D8F4(OverlayManager *param0)
{
    Window *v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    v0 = &v1->unk_28[2];

    if (v0->unk_00 == NULL) {
        BGL_AddWindow(v1->unk_00, v0, 0, 23, 10, 6, 4, 0, (((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8));
    }

    Window_Show(v0, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, Unk_ov97_0223E588, NELEMS(Unk_ov97_0223E588), v0, 4);
}

static int ov97_0222D94C(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    ov97_0222D444(&v0->unk_28[2], 0);
    ov97_0222D444(&v0->unk_58, 0);

    sub_02039794();

    if (v0->unk_1638 == 1) {
        ov97_0222D2DC();
    }

    return ov97_0222DA84(param0);
}

static int ov97_0222D984(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    ov97_0222DE78(param0, &v0->unk_18, 3);
    ov97_0222D444(&v0->unk_28[2], 0);
    ov97_0222D30C(v0, 1);

    Unk_ov97_0223F1A8 = 37;
    return 32;
}

static int ov97_0222D9BC(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    if ((v0->unk_80 == 3) || (v0->unk_80 == 4) || (v0->unk_80 == 2)) {
        return 49;
    }

    ov97_0222D444(&v0->unk_28[2], 0);
    ov97_0222DE78(param0, &v0->unk_18, 7);

    return 33;
}

static int ov97_0222D9F0(OverlayManager *param0)
{
    if ((Unk_ov97_0223F1A8 == 40) || (Unk_ov97_0223F1A8 == 41) || (Unk_ov97_0223F1A8 == 48)) {
        if (ov97_022389C8()) {
            Unk_ov97_0223F1A8 = 43;
        }
    }

    return 36;
}

static int ov97_0222DA18(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    ov97_0222DE78(param0, &v0->unk_18, 3);
    ov97_0222D30C(v0, 1);
    ov97_0222D444(&v0->unk_28[2], 0);
    ov97_0222D30C(v0, 1);

    v0->unk_1644 = 0x1000;
    v0->unk_26DC = NULL;

    return 27;
}

static int ov97_0222DA64(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    ov97_0222D444(&v0->unk_28[1], 0);
    ov97_0222DDD0(param0, (((1 + (18 + 12)) + 9) + 26 * 6), 0);

    return 3;
}

static int ov97_0222DA84(OverlayManager *param0)
{
    Window *v0;
    UnkStruct_02025CCC *v1;
    UnkStruct_ov97_0222D04C *v2 = OverlayManager_Data(param0);
    MysteryGift *v3 = SaveData_MysteryGift(v2->unk_04);

    if (v2->unk_62C == 30) {
        v2->unk_630 = 1;
        ov97_02230224(v2);
    }

    ov97_0222D444(&v2->unk_28[0], 0);
    v0 = &v2->unk_28[1];

    if (v0->unk_00 == NULL) {
        BGL_AddWindow(v2->unk_00, v0, 0, 15, 9, 16, 8, 0, ((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6));
    }

    Window_Show(v0, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, Unk_ov97_0223E5F0, 4, v0, 1);

    return 4;
}

static int ov97_0222DB08(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    if (v0->unk_62C == 30) {
        v0->unk_630 = 1;
        ov97_02230224(v0);
    }

    ov97_02237790(0, 54, v0->unk_163C, 2);
    return -1;
}

static int ov97_0222DB40(OverlayManager *param0)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    if (v0->unk_62C == 30) {
        v0->unk_630 = 1;
    }

    ov97_02237784(1);
    ov97_02237790(0, 53, v0->unk_163C, 2);

    return -1;
}

static void ov97_0222DB78(BGL *param0, int param1, u32 param2, u32 param3)
{
    UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    v0.unk_12 = param2 / 0x800;
    v0.unk_13 = param3 / 0x4000;

    sub_020183C4(param0, param1, &v0, 0);
    sub_02019EBC(param0, param1);
}

static void ov97_0222DBC4(BGL *param0)
{
    UnkStruct_ov84_0223BA5C v0 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    sub_02018368(&v0);

    ov97_0222DB78(param0, 0, 0xF000, 0x0);
    ov97_0222DB78(param0, 1, 0xF800, 0x8000);
    ov97_0222DB78(param0, 4, 0x3800, 0x0);
    ov97_0222DB78(param0, 5, 0x7800, 0x4000);
}

static void ov97_0222DC20(BGL *param0)
{
    sub_02006E84(116, 0, 4, 16 * 2 * 8, 16 * 2, 86);
    sub_02006E3C(116, 1, param0, 5, 0, 10 * 16 * 0x20, 1, 86);
    sub_02006E60(116, 2, param0, 5, 0, 32 * 24 * 2, 1, 86);
    sub_02019E2C(param0, 5, 0, 0, 32, 24, 8);
    sub_02019448(param0, 5);
}

static void ov97_0222DC9C(BGL *param0)
{
    sub_02006E84(116, 0, 0, 16 * 2 * 8, 16 * 2, 86);
    sub_02006E3C(116, 1, param0, 1, 0, 10 * 16 * 0x20, 1, 86);
    sub_02006E60(116, 2, param0, 1, 0, 32 * 24 * 2, 1, 86);
    sub_02019E2C(param0, 1, 0, 0, 32, 24, 8);
    sub_02019448(param0, 1);

    ov97_0222DC20(param0);
}

static void ov97_0222DD1C(OverlayManager *param0, UnkStruct_ov97_0223E5B8 *param1, int param2, Window *param3, u32 param4)
{
    int v0;
    UnkStruct_ov84_02240FA8 v1;
    UnkStruct_ov97_0222D04C *v2 = OverlayManager_Data(param0);

    if (v2->unk_7C) {
        sub_02013A3C(v2->unk_7C);
    }

    v2->unk_7C = sub_02013A04(param2, 86);
    v2->unk_10 = MessageLoader_Init(0, 26, 421, 86);

    for (v0 = 0; v0 < param2; v0++) {
        sub_02013A4C(v2->unk_7C, v2->unk_10, param1[v0].unk_00, param1[v0].unk_04);
    }

    MessageLoader_Free(v2->unk_10);

    v1 = Unk_ov97_0223E5D0;

    v1.unk_00 = v2->unk_7C;
    v1.unk_10 = v1.unk_12 = param2;
    v1.unk_0C = param3;

    if (v2->unk_78) {
        sub_02001384(v2->unk_78, NULL, NULL);
    }

    v2->unk_78 = sub_0200112C(&v1, 0, 0, 86);

    if (param4 != -1) {
        ov97_0222DE78(param0, &v2->unk_18, param4);
    }
}

static void ov97_0222DDD0(OverlayManager *param0, int param1, u32 param2)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);
    Window *v1;
    UnkStruct_ov97_0223E5B8 v2[4];
    int v3, v4 = 0;
    MysteryGift *v5 = SaveData_MysteryGift(v0->unk_04);

    v1 = &v0->unk_28[0];
    v2[v4++] = Unk_ov97_0223E5B8[0];

    if (sub_0202DD88(v5)) {
        v2[v4++] = Unk_ov97_0223E5B8[1];
    }

    v2[v4++] = Unk_ov97_0223E5B8[2];

    if (v1->unk_00 == NULL) {
        BGL_AddWindow(v0->unk_00, v1, 0, 8, 7, 16, v4 * 2, 0, param1);
    }

    Window_Show(v1, 1, (1 + (18 + 12)), 3);
    ov97_0222DD1C(param0, v2, v4, v1, param2);
}

static void ov97_0222DE78(OverlayManager *param0, Window *param1, u32 param2)
{
    Strbuf *v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    v1->unk_10 = MessageLoader_Init(1, 26, 421, 86);
    v1->unk_0C = StringTemplate_Default(86);

    BGL_FillWindow(param1, Font_GetAttribute(FONT_MESSAGE, FONTATTR_BG_COLOR));

    if (v1->unk_14) {
        v0 = v1->unk_14;
    } else {
        v0 = MessageUtil_ExpandedStrbuf(v1->unk_0C, v1->unk_10, param2, 86);
    }

    v1->unk_6C = Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, v0, 0, 0, v1->unk_68, TEXT_COLOR(1, 2, 15), NULL);

    if (v1->unk_14 == NULL) {
        Strbuf_Free(v0);
    }

    sub_0200E060(param1, 0, 1, 2);
    MessageLoader_Free(v1->unk_10);
    StringTemplate_Free(v1->unk_0C);

    v1->unk_68 = 0xff;
}

static void ov97_0222DF10(OverlayManager *param0, Window *param1, u16 *param2)
{
    Strbuf *v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    v0 = Strbuf_Init(36 + 1, 86);

    Strbuf_CopyNumChars(v0, param2, 36);
    BGL_FillWindow(param1, Font_GetAttribute(FONT_SYSTEM, FONTATTR_BG_COLOR));
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Window_Show(param1, 0, (1 + (18 + 12)), 3);
    Strbuf_Free(v0);
}

static void ov97_0222DF70(OverlayManager *param0, int *param1, int (*param2)(OverlayManager *))
{
    u32 v0;
    int v1;
    UnkStruct_ov97_0222D04C *v2 = OverlayManager_Data(param0);
    static int (*v3)(OverlayManager *);

    v0 = sub_02001288(v2->unk_78);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Sound_PlayEffect(1500);

        if (param2) {
            v1 = param2(param0);

            if (v1 != -1) {
                *param1 = v1;
            }
        }
        break;
    default:
        Sound_PlayEffect(1500);

        if (v0) {
            v3 = (static int (*)(OverlayManager *))v0;
            v1 = v3(param0);

            if (v1 != -1) {
                *param1 = v1;
            }
        }
        break;
    }
}

static BOOL ov97_0222DFD4(OverlayManager *param0, UnkStruct_ov97_0222D04C *param1)
{
    int v0;

    Text_ResetAllPrinters();
    Font_LoadTextPalette(0, 0 * 32, 86);
    Font_LoadTextPalette(0, 1 * 32, 86);

    v0 = Options_Frame(param1->unk_08);

    sub_0200DD0C(param1->unk_00, 0, 1, 2, v0, 86);
    sub_0200DAA4(param1->unk_00, 0, (1 + (18 + 12)), 3, 1, 86);

    *((u16 *)HW_BG_PLTT) = ((31 & 31) << 10 | (12 & 31) << 5 | (12 & 31));

    if (!BGL_WindowAdded(&param1->unk_18)) {
        BGL_AddWindow(param1->unk_00, &param1->unk_18, 0, 2, 19, 27, 4, 0, ((1 + (18 + 12)) + 9));
    }

    ov97_0222DE78(param0, &param1->unk_18, 0);
    ov97_0222DDD0(param0, (((1 + (18 + 12)) + 9) + 26 * 6), 0);
    ov97_0222DC9C(param1->unk_00);

    return 1;
}

static void ov97_0222E080(OverlayManager *param0, int *param1)
{
    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    switch (ov97_02238EAC(param0, &v0->unk_1644)) {
    case 0:
        break;
    case 1:
        memcpy(&v0->unk_8C, v0->unk_16B8, sizeof(UnkStruct_ov97_0223829C));
        ov97_0222D30C(v0, 0);
        v0->unk_84 = 27;
        *param1 = 19;
        v0->unk_1640 = 0;
        break;
    case 2:
    case 3:
        ov97_0222D30C(v0, 0);
        v0->unk_1640 = 0;
        *param1 = 17;
        break;
    case 4:
        sub_0201ACF4(&v0->unk_26E0);
        BGL_DeleteWindow(&v0->unk_26E0);
        sub_02019EBC(v0->unk_00, 0);
        Sound_PlayEffect(1500);
        ov97_0222DDD0(param0, (((1 + (18 + 12)) + 9) + 26 * 6), 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        *param1 = 3;
        break;
    }
}

void ov97_0222E13C(UnkStruct_ov97_0222D04C *param0)
{
    StringTemplate *v0;
    UnkStruct_ov97_02237808 v1;
    int v2;

    if (param0->unk_26CC != -1) {
        v2 = 0 + param0->unk_26CC;
    } else {
        v2 = 11;
    }

    ov97_0222D30C(param0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
    sub_02019EBC(param0->unk_00, 0);

    v0 = StringTemplate_Default(86);
    StringTemplate_SetNumber(v0, 0, param0->unk_26D0, 5, 2, 1);

    ov97_02237808(&v1, &param0->unk_26E0, 1, 695, (1 + (18 + 12)), 3);
    ov97_02237858(&v1, 24, 16, 100);
    ov97_02237860(&v1, 0, 1);

    v1.unk_14 = v0;

    ov97_0223795C(param0->unk_00, &v1, 4, 4, v2);
    StringTemplate_Free(v0);
}

static int ov97_0222E1D8(OverlayManager *param0)
{
    int v0;
    UnkStruct_ov97_0222D04C *v1 = OverlayManager_Data(param0);

    if (v1->unk_80 == 3) {
        v0 = 21;
    } else if (v1->unk_80 == 4) {
        v0 = 25;
    } else if (v1->unk_80 == 2) {
        v0 = 22;
    } else if (v1->unk_80 == 1) {
        v0 = 27;
    } else if (v1->unk_80 == 5) {
        v0 = 9;
        return ov97_0222E228(param0, &v1->unk_18, v0, 52);
    }

    return ov97_0222E228(param0, &v1->unk_18, v0, 51);
}

static int ov97_0222E228(OverlayManager *param0, Window *param1, int param2, int param3)
{
    StringTemplate *v0;
    MessageLoader *v1;
    UnkStruct_ov97_0222D04C *v2 = OverlayManager_Data(param0);

    if (param1 && param2) {
        v1 = MessageLoader_Init(1, 26, 421, 86);
        v0 = StringTemplate_Default(86);
        v2->unk_14 = MessageUtil_ExpandedStrbuf(v0, v1, param2, 86);
        v2->unk_68 = 1;

        ov97_0222DE78(param0, param1, param2);
        v2->unk_74 = param3;

        StringTemplate_Free(v0);
        MessageLoader_Free(v1);
    } else {
        if (Text_IsPrinterActive(v2->unk_6C) == 0) {
            Strbuf_Free(v2->unk_14);
            v2->unk_14 = NULL;
            v2->unk_68 = 0;
            return v2->unk_74;
        }
    }

    return 50;
}

static void ov97_0222E2AC(UnkStruct_ov97_0222D04C *param0)
{
    switch (param0->unk_1638) {
    case 0:
        break;
    case 1:
        ov97_0222D2DC();
        sub_02039794();
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        break;
    }
}

static int ov97_0222E2DC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov97_0222D04C *v0;

    ov97_022301B0(param0);
    Heap_Create(3, 86, 0x30000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov97_0222D04C), 86);
    memset(v0, 0, sizeof(UnkStruct_ov97_0222D04C));
    v0->unk_00 = sub_02018340(86);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    ov97_02232054();
    ov97_0222DBC4(v0->unk_00);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    sub_02004550(10, 1174, 1);
    ov97_02237520(86);

    if (ov97_02237624()) {
        v0->unk_1638 = 2;
        sub_02017B70(Unk_020E4C40);
        ov97_02238400(1);
    }

    v0->unk_62C = 29;
    v0->unk_04 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    v0->unk_08 = SaveData_Options(v0->unk_04);
    v0->unk_68 = 0xff;

    Heap_Create(0, 91, 0x300);

    return 1;
}

static void ov97_0222E398(UnkStruct_ov97_0222E398 *param0)
{
    int v0 = 116;
    int v1 = 39;
    int v2 = 36;
    int v3 = 38;
    int v4 = 37;
    int v5 = 1;
    int v6 = NNS_G2D_VRAM_TYPE_2DMAIN;
    int v7 = 20000 + v6;
    int v8 = 86;
    int v9 = 0 + 0;

    {
        v6 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v7 = 20000 + v6;

        param0->unk_58[v9 + 0][0] = SpriteResourceCollection_AddTiles(param0->unk_0C->unk_190[0], v0, v1, v5, v7, v6, v8);
        param0->unk_58[v9 + 0][1] = SpriteResourceCollection_AddPalette(param0->unk_0C->unk_190[1], v0, v2, 0, v7, v6, 1, v8);
        param0->unk_58[v9 + 0][2] = SpriteResourceCollection_Add(param0->unk_0C->unk_190[2], v0, v3, v5, v7, 2, v8);
        param0->unk_58[v9 + 0][3] = SpriteResourceCollection_Add(param0->unk_0C->unk_190[3], v0, v4, v5, v7, 3, v8);
    }

    {
        v6 = NNS_G2D_VRAM_TYPE_2DSUB;
        v7 = 20000 + v6;

        param0->unk_58[v9 + 1][0] = SpriteResourceCollection_AddTiles(param0->unk_0C->unk_190[0], v0, v1, v5, v7, v6, v8);
        param0->unk_58[v9 + 1][1] = SpriteResourceCollection_AddPalette(param0->unk_0C->unk_190[1], v0, v2, 0, v7, v6, 1, v8);
        param0->unk_58[v9 + 1][2] = SpriteResourceCollection_Add(param0->unk_0C->unk_190[2], v0, v3, v5, v7, 2, v8);
        param0->unk_58[v9 + 1][3] = SpriteResourceCollection_Add(param0->unk_0C->unk_190[3], v0, v4, v5, v7, 3, v8);
    }

    sub_0200A328(param0->unk_58[v9 + 0][0]);
    sub_0200A328(param0->unk_58[v9 + 1][0]);

    sub_0200A640(param0->unk_58[v9 + 0][1]);
    sub_0200A640(param0->unk_58[v9 + 1][1]);

    v6 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v7 = 20000 + v6;

    sub_020093B4(&param0->unk_10[v9 + 0], v7, v7, v7, v7, 0xffffffff, 0xffffffff, 0, 0, param0->unk_0C->unk_190[0], param0->unk_0C->unk_190[1], param0->unk_0C->unk_190[2], param0->unk_0C->unk_190[3], NULL, NULL);

    v6 = NNS_G2D_VRAM_TYPE_2DSUB;
    v7 = 20000 + v6;

    sub_020093B4(&param0->unk_10[v9 + 1], v7, v7, v7, v7, 0xffffffff, 0xffffffff, 0, 0, param0->unk_0C->unk_190[0], param0->unk_0C->unk_190[1], param0->unk_0C->unk_190[2], param0->unk_0C->unk_190[3], NULL, NULL);
}

static CellActor *ov97_0222E538(UnkStruct_ov97_0222E398 *param0, int param1)
{
    CellActor *v0;

    {
        CellActorInitParamsEx v1;
        int v2 = (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) ? 0 : 1;

        v1.collection = param0->unk_0C->unk_00;
        v1.resourceData = &param0->unk_10[v2];
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.position.x = FX32_ONE * 128;
        v1.position.y = FX32_ONE * 32;
        v1.priority = 10;
        v1.vramType = param1;
        v1.heapID = 86;

        if (v1.vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
            v1.position.y += FX32_CONST(256);
        }

        v0 = CellActorCollection_AddEx(&v1);
    }

    if (v0) {
        CellActor_SetAnimateFlag(v0, 1);
        CellActor_SetExplicitPriority(v0, 0);
        CellActor_SetAnim(v0, 0);
        CellActor_SetDrawFlag(v0, 1);
    }

    return v0;
}

static void ov97_0222E5B4(UnkStruct_ov97_0222E398 *param0)
{
    param0->unk_3008.unk_0C = ov97_0222E538(param0, NNS_G2D_VRAM_TYPE_2DMAIN);

    CellActor_SetAnimNoRestart(param0->unk_3008.unk_0C, 2);
    SpriteActor_SetAnimFrame(param0->unk_3008.unk_0C, 0);
    CellActor_SetDrawFlag(param0->unk_3008.unk_0C, 0);
    CellActor_SetPriority(param0->unk_3008.unk_0C, 0);
    CellActor_SetAffineOverwriteMode(param0->unk_3008.unk_0C, 2);

    {
        VecFx32 *v0;

        v0 = (VecFx32 *)CellActor_GetPosition(param0->unk_3008.unk_0C);
        v0->x = FX32_CONST(128);
        v0->y = FX32_CONST(96);
    }
}

static void ov97_0222E60C(UnkStruct_ov97_0222E398 *param0)
{
    param0->unk_3054.unk_0C = ov97_0222E538(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    CellActor_SetAnimNoRestart(param0->unk_3054.unk_0C, 4);
    SpriteActor_SetAnimFrame(param0->unk_3054.unk_0C, 0);
    CellActor_SetDrawFlag(param0->unk_3054.unk_0C, 0);
    CellActor_SetPriority(param0->unk_3054.unk_0C, 0);
    CellActor_SetAffineOverwriteMode(param0->unk_3054.unk_0C, 2);

    {
        VecFx32 *v0;

        v0 = (VecFx32 *)CellActor_GetPosition(param0->unk_3054.unk_0C);
        v0->x = FX32_CONST(128);
        v0->y = FX32_CONST(0) + FX32_CONST(256);
    }
}

static void ov97_0222E664(UnkStruct_ov97_0222E398 *param0)
{
    CellActor_Delete(param0->unk_3008.unk_0C);
    param0->unk_3008.unk_0C = NULL;
}

static void ov97_0222E67C(UnkStruct_ov97_0222E398 *param0)
{
    CellActor_Delete(param0->unk_3054.unk_0C);
    param0->unk_3054.unk_0C = NULL;
}

static void ov97_0222E694(UnkStruct_ov97_0222E398 *param0)
{
    int v0;

    for (v0 = 0; v0 < 80; v0++) {
        if (param0->unk_88[v0].unk_0C) {
            CellActor_UpdateAnim(param0->unk_88[v0].unk_0C, FX32_CONST(2));
        }

        if (param0->unk_1848[v0].unk_0C) {
            CellActor_UpdateAnim(param0->unk_1848[v0].unk_0C, FX32_CONST(2));
        }
    }

    if (param0->unk_3008.unk_0C) {
        CellActor_UpdateAnim(param0->unk_3008.unk_0C, FX32_CONST(2));
    }

    if (param0->unk_3054.unk_0C) {
        CellActor_UpdateAnim(param0->unk_3054.unk_0C, FX32_CONST(2));
    }
}

static void ov97_0222E6F8(UnkStruct_ov97_0222E398 *param0)
{
    int v0;

    for (v0 = 0; v0 < 80; v0++) {
        param0->unk_88[v0].unk_0C = ov97_0222E538(param0, NNS_G2D_VRAM_TYPE_2DMAIN);
        CellActor_SetAnimNoRestart(param0->unk_88[v0].unk_0C, 1);
        SpriteActor_SetAnimFrame(param0->unk_88[v0].unk_0C, 0);
    }
}

static void ov97_0222E734(UnkStruct_ov97_0222E398 *param0)
{
    int v0;

    for (v0 = 0; v0 < 80; v0++) {
        if (v0 < (80 / 4)) {
            param0->unk_88[v0].unk_0C = ov97_0222E538(param0, NNS_G2D_VRAM_TYPE_2DMAIN);
            CellActor_SetAnimNoRestart(param0->unk_88[v0].unk_0C, 1);
            SpriteActor_SetAnimFrame(param0->unk_88[v0].unk_0C, 0);
        } else {
            param0->unk_88[v0].unk_0C = NULL;
        }
    }
}

static void ov97_0222E77C(UnkStruct_ov97_0222E398 *param0)
{
    int v0;

    for (v0 = 0; v0 < 80; v0++) {
        param0->unk_1848[v0].unk_0C = ov97_0222E538(param0, NNS_G2D_VRAM_TYPE_2DSUB);
        CellActor_SetAnimNoRestart(param0->unk_1848[v0].unk_0C, 5);
        SpriteActor_SetAnimFrame(param0->unk_1848[v0].unk_0C, 0);
    }
}

static void ov97_0222E7B4(UnkStruct_ov97_0222E398 *param0)
{
    int v0;

    for (v0 = 0; v0 < 80; v0++) {
        if (param0->unk_88[v0].unk_0C == NULL) {
            continue;
        }

        CellActor_Delete(param0->unk_88[v0].unk_0C);
        param0->unk_88[v0].unk_0C = NULL;
        SysTask_Done(param0->unk_88[v0].unk_48);
    }
}

static void ov97_0222E7E4(UnkStruct_ov97_0222E398 *param0)
{
    int v0;

    for (v0 = 0; v0 < 80; v0++) {
        CellActor_Delete(param0->unk_1848[v0].unk_0C);
        param0->unk_1848[v0].unk_0C = NULL;
        SysTask_Done(param0->unk_1848[v0].unk_48);
    }
}

static void ov97_0222E814(UnkStruct_ov97_0222E398 *param0)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 80; v0++) {
        param0->unk_88[v0].unk_10.x = FX32_CONST(128);
        param0->unk_88[v0].unk_10.y = FX32_CONST(96);
        param0->unk_88[v0].unk_1C = FX32_CONST(4);
        param0->unk_88[v0].unk_20 = FX32_CONST(5);
        param0->unk_88[v0].unk_2C = v0 % 4;
        param0->unk_88[v0].unk_34 = 0;
        param0->unk_88[v0].unk_04 = 0;

        {
            param0->unk_88[v0].unk_1C = FX32_CONST((v0 / 10) + 4);
        }
        {
            if (v0 > 50) {
                param0->unk_88[v0].unk_30 = 210 + 50 + v0 + LCRNG_Next() % 5;
            } else if (v0 > 40) {
                param0->unk_88[v0].unk_30 = 210 + 40 + v0 + LCRNG_Next() % 5;
            } else if (v0 > 30) {
                param0->unk_88[v0].unk_30 = 210 + 30 + v0 + LCRNG_Next() % 5;
            } else if (v0 > 25) {
                param0->unk_88[v0].unk_30 = 210 + 20 + v0 + LCRNG_Next() % 5;
            } else if (v0 > 20) {
                param0->unk_88[v0].unk_30 = 210 + 10 + v0 + LCRNG_Next() % 5;
            } else {
                int v2[] = {
                    1,
                    30,
                    60,
                    90,
                    90,
                    120,
                    120,
                    120,
                    150,
                    150,
                    150,
                    150,
                    180,
                    180,
                    180,
                    180,
                    210,
                    210,
                    210,
                    210,
                    210
                };

                param0->unk_88[v0].unk_30 = v2[v0];
            }

            param0->unk_88[v0].unk_30 = ((param0->unk_88[v0].unk_30 + 1) / 2) * 0.7;
            param0->unk_88[v0].unk_30 += 1;
        }

        param0->unk_88[v0].unk_38 = 5 * 3;
        param0->unk_88[v0].unk_40 = param0->unk_88[v0].unk_38;
        param0->unk_88[v0].unk_44 = param0->unk_88[v0].unk_38;

        v1 = *(VecFx32 *)CellActor_GetPosition(param0->unk_88[v0].unk_0C);
        v1.x = FX32_CONST(16 + (LCRNG_Next() % (256 - 32)));
        v1.y = FX32_CONST(0);

        CellActor_SetPosition(param0->unk_88[v0].unk_0C, &v1);
        CellActor_SetDrawFlag(param0->unk_88[v0].unk_0C, 0);

        param0->unk_88[v0].unk_48 = SysTask_Start(ov97_0222EEB8, &param0->unk_88[v0], 6);
    }
}

static void ov97_0222EA68(UnkStruct_ov97_0222E398 *param0)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 80; v0++) {
        if (param0->unk_88[v0].unk_0C == NULL) {
            continue;
        }

        param0->unk_88[v0].unk_10.x = FX32_CONST(128);
        param0->unk_88[v0].unk_10.y = FX32_CONST(96);
        param0->unk_88[v0].unk_1C = FX32_CONST(12);
        param0->unk_88[v0].unk_20 = FX32_CONST(1);

        param0->unk_88[v0].unk_2C = 0xFF;
        param0->unk_88[v0].unk_34 = 0;
        param0->unk_88[v0].unk_04 = 0;
        param0->unk_88[v0].unk_08 = 0;

        if (v0 > 30) {
            param0->unk_88[v0].unk_30 = 15 + (LCRNG_Next() % 10);
        } else if (v0 > 20) {
            param0->unk_88[v0].unk_30 = 10 + (LCRNG_Next() % 10);
        } else if (v0 > 10) {
            param0->unk_88[v0].unk_30 = 10 + (LCRNG_Next() % 5);
        } else {
            param0->unk_88[v0].unk_30 = 5 + (LCRNG_Next() % 5);
        }

        param0->unk_88[v0].unk_30 = 0;
        param0->unk_88[v0].unk_40 = param0->unk_88[v0].unk_38;
        param0->unk_88[v0].unk_44 = param0->unk_88[v0].unk_38;

        {
            int v2 = LCRNG_Next() % 360;
            int v3 = 64 + (LCRNG_Next() % 32);

            v1.x = param0->unk_88[v0].unk_10.x + (sub_0201D250(v2) * v3);
            v1.y = param0->unk_88[v0].unk_10.y + (sub_0201D264(v2) * v3);

            CellActor_SetPosition(param0->unk_88[v0].unk_0C, &v1);
        }

        CellActor_SetAnimNoRestart(param0->unk_88[v0].unk_0C, 1);
        CellActor_SetDrawFlag(param0->unk_88[v0].unk_0C, 0);

        param0->unk_88[v0].unk_48 = SysTask_Start(ov97_0222EEB8, &param0->unk_88[v0], 6);
    }
}

static void ov97_0222EBD0(UnkStruct_ov97_0222E398 *param0)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 80; v0++) {
        param0->unk_1848[v0].unk_10.x = FX32_CONST(128);
        param0->unk_1848[v0].unk_10.y = FX32_CONST(384);
        param0->unk_1848[v0].unk_1C = FX32_CONST(4);
        param0->unk_1848[v0].unk_20 = FX32_CONST(5);
        param0->unk_1848[v0].unk_2C = 4 + (v0 % 2);
        param0->unk_1848[v0].unk_34 = 0;
        param0->unk_1848[v0].unk_04 = 0;
        param0->unk_1848[v0].unk_3C = 2 + (LCRNG_Next() % 4);
        param0->unk_1848[v0].unk_1C = FX32_CONST((v0 / 30) + 4);

        if (v0 > 60) {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 70 + (LCRNG_Next() % 10);
        } else if (v0 > 50) {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 60 + (LCRNG_Next() % 10);
        } else if (v0 > 40) {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 50 + (LCRNG_Next() % 5);
        } else if (v0 > 30) {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 40 + (LCRNG_Next() % 10);
        } else if (v0 > 20) {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 30 + (LCRNG_Next() % 10);
        } else if (v0 > 10) {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 20 + (LCRNG_Next() % 5);
        } else {
            param0->unk_1848[v0].unk_38 = 5;
            param0->unk_1848[v0].unk_30 = 10 + (LCRNG_Next() % 5);
        }

        param0->unk_1848[v0].unk_40 = param0->unk_1848[v0].unk_38;
        param0->unk_1848[v0].unk_44 = param0->unk_1848[v0].unk_38;

        v1 = *(VecFx32 *)CellActor_GetPosition(param0->unk_1848[v0].unk_0C);

        v1.x = FX32_CONST(128);
        v1.y = FX32_CONST(384);

        CellActor_SetPosition(param0->unk_1848[v0].unk_0C, &v1);
        CellActor_SetDrawFlag(param0->unk_1848[v0].unk_0C, 1);

        param0->unk_1848[v0].unk_48 = SysTask_Start(ov97_0222EEB8, &param0->unk_1848[v0], 6);
    }
}

static BOOL ov97_0222EDC0(s16 param0, s16 param1, f32 param2, f32 param3, f32 *param4, f32 *param5, f32 param6, s16 param7)
{
    f32 v0;
    f32 v1;
    UnkStruct_ov97_0222EDC0 v2;
    UnkStruct_ov97_0222EDC0 v3;
    UnkStruct_ov97_0222EDC0 v4;

    v4.unk_00 = 0;
    v4.unk_04 = 0;

    v3.unk_00 = (param0 - param2);
    v3.unk_04 = (param1 - param3);

    v2.unk_00 = 0;
    v2.unk_04 = 0;

    v1 = (v3.unk_00 * v3.unk_00) + (v3.unk_04 * v3.unk_04);

    v0 = FX_Sqrt(FX_F32_TO_FX32(v1));
    v0 = FX_FX32_TO_F32(v0);

    if ((v0 < param6) || (param7 > v0) || (v0 == 0)) {
        return 0;
    }

    v2.unk_00 = (v3.unk_00 * param6) / v0;
    v2.unk_04 = (v3.unk_04 * param6) / v0;

    *param4 = (v2.unk_00 + v4.unk_00);
    *param5 = (v2.unk_04 + v4.unk_04);

    return 1;
}

static void ov97_0222EEB8(SysTask *param0, void *param1)
{
    UnkStruct_ov97_0222EEB8 *v0 = (UnkStruct_ov97_0222EEB8 *)param1;
    VecFx32 v1;
    f32 v2, v3;

    if (v0->unk_30) {
        SpriteActor_SetAnimFrame(v0->unk_0C, 0);
        v0->unk_30--;
        return;
    } else {
        CellActor_SetDrawFlag(v0->unk_0C, 1);
    }

    {
        BOOL v4;

        v1 = *((VecFx32 *)CellActor_GetPosition(v0->unk_0C));
        v4 = ov97_0222EDC0(v0->unk_10.x >> FX32_SHIFT, v0->unk_10.y >> FX32_SHIFT, FX_FX32_TO_F32(v1.x), FX_FX32_TO_F32(v1.y), &v2, &v3, FX_FX32_TO_F32(v0->unk_1C), FX_FX32_TO_F32(v0->unk_20));

        if (v4 && (v0->unk_24 == 0)) {
            v1.x += FX_F32_TO_FX32(v2);
            v1.y += FX_F32_TO_FX32(v3);

            CellActor_SetPosition(v0->unk_0C, &v1);
        } else {
            switch (v0->unk_24) {
            case 0:
                v0->unk_28 = FX_Atan2Idx(FX_F32_TO_FX32(v0->unk_10.y - v1.y), FX_F32_TO_FX32(v0->unk_10.x - v1.x));
                v0->unk_24++;
                break;
            case 1:
                if (v0->unk_04 < 20) {
                    v0->unk_04++;
                } else {
                    v0->unk_08 = 1;
                }

                v0->unk_28 += 8;

                if (v0->unk_2C == 0) {
                    v0->unk_34 += 8;
                    v0->unk_34 %= 360;
                    v0->unk_40 = (sub_0201D264(v0->unk_34) * v0->unk_38) >> FX32_SHIFT;

                    v1.x = v0->unk_10.x + (sub_0201D250(v0->unk_28) * v0->unk_40 * +1);
                    v1.y = v0->unk_10.y + (sub_0201D264(v0->unk_28) * v0->unk_44 * +1);
                } else if (v0->unk_2C == 1) {
                    v0->unk_34 += 8;
                    v0->unk_34 %= 360;
                    v0->unk_44 = (sub_0201D250(v0->unk_34) * v0->unk_38) >> FX32_SHIFT;

                    v1.x = v0->unk_10.x + (sub_0201D250(v0->unk_28) * v0->unk_40 * +1);
                    v1.y = v0->unk_10.y + (sub_0201D264(v0->unk_28) * v0->unk_44 * +1);
                } else if (v0->unk_2C == 2) {
                    v0->unk_34 += 8;
                    v0->unk_34 %= 360;
                    v0->unk_44 = (sub_0201D250(v0->unk_34) * v0->unk_38) >> FX32_SHIFT;

                    v1.x = v0->unk_10.x + (sub_0201D250(v0->unk_28) * v0->unk_40 * -1);
                    v1.y = v0->unk_10.y + (sub_0201D264(v0->unk_28) * v0->unk_44 * -1);
                } else if (v0->unk_2C == 3) {
                    v0->unk_34 += 8;
                    v0->unk_34 %= 360;
                    v0->unk_40 = (sub_0201D264(v0->unk_34) * v0->unk_38) >> FX32_SHIFT;

                    v1.x = v0->unk_10.x + (sub_0201D250(v0->unk_28) * v0->unk_40 * -1);
                    v1.y = v0->unk_10.y + (sub_0201D264(v0->unk_28) * v0->unk_44 * -1);
                } else if (v0->unk_2C == 4) {
                    if (v0->unk_38 < (64 + 32)) {
                        v0->unk_38 += v0->unk_3C;
                    }

                    v0->unk_40 = v0->unk_38;
                    v0->unk_44 = v0->unk_38;

                    v1.x = v0->unk_10.x + (sub_0201D250(v0->unk_28) * v0->unk_40 * +1);
                    v1.y = v0->unk_10.y + (sub_0201D264(v0->unk_28) * v0->unk_44 * +1);
                } else if (v0->unk_2C == 5) {
                    if (v0->unk_38 < (64 + 32)) {
                        v0->unk_38 += v0->unk_3C;
                    }

                    v0->unk_40 = v0->unk_38;
                    v0->unk_44 = v0->unk_38;

                    v1.x = v0->unk_10.x + (sub_0201D250(v0->unk_28) * v0->unk_40 * -1);
                    v1.y = v0->unk_10.y + (sub_0201D264(v0->unk_28) * v0->unk_44 * -1);
                } else {
                    v0->unk_04 = 10;
                    v0->unk_1C += FX32_CONST(0.5);

                    v4 = ov97_0222EDC0(v0->unk_10.x >> FX32_SHIFT, v0->unk_10.y >> FX32_SHIFT, FX_FX32_TO_F32(v1.x), FX_FX32_TO_F32(v1.y), &v2, &v3, FX_FX32_TO_F32(v0->unk_1C), FX_FX32_TO_F32(0));

                    if (v4) {
                        v1.x += FX_F32_TO_FX32(v2);
                        v1.y += FX_F32_TO_FX32(v3);

                        CellActor_SetPosition(v0->unk_0C, &v1);
                    } else {
                        v0->unk_08 = 1;
                    }
                }

                v0->unk_28 %= 360;
                CellActor_SetPosition(v0->unk_0C, &v1);
                break;
            }
        }
    }
}

static void ov97_0222F348(UnkStruct_ov97_0222E398 *param0)
{
    G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BD), param0->unk_08);
}

static void ov97_0222F360(UnkStruct_ov97_0222E398 *param0)
{
    G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BD), param0->unk_08);
}

static void ov97_0222F378(UnkStruct_ov97_0222E398 *param0)
{
    ov97_0222F348(param0);
    ov97_0222F360(param0);
}

static void ov97_0222F388(void)
{
    sub_0201975C(1, 0x0);
    sub_0201975C(5, 0x0);
}

static BOOL ov97_0222F39C(UnkStruct_ov97_0222E398 *param0, int param1, s8 param2)
{
    BOOL v0 = 1;

    switch (param1) {
    case 0:
        if (param0->unk_08 > 0) {
            if (param0->unk_08 - param2 > 0) {
                param0->unk_08 -= param2;
                v0 = 0;
            } else {
                param0->unk_08 = 0;
            }
        } else if (param0->unk_08 < 0) {
            if (param0->unk_08 + param2 < 0) {
                param0->unk_08 += param2;
                v0 = 0;
            } else {
                param0->unk_08 = 0;
            }
        }
        break;
    case 1:
        if (param0->unk_08 - param2 > -16) {
            param0->unk_08 -= param2;
            v0 = 0;
        } else {
            param0->unk_08 = -16;
        }
        break;
    case 2:
        if (param0->unk_08 + param2 < +16) {
            param0->unk_08 += param2;
            v0 = 0;
        } else {
            param0->unk_08 = +16;
        }
        break;
    }

    ov97_0222F378(param0);
    return v0;
}

static BOOL ov97_0222F410(UnkStruct_ov97_0222E398 *param0, int param1, s8 param2)
{
    BOOL v0 = 1;

    switch (param1) {
    case 0:
        if (param0->unk_08 > 0) {
            if (param0->unk_08 - param2 > 0) {
                param0->unk_08 -= param2;
                v0 = 0;
            } else {
                param0->unk_08 = 0;
            }
        } else if (param0->unk_08 < 0) {
            if (param0->unk_08 + param2 < 0) {
                param0->unk_08 += param2;
                v0 = 0;
            } else {
                param0->unk_08 = 0;
            }
        }
        break;
    case 1:
        if (param0->unk_08 - param2 > -16) {
            param0->unk_08 -= param2;
            v0 = 0;
        } else {
            param0->unk_08 = -16;
        }
        break;
    case 2:
        if (param0->unk_08 + param2 < +16) {
            param0->unk_08 += param2;
            v0 = 0;
        } else {
            param0->unk_08 = +16;
        }

        break;
    }

    ov97_0222F348(param0);
    return v0;
}

static void ov97_0222F484(UnkStruct_ov97_0222E398 *param0)
{
    param0->unk_08 = 0;

    ov97_0222F378(param0);
    ov97_0222E398(param0);
    ov97_0222E6F8(param0);
    ov97_0222E814(param0);
    ov97_0222E5B4(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov97_0222F4BC(SysTask *param0, void *param1)
{
    UnkStruct_ov97_0222E398 *v0 = (UnkStruct_ov97_0222E398 *)param1;
    BOOL v1;

    switch (v0->unk_00) {
    case 0: {
        ov97_0222F484(v0);
        v0->unk_00 = 1;
    } break;
    case 1: {
        v1 = ov97_0222F39C(v0, 1, 2);

        if (v1) {
            v0->unk_00 = 2;
        }
    } break;
    case 2: {
        int v2;
        int v3;

        v1 = 1;
        v3 = 0;

        for (v2 = 0; v2 < 80; v2++) {
            if (v0->unk_88[v2].unk_08) {
                v3++;
                continue;
            }

            v1 = 0;
        }

        if (v3 > 50) {
            CellActor_SetAnimNoRestart(v0->unk_3008.unk_0C, 4);
        } else if (v3 > 30) {
            CellActor_SetAnimNoRestart(v0->unk_3008.unk_0C, 3);
        } else if (v3 > 7) {
            CellActor_SetDrawFlag(v0->unk_3008.unk_0C, 1);
        }

        if (v1 || (v3 == (80 - 1))) {
            v0->unk_00 = 3;
            ov97_0222E7B4(v0);
        }
    } break;
    case 3:
        if (*(v0->unk_30A0) == 2) {
            ov97_0222E734(v0);
            ov97_0222EA68(v0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
            ov97_0222F388();
            v0->unk_00 = 4;
        }
        break;
    case 4: {
        int v4;
        int v5 = 0;

        v1 = 1;

        for (v4 = 0; v4 < 80; v4++) {
            if (v0->unk_88[v4].unk_0C == NULL) {
                continue;
            }

            if (v0->unk_88[v4].unk_08) {
                v5++;
                continue;
            }

            v1 = 0;
        }

        ov97_0222F410(v0, 2, 2);

        if (v1 || (v5 == ((80 / 4) - 1))) {
            Sound_PlayEffect(1563);
            v0->unk_00 = 5;
            ov97_0222E7B4(v0);
            ov97_0222E60C(v0);
        }
    } break;
    case 5:
        v1 = ov97_0222F410(v0, 2, 2);

        if (v1) {
            ov97_0222F410(v0, 1, 2);
            v0->unk_00 = 6;
        }
        break;
    case 6: {
        VecFx32 *v6;
        VecFx32 *v7;
        fx32 v8;

        v1 = ov97_0222F410(v0, 1, 2);

        if (v1 == 0) {
            break;
        }

        v6 = (VecFx32 *)CellActor_GetPosition(v0->unk_3008.unk_0C);
        v7 = (VecFx32 *)CellActor_GetPosition(v0->unk_3054.unk_0C);

        if (v6->y < FX32_CONST(256 - 32)) {
            v6->y += FX32_CONST(8);
        }

        v8 = v6->y - FX32_CONST(192);

        if (v8 > FX32_CONST(0)) {
            if (v7->y < FX32_CONST(384)) {
                v7->y += FX32_CONST(8);

                if (CellActor_GetDrawFlag(v0->unk_3054.unk_0C) == 0) {
                    CellActor_SetDrawFlag(v0->unk_3054.unk_0C, 1);
                }
            } else {
                v0->unk_00 = 7;
                ov97_0222E664(v0);
                ov97_0222E77C(v0);
                ov97_0222EBD0(v0);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
            }
        }
    } break;
    case 7: {
        int v9;
        int v10 = 0;

        v1 = 1;

        for (v9 = 0; v9 < 80; v9++) {
            if (v0->unk_1848[v9].unk_08) {
                v10++;
                continue;
            }

            v1 = 0;
        }

        if (v10 > 7) {
            ov97_0222F39C(v0, 2, 1);
        }

        if (v10 > 50) {
            CellActor_SetDrawFlag(v0->unk_3054.unk_0C, 0);
        } else if (v10 > 30) {
            CellActor_SetAnimNoRestart(v0->unk_3054.unk_0C, 2);
        } else if (v10 > 7) {
            CellActor_SetAnimNoRestart(v0->unk_3054.unk_0C, 3);
        }

        if (v1) {
            v0->unk_00 = 8;
            ov97_0222E7E4(v0);
            ov97_0222E67C(v0);
        }
    } break;
    case 8: {
        v1 = ov97_0222F39C(v0, 2, 1);

        if (v1) {
            v0->unk_00 = 9;
        }
    } break;
    case 9: {
        v1 = ov97_0222F39C(v0, 0, 2);

        if (v1) {
            v0->unk_00 = 255;
        }
    } break;
    default:
        *(v0->unk_30A0) = 0;
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        return;
    }

    ov97_0222E694(v0);
}

static int ov97_0222F75C(OverlayManager *param0, int *param1)
{
    u32 v0, v1;
    UnkStruct_0202DF40 *v2;
    UnkStruct_ov97_0222D04C *v3 = OverlayManager_Data(param0);

    CTRDG_IsExisting();

    if (v3->unk_62C != 29) {
        ov97_02230224(v3);
    }

    switch (*param1) {
    case 0:
        ov97_02237694(86);
        v3->unk_163C = param1;
        *param1 = 1;
        break;

    case 1:
        ov97_0222DFD4(param0, v3);
        ov97_0222D3E8(v3);
        ov97_02237790(1, 3, param1, 2);
        break;
    case 2:
        ov97_022377F0(param1);
        break;
    case 3:
        ov97_0222DF70(param0, param1, ov97_0222DB40);
        break;
    case 4:
        ov97_0222DF70(param0, param1, ov97_0222DA64);
        break;
    case 5:
        ov97_0222DF70(param0, param1, ov97_0222D75C);
        break;
    case 27:
        ov97_0222E080(param0, param1);
        break;
    case 32:
        ov97_022302F4(v3);

        if (Unk_ov97_0223F1A8 == 45) {
            ov97_0222D30C(v3, 0);
            ov97_0222D55C(param0);

            v3->unk_80 = ov97_02232148(v3->unk_04, &v3->unk_8C);

            if (v3->unk_80 == 1) {
                ov97_0222D30C(v3, 0);
                *param1 = 49;
            } else {
                if (!BGL_WindowAdded(&v3->unk_58)) {
                    BGL_AddWindow(v3->unk_00, &v3->unk_58, 0, 3, 2, 26, 4, 0, ((((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8) + 6 * 4));
                }

                ov97_0222DF10(param0, &v3->unk_58, ov97_02238D54());
                ov97_0222DE78(param0, &v3->unk_18, 4);
                ov97_0222D8F4(param0);
                *param1 = 31;
            }
        }

        if ((Unk_ov97_0223F1A8 == 47) || (Unk_ov97_0223F1A8 == 46)) {
            ov97_022302D4();
            *param1 = 17;
        }
        break;
    case 31:
        ov97_0222DF70(param0, param1, ov97_0222D9F0);
        ov97_022302F4(v3);
        break;
    case 33:
        v2 = ov97_0222D55C(param0);

        ov97_0222D30C(v3, 1);
        ov97_0222D40C(v3, 1);

        if (ov97_0222D5C8(v2) == 1) {
            ov97_0222D658(param0);

            v3->unk_2A54 = 1;

            ov97_0222D40C(v3, -1);
            ov97_0222D444(&v3->unk_58, 0);

            {
                UnkStruct_ov97_0222E398 *v4 = Heap_AllocFromHeap(86, sizeof(UnkStruct_ov97_0222E398));

                memset(v4, 0, sizeof(UnkStruct_ov97_0222E398));

                v4->unk_30A0 = &v3->unk_2A54;
                v4->unk_0C = ov97_02237AEC();

                SysTask_Start(ov97_0222F4BC, v4, 5);
            }
        } else {
            ov97_02238194(v3->unk_00, v2);
            ov97_0222D658(param0);
        }

        *param1 = 34;
        break;
    case 35: {
        if (v3->unk_2A54 == 0) {
            *param1 = ov97_0222E228(param0, &v3->unk_18, 8, 55);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        }
    } break;
    case 34: {
        int v5;

        v5 = ov97_02238528();

        if (v5 == 4) {
            ov97_022384F4();
        }

        if (v5 == 2) {
            ov97_0222D30C(v3, 0);
            ov97_0222D40C(v3, -1);
            ov97_0222D45C(&v3->unk_18, 0);

            sub_02019EBC(v3->unk_00, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);

            v2 = &v3->unk_8C.unk_50.val1;

            if (ov97_0222D5C8(v2) == 1) {
                ov97_02238194(v3->unk_00, v2);
                v3->unk_2A54 = 2;
            } else {
                Sound_PlayEffect(1572);
            }

            *param1 = 35;
        } else if (v5 == 3) {
            ov97_0222D30C(v3, 0);
            ov97_0222D40C(v3, -1);

            v3->unk_8C.unk_00.unk_4E_2 = 0;
            *param1 = ov97_0222E228(param0, &v3->unk_18, 26, 55);
        }
    } break;
    case 36:
        ov97_022302F4(v3);

        if ((Unk_ov97_0223F1A8 == 47) || (Unk_ov97_0223F1A8 == 45) || (Unk_ov97_0223F1A8 == 46)) {
            if (Unk_ov97_0223F1A8 == 47) {
                ov97_022302D4();
            }

            *param1 = ov97_0222D94C(param0);
        }
        break;
    case 7:
        if ((v3->unk_438 = ov97_0222D250(v3)) != -1) {
            ov97_0222D30C(v3, 0);

            v3->unk_80 = ov97_02232148(v3->unk_04, &v3->unk_8C);

            if (!BGL_WindowAdded(&v3->unk_58)) {
                BGL_AddWindow(v3->unk_00, &v3->unk_58, 0, 3, 2, 26, 4, 0, ((((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8) + 6 * 4));
            }

            ov97_0222DF10(param0, &v3->unk_58, v3->unk_8C.unk_00.unk_00);
            ov97_0222DE78(param0, &v3->unk_18, 4);
            ov97_0222D6F8(param0, 0);
            *param1 = 8;
        }

        if ((gCoreSys.pressedKeys & PAD_BUTTON_B) || (--v3->unk_434 == 0)) {
            ov97_0222D30C(v3, 0);
            ov97_0222D2DC();
            sub_02039794();
            *param1 = 17;
        }
        break;
    case 8:
        ov97_0222DF70(param0, param1, ov97_0222D94C);
        break;
    case 9:
        v1 = CommSys_CurNetId();

        if ((v1 != 0) && CommSys_IsPlayerConnected(v1)) {
            if (CommTiming_IsSyncState(0xAB) == 1) {
                ov97_0222D30C(v3, 0);
                CommMan_SetErrorHandling(1, 1);
                ov97_0222DE78(param0, &v3->unk_18, 7);
                ov97_0222D40C(v3, 1);
                ov97_0222D30C(v3, 1);
                v3->unk_434 = 60 * 10;
                *param1 = 10;
            }
        } else if ((v1 != 0) && (CommSys_IsPlayerConnected(v1) == 0)) {
            ov97_0222D2DC();
            sub_02039794();
            ov97_0222D40C(v3, -1);
            ov97_0222D30C(v3, 0);
            *param1 = 16;
            break;
        }

        if ((gCoreSys.pressedKeys & PAD_BUTTON_B) || (--v3->unk_434 == 0)) {
            ov97_0222D2DC();
            sub_02039794();
            ov97_0222D40C(v3, -1);
            ov97_0222D30C(v3, 0);
            *param1 = 17;
        }
        break;
    case 10:
        if (ov97_0222D2A0()) {
            *param1 = 11;
        }

        v1 = CommSys_CurNetId();

        if ((gCoreSys.pressedKeys & PAD_BUTTON_B) || (--v3->unk_434 == 0) || ((v1 != 0) && (CommSys_IsPlayerConnected(v1) == 0))) {
            ov97_0222D30C(v3, 0);
            ov97_0222D2DC();
            sub_02039794();
            *param1 = 17;
        }
        break;
    case 11:
        v2 = ov97_0222D55C(param0);
        ov97_02238194(v3->unk_00, v2);
        CommMan_SetErrorHandling(0, 0);
        ov97_0222D658(param0);
        *param1 = 12;
        break;
    case 12:
        v1 = CommSys_CurNetId();

        if ((v1 != 0) && (CommSys_IsPlayerConnected(v1) == 0)) {
            ov97_0222D2DC();
            v3->unk_2A4C = 1;
            ov97_0223850C();
            ov97_0222D30C(v3, 0);
            sub_02039794();
            ov97_0222D40C(v3, -1);
            *param1 = 14;
            break;
        }

        if (ov97_02238528() == 4) {
            CommTiming_StartSync(0x93);
            *param1 = 13;
            v3->unk_43C = 120;
        } else if (ov97_02238528() == 3) {
            ov97_0223850C();
            v3->unk_8C.unk_00.unk_4E_2 = 0;
            ov97_0222D30C(v3, 0);
            *param1 = ov97_0222E228(param0, &v3->unk_18, 26, 55);
        }
        break;
    case 13:
        if (CommTiming_IsSyncState(0x93) == 1) {
            ov97_022384F4();
            v3->unk_43C = 10;
            *param1 = 15;
        } else if (--v3->unk_43C == 0) {
            ov97_0223850C();
            v3->unk_8C.unk_00.unk_4E_2 = 0;
            ov97_0222D30C(v3, 0);
            *param1 = ov97_0222E228(param0, &v3->unk_18, 26, 55);
        }
        break;
    case 14:
        ov97_0222D444(&v3->unk_58, 0);
        v3->unk_8C.unk_00.unk_4E_2 = 0;
        *param1 = ov97_0222E228(param0, &v3->unk_18, 28, 55);
        break;
    case 15:
        if (--v3->unk_43C == 0) {
            ov97_0222D30C(v3, 0);
            ov97_0222D2DC();
            sub_02039794();
            Sound_PlayEffect(1572);
            ov97_0222D40C(v3, -1);
            *param1 = ov97_0222E228(param0, &v3->unk_18, 8, 55);
        }
        break;
    case 16:
        Sound_PlayEffect(1500);
        ov97_0222DE78(param0, &v3->unk_18, 24);
        ov97_0222D444(&v3->unk_58, 0);
        *param1 = 18;
        break;
    case 17:
        if (v3->unk_1640) {
            v3->unk_1640--;
            break;
        }

        ov97_0222D30C(v3, 0);
        Sound_PlayEffect(1500);
        ov97_0222DE78(param0, &v3->unk_18, 23);
        ov97_0222D444(&v3->unk_58, 0);
        *param1 = 18;
        break;
    case 18:
        if (gCoreSys.pressedKeys) {
            Sound_PlayEffect(1500);
            ov97_0222DDD0(param0, (((1 + (18 + 12)) + 9) + 26 * 6), 0);
            *param1 = 3;
        }
        break;
    case 19:
        if (v3->unk_1640) {
            v3->unk_1640--;
            break;
        }

        if (v3->unk_84 != 27) {
            ov97_0223764C(&v3->unk_8C, sizeof(UnkStruct_ov97_0223829C));
        }

        v3->unk_80 = ov97_02232148(v3->unk_04, &v3->unk_8C);

        if (v3->unk_80 == 1) {
            ov97_0222D30C(v3, 0);
            *param1 = 49;
        } else {
            if (!BGL_WindowAdded(&v3->unk_58)) {
                BGL_AddWindow(v3->unk_00, &v3->unk_58, 0, 3, 2, 26, 4, 0, ((((((1 + (18 + 12)) + 9) + 26 * 6) + 16 * 6) + 17 * 8) + 6 * 4));
            }

            ov97_0222DF10(param0, &v3->unk_58, v3->unk_8C.unk_00.unk_00);
            ov97_0222DE78(param0, &v3->unk_18, 4);
            ov97_0222D6F8(param0, 0);
            *param1 = 20;
        }
        break;
    case 20:
        ov97_0222DF70(param0, param1, ov97_0222D94C);
        break;
    case 21:
        *param1 = 22;
        break;
    case 22:
        v2 = ov97_0222D55C(param0);

        ov97_02238194(v3->unk_00, v2);
        ov97_0222DE78(param0, &v3->unk_18, 7);
        ov97_0222D40C(v3, 1);
        ov97_0222D30C(v3, 1);
        v3->unk_43C = 60;
        *param1 = 23;
        break;
    case 23:
        if (--v3->unk_43C == 0) {
            ov97_0222D658(param0);
            *param1 = 24;
        }
        break;
    case 24:
        if (ov97_02238528() == 4) {
            ov97_022384F4();
        }

        if (ov97_02238528() == 2) {
            v3->unk_43C = 1;
            ov97_0222D30C(v3, 0);
            ov97_0222D40C(v3, -1);
            Sound_PlayEffect(1572);
            *param1 = ov97_0222E228(param0, &v3->unk_18, 8, 25);
        } else if (ov97_02238528() == 3) {
            ov97_0222D40C(v3, -1);
            v3->unk_8C.unk_00.unk_4E_2 = 0;
            *param1 = ov97_0222E228(param0, &v3->unk_18, 26, 55);
        }
        break;
    case 25:
        if (--v3->unk_43C == 0) {
            v3->unk_43C = 256 * 256;
            *param1 = 55;
        }
        break;
    case 49:
        if (v3->unk_80 != 5) {
            ov97_0222E2AC(v3);
        }

        *param1 = ov97_0222E1D8(param0);
        ov97_0222D444(&v3->unk_28[2], 0);
        break;
    case 50:
        *param1 = ov97_0222E228(param0, NULL, NULL, *param1);
        break;
    case 51:
        if (gCoreSys.pressedKeys) {
            ov97_0222D444(&v3->unk_58, 0);
            *param1 = ov97_0222DA64(param0);
        }
        break;
    case 52:
        ov97_0222D6F8(param0, 1);
        *param1 = 8;
        v3->unk_80 = 0;
        break;
    case 53:
        ov97_0222D34C(param0);
        v3->unk_440 = 0;
        return 1;
        break;
    case 54:
        ov97_0222D34C(param0);
        v3->unk_440 = 1;
        return 1;
        break;
    case 55:
        if (gCoreSys.pressedKeys) {
            Sound_PlayEffect(1500);

            if (v3->unk_8C.unk_00.unk_4E_2 == 1) {
                ov97_02237790(0, 56, v3->unk_163C, 2);
            } else {
                ov97_02237784(1);
                ov97_02237790(0, 57, v3->unk_163C, 2);
            }
        }
        break;
    case 56:
        ov97_0222DC20(v3->unk_00);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
        ov97_02231FFC(v3->unk_00, &v3->unk_8C.unk_50.val2, 86);
        ov97_02237790(1, 55, v3->unk_163C, 2);
        v3->unk_8C.unk_00.unk_4E_2 = 0;
        break;
    case 57:
        OS_ResetSystem(0);
        break;
    }

    if (v3->unk_2A48) {
        v3->unk_2A48(v3);
    }

    ov97_02237CAC(v3->unk_2A54);
    return 0;
}

OverlayManager *ov97_022301A4(void)
{
    return Unk_ov97_0223F1B0;
}

void ov97_022301B0(OverlayManager *param0)
{
    Unk_ov97_0223F1B0 = param0;
}

extern const OverlayManagerTemplate Unk_ov97_0223D7AC;

static int ov97_022301BC(OverlayManager *param0, int *param1)
{
    FS_EXTERN_OVERLAY(overlay77);
    FS_EXTERN_OVERLAY(overlay97);

    UnkStruct_ov97_0222D04C *v0 = OverlayManager_Data(param0);

    if (v0->unk_440 == 0) {
        sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);
    } else if (v0->unk_440 == 1) {
        sub_02000EC4(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D7AC);
    }

    Heap_Destroy(91);
    OverlayManager_FreeData(param0);
    Heap_Destroy(86);

    if (v0->unk_1638 == 2) {
        sub_02017B70(0);
    }

    ov97_02238400(0);

    return 1;
}

static void ov97_02230224(UnkStruct_ov97_0222D04C *param0)
{
    int v0;

    switch (param0->unk_62C) {
    case 29:
        break;
    case 28:
        sub_02037D48(param0->unk_04);
        param0->unk_630 = (2 * 60);
        param0->unk_62C = 30;
        break;
    case 30:
        v0 = sub_02037DA0();

        if (v0 & 0x1) {
            param0->unk_634 = 1;
        }

        if (--param0->unk_630 == 0) {
            sub_02037D84();
            param0->unk_62C = 29;
        }
        break;
    }
}

static void ov97_02230280(int param0)
{
    switch (param0) {
    case 0:
        Unk_ov97_0223F1A8 = 40;
        break;
    case 1:
        Unk_ov97_0223F1A8 = 41;
        break;
    case 2:
        Unk_ov97_0223F1A8 = 42;
        break;
    case 3:
        if (Unk_ov97_0223F1A8 == 42) {
            Unk_ov97_0223F1A8 = 44;
        } else {
            Unk_ov97_0223F1A8 = 47;
        }
        break;
    case 4:
        Unk_ov97_0223F1A8 = 48;
        break;
    }
}

static void ov97_022302D4(void)
{
    sub_020334CC();
    Heap_FreeToHeap(Unk_ov97_0223F1AC);
    sub_02039794();

    Unk_ov97_0223F1AC = NULL;
}

static void ov97_022302F4(UnkStruct_ov97_0222D04C *param0)
{
    if (Unk_ov97_0223F1A8 == 44) {
        ov97_022302D4();

        if (ov97_02238CA0()) {
            Unk_ov97_0223F1A8 = 45;
        } else {
            Unk_ov97_0223F1A8 = 46;
        }
    }

    if ((Unk_ov97_0223F1A8 == 37) || (Unk_ov97_0223F1A8 == 38) || (Unk_ov97_0223F1A8 == 39) || (Unk_ov97_0223F1A8 == 40) || (Unk_ov97_0223F1A8 == 41) || (Unk_ov97_0223F1A8 == 43)) {
        sub_020397B0(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }

    switch (Unk_ov97_0223F1A8) {
    case 37:
        sub_02033478();
        Unk_ov97_0223F1A8 = 38;
        break;
    case 38:
        if (sub_020334A4() == 1) {
            Unk_ov97_0223F1B4 = 0;
            Unk_ov97_0223F1AC = Heap_AllocFromHeap(86, ov97_02238D4C());
            ov97_02238A4C(&(param0->unk_638[0]), ov97_02230280, Unk_ov97_0223F1AC);
            Unk_ov97_0223F1A8 = 39;
            sub_02039734();
        }
        break;
    case 39:
        break;
    case 40:
        break;
    case 41:
        Unk_ov97_0223F1B4++;
        break;
    case 42:
        break;
    case 43:
        break;
    case 45:
        break;
    case 47:
        return;
        break;
    case 48:
        break;
    case 46:
        break;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        switch (Unk_ov97_0223F1A8) {
        case 40:
        case 41:
        case 48:
            if (ov97_022389C8()) {
                Unk_ov97_0223F1A8 = 43;
            }
            break;
        case 45:
        case 47:
        case 46:
            return;
        default:
            break;
        }
    }
}

const OverlayManagerTemplate Unk_ov97_0223D71C = {
    ov97_0222E2DC,
    ov97_0222F75C,
    ov97_022301BC,
    0xffffffff
};
