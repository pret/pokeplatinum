#include "overlay084/ov84_0223B5A0.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"

#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_0207CB08.h"
#include "struct_defs/struct_02099F80.h"

#include "functypes/funcptr_02069238.h"
#include "overlay084/const_ov84_02241130.h"
#include "overlay084/funcptr_ov84_0223D730.h"
#include "overlay084/ov84_0223F040.h"
#include "overlay084/ov84_022403F4.h"
#include "overlay084/struct_ov84_0223B5A0.h"
#include "overlay084/struct_ov84_0223BE5C.h"
#include "overlay084/struct_ov84_0223C920.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "list_menu.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "special_encounter.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_0200C440.h"
#include "unk_020393C8.h"
#include "unk_020683F4.h"
#include "unk_0207CB08.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

typedef struct {
    const u8 *unk_00;
    const TouchScreenRect *unk_04;
} UnkStruct_ov84_022410C8;

typedef int (*UnkFuncPtr_ov84_0223DA04)(UnkStruct_ov84_0223B5A0 *);

static void ov84_0223B9AC(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223BA14(void *param0);
static void ov84_0223BA3C(void);
static void ov84_0223BA5C(BgConfig *param0);
static void ov84_0223BBC4(BgConfig *param0);
static void ov84_0223BC1C(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223C5B8(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223C750(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223D730(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223BFBC(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223C194(u16 *param0, u16 *param1, u8 param2);
static void ov84_0223C1D0(u16 *param0, u16 *param1, u8 param2, u8 param3);
static void ov84_0223C224(UnkStruct_ov84_0223B5A0 *param0, u16 param1, u16 param2);
static void ov84_0223C2AC(ListMenu *param0, u32 param1, u8 param2);
static void ov84_0223C3B8(ListMenu *param0, u32 param1, u8 param2);
static void ov84_0223C4E0(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223BE24(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_02240C30(UnkStruct_ov84_0223B5A0 *param0, u8 param1);
static void ov84_0223C720(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223CDB0(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D0FC(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223CF20(UnkStruct_ov84_0223B5A0 *param0, u8 param1, u8 param2);
static u8 ov84_0223CD40(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223CE08(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223CBD8(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223CF20(UnkStruct_ov84_0223B5A0 *param0, u8 param1, u8 param2);
static void ov84_0223D0BC(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223D244(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D2A0(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223D2F8(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D42C(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D484(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D4E8(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223C848(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223C868(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223C89C(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223C920(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223CA5C(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223CE60(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_0223CBD8(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223BDB4(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D5AC(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223C158(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223C178(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223D858(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223C51C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E3BC(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E9B0(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E588(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E5C4(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E7A8(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E7CC(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E920(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223D8EC(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DE78(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DE98(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DEB8(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DF0C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DFF8(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E01C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E158(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E18C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E254(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E1E4(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E220(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E27C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223E36C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223EA18(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223BEAC(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223BF68(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223D94C(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DA04(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DA14(UnkStruct_ov84_0223B5A0 *param0);
static BOOL ov84_0223DBF4(UnkStruct_ov84_0223B5A0 *param0, u16 param1);
static Strbuf *ov84_0223DC9C(UnkStruct_ov84_0223B5A0 *param0, u16 param1);
static void ov84_0223DCF8(UnkStruct_ov84_0223B5A0 *param0);
static int ov84_0223DDD0(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223DCF8(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223D7E8(UnkStruct_ov84_0223B5A0 *param0, u8 param1);
static BOOL ov84_0223D1F4(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223CFB0(UnkStruct_ov84_0223B5A0 *param0, u8 param1);
static void ov84_0223D014(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_0223EB08(UnkStruct_ov84_0223B5A0 *param0, s8 param1);
static BOOL ov84_0223EF4C(UnkStruct_ov84_0223B5A0 *param0);
static BOOL ov84_0223EB84(UnkStruct_ov84_0223B5A0 *param0, u16 param1);
static BOOL ov84_0223ED14(UnkStruct_ov84_0223B5A0 *param0);
static BOOL ov84_0223EE30(UnkStruct_ov84_0223B5A0 *param0);
static BOOL ov84_0223EFD0(UnkStruct_ov84_0223B5A0 *param0, s16 *param1, u16 param2);
static BOOL ov84_0223ED64(UnkStruct_ov84_0223B5A0 *param0, u16 param1);
static BOOL ov84_0223EE80(UnkStruct_ov84_0223B5A0 *param0, u16 param1);
static BOOL ov84_0223EF9C(UnkStruct_ov84_0223B5A0 *param0, u8 param1);

const ApplicationManagerTemplate Unk_ov84_02241130 = {
    ov84_0223B5A0,
    ov84_0223B76C,
    ov84_0223B900,
    0xFFFFFFFF
};

static const ListMenuTemplate Unk_ov84_02240FA8 = {
    NULL,
    ov84_0223C2AC,
    ov84_0223C3B8,
    NULL,
    0x0,
    0x9,
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

static const u8 Unk_ov84_02241140[] = {
    0x1,
    0x4,
    0x2,
    0xA,
    0x5,
    0xF,
    0xA,
    0x12,
    0x11,
    0x12,
    0x16,
    0xF,
    0x19,
    0xA,
    0x1A,
    0x4
};

static const TouchScreenRect Unk_ov84_02240FE8[] = {
    { 0x20, 0x47, 0x8, 0x2F },
    { 0x50, 0x77, 0x10, 0x37 },
    { 0x78, 0x9F, 0x28, 0x4F },
    { 0x90, 0xB7, 0x50, 0x77 },
    { 0x90, 0xB7, 0x88, 0xAF },
    { 0x78, 0x9F, 0xB0, 0xD7 },
    { 0x50, 0x77, 0xC8, 0xEF },
    { 0x20, 0x47, 0xD0, 0xF7 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const u8 Unk_ov84_02241110[] = {
    0x1,
    0x4,
    0x5,
    0xF,
    0x16,
    0xF,
    0x1A,
    0x4
};

static const TouchScreenRect Unk_ov84_02240ED0[] = {
    { 0x20, 0x47, 0x8, 0x2F },
    { 0x78, 0x9F, 0x28, 0x4F },
    { 0x78, 0x9F, 0xB0, 0xD7 },
    { 0x20, 0x47, 0xD0, 0xF7 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const u8 Unk_ov84_02240E94[] = {
    0x11,
    0x12
};

static const TouchScreenRect Unk_ov84_02240EA0[] = {
    { 0x90, 0xB7, 0x88, 0xAF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const u8 Unk_ov84_02241120[] = {
    0x2,
    0xA,
    0x5,
    0xF,
    0xA,
    0x12,
    0x11,
    0x12,
    0x16,
    0xF,
    0x19,
    0xA,
    0x1A,
    0x4
};

static const TouchScreenRect Unk_ov84_02240FC8[] = {
    { 0x50, 0x77, 0x10, 0x37 },
    { 0x78, 0x9F, 0x28, 0x4F },
    { 0x90, 0xB7, 0x50, 0x77 },
    { 0x90, 0xB7, 0x88, 0xAF },
    { 0x78, 0x9F, 0xB0, 0xD7 },
    { 0x50, 0x77, 0xC8, 0xEF },
    { 0x20, 0x47, 0xD0, 0xF7 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov84_022410C8 Unk_ov84_022410C8[] = {
    { NULL, NULL },
    { Unk_ov84_02240E94, Unk_ov84_02240EA0 },
    { NULL, NULL },
    { NULL, NULL },
    { Unk_ov84_02241110, Unk_ov84_02240ED0 },
    { NULL, NULL },
    { NULL, NULL },
    { Unk_ov84_02241120, Unk_ov84_02240FC8 },
    { Unk_ov84_02241140, Unk_ov84_02240FE8 }
};

static const u8 Unk_ov84_02241118[] = {
    0xA5,
    0x28,
    0xF,
    0x64,
    0x40,
    0xC,
    0x1E,
    0x32
};

static const u32 Unk_ov84_02241034[] = {
    (u32)ov84_0223D858,
    (u32)ov84_0223D858,
    (u32)ov84_0223D858,
    (u32)ov84_0223D858,
    (u32)ov84_0223D858,
    (u32)ov84_0223DEB8,
    (u32)ov84_0223E1E4,
    (u32)ov84_0223E220,
    (u32)ov84_0223E254,
    (u32)ov84_0223DE78,
    (u32)ov84_0223DE98,
    0xFFFFFFFE
};

static const u16 Unk_ov84_02241064[] = {
    0x1077,
    0x1078,
    0x1078,
    0x1079,
    0x1026,
    0x1010,
    0x1011,
    0x1011,
    0x1012,
    0x1013,
    0x1014,
    0x1001,
    0x1001,
    0x1001,
    0x1034,
    0x1014,
    0x1001,
    0x1001,
    0x1001,
    0x1034,
    0x1030,
    0x1031,
    0x1031,
    0x1032,
    0x1033
};

static const u16 Unk_ov84_02241096[] = {
    0x1026,
    0x1002,
    0x1002,
    0x1002,
    0x1002,
    0x1026,
    0x1002,
    0x1002,
    0x1002,
    0x1002,
    0x1026,
    0x1002,
    0x1002,
    0x1002,
    0x1002,
    0x1026,
    0x1002,
    0x1002,
    0x1002,
    0x1002,
    0x1026,
    0x1002,
    0x1002,
    0x1002,
    0x1002
};

static const TouchScreenRect Unk_ov84_02240E98[] = {
    { 0x38, 0x67, 0x68, 0x97 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

static const TouchScreenHitTable Unk_ov84_02240EA8[] = {
    { TOUCHSCREEN_USE_CIRCLE, 0x80, 0x50, 0x1A },
    { TOUCHSCREEN_USE_CIRCLE, 0x80, 0x50, 0x40 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

static const TouchScreenHitTable Unk_ov84_02240EB4[] = {
    { TOUCHSCREEN_USE_CIRCLE, 0x80, 0x50, 0x10 },
    { TOUCHSCREEN_USE_CIRCLE, 0x80, 0x50, 0x50 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

int ov84_0223B5A0(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov84_0223B5A0 *v0;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_6, 0x30000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov84_0223B5A0), HEAP_ID_6);
    memset(v0, 0, sizeof(UnkStruct_ov84_0223B5A0));
    v0->unk_C4 = ApplicationManager_Args(appMan);

    ov84_0223B9AC(v0);

    v0->unk_00 = BgConfig_New(HEAP_ID_6);
    v0->unk_425 = TrainerInfo_Gender(v0->unk_CC);

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_3, FADE_TYPE_UNK_3, FADE_TO_BLACK, 6, 1, HEAP_ID_6);
    SetAutorepeat(3, 8);

    ov84_0223BEAC(v0);
    ov84_0223BDB4(v0);
    ov84_0223C158(v0);
    ov84_0223BE24(v0);
    ov84_0223C720(v0);
    ov84_0223BA3C();
    ov84_0223BA5C(v0->unk_00);
    ov84_0223BC1C(v0);
    ov84_0223D0BC(v0);

    EnableTouchPad();
    InitializeTouchPad(4);

    ov84_0223F040(v0);
    RenderControlFlags_SetSpeedUpOnTouch(1);
    ov84_0223F1F8(v0);
    ov84_0223F25C(v0);
    ov84_0223F2FC(v0);
    ov84_0223F438(v0);
    ov84_0223FA88(v0);
    ov84_0223F7D4(v0);
    ov84_0223BFBC(v0);
    ov84_0223C194(&v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_06, &v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_04, v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_09);
    ov84_0223C1D0(&v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_06, &v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_04, v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_09, 9);
    ov84_022403F4(v0);
    ov84_0223C224(v0, v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_06, v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_04);

    if ((v0->unk_C4->unk_65 == 4) || (v0->unk_C4->unk_65 == 5)) {
        ov84_02240328(v0);
    }

    SetVBlankCallback(ov84_0223BA14, v0);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_BAG, SEQ_NONE, 0);
    DrawWifiConnectionIcon();

    return 1;
}

int ov84_0223B76C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov84_0223B5A0 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            if (v0->unk_C4->unk_65 == 2) {
                *param1 = 16;
            } else if (v0->unk_C4->unk_65 == 1) {
                *param1 = 14;
            } else if (v0->unk_C4->unk_65 == 3) {
                *param1 = 23;
            } else {
                *param1 = 1;
            }
        }
        break;
    case 1:
        *param1 = ov84_0223C51C(v0);
        break;
    case 2:
        ov84_0223D0FC(v0);
        if (ov84_0223C920(v0) == 1) {
            if (v0->unk_C4->unk_65 == 2) {
                *param1 = 16;
            } else if (v0->unk_C4->unk_65 == 1) {
                *param1 = 14;
            } else if (v0->unk_C4->unk_65 == 3) {
                *param1 = 23;
            } else {
                *param1 = 1;
            }
        }
        break;
    case 3:
        if (ov84_0223D2F8(v0) == 1) {
            *param1 = 1;
        }
        break;
    case 4:
        *param1 = ov84_0223D730(v0);
        break;
    case 5:
        break;
    case 6:
        break;
    case 7:
        *param1 = ov84_0223DF0C(v0);
        break;
    case 8:
        *param1 = ov84_0223DFF8(v0);
        break;
    case 9:
        *param1 = ov84_0223E01C(v0);
        break;
    case 10:
        *param1 = ov84_0223E158(v0);
        break;
    case 11:
        *param1 = ov84_0223E18C(v0);
        break;
    case 12:
        *param1 = ov84_0223D8EC(v0);
        break;
    case 13:
        *param1 = ov84_0223DA04(v0);
        break;
    case 14:
        *param1 = ov84_0223E27C(v0);
        break;
    case 15:
        *param1 = ov84_0223E36C(v0);
        break;
    case 16:
        *param1 = ov84_0223E3BC(v0);
        break;
    case 17:
        *param1 = ov84_0223E588(v0);
        break;
    case 18:
        *param1 = ov84_0223E5C4(v0);
        break;
    case 19:
        *param1 = ov84_0223E7A8(v0);
        break;
    case 20:
        *param1 = ov84_0223E7CC(v0);
        break;
    case 21:
        *param1 = ov84_0223E920(v0);
        break;
    case 22:
        *param1 = ov84_0223E9B0(v0);
        break;
    case 23:
        *param1 = ov84_0223EA18(v0);
        break;
    case 24:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    ov84_0223D014(v0);
    ov84_02240E5C(v0);
    ov84_02240ABC(v0);
    SpriteSystem_DrawSprites(v0->unk_DC);

    return 0;
}

int ov84_0223B900(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov84_0223B5A0 *v0 = ApplicationManager_Data(appMan);

    ov84_02240A88(v0);
    ov84_0223C4E0(v0);
    ov84_0223BF68(v0);
    ov84_0223F1DC(v0->unk_04);
    ov84_0223BBC4(v0->unk_00);

    DisableTouchPad();
    VramTransfer_Free();

    ov84_0223FB50(v0);
    ov84_0223F238(v0);
    ov84_0223F800(v0);
    ov84_0223C178(v0);

    Strbuf_Free(v0->unk_3F8);
    MessageLoader_Free(v0->unk_120);
    MessageLoader_Free(v0->unk_11C);
    MessageLoader_Free(v0->unk_114);
    sub_0200C560(v0->unk_110);
    StringTemplate_Free(v0->unk_118);
    NARC_dtor(v0->unk_D4);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_6);
    SetAutorepeat(4, 8);

    return 1;
}

static void ov84_0223B9AC(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_C8 = SaveData_GetBag(param0->unk_C4->saveData);
    param0->unk_CC = SaveData_GetTrainerInfo(param0->unk_C4->saveData);
    param0->options = SaveData_GetOptions(param0->unk_C4->saveData);
}

static SpecialEncounter *ov84_0223B9E4(UnkStruct_ov84_0223B5A0 *param0)
{
    return SaveData_GetSpecialEncounters(param0->unk_C4->saveData);
}

static void SetRepelSteps(UnkStruct_ov84_0223B5A0 *param0, u8 stepCount)
{
    u8 *repelSteps = SpecialEncounter_GetRepelSteps(ov84_0223B9E4(param0));
    *repelSteps = stepCount;
}

static void SetBlackWhiteFluteActive(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    SpecialEncounter_SetFluteFactor(ov84_0223B9E4(param0), param1);
}

static void ov84_0223BA14(void *param0)
{
    UnkStruct_ov84_0223B5A0 *v0 = param0;

    Bg_RunScheduledUpdates(v0->unk_00);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov84_0223BA3C(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov84_0223BA5C(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_1,
            GX_BG0_AS_2D,
        };
        SetAllGraphicsModes(&v0);
    }
    {
        BgTemplate v1 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }
    {
        BgTemplate v2 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
    }
    {
        BgTemplate v3 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0x2,
            0x0,
            0x0,
            0x0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v4 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x3,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v4, 0);
    }
    {
        BgTemplate v5 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v5, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }
    {
        BgTemplate v6 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v6, 0);
    }
    {
        BgTemplate v7 = {
            0x0,
            0x0,
            0x400,
            0x0,
            0x1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x2,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v7, 1);
        Bg_ScheduleAffineRotationCenter(param0, 7, 9, 128);
        Bg_ScheduleAffineRotationCenter(param0, 7, 12, 80);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_6);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_6);
}

static void ov84_0223BBC4(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Heap_FreeToHeapExplicit(HEAP_ID_6, param0);
}

static void ov84_0223BC1C(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_D4 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_BAG_GRA, HEAP_ID_6);

    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_D4, 11, param0->unk_00, 1, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_D4, 14, param0->unk_00, 1, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_D4, 13, param0->unk_00, 3, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_D4, 12, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_D4, 22, 0, 16 * 13 * 2, 32, HEAP_ID_6);
    Font_LoadScreenIndicatorsPalette(0, 11 * 32, HEAP_ID_6);
    LoadStandardWindowGraphics(param0->unk_00, BG_LAYER_MAIN_0, 1024 - 9, 14, 0, HEAP_ID_6);
    LoadMessageBoxGraphics(param0->unk_00, BG_LAYER_MAIN_0, 1024 - 9 - (18 + 12), 12, Options_Frame(param0->options), HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_D4, 15, param0->unk_00, 5, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_D4, 16, 4, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_D4, 17, param0->unk_00, 5, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_D4, 32, param0->unk_00, 7, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_D4, 33, param0->unk_00, 7, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_D4, 19, param0->unk_00, 4, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_D4, 18, 4, 16 * 2 * 2, 0x20 * 2, HEAP_ID_6);
}

static void ov84_0223BDB4(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_114 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0007, HEAP_ID_6);
    param0->unk_110 = sub_0200C440(1, 2, 0, HEAP_ID_6);
    param0->unk_118 = StringTemplate_Default(HEAP_ID_6);
    param0->unk_11C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_6);
    param0->unk_120 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_6);
    param0->unk_3F8 = Strbuf_Init(256, HEAP_ID_6);
}

static void ov84_0223BE24(UnkStruct_ov84_0223B5A0 *param0)
{
    u8 v0;

    param0->unk_424 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_C4->unk_04[v0].unk_00 != 0) {
            param0->unk_424++;
        }
    }
}

u16 ov84_0223BE5C(UnkStruct_ov84_0223B5A0 *param0, u16 param1, u16 param2)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    if (param2 == 0) {
        return v0->unk_00[param1].item;
    }

    return v0->unk_00[param1].quantity;
}

static void ov84_0223BE84(MessageLoader *param0, Strbuf *param1, u16 param2, u32 param3)
{
    MessageLoader_GetStrbuf(param0, param2, param1);
}

static void ov84_0223BE94(MessageLoader *param0, Strbuf *param1, u16 param2, u32 param3)
{
    MessageLoader_GetStrbuf(param0, Item_MoveForTMHM(param2), param1);
}

static void ov84_0223BEAC(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    u16 v1, v2;

    param0->unk_C4->unk_64 = 0;
    v0 = param0->unk_C4->unk_04;

    if (param0->unk_C4->unk_6C == NULL) {
        for (v1 = 0; v1 < 8; v1++) {
            if (v0[v1].unk_00 == NULL) {
                break;
            }

            v0[v1].unk_04 = 1;
            v0[v1].unk_06 = 0;
        }

        return;
    }

    for (v1 = 0; v1 < 8; v1++) {
        u8 v3, v4;

        if (v0[v1].unk_00 == NULL) {
            break;
        }

        BagCursor_GetFieldPocketPosition(param0->unk_C4->unk_6C, v0[v1].unk_08, &v3, &v4);

        if (v3 == 0) {
            v3 = 1;
        }

        v0[v1].unk_04 = v3;
        v0[v1].unk_06 = v4;
    }

    v2 = BagCursor_GetFieldPocket(param0->unk_C4->unk_6C);

    for (v1 = 0; v1 < 8; v1++) {
        if (v0[v1].unk_00 == NULL) {
            break;
        }

        if (v0[v1].unk_08 == v2) {
            param0->unk_C4->unk_64 = (u8)v1;
        }
    }
}

static void ov84_0223BF68(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    u32 v1;

    if (param0->unk_C4->unk_6C == NULL) {
        return;
    }

    v0 = param0->unk_C4->unk_04;

    for (v1 = 0; v1 < 8; v1++) {
        if (v0[v1].unk_00 == NULL) {
            break;
        }

        BagCursor_SetFieldPocketPosition(param0->unk_C4->unk_6C, v0[v1].unk_08, (u8)v0[v1].unk_04, (u8)v0[v1].unk_06);
    }

    BagCursor_SetFieldPocket(param0->unk_C4->unk_6C, v0[param0->unk_C4->unk_64].unk_08);
}

static void ov84_0223BFBC(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    u32 v1;

    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];
    param0->unk_160 = StringList_New(Unk_ov84_02241118[v0->unk_08] + 3, 6);

    StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 32, 0xfffffffd);

    if (v0->unk_08 == 3) {
        for (v1 = 0; v1 < Unk_ov84_02241118[v0->unk_08]; v1++) {
            if ((v0->unk_00[v1].item == 0) || (v0->unk_00[v1].quantity == 0)) {
                break;
            }

            ov84_0223BE94(param0->unk_120, param0->unk_164[v1], v0->unk_00[v1].item, 6);
            StringList_AddFromStrbuf(param0->unk_160, param0->unk_164[v1], v1);
        }

        StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 32, 0xfffffffe);
        StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 32, 0xfffffffd);

        v0->unk_09 = v1 + 3;
    } else {
        for (v1 = 0; v1 < Unk_ov84_02241118[v0->unk_08]; v1++) {
            if ((v0->unk_00[v1].item == 0) || (v0->unk_00[v1].quantity == 0)) {
                break;
            }

            ov84_0223BE84(param0->unk_11C, param0->unk_164[v1], v0->unk_00[v1].item, 6);
            StringList_AddFromStrbuf(param0->unk_160, param0->unk_164[v1], v1);
        }

        if (param0->unk_C4->unk_65 != 5) {
            if (v0->unk_08 == 4) {
                StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 32, 0xfffffffe);
            } else {
                StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 41, 0xfffffffe);
            }

            StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 32, 0xfffffffd);
            v0->unk_09 = v1 + 3;
        } else {
            StringList_AddFromMessageBank(param0->unk_160, param0->unk_114, 32, 0xfffffffd);
            v0->unk_09 = v1 + 2;
        }
    }
}

static void ov84_0223C158(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 165; v0++) {
        param0->unk_164[v0] = Strbuf_Init(18, HEAP_ID_6);
    }
}

static void ov84_0223C178(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 165; v0++) {
        Strbuf_Free(param0->unk_164[v0]);
    }
}

static void ov84_0223C194(u16 *param0, u16 *param1, u8 param2)
{
    u8 v0;

    param2 -= 1;

    if (param2 > 8) {
        v0 = 8 - 1;
    } else {
        v0 = param2 - 1;
    }

    if (*param0 != 0) {
        if (*param0 + v0 > param2 - 1) {
            *param0 = param2 - 1 - v0;
        }
    }

    if (*param0 + *param1 >= param2 - 1) {
        *param1 = param2 - 1 - *param0;
    }
}

static void ov84_0223C1D0(u16 *param0, u16 *param1, u8 param2, u8 param3)
{
    u8 v0;
    u8 v1;

    param2 -= 1;

    if (param2 > 8) {
        v0 = 8 - 1;
    } else {
        v0 = param2 - 1;
    }

    if (!(*param1 >= (param3 >> 1) + 2)) {
        return;
    }

    for (v1 = 0; v1 <= *param1 - (param3 >> 1) - 2; v1++) {
        if (*param0 + v0 == param2 - 1) {
            break;
        }
        *param1 -= 1;
        *param0 += 1;
    }
}

static void ov84_0223C224(UnkStruct_ov84_0223B5A0 *param0, u16 param1, u16 param2)
{
    ListMenuTemplate v0;

    v0 = Unk_ov84_02240FA8;
    v0.choices = param0->unk_160;
    v0.window = &param0->unk_04[0];
    v0.count = param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09;
    v0.parent = (void *)param0;

    if ((param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) || (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 4)) {
        v0.textXOffset = (32 + 3);
    } else {
        v0.textXOffset = 0;
    }

    param0->unk_15C = ListMenu_New(&v0, param1, param2, 6);
    Window_ScheduleCopyToVRAM(&param0->unk_04[0]);
}

static void ov84_0223C2AC(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov84_0223B5A0 *v0 = (UnkStruct_ov84_0223B5A0 *)ListMenu_GetAttribute(param0, 19);

    if (param2 != 1) {
        switch (v0->unk_482) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_GASA01);
            break;
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_GASA02);
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_GASA03);
        }

        v0->unk_482 = (v0->unk_482 + 1) % 3;

        if ((v0->unk_492 == 0) || (ManagedSprite_IsAnimated(v0->unk_E0[0]) == 0)) {
            ManagedSprite_SetAnimationFrame(v0->unk_E0[0], 0);
            ManagedSprite_SetAnim(
                v0->unk_E0[0], 8 + v0->unk_C4->unk_04[v0->unk_C4->unk_64].unk_08);
        }
    }

    if (v0->unk_47A == 1) {
        return;
    }

    Window_FillTilemap(&v0->unk_04[1], 0);

    if (param1 != 0xfffffffe) {
        UnkStruct_ov84_0223BE5C *v1;

        v1 = &v0->unk_C4->unk_04[v0->unk_C4->unk_64];
        ov84_0223F528(v0, v1->unk_00[param1].item);
        ov84_02240AD8(v0, v1->unk_00[param1].item);
    } else {
        ov84_0223F528(v0, 0xffff);
        ov84_02240AD8(v0, 0xffff);
    }

    if (v0->unk_479 == 0) {
        Window_ScheduleCopyToVRAM(&v0->unk_04[1]);
    }
}

static void ov84_0223C3B8(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov84_0223B5A0 *v0 = (UnkStruct_ov84_0223B5A0 *)ListMenu_GetAttribute(param0, 19);
    UnkStruct_ov84_0223BE5C *v1 = &v0->unk_C4->unk_04[v0->unk_C4->unk_64];

    if ((v0->unk_47A == 1) && (v0->unk_47C == param1)) {
        ListMenu_SetAltTextColors(param0, 8, 0, 9);
    } else {
        ListMenu_SetAltTextColors(param0, 1, 0, 2);
    }

    if (v1->unk_08 == 7) {
        if ((param1 != 0xfffffffd) && (param1 != 0xfffffffe)) {
            if (Bag_GetRegisteredItem(v0->unk_C8) == v1->unk_00[param1].item) {
                ov84_0223FA44(v0, param2);
            }
        }
    } else if (v1->unk_08 == 3) {
        if (param1 == 0xfffffffe) {
            ov84_0223F9F0(v0, param2);
        } else if (param1 != 0xfffffffd) {
            ov84_0223F8D0(v0, &v1->unk_00[param1], param2);
        }
    } else if (v1->unk_08 == 4) {
        if (param1 == 0xfffffffe) {
            ov84_0223F9F0(v0, param2);
        } else if (param1 != 0xfffffffd) {
            ov84_0223F94C(v0, &v1->unk_00[param1], param2);
        }
    } else {
        if ((param1 != 0xfffffffd) && (param1 != 0xfffffffe)) {
            if ((v0->unk_47A == 1) && (v0->unk_47C == param1)) {
                ov84_0223F81C(v0, v1->unk_00[param1].quantity, param2, TEXT_COLOR(8, 9, 0));
            } else {
                ov84_0223F81C(v0, v1->unk_00[param1].quantity, param2, TEXT_COLOR(1, 2, 0));
            }
        }
    }
}

static void ov84_0223C4E0(UnkStruct_ov84_0223B5A0 *param0)
{
    ListMenu_Free(param0->unk_15C, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04);
    StringList_Free(param0->unk_160);
    param0->unk_15C = NULL;
}

static int ov84_0223C51C(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223D0FC(param0);

    if (ov84_0223ED14(param0) == 1) {
        return 1;
    }

    if (ov84_0223C750(param0) == 1) {
        return 2;
    }

    if (ov84_0223CD40(param0) == 1) {
        return 2;
    }

    {
        u8 v0 = ov84_0223C5B8(param0);

        if (v0 == 1) {
            ov84_02240B34(param0, 2);
            Window_FillTilemap(&param0->unk_04[1], 0);
            Window_ClearAndCopyToVRAM(&param0->unk_04[1]);
            ov84_0223D5AC(param0);

            if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) {
                ov84_0223D7E8(param0, 1);
            }

            return 4;
        } else if (v0 == 2) {
            ov84_0223D2A0(param0);
            return 3;
        } else if (v0 == 3) {
            return 24;
        }
    }

    return 1;
}

static u8 ov84_0223C5B8(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    u32 v1;
    u16 v2, v3;

    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];
    ListMenu_GetListAndCursorPos(param0->unk_15C, &v0->unk_06, &v0->unk_04);

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        if (ov84_0223D244(param0) == 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return 2;
        }
    }

    v1 = ListMenu_ProcessInput(param0->unk_15C);
    ListMenu_GetListAndCursorPos(param0->unk_15C, &v2, &v3);

    if (v0->unk_04 != v3) {
        ManagedSprite_SetPositionXY(
            param0->unk_E0[4], 177, 24 + (v3 - 1) * 16);
    }

    v0->unk_06 = v2;
    v0->unk_04 = v3;

    if (v1 == 0xffffffff) {
        if (ov84_0223D1F4(param0) == 1) {
            v1 = ListMenu_GetIndexOfChoice(param0->unk_15C, v2 + v3);
            param0->unk_490 = 1;
        }
    }

    switch (v1) {
    case 0xffffffff: {
        u8 v4 = ListMenu_GetLastAction(param0->unk_15C);

        if (v4 == LIST_MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 36);
        } else if (v4 == LIST_MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -36);
        }
    } break;
    case 0xfffffffe:
        if (param0->unk_C4->unk_65 == 5) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->unk_C4->unk_66 = 0;
        param0->unk_C4->unk_68 = 5;
        sub_0208C120(1, HEAP_ID_6);
        return 3;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->unk_C4->unk_66 = (u16)v0->unk_00[v1].item;
        param0->unk_48A = (u16)v0->unk_00[v1].quantity;
        return 1;
    }

    return 0;
}

static void ov84_0223C720(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_427 = 6 + (90 - (10 * param0->unk_424)) / (param0->unk_424 + 1);
    param0->unk_428 = 10 + param0->unk_427 - 6;
}

static u8 ov84_0223C750(UnkStruct_ov84_0223B5A0 *param0)
{
    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        if (param0->unk_424 == 1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (param0->unk_C4->unk_64 != 0) {
            param0->unk_429.unk_00 = param0->unk_C4->unk_64 - 1;
            param0->unk_478 = param0->unk_C4->unk_64 - 1;
        } else {
            param0->unk_429.unk_00 = param0->unk_424 - 1;
            param0->unk_478 = param0->unk_424 - 1;
        }

        ov84_02240B68(param0);
        param0->unk_429.unk_01 = 0;
        ov84_0223C848(param0);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 4);

        return 1;
    }
    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        if (param0->unk_424 == 1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (param0->unk_C4->unk_64 + 1 < param0->unk_424) {
            param0->unk_429.unk_00 = param0->unk_C4->unk_64 + 1;
            param0->unk_478 = param0->unk_C4->unk_64 + 1;
        } else {
            param0->unk_429.unk_00 = 0;
            param0->unk_478 = 0;
        }

        ov84_02240B68(param0);
        param0->unk_429.unk_01 = 1;
        ov84_0223C848(param0);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 4);

        return 1;
    }

    return 0;
}

static void ov84_0223C848(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223C89C(param0);
    param0->unk_429.unk_04 = 3;
    param0->unk_429.unk_07_7 = 0;
}

static void ov84_0223C868(UnkStruct_ov84_0223B5A0 *param0)
{
    if (param0->unk_429.unk_01 != 2) {
        ov84_0223C89C(param0);
    } else {
        param0->unk_429.unk_02 = 2;
    }

    param0->unk_429.unk_04 = 0;
    param0->unk_429.unk_07_7 = 1;
}

static void ov84_0223C89C(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223C920 *v0 = &param0->unk_429;

    v0->unk_02 = 0;
    v0->unk_03 = 0;
    v0->unk_05 = 0;
    v0->unk_07_0 = 0;
    v0->unk_07_4 = 0;

    ov84_0223C4E0(param0);
    Window_FillTilemap(&param0->unk_04[0], 0);
    Window_FillTilemap(&param0->unk_04[1], 0);
    Window_ScheduleCopyToVRAM(&param0->unk_04[0]);
    Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
    ManagedSprite_SetDrawFlag(param0->unk_E0[4], 0);
    ManagedSprite_SetDrawFlag(param0->unk_E0[7], 0);
    ov84_0223F3AC(param0, param0->unk_C4->unk_64, 0);
    ov84_0223CF20(param0, param0->unk_C4->unk_64, 0);
}

static u8 ov84_0223C920(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223C920 *v0;
    int v1;
    u8 v2;
    u8 v3;

    v0 = &param0->unk_429;

    if (TouchScreen_Touched() == 0) {
        v0->unk_07_4 = 1;
    }

    v1 = ov84_0223CE08(param0);

    if ((v1 == 0xffffffff) || (v1 != v0->unk_00)) {
        v0->unk_07_0 = 1;
    }

    if (ov84_0223CA5C(param0) == 0) {
        if ((v0->unk_07_4 == 1) && (v1 != 0xffffffff)) {
            param0->unk_C4->unk_64 = v0->unk_00;

            if (v0->unk_00 > (u8)v1) {
                v0->unk_01 = 0;
                v0->unk_02 = 0;
                ov84_0223CF20(param0, v0->unk_00, 0);
                ov84_0223F3AC(param0, v0->unk_00, 0);
            } else if (v0->unk_00 < (u8)v1) {
                v0->unk_01 = 1;
                v0->unk_02 = 0;
                ov84_0223CF20(param0, v0->unk_00, 0);
                ov84_0223F3AC(param0, v0->unk_00, 0);
            } else {
                v0->unk_01 = 2;
            }

            v0->unk_00 = (u8)v1;
            v0->unk_07_0 = 0;
            v0->unk_07_4 = 0;
            v0->unk_04 = 0;
            param0->unk_478 = (u8)v1;

            ov84_02240B68(param0);
        }
    }

    v2 = ov84_0223CBD8(param0);
    v3 = ov84_0223CE60(param0);

    ov84_02240B80(param0);

    if ((v2 == 1) && (v3 == 1) && (v0->unk_07_0 == 1) && (ov84_02240B50(param0) == 1)) {
        if (v0->unk_07_7 == 1) {
            ov84_0223CF20(param0, v0->unk_00, 1);
            Bg_ScheduleTilemapTransfer(param0->unk_00, 4);
        }

        ManagedSprite_SetDrawFlag(param0->unk_E0[7], 1);
        return 1;
    }

    return 0;
}

static u8 ov84_0223CA5C(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223C920 *v0 = &param0->unk_429;

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_424 == 1) {
            return 1;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(param0->unk_E0[0], param0->unk_C4->unk_04[v0->unk_00].unk_08);
        ov84_0223CF20(param0, v0->unk_00, 0);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 4);

        param0->unk_C4->unk_64 = v0->unk_00;

        if (v0->unk_00 != 0) {
            v0->unk_00 = v0->unk_00 - 1;
            param0->unk_478 = param0->unk_478 - 1;
        } else {
            v0->unk_00 = param0->unk_424 - 1;
            param0->unk_478 = param0->unk_424 - 1;
        }

        v0->unk_02 = 0;
        v0->unk_01 = 0;
        v0->unk_07_4 = 1;
        v0->unk_07_0 = 1;
        v0->unk_07_7 = 0;

        if (v0->unk_04 != 3) {
            v0->unk_04 = 4;
        }

        ov84_02240B68(param0);
        return 1;
    }
    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_424 == 1) {
            return 1;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(param0->unk_E0[0], param0->unk_C4->unk_04[v0->unk_00].unk_08);
        ov84_0223CF20(param0, v0->unk_00, 0);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 4);

        param0->unk_C4->unk_64 = v0->unk_00;

        if (v0->unk_00 + 1 < param0->unk_424) {
            v0->unk_00 = v0->unk_00 + 1;
            param0->unk_478 = param0->unk_478 + 1;
        } else {
            v0->unk_00 = 0;
            param0->unk_478 = 0;
        }

        v0->unk_02 = 0;
        v0->unk_01 = 1;
        v0->unk_07_4 = 1;
        v0->unk_07_0 = 1;
        v0->unk_07_7 = 0;

        if (v0->unk_04 != 3) {
            v0->unk_04 = 4;
        }

        ov84_02240B68(param0);
        return 1;
    }

    return 0;
}

static u8 ov84_0223CBD8(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223C920 *v0 = &param0->unk_429;

    switch (v0->unk_02) {
    case 0:
        v0->unk_03 = 0;
        v0->unk_02++;
        break;
    case 1:
        if (v0->unk_03 < 8) {
            v0->unk_03++;
            ov84_0223F2FC(param0);
        } else {
            if (param0->unk_15C != NULL) {
                ListMenu_Free(param0->unk_15C, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04);
                StringList_Free(param0->unk_160);
            }

            param0->unk_C4->unk_64 = v0->unk_00;

            ManagedSprite_SetAnim(param0->unk_E0[0], param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08);
            ov84_0223F438(param0);
            ov84_0223F3AC(param0, param0->unk_C4->unk_64, 1);
            ov84_0223BFBC(param0);
            ov84_0223C194(&param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09);
            ov84_0223C1D0(&param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09, 9);
            ov84_0223C224(param0, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04);
            ManagedSprite_SetPositionXY(param0->unk_E0[4], 177, 24 + (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04 - 1) * 16);
            ManagedSprite_SetDrawFlag(param0->unk_E0[4], 1);

            v0->unk_02++;
            return 1;
        }

        break;
    case 2:
        return 1;
    }

    return 0;
}

static u8 ov84_0223CD40(UnkStruct_ov84_0223B5A0 *param0)
{
    int v0 = ov84_0223CDB0(param0);

    if (v0 == 0xffffffff) {
        return 0;
    }

    if (param0->unk_424 == 1) {
        return 0;
    }

    if (param0->unk_C4->unk_64 == (u8)v0) {
        param0->unk_429.unk_01 = 2;
    } else if (param0->unk_C4->unk_64 > (u8)v0) {
        param0->unk_429.unk_01 = 0;
    } else {
        param0->unk_429.unk_01 = 1;
    }

    param0->unk_429.unk_00 = (u8)v0;
    param0->unk_478 = (u8)v0;

    ov84_02240B68(param0);
    ov84_0223C868(param0);

    return 1;
}

static int ov84_0223CDB0(UnkStruct_ov84_0223B5A0 *param0)
{
    int v0 = TouchScreen_CheckRectanglePressed(Unk_ov84_022410C8[param0->unk_424].unk_04);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->unk_00, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

static int ov84_0223CE08(UnkStruct_ov84_0223B5A0 *param0)
{
    int v0 = TouchScreen_CheckRectangleHeld(Unk_ov84_022410C8[param0->unk_424].unk_04);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->unk_00, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

static u8 ov84_0223CE60(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223C920 *v0 = &param0->unk_429;

    switch (v0->unk_04) {
    case 0:
        v0->unk_05 = 0;
        v0->unk_07_7 = 1;
        v0->unk_06 = v0->unk_00;
        v0->unk_04++;
        break;
    case 1:
        if (v0->unk_05 != 3) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov84_0223CF20(param0, v0->unk_06, 2);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 4);
        ov84_02240E24(param0, Unk_ov84_022410C8[param0->unk_424].unk_00[v0->unk_06 * 2] * 8 + 20, Unk_ov84_022410C8[param0->unk_424].unk_00[v0->unk_06 * 2 + 1] * 8 + 20);

        v0->unk_04++;
        break;
    case 2:
        if (v0->unk_05 != 7) {
            break;
        }

        v0->unk_04++;
        return 1;
    case 3:
        return 1;
    case 4:
        v0->unk_04 = 3;
        return 1;
    }

    v0->unk_05++;
    return 0;
}

static void ov84_0223CF20(UnkStruct_ov84_0223B5A0 *param0, u8 param1, u8 param2)
{
    u16 *v0;
    const u8 *v1;
    u16 v2;
    u8 v3;
    u8 v4, v5;

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->unk_00, 4);
    v1 = &Unk_ov84_022410C8[param0->unk_424].unk_00[param1 * 2];
    v3 = param0->unk_C4->unk_04[param1].unk_08;
    v2 = (v3 / 2) * (30 * 5) + (v3 & 1) * 15 + 30 + param2 * 5;

    for (v4 = 0; v4 < 5; v4++) {
        for (v5 = 0; v5 < 5; v5++) {
            v0[(v4 + v1[1]) * 32 + v5 + v1[0]] = v2 + v4 * 30 + v5 + (2 << 12);
        }
    }
}

static void ov84_0223CFB0(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    u16 *v0;
    const u8 *v1;
    u16 v2;
    u8 v3;
    u8 v4, v5;

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->unk_00, 4);
    v2 = 0x276 + 6 * param1;

    for (v4 = 0; v4 < 6; v4++) {
        for (v5 = 0; v5 < 6; v5++) {
            v0[(7 + v4) * 32 + 13 + v5] = v2 + v4 * 30 + v5 + (3 << 12);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->unk_00, 4);
}

static void ov84_0223D014(UnkStruct_ov84_0223B5A0 *param0)
{
    switch (param0->unk_490) {
    case 0:
        break;
    case 1:
        ov84_02240E24(param0, 128, 80);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov84_0223CFB0(param0, 2);

        param0->unk_491 = 0;
        param0->unk_490++;
        break;
    case 2:
        if (param0->unk_491 == 3) {
            ov84_0223CFB0(param0, 1);

            param0->unk_490++;
            param0->unk_491 = 0;
        } else {
            param0->unk_491++;
        }

        break;
    case 3:
        if (param0->unk_491 == 2) {
            ov84_0223CFB0(param0, 0);

            param0->unk_490 = 0;
            param0->unk_491 = 0;
        } else {
            param0->unk_491++;
        }
    }
}

static void ov84_0223D0BC(UnkStruct_ov84_0223B5A0 *param0)
{
    u8 v0;

    ov84_0223CFB0(param0, 0);
    if (param0->unk_424 != 1) {
        for (v0 = 0; v0 < param0->unk_424; v0++) {
            ov84_0223CF20(param0, v0, 0);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->unk_00, 4);
}

static void ov84_0223D0FC(UnkStruct_ov84_0223B5A0 *param0)
{
    if (param0->unk_481 == 0) {
        s16 v0, v1;

        switch (param0->unk_480) {
        case 0:
        case 1:
            ManagedSprite_GetPositionXY(param0->unk_E0[2], &v0, &v1);

            v0 -= 1;
            ManagedSprite_SetPositionXY(param0->unk_E0[2], v0, v1);
            ManagedSprite_GetPositionXY(param0->unk_E0[3], &v0, &v1);

            v0 += 1;
            ManagedSprite_SetPositionXY(param0->unk_E0[3], v0, v1);
            break;
        case 2:
        case 3:
            ManagedSprite_GetPositionXY(param0->unk_E0[2], &v0, &v1);

            v0 += 1;
            ManagedSprite_SetPositionXY(param0->unk_E0[2], v0, v1);
            ManagedSprite_GetPositionXY(param0->unk_E0[3], &v0, &v1);

            v0 -= 1;
            ManagedSprite_SetPositionXY(param0->unk_E0[3], v0, v1);
            break;
        }

        param0->unk_480 = (param0->unk_480 + 1) & 3;
    }

    param0->unk_481 = (param0->unk_481 + 1) & 3;
}

static BOOL ov84_0223D1F4(UnkStruct_ov84_0223B5A0 *param0)
{
    int v0 = TouchScreen_CheckRectanglePressed(Unk_ov84_02240E98);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->unk_00, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0;
        }

        return 1;
    }

    return 0;
}

static u8 ov84_0223D244(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    if (ListMenu_GetIndexOfChoice(param0->unk_15C, v0->unk_06 + v0->unk_04) == 0xfffffffe) {
        return 0;
    }

    if (param0->unk_C4->unk_65 != 0) {
        return 0;
    }

    if ((v0->unk_08 == 4) || (v0->unk_08 == 3)) {
        return 0;
    }

    return 1;
}

static void ov84_0223D2A0(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    param0->unk_47A = 1;
    param0->unk_47B = v0->unk_06 + v0->unk_04;
    param0->unk_47C = ListMenu_GetIndexOfChoice(param0->unk_15C, param0->unk_47B);

    ov84_0223FE18(param0);
    ListMenu_Draw(param0->unk_15C);
    ov84_0223D4E8(param0);
}

static u8 ov84_0223D2F8(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    u32 v1;
    u16 v2, v3;

    if (ov84_0223EE30(param0) == 1) {
        return 0;
    }

    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];
    ListMenu_GetListAndCursorPos(param0->unk_15C, &v0->unk_06, &v0->unk_04);

    if (ov84_0223D1F4(param0) == 1) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov84_0223D42C(param0);
        param0->unk_490 = 1;

        return 1;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov84_0223D42C(param0);
        return 1;
    }

    v1 = ListMenu_ProcessInput(param0->unk_15C);
    ListMenu_GetListAndCursorPos(param0->unk_15C, &v2, &v3);

    if (v0->unk_04 != v3) {
        ManagedSprite_SetPositionXY(param0->unk_E0[5], 177, 24 + (v3 - 1) * 16 - 8);
    }

    v0->unk_06 = v2;
    v0->unk_04 = v3;

    switch (v1) {
    case 0xffffffff: {
        u8 v4 = ListMenu_GetLastAction(param0->unk_15C);

        if (v4 == LIST_MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 36);
        } else if (v4 == LIST_MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -36);
        }
    } break;
    case 0xfffffffe:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            ov84_0223D42C(param0);
        } else {
            ov84_0223D484(param0);
        }

        return 1;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov84_0223D42C(param0);
        return 1;
    }

    return 0;
}

static void ov84_0223D42C(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];
    u16 v1 = v0->unk_06 + v0->unk_04;

    if (!((param0->unk_47B == v1) || (param0->unk_47B == (v1 - 1)))) {
        Item_MoveInPocket(v0->unk_00, param0->unk_47B - 1, v1 - 1);
        StringList_Free(param0->unk_160);
        ov84_0223BFBC(param0);
    }

    ov84_0223D484(param0);
}

static void ov84_0223D484(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    ListMenu_Free(param0->unk_15C, &v0->unk_06, &v0->unk_04);
    param0->unk_15C = NULL;

    if (param0->unk_47B < (v0->unk_06 + v0->unk_04)) {
        v0->unk_04 -= 1;
    }

    param0->unk_47A = 0;
    param0->unk_47B = 0;
    param0->unk_47C = 0;

    ov84_0223C224(param0, v0->unk_06, v0->unk_04);
    ov84_0223D4E8(param0);
}

static void ov84_0223D4E8(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    if (param0->unk_47A == 0) {
        ManagedSprite_SetPositionXY(param0->unk_E0[4], 177, 24 + (v0->unk_04 - 1) * 16);
        ManagedSprite_SetDrawFlag(param0->unk_E0[4], 1);
        ManagedSprite_SetDrawFlag(param0->unk_E0[5], 0);

        if (param0->unk_424 != 1) {
            ManagedSprite_SetDrawFlag(param0->unk_E0[2], 1);
            ManagedSprite_SetDrawFlag(param0->unk_E0[3], 1);
        }
    } else {
        ManagedSprite_SetPositionXY(param0->unk_E0[5], 177, 24 + (v0->unk_04 - 1) * 16 - 8);
        ManagedSprite_SetDrawFlag(param0->unk_E0[4], 0);
        ManagedSprite_SetDrawFlag(param0->unk_E0[5], 1);

        if (param0->unk_424 != 1) {
            ManagedSprite_SetDrawFlag(param0->unk_E0[2], 0);
            ManagedSprite_SetDrawFlag(param0->unk_E0[3], 0);
        }
    }
}

static void ov84_0223D5AC(UnkStruct_ov84_0223B5A0 *param0)
{
    void *v0;
    u32 v1;
    u8 v2;
    u8 v3[12];

    v0 = Item_Load(param0->unk_C4->unk_66, 0, 6);
    v1 = 0;
    v2 = param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08;

    if (param0->unk_C4->unk_65 == 0) {
        if (v2 == 4) {
            v3[v1] = 9;
            v1++;
        }

        if ((param0->unk_C4->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) || (param0->unk_C4->mapLoadType == MAP_LOAD_TYPE_UNION)) {
            if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 5) {
                v3[v1] = 2;
                v1++;
            }
        } else {
            if (Item_Get(v0, 6) != 0) {
                if ((param0->unk_C4->unk_66 == 450) && (param0->unk_C4->unk_76_0 == 1)) {
                    v3[v1] = 1;
                } else if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 5) {
                    v3[v1] = 2;
                } else if (param0->unk_C4->unk_66 == 449) {
                    v3[v1] = 4;
                } else if ((param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 4) && (sub_02068B50(param0->unk_C4->unk_70) == 1)) {
                    v3[v1] = 3;
                } else {
                    v3[v1] = 0;
                }

                v1++;
            }
        }
        if (Item_Get(v0, 3) == 0) {
            v3[v1] = 8;
            v1++;

            if (v2 != 3) {
                v3[v1] = 5;
                v1++;
            }
        }
        if (Item_Get(v0, 4) != 0) {
            if (Bag_GetRegisteredItem(param0->unk_C8) == param0->unk_C4->unk_66) {
                v3[v1] = 7;
            } else {
                v3[v1] = 6;
            }

            v1++;
        }
    } else if ((param0->unk_C4->unk_65 == 4) || (param0->unk_C4->unk_65 == 5)) {
        v3[v1] = 10;
        v1++;
        v3[v1] = 9;
        v1++;
    }

    v3[v1] = 11;
    v1++;
    ov84_0223FB70(param0, v3, v1);
    Heap_FreeToHeap(v0);
}

static int ov84_0223D730(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    if (ov84_0223EF4C(param0) == 1) {
        return 4;
    }

    v0 = Menu_ProcessInput(param0->unk_158);

    if (v0 == 0xffffffff) {
        if (ov84_0223D1F4(param0) == 1) {
            v0 = Menu_ProcessExternalInput(param0->unk_158, 0);
            param0->unk_490 = 1;
        }
    }

    switch (v0) {
    case 0xffffffff: {
        u8 v1 = Menu_GetLastAction(param0->unk_158);

        if (v1 == MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 18);
        } else if (v1 == MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -18);
        }
    } break;
    case 0xfffffffe:
        ov84_02240B34(param0, 1);
        ov84_0223FD84(param0);

        if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) {
            ov84_0223D7E8(param0, 0);
        }

        return 1;
    default: {
        UnkFuncPtr_ov84_0223D730 v2 = (UnkFuncPtr_ov84_0223D730)v0;
        return v2(param0);
    }
    }

    return 4;
}

static void ov84_0223D7E8(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    if (param1 == 0) {
        Bg_LoadToTilemapRect(param0->unk_00, 1, Unk_ov84_02241064, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(param0->unk_E0[7], 1);
    } else {
        Bg_LoadToTilemapRect(param0->unk_00, 1, Unk_ov84_02241096, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(param0->unk_E0[7], 0);
    }

    Bg_ScheduleTilemapTransfer(param0->unk_00, 1);
}

const u32 ov84_0223D84C(u32 param0)
{
    return Unk_ov84_02241034[param0];
}

static int ov84_0223D858(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkFuncPtr_02069238 v0;
    s32 v1;

    ov84_0223FD84(param0);

    v1 = Item_LoadParam(param0->unk_C4->unk_66, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_6);
    v0 = (UnkFuncPtr_02069238)sub_020683F4(2, v1);

    if (v0 != NULL) {
        u32 v2 = v0(param0->unk_C4->unk_70);

        if (v2 != 0) {
            sub_0207CD34(param0->unk_CC, param0->unk_3F8, param0->unk_C4->unk_66, v2, HEAP_ID_6);
            Window_FillTilemap(&param0->unk_04[6], 15);
            Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);
            param0->unk_426 = ov84_022400A0(param0);

            return 12;
        }
    }

    return ov84_0223D94C(param0);
}

static int ov84_0223D8EC(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->unk_04[6], 0);
            Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
            ov84_02240B34(param0, 1);

            if (param0->unk_C4->unk_65 == 3) {
                return 23;
            } else {
                return 1;
            }
        }
    }

    return 12;
}

static int ov84_0223D94C(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    param0->unk_483 = 0;

    if (v0->unk_08 == 3) {
        param0->unk_484 = (u32)ov84_0223DA14;
        return 13;
    }

    if (sub_0207CC10(param0->unk_C4->saveData, param0->unk_3F8, param0->unk_C4->unk_66, 6) == 1) {
        Window_FillTilemap(&param0->unk_04[6], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);
        param0->unk_426 = ov84_022400A0(param0);
        return 12;
    }

    if (ov84_0223DBF4(param0, param0->unk_C4->unk_66) == 1) {
        param0->unk_484 = (u32)ov84_0223DDD0;
        return 13;
    }

    sub_0208C120(1, HEAP_ID_6);
    param0->unk_C4->unk_68 = 0;

    return 24;
}

static int ov84_0223DA04(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkFuncPtr_ov84_0223DA04 v0 = (UnkFuncPtr_ov84_0223DA04)param0->unk_484;
    return v0(param0);
}

static int ov84_0223DA14(UnkStruct_ov84_0223B5A0 *param0)
{
    switch (param0->unk_483) {
    case 0: {
        u16 v0 = Item_MoveForTMHM(param0->unk_C4->unk_66);

        StringTemplate_SetMoveName(param0->unk_118, 0, v0);

        if (Item_IsHMMove(v0) == 1) {
            MessageLoader_GetStrbuf(param0->unk_114, 59, param0->unk_3F8);
        } else {
            MessageLoader_GetStrbuf(param0->unk_114, 58, param0->unk_3F8);
        }
    }
        Window_FillTilemap(&param0->unk_04[6], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);

        param0->unk_426 = ov84_022400A0(param0);
        param0->unk_483 = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_426) != 0) {
            break;
        }

        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 60);

            Window_FillTilemap(&param0->unk_04[6], 15);
            StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
            Strbuf_Free(v1);

            param0->unk_426 = ov84_022400A0(param0);
            param0->unk_483 = 2;
        }
        break;
    case 2:
        if (Text_IsPrinterActive(param0->unk_426) != 0) {
            break;
        }

        ov84_02240120(param0);
        param0->unk_483 = 3;
        break;
    case 3: {
        u32 v2;

        if (ov84_0223EF4C(param0) == 1) {
            break;
        }

        if (ov84_0223D1F4(param0) == 1) {
            v2 = Menu_ProcessExternalInputAndHandleExit(param0->unk_158, 0, 6);
            param0->unk_490 = 1;
        } else {
            v2 = Menu_ProcessInputAndHandleExit(param0->unk_158, 6);
        }

        switch (v2) {
        case 0:
            sub_0208C120(1, HEAP_ID_6);
            ov84_0223D7E8(param0, 0);
            param0->unk_C4->unk_68 = 0;
            return 24;
        case 0xffffffff: {
            u8 v3 = Menu_GetLastAction(param0->unk_158);

            if (v3 == MENU_ACTION_MOVE_UP) {
                ov84_0223EB08(param0, 18);
            } else if (v3 == MENU_ACTION_MOVE_DOWN) {
                ov84_0223EB08(param0, -18);
            }
        } break;
        case 0xfffffffe:
            Window_EraseMessageBox(&param0->unk_04[6], 0);
            Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
            ov84_02240B34(param0, 1);
            ov84_0223D7E8(param0, 0);
            return 1;
        }
    } break;
    }

    return 13;
}

static BOOL ov84_0223DBF4(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    Strbuf *v0;

    StringTemplate_SetPlayerName(param0->unk_118, 0, param0->unk_CC);
    StringTemplate_SetItemName(param0->unk_118, 1, param1);

    if (param1 == ITEM_BLACK_FLUTE) {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_114, 64);
        SetBlackWhiteFluteActive(param0, FLUTE_FACTOR_USED_BLACK);
        param0->unk_488 = 0;
    } else if (param1 == ITEM_WHITE_FLUTE) {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_114, 63);
        SetBlackWhiteFluteActive(param0, FLUTE_FACTOR_USED_WHITE);
        param0->unk_488 = 0;
    } else if ((param1 == ITEM_MAX_REPEL) || (param1 == ITEM_SUPER_REPEL) || (param1 == ITEM_REPEL)) {
        v0 = ov84_0223DC9C(param0, param1);
    } else {
        return 0;
    }

    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v0);
    Strbuf_Free(v0);
    return 1;
}

static Strbuf *ov84_0223DC9C(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    s32 stepCount;
    u8 *v1;

    // Repel is still active, show "effects still lingered" message
    if (SpecialEncounter_RepelStepsEmpty(ov84_0223B9E4(param0)) == 0) {
        param0->unk_488 = 0;
        return MessageLoader_GetNewStrbuf(param0->unk_114, 62);
    }

    stepCount = Item_LoadParam(param1, ITEM_PARAM_HOLD_EFFECT_PARAM, HEAP_ID_6);
    SetRepelSteps(param0, (u8)stepCount);
    param0->unk_488 = 1;
    Sound_PlayEffect(SEQ_SE_DP_CARD2);

    return MessageLoader_GetNewStrbuf(param0->unk_114, 61);
}

static void ov84_0223DCF8(UnkStruct_ov84_0223B5A0 *param0)
{
    Pocket_TryRemoveItem(param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_00, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09 - 3, param0->unk_C4->unk_66, param0->unk_488, HEAP_ID_6);
    ListMenu_Free(param0->unk_15C, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04);
    StringList_Free(param0->unk_160);

    ov84_0223BFBC(param0);
    ov84_0223C194(&param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09);
    ov84_0223C1D0(&param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, &param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09, 9);
    ov84_0223C224(param0, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04);
}

static int ov84_0223DDD0(UnkStruct_ov84_0223B5A0 *param0)
{
    switch (param0->unk_483) {
    case 0:
        Window_FillTilemap(&param0->unk_04[6], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);
        param0->unk_426 = ov84_022400A0(param0);
        param0->unk_483 = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_426) != 0) {
            break;
        }

        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->unk_04[6], 0);
            param0->unk_483 = 2;
        }

        break;
    case 2:
        if (param0->unk_488 != 0) {
            ov84_0223DCF8(param0);
        }

        Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
        ov84_02240B34(param0, 1);

        return 1;
    }

    return 13;
}

static int ov84_0223DE78(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223FD84(param0);
    sub_0208C120(1, HEAP_ID_6);
    param0->unk_C4->unk_68 = 1;

    return 24;
}

static int ov84_0223DE98(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223FD84(param0);
    sub_0208C120(1, HEAP_ID_6);
    param0->unk_C4->unk_68 = 3;

    return 24;
}

static int ov84_0223DEB8(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223FD84(param0);
    param0->unk_488 = 1;
    if (Pocket_GetItemQuantity(param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_00, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09 - 3, param0->unk_C4->unk_66, HEAP_ID_6) == 1) {
        ov84_0223FFF0(param0);
        return 8;
    }

    ov84_0223FE94(param0);
    ov84_02240CF0(param0, 0);

    return 7;
}

static int ov84_0223DF0C(UnkStruct_ov84_0223B5A0 *param0)
{
    if (ov84_0223EFD0(param0, &param0->unk_488, param0->unk_48A) == 1) {
        ov84_0223FF44(param0);
        return 7;
    }

    if (ov84_0223D1F4(param0) == 1) {
        ov84_0223FFF0(param0);
        ov84_02240D3C(param0, 0);
        param0->unk_490 = 1;

        return 8;
    }

    switch (sub_0208C15C(&param0->unk_488, param0->unk_48A)) {
    case 0:
        break;
    case 1:
        ov84_0223EB08(param0, 18);
        ov84_0223FF44(param0);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 7;
    case 2:
        ov84_0223EB08(param0, -18);
        ov84_0223FF44(param0);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 7;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        ov84_0223FFF0(param0);
        ov84_02240D3C(param0, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return 8;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov84_0223FFC0(param0);
        ov84_02240D3C(param0, 0);
        ov84_02240B34(param0, 1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return 1;
    }

    return 7;
}

static int ov84_0223DFF8(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        ov84_02240120(param0);
        return 9;
    }

    return 8;
}

static int ov84_0223E01C(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    if (ov84_0223EF4C(param0) == 1) {
        return 9;
    }

    if (ov84_0223D1F4(param0) == 1) {
        v0 = Menu_ProcessExternalInputAndHandleExit(param0->unk_158, 0, 6);
        param0->unk_490 = 1;
    } else {
        v0 = Menu_ProcessInputAndHandleExit(param0->unk_158, 6);
    }

    switch (v0) {
    case 0: {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 53);

        if (param0->unk_488 == 1) {
            StringTemplate_SetItemName(param0->unk_118, 0, param0->unk_C4->unk_66);
        } else {
            StringTemplate_SetItemNamePlural(param0->unk_118, 0, param0->unk_C4->unk_66);
        }

        StringTemplate_SetNumber(param0->unk_118, 1, param0->unk_488, 3, 0, 1);
        StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
        Strbuf_Free(v1);
    }
        Window_FillTilemap(&param0->unk_04[6], 15);
        param0->unk_426 = ov84_022400A0(param0);
        return 10;

    case 0xffffffff: {
        u8 v2 = Menu_GetLastAction(param0->unk_158);

        if (v2 == MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 18);
        } else if (v2 == MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -18);
        }
    } break;
    case 0xfffffffe:
        Window_EraseMessageBox(&param0->unk_04[6], 0);
        Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
        ov84_02240B34(param0, 1);
        return 1;
    }

    return 9;
}

static int ov84_0223E158(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) != 0) {
        return 10;
    }

    param0->unk_479 = 1;
    ov84_0223DCF8(param0);
    Window_ScheduleCopyToVRAM(&param0->unk_04[6]);

    return 11;
}

static int ov84_0223E18C(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            param0->unk_479 = 0;
            Window_EraseMessageBox(&param0->unk_04[6], 0);
            Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
            ov84_02240B34(param0, 1);

            return 1;
        }
    }

    return 11;
}

