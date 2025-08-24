#include "overlay084/ov84_0223B5A0.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"

#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/const_ov84_02241130.h"
#include "overlay084/ov84_0223B5A0.h"
#include "overlay084/ov84_0223F040.h"
#include "overlay084/ov84_022403F4.h"

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "item_use_functions.h"
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
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

typedef struct PocketButtonCoordinates {
    const u8 *buttonSprite;
    const TouchScreenRect *buttonTouchRect;
} PocketButtonCoordinates;

typedef int (*ItemUseCallback)(BagController *);

static void ov84_0223B9AC(BagController *param0);
static void ov84_0223BA14(void *param0);
static void ov84_0223BA3C(void);
static void ov84_0223BA5C(BgConfig *param0);
static void ov84_0223BBC4(BgConfig *param0);
static void ov84_0223BC1C(BagController *param0);
static u8 ov84_0223C5B8(BagController *param0);
static u8 ov84_0223C750(BagController *param0);
static int ov84_0223D730(BagController *param0);
static void ov84_0223BFBC(BagController *param0);
static void ov84_0223C194(u16 *param0, u16 *param1, u8 param2);
static void ov84_0223C1D0(u16 *param0, u16 *param1, u8 param2, u8 param3);
static void ov84_0223C224(BagController *param0, u16 param1, u16 param2);
static void ov84_0223C2AC(ListMenu *param0, u32 param1, u8 param2);
static void ov84_0223C3B8(ListMenu *param0, u32 param1, u8 param2);
static void ov84_0223C4E0(BagController *param0);
static void ov84_0223BE24(BagController *param0);
static u8 ov84_02240C30(BagController *param0, u8 param1);
static void ov84_0223C720(BagController *param0);
static int ov84_0223CDB0(BagController *param0);
static void ov84_0223D0FC(BagController *param0);
static void ov84_0223CF20(BagController *param0, u8 param1, u8 param2);
static u8 ov84_0223CD40(BagController *param0);
static int ov84_0223CE08(BagController *param0);
static u8 ov84_0223CBD8(BagController *param0);
static void ov84_0223CF20(BagController *param0, u8 param1, u8 param2);
static void ov84_0223D0BC(BagController *param0);
static u8 ov84_0223D244(BagController *param0);
static void ov84_0223D2A0(BagController *param0);
static u8 ov84_0223D2F8(BagController *param0);
static void ov84_0223D42C(BagController *param0);
static void ov84_0223D484(BagController *param0);
static void ov84_0223D4E8(BagController *param0);
static void ov84_0223C848(BagController *param0);
static void ov84_0223C868(BagController *param0);
static void ov84_0223C89C(BagController *param0);
static u8 ov84_0223C920(BagController *param0);
static u8 ov84_0223CA5C(BagController *param0);
static u8 ov84_0223CE60(BagController *param0);
static u8 ov84_0223CBD8(BagController *param0);
static void ov84_0223BDB4(BagController *param0);
static void ov84_0223D5AC(BagController *param0);
static void ov84_0223C158(BagController *param0);
static void ov84_0223C178(BagController *param0);
static int ov84_0223D858(BagController *param0);
static int ov84_0223C51C(BagController *param0);
static int ov84_0223E3BC(BagController *param0);
static int ov84_0223E9B0(BagController *param0);
static int ov84_0223E588(BagController *param0);
static int ov84_0223E5C4(BagController *param0);
static int ov84_0223E7A8(BagController *param0);
static int ov84_0223E7CC(BagController *param0);
static int ov84_0223E920(BagController *param0);
static int ov84_0223D8EC(BagController *param0);
static int ov84_0223DE78(BagController *param0);
static int ov84_0223DE98(BagController *param0);
static int ov84_0223DEB8(BagController *param0);
static int ov84_0223DF0C(BagController *param0);
static int ov84_0223DFF8(BagController *param0);
static int ov84_0223E01C(BagController *param0);
static int ov84_0223E158(BagController *param0);
static int ov84_0223E18C(BagController *param0);
static int ov84_0223E254(BagController *param0);
static int ov84_0223E1E4(BagController *param0);
static int ov84_0223E220(BagController *param0);
static int ov84_0223E27C(BagController *param0);
static int ov84_0223E36C(BagController *param0);
static int ov84_0223EA18(BagController *param0);
static void ov84_0223BEAC(BagController *param0);
static void ov84_0223BF68(BagController *param0);
static int ov84_0223D94C(BagController *param0);
static int ov84_0223DA04(BagController *param0);
static int ov84_0223DA14(BagController *param0);
static BOOL ov84_0223DBF4(BagController *param0, u16 param1);
static Strbuf *ov84_0223DC9C(BagController *param0, u16 param1);
static void ov84_0223DCF8(BagController *param0);
static int ov84_0223DDD0(BagController *param0);
static void ov84_0223DCF8(BagController *param0);
static void ov84_0223D7E8(BagController *param0, u8 param1);
static BOOL ov84_0223D1F4(BagController *param0);
static void ov84_0223CFB0(BagController *param0, u8 param1);
static void ov84_0223D014(BagController *param0);
static void ov84_0223EB08(BagController *param0, s8 param1);
static BOOL ov84_0223EF4C(BagController *param0);
static BOOL ov84_0223EB84(BagController *param0, u16 param1);
static BOOL ov84_0223ED14(BagController *param0);
static BOOL ov84_0223EE30(BagController *param0);
static BOOL ov84_0223EFD0(BagController *param0, s16 *param1, u16 param2);
static BOOL ov84_0223ED64(BagController *param0, u16 param1);
static BOOL ov84_0223EE80(BagController *param0, u16 param1);
static BOOL ov84_0223EF9C(BagController *param0, u8 param1);

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

static const PocketButtonCoordinates Unk_ov84_022410C8[] = {
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
    BagController *v0;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_6, 0x30000);

    v0 = ApplicationManager_NewData(appMan, sizeof(BagController), HEAP_ID_6);
    memset(v0, 0, sizeof(BagController));
    v0->bagCtx = ApplicationManager_Args(appMan);

    ov84_0223B9AC(v0);

    v0->bgConfig = BgConfig_New(HEAP_ID_6);
    v0->trainerGender = TrainerInfo_Gender(v0->trainerInfo);

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_6);
    SetAutorepeat(3, 8);

    ov84_0223BEAC(v0);
    ov84_0223BDB4(v0);
    ov84_0223C158(v0);
    ov84_0223BE24(v0);
    ov84_0223C720(v0);
    ov84_0223BA3C();
    ov84_0223BA5C(v0->bgConfig);
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
    ov84_0223C194(&v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].cursorScroll, &v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].cursorPos, v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].listEntryCount);
    ov84_0223C1D0(&v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].cursorScroll, &v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].cursorPos, v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].listEntryCount, 9);
    BagUI_InitSprites(v0);
    ov84_0223C224(v0, v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].cursorScroll, v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].cursorPos);

    if ((v0->bagCtx->mode == 4) || (v0->bagCtx->mode == 5)) {
        ov84_02240328(v0);
    }

    SetVBlankCallback(ov84_0223BA14, v0);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_BAG, SEQ_NONE, 0);
    NetworkIcon_Init();

    return 1;
}

int ov84_0223B76C(ApplicationManager *appMan, int *param1)
{
    BagController *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            if (v0->bagCtx->mode == 2) {
                *param1 = 16;
            } else if (v0->bagCtx->mode == 1) {
                *param1 = 14;
            } else if (v0->bagCtx->mode == 3) {
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
            if (v0->bagCtx->mode == 2) {
                *param1 = 16;
            } else if (v0->bagCtx->mode == 1) {
                *param1 = 14;
            } else if (v0->bagCtx->mode == 3) {
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
    BagUI_TickBtnShockwaveAnim(v0);
    BagUI_TickSpriteAnimations(v0);
    SpriteSystem_DrawSprites(v0->spriteMan);

    return 0;
}

int ov84_0223B900(ApplicationManager *appMan, int *param1)
{
    BagController *v0 = ApplicationManager_Data(appMan);

    BagUI_FreeSprites(v0);
    ov84_0223C4E0(v0);
    ov84_0223BF68(v0);
    ov84_0223F1DC(v0->windows);
    ov84_0223BBC4(v0->bgConfig);

    DisableTouchPad();
    VramTransfer_Free();

    ov84_0223FB50(v0);
    ov84_0223F238(v0);
    ov84_0223F800(v0);
    ov84_0223C178(v0);

    Strbuf_Free(v0->strBuffer);
    MessageLoader_Free(v0->moveNamesLoader);
    MessageLoader_Free(v0->itemNamesLoader);
    MessageLoader_Free(v0->bagStringsLoader);
    FontSpecialChars_Free(v0->specialChars);
    StringTemplate_Free(v0->strTemplate);
    NARC_dtor(v0->bagGraphicsNARC);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_6);
    SetAutorepeat(4, 8);

    return 1;
}

static void ov84_0223B9AC(BagController *param0)
{
    param0->bag = SaveData_GetBag(param0->bagCtx->saveData);
    param0->trainerInfo = SaveData_GetTrainerInfo(param0->bagCtx->saveData);
    param0->options = SaveData_GetOptions(param0->bagCtx->saveData);
}

static SpecialEncounter *ov84_0223B9E4(BagController *param0)
{
    return SaveData_GetSpecialEncounters(param0->bagCtx->saveData);
}

static void SetRepelSteps(BagController *param0, u8 stepCount)
{
    u8 *repelSteps = SpecialEncounter_GetRepelSteps(ov84_0223B9E4(param0));
    *repelSteps = stepCount;
}

static void SetBlackWhiteFluteActive(BagController *param0, u8 param1)
{
    SpecialEncounter_SetFluteFactor(ov84_0223B9E4(param0), param1);
}

static void ov84_0223BA14(void *param0)
{
    BagController *v0 = param0;

    Bg_RunScheduledUpdates(v0->bgConfig);
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
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x0,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }
    {
        BgTemplate v2 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x1,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
    }
    {
        BgTemplate v3 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x2,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v4 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x3,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v4, 0);
    }
    {
        BgTemplate v5 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x0,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v5, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }
    {
        BgTemplate v6 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x1,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v6, 0);
    }
    {
        BgTemplate v7 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x400,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x2,
            .areaOver = 0x0,
            .mosaic = FALSE,
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
    Heap_FreeExplicit(HEAP_ID_6, param0);
}

