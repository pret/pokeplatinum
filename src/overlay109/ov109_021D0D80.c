#include "overlay109/ov109_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/journal_online_events.h"
#include "generated/text_banks.h"
#include "generated/trainer_score_events.h"

#include "struct_defs/struct_02099F80.h"
#include "struct_defs/struct_0209BDF8.h"
#include "struct_defs/struct_0209C0F0.h"
#include "struct_defs/struct_0209C194.h"

#include "overlay109/struct_ov109_021D1048.h"
#include "overlay109/struct_ov109_021D17EC.h"

#include "bag.h"
#include "bg_window.h"
#include "camera.h"
#include "communication_information.h"
#include "communication_system.h"
#include "font.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "simple3d.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "trainer_info.h"
#include "unk_0202419C.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038ED4.h"
#include "unk_020393C8.h"
#include "unk_02092494.h"
#include "unk_0209BDF8.h"
#include "vram_transfer.h"

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    VecFx32 unk_24;
    VecFx32 unk_30;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    Simple3DRotationAngles unk_4C;
    Simple3DModel unk_54;
    Simple3DRenderObj unk_68;
} UnkStruct_ov109_021D2AE4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    Simple3DRotationAngles unk_24;
    VecFx32 unk_2C;
    VecFx32 unk_38;
    VecFx32 unk_44;
    VecFx32 unk_50;
    Simple3DRenderObj unk_5C;
} UnkStruct_ov109_021D2D78;

typedef struct {
    int unk_00;
    Simple3DRotationAngles unk_04;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    Simple3DRenderObj unk_24;
    UnkStruct_ov109_021D2D78 *unk_78;
} UnkStruct_ov109_021D2EF4;

typedef struct {
    int unk_00;
    VecFx32 unk_04;
    Simple3DRenderObj unk_10;
    UnkStruct_ov109_021D2D78 *unk_64;
} UnkStruct_ov109_021D2FA4;

typedef struct {
    Simple3DModel unk_00;
    Simple3DModel unk_14;
    Simple3DModel unk_28[5];
    Simple3DAnimation unk_8C[5];
    UnkStruct_ov109_021D2D78 unk_140[5];
    UnkStruct_ov109_021D2EF4 unk_4B0[5];
    UnkStruct_ov109_021D2FA4 unk_71C[5];
} UnkStruct_ov109_021D1334;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    UnkStruct_ov109_021D2D78 *unk_10;
    UnkStruct_ov109_021D0F70 *unk_14;
} UnkStruct_ov109_021D2FE0;

typedef struct {
    int unk_00;
    MessageLoader *unk_04;
    StringTemplate *unk_08;
    Window unk_0C[1];
    Window unk_1C[5];
    void *unk_6C;
} UnkStruct_ov109_021D24F8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov109_021D122C;

typedef struct {
    fx32 unk_00;
    u32 unk_04;
    VecFx32 unk_08;
    CameraAngle cameraAngle;
    Camera *camera;
} UnkStruct_ov109_021D28C4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    TouchPadDataBuffer unk_10;
} UnkStruct_ov109_021D294C;

typedef struct {
    UnkStruct_ov109_021D0F70 *unk_00;
    int unk_04;
    u32 unk_08;
} UnkStruct_ov109_021D3948;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov109_021D59AC;

typedef struct {
    int unk_00;
    const UnkStruct_ov109_021D59AC *unk_04;
} UnkStruct_ov109_021D5C14;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    UnkStruct_ov109_021D2D78 *unk_1C;
} UnkStruct_ov109_021D3110;

typedef struct {
    UnkStruct_ov109_021D3110 unk_00[5];
} UnkStruct_ov109_021D31A8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    UnkStruct_ov109_021D2D78 *unk_10;
} UnkStruct_ov109_021D3268;

typedef struct {
    UnkStruct_ov109_021D3268 unk_00[5];
} UnkStruct_ov109_021D32DC;

typedef struct {
    int unk_00;
    int unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    UnkStruct_ov109_021D2D78 *unk_14;
} UnkStruct_ov109_021D3370;

typedef struct {
    UnkStruct_ov109_021D3370 unk_00[5];
} UnkStruct_ov109_021D3414;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
} UnkStruct_ov109_021D34A8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
} UnkStruct_ov109_021D3700;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov109_021D2D78 *unk_0C;
} UnkStruct_ov109_021D3818;

typedef struct {
    UnkStruct_ov109_021D3818 unk_00[5];
} UnkStruct_ov109_021D3884;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18[5];
    UnkStruct_0209C0F0 unk_2C;
    UnkStruct_ov109_021D17EC unk_34;
    UnkStruct_ov109_021D1048 unk_44[5];
    TrainerInfo *unk_58[5];
    Strbuf *unk_6C[5];
} UnkStruct_ov109_021D0F70_sub1;

typedef struct UnkStruct_ov109_021D0F70_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    u32 unk_20;
    Party *unk_24;
    UnkStruct_ov109_021D2D78 *unk_28;
    UnkStruct_ov109_021D0F70_sub1 unk_2C;
    u8 unk_AC[32];
    UnkStruct_0209C194 *unk_CC;
    UnkStruct_0209BDF8 *unk_D0;
    UnkStruct_ov109_021D2AE4 unk_D4;
    UnkStruct_ov109_021D1334 unk_190;
    UnkStruct_ov109_021D31A8 unk_AB4;
    UnkStruct_ov109_021D32DC unk_B54;
    UnkStruct_ov109_021D3414 unk_BB8;
    UnkStruct_ov109_021D34A8 unk_C30;
    UnkStruct_ov109_021D3700 unk_C44;
    UnkStruct_ov109_021D3884 unk_C4C;
    UnkStruct_ov109_021D24F8 unk_C9C;
    UnkStruct_ov109_021D28C4 unk_D0C;
    UnkStruct_ov109_021D294C unk_D2C;
    NARC *unk_D80;
    BgConfig *unk_D84;
    NNSG2dScreenData *unk_D88;
    NNSG2dCharacterData *unk_D8C;
    NNSG2dPaletteData *unk_D90;
    SpriteSystem *unk_D94;
    SpriteManager *unk_D98;
    PaletteData *unk_D9C;
    GXRgb unk_DA0[8];
    SysTask *unk_DB0;
    SysTask *unk_DB4;
    SysTask *unk_DB8;
    SysTask *unk_DBC;
    SysTask *unk_DC0;
    SysTask *unk_DC4;
    void *unk_DC8;
} UnkStruct_ov109_021D0F70;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov109_021D0F70 *unk_10;
    ManagedSprite *unk_14;
} UnkStruct_ov109_021D3600;