static int ov84_0223E1E4(UnkStruct_ov84_0223B5A0 *param0)
{
    Bag_RegisterItem(param0->unk_C8, param0->unk_C4->unk_66);
    ListMenu_Draw(param0->unk_15C);
    ov84_0223FD84(param0);
    Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
    ov84_02240B34(param0, 1);

    return 1;
}

static int ov84_0223E220(UnkStruct_ov84_0223B5A0 *param0)
{
    Bag_RegisterItem(param0->unk_C8, 0);
    ListMenu_Draw(param0->unk_15C);
    ov84_0223FD84(param0);
    Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
    ov84_02240B34(param0, 1);

    return 1;
}

static int ov84_0223E254(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223FD84(param0);
    sub_0208C120(1, HEAP_ID_6);
    ov84_0223D7E8(param0, 0);
    param0->unk_C4->unk_68 = 2;

    return 24;
}

static int ov84_0223E27C(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223D0FC(param0);
    if (ov84_0223ED14(param0) == 1) {
        return 14;
    }

    if (ov84_0223C750(param0) == 1) {
        return 2;
    }

    if (ov84_0223CD40(param0) == 1) {
        return 2;
    }

    {
        u8 v0 = ov84_0223C5B8(param0);

        if (v0 == 1) {
            if (Item_LoadParam(param0->unk_C4->unk_66, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_6) != 0) {
                Strbuf *v1;

                Window_FillTilemap(&param0->unk_04[6], 15);
                Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);
                StringTemplate_SetItemName(param0->unk_118, 0, param0->unk_C4->unk_66);

                v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 46);

                StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
                Strbuf_Free(v1);
                param0->unk_426 = ov84_022400A0(param0);
                ov84_02240B34(param0, 2);

                return 15;
            }

            param0->unk_C4->unk_68 = 4;
            sub_0208C120(1, HEAP_ID_6);

            return 24;
        } else if (v0 == 3) {
            param0->unk_C4->unk_68 = 4;
            return 24;
        }
    }
    return 14;
}