static void ov84_0223BC1C(BagController *param0)
{
    param0->bagGraphicsNARC = NARC_ctor(NARC_INDEX_GRAPHIC__PL_BAG_GRA, HEAP_ID_6);

    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 11, param0->bgConfig, 1, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 14, param0->bgConfig, 1, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 13, param0->bgConfig, 3, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 12, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 22, 0, 16 * 13 * 2, 32, HEAP_ID_6);
    Font_LoadScreenIndicatorsPalette(0, 11 * 32, HEAP_ID_6);
    LoadStandardWindowGraphics(param0->bgConfig, BG_LAYER_MAIN_0, 1024 - 9, 14, 0, HEAP_ID_6);
    LoadMessageBoxGraphics(param0->bgConfig, BG_LAYER_MAIN_0, 1024 - 9 - (18 + 12), 12, Options_Frame(param0->options), HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 15, param0->bgConfig, 5, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 16, 4, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 17, param0->bgConfig, 5, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 32, param0->bgConfig, 7, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 33, param0->bgConfig, 7, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 19, param0->bgConfig, 4, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 18, 4, 16 * 2 * 2, 0x20 * 2, HEAP_ID_6);
}

static void ov84_0223BDB4(BagController *param0)
{
    param0->bagStringsLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, HEAP_ID_6);
    param0->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_6);
    param0->strTemplate = StringTemplate_Default(HEAP_ID_6);
    param0->itemNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_6);
    param0->moveNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_6);
    param0->strBuffer = Strbuf_Init(256, HEAP_ID_6);
}

static void ov84_0223BE24(BagController *param0)
{
    u8 v0;

    param0->numPockets = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->bagCtx->accessiblePockets[v0].items != 0) {
            param0->numPockets++;
        }
    }
}

u16 ov84_0223BE5C(BagController *param0, u16 param1, u16 param2)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    if (param2 == 0) {
        return v0->items[param1].item;
    }

    return v0->items[param1].quantity;
}

static void ov84_0223BE84(MessageLoader *param0, Strbuf *param1, u16 param2, u32 param3)
{
    MessageLoader_GetStrbuf(param0, param2, param1);
}

static void ov84_0223BE94(MessageLoader *param0, Strbuf *param1, u16 param2, u32 param3)
{
    MessageLoader_GetStrbuf(param0, Item_MoveForTMHM(param2), param1);
}

static void ov84_0223BEAC(BagController *param0)
{
    BagApplicationPocket *v0;
    u16 v1, v2;

    param0->bagCtx->currPocketIdx = 0;
    v0 = param0->bagCtx->accessiblePockets;

    if (param0->bagCtx->bagCursor == NULL) {
        for (v1 = 0; v1 < 8; v1++) {
            if (v0[v1].items == NULL) {
                break;
            }

            v0[v1].cursorPos = 1;
            v0[v1].cursorScroll = 0;
        }

        return;
    }

    for (v1 = 0; v1 < 8; v1++) {
        u8 v3, v4;

        if (v0[v1].items == NULL) {
            break;
        }

        BagCursor_GetFieldPocketPosition(param0->bagCtx->bagCursor, v0[v1].pocketType, &v3, &v4);

        if (v3 == 0) {
            v3 = 1;
        }

        v0[v1].cursorPos = v3;
        v0[v1].cursorScroll = v4;
    }

    v2 = BagCursor_GetFieldPocket(param0->bagCtx->bagCursor);

    for (v1 = 0; v1 < 8; v1++) {
        if (v0[v1].items == NULL) {
            break;
        }

        if (v0[v1].pocketType == v2) {
            param0->bagCtx->currPocketIdx = (u8)v1;
        }
    }
}

static void ov84_0223BF68(BagController *param0)
{
    BagApplicationPocket *v0;
    u32 v1;

    if (param0->bagCtx->bagCursor == NULL) {
        return;
    }

    v0 = param0->bagCtx->accessiblePockets;

    for (v1 = 0; v1 < 8; v1++) {
        if (v0[v1].items == NULL) {
            break;
        }

        BagCursor_SetFieldPocketPosition(param0->bagCtx->bagCursor, v0[v1].pocketType, (u8)v0[v1].cursorPos, (u8)v0[v1].cursorScroll);
    }

    BagCursor_SetFieldPocket(param0->bagCtx->bagCursor, v0[param0->bagCtx->currPocketIdx].pocketType);
}

static void ov84_0223BFBC(BagController *param0)
{
    BagApplicationPocket *v0;
    u32 v1;

    v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];
    param0->itemListEntries = StringList_New(Unk_ov84_02241118[v0->pocketType] + 3, HEAP_ID_6);

    StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 32, 0xfffffffd);

    if (v0->pocketType == 3) {
        for (v1 = 0; v1 < Unk_ov84_02241118[v0->pocketType]; v1++) {
            if ((v0->items[v1].item == 0) || (v0->items[v1].quantity == 0)) {
                break;
            }

            ov84_0223BE94(param0->moveNamesLoader, param0->itemNames[v1], v0->items[v1].item, 6);
            StringList_AddFromStrbuf(param0->itemListEntries, param0->itemNames[v1], v1);
        }

        StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 32, 0xfffffffe);
        StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 32, 0xfffffffd);

        v0->listEntryCount = v1 + 3;
    } else {
        for (v1 = 0; v1 < Unk_ov84_02241118[v0->pocketType]; v1++) {
            if ((v0->items[v1].item == 0) || (v0->items[v1].quantity == 0)) {
                break;
            }

            ov84_0223BE84(param0->itemNamesLoader, param0->itemNames[v1], v0->items[v1].item, 6);
            StringList_AddFromStrbuf(param0->itemListEntries, param0->itemNames[v1], v1);
        }

        if (param0->bagCtx->mode != 5) {
            if (v0->pocketType == 4) {
                StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 32, 0xfffffffe);
            } else {
                StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 41, 0xfffffffe);
            }

            StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 32, 0xfffffffd);
            v0->listEntryCount = v1 + 3;
        } else {
            StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, 32, 0xfffffffd);
            v0->listEntryCount = v1 + 2;
        }
    }
}

static void ov84_0223C158(BagController *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 165; v0++) {
        param0->itemNames[v0] = Strbuf_Init(18, HEAP_ID_6);
    }
}

static void ov84_0223C178(BagController *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 165; v0++) {
        Strbuf_Free(param0->itemNames[v0]);
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

static void ov84_0223C224(BagController *param0, u16 param1, u16 param2)
{
    ListMenuTemplate v0;

    v0 = Unk_ov84_02240FA8;
    v0.choices = param0->itemListEntries;
    v0.window = &param0->windows[0];
    v0.count = param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount;
    v0.parent = (void *)param0;

    if ((param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 3) || (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 4)) {
        v0.textXOffset = (32 + 3);
    } else {
        v0.textXOffset = 0;
    }

    param0->itemList = ListMenu_New(&v0, param1, param2, HEAP_ID_6);
    Window_ScheduleCopyToVRAM(&param0->windows[0]);
}

static void ov84_0223C2AC(ListMenu *param0, u32 param1, u8 param2)
{
    BagController *v0 = (BagController *)ListMenu_GetAttribute(param0, 19);

    if (param2 != 1) {
        switch (v0->cursorSoundIdx) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_GASA01);
            break;
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_GASA02);
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_GASA03);
        }

        v0->cursorSoundIdx = (v0->cursorSoundIdx + 1) % 3;

        if ((v0->isScrollingWithBall == 0) || (ManagedSprite_IsAnimated(v0->sprites[0]) == 0)) {
            ManagedSprite_SetAnimationFrame(v0->sprites[0], 0);
            ManagedSprite_SetAnim(
                v0->sprites[0], 8 + v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx].pocketType);
        }
    }

    if (v0->isMovingItem == 1) {
        return;
    }

    Window_FillTilemap(&v0->windows[1], 0);

    if (param1 != 0xfffffffe) {
        BagApplicationPocket *v1;

        v1 = &v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx];
        ov84_0223F528(v0, v1->items[param1].item);
        BagUI_UpdateItemSprite(v0, v1->items[param1].item);
    } else {
        ov84_0223F528(v0, 0xffff);
        BagUI_UpdateItemSprite(v0, 0xffff);
    }

    if (v0->hideDescription == 0) {
        Window_ScheduleCopyToVRAM(&v0->windows[1]);
    }
}