static void ov109_021D0F70(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1C00(void *param0);
static void ov109_021D1C28(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1C68(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1C90(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1CF0(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1D10(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1DC8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1E1C(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D1EC8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2004(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2204(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D228C(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2298(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D22A4(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D22B0(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2308(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2344(UnkStruct_ov109_021D0F70 *param0, u32 param1);
static void ov109_021D2368(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2408(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D24C0(UnkStruct_ov109_021D0F70 *param0);
static ManagedSprite *ov109_021D24E0(UnkStruct_ov109_021D0F70 *param0, const SpriteTemplate *param1);
static void ov109_021D24F8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D25E8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2634(UnkStruct_ov109_021D0F70 *param0, u32 param1);
static void ov109_021D268C(UnkStruct_ov109_021D0F70 *param0, u32 param1, const TrainerInfo *param2);
static void ov109_021D2714(UnkStruct_ov109_021D0F70 *param0, u32 param1, u32 param2);
static void ov109_021D2788(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D27AC(UnkStruct_ov109_021D0F70 *param0, int param1);
static void ov109_021D27F0(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2820(UnkStruct_ov109_021D0F70 *param0, Strbuf *param1, int param2, TextColor param3);
static void ov109_021D2874(UnkStruct_ov109_021D0F70 *param0, Strbuf *param1, int param2, int param3);
static void ov109_021D28A0(UnkStruct_ov109_021D0F70 *param0, int param1);
static void ov109_021D28C4(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D293C(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D294C(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D29AC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D29CC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2A58(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2A68(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2AC8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2AE4(UnkStruct_ov109_021D2AE4 *param0, fx32 param1);
static void ov109_021D2AF0(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2AF8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2B00(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2BD4(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2C0C(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1);
static void ov109_021D2C38(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2CCC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2D44(UnkStruct_ov109_021D0F70 *param0, fx32 param1);
static void ov109_021D2D78(UnkStruct_ov109_021D2D78 *param0, const VecFx32 *param1);
static UnkStruct_ov109_021D2D78 *ov109_021D2DF8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D2EC0(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1);
static void ov109_021D2EF4(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2EF4 *param1);
static void ov109_021D2F68(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1);
static void ov109_021D2FA4(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2FA4 *param1);
static SysTask *ov109_021D2FE0(UnkStruct_ov109_021D0F70 *param0, int param1, int param2, int param3, int param4, int param5, UnkStruct_ov109_021D2D78 *param6);
static void ov109_021D302C(SysTask *param0, void *param1);
static void ov109_021D31A8(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D31E0(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3218(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D3248(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D32DC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3318(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3328(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1);
static void ov109_021D3414(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3450(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3460(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1);
static void ov109_021D3584(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D35BC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D35CC(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D35E8(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D35F4(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D379C(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D37E0(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D37F0(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D37FC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3884(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D38BC(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D38CC(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1);
static void ov109_021D38F8(UnkStruct_ov109_021D0F70 *param0);
static SysTask *ov109_021D3684(UnkStruct_ov109_021D0F70 *param0);
static void ov109_021D3990(UnkStruct_ov109_021D0F70 *param0, int param1);
static void ov109_021D39D4(fx32 *param0, fx32 param1);
static void ov109_021D39FC(UnkStruct_ov109_021D0F70 *param0, fx32 param1);
static BOOL ov109_021D3A14(UnkStruct_ov109_021D0F70 *param0);
static void *ov109_021D3A2C(UnkStruct_ov109_021D0F70 *param0, u32 param1, BOOL param2);
static void *ov109_021D3A94(UnkStruct_ov109_021D0F70 *param0, u32 param1);
static void *ov109_021D3AB4(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D3AB8(UnkStruct_ov109_021D0F70 *param0, u16 param1);
static BOOL ov109_021D3ACC(UnkStruct_ov109_021D0F70 *param0);
static int ov109_021D3B04(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D3B54(UnkStruct_ov109_021D0F70 *param0, int param1);
static void ov109_021D3B70(UnkStruct_ov109_021D0F70 *param0, int param1);
static int ov109_021D3BC4(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D3C08(UnkStruct_ov109_021D0F70 *param0, fx32 param1, int param2);
static BOOL ov109_021D3C94(Party *param0);
static BOOL ov109_021D3CD8(UnkStruct_ov109_021D0F70 *param0);
static int ov109_021D3D1C(UnkStruct_ov109_021D0F70 *param0);
static BOOL ov109_021D3D3C(UnkStruct_ov109_021D0F70 *param0);

static const WindowTemplate Unk_ov109_021D59B8[1];
static const WindowTemplate *const Unk_ov109_021D5A68[5 + 1];
static const u16 Unk_ov109_021D5C44[5 + 1][5];
static const u16 Unk_ov109_021D5C80[5 + 1][5];
static const UnkStruct_ov109_021D5C14 Unk_ov109_021D5C14[5 + 1];
static const u32 Unk_ov109_021D5BE4[5 + 1][2];
static const u32 Unk_ov109_021D5A80[5 + 1];
static const fx32 Unk_ov109_021D5A98[5 + 1];
static int (*const Unk_ov109_021D5CBC[54])(UnkStruct_ov109_021D0F70 *);
static int (*const Unk_ov109_021D59D8[3])(UnkStruct_ov109_021D2FE0 *);

int ov109_021D0D80(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov109_021D0F70 *v0;
    UnkStruct_0209C194 *v1 = ApplicationManager_Args(appMan);

    CommMan_SetErrorHandling(1, 1);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    ResetLock(RESET_LOCK_0x2);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_95, 0x80000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov109_021D0F70), HEAP_ID_95);
    memset(v0, 0, sizeof(UnkStruct_ov109_021D0F70));

    v1->unk_38 = v0;
    v0->unk_CC = v1;
    v0->unk_D0 = v1->unk_34;
    v0->unk_24 = SaveData_GetParty(v0->unk_CC->unk_14.saveData);
    v0->unk_D80 = NARC_ctor(NARC_INDEX_DATA__GURU2, HEAP_ID_95);

    VramTransfer_New(8, HEAP_ID_95);
    EnableTouchPad();
    InitializeTouchPad(4);
    ov109_021D1C28(v0);
    SetVBlankCallback(ov109_021D1C00, v0);
    ov109_021D29CC(v0);
    ov109_021D2AF0(v0);

    {
        int v2 = 0, v3 = 0;
        int v4 = CommSys_CurNetId();
        UnkStruct_ov109_021D2AE4 *v5 = &v0->unk_D4;

        do {
            if (v0->unk_CC->unk_0C & (1 << v2)) {
                if (v2 == v4) {
                    break;
                }

                v3++;
            }

            v2++;
        } while (v2 < 5);

        v5->unk_40 = (FX32_ONE * (Unk_ov109_021D5C44[v0->unk_CC->unk_08][v3]));
    }

    v0->unk_1C = Sound_GetCurrentBGM();

    ov109_021D31A8(v0);
    ov109_021D32DC(v0);
    ov109_021D3414(v0);
    ov109_021D3584(v0);
    ov109_021D379C(v0);
    ov109_021D3884(v0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_95);

    return 1;
}

int ov109_021D0EB4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov109_021D0F70 *v0 = ApplicationManager_Data(appMan);

    if (DisableTouchPad() != 1) {
        GF_ASSERT(0);
    }

    ov109_021D31E0(v0);
    ov109_021D3318(v0);
    ov109_021D3450(v0);
    ov109_021D35BC(v0);
    ov109_021D37E0(v0);
    ov109_021D38BC(v0);
    ov109_021D2A58(v0);
    ov109_021D2AF8(v0);
    ov109_021D1C68(v0);

    SetVBlankCallback(NULL, NULL);
    VramTransfer_Free();
    NARC_dtor(v0->unk_D80);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_95);
    ResetUnlock(RESET_LOCK_0x2);

    return 1;
}

int ov109_021D0F2C(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 *v1 = ApplicationManager_Data(appMan);

    ov109_021D294C(v1);

    do {
        v0 = Unk_ov109_021D5CBC[v1->unk_00](v1);
    } while (v0 == 1);

    if (v0 == 2) {
        return 1;
    }

    ov109_021D2A68(v1);
    ov109_021D2C38(v1);
    ov109_021D1C90(v1);
    ov109_021D0F70(v1);

    return 0;
}

static void ov109_021D0F70(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_2C.unk_08 = 0;
    param0->unk_2C.unk_10 = 0;
}

static int ov109_021D0F78(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D2634(param0, 0);
    param0->unk_00 = 1;
    return 0;
}

static int ov109_021D0F8C(UnkStruct_ov109_021D0F70 *param0)
{
    if (IsScreenFadeDone()) {
        if (CommSys_CurNetId() == 0) {
            param0->unk_00 = 2;
        } else {
            param0->unk_00 = 8;
        }

        return 1;
    }

    return 0;
}

static int ov109_021D0FB0(UnkStruct_ov109_021D0F70 *param0)
{
    if (ov109_021D3ACC(param0)) {
        param0->unk_00 = 3;
        return 1;
    }

    return 0;
}

static int ov109_021D0FC8(UnkStruct_ov109_021D0F70 *param0)
{
    u16 v0 = (1 << 0);

    if (sub_0209BEBC(param0->unk_D0, 8, &v0, 2) == 1) {
        param0->unk_00 = 4;
        return 1;
    }

    return 0;
}

static int ov109_021D0FF8(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = ov109_021D3B04(param0) + 1;

    if (v0 != CommSys_ConnectedCount()) {
        return 0;
    }

    param0->unk_00 = 5;
    return 1;
}

static int ov109_021D1018(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;

    param0->unk_2C.unk_04 = ov109_021D3B04(param0) + 1;

    v0 = sub_0209BEBC(param0->unk_D0, 13, &param0->unk_2C.unk_04, 4);

    if (v0 == 1) {
        param0->unk_14 = 0;
        param0->unk_00 = 6;
    }

    return 0;
}

static int ov109_021D1048(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D1048 v1;

    if (param0->unk_14 == 0) {
        v1.unk_02 = 0;
        v1.unk_00 = 0;

        v0 = sub_0209BEBC(param0->unk_D0, 12, &v1, sizeof(UnkStruct_ov109_021D1048));

        if (v0 == 1) {
            param0->unk_14++;
        }

        return 0;
    }

    {
        int v2 = 1, v3 = 1;
        u32 v4 = param0->unk_D0->unk_42;

        do {
            if (v4 & (1 << v2)) {
                if (v3 >= param0->unk_14) {
                    v1.unk_02 = v2;
                    v1.unk_00 = param0->unk_14;

                    v0 = sub_0209BEBC(param0->unk_D0, 12, &v1, sizeof(UnkStruct_ov109_021D1048));

                    if (v0 == 1) {
                        param0->unk_14++;
                    }
                    break;
                }

                v3++;
            }

            v2++;
        } while (v2 < 5);
    }

    if (param0->unk_14 >= param0->unk_2C.unk_04) {
        param0->unk_00 = 7;
    }

    return 0;
}

static int ov109_021D10D8(UnkStruct_ov109_021D0F70 *param0)
{
    u16 v0 = (1 << 3);

    if (sub_0209BEBC(param0->unk_D0, 8, &v0, 2) == 1) {
        param0->unk_00 = 10;
    }

    return 0;
}

static int ov109_021D1100(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = sub_0209BEBC(param0->unk_D0, 9, NULL, 0);

    if (v0 == 1) {
        param0->unk_10 = 0;
        param0->unk_00 = 9;
        return 0;
    }

    return 0;
}

static int ov109_021D1124(UnkStruct_ov109_021D0F70 *param0)
{
    if (ov109_021D3AB8(param0, 1 << 3) == 1) {
        GF_ASSERT(param0->unk_2C.unk_04 >= 2);
        GF_ASSERT(param0->unk_2C.unk_00 != 0);
        param0->unk_00 = 10;
    }

    return 0;
}

static int ov109_021D1150(UnkStruct_ov109_021D0F70 *param0)
{
    CommTiming_StartSync(202);
    param0->unk_00 = 11;
    return 0;
}

static int ov109_021D1164(UnkStruct_ov109_021D0F70 *param0)
{
    if (CommTiming_IsSyncState(202)) {
        param0->unk_00 = 12;
    }

    return 0;
}

static int ov109_021D117C(UnkStruct_ov109_021D0F70 *param0)
{
    if (sub_0209BEBC(param0->unk_D0, 14, &param0->unk_CC->unk_04, 4)) {
        param0->unk_00 = 13;
    }

    return 0;
}

static int ov109_021D11A0(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    u32 v1 = (u32)param0->unk_24;
    v0 = CommSys_SendDataHuge(131, (void *)v1, 236 * 6 + 4 * 2);

    if (v0) {
        param0->unk_00 = 14;
    }

    return 0;
}

static int ov109_021D11BC(UnkStruct_ov109_021D0F70 *param0)
{
    if (ov109_021D3BC4(param0) == param0->unk_2C.unk_04) {
        if (ov109_021D3CD8(param0) == 1) {
            sub_0209BEBC(param0->unk_D0, 16, NULL, 0);
            param0->unk_00 = 46;
        } else {
            sub_0209BEBC(param0->unk_D0, 17, NULL, 0);
            param0->unk_00 = 15;
        }
    }

    return 0;
}

static int ov109_021D1204(UnkStruct_ov109_021D0F70 *param0)
{
    if (ov109_021D3D3C(param0) == 1) {
        param0->unk_00 = 46;
    } else if (ov109_021D3D1C(param0) == param0->unk_2C.unk_04) {
        param0->unk_00 = 16;
    }

    return 0;
}

static int ov109_021D122C(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D122C *v1 = ov109_021D3A94(param0, sizeof(UnkStruct_ov109_021D122C));

    v1->unk_10 = param0->unk_2C.unk_00;
    v1->unk_14 = param0->unk_2C.unk_04;
    v1->unk_04 = Unk_ov109_021D5C44[v1->unk_14][param0->unk_2C.unk_00];

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (ov109_021D3B54(param0, v0)) {
            param0->unk_2C.unk_58[v0] = CommInfo_TrainerInfo(v0);
            TrainerInfo_NameStrbuf(
                param0->unk_2C.unk_58[v0], param0->unk_2C.unk_6C[v0]);
        }
    }

    param0->unk_D4.unk_40 = (FX32_ONE * (v1->unk_04));
    param0->unk_00 = 17;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_15, SEQ_PL_GURUGURU, 1);
    ov109_021D2788(param0);

    return 1;
}

static int ov109_021D12B0(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_0C--;

    if (param0->unk_0C > 0) {
        return 0;
    }

    param0->unk_0C = 15;

    {
        UnkStruct_ov109_021D122C *v0 = ov109_021D3AB4(param0);
        u16 v1 = Unk_ov109_021D5C80[v0->unk_14][v0->unk_10];
        int v2 = param0->unk_2C.unk_44[v0->unk_10].unk_02;

        ov109_021D2FE0(param0, v2, v0->unk_10, v0->unk_00, v1, v0->unk_04, &param0->unk_190.unk_140[v0->unk_10]);

        v0->unk_10++;
        v0->unk_10 %= v0->unk_14;
        v0->unk_00++;

        if (v0->unk_00 == v0->unk_14) {
            param0->unk_0C = 0;
            param0->unk_00 = 18;
        }
    }

    return 0;
}

static int ov109_021D1334(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;
    int v1 = 0, v2 = 0, v3 = param0->unk_2C.unk_04;

    do {
        if (v0->unk_140[v1].unk_08 == 1) {
            v2++;
        }

        v1++;
    } while (v1 < v3);

    if (v2 == v3) {
        param0->unk_00 = 19;
        return 1;
    }

    return 0;
}

static int ov109_021D1368(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_0C++;

    if (param0->unk_0C > 30) {
        param0->unk_0C = 0;

        if (CommSys_CurNetId() == 0) {
            param0->unk_00 = 20;
        } else {
            param0->unk_00 = 21;
        }
    }

    return 0;
}

static int ov109_021D1390(UnkStruct_ov109_021D0F70 *param0)
{
    u16 v0 = (1 << 2);

    if (sub_0209BEBC(param0->unk_D0, 8, &v0, 2) == 1) {
        param0->unk_00 = 22;
    }

    return 0;
}

static int ov109_021D13BC(UnkStruct_ov109_021D0F70 *param0)
{
    if (ov109_021D3AB8(param0, 1 << 2) == 1) {
        param0->unk_00 = 22;

        return 1;
    }

    return 0;
}

static int ov109_021D13D8(UnkStruct_ov109_021D0F70 *param0)
{
    CommTiming_StartSync(202);
    param0->unk_00 = 23;
    return 0;
}

static int ov109_021D13EC(UnkStruct_ov109_021D0F70 *param0)
{
    if (CommTiming_IsSyncState(202)) {
        param0->unk_00 = 24;
    }

    return 0;
}

static int ov109_021D1404(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D3990(param0, 1);
    ov109_021D3684(param0);
    param0->unk_00 = 25;

    return 0;
}

static int ov109_021D141C(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;

    param0->unk_0C++;

    if (param0->unk_0C < (30 * 3 + 5)) {
        return 0;
    }

    for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
        ov109_021D28A0(param0, v0);
    }

    param0->unk_0C = 0;
    param0->unk_00 = 26;

    return 0;
}

static int ov109_021D1450(UnkStruct_ov109_021D0F70 *param0)
{
    if (CommSys_CurNetId() == 0) {
        param0->unk_00 = 27;
    } else {
        param0->unk_00 = 27;
    }

    return 0;
}

static int ov109_021D1460(UnkStruct_ov109_021D0F70 *param0)
{
    {
        BOOL v0 = ov109_021D3A14(param0);

        if ((v0 == 1) && (ov109_021D35F4(param0) == 0)) {
            param0->unk_00 = 29;
            return 1;
        }
    }

    if (param0->unk_2C.unk_08) {
        if (ov109_021D35F4(param0) == 0) {
            ov109_021D35CC(param0);
        }
    }

    if (ov109_021D37F0(param0) == 0) {
        if (ov109_021D29AC(param0) == 1) {
            if (ov109_021D35F4(param0) == 0) {
                ov109_021D35CC(param0);
                param0->unk_2C.unk_0C = 1;
            }

            ov109_021D37FC(param0);
        }
    }

    if (param0->unk_2C.unk_0C) {
        if (sub_0209BEBC(param0->unk_CC->unk_34, 10, &param0->unk_2C.unk_0C, 1) == 1) {
            param0->unk_2C.unk_0C = 0;
        }
    }

    {
        fx32 v1;
        UnkStruct_ov109_021D2AE4 *v2 = &param0->unk_D4;

        if (param0->unk_08 < ((30 * 20) / 2)) {
            v2->unk_48 += (FX32_ONE * 14 / ((30 * 20) / 2));

            if (v2->unk_48 >= (FX32_ONE * 14)) {
                v2->unk_48 = (FX32_ONE * 14);
            }
        } else {
            v2->unk_48 -= (FX32_ONE * 14 / ((30 * 20) / 2));

            if (v2->unk_48 < (FX32_ONE * 4)) {
                v2->unk_48 = (FX32_ONE * 4);
            }
        }

        v1 = v2->unk_48;

        if (ov109_021D35E8(param0) == 1) {
            ov109_021D2AE4(&param0->unk_D4, (v1) << 1);
        } else {
            ov109_021D39FC(param0, v1);
        }
    }

    {
        UnkStruct_0209C0F0 v3;

        v3.unk_02 = param0->unk_08;
        v3.unk_04 = ((param0->unk_D4.unk_48) / FX32_ONE);
        v3.unk_06 = ((param0->unk_D4.unk_3C) / FX32_ONE);

        sub_0209BEBC(param0->unk_D0, 11, &v3, sizeof(UnkStruct_0209C0F0));
    }

    return 0;
}

static int ov109_021D1570(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_2C.unk_10 == 1) {
        param0->unk_D4.unk_3C = (FX32_ONE * (param0->unk_2C.unk_2C.unk_06));
        param0->unk_D4.unk_48 = (FX32_ONE * (param0->unk_2C.unk_2C.unk_04));
        param0->unk_08 = param0->unk_2C.unk_2C.unk_02;
    }

    {
        BOOL v0 = ov109_021D3A14(param0);

        if ((v0 == 1) && (ov109_021D35F4(param0) == 0)) {
            param0->unk_00 = 29;
            return 1;
        }
    }

    if (param0->unk_2C.unk_08) {
        if (ov109_021D35F4(param0) == 0) {
            ov109_021D35CC(param0);
        }
    }

    if (ov109_021D37F0(param0) == 0) {
        if (ov109_021D29AC(param0) == 1) {
            if (ov109_021D35F4(param0) == 0) {
                ov109_021D35CC(param0);
                param0->unk_2C.unk_0C = 1;
            }

            ov109_021D37FC(param0);
        }
    }

    if (param0->unk_2C.unk_0C) {
        if (sub_0209BEBC(param0->unk_CC->unk_34, 10, &param0->unk_2C.unk_0C, 1) == 1) {
            param0->unk_2C.unk_0C = 0;
        }
    }

    if (ov109_021D35E8(param0) == 1) {
        ov109_021D2AE4(&param0->unk_D4, (param0->unk_D4.unk_48) << 1);
    } else {
        ov109_021D39FC(param0, param0->unk_D4.unk_48);
    }

    return 0;
}

static int ov109_021D1648(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D3990(param0, 0);

    param0->unk_28 = ov109_021D2DF8(param0);

    if (param0->unk_28->unk_0C == CommSys_CurNetId()) {
        param0->unk_00 = 30;
    } else {
        param0->unk_00 = 31;
    }

    Sound_PlayEffect(SEQ_SE_DP_PINPON);
    return 1;
}

static int ov109_021D167C(UnkStruct_ov109_021D0F70 *param0)
{
    u32 v0;
    UnkStruct_ov109_021D2D78 *v1 = param0->unk_28;

    ov109_021D39FC(param0, FX32_ONE * 4);
    param0->unk_28 = ov109_021D2DF8(param0);

    if (param0->unk_28->unk_0C != CommSys_CurNetId()) {
        param0->unk_00 = 31;
    }

    return 0;
}

static int ov109_021D16A4(UnkStruct_ov109_021D0F70 *param0)
{
    int v0, v1;
    fx32 v2, v3, v4, v5;
    UnkStruct_ov109_021D2D78 *v6 = param0->unk_28;

    v1 = param0->unk_2C.unk_00;
    v0 = param0->unk_2C.unk_04;
    v5 = (FX32_ONE * 4);
    v2 = v6->unk_1C;
    v3 = (FX32_ONE * (Unk_ov109_021D5C80[v0][v1]));

    v4 = v3 - v2;

    if (v4 < 0) {
        v4 = (v3 + (FX32_ONE * 360)) - v2;
    }

    if (v4 <= (FX32_ONE * 16)) {
        v5 >>= 1;
    }

    if (v4 < v5) {
        v5 = v4;
    }

    ov109_021D2AE4(&param0->unk_D4, v5);
    ov109_021D2D44(param0, v5);
    ov109_021D39D4(&v2, v5);

    if (((v2) / FX32_ONE) == ((v3) / FX32_ONE)) {
        param0->unk_00 = 32;
    }

    return 0;
}

static int ov109_021D1720(UnkStruct_ov109_021D0F70 *param0)
{
    CommTiming_StartSync(202);
    param0->unk_00 = 33;
    return 0;
}

static int ov109_021D1734(UnkStruct_ov109_021D0F70 *param0)
{
    if (CommTiming_IsSyncState(202)) {
        if (CommSys_CurNetId() == 0) {
            param0->unk_00 = 34;
        } else {
            param0->unk_00 = 35;
        }
    }

    return 0;
}

static int ov109_021D1758(UnkStruct_ov109_021D0F70 *param0)
{
    int v0, v1;
    UnkStruct_ov109_021D2D78 *v2;
    UnkStruct_ov109_021D17EC v3;

    v3.unk_00 = ((param0->unk_D4.unk_3C) / FX32_ONE);

    for (v0 = 0, param0->unk_20 = 0; v0 < param0->unk_2C.unk_04; v0++) {
        v2 = &param0->unk_190.unk_140[v0];
        GF_ASSERT(v2->unk_00);
        v3.unk_04[v2->unk_10] = (u16)((v2->unk_1C) / FX32_ONE);

        if (ov109_021D3C08(param0, v2->unk_1C, param0->unk_2C.unk_04) == 1) {
            param0->unk_20 |= (1 << v2->unk_0C);
        }
    }

    v3.unk_02 = param0->unk_20;
    v1 = sub_0209BEBC(param0->unk_D0, 15, &v3, sizeof(UnkStruct_ov109_021D17EC));

    if (v1 == 1) {
        param0->unk_00 = 36;
    }

    return 0;
}

static int ov109_021D17EC(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_2C.unk_14 == 1) {
        int v0;
        UnkStruct_ov109_021D2D78 *v1;
        UnkStruct_ov109_021D17EC *v2 = &param0->unk_2C.unk_34;

        param0->unk_D4.unk_3C = (FX32_ONE * (v2->unk_00));

        for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
            v1 = &param0->unk_190.unk_140[v0];
            GF_ASSERT(v1->unk_00);
            v1->unk_1C = (FX32_ONE * (v2->unk_04[v1->unk_10]));
        }

        param0->unk_20 = v2->unk_02;

        ov109_021D2A68(param0);
        ov109_021D2C38(param0);

        param0->unk_28 = ov109_021D2DF8(param0);
        param0->unk_00 = 36;
    }

    return 0;
}

static int ov109_021D1858(UnkStruct_ov109_021D0F70 *param0)
{
    int v0, v1;
    int v2 = param0->unk_28->unk_10;

    for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
        v1 = param0->unk_190.unk_140[v2].unk_0C;
        ov109_021D2874(param0, param0->unk_2C.unk_6C[v1], v0, v1);
        v2++;
        v2 %= param0->unk_2C.unk_04;
    }

    param0->unk_0C = 0;
    param0->unk_00 = 37;

    return 0;
}

static int ov109_021D18A0(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_0C++;

    if (param0->unk_0C < (30 * 4)) {
        return 0;
    }

    param0->unk_0C = 0;

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
            ov109_021D28A0(param0, v0);
        }
    }

    {
        int v1 = param0->unk_28->unk_0C;
        ov109_021D268C(param0, 2, param0->unk_2C.unk_58[v1]);
    }

    {
        Sound_PlayFanfare(SEQ_FANFA4);
    }

    param0->unk_00 = 38;
    return 0;
}

static int ov109_021D18F4(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else if (Sound_IsBGMPausedByFanfare() == 0) {
        param0->unk_0C = 0;
        param0->unk_00 = 39;
    }

    return 0;
}

static int ov109_021D1918(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D38F8(param0);

    if ((param0->unk_20 & (1 << param0->unk_28->unk_0C)) == 0) {
        param0->unk_00 = 43;
        return 0;
    }

    {
        u32 v0;

        v0 = Unk_ov109_021D5BE4[param0->unk_2C.unk_04][0];
        v0 += LCRNG_Next() % (Unk_ov109_021D5BE4[param0->unk_2C.unk_04][1] - v0 + 1);

        if (v0 < Unk_ov109_021D5BE4[param0->unk_2C.unk_04][0]) {
            v0 = Unk_ov109_021D5BE4[param0->unk_2C.unk_04][0];
        } else if (v0 > Unk_ov109_021D5BE4[param0->unk_2C.unk_04][1]) {
            v0 = Unk_ov109_021D5BE4[param0->unk_2C.unk_04][1];
        }

        ov109_021D2714(param0, 3, v0);

        BOOL removedItem = Bag_TryAddItem(SaveData_GetBag(param0->unk_CC->unk_14.saveData), v0, 1, HEAP_ID_95);
        Sound_PlayFanfare(SEQ_FANFA4);

        if (removedItem == TRUE) {
            param0->unk_00 = 40;
        } else {
            param0->unk_00 = 41;
        }
    }

    return 0;
}

static int ov109_021D19AC(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else if (Sound_IsBGMPausedByFanfare() == 0) {
        param0->unk_0C = 0;
        param0->unk_00 = 43;
    }

    return 0;
}

static int ov109_021D19D0(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else if (Sound_IsBGMPausedByFanfare() == 0) {
        param0->unk_0C = 0;
        param0->unk_00 = 40;
        ov109_021D2634(param0, 4);
    }

    return 0;
}

static int ov109_021D19FC(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else {
        param0->unk_0C = 0;
        param0->unk_00 = 43;
    }

    return 0;
}

static int ov109_021D1A14(UnkStruct_ov109_021D0F70 *param0)
{
    void *journalEntryOnlineEvent = JournalEntry_CreateEventMisc(95, ONLINE_EVENT_SPIN_TRADE);

    JournalEntry_SaveData(param0->unk_CC->unk_14.unk_18, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    GameRecords_IncrementRecordValue(param0->unk_CC->unk_14.records, RECORD_UNK_119);
    GameRecords_IncrementTrainerScore(param0->unk_CC->unk_14.records, TRAINER_SCORE_EVENT_UNK_45);
    ov109_021D2634(param0, 11);
    CommTiming_StartSync(202);

    gSystem.inhibitReset = 1;
    param0->unk_00 = 44;

    return 0;
}

static int ov109_021D1A6C(UnkStruct_ov109_021D0F70 *param0)
{
    if (CommTiming_IsSyncState(202)) {
        ov109_021D3B70(param0, param0->unk_28->unk_0C);
        sub_02038ED4(&param0->unk_04);
        param0->unk_DC8 = Window_AddWaitDial(&param0->unk_C9C.unk_0C[0], 1 + 9);
        param0->unk_00 = 45;
    }

    return 0;
}

static int ov109_021D1AA8(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = sub_02038EDC(
        param0->unk_CC->unk_14.saveData, 2, &param0->unk_04);

    if (v0) {
        gSystem.inhibitReset = 0;
        DestroyWaitDial(param0->unk_DC8);
        param0->unk_00 = 48;
    }

    return 0;
}

static int ov109_021D1ADC(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D2634(param0, 12);
    param0->unk_00 = 47;
    return 0;
}

static int ov109_021D1AF0(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_0C++;

    if (param0->unk_0C >= (30 * 4)) {
        param0->unk_0C = 0;
        param0->unk_00 = 48;

        return 1;
    }

    return 0;
}

static int ov109_021D1B0C(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_18 == 0) {
        CommTiming_StartSync(202);
    }

    ov109_021D2634(param0, 10);
    param0->unk_00 = 49;

    return 0;
}

static int ov109_021D1B2C(UnkStruct_ov109_021D0F70 *param0)
{
    if (param0->unk_18 == 0) {
        if (CommTiming_IsSyncState(202)) {
            CommMan_SetErrorHandling(0, 0);
            sub_02037B58(1);
            sub_02036AC4();
            param0->unk_00 = 50;
        }
    } else {
        param0->unk_0C++;

        if (param0->unk_0C >= (30 * 4)) {
            param0->unk_0C = 0;

            if (param0->unk_D0->unk_3C == 0) {
                CommMan_SetErrorHandling(0, 0);
                sub_02037B58(1);
                sub_02036AC4();
            }

            param0->unk_00 = 50;
        }
    }

    return 0;
}

static int ov109_021D1B8C(UnkStruct_ov109_021D0F70 *param0)
{
    if (CommSys_ConnectedCount() <= 1) {
        param0->unk_00 = 51;
        return 1;
    }

    return 0;
}

static int ov109_021D1BA4(UnkStruct_ov109_021D0F70 *param0)
{
    StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_95);

    if (param0->unk_1C != Sound_Impl_GetCurrentBGM()) {
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, param0->unk_1C, 1);
    }

    param0->unk_00 = 52;
    return 0;
}

static int ov109_021D1BE4(UnkStruct_ov109_021D0F70 *param0)
{
    if (IsScreenFadeDone()) {
        param0->unk_00 = 53;
        return 1;
    }

    return 0;
}

static int ov109_021D1BFC(UnkStruct_ov109_021D0F70 *param0)
{
    return 2;
}

static int (*const Unk_ov109_021D5CBC[54])(UnkStruct_ov109_021D0F70 *g2m) = {
    ov109_021D0F78,
    ov109_021D0F8C,
    ov109_021D0FB0,
    ov109_021D0FC8,
    ov109_021D0FF8,
    ov109_021D1018,
    ov109_021D1048,
    ov109_021D10D8,
    ov109_021D1100,
    ov109_021D1124,
    ov109_021D1150,
    ov109_021D1164,
    ov109_021D117C,
    ov109_021D11A0,
    ov109_021D11BC,
    ov109_021D1204,
    ov109_021D122C,
    ov109_021D12B0,
    ov109_021D1334,
    ov109_021D1368,
    ov109_021D1390,
    ov109_021D13BC,
    ov109_021D13D8,
    ov109_021D13EC,
    ov109_021D1404,
    ov109_021D141C,
    ov109_021D1450,
    ov109_021D1460,
    ov109_021D1570,
    ov109_021D1648,
    ov109_021D167C,
    ov109_021D16A4,
    ov109_021D1720,
    ov109_021D1734,
    ov109_021D1758,
    ov109_021D17EC,
    ov109_021D1858,
    ov109_021D18A0,
    ov109_021D18F4,
    ov109_021D1918,
    ov109_021D19AC,
    ov109_021D19D0,
    ov109_021D19FC,
    ov109_021D1A14,
    ov109_021D1A6C,
    ov109_021D1AA8,
    ov109_021D1ADC,
    ov109_021D1AF0,
    ov109_021D1B0C,
    ov109_021D1B2C,
    ov109_021D1B8C,
    ov109_021D1BA4,
    ov109_021D1BE4,
    ov109_021D1BFC,
};

static void ov109_021D1C00(void *param0)
{
    UnkStruct_ov109_021D0F70 *v0 = param0;

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->unk_D9C);
    Bg_RunScheduledUpdates(v0->unk_D84);
}

static void ov109_021D1C28(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D1CF0(param0);
    ov109_021D1E1C(param0);
    ov109_021D28C4(param0);
    ov109_021D1EC8(param0);
    ov109_021D22B0(param0);
    ov109_021D2368(param0);

    ov109_021D2004(param0);
    ov109_021D24F8(param0);
    ov109_021D2408(param0);
    ov109_021D1D10(param0);
}

static void ov109_021D1C68(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D1DC8(param0);
    ov109_021D24C0(param0);
    ov109_021D25E8(param0);
    ov109_021D2204(param0);
    ov109_021D2308(param0);
    ov109_021D293C(param0);
}

static void ov109_021D1C90(UnkStruct_ov109_021D0F70 *param0)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);

    ov109_021D2AC8(param0);
    ov109_021D2CCC(param0);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    SpriteSystem_DrawSprites(param0->unk_D98);
}

static void ov109_021D1CF0(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&v0);
}

static void ov109_021D1D10(UnkStruct_ov109_021D0F70 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    G2_SetBG0Priority(1);
    G2_SetBG1Priority(0);
    G2_SetBG2Priority(2);
    G2_SetBG3Priority(3);
    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(2);
    G2S_SetBG3Priority(3);

    {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, 11, 10);
    }
}

static void ov109_021D1DC8(UnkStruct_ov109_021D0F70 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov109_021D1E1C(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;

    NNS_G3dInit();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_DA0[v0] = GX_RGB(4, 4, 4);
    }

    G3X_SetEdgeColorTable(param0->unk_DA0);
    G3X_SetClearColor(GX_RGB(31, 31, 31), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);
}

static void ov109_021D1EC8(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_D84 = BgConfig_New(HEAP_ID_95);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0->unk_D84, BG_LAYER_MAIN_1, &v1, 0);
        Bg_ClearTilemap(param0->unk_D84, BG_LAYER_MAIN_1);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_95);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0->unk_D84, BG_LAYER_MAIN_2, &v2, 0);
        Bg_ClearTilemap(param0->unk_D84, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0->unk_D84, BG_LAYER_MAIN_3, &v3, 0);
        Bg_ClearTilemap(param0->unk_D84, BG_LAYER_MAIN_3);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0->unk_D84, BG_LAYER_SUB_2, &v4, 0);
        Bg_ClearTilemap(param0->unk_D84, BG_LAYER_SUB_2);
    }

    {
        BgTemplate v5 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1800,
            .charBase = GX_BG_CHARBASE_0x1c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0->unk_D84, BG_LAYER_SUB_3, &v5, 0);
        Bg_ClearTilemap(param0->unk_D84, BG_LAYER_SUB_3);
    }
}

static void ov109_021D2004(UnkStruct_ov109_021D0F70 *param0)
{
    void *v0 = ov109_021D3A2C(param0, 17, 0);
    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_D90);
    PaletteData_LoadBuffer(param0->unk_D9C, param0->unk_D90->pRawData, 0, 32 * 0, 32 * 2);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 20, 0);
    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_D90);
    PaletteData_LoadBuffer(param0->unk_D9C, param0->unk_D90->pRawData, 1, 32 * 0, 32 * 2);
    Heap_Free(v0);

    PaletteData_BlendMulti(param0->unk_D9C, 1, 0xffff, 8, 0);

    v0 = ov109_021D3A2C(param0, 16, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_D8C);
    Bg_LoadTiles(param0->unk_D84, 3, param0->unk_D8C->pRawData, param0->unk_D8C->szByte, 32 * 0);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 22, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_D8C);
    Bg_LoadTiles(param0->unk_D84, 6, param0->unk_D8C->pRawData, param0->unk_D8C->szByte, 32 * 0);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 21, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_D8C);
    Bg_LoadTiles(param0->unk_D84, 7, param0->unk_D8C->pRawData, param0->unk_D8C->szByte, 32 * 0);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 19, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    Bg_LoadTilemapBuffer(param0->unk_D84, 2, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_D84, 2);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 18, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    Bg_LoadTilemapBuffer(param0->unk_D84, 3, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_D84, 3);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 24, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    Bg_LoadTilemapBuffer(param0->unk_D84, 6, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_D84, 6);
    Heap_Free(v0);

    v0 = ov109_021D3A2C(param0, 23, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    Bg_LoadTilemapBuffer(param0->unk_D84, 7, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_D84, 7);
    Heap_Free(v0);
}

static void ov109_021D2204(UnkStruct_ov109_021D0F70 *param0)
{
    Bg_FreeTilemapBuffer(param0->unk_D84, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0->unk_D84, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0->unk_D84, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0->unk_D84, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0->unk_D84, BG_LAYER_SUB_3);
    Heap_Free(param0->unk_D84);
}

static void ov109_021D2248(UnkStruct_ov109_021D0F70 *param0, u32 param1)
{
    void *v0 = ov109_021D3A2C(param0, param1, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);

    Bg_LoadTilemapBuffer(param0->unk_D84, 6, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_D84, 6);
    Heap_Free(v0);
}

static void ov109_021D228C(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D2248(param0, 26);
}

static void ov109_021D2298(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D2248(param0, 24);
}

static void ov109_021D22A4(UnkStruct_ov109_021D0F70 *param0)
{
    ov109_021D2248(param0, 25);
}

static void ov109_021D22B0(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_D9C = PaletteData_New(HEAP_ID_95);

    PaletteData_SetAutoTransparent(param0->unk_D9C, 1);
    PaletteData_AllocBuffer(param0->unk_D9C, 0, 0x200, HEAP_ID_95);
    PaletteData_AllocBuffer(param0->unk_D9C, 2, 0x200, HEAP_ID_95);
    PaletteData_AllocBuffer(param0->unk_D9C, 1, 0x200, HEAP_ID_95);
    PaletteData_AllocBuffer(param0->unk_D9C, 3, 0x200, HEAP_ID_95);
}

static void ov109_021D2308(UnkStruct_ov109_021D0F70 *param0)
{
    PaletteData_FreeBuffer(param0->unk_D9C, 0);
    PaletteData_FreeBuffer(param0->unk_D9C, 2);
    PaletteData_FreeBuffer(param0->unk_D9C, 1);
    PaletteData_FreeBuffer(param0->unk_D9C, 3);
    PaletteData_Free(param0->unk_D9C);
}

static void ov109_021D2344(UnkStruct_ov109_021D0F70 *param0, u32 param1)
{
    PaletteData_BlendMulti(param0->unk_D9C, 1, 0xffff, param1, 0);
}

static void ov109_021D2368(UnkStruct_ov109_021D0F70 *param0)
{
    {
        const RenderOamTemplate v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const CharTransferTemplateWithModes v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        param0->unk_D94 = SpriteSystem_Alloc(95);
        SpriteSystem_Init(param0->unk_D94, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const SpriteResourceCapacities v3 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->unk_D98 = SpriteManager_New(param0->unk_D94);
        v2 = SpriteSystem_InitSprites(param0->unk_D94, param0->unk_D98, 255);
        GF_ASSERT(v2);
        v2 = SpriteSystem_InitManagerWithCapacities(param0->unk_D94, param0->unk_D98, &v3);
        GF_ASSERT(v2);
    }
}

static void ov109_021D2408(UnkStruct_ov109_021D0F70 *param0)
{
    SpriteSystem *v0 = param0->unk_D94;
    SpriteManager *v1 = param0->unk_D98;
    PaletteData *v2 = param0->unk_D9C;
    NARC *v3 = param0->unk_D80;

    {
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
    }

    {
        NARC *v4;

        v4 = NARC_ctor(NARC_INDEX_GRAPHIC__NUTMIXER, HEAP_ID_95);

        SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, v4, 14, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(v2, PLTTBUF_MAIN_OBJ, v0, v1, v4, 8, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 5);
        SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, v4, 13, FALSE, 6);
        SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, v4, 12, FALSE, 7);
        NARC_dtor(v4);
    }

    {
        sub_02039734();
    }

    {
        NNSG2dPaletteData *v5;
        void *v6 = sub_020394A8(HEAP_ID_95);

        NNS_G2dGetUnpackedPaletteData(v6, &v5);
        PaletteData_LoadBuffer(v2, v5->pRawData, 2, 14 * 16, 32);
        Heap_Free(v6);
    }
}

static void ov109_021D24C0(UnkStruct_ov109_021D0F70 *param0)
{
    SpriteSystem_FreeResourcesAndManager(param0->unk_D94, param0->unk_D98);
    SpriteSystem_Free(param0->unk_D94);
}

static ManagedSprite *ov109_021D24E0(UnkStruct_ov109_021D0F70 *param0, const SpriteTemplate *param1)
{
    ManagedSprite *v0 = SpriteSystem_NewSprite(param0->unk_D94, param0->unk_D98, param1);
    return v0;
}

static void ov109_021D24F8(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D24F8 *v1 = &param0->unk_C9C;

    LoadStandardWindowGraphics(param0->unk_D84, BG_LAYER_MAIN_1, 1, 15, 0, HEAP_ID_95);
    LoadMessageBoxGraphics(param0->unk_D84, BG_LAYER_MAIN_1, 1 + 9, 14, param0->unk_CC->unk_14.unk_04, HEAP_ID_95);
    PaletteData_LoadBufferFromFileStart(param0->unk_D9C, 38, GetMessageBoxPaletteNARCMember(param0->unk_CC->unk_14.unk_04), 95, 0, 0x20, 14 * 16);
    PaletteData_LoadBufferFromFileStart(param0->unk_D9C, 14, 7, 95, 0, 0x20, 15 * 16);

    v1->unk_04 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPIN_TRADE, HEAP_ID_95);
    v1->unk_08 = StringTemplate_Default(HEAP_ID_95);

    for (v0 = 0; v0 < 1; v0++) {
        Window_AddFromTemplate(param0->unk_D84, &v1->unk_0C[v0], &Unk_ov109_021D59B8[v0]);
    }

    v1->unk_6C = Strbuf_Init(0x100, HEAP_ID_95);

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_2C.unk_6C[v0] = Strbuf_Init(7 + 1, HEAP_ID_95);
    }

    ov109_021D27AC(param0, param0->unk_CC->unk_08);
}

static void ov109_021D25E8(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D24F8 *v1 = &param0->unk_C9C;

    for (v0 = 0; v0 < 1; v0++) {
        Window_ClearAndCopyToVRAM(&v1->unk_0C[v0]);
        Window_Remove(&v1->unk_0C[v0]);
    }

    ov109_021D27F0(param0);

    MessageLoader_Free(v1->unk_04);
    StringTemplate_Free(v1->unk_08);
    Strbuf_Free(v1->unk_6C);

    for (v0 = 0; v0 < 5; v0++) {
        Strbuf_Free(param0->unk_2C.unk_6C[v0]);
    }
}

static void ov109_021D2634(UnkStruct_ov109_021D0F70 *param0, u32 param1)
{
    UnkStruct_ov109_021D24F8 *v0 = &param0->unk_C9C;
    Window *v1 = &v0->unk_0C[0];

    Window_FillTilemap(v1, 15);
    Window_DrawMessageBoxWithScrollCursor(v1, 1, 1 + 9, 14);
    Window_FillTilemap(v1, 15);
    MessageLoader_GetStrbuf(v0->unk_04, param1, v0->unk_6C);
    Text_AddPrinterWithParams(v1, FONT_MESSAGE, v0->unk_6C, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov109_021D268C(UnkStruct_ov109_021D0F70 *param0, u32 param1, const TrainerInfo *param2)
{
    Strbuf *v0;
    UnkStruct_ov109_021D24F8 *v1 = &param0->unk_C9C;
    Window *v2 = &v1->unk_0C[0];

    StringTemplate_SetPlayerName(v1->unk_08, 1, CommInfo_TrainerInfo(CommSys_CurNetId()));
    StringTemplate_SetPlayerName(v1->unk_08, 2, param2);

    v0 = Strbuf_Init(0x100, HEAP_ID_95);

    MessageLoader_GetStrbuf(v1->unk_04, param1, v0);
    StringTemplate_Format(v1->unk_08, v1->unk_6C, v0);
    Strbuf_Free(v0);
    Window_DrawMessageBoxWithScrollCursor(v2, 1, 1 + 9, 14);
    Window_FillTilemap(v2, 15);
    Text_AddPrinterWithParams(v2, FONT_MESSAGE, v1->unk_6C, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v2);
}

static void ov109_021D2714(UnkStruct_ov109_021D0F70 *param0, u32 param1, u32 param2)
{
    Strbuf *v0;
    UnkStruct_ov109_021D24F8 *v1 = &param0->unk_C9C;
    Window *v2 = &v1->unk_0C[0];

    StringTemplate_SetItemName(v1->unk_08, 0, param2);

    v0 = Strbuf_Init(0x100, HEAP_ID_95);

    MessageLoader_GetStrbuf(v1->unk_04, param1, v0);
    StringTemplate_Format(v1->unk_08, v1->unk_6C, v0);
    Strbuf_Free(v0);
    Window_DrawMessageBoxWithScrollCursor(v2, 1, 1 + 9, 14);
    Window_FillTilemap(v2, 15);
    Text_AddPrinterWithParams(v2, FONT_MESSAGE, v1->unk_6C, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v2);
}

static void ov109_021D2788(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D24F8 *v0 = &param0->unk_C9C;
    Window *v1 = &v0->unk_0C[0];

    Window_EraseMessageBox(v1, 1);
    Window_FillTilemap(v1, 0);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov109_021D27AC(UnkStruct_ov109_021D0F70 *param0, int param1)
{
    int v0;
    UnkStruct_ov109_021D24F8 *v1 = &param0->unk_C9C;
    const WindowTemplate *v2 = Unk_ov109_021D5A68[param1];

    v1->unk_00 = param1;

    for (v0 = 0; v0 < param1; v0++) {
        Window_AddFromTemplate(param0->unk_D84, &v1->unk_1C[v0], &v2[v0]);
    }
}

static void ov109_021D27F0(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D24F8 *v1 = &param0->unk_C9C;

    for (v0 = 0; v0 < v1->unk_00; v0++) {
        Window_ClearAndCopyToVRAM(&v1->unk_1C[v0]);
        Window_Remove(&v1->unk_1C[v0]);
    }
}

static void ov109_021D2820(UnkStruct_ov109_021D0F70 *param0, Strbuf *param1, int param2, TextColor param3)
{
    UnkStruct_ov109_021D24F8 *v0 = &param0->unk_C9C;
    Window *v1 = &v0->unk_1C[param2];
    Window_DrawStandardFrame(v1, 1, 1, 14);
    Window_FillTilemap(v1, 15);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param1, Font_CalcCenterAlignment(FONT_SYSTEM, param1, 0, 8 * 8), 0, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov109_021D2874(UnkStruct_ov109_021D0F70 *param0, Strbuf *param1, int param2, int param3)
{
    TextColor v0 = TEXT_COLOR(1, 2, 0);

    if (param3 == CommSys_CurNetId()) {
        v0 = TEXT_COLOR(3, 4, 0);
    }

    ov109_021D2820(param0, param1, param2, v0);
}

static void ov109_021D28A0(UnkStruct_ov109_021D0F70 *param0, int param1)
{
    UnkStruct_ov109_021D24F8 *v0 = &param0->unk_C9C;
    Window *v1 = &v0->unk_1C[param1];

    Window_EraseMessageBox(v1, 1);
    Window_FillTilemap(v1, 0);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov109_021D28C4(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D28C4 *v0 = &param0->unk_D0C;

    v0->camera = Camera_Alloc(95);

    {
        VecFx32 v1;

        v0->unk_08.x = (FX32_ONE * 0);
        v0->unk_08.y = (FX32_ONE * 0);
        v0->unk_08.z = (FX32_ONE * 0);

        v0->cameraAngle.x = ((-32 * 0xffff) / 360);
        v0->cameraAngle.y = ((0 * 0xffff) / 360);
        v0->cameraAngle.z = ((0 * 0xffff) / 360);

        v0->unk_00 = (0x143 << FX32_SHIFT);
        v0->unk_04 = ((6 * 0xffff) / 360);

        Camera_InitWithTarget(&v0->unk_08, v0->unk_00, &v0->cameraAngle, v0->unk_04, 0, 1, v0->camera);

        v1.x = 0;
        v1.y = FX32_ONE;
        v1.z = 0;

        Camera_SetUp(&v1, v0->camera);
        Camera_SetAsActive(v0->camera);
    }
}

static void ov109_021D293C(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D28C4 *v0 = &param0->unk_D0C;
    Camera_Delete(v0->camera);
}

static void ov109_021D294C(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0, v1 = 4 - 1;
    UnkStruct_ov109_021D294C *v2 = &param0->unk_D2C;

    WriteAutoSamplingDataToBuffer(&v2->unk_10, TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_NO_WRITE, 0);

    while (v1 >= 0) {
        if (v2->unk_10.buffer[v1].touch == 1) {
            v2->unk_00 = v2->unk_10.buffer[v1].x;
            v2->unk_04 = v2->unk_10.buffer[v1].y;
            v0 = 1;
        }

        v1--;
    }

    v2->unk_08 = v0 & (v0 ^ v2->unk_0C);
    v2->unk_0C = v0;
}

static BOOL ov109_021D2990(UnkStruct_ov109_021D294C *param0)
{
    int v0, v1, v2, v3, v4, v5;

    v4 = param0->unk_00;
    v5 = param0->unk_04;
    v0 = 128 - (128 / 2);
    v1 = 96 - (128 / 2);
    v2 = 128 + (128 / 2) - 1;
    v3 = 96 + (128 / 2) - 1;

    if (((v5 >= v1) && (v5 <= v3)) && ((v4 >= v0) && (v4 <= v2))) {
        return 1;
    }

    return 0;
}

static BOOL ov109_021D29AC(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D294C *v0 = &param0->unk_D2C;

    if (v0->unk_08) {
        if (ov109_021D2990(v0) == 1) {
            return 1;
        }
    }

    return 0;
}

static void ov109_021D29CC(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    u32 v1;
    UnkStruct_ov109_021D2AE4 *v2 = &param0->unk_D4;
    NARC *v3 = param0->unk_D80;

    v0 = param0->unk_CC->unk_08;
    v1 = Unk_ov109_021D5A80[v0];

    Simple3D_LoadModelFromSet(&v2->unk_54, 0, v3, v1, HEAP_ID_95, 0);
    Simple3D_ScheduleBindModelTexture(&v2->unk_54);
    Simple3D_CreateRenderObject(&v2->unk_68, &v2->unk_54);

    v2->unk_3C = (FX32_ONE * 0);
    v2->unk_44 = Unk_ov109_021D5A98[v0];
    v2->unk_18.x = FX32_ONE;
    v2->unk_18.y = FX32_ONE;
    v2->unk_18.z = FX32_ONE;
    v2->unk_4C.alpha = 0;
    v2->unk_4C.beta = 0;
    v2->unk_4C.gamma = 0;
    v2->unk_00.x = (FX32_ONE * 0);
    v2->unk_00.y = (FX32_ONE * -36);
    v2->unk_00.z = (FX32_ONE * 0);
    v2->unk_0C = v2->unk_00;
}

static void ov109_021D2A58(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D2AE4 *v0 = &param0->unk_D4;
    Simple3D_FreeModel(&v0->unk_54);
}

static void ov109_021D2A68(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D2AE4 *v0 = &param0->unk_D4;
    fx32 v1 = v0->unk_3C;

    ov109_021D39D4(&v1, v0->unk_40);
    ov109_021D39D4(&v1, v0->unk_44);

    v0->unk_4C.beta = (360 - ((v1) / FX32_ONE)) % 360;
    v0->unk_0C.x = v0->unk_00.x + v0->unk_30.x + v0->unk_24.x;
    v0->unk_0C.y = v0->unk_00.y + v0->unk_30.y + v0->unk_24.y;
    v0->unk_0C.z = v0->unk_00.z + v0->unk_30.z + v0->unk_24.z;
}

static void ov109_021D2AC8(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D2AE4 *v0 = &param0->unk_D4;
    Simple3D_DrawRenderObjRotationAngles(&v0->unk_68, &v0->unk_0C, &v0->unk_18, &v0->unk_4C);
}

static void ov109_021D2AE4(UnkStruct_ov109_021D2AE4 *param0, fx32 param1)
{
    ov109_021D39D4(&param0->unk_3C, param1);
}

static void ov109_021D2AF0(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;
    ov109_021D2B00(param0);
}

static void ov109_021D2AF8(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D2D78 *v1;
    UnkStruct_ov109_021D1334 *v2 = &param0->unk_190;

    for (v0 = 0; v0 < 5; v0++) {
        v1 = &v2->unk_140[v0];
    }

    ov109_021D2BD4(param0);
}

static const u32 Unk_ov109_021D5A14[5] = {
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

static const u32 Unk_ov109_021D5A3C[5] = {
    0xB,
    0xC,
    0xD,
    0xE,
    0xF
};

static void ov109_021D2B00(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    const u32 *v1, *v2;
    UnkStruct_ov109_021D1334 *v3 = &param0->unk_190;

    Simple3D_LoadModelFromSet(&v3->unk_00, 0, param0->unk_D80, 0, HEAP_ID_95, 0);
    Simple3D_ScheduleBindModelTexture(&v3->unk_00);
    Simple3D_LoadModelFromSet(&v3->unk_14, 0, param0->unk_D80, 5, HEAP_ID_95, 0);
    Simple3D_ScheduleBindModelTexture(&v3->unk_14);

    v1 = Unk_ov109_021D5A14;
    v2 = Unk_ov109_021D5A3C;

    for (v0 = 0; v0 < 5; v0++, v1++, v2++) {
        Simple3D_LoadModelFromSet(&v3->unk_28[v0], 0, param0->unk_D80, *v1, HEAP_ID_95, 0);
        Simple3D_ScheduleBindModelTexture(&v3->unk_28[v0]);
        Simple3D_LoadAnimFromOpenNARC(&v3->unk_8C[v0], 0, param0->unk_D80, *v2, HEAP_ID_95, 0);
        Simple3D_BindModelToAnim(&v3->unk_8C[v0], &v3->unk_28[v0], HEAP_ID_95);
        Simple3D_InitG3DAnimObject(&v3->unk_8C[v0], &v3->unk_28[v0]);
    }
}

static void ov109_021D2BD4(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D1334 *v1 = &param0->unk_190;

    Simple3D_FreeModel(&v1->unk_00);
    Simple3D_FreeModel(&v1->unk_14);

    for (v0 = 0; v0 < 5; v0++) {
        Simple3D_FreeModel(&v1->unk_28[v0]);
        Simple3D_FreeAnimationSet(&v1->unk_8C[v0]);
    }
}

static void ov109_021D2C0C(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;

    Simple3D_CreateRenderObject(&param1->unk_5C, &v0->unk_00);
    param1->unk_04 = 1;

    ov109_021D2EC0(param0, param1);
    ov109_021D2F68(param0, param1);
}

static void ov109_021D2C38(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0, v1 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 *v2 = &param0->unk_190;

    while (v0 < v1) {
        if (v2->unk_140[v0].unk_00) {
            ov109_021D2D78(&v2->unk_140[v0], &param0->unk_D4.unk_30);
        }

        if (v2->unk_4B0[v0].unk_00) {
            ov109_021D2EF4(param0, &v2->unk_4B0[v0]);
        }

        if (v2->unk_71C[v0].unk_00) {
            ov109_021D2FA4(param0, &v2->unk_71C[v0]);
        }

        v0++;
    }
}

static void ov109_021D2CCC(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0, v1 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 *v2 = &param0->unk_190;
    UnkStruct_ov109_021D2D78 *v3 = v2->unk_140;
    UnkStruct_ov109_021D2EF4 *v4 = v2->unk_4B0;
    UnkStruct_ov109_021D2FA4 *v5 = v2->unk_71C;

    while (v0 < v1) {
        if (v3->unk_04) {
            Simple3D_DrawRenderObjRotationAngles(&v3->unk_5C, &v3->unk_44, &v3->unk_38, &v3->unk_24);
        }

        if (v4->unk_00) {
            Simple3D_DrawRenderObjRotationAngles(&v4->unk_24, &v4->unk_18, &v4->unk_0C, &v4->unk_04);
        }

        if (v5->unk_00) {
            Simple3D_DrawRenderObjWithPos(&v5->unk_10, &v5->unk_04);
        }

        v3++;
        v4++;
        v5++;
        v0++;
    }
}

static void ov109_021D2D44(UnkStruct_ov109_021D0F70 *param0, fx32 param1)
{
    int v0 = 0, v1 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 *v2 = &param0->unk_190;

    while (v0 < v1) {
        if (v2->unk_140[v0].unk_00) {
            ov109_021D39D4(&v2->unk_140[v0].unk_1C, param1);
        }

        v0++;
    }
}

static void ov109_021D2D78(UnkStruct_ov109_021D2D78 *param0, const VecFx32 *param1)
{
    u16 v0;
    fx32 v1;

    v1 = param0->unk_1C;
    ov109_021D39D4(&v1, param0->unk_20);
    v0 = (u16)((v1) / FX32_ONE);

    param0->unk_44.x = (FX32_ONE * 0) + param0->unk_50.x + param1->x + (CalcCosineDegrees(v0) * 22);
    param0->unk_44.y = (FX32_ONE * -6) + param0->unk_50.y + param1->y;
    param0->unk_44.z = (FX32_ONE * 0) + param0->unk_50.z + param1->z + (CalcSineDegrees(v0) * 22);

    param0->unk_24.alpha = ((param0->unk_2C.x) / FX32_ONE);
    param0->unk_24.beta = ((param0->unk_2C.y) / FX32_ONE);
    param0->unk_24.gamma = ((param0->unk_2C.z) / FX32_ONE);
}

static UnkStruct_ov109_021D2D78 *ov109_021D2DF8(UnkStruct_ov109_021D0F70 *param0)
{
    int v0, v1, v2, v3;
    fx32 v4, v5, v6;
    int v7 = param0->unk_2C.unk_04;
    int v8[5], v9[5];
    UnkStruct_ov109_021D1334 *v10 = &param0->unk_190;

    v0 = 0;
    v4 = (FX32_ONE * (Unk_ov109_021D5C80[v7][param0->unk_2C.unk_00]));

    do {
        v9[v0] = v0, v8[v0] = 0xffff;
    } while (++v0 < v7);

    for (v0 = 0; v0 < v7; v0++) {
        v5 = v10->unk_140[v0].unk_1C;
        v6 = v4 - v5;

        if (v6 < 0) {
            v6 = (v4 + (FX32_ONE * 360)) - v5;
        }

        v8[v0] = ((v6) / FX32_ONE);
    }

    for (v0 = 1; v0 < v7; v0++) {
        v3 = v9[v0];
        v2 = v8[v3];

        for (v1 = v0 - 1; v1 >= 0 && v8[v9[v1]] > v2; v1--) {
            v9[v1 + 1] = v9[v1];
        }

        v9[v1 + 1] = v3;
    }

    return &v10->unk_140[v9[0]];
}

static void ov109_021D2EC0(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;
    UnkStruct_ov109_021D2EF4 *v1 = &v0->unk_4B0[param1->unk_10];

    v1->unk_00 = 1;
    v1->unk_78 = param1;
    Simple3D_CreateRenderObject(&v1->unk_24, &v0->unk_14);
    ov109_021D2EF4(param0, v1);
}

static void ov109_021D2EF4(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2EF4 *param1)
{
    fx32 v0;

    param1->unk_04.alpha = 0;
    param1->unk_04.beta = 0;
    param1->unk_04.gamma = 0;
    param1->unk_18 = param1->unk_78->unk_44;
    param1->unk_18.x -= param1->unk_78->unk_50.x;
    param1->unk_18.y -= param1->unk_78->unk_50.y;
    param1->unk_18.z -= param1->unk_78->unk_50.z;
    param1->unk_18.y += (FX32_ONE * 2);

    v0 = param1->unk_78->unk_50.y;

    if (v0 < 0) {
        v0 = -v0;
    }

    v0 /= 0x80;

    if (v0 > 0x800) {
        v0 = 0x800;
    }

    param1->unk_0C.x = FX32_ONE - v0;
    param1->unk_0C.y = FX32_ONE - v0;
    param1->unk_0C.z = FX32_ONE - v0;
}

static void ov109_021D2F68(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;
    UnkStruct_ov109_021D2FA4 *v1 = &v0->unk_71C[param1->unk_10];

    v1->unk_00 = 1;
    v1->unk_64 = param1;

    Simple3D_CreateRenderObjectWithAnim(&v1->unk_10, &v0->unk_28[param1->unk_10], &v0->unk_8C[param1->unk_10]);
}

static void ov109_021D2FA4(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2FA4 *param1)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;

    param1->unk_04 = param1->unk_64->unk_44;
    param1->unk_04.y += (FX32_ONE * 20);

    Simple3D_UpdateAnim(&v0->unk_8C[param1->unk_64->unk_10], FX32_ONE, 1);
}

static SysTask *ov109_021D2FE0(UnkStruct_ov109_021D0F70 *param0, int param1, int param2, int param3, int param4, int param5, UnkStruct_ov109_021D2D78 *param6)
{
    SysTask *v0;
    UnkStruct_ov109_021D2FE0 *v1;

    param6->unk_0C = param1;
    param6->unk_10 = param2;
    param6->unk_14 = param3;
    param6->unk_18 = param2;
    param6->unk_1C = (FX32_ONE * (param4));
    param6->unk_20 = (FX32_ONE * (param5));
    param6->unk_00 = 1;
    param6->unk_08 = 0;

    v1 = Heap_AllocAtEnd(HEAP_ID_95, sizeof(UnkStruct_ov109_021D2FE0));
    memset(v1, 0, sizeof(UnkStruct_ov109_021D2FE0));
    v1->unk_14 = param0;
    v1->unk_10 = param6;
    v0 = SysTask_Start(ov109_021D302C, v1, 0);

    return v0;
}

static void ov109_021D302C(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov109_021D2FE0 *v1 = param1;

    do {
        v0 = Unk_ov109_021D59D8[v1->unk_00](v1);
    } while (v0 == 1);

    if (v0 == 2) {
        v1->unk_10->unk_08 = 1;
        Heap_Free(v1);
        SysTask_Done(param0);
    }
}

static int ov109_021D3060(UnkStruct_ov109_021D2FE0 *param0)
{
    UnkStruct_ov109_021D2D78 *v0 = param0->unk_10;

    v0->unk_38.x = FX32_ONE;
    v0->unk_38.y = FX32_ONE;
    v0->unk_38.z = FX32_ONE;
    v0->unk_50.y = (FX32_ONE * 192);

    ov109_021D2C0C(param0->unk_14, v0);

    param0->unk_0C = (FX32_ONE * 8);
    param0->unk_00 = 1;

    return 0;
}

static int ov109_021D308C(UnkStruct_ov109_021D2FE0 *param0)
{
    UnkStruct_ov109_021D2D78 *v0 = param0->unk_10;

    v0->unk_50.y -= param0->unk_0C;

    if (param0->unk_08 == 0) {
        if (v0->unk_50.y <= (FX32_ONE * 104)) {
            param0->unk_08 = 1;
            Sound_PlayEffect(SEQ_SE_DP_FW104);
        }
    }

    if (v0->unk_50.y <= (FX32_ONE * 32)) {
        v0->unk_50.y = (FX32_ONE * 32);
        param0->unk_00 = 2;
    }

    return 0;
}

static int ov109_021D30CC(UnkStruct_ov109_021D2FE0 *param0)
{
    UnkStruct_ov109_021D2D78 *v0 = param0->unk_10;

    if (param0->unk_0C > (FX32_ONE * 1)) {
        param0->unk_0C -= 0x1000;

        if (param0->unk_0C < (FX32_ONE * 1)) {
            param0->unk_0C = (FX32_ONE * 1);
        }
    }

    v0->unk_50.y -= param0->unk_0C;

    if (v0->unk_50.y <= 0) {
        v0->unk_50.y = 0;

        ov109_021D2874(param0->unk_14, param0->unk_14->unk_2C.unk_6C[v0->unk_0C], v0->unk_14, v0->unk_0C);

        return 2;
    }

    return 0;
}

static int (*const Unk_ov109_021D59D8[3])(UnkStruct_ov109_021D2FE0 *) = {
    ov109_021D3060,
    ov109_021D308C,
    ov109_021D30CC,
};

static void ov109_021D3110(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D3110 *param1)
{
    UnkStruct_ov109_021D2D78 *v0 = param1->unk_1C;

    switch (param1->unk_04) {
    case 0:
        ov109_021D3328(param0, v0);
        param1->unk_10 = (FX32_ONE * 4);
        param1->unk_14 = -((FX32_ONE * 4) / (30 / 2));
        param1->unk_04++;
    case 1:
        v0->unk_50.y += param1->unk_10;
        param1->unk_10 += param1->unk_14;
        param1->unk_08++;

        if (param1->unk_08 < (30 / 2)) {
            break;
        }

        param1->unk_08 = 0;
        param1->unk_10 = 0;

        if (param1->unk_0C == 0) {
            param1->unk_0C = 1;
            break;
        }

        v0->unk_50.y = 0;
        ov109_021D3460(param0, v0);
        memset(param1, 0, sizeof(UnkStruct_ov109_021D3110));
    }
}

static void ov109_021D3180(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 *v1 = param1;
    UnkStruct_ov109_021D31A8 *v2 = &v1->unk_AB4;
    UnkStruct_ov109_021D3110 *v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk_00) {
            ov109_021D3110(v1, v3);
        }
    }
}

static void ov109_021D31A8(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D31A8 *v0 = &param0->unk_AB4;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D31A8));

    param0->unk_DB0 = SysTask_Start(ov109_021D3180, param0, 256);
    GF_ASSERT(param0->unk_DB0);
}

static void ov109_021D31E0(UnkStruct_ov109_021D0F70 *param0)
{
    SysTask_Done(param0->unk_DB0);
}

static void ov109_021D31F0(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    int v0;
    UnkStruct_ov109_021D31A8 *v1 = &param0->unk_AB4;
    UnkStruct_ov109_021D3110 *v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk_00 == 0) {
            v2->unk_00 = 1;
            v2->unk_1C = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov109_021D3218(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D1334 *v0 = &param0->unk_190;
    int v1 = 0, v2 = param0->unk_2C.unk_04;

    do {
        if (v0->unk_140[v1].unk_00) {
            ov109_021D31F0(param0, &v0->unk_140[v1]);
        }

        v1++;
    } while (v1 < v2);
}

static BOOL ov109_021D3248(UnkStruct_ov109_021D0F70 *param0)
{
    int v0;
    UnkStruct_ov109_021D31A8 *v1 = &param0->unk_AB4;
    UnkStruct_ov109_021D3110 *v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk_00) {
            return 1;
        }
    }

    return 0;
}

static void ov109_021D3268(UnkStruct_ov109_021D3268 *param0)
{
    fx32 v0;
    UnkStruct_ov109_021D2D78 *v1 = param0->unk_10;

    switch (param0->unk_04) {
    case 0:
        param0->unk_0C = (FX32_ONE * 24);
        v1->unk_2C.y = 0;
        param0->unk_04++;
    case 1:
        v0 = v1->unk_2C.y;
        ov109_021D39D4(&v1->unk_2C.y, param0->unk_0C);

        if (v1->unk_2C.y < (FX32_ONE * 4)) {
            param0->unk_0C = (u32)(param0->unk_0C) >> 1;

            if (param0->unk_0C < (FX32_ONE * 4)) {
                v1->unk_2C.y = 0;
                memset(param0, 0, sizeof(UnkStruct_ov109_021D3268));
            }
        }
    }
}

static void ov109_021D32B8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 *v1 = param1;
    UnkStruct_ov109_021D32DC *v2 = &v1->unk_B54;
    UnkStruct_ov109_021D3268 *v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk_00) {
            ov109_021D3268(v3);
        }
    }
}

static void ov109_021D32DC(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D32DC *v0 = &param0->unk_B54;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D32DC));

    param0->unk_DB4 = SysTask_Start(ov109_021D32B8, param0, 257);
    GF_ASSERT(param0->unk_DB4);
}

static void ov109_021D3318(UnkStruct_ov109_021D0F70 *param0)
{
    SysTask_Done(param0->unk_DB4);
}

static void ov109_021D3328(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    int v0;
    UnkStruct_ov109_021D32DC *v1 = &param0->unk_B54;
    UnkStruct_ov109_021D3268 *v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if ((v2->unk_00 == 1) && (v2->unk_10 == param1)) {
            v2->unk_04 = 0;
            return;
        }
    }

    for (v0 = 0, v2 = v1->unk_00; v0 < 5; v0++, v2++) {
        if (v2->unk_00 == 0) {
            v2->unk_00 = 1;
            v2->unk_10 = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov109_021D3370(UnkStruct_ov109_021D3370 *param0)
{
    fx32 v0;
    UnkStruct_ov109_021D2D78 *v1 = param0->unk_14;

    switch (param0->unk_04) {
    case 0:
        v1->unk_2C.z = 0;
        param0->unk_10 = 0;
        param0->unk_08 = (FX32_ONE * 30);
        param0->unk_0C = (FX32_ONE * 20);
        param0->unk_04++;
    case 1:
        v0 = CalcSineDegrees((param0->unk_10) / FX32_ONE) * ((param0->unk_08) / FX32_ONE);
        v1->unk_2C.z = 0;
        ov109_021D39D4(&v1->unk_2C.z, v0);

        v0 = param0->unk_10;
        ov109_021D39D4(&param0->unk_10, param0->unk_0C);

        if (param0->unk_10 < v0) {
            param0->unk_08 = (u32)(param0->unk_08) >> 1;

            if (param0->unk_08 == 0) {
                v1->unk_2C.z = 0;
                memset(param0, 0, sizeof(UnkStruct_ov109_021D3370));
            }
        }
    }
}

static void ov109_021D33F0(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 *v1 = param1;
    UnkStruct_ov109_021D3414 *v2 = &v1->unk_BB8;
    UnkStruct_ov109_021D3370 *v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk_00) {
            ov109_021D3370(v3);
        }
    }
}

static void ov109_021D3414(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D3414 *v0 = &param0->unk_BB8;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D3414));

    param0->unk_DB8 = SysTask_Start(ov109_021D33F0, param0, 258);
    GF_ASSERT(param0->unk_DB8);
}

static void ov109_021D3450(UnkStruct_ov109_021D0F70 *param0)
{
    SysTask_Done(param0->unk_DB8);
}

static void ov109_021D3460(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    int v0;
    UnkStruct_ov109_021D3414 *v1 = &param0->unk_BB8;
    UnkStruct_ov109_021D3370 *v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if ((v2->unk_00 == 1) && (v2->unk_14 == param1)) {
            v2->unk_04 = 0;
            return;
        }
    }

    for (v0 = 0, v2 = v1->unk_00; v0 < 5; v0++, v2++) {
        if (v2->unk_00 == 0) {
            v2->unk_00 = 1;
            v2->unk_14 = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov109_021D34A8(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D34A8 *param1)
{
    UnkStruct_ov109_021D2AE4 *v0 = &param0->unk_D4;

    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
        param1->unk_10 = (FX32_ONE * 4);
        param1->unk_0C = 0;
        param1->unk_00++;
    case 2:
        v0->unk_30.y -= (FX32_ONE * 1);

        if (v0->unk_30.y <= (FX32_ONE * -8)) {
            param1->unk_00++;
        }
        break;
    case 3:
        v0->unk_30.y += (FX32_ONE * 2);

        if (v0->unk_30.y >= (FX32_ONE * 0)) {
            v0->unk_30.y = 0;
            ov109_021D3218(param0);
            param1->unk_04 = 1;
            param1->unk_00++;
            Sound_PlayEffect(SEQ_SE_DP_DANSA5);
        }
        break;
    case 4:
        v0->unk_24.y = param1->unk_10;
        param1->unk_10 = -param1->unk_10;
        param1->unk_0C++;

        if ((param1->unk_0C & 0x3) == 0) {
            if (param1->unk_10 <= (FX32_ONE * 1)) {
                v0->unk_24.y = 0;
                param1->unk_00++;
            } else {
                param1->unk_10 >>= 1;
            }
        }
        break;
    case 5:
        if (ov109_021D3248(param0) == 0) {
            param1->unk_08 = 0;
            param1->unk_04 = 0;
            param1->unk_00 = 0;
            Sound_PlayEffect(SEQ_SE_DP_SUTYA);
        }
        break;
    }
}

static void ov109_021D3574(SysTask *param0, void *param1)
{
    UnkStruct_ov109_021D0F70 *v0 = param1;
    UnkStruct_ov109_021D34A8 *v1 = &v0->unk_C30;

    ov109_021D34A8(v0, v1);
}

static void ov109_021D3584(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D34A8 *v0 = &param0->unk_C30;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D34A8));
    param0->unk_DBC = SysTask_Start(ov109_021D3574, param0, 255);

    GF_ASSERT(param0->unk_DBC);
}

static void ov109_021D35BC(UnkStruct_ov109_021D0F70 *param0)
{
    SysTask_Done(param0->unk_DBC);
}

static void ov109_021D35CC(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D34A8 *v0 = &param0->unk_C30;
    GF_ASSERT(v0->unk_04 == 0);
    v0->unk_08 = 1;
    v0->unk_00 = 1;
}

static BOOL ov109_021D35E8(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D34A8 *v0 = &param0->unk_C30;
    return v0->unk_04;
}

static BOOL ov109_021D35F4(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D34A8 *v0 = &param0->unk_C30;
    return v0->unk_08;
}

static void ov109_021D3600(SysTask *param0, void *param1)
{
    UnkStruct_ov109_021D3600 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_0C < 4) {
            int v1[4] = { 1501, 1501, 1501, 1603 };

            v0->unk_04--;

            if (v0->unk_04 <= 0) {
                v0->unk_04 = 30;
                Sound_PlayEffect(v1[v0->unk_0C]);
                v0->unk_0C++;
            }
        }

        ManagedSprite_TickNFrames(v0->unk_14, FX32_ONE + (FX32_ONE / 2));

        if (ManagedSprite_IsAnimated(v0->unk_14) == 0) {
            v0->unk_00++;
        }

        break;
    case 1:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        Heap_Free(v0);
        SysTask_Done(param0);
    }
}

static SysTask *ov109_021D3684(UnkStruct_ov109_021D0F70 *param0)
{
    SpriteTemplate v0;
    UnkStruct_ov109_021D3600 *v1 = Heap_AllocAtEnd(HEAP_ID_95, sizeof(UnkStruct_ov109_021D3600));

    memset(v1, 0, sizeof(UnkStruct_ov109_021D3600));

    v0.x = 128;
    v0.y = 100;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = 0;
    v0.plttIdx = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.bgPriority = 0;
    v0.vramTransfer = FALSE;
    v0.resources[0] = 4;
    v0.resources[1] = 5;
    v0.resources[2] = 6;
    v0.resources[3] = 7;
    v0.resources[4] = SPRITE_RESOURCE_NONE;
    v0.resources[5] = SPRITE_RESOURCE_NONE;

    v1->unk_14 = ov109_021D24E0(param0, &v0);
    ManagedSprite_TickFrame(v1->unk_14);

    v1->unk_10 = param0;
    {
        SysTask *v2 = SysTask_Start(ov109_021D3600, v1, 0);

        GF_ASSERT(v2 != NULL);
        return v2;
    }
}

static void ov109_021D3700(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D3700 *param1)
{
    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
        ov109_021D228C(param0);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        param1->unk_04 = 0;
        param1->unk_00++;
    case 2:
        param1->unk_04++;

        if (param1->unk_04 >= 2) {
            param1->unk_04 = 0;
            param1->unk_00++;
            ov109_021D22A4(param0);
        }
        break;
    case 3:
        param1->unk_04++;

        if (param1->unk_04 >= 4) {
            ov109_021D228C(param0);
            param1->unk_04 = 0;
            param1->unk_00++;
        }
        break;
    case 4:
        param1->unk_04++;

        if (param1->unk_04 >= 2) {
            ov109_021D2298(param0);
            param1->unk_02 = 0;
            param1->unk_00 = 0;
        }
        break;
    }
}

static void ov109_021D3788(SysTask *param0, void *param1)
{
    UnkStruct_ov109_021D0F70 *v0 = param1;
    UnkStruct_ov109_021D3700 *v1 = &v0->unk_C44;

    ov109_021D3700(v0, v1);
}

static void ov109_021D379C(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D3700 *v0 = &param0->unk_C44;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D3700));
    param0->unk_DC0 = SysTask_Start(ov109_021D3788, param0, 259);
    GF_ASSERT(param0->unk_DC0);
}