static int ov84_0223E36C(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->unk_04[6], 0);
            Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
            ov84_02240B34(param0, 1);

            return 14;
        }
    }

    return 15;
}

static int ov84_0223E3BC(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223D0FC(param0);
    if (ov84_0223ED14(param0) == 1) {
        return 16;
    }

    if (ov84_0223C750(param0) == 1) {
        return 2;
    }

    if (ov84_0223CD40(param0) == 1) {
        return 2;
    }

    {
        u8 v0 = ov84_0223C5B8(param0);

        if (v0 == 1) {
            Strbuf *v1;

            ov84_02240248(param0, 0);
            Window_FillTilemap(&param0->unk_04[6], 15);
            Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);
            StringTemplate_SetItemName(param0->unk_118, 0, param0->unk_C4->unk_66);
            ov84_02240B34(param0, 2);

            param0->unk_48C = Item_LoadParam(param0->unk_C4->unk_66, ITEM_PARAM_PRICE, HEAP_ID_6);

            if ((Item_LoadParam(param0->unk_C4->unk_66, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_6) != 0) || (param0->unk_48C == 0)) {
                v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 74);
                StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
                Strbuf_Free(v1);

                param0->unk_426 = ov84_022400A0(param0);
                return 22;
            }

            param0->unk_488 = 1;
            param0->unk_48C >>= 1;

            if (Pocket_GetItemQuantity(param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_00, param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_09 - 3, param0->unk_C4->unk_66, 6) == 1) {
                v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 76);
                StringTemplate_SetNumber(param0->unk_118, 0, param0->unk_488 * param0->unk_48C, 6, 0, 1);
                StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
                Strbuf_Free(v1);

                param0->unk_426 = ov84_022400A0(param0);
                return 19;
            }

            v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 75);
            StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
            Strbuf_Free(v1);

            param0->unk_426 = ov84_022400A0(param0);
            return 17;
        } else if (v0 == 3) {
            return 24;
        }
    }

    return 16;
}