static void ov84_0223C3B8(ListMenu *param0, u32 param1, u8 param2)
{
    BagController *v0 = (BagController *)ListMenu_GetAttribute(param0, 19);
    BagApplicationPocket *v1 = &v0->bagCtx->accessiblePockets[v0->bagCtx->currPocketIdx];

    if ((v0->isMovingItem == 1) && (v0->movedItemID == param1)) {
        ListMenu_SetAltTextColors(param0, 8, 0, 9);
    } else {
        ListMenu_SetAltTextColors(param0, 1, 0, 2);
    }

    if (v1->pocketType == 7) {
        if ((param1 != 0xfffffffd) && (param1 != 0xfffffffe)) {
            if (Bag_GetRegisteredItem(v0->bag) == v1->items[param1].item) {
                ov84_0223FA44(v0, param2);
            }
        }
    } else if (v1->pocketType == 3) {
        if (param1 == 0xfffffffe) {
            ov84_0223F9F0(v0, param2);
        } else if (param1 != 0xfffffffd) {
            ov84_0223F8D0(v0, &v1->items[param1], param2);
        }
    } else if (v1->pocketType == 4) {
        if (param1 == 0xfffffffe) {
            ov84_0223F9F0(v0, param2);
        } else if (param1 != 0xfffffffd) {
            ov84_0223F94C(v0, &v1->items[param1], param2);
        }
    } else {
        if ((param1 != 0xfffffffd) && (param1 != 0xfffffffe)) {
            if ((v0->isMovingItem == 1) && (v0->movedItemID == param1)) {
                ov84_0223F81C(v0, v1->items[param1].quantity, param2, TEXT_COLOR(8, 9, 0));
            } else {
                ov84_0223F81C(v0, v1->items[param1].quantity, param2, TEXT_COLOR(1, 2, 0));
            }
        }
    }
}

static void ov84_0223C4E0(BagController *param0)
{
    ListMenu_Free(param0->itemList, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos);
    StringList_Free(param0->itemListEntries);
    param0->itemList = NULL;
}

static int ov84_0223C51C(BagController *param0)
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
            BagUI_SetHighlightSpritesPalette(param0, 2);
            Window_FillTilemap(&param0->windows[1], 0);
            Window_ClearAndCopyToVRAM(&param0->windows[1]);
            ov84_0223D5AC(param0);

            if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 3) {
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

static u8 ov84_0223C5B8(BagController *param0)
{
    BagApplicationPocket *v0;
    u32 v1;
    u16 v2, v3;

    v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];
    ListMenu_GetListAndCursorPos(param0->itemList, &v0->cursorScroll, &v0->cursorPos);

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        if (ov84_0223D244(param0) == 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return 2;
        }
    }

    v1 = ListMenu_ProcessInput(param0->itemList);
    ListMenu_GetListAndCursorPos(param0->itemList, &v2, &v3);

    if (v0->cursorPos != v3) {
        ManagedSprite_SetPositionXY(
            param0->sprites[4], 177, 24 + (v3 - 1) * 16);
    }

    v0->cursorScroll = v2;
    v0->cursorPos = v3;

    if (v1 == 0xffffffff) {
        if (ov84_0223D1F4(param0) == 1) {
            v1 = ListMenu_GetIndexOfChoice(param0->itemList, v2 + v3);
            param0->ballButtonAnimStep = 1;
        }
    }

    switch (v1) {
    case 0xffffffff: {
        u8 v4 = ListMenu_GetLastAction(param0->itemList);

        if (v4 == LIST_MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 36);
        } else if (v4 == LIST_MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -36);
        }
    } break;
    case 0xfffffffe:
        if (param0->bagCtx->mode == 5) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->bagCtx->selectedItem = 0;
        param0->bagCtx->exitCode = 5;
        App_StartScreenFade(TRUE, HEAP_ID_6);
        return 3;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->bagCtx->selectedItem = (u16)v0->items[v1].item;
        param0->selectedItemOwnedCount = (u16)v0->items[v1].quantity;
        return 1;
    }

    return 0;
}

static void ov84_0223C720(BagController *param0)
{
    param0->pocketSelectorIconsX = 6 + (90 - (10 * param0->numPockets)) / (param0->numPockets + 1);
    param0->pocketSelectorIconsSpacing = 10 + param0->pocketSelectorIconsX - 6;
}