static void ov109_021D37E0(UnkStruct_ov109_021D0F70 *param0)
{
    SysTask_Done(param0->unk_DC0);
}

static BOOL ov109_021D37F0(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D3700 *v0 = &param0->unk_C44;
    return v0->unk_02;
}

static void ov109_021D37FC(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D3700 *v0 = &param0->unk_C44;
    GF_ASSERT(v0->unk_02 == 0);
    v0->unk_02 = 1;
    v0->unk_00 = 1;
}

static void ov109_021D3818(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D3818 *param1)
{
    switch (param1->unk_00) {
    case 0:
        break;
    case 1: {
        static int v0[16] = {
            4, 6, 8, 10, 11, 12, 12, 12, 11, 10, 9, 8, 6, 4, 0, 0
        };

        param1->unk_0C->unk_50.y = (FX32_ONE * (v0[param1->unk_04]));
        param1->unk_04++;

        if (param1->unk_04 >= 16) {
            param1->unk_04 = 0;
            param1->unk_00++;
        }
    } break;
    case 2:
        param1->unk_08++;

        if (param1->unk_08 >= 15) {
            param1->unk_08 = 0;
            param1->unk_00 = 1;
        }
        break;
    }
}

static void ov109_021D3864(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 *v1 = param1;
    UnkStruct_ov109_021D3884 *v2 = &v1->unk_C4C;
    UnkStruct_ov109_021D3818 *v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        ov109_021D3818(v1, v3);
    }
}