static int ov84_0223E588(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        if (param0->unk_48A > 99) {
            param0->unk_48A = 99;
        }

        ov84_02240148(param0, 0);
        ov84_02240CF0(param0, 1);
        return 18;
    }

    return 17;
}

static int ov84_0223E5C4(UnkStruct_ov84_0223B5A0 *param0)
{
    if (ov84_0223EFD0(param0, &param0->unk_488, param0->unk_48A) == 1) {
        ov84_02240148(param0, 1);
        return 18;
    }
    if (ov84_0223D1F4(param0) == 1) {
        Strbuf *v0;

        ov84_02240D3C(param0, 0);
        Window_EraseStandardFrame(&param0->unk_04[7], 1);
        Window_FillTilemap(&param0->unk_04[6], 15);
        v0 = MessageLoader_GetNewStrbuf(param0->unk_114, 76);
        StringTemplate_SetNumber(param0->unk_118, 0, param0->unk_488 * param0->unk_48C, 6, 0, 1);
        StringTemplate_Format(param0->unk_118, param0->unk_3F8, v0);
        Strbuf_Free(v0);
        param0->unk_426 = ov84_022400A0(param0);
        param0->unk_490 = 1;

        return 19;
    }

    switch (sub_0208C15C(&param0->unk_488, param0->unk_48A)) {
    case 0:
        break;
    case 1:
        ov84_0223EB08(param0, 18);
        ov84_02240148(param0, 1);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 18;
    case 2:
        ov84_0223EB08(param0, -18);
        ov84_02240148(param0, 1);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 18;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Strbuf *v1;

        ov84_02240D3C(param0, 0);
        Window_EraseStandardFrame(&param0->unk_04[7], 1);
        Window_FillTilemap(&param0->unk_04[6], 15);

        v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 76);

        StringTemplate_SetNumber(param0->unk_118, 0, param0->unk_488 * param0->unk_48C, 6, 0, 1);
        StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
        Strbuf_Free(v1);
        param0->unk_426 = ov84_022400A0(param0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return 19;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->unk_48C = 0;

        ov84_02240D3C(param0, 0);
        Window_EraseStandardFrame(&param0->unk_04[8], 1);
        Window_EraseStandardFrame(&param0->unk_04[7], 1);
        Window_EraseMessageBox(&param0->unk_04[6], 0);
        Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
        ov84_02240B34(param0, 1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return 16;
    }

    return 18;
}

static int ov84_0223E7A8(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        ov84_02240120(param0);

        return 20;
    }

    return 19;
}