static u8 ov84_0223C750(BagController *param0)
{
    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        if (param0->numPockets == 1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (param0->bagCtx->currPocketIdx != 0) {
            param0->pocketSelector.nextPocketIdx = param0->bagCtx->currPocketIdx - 1;
            param0->nextPocket = param0->bagCtx->currPocketIdx - 1;
        } else {
            param0->pocketSelector.nextPocketIdx = param0->numPockets - 1;
            param0->nextPocket = param0->numPockets - 1;
        }

        BagUI_StartMovingPocketHighlight(param0);
        param0->pocketSelector.nextPocketDirection = 0;
        ov84_0223C848(param0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        return 1;
    }
    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        if (param0->numPockets == 1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (param0->bagCtx->currPocketIdx + 1 < param0->numPockets) {
            param0->pocketSelector.nextPocketIdx = param0->bagCtx->currPocketIdx + 1;
            param0->nextPocket = param0->bagCtx->currPocketIdx + 1;
        } else {
            param0->pocketSelector.nextPocketIdx = 0;
            param0->nextPocket = 0;
        }

        BagUI_StartMovingPocketHighlight(param0);
        param0->pocketSelector.nextPocketDirection = 1;
        ov84_0223C848(param0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        return 1;
    }

    return 0;
}

static void ov84_0223C848(BagController *param0)
{
    ov84_0223C89C(param0);
    param0->pocketSelector.pocketChangeState = 3;
    param0->pocketSelector.unk_07_7 = 0;
}

static void ov84_0223C868(BagController *param0)
{
    if (param0->pocketSelector.nextPocketDirection != 2) {
        ov84_0223C89C(param0);
    } else {
        param0->pocketSelector.animStage = 2;
    }

    param0->pocketSelector.pocketChangeState = 0;
    param0->pocketSelector.unk_07_7 = 1;
}

static void ov84_0223C89C(BagController *param0)
{
    BagPocketSelector *v0 = &param0->pocketSelector;

    v0->animStage = 0;
    v0->animFrame = 0;
    v0->pocketChangeFrame = 0;
    v0->unk_07_0 = 0;
    v0->unk_07_4 = 0;

    ov84_0223C4E0(param0);
    Window_FillTilemap(&param0->windows[0], 0);
    Window_FillTilemap(&param0->windows[1], 0);
    Window_ScheduleCopyToVRAM(&param0->windows[0]);
    Window_ScheduleCopyToVRAM(&param0->windows[1]);
    ManagedSprite_SetDrawFlag(param0->sprites[4], 0);
    ManagedSprite_SetDrawFlag(param0->sprites[7], 0);
    ov84_0223F3AC(param0, param0->bagCtx->currPocketIdx, 0);
    ov84_0223CF20(param0, param0->bagCtx->currPocketIdx, 0);
}

static u8 ov84_0223C920(BagController *param0)
{
    BagPocketSelector *v0;
    int v1;
    u8 v2;
    u8 v3;

    v0 = &param0->pocketSelector;

    if (TouchScreen_Touched() == 0) {
        v0->unk_07_4 = 1;
    }

    v1 = ov84_0223CE08(param0);

    if ((v1 == 0xffffffff) || (v1 != v0->nextPocketIdx)) {
        v0->unk_07_0 = 1;
    }

    if (ov84_0223CA5C(param0) == 0) {
        if ((v0->unk_07_4 == 1) && (v1 != 0xffffffff)) {
            param0->bagCtx->currPocketIdx = v0->nextPocketIdx;

            if (v0->nextPocketIdx > (u8)v1) {
                v0->nextPocketDirection = 0;
                v0->animStage = 0;
                ov84_0223CF20(param0, v0->nextPocketIdx, 0);
                ov84_0223F3AC(param0, v0->nextPocketIdx, 0);
            } else if (v0->nextPocketIdx < (u8)v1) {
                v0->nextPocketDirection = 1;
                v0->animStage = 0;
                ov84_0223CF20(param0, v0->nextPocketIdx, 0);
                ov84_0223F3AC(param0, v0->nextPocketIdx, 0);
            } else {
                v0->nextPocketDirection = 2;
            }

            v0->nextPocketIdx = (u8)v1;
            v0->unk_07_0 = 0;
            v0->unk_07_4 = 0;
            v0->pocketChangeState = 0;
            param0->nextPocket = (u8)v1;

            BagUI_StartMovingPocketHighlight(param0);
        }
    }

    v2 = ov84_0223CBD8(param0);
    v3 = ov84_0223CE60(param0);

    BagUI_StepPocketHighlightMovement(param0);

    if ((v2 == 1) && (v3 == 1) && (v0->unk_07_0 == 1) && (BagUI_IsPocketHighlightDoneMoving(param0) == 1)) {
        if (v0->unk_07_7 == 1) {
            ov84_0223CF20(param0, v0->nextPocketIdx, 1);
            Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
        }

        ManagedSprite_SetDrawFlag(param0->sprites[7], 1);
        return 1;
    }

    return 0;
}

static u8 ov84_0223CA5C(BagController *param0)
{
    BagPocketSelector *v0 = &param0->pocketSelector;

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->numPockets == 1) {
            return 1;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(param0->sprites[0], param0->bagCtx->accessiblePockets[v0->nextPocketIdx].pocketType);
        ov84_0223CF20(param0, v0->nextPocketIdx, 0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        param0->bagCtx->currPocketIdx = v0->nextPocketIdx;

        if (v0->nextPocketIdx != 0) {
            v0->nextPocketIdx = v0->nextPocketIdx - 1;
            param0->nextPocket = param0->nextPocket - 1;
        } else {
            v0->nextPocketIdx = param0->numPockets - 1;
            param0->nextPocket = param0->numPockets - 1;
        }

        v0->animStage = 0;
        v0->nextPocketDirection = 0;
        v0->unk_07_4 = 1;
        v0->unk_07_0 = 1;
        v0->unk_07_7 = 0;

        if (v0->pocketChangeState != 3) {
            v0->pocketChangeState = 4;
        }

        BagUI_StartMovingPocketHighlight(param0);
        return 1;
    }
    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->numPockets == 1) {
            return 1;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(param0->sprites[0], param0->bagCtx->accessiblePockets[v0->nextPocketIdx].pocketType);
        ov84_0223CF20(param0, v0->nextPocketIdx, 0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        param0->bagCtx->currPocketIdx = v0->nextPocketIdx;

        if (v0->nextPocketIdx + 1 < param0->numPockets) {
            v0->nextPocketIdx = v0->nextPocketIdx + 1;
            param0->nextPocket = param0->nextPocket + 1;
        } else {
            v0->nextPocketIdx = 0;
            param0->nextPocket = 0;
        }

        v0->animStage = 0;
        v0->nextPocketDirection = 1;
        v0->unk_07_4 = 1;
        v0->unk_07_0 = 1;
        v0->unk_07_7 = 0;

        if (v0->pocketChangeState != 3) {
            v0->pocketChangeState = 4;
        }

        BagUI_StartMovingPocketHighlight(param0);
        return 1;
    }

    return 0;
}

static u8 ov84_0223CBD8(BagController *param0)
{
    BagPocketSelector *v0 = &param0->pocketSelector;

    switch (v0->animStage) {
    case 0:
        v0->animFrame = 0;
        v0->animStage++;
        break;
    case 1:
        if (v0->animFrame < 8) {
            v0->animFrame++;
            ov84_0223F2FC(param0);
        } else {
            if (param0->itemList != NULL) {
                ListMenu_Free(param0->itemList, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos);
                StringList_Free(param0->itemListEntries);
            }

            param0->bagCtx->currPocketIdx = v0->nextPocketIdx;

            ManagedSprite_SetAnim(param0->sprites[0], param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType);
            ov84_0223F438(param0);
            ov84_0223F3AC(param0, param0->bagCtx->currPocketIdx, 1);
            ov84_0223BFBC(param0);
            ov84_0223C194(&param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount);
            ov84_0223C1D0(&param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount, 9);
            ov84_0223C224(param0, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos);
            ManagedSprite_SetPositionXY(param0->sprites[4], 177, 24 + (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos - 1) * 16);
            ManagedSprite_SetDrawFlag(param0->sprites[4], 1);

            v0->animStage++;
            return 1;
        }

        break;
    case 2:
        return 1;
    }

    return 0;
}

static u8 ov84_0223CD40(BagController *param0)
{
    int v0 = ov84_0223CDB0(param0);

    if (v0 == 0xffffffff) {
        return 0;
    }

    if (param0->numPockets == 1) {
        return 0;
    }

    if (param0->bagCtx->currPocketIdx == (u8)v0) {
        param0->pocketSelector.nextPocketDirection = 2;
    } else if (param0->bagCtx->currPocketIdx > (u8)v0) {
        param0->pocketSelector.nextPocketDirection = 0;
    } else {
        param0->pocketSelector.nextPocketDirection = 1;
    }

    param0->pocketSelector.nextPocketIdx = (u8)v0;
    param0->nextPocket = (u8)v0;

    BagUI_StartMovingPocketHighlight(param0);
    ov84_0223C868(param0);

    return 1;
}

static int ov84_0223CDB0(BagController *param0)
{
    int v0 = TouchScreen_CheckRectanglePressed(Unk_ov84_022410C8[param0->numPockets].buttonTouchRect);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

static int ov84_0223CE08(BagController *param0)
{
    int v0 = TouchScreen_CheckRectangleHeld(Unk_ov84_022410C8[param0->numPockets].buttonTouchRect);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

static u8 ov84_0223CE60(BagController *param0)
{
    BagPocketSelector *v0 = &param0->pocketSelector;

    switch (v0->pocketChangeState) {
    case 0:
        v0->pocketChangeFrame = 0;
        v0->unk_07_7 = 1;
        v0->pressedPocketBtnIdx = v0->nextPocketIdx;
        v0->pocketChangeState++;
        break;
    case 1:
        if (v0->pocketChangeFrame != 3) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov84_0223CF20(param0, v0->pressedPocketBtnIdx, 2);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
        BagUI_DrawBtnShockwave(param0, Unk_ov84_022410C8[param0->numPockets].buttonSprite[v0->pressedPocketBtnIdx * 2] * 8 + 20, Unk_ov84_022410C8[param0->numPockets].buttonSprite[v0->pressedPocketBtnIdx * 2 + 1] * 8 + 20);

        v0->pocketChangeState++;
        break;
    case 2:
        if (v0->pocketChangeFrame != 7) {
            break;
        }

        v0->pocketChangeState++;
        return 1;
    case 3:
        return 1;
    case 4:
        v0->pocketChangeState = 3;
        return 1;
    }

    v0->pocketChangeFrame++;
    return 0;
}

static void ov84_0223CF20(BagController *param0, u8 param1, u8 param2)
{
    u16 *v0;
    const u8 *v1;
    u16 v2;
    u8 v3;
    u8 v4, v5;

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, 4);
    v1 = &Unk_ov84_022410C8[param0->numPockets].buttonSprite[param1 * 2];
    v3 = param0->bagCtx->accessiblePockets[param1].pocketType;
    v2 = (v3 / 2) * (30 * 5) + (v3 & 1) * 15 + 30 + param2 * 5;

    for (v4 = 0; v4 < 5; v4++) {
        for (v5 = 0; v5 < 5; v5++) {
            v0[(v4 + v1[1]) * 32 + v5 + v1[0]] = v2 + v4 * 30 + v5 + (2 << 12);
        }
    }
}

static void ov84_0223CFB0(BagController *param0, u8 param1)
{
    u16 *v0;
    const u8 *v1;
    u16 v2;
    u8 v3;
    u8 v4, v5;

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, 4);
    v2 = 0x276 + 6 * param1;

    for (v4 = 0; v4 < 6; v4++) {
        for (v5 = 0; v5 < 6; v5++) {
            v0[(7 + v4) * 32 + 13 + v5] = v2 + v4 * 30 + v5 + (3 << 12);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
}

static void ov84_0223D014(BagController *param0)
{
    switch (param0->ballButtonAnimStep) {
    case 0:
        break;
    case 1:
        BagUI_DrawBtnShockwave(param0, 128, 80);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov84_0223CFB0(param0, 2);

        param0->ballButtonAnimFrame = 0;
        param0->ballButtonAnimStep++;
        break;
    case 2:
        if (param0->ballButtonAnimFrame == 3) {
            ov84_0223CFB0(param0, 1);

            param0->ballButtonAnimStep++;
            param0->ballButtonAnimFrame = 0;
        } else {
            param0->ballButtonAnimFrame++;
        }

        break;
    case 3:
        if (param0->ballButtonAnimFrame == 2) {
            ov84_0223CFB0(param0, 0);

            param0->ballButtonAnimStep = 0;
            param0->ballButtonAnimFrame = 0;
        } else {
            param0->ballButtonAnimFrame++;
        }
    }
}

static void ov84_0223D0BC(BagController *param0)
{
    u8 v0;

    ov84_0223CFB0(param0, 0);
    if (param0->numPockets != 1) {
        for (v0 = 0; v0 < param0->numPockets; v0++) {
            ov84_0223CF20(param0, v0, 0);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
}

static void ov84_0223D0FC(BagController *param0)
{
    if (param0->pocketSelectorArrowsAnimTimer == 0) {
        s16 v0, v1;

        switch (param0->pocketSelectorArrowsAnimStep) {
        case 0:
        case 1:
            ManagedSprite_GetPositionXY(param0->sprites[2], &v0, &v1);

            v0 -= 1;
            ManagedSprite_SetPositionXY(param0->sprites[2], v0, v1);
            ManagedSprite_GetPositionXY(param0->sprites[3], &v0, &v1);

            v0 += 1;
            ManagedSprite_SetPositionXY(param0->sprites[3], v0, v1);
            break;
        case 2:
        case 3:
            ManagedSprite_GetPositionXY(param0->sprites[2], &v0, &v1);

            v0 += 1;
            ManagedSprite_SetPositionXY(param0->sprites[2], v0, v1);
            ManagedSprite_GetPositionXY(param0->sprites[3], &v0, &v1);

            v0 -= 1;
            ManagedSprite_SetPositionXY(param0->sprites[3], v0, v1);
            break;
        }

        param0->pocketSelectorArrowsAnimStep = (param0->pocketSelectorArrowsAnimStep + 1) & 3;
    }

    param0->pocketSelectorArrowsAnimTimer = (param0->pocketSelectorArrowsAnimTimer + 1) & 3;
}

static BOOL ov84_0223D1F4(BagController *param0)
{
    int v0 = TouchScreen_CheckRectanglePressed(Unk_ov84_02240E98);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0;
        }

        return 1;
    }

    return 0;
}

static u8 ov84_0223D244(BagController *param0)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    if (ListMenu_GetIndexOfChoice(param0->itemList, v0->cursorScroll + v0->cursorPos) == 0xfffffffe) {
        return 0;
    }

    if (param0->bagCtx->mode != 0) {
        return 0;
    }

    if ((v0->pocketType == 4) || (v0->pocketType == 3)) {
        return 0;
    }

    return 1;
}

static void ov84_0223D2A0(BagController *param0)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    param0->isMovingItem = 1;
    param0->movedItemPos = v0->cursorScroll + v0->cursorPos;
    param0->movedItemID = ListMenu_GetIndexOfChoice(param0->itemList, param0->movedItemPos);

    ov84_0223FE18(param0);
    ListMenu_Draw(param0->itemList);
    ov84_0223D4E8(param0);
}

static u8 ov84_0223D2F8(BagController *param0)
{
    BagApplicationPocket *v0;
    u32 v1;
    u16 v2, v3;

    if (ov84_0223EE30(param0) == 1) {
        return 0;
    }

    v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];
    ListMenu_GetListAndCursorPos(param0->itemList, &v0->cursorScroll, &v0->cursorPos);

    if (ov84_0223D1F4(param0) == 1) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov84_0223D42C(param0);
        param0->ballButtonAnimStep = 1;

        return 1;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov84_0223D42C(param0);
        return 1;
    }

    v1 = ListMenu_ProcessInput(param0->itemList);
    ListMenu_GetListAndCursorPos(param0->itemList, &v2, &v3);

    if (v0->cursorPos != v3) {
        ManagedSprite_SetPositionXY(param0->sprites[5], 177, 24 + (v3 - 1) * 16 - 8);
    }

    v0->cursorScroll = v2;
    v0->cursorPos = v3;

    switch (v1) {
    case 0xffffffff: {
        u8 v4 = ListMenu_GetLastAction(param0->itemList);

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

static void ov84_0223D42C(BagController *param0)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];
    u16 v1 = v0->cursorScroll + v0->cursorPos;

    if (!((param0->movedItemPos == v1) || (param0->movedItemPos == (v1 - 1)))) {
        Item_MoveInPocket(v0->items, param0->movedItemPos - 1, v1 - 1);
        StringList_Free(param0->itemListEntries);
        ov84_0223BFBC(param0);
    }

    ov84_0223D484(param0);
}

static void ov84_0223D484(BagController *param0)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    ListMenu_Free(param0->itemList, &v0->cursorScroll, &v0->cursorPos);
    param0->itemList = NULL;

    if (param0->movedItemPos < (v0->cursorScroll + v0->cursorPos)) {
        v0->cursorPos -= 1;
    }

    param0->isMovingItem = 0;
    param0->movedItemPos = 0;
    param0->movedItemID = 0;

    ov84_0223C224(param0, v0->cursorScroll, v0->cursorPos);
    ov84_0223D4E8(param0);
}