static void ov109_021D3884(UnkStruct_ov109_021D0F70 *param0)
{
    UnkStruct_ov109_021D3884 *v0 = &param0->unk_C4C;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D3884));
    param0->unk_DC4 = SysTask_Start(ov109_021D3864, param0, 260);
    GF_ASSERT(param0->unk_DC4);
}

static void ov109_021D38BC(UnkStruct_ov109_021D0F70 *param0)
{
    SysTask_Done(param0->unk_DC4);
}

static void ov109_021D38CC(UnkStruct_ov109_021D0F70 *param0, UnkStruct_ov109_021D2D78 *param1)
{
    int v0 = param1->unk_0C;
    UnkStruct_ov109_021D3884 *v1 = &param0->unk_C4C;
    UnkStruct_ov109_021D3818 *v2 = &v1->unk_00[v0];

    GF_ASSERT(v0 < 5);
    GF_ASSERT(v2->unk_00 == 0);

    v2->unk_00 = 1;
    v2->unk_0C = param1;
}

static void ov109_021D38F8(UnkStruct_ov109_021D0F70 *param0)
{
    u32 v0 = param0->unk_20;
    int v1 = 0, v2 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 *v3 = &param0->unk_190;

    while (v1 < v2) {
        if (v3->unk_140[v1].unk_00 && (v0 & (1 << v3->unk_140[v1].unk_0C))) {
            ov109_021D38CC(param0, &v3->unk_140[v1]);
        }

        v1++;
    }
}