static int ov84_0223E7CC(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    if (ov84_0223EF4C(param0) == 1) {
        return 20;
    }

    if (ov84_0223D1F4(param0) == 1) {
        v0 = Menu_ProcessExternalInputAndHandleExit(param0->unk_158, 0, 6);
        param0->unk_490 = 1;
    } else {
        v0 = Menu_ProcessInputAndHandleExit(param0->unk_158, 6);
    }

    switch (v0) {
    case 0: {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 77);

        if (param0->unk_488 > 1) {
            StringTemplate_SetItemNamePlural(param0->unk_118, 0, param0->unk_C4->unk_66);
        } else {
            StringTemplate_SetItemName(param0->unk_118, 0, param0->unk_C4->unk_66);
        }

        StringTemplate_SetNumber(param0->unk_118, 1, param0->unk_488 * param0->unk_48C, 6, 0, 1);
        StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
        Strbuf_Free(v1);
    }
        Window_FillTilemap(&param0->unk_04[6], 15);
        param0->unk_426 = ov84_022400A0(param0);
        return 21;
    case 0xffffffff: {
        u8 v2 = Menu_GetLastAction(param0->unk_158);

        if (v2 == MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 18);
        } else if (v2 == MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -18);
        }
    } break;
    case 0xfffffffe:
        param0->unk_48C = 0;
        Window_EraseStandardFrame(&param0->unk_04[8], 1);
        Window_EraseMessageBox(&param0->unk_04[6], 0);
        Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
        ov84_02240B34(param0, 1);

        return 16;
    }

    return 20;
}