static void ov84_0223D4E8(BagController *param0)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    if (param0->isMovingItem == 0) {
        ManagedSprite_SetPositionXY(param0->sprites[4], 177, 24 + (v0->cursorPos - 1) * 16);
        ManagedSprite_SetDrawFlag(param0->sprites[4], 1);
        ManagedSprite_SetDrawFlag(param0->sprites[5], 0);

        if (param0->numPockets != 1) {
            ManagedSprite_SetDrawFlag(param0->sprites[2], 1);
            ManagedSprite_SetDrawFlag(param0->sprites[3], 1);
        }
    } else {
        ManagedSprite_SetPositionXY(param0->sprites[5], 177, 24 + (v0->cursorPos - 1) * 16 - 8);
        ManagedSprite_SetDrawFlag(param0->sprites[4], 0);
        ManagedSprite_SetDrawFlag(param0->sprites[5], 1);

        if (param0->numPockets != 1) {
            ManagedSprite_SetDrawFlag(param0->sprites[2], 0);
            ManagedSprite_SetDrawFlag(param0->sprites[3], 0);
        }
    }
}

static void ov84_0223D5AC(BagController *param0)
{
    void *v0;
    u32 v1;
    u8 v2;
    u8 v3[12];

    v0 = Item_Load(param0->bagCtx->selectedItem, 0, 6);
    v1 = 0;
    v2 = param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType;

    if (param0->bagCtx->mode == 0) {
        if (v2 == 4) {
            v3[v1] = 9;
            v1++;
        }

        if ((param0->bagCtx->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) || (param0->bagCtx->mapLoadType == MAP_LOAD_TYPE_UNION)) {
            if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 5) {
                v3[v1] = 2;
                v1++;
            }
        } else {
            if (Item_Get(v0, 6) != 0) {
                if ((param0->bagCtx->selectedItem == 450) && (param0->bagCtx->isCycling == 1)) {
                    v3[v1] = 1;
                } else if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 5) {
                    v3[v1] = 2;
                } else if (param0->bagCtx->selectedItem == 449) {
                    v3[v1] = 4;
                } else if ((param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 4) && (sub_02068B50(param0->bagCtx->itemUseCtx) == 1)) {
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
            if (Bag_GetRegisteredItem(param0->bag) == param0->bagCtx->selectedItem) {
                v3[v1] = 7;
            } else {
                v3[v1] = 6;
            }

            v1++;
        }
    } else if ((param0->bagCtx->mode == 4) || (param0->bagCtx->mode == 5)) {
        v3[v1] = 10;
        v1++;
        v3[v1] = 9;
        v1++;
    }

    v3[v1] = 11;
    v1++;
    ov84_0223FB70(param0, v3, v1);
    Heap_Free(v0);
}

static int ov84_0223D730(BagController *param0)
{
    u32 v0;

    if (ov84_0223EF4C(param0) == 1) {
        return 4;
    }

    v0 = Menu_ProcessInput(param0->menu);

    if (v0 == 0xffffffff) {
        if (ov84_0223D1F4(param0) == 1) {
            v0 = Menu_ProcessExternalInput(param0->menu, 0);
            param0->ballButtonAnimStep = 1;
        }
    }

    switch (v0) {
    case 0xffffffff: {
        u8 v1 = Menu_GetLastAction(param0->menu);

        if (v1 == MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 18);
        } else if (v1 == MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -18);
        }
    } break;
    case 0xfffffffe:
        BagUI_SetHighlightSpritesPalette(param0, 1);
        ov84_0223FD84(param0);

        if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 3) {
            ov84_0223D7E8(param0, 0);
        }

        return 1;
    default: {
        ItemActionFuncPtr v2 = (ItemActionFuncPtr)v0;
        return v2(param0);
    }
    }

    return 4;
}