static void ov109_021D3948(SysTask *param0, void *param1)
{
    int v0 = 0;
    UnkStruct_ov109_021D3948 *v1 = param1;

    if (v1->unk_04 == 1) {
        v1->unk_08--;

        if ((int)v1->unk_08 <= 0) {
            v1->unk_08 = 0;
            v0 = 1;
        }
    } else {
        v1->unk_08++;

        if ((int)v1->unk_08 >= 8) {
            v1->unk_08 = 8;
            v0 = 1;
        }
    }

    ov109_021D2344(v1->unk_00, v1->unk_08);

    if (v0 == 1) {
        Heap_Free(v1);
        SysTask_Done(param0);
    }
}

static void ov109_021D3990(UnkStruct_ov109_021D0F70 *param0, int param1)
{
    SysTask *v0;
    u32 v1[2] = { 0, 8 };
    UnkStruct_ov109_021D3948 *v2 = Heap_AllocAtEnd(HEAP_ID_95, sizeof(UnkStruct_ov109_021D3948));

    v2->unk_00 = param0;
    v2->unk_04 = param1;
    v2->unk_08 = v1[param1];

    v0 = SysTask_Start(ov109_021D3948, v2, 0);
    GF_ASSERT(v0 != NULL);
}

static void ov109_021D39D4(fx32 *param0, fx32 param1)
{
    (*param0) += param1;

    while ((*param0) < 0) {
        (*param0) += (FX32_ONE * 360);
    }

    (*param0) %= (FX32_ONE * 360);
}