static int ov84_0223E920(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) != 0) {
        return 21;
    }

    Sound_PlayEffect(SEQ_SE_DP_REGI);
    TrainerInfo_GiveMoney(param0->unk_CC, param0->unk_488 * param0->unk_48C);

    if (param0->unk_488 == 1) {
        if (param0->unk_C4->unk_75 != 0xff) {
            param0->unk_C4->unk_75++;
        }
    } else {
        param0->unk_C4->unk_75 = 2;
    }

    ov84_02240248(param0, 1);
    param0->unk_479 = 1;
    ov84_0223DCF8(param0);
    Window_ScheduleCopyToVRAM(&param0->unk_04[6]);

    return 22;
}

static int ov84_0223E9B0(UnkStruct_ov84_0223B5A0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_426) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            param0->unk_479 = 0;
            param0->unk_48C = 0;

            Window_EraseStandardFrame(&param0->unk_04[8], 1);
            Window_EraseMessageBox(&param0->unk_04[6], 0);
            Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
            ov84_02240B34(param0, 1);

            return 16;
        }
    }

    return 22;
}

static int ov84_0223EA18(UnkStruct_ov84_0223B5A0 *param0)
{
    ov84_0223D0FC(param0);

    if (ov84_0223ED14(param0) == 1) {
        return 23;
    }

    if (ov84_0223C750(param0) == 1) {
        return 2;
    }

    if (ov84_0223CD40(param0) == 1) {
        return 2;
    }

    {
        u8 v0 = ov84_0223C5B8(param0);

        if (v0 == 1) {
            if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 0) {
                if (Item_LoadParam(param0->unk_C4->unk_66, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_6) != 13) {
                    sub_0207CD34(param0->unk_CC, param0->unk_3F8, param0->unk_C4->unk_66, -1, HEAP_ID_6);
                    Window_FillTilemap(&param0->unk_04[6], 15);
                    Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 0, 1024 - 9 - (18 + 12), 12);

                    param0->unk_426 = ov84_022400A0(param0);
                    return 12;
                }
            }

            param0->unk_C4->unk_68 = 0;
            sub_0208C120(1, HEAP_ID_6);
            return 24;
        } else if (v0 == 3) {
            param0->unk_C4->unk_68 = 5;
            return 24;
        }
    }
    return 23;
}