static void ov84_0223D7E8(BagController *param0, u8 param1)
{
    if (param1 == 0) {
        Bg_LoadToTilemapRect(param0->bgConfig, 1, Unk_ov84_02241064, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(param0->sprites[7], 1);
    } else {
        Bg_LoadToTilemapRect(param0->bgConfig, 1, Unk_ov84_02241096, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(param0->sprites[7], 0);
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 1);
}

const u32 ov84_0223D84C(u32 param0)
{
    return Unk_ov84_02241034[param0];
}

static int ov84_0223D858(BagController *param0)
{
    ItemCheckUseFunc itemUseFunc;
    s32 itemUseFuncIdx;

    ov84_0223FD84(param0);

    itemUseFuncIdx = Item_LoadParam(param0->bagCtx->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_6);
    itemUseFunc = (ItemCheckUseFunc)GetItemUseFunction(USE_ITEM_TASK_CHECK, itemUseFuncIdx);

    if (itemUseFunc != NULL) {
        u32 v2 = itemUseFunc(param0->bagCtx->itemUseCtx);

        if (v2 != 0) {
            BagContext_FormatErrorMessage(param0->trainerInfo, param0->strBuffer, param0->bagCtx->selectedItem, v2, HEAP_ID_6);
            Window_FillTilemap(&param0->windows[6], 15);
            Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);
            param0->msgBoxPrinterID = ov84_022400A0(param0);

            return 12;
        }
    }

    return ov84_0223D94C(param0);
}

static int ov84_0223D8EC(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->windows[6], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[1]);
            BagUI_SetHighlightSpritesPalette(param0, 1);

            if (param0->bagCtx->mode == 3) {
                return 23;
            } else {
                return 1;
            }
        }
    }

    return 12;
}

static int ov84_0223D94C(BagController *param0)
{
    BagApplicationPocket *v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    param0->itemUseTaskState = 0;

    if (v0->pocketType == 3) {
        param0->itemUseCallback = (u32)ov84_0223DA14;
        return 13;
    }

    if (BagContext_FormatUsageMessage(param0->bagCtx->saveData, param0->strBuffer, param0->bagCtx->selectedItem, 6) == 1) {
        Window_FillTilemap(&param0->windows[6], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);
        param0->msgBoxPrinterID = ov84_022400A0(param0);
        return 12;
    }

    if (ov84_0223DBF4(param0, param0->bagCtx->selectedItem) == 1) {
        param0->itemUseCallback = (u32)ov84_0223DDD0;
        return 13;
    }

    App_StartScreenFade(TRUE, HEAP_ID_6);
    param0->bagCtx->exitCode = 0;

    return 24;
}

static int ov84_0223DA04(BagController *param0)
{
    ItemUseCallback v0 = (ItemUseCallback)param0->itemUseCallback;
    return v0(param0);
}

static int ov84_0223DA14(BagController *param0)
{
    switch (param0->itemUseTaskState) {
    case 0: {
        u16 v0 = Item_MoveForTMHM(param0->bagCtx->selectedItem);

        StringTemplate_SetMoveName(param0->strTemplate, 0, v0);

        if (Item_IsHMMove(v0) == 1) {
            MessageLoader_GetStrbuf(param0->bagStringsLoader, 59, param0->strBuffer);
        } else {
            MessageLoader_GetStrbuf(param0->bagStringsLoader, 58, param0->strBuffer);
        }
    }
        Window_FillTilemap(&param0->windows[6], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);

        param0->msgBoxPrinterID = ov84_022400A0(param0);
        param0->itemUseTaskState = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->msgBoxPrinterID) != 0) {
            break;
        }

        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 60);

            Window_FillTilemap(&param0->windows[6], 15);
            StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
            Strbuf_Free(v1);

            param0->msgBoxPrinterID = ov84_022400A0(param0);
            param0->itemUseTaskState = 2;
        }
        break;
    case 2:
        if (Text_IsPrinterActive(param0->msgBoxPrinterID) != 0) {
            break;
        }

        ov84_02240120(param0);
        param0->itemUseTaskState = 3;
        break;
    case 3: {
        u32 v2;

        if (ov84_0223EF4C(param0) == 1) {
            break;
        }

        if (ov84_0223D1F4(param0) == 1) {
            v2 = Menu_ProcessExternalInputAndHandleExit(param0->menu, 0, 6);
            param0->ballButtonAnimStep = 1;
        } else {
            v2 = Menu_ProcessInputAndHandleExit(param0->menu, 6);
        }

        switch (v2) {
        case 0:
            App_StartScreenFade(TRUE, HEAP_ID_6);
            ov84_0223D7E8(param0, 0);
            param0->bagCtx->exitCode = 0;
            return 24;
        case 0xffffffff: {
            u8 v3 = Menu_GetLastAction(param0->menu);

            if (v3 == MENU_ACTION_MOVE_UP) {
                ov84_0223EB08(param0, 18);
            } else if (v3 == MENU_ACTION_MOVE_DOWN) {
                ov84_0223EB08(param0, -18);
            }
        } break;
        case 0xfffffffe:
            Window_EraseMessageBox(&param0->windows[6], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[1]);
            BagUI_SetHighlightSpritesPalette(param0, 1);
            ov84_0223D7E8(param0, 0);
            return 1;
        }
    } break;
    }

    return 13;
}

static BOOL ov84_0223DBF4(BagController *param0, u16 param1)
{
    Strbuf *v0;

    StringTemplate_SetPlayerName(param0->strTemplate, 0, param0->trainerInfo);
    StringTemplate_SetItemName(param0->strTemplate, 1, param1);

    if (param1 == ITEM_BLACK_FLUTE) {
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 64);
        SetBlackWhiteFluteActive(param0, FLUTE_FACTOR_USED_BLACK);
        param0->selectedItemCount = 0;
    } else if (param1 == ITEM_WHITE_FLUTE) {
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 63);
        SetBlackWhiteFluteActive(param0, FLUTE_FACTOR_USED_WHITE);
        param0->selectedItemCount = 0;
    } else if ((param1 == ITEM_MAX_REPEL) || (param1 == ITEM_SUPER_REPEL) || (param1 == ITEM_REPEL)) {
        v0 = ov84_0223DC9C(param0, param1);
    } else {
        return 0;
    }

    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v0);
    Strbuf_Free(v0);
    return 1;
}

static Strbuf *ov84_0223DC9C(BagController *param0, u16 param1)
{
    s32 stepCount;
    u8 *v1;

    // Repel is still active, show "effects still lingered" message
    if (SpecialEncounter_RepelStepsEmpty(ov84_0223B9E4(param0)) == 0) {
        param0->selectedItemCount = 0;
        return MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 62);
    }

    stepCount = Item_LoadParam(param1, ITEM_PARAM_HOLD_EFFECT_PARAM, HEAP_ID_6);
    SetRepelSteps(param0, (u8)stepCount);
    param0->selectedItemCount = 1;
    Sound_PlayEffect(SEQ_SE_DP_CARD2);

    return MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 61);
}

static void ov84_0223DCF8(BagController *param0)
{
    Pocket_TryRemoveItem(param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].items, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount - 3, param0->bagCtx->selectedItem, param0->selectedItemCount, HEAP_ID_6);
    ListMenu_Free(param0->itemList, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos);
    StringList_Free(param0->itemListEntries);

    ov84_0223BFBC(param0);
    ov84_0223C194(&param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount);
    ov84_0223C1D0(&param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount, 9);
    ov84_0223C224(param0, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos);
}

static int ov84_0223DDD0(BagController *param0)
{
    switch (param0->itemUseTaskState) {
    case 0:
        Window_FillTilemap(&param0->windows[6], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);
        param0->msgBoxPrinterID = ov84_022400A0(param0);
        param0->itemUseTaskState = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->msgBoxPrinterID) != 0) {
            break;
        }

        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->windows[6], 0);
            param0->itemUseTaskState = 2;
        }

        break;
    case 2:
        if (param0->selectedItemCount != 0) {
            ov84_0223DCF8(param0);
        }

        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        BagUI_SetHighlightSpritesPalette(param0, 1);

        return 1;
    }

    return 13;
}

static int ov84_0223DE78(BagController *param0)
{
    ov84_0223FD84(param0);
    App_StartScreenFade(TRUE, HEAP_ID_6);
    param0->bagCtx->exitCode = 1;

    return 24;
}

static int ov84_0223DE98(BagController *param0)
{
    ov84_0223FD84(param0);
    App_StartScreenFade(TRUE, HEAP_ID_6);
    param0->bagCtx->exitCode = 3;

    return 24;
}

static int ov84_0223DEB8(BagController *param0)
{
    ov84_0223FD84(param0);
    param0->selectedItemCount = 1;
    if (Pocket_GetItemQuantity(param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].items, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount - 3, param0->bagCtx->selectedItem, HEAP_ID_6) == 1) {
        ov84_0223FFF0(param0);
        return 8;
    }

    ov84_0223FE94(param0);
    BagUI_ShowItemCountArrows(param0, 0);

    return 7;
}