static void ov109_021D39FC(UnkStruct_ov109_021D0F70 *param0, fx32 param1)
{
    ov109_021D2AE4(&param0->unk_D4, param1);
    ov109_021D2D44(param0, param1);
}

static BOOL ov109_021D3A14(UnkStruct_ov109_021D0F70 *param0)
{
    param0->unk_08++;

    if (param0->unk_08 < (30 * 20)) {
        return 0;
    }

    param0->unk_08 = (30 * 20);
    return 1;
}

static void *ov109_021D3A2C(UnkStruct_ov109_021D0F70 *param0, u32 param1, BOOL param2)
{
    void *v0;
    u32 v1 = NARC_GetMemberSize(param0->unk_D80, param1);

    if (param2 == 1) {
        v0 = Heap_Alloc(HEAP_ID_95, v1);
    } else {
        v0 = Heap_AllocAtEnd(HEAP_ID_95, v1);
    }

    NARC_ReadWholeMember(param0->unk_D80, param1, v0);
    return v0;
}

void ov109_021D3A68(UnkStruct_ov109_021D0F70 *param0, u32 param1)
{
    if (param1 != 0) {
        param0->unk_2C.unk_08 = param1;
    }
}

void ov109_021D3A70(UnkStruct_ov109_021D0F70 *param0, const UnkStruct_0209C0F0 *param1)
{
    param0->unk_2C.unk_10 = 1;
    param0->unk_2C.unk_2C = *param1;
}