static void ov84_0223EB08(UnkStruct_ov84_0223B5A0 *param0, s8 param1)
{
    s16 v0 = Bg_GetRotation(param0->unk_00, 7);

    v0 += param1;

    if (v0 >= 360) {
        v0 -= 360;
    } else if (v0 < 0) {
        v0 += 360;
    }

    Bg_ScheduleAffineRotation(param0->unk_00, 7, 0, v0);
    param0->unk_49A = v0;
}

static BOOL ov84_0223EB54(void)
{
    int v0 = TouchScreen_CheckPressedHitTableID(Unk_ov84_02240EA8);

    if (v0 == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov84_0223EB6C(void)
{
    int v0 = TouchScreen_CheckHeldHitTableID(Unk_ov84_02240EB4);

    if (v0 == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov84_0223EB84(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    if (ov84_0223EB54() == 1) {
        param0->unk_492 = 1;
        param0->unk_498 = 0;
        param0->unk_494 = 0;
        param0->unk_49E = gSystem.touchX;
        param0->unk_4A0 = gSystem.touchY;
    }

    if (param0->unk_492 == 1) {
        if (ov84_0223EB6C() == 1) {
            s32 v0, v1;

            v0 = CalcDotProduct2D(128 - param0->unk_49E, 80 - param0->unk_4A0, 128 - gSystem.touchX, 80 - gSystem.touchY, 80);
            v1 = CalcRadialAngle(80, v0 * 2);
            v1 = ((v1 << 8) / 182) >> 8;
            param0->unk_49A += v1;

            if (param0->unk_49A < 0) {
                param0->unk_49A += 360;
            } else if (param0->unk_49A >= 360) {
                param0->unk_49A -= 360;
            }

            Bg_ScheduleAffineRotation(param0->unk_00, 7, 0, param0->unk_49A);
            {
                s32 v2;
                s32 v3;

                v2 = 2 * 80 * 3.14;
                v3 = v2 / param1;
                if (v0 > 0) {
                    if (param0->unk_498 < 0) {
                        param0->unk_498 = v0 / v3;
                        param0->unk_494 = v0 % v3;
                    } else {
                        param0->unk_498 += ((param0->unk_494 + v0) / v3);
                        param0->unk_494 = (param0->unk_494 + v0) % v3;
                    }
                } else if (v0 < 0) {
                    if (param0->unk_498 > 0) {
                        param0->unk_498 = v0 / v3;
                        param0->unk_494 = v0 % v3;
                    } else {
                        param0->unk_498 += ((param0->unk_494 + v0) / v3);
                        param0->unk_494 = (param0->unk_494 + v0) % v3;
                    }
                }
            }
            param0->unk_49E = gSystem.touchX;
            param0->unk_4A0 = gSystem.touchY;
        } else {
            param0->unk_492 = 0;
            param0->unk_498 = 0;
        }

        return 1;
    }

    return 0;
}

static BOOL ov84_0223ED14(UnkStruct_ov84_0223B5A0 *param0)
{
    BOOL v0 = ov84_0223EB84(param0, 36);

    if (param0->unk_498 > 0) {
        if (ov84_0223ED64(param0, PAD_KEY_UP) == 1) {
            param0->unk_498--;
        } else {
            param0->unk_498 = 0;
        }

        return 1;
    } else if (param0->unk_498 < 0) {
        if (ov84_0223ED64(param0, PAD_KEY_DOWN) == 1) {
            param0->unk_498++;
        } else {
            param0->unk_498 = 0;
        }

        return 1;
    }

    return v0;
}

static BOOL ov84_0223ED64(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    u16 v0 = param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06;
    u16 v1 = param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04;

    ListMenu_TestInput(param0->unk_15C, NULL, v0, v1, 1, param1, &v0, &v1);

    if ((v0 == param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06) && (v1 == param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04)) {
        return 0;
    }

    ManagedSprite_SetPositionXY(param0->unk_E0[4], 177, 24 + (v1 - 1) * 16);

    param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06 = v0;
    param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04 = v1;

    return 1;
}

static BOOL ov84_0223EE30(UnkStruct_ov84_0223B5A0 *param0)
{
    BOOL v0 = ov84_0223EB84(param0, 36);

    if (param0->unk_498 > 0) {
        if (ov84_0223EE80(param0, PAD_KEY_UP) == 1) {
            param0->unk_498--;
        } else {
            param0->unk_498 = 0;
        }

        return 1;
    } else if (param0->unk_498 < 0) {
        if (ov84_0223EE80(param0, PAD_KEY_DOWN) == 1) {
            param0->unk_498++;
        } else {
            param0->unk_498 = 0;
        }

        return 1;
    }

    return v0;
}

static BOOL ov84_0223EE80(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    u16 v0 = param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06;
    u16 v1 = param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04;

    ListMenu_TestInput(param0->unk_15C, NULL, v0, v1, 1, param1, &v0, &v1);

    if ((v0 == param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06) && (v1 == param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04)) {
        return 0;
    }

    ManagedSprite_SetPositionXY(param0->unk_E0[5], 177, 24 + (v1 - 1) * 16 - 8);

    param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_06 = v0;
    param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04 = v1;

    return 1;
}

static BOOL ov84_0223EF4C(UnkStruct_ov84_0223B5A0 *param0)
{
    BOOL v0 = ov84_0223EB84(param0, 18);

    if (param0->unk_498 > 0) {
        if (ov84_0223EF9C(param0, 2) == 1) {
            param0->unk_498--;
        } else {
            param0->unk_498 = 0;
        }

        return 1;
    } else if (param0->unk_498 < 0) {
        if (ov84_0223EF9C(param0, 3) == 1) {
            param0->unk_498++;
        } else {
            param0->unk_498 = 0;
        }

        return 1;
    }

    return v0;
}

static BOOL ov84_0223EF9C(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    u8 v0 = Menu_GetCursorPos(param0->unk_158);

    Menu_ProcessExternalInput(param0->unk_158, param1);

    if (v0 == Menu_GetCursorPos(param0->unk_158)) {
        return 0;
    }

    return 1;
}

static BOOL ov84_0223EFD0(UnkStruct_ov84_0223B5A0 *param0, s16 *param1, u16 param2)
{
    BOOL v0;
    s16 v1;

    v0 = ov84_0223EB84(param0, 18);
    v1 = *param1;

    if (param0->unk_498 > 0) {
        param0->unk_498--;
        *param1 += 1;

        if (*param1 > param2) {
            *param1 = 1;
        }

        if (*param1 == v1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 1;
    } else if (param0->unk_498 < 0) {
        param0->unk_498++;
        *param1 -= 1;

        if (*param1 <= 0) {
            *param1 = param2;
        }

        if (*param1 == v1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 1;
    }

    return v0;
}