static int ov84_0223DF0C(BagController *param0)
{
    if (ov84_0223EFD0(param0, &param0->selectedItemCount, param0->selectedItemOwnedCount) == 1) {
        ov84_0223FF44(param0);
        return 7;
    }

    if (ov84_0223D1F4(param0) == 1) {
        ov84_0223FFF0(param0);
        BagUI_ToggleItemCountArrows(param0, 0);
        param0->ballButtonAnimStep = 1;

        return 8;
    }

    switch (sub_0208C15C(&param0->selectedItemCount, param0->selectedItemOwnedCount)) {
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
        BagUI_ToggleItemCountArrows(param0, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return 8;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov84_0223FFC0(param0);
        BagUI_ToggleItemCountArrows(param0, 0);
        BagUI_SetHighlightSpritesPalette(param0, 1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return 1;
    }

    return 7;
}

static int ov84_0223DFF8(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        ov84_02240120(param0);
        return 9;
    }

    return 8;
}

static int ov84_0223E01C(BagController *param0)
{
    u32 v0;

    if (ov84_0223EF4C(param0) == 1) {
        return 9;
    }

    if (ov84_0223D1F4(param0) == 1) {
        v0 = Menu_ProcessExternalInputAndHandleExit(param0->menu, 0, 6);
        param0->ballButtonAnimStep = 1;
    } else {
        v0 = Menu_ProcessInputAndHandleExit(param0->menu, 6);
    }

    switch (v0) {
    case 0: {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 53);

        if (param0->selectedItemCount == 1) {
            StringTemplate_SetItemName(param0->strTemplate, 0, param0->bagCtx->selectedItem);
        } else {
            StringTemplate_SetItemNamePlural(param0->strTemplate, 0, param0->bagCtx->selectedItem);
        }

        StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount, 3, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
        Strbuf_Free(v1);
    }
        Window_FillTilemap(&param0->windows[6], 15);
        param0->msgBoxPrinterID = ov84_022400A0(param0);
        return 10;

    case 0xffffffff: {
        u8 v2 = Menu_GetLastAction(param0->menu);

        if (v2 == MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 18);
        } else if (v2 == MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -18);
        }
    } break;
    case 0xfffffffe:
        Window_EraseMessageBox(&param0->windows[6], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        BagUI_SetHighlightSpritesPalette(param0, 1);
        return 1;
    }

    return 9;
}

static int ov84_0223E158(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) != 0) {
        return 10;
    }

    param0->hideDescription = 1;
    ov84_0223DCF8(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[6]);

    return 11;
}

static int ov84_0223E18C(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            param0->hideDescription = 0;
            Window_EraseMessageBox(&param0->windows[6], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[1]);
            BagUI_SetHighlightSpritesPalette(param0, 1);

            return 1;
        }
    }

    return 11;
}

static int ov84_0223E1E4(BagController *param0)
{
    Bag_RegisterItem(param0->bag, param0->bagCtx->selectedItem);
    ListMenu_Draw(param0->itemList);
    ov84_0223FD84(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[1]);
    BagUI_SetHighlightSpritesPalette(param0, 1);

    return 1;
}

static int ov84_0223E220(BagController *param0)
{
    Bag_RegisterItem(param0->bag, 0);
    ListMenu_Draw(param0->itemList);
    ov84_0223FD84(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[1]);
    BagUI_SetHighlightSpritesPalette(param0, 1);

    return 1;
}

static int ov84_0223E254(BagController *param0)
{
    ov84_0223FD84(param0);
    App_StartScreenFade(TRUE, HEAP_ID_6);
    ov84_0223D7E8(param0, 0);
    param0->bagCtx->exitCode = 2;

    return 24;
}

static int ov84_0223E27C(BagController *param0)
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
            if (Item_LoadParam(param0->bagCtx->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_6) != 0) {
                Strbuf *v1;

                Window_FillTilemap(&param0->windows[6], 15);
                Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);
                StringTemplate_SetItemName(param0->strTemplate, 0, param0->bagCtx->selectedItem);

                v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 46);

                StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
                Strbuf_Free(v1);
                param0->msgBoxPrinterID = ov84_022400A0(param0);
                BagUI_SetHighlightSpritesPalette(param0, 2);

                return 15;
            }

            param0->bagCtx->exitCode = 4;
            App_StartScreenFade(TRUE, HEAP_ID_6);

            return 24;
        } else if (v0 == 3) {
            param0->bagCtx->exitCode = 4;
            return 24;
        }
    }
    return 14;
}

static int ov84_0223E36C(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->windows[6], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[1]);
            BagUI_SetHighlightSpritesPalette(param0, 1);

            return 14;
        }
    }

    return 15;
}

static int ov84_0223E3BC(BagController *param0)
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
            Window_FillTilemap(&param0->windows[6], 15);
            Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);
            StringTemplate_SetItemName(param0->strTemplate, 0, param0->bagCtx->selectedItem);
            BagUI_SetHighlightSpritesPalette(param0, 2);

            param0->soldItemPrice = Item_LoadParam(param0->bagCtx->selectedItem, ITEM_PARAM_PRICE, HEAP_ID_6);

            if ((Item_LoadParam(param0->bagCtx->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_6) != 0) || (param0->soldItemPrice == 0)) {
                v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 74);
                StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
                Strbuf_Free(v1);

                param0->msgBoxPrinterID = ov84_022400A0(param0);
                return 22;
            }

            param0->selectedItemCount = 1;
            param0->soldItemPrice >>= 1;

            if (Pocket_GetItemQuantity(param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].items, param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].listEntryCount - 3, param0->bagCtx->selectedItem, 6) == 1) {
                v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 76);
                StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
                StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
                Strbuf_Free(v1);

                param0->msgBoxPrinterID = ov84_022400A0(param0);
                return 19;
            }

            v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 75);
            StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
            Strbuf_Free(v1);

            param0->msgBoxPrinterID = ov84_022400A0(param0);
            return 17;
        } else if (v0 == 3) {
            return 24;
        }
    }

    return 16;
}

static int ov84_0223E588(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        if (param0->selectedItemOwnedCount > 99) {
            param0->selectedItemOwnedCount = 99;
        }

        ov84_02240148(param0, 0);
        BagUI_ShowItemCountArrows(param0, 1);
        return 18;
    }

    return 17;
}

static int ov84_0223E5C4(BagController *param0)
{
    if (ov84_0223EFD0(param0, &param0->selectedItemCount, param0->selectedItemOwnedCount) == 1) {
        ov84_02240148(param0, 1);
        return 18;
    }
    if (ov84_0223D1F4(param0) == 1) {
        Strbuf *v0;

        BagUI_ToggleItemCountArrows(param0, 0);
        Window_EraseStandardFrame(&param0->windows[7], 1);
        Window_FillTilemap(&param0->windows[6], 15);
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 76);
        StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v0);
        Strbuf_Free(v0);
        param0->msgBoxPrinterID = ov84_022400A0(param0);
        param0->ballButtonAnimStep = 1;

        return 19;
    }

    switch (sub_0208C15C(&param0->selectedItemCount, param0->selectedItemOwnedCount)) {
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

        BagUI_ToggleItemCountArrows(param0, 0);
        Window_EraseStandardFrame(&param0->windows[7], 1);
        Window_FillTilemap(&param0->windows[6], 15);

        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 76);

        StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
        Strbuf_Free(v1);
        param0->msgBoxPrinterID = ov84_022400A0(param0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return 19;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->soldItemPrice = 0;

        BagUI_ToggleItemCountArrows(param0, 0);
        Window_EraseStandardFrame(&param0->windows[8], 1);
        Window_EraseStandardFrame(&param0->windows[7], 1);
        Window_EraseMessageBox(&param0->windows[6], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        BagUI_SetHighlightSpritesPalette(param0, 1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return 16;
    }

    return 18;
}

static int ov84_0223E7A8(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        ov84_02240120(param0);

        return 20;
    }

    return 19;
}

static int ov84_0223E7CC(BagController *param0)
{
    u32 v0;

    if (ov84_0223EF4C(param0) == 1) {
        return 20;
    }

    if (ov84_0223D1F4(param0) == 1) {
        v0 = Menu_ProcessExternalInputAndHandleExit(param0->menu, 0, 6);
        param0->ballButtonAnimStep = 1;
    } else {
        v0 = Menu_ProcessInputAndHandleExit(param0->menu, 6);
    }

    switch (v0) {
    case 0: {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 77);

        if (param0->selectedItemCount > 1) {
            StringTemplate_SetItemNamePlural(param0->strTemplate, 0, param0->bagCtx->selectedItem);
        } else {
            StringTemplate_SetItemName(param0->strTemplate, 0, param0->bagCtx->selectedItem);
        }

        StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
        Strbuf_Free(v1);
    }
        Window_FillTilemap(&param0->windows[6], 15);
        param0->msgBoxPrinterID = ov84_022400A0(param0);
        return 21;
    case 0xffffffff: {
        u8 v2 = Menu_GetLastAction(param0->menu);

        if (v2 == MENU_ACTION_MOVE_UP) {
            ov84_0223EB08(param0, 18);
        } else if (v2 == MENU_ACTION_MOVE_DOWN) {
            ov84_0223EB08(param0, -18);
        }
    } break;
    case 0xfffffffe:
        param0->soldItemPrice = 0;
        Window_EraseStandardFrame(&param0->windows[8], 1);
        Window_EraseMessageBox(&param0->windows[6], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        BagUI_SetHighlightSpritesPalette(param0, 1);

        return 16;
    }

    return 20;
}