static void *ov109_021D3A94(UnkStruct_ov109_021D0F70 *param0, u32 param1)
{
    GF_ASSERT(param1 < 32);
    memset(param0->unk_AC, 0, 32);
    return param0->unk_AC;
}

static void *ov109_021D3AB4(UnkStruct_ov109_021D0F70 *param0)
{
    return param0->unk_AC;
}

static BOOL ov109_021D3AB8(UnkStruct_ov109_021D0F70 *param0, u16 param1)
{
    u32 v0 = param0->unk_D0->unk_40;

    if (v0 & param1) {
        return 1;
    }

    return 0;
}

static BOOL ov109_021D3ACC(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0;
    int v1 = param0->unk_CC->unk_08 - 1;
    u32 v2 = param0->unk_D0->unk_42;

    while (v2) {
        v0 += (v2 & 0x1);
        v2 >>= 1;
    }

    if (v0 >= v1) {
        return 1;
    }

    return 0;
}

static int ov109_021D3B04(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_42;

    while (v1) {
        v0 += (v1 & 0x1);
        v1 >>= 1;
    }

    return v0;
}

void ov109_021D3B24(UnkStruct_ov109_021D0F70 *param0, const UnkStruct_ov109_021D1048 *param1)
{
    param0->unk_2C.unk_44[param1->unk_00] = *param1;

    if (param1->unk_02 == CommSys_CurNetId()) {
        param0->unk_2C.unk_00 = param1->unk_00;
    }
}

void ov109_021D3B50(UnkStruct_ov109_021D0F70 *param0, int param1)
{
    param0->unk_2C.unk_04 = param1;
}

static BOOL ov109_021D3B54(UnkStruct_ov109_021D0F70 *param0, int param1)
{
    if (param1 != 0) {
        u32 v0 = 1 << (u32)param1;

        if ((param0->unk_D0->unk_42 & v0) == 0) {
            return 0;
        }
    }

    return 1;
}

static void ov109_021D3B70(UnkStruct_ov109_021D0F70 *param0, int param1)
{
    int v0, v1;
    Party *v2, *v3;
    Pokemon *v4, *v5;

    v2 = param0->unk_24;
    v3 = (Party *)sub_0209C188(param0->unk_D0, param1);

    v0 = param0->unk_CC->unk_04;
    v1 = param0->unk_2C.unk_18[param1];

    v4 = Party_GetPokemonBySlotIndex(v2, v0);
    v5 = Party_GetPokemonBySlotIndex(v3, v1);

    UpdateMonStatusAndTrainerInfo(v5, CommInfo_TrainerInfo(CommSys_CurNetId()), 5, 0, HEAP_ID_FIELD2);
    Pokemon_Copy(v5, v4);
}

static int ov109_021D3BC4(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_46;

    while (v1) {
        v0 += (v1 & 0x1);
        v1 >>= 1;
    }

    return v0;
}

void ov109_021D3BE4(UnkStruct_ov109_021D0F70 *param0, int param1, int param2)
{
    param0->unk_2C.unk_18[param1] = param2;
}

void ov109_021D3BEC(UnkStruct_ov109_021D0F70 *param0, const UnkStruct_ov109_021D17EC *param1)
{
    param0->unk_2C.unk_34 = *param1;
    param0->unk_2C.unk_14 = 1;
}

static BOOL ov109_021D3C08(UnkStruct_ov109_021D0F70 *param0, fx32 param1, int param2)
{
    int v0;
    fx32 v1;
    u32 v2, v3;
    const UnkStruct_ov109_021D5C14 *v4;
    const UnkStruct_ov109_021D59AC *v5;

    ov109_021D39D4(&param1, -param0->unk_D4.unk_3C);

    v1 = param1;
    ov109_021D39D4(&v1, FX32_ONE * -4);
    v2 = ((v1) / FX32_ONE);

    v1 = param1;
    ov109_021D39D4(&v1, FX32_ONE * 5);
    v3 = ((v1) / FX32_ONE);

    v4 = &Unk_ov109_021D5C14[param2];
    v0 = v4->unk_00;
    v5 = v4->unk_04;

    while (v0) {
        if (((v2 >= v5->unk_00) && (v2 <= v5->unk_02)) || ((v3 >= v5->unk_00) && (v3 <= v5->unk_02))) {
            return 1;
        }

        v5++;
        v0--;
    }

    return 0;
}

static BOOL ov109_021D3C94(Party *param0)
{
    int v0, v1;
    Pokemon *v2;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL)) {
            if (Pokemon_GetValue(v2, MON_DATA_CHECKSUM_FAILED, NULL)) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov109_021D3CD8(UnkStruct_ov109_021D0F70 *param0)
{
    if (ov109_021D3C94(param0->unk_24) == 1) {
        return 1;
    }

    {
        int v0;
        Party *v1;

        for (v0 = 0; v0 < 5; v0++) {
            if (ov109_021D3B54(param0, v0)) {
                v1 = sub_0209C188(param0->unk_D0, v0);

                if (ov109_021D3C94(v1) == 1) {
                    return 1;
                }
            }
        }
    }

    return 0;
}

static int ov109_021D3D1C(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_4A;

    while (v1) {
        v0 += v1 & 0x1;
        v1 >>= 1;
    }

    return v0;
}

static BOOL ov109_021D3D3C(UnkStruct_ov109_021D0F70 *param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_48;

    if (v1) {
        return 1;
    }

    return 0;
}

static const WindowTemplate Unk_ov109_021D59B8[1] = {
    0x1,
    0x2,
    0x13,
    0x1A,
    0x4,
    0xF,
    0x28
};

static const WindowTemplate Unk_ov109_021D5A04[2] = {
    { 0x1, 0xC, 0x12, 0x8, 0x2, 0xF, 0x94 },
    { 0x1, 0xC, 0x6, 0x8, 0x2, 0xF, 0xBC }
};

static const WindowTemplate Unk_ov109_021D5AB0[3] = {
    { 0x1, 0xC, 0x12, 0x8, 0x2, 0xF, 0x94 },
    { 0x1, 0x5, 0xA, 0x8, 0x2, 0xF, 0xBC },
    { 0x1, 0x13, 0xA, 0x8, 0x2, 0xF, 0xE4 }
};

static const WindowTemplate Unk_ov109_021D5B54[4] = {
    { 0x1, 0xC, 0x12, 0x8, 0x2, 0xF, 0x94 },
    { 0x1, 0x4, 0xD, 0x8, 0x2, 0xF, 0xBC },
    { 0x1, 0xC, 0x6, 0x8, 0x2, 0xF, 0xE4 },
    { 0x1, 0x14, 0xD, 0x8, 0x2, 0xF, 0x10C }
};

static const WindowTemplate Unk_ov109_021D5B94[5] = {
    { 0x1, 0xC, 0x13, 0x8, 0x2, 0xF, 0x94 },
    { 0x1, 0x4, 0xE, 0x8, 0x2, 0xF, 0xBC },
    { 0x1, 0x6, 0x9, 0x8, 0x2, 0xF, 0xE4 },
    { 0x1, 0x12, 0x9, 0x8, 0x2, 0xF, 0x10C },
    { 0x1, 0x14, 0xE, 0x8, 0x2, 0xF, 0X134 }
};

static const WindowTemplate *const Unk_ov109_021D5A68[5 + 1] = {
    NULL,
    NULL,
    Unk_ov109_021D5A04,
    Unk_ov109_021D5AB0,
    Unk_ov109_021D5B54,
    Unk_ov109_021D5B94
};

static const u16 Unk_ov109_021D5C44[5 + 1][5] = {
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0xB4, 0x0, 0x0, 0x0 },
    { 0x0, 0xF0, 0x78, 0x0, 0x0 },
    { 0x0, 0x10E, 0xB4, 0x5A, 0x0 },
    { 0x0, 0x120, 0xD8, 0x90, 0x48 }
};

static const u16 Unk_ov109_021D5C80[5 + 1][5] = {
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x5A, 0x10E, 0x0, 0x0, 0x0 },
    { 0x5A, 0xD2, 0x14A, 0x0, 0x0 },
    { 0x5A, 0xB4, 0x10E, 0x0, 0x0 },
    { 0x5A, 0xA2, 0xEA, 0x132, 0x12 }
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59AC = {
    0x0,
    0xB4
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59B0[2] = {
    { 0x0, 0xC6 },
    { 0x156, 0x167 }
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59D0[2] = {
    { 0x25, 0x8E },
    { 0xD7, 0x143 }
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59C0[2] = {
    { 0x0, 0xD7 },
    { 0x143, 0x167 }
};

static const UnkStruct_ov109_021D5C14 Unk_ov109_021D5C14[5 + 1] = {
    { 0x0, NULL },
    { 0x0, NULL },
    { 0x1, &Unk_ov109_021D59AC },
    { 0x2, Unk_ov109_021D59B0 },
    { 0x2, Unk_ov109_021D59D0 },
    { 0x2, Unk_ov109_021D59C0 }
};

static const u32 Unk_ov109_021D5BE4[5 + 1][2] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0x9F, 0xA3 },
    { 0x9F, 0xA3 },
    { 0xA4, 0xA8 },
    { 0xAF, 0xB7 }
};

static const u32 Unk_ov109_021D5A80[5 + 1] = {
    0x0,
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static const fx32 Unk_ov109_021D5A98[5 + 1] = {
    0x0,
    0x0,
    FX32_ONE * -72,
    FX32_ONE * 0,
    FX32_ONE * -181,
    (FX32_ONE * 0)
};