static int ov84_0223E920(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) != 0) {
        return 21;
    }

    Sound_PlayEffect(SEQ_SE_DP_REGI);
    TrainerInfo_GiveMoney(param0->trainerInfo, param0->selectedItemCount * param0->soldItemPrice);

    if (param0->selectedItemCount == 1) {
        if (param0->bagCtx->soldAmount != 0xff) {
            param0->bagCtx->soldAmount++;
        }
    } else {
        param0->bagCtx->soldAmount = 2;
    }

    ov84_02240248(param0, 1);
    param0->hideDescription = 1;
    ov84_0223DCF8(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[6]);

    return 22;
}

static int ov84_0223E9B0(BagController *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinterID) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            param0->hideDescription = 0;
            param0->soldItemPrice = 0;

            Window_EraseStandardFrame(&param0->windows[8], 1);
            Window_EraseMessageBox(&param0->windows[6], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[1]);
            BagUI_SetHighlightSpritesPalette(param0, 1);

            return 16;
        }
    }

    return 22;
}

static int ov84_0223EA18(BagController *param0)
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
            if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 0) {
                if (Item_LoadParam(param0->bagCtx->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_6) != 13) {
                    BagContext_FormatErrorMessage(param0->trainerInfo, param0->strBuffer, param0->bagCtx->selectedItem, -1, HEAP_ID_6);
                    Window_FillTilemap(&param0->windows[6], 15);
                    Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 0, 1024 - 9 - (18 + 12), 12);

                    param0->msgBoxPrinterID = ov84_022400A0(param0);
                    return 12;
                }
            }

            param0->bagCtx->exitCode = 0;
            App_StartScreenFade(TRUE, HEAP_ID_6);
            return 24;
        } else if (v0 == 3) {
            param0->bagCtx->exitCode = 5;
            return 24;
        }
    }
    return 23;
}

static void ov84_0223EB08(BagController *param0, s8 param1)
{
    s16 v0 = Bg_GetRotation(param0->bgConfig, 7);

    v0 += param1;

    if (v0 >= 360) {
        v0 -= 360;
    } else if (v0 < 0) {
        v0 += 360;
    }

    Bg_ScheduleAffineRotation(param0->bgConfig, 7, 0, v0);
    param0->ballRotation = v0;
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

static BOOL ov84_0223EB84(BagController *param0, u16 param1)
{
    if (ov84_0223EB54() == 1) {
        param0->isScrollingWithBall = 1;
        param0->queuedScroll = 0;
        param0->queuedScrollRemainder = 0;
        param0->previousTouchX = gSystem.touchX;
        param0->previousTouchY = gSystem.touchY;
    }

    if (param0->isScrollingWithBall == 1) {
        if (ov84_0223EB6C() == 1) {
            s32 v0, v1;

            v0 = ApproximateArcLength(128 - param0->previousTouchX, 80 - param0->previousTouchY, 128 - gSystem.touchX, 80 - gSystem.touchY, 80);
            v1 = CalcRadialAngle(80, v0 * 2);
            v1 = ((v1 << 8) / 182) >> 8;
            param0->ballRotation += v1;

            if (param0->ballRotation < 0) {
                param0->ballRotation += 360;
            } else if (param0->ballRotation >= 360) {
                param0->ballRotation -= 360;
            }

            Bg_ScheduleAffineRotation(param0->bgConfig, 7, 0, param0->ballRotation);
            {
                s32 v2;
                s32 v3;

                v2 = 2 * 80 * 3.14;
                v3 = v2 / param1;
                if (v0 > 0) {
                    if (param0->queuedScroll < 0) {
                        param0->queuedScroll = v0 / v3;
                        param0->queuedScrollRemainder = v0 % v3;
                    } else {
                        param0->queuedScroll += ((param0->queuedScrollRemainder + v0) / v3);
                        param0->queuedScrollRemainder = (param0->queuedScrollRemainder + v0) % v3;
                    }
                } else if (v0 < 0) {
                    if (param0->queuedScroll > 0) {
                        param0->queuedScroll = v0 / v3;
                        param0->queuedScrollRemainder = v0 % v3;
                    } else {
                        param0->queuedScroll += ((param0->queuedScrollRemainder + v0) / v3);
                        param0->queuedScrollRemainder = (param0->queuedScrollRemainder + v0) % v3;
                    }
                }
            }
            param0->previousTouchX = gSystem.touchX;
            param0->previousTouchY = gSystem.touchY;
        } else {
            param0->isScrollingWithBall = 0;
            param0->queuedScroll = 0;
        }

        return 1;
    }

    return 0;
}

static BOOL ov84_0223ED14(BagController *param0)
{
    BOOL v0 = ov84_0223EB84(param0, 36);

    if (param0->queuedScroll > 0) {
        if (ov84_0223ED64(param0, PAD_KEY_UP) == 1) {
            param0->queuedScroll--;
        } else {
            param0->queuedScroll = 0;
        }

        return 1;
    } else if (param0->queuedScroll < 0) {
        if (ov84_0223ED64(param0, PAD_KEY_DOWN) == 1) {
            param0->queuedScroll++;
        } else {
            param0->queuedScroll = 0;
        }

        return 1;
    }

    return v0;
}

static BOOL ov84_0223ED64(BagController *param0, u16 param1)
{
    u16 v0 = param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll;
    u16 v1 = param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos;

    ListMenu_TestInput(param0->itemList, NULL, v0, v1, 1, param1, &v0, &v1);

    if ((v0 == param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll) && (v1 == param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos)) {
        return 0;
    }

    ManagedSprite_SetPositionXY(param0->sprites[4], 177, 24 + (v1 - 1) * 16);

    param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll = v0;
    param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos = v1;

    return 1;
}

static BOOL ov84_0223EE30(BagController *param0)
{
    BOOL v0 = ov84_0223EB84(param0, 36);

    if (param0->queuedScroll > 0) {
        if (ov84_0223EE80(param0, PAD_KEY_UP) == 1) {
            param0->queuedScroll--;
        } else {
            param0->queuedScroll = 0;
        }

        return 1;
    } else if (param0->queuedScroll < 0) {
        if (ov84_0223EE80(param0, PAD_KEY_DOWN) == 1) {
            param0->queuedScroll++;
        } else {
            param0->queuedScroll = 0;
        }

        return 1;
    }

    return v0;
}

static BOOL ov84_0223EE80(BagController *param0, u16 param1)
{
    u16 v0 = param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll;
    u16 v1 = param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos;

    ListMenu_TestInput(param0->itemList, NULL, v0, v1, 1, param1, &v0, &v1);

    if ((v0 == param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll) && (v1 == param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos)) {
        return 0;
    }

    ManagedSprite_SetPositionXY(param0->sprites[5], 177, 24 + (v1 - 1) * 16 - 8);

    param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorScroll = v0;
    param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos = v1;

    return 1;
}

static BOOL ov84_0223EF4C(BagController *param0)
{
    BOOL v0 = ov84_0223EB84(param0, 18);

    if (param0->queuedScroll > 0) {
        if (ov84_0223EF9C(param0, 2) == 1) {
            param0->queuedScroll--;
        } else {
            param0->queuedScroll = 0;
        }

        return 1;
    } else if (param0->queuedScroll < 0) {
        if (ov84_0223EF9C(param0, 3) == 1) {
            param0->queuedScroll++;
        } else {
            param0->queuedScroll = 0;
        }

        return 1;
    }

    return v0;
}

static BOOL ov84_0223EF9C(BagController *param0, u8 param1)
{
    u8 v0 = Menu_GetCursorPos(param0->menu);

    Menu_ProcessExternalInput(param0->menu, param1);

    if (v0 == Menu_GetCursorPos(param0->menu)) {
        return 0;
    }

    return 1;
}

static BOOL ov84_0223EFD0(BagController *param0, s16 *param1, u16 param2)
{
    BOOL v0;
    s16 v1;

    v0 = ov84_0223EB84(param0, 18);
    v1 = *param1;

    if (param0->queuedScroll > 0) {
        param0->queuedScroll--;
        *param1 += 1;

        if (*param1 > param2) {
            *param1 = 1;
        }

        if (*param1 == v1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 1;
    } else if (param0->queuedScroll < 0) {
        param0->queuedScroll++;
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
