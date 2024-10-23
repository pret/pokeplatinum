#include "overlay086/ov86_0223B140.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02008900.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013610.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay005/struct_ov5_021DE5D0.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "play_time.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    int unk_0C;
    BOOL unk_10;
} UnkStruct_ov86_0223D264;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_0203E234 *unk_0C;
    BGL *unk_10;
    Window unk_14;
    CellActorCollection *unk_24;
    UnkStruct_0200C738 unk_28;
    CellActor *unk_1B4[6];
    CellActor *unk_1CC;
    void *unk_1D0;
    void *unk_1D4;
    SpriteAnimationFrame unk_1D8[6][10];
    int unk_2C8[6];
    int unk_2E0[6];
    u32 unk_2F8[6];
    u8 unk_310[6400];
    Camera *camera;
    VecFx32 unk_1C14;
    CameraAngle cameraAngle;
    SysTask *unk_1C28;
    SysTask *unk_1C2C;
    SysTask *unk_1C30;
    SysTask *unk_1C34[4];
    StringTemplate *unk_1C44;
    Strbuf *unk_1C48;
    Strbuf *unk_1C4C;
    MessageLoader *unk_1C50;
    NARC *unk_1C54;
} UnkStruct_ov86_0223B3C8;

typedef struct {
    int unk_00;
    int unk_04;
    VecFx16 unk_08[4];
    VecFx16 unk_20;
    VecFx16 unk_26;
    MtxFx44 unk_2C;
    BOOL unk_6C;
} UnkStruct_ov86_0223CD94_sub1;

typedef struct {
    BOOL unk_00;
    volatile BOOL unk_04;
    UnkStruct_ov86_0223CD94_sub1 unk_08[48];
    GXDLInfo unk_1508;
    u32 unk_151C[7680];
    u32 unk_8D1C;
    int unk_8D20;
    MtxFx44 unk_8D24;
} UnkStruct_ov86_0223CD94;

typedef struct {
    void *unk_00;
    SysTask **unk_04;
} UnkStruct_ov86_0223BDAC;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    CellActor *unk_08;
    VecFx32 unk_0C;
    UnkStruct_ov86_0223D264 unk_18;
} UnkStruct_ov86_0223BDE0;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    CellActor *unk_08;
    VecFx32 unk_0C;
    UnkStruct_ov86_0223D264 unk_18;
} UnkStruct_ov86_0223BEA0;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    UnkStruct_ov86_0223D264 unk_08;
} UnkStruct_ov86_0223BF44;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    UnkStruct_ov86_0223D264 unk_08;
    int unk_1C;
    int unk_20;
    int unk_24;
} UnkStruct_ov86_0223BFAC;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    UnkStruct_ov86_0223D264 unk_08;
    UnkStruct_ov86_0223D264 unk_1C;
    int unk_30;
    int unk_34;
} UnkStruct_ov86_0223C01C;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    UnkStruct_ov86_0223D264 unk_08;
    UnkStruct_ov86_0223D264 unk_1C;
    int unk_30;
    int unk_34;
} UnkStruct_ov86_0223C090;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    CellActor *unk_08;
    const SpriteAnimationFrame *unk_0C;
    UnkStruct_02008900 unk_10;
    NNSG2dImageProxy unk_24[2];
    BOOL unk_6C;
    int unk_70;
    u32 unk_74;
} UnkStruct_ov86_0223C2CC;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    UnkStruct_ov86_0223B3C8 *unk_08;
    BGL *unk_0C;
    Window *unk_10;
    StringTemplate *unk_14;
    Strbuf *unk_18;
    Strbuf *unk_1C;
    MessageLoader *unk_20;
    Pokemon *unk_24;
    const TrainerInfo *unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
} UnkStruct_ov86_0223C3E4;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    UnkStruct_ov86_0223B3C8 *unk_08;
    BGL *unk_0C;
    Window *unk_10;
    UnkStruct_ov86_0223D264 unk_14;
    int unk_28;
    int unk_2C;
} UnkStruct_ov86_0223C664;

typedef struct {
    UnkStruct_ov86_0223BDAC unk_00;
    CellActor **unk_08;
    UnkStruct_ov86_0223B3C8 *unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    UnkStruct_ov86_0223D264 unk_1C[6];
    VecFx32 unk_94[6];
} UnkStruct_ov86_0223C840;

typedef struct {
    GXDLInfo unk_00;
    u32 unk_14[512];
    u32 unk_814;
    SysTask *unk_818[8];
    SysTask *unk_838;
    int unk_83C;
    UnkStruct_ov86_0223B3C8 *unk_840;
} UnkStruct_ov86_0223C9B0;

typedef struct {
    GXDLInfo *unk_00;
    u32 unk_04[512];
    u32 unk_804;
    fx32 unk_808;
    fx32 unk_80C;
    int unk_810;
    int unk_814;
    fx16 unk_818;
    VecFx16 unk_81A;
    VecFx16 unk_820;
    VecFx16 unk_826;
    VecFx16 unk_82C;
    UnkStruct_ov86_0223B3C8 *unk_834;
} UnkStruct_ov86_0223CAE4;

static void inline inline_ov86_0223CB74(UnkStruct_ov86_0223CAE4 *wk);
static BOOL ov86_0223B3C8(UnkStruct_ov86_0223B3C8 *param0);
static BOOL ov86_0223B40C(UnkStruct_ov86_0223B3C8 *param0);
static BOOL ov86_0223B464(UnkStruct_ov86_0223B3C8 *param0);
static BOOL ov86_0223B574(UnkStruct_ov86_0223B3C8 *param0);
static BOOL ov86_0223B684(UnkStruct_ov86_0223B3C8 *param0);
static BOOL ov86_0223B6B4(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223B6CC(SysTask *param0, void *param1);
static SysTask *ov86_0223B744(SysTaskFunc param0, void *param1, int param2);
static void ov86_0223B74C(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223B8C4(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223B900(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223B9A8(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223BA34(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223BA44(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223BAC8(UnkStruct_ov86_0223B3C8 *param0, NNSG2dCellDataBank *param1, NNSG2dAnimBankData *param2, NARC *param3);
static void ov86_0223BD68(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223BDE0(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2);
static void ov86_0223BE6C(SysTask *param0, void *param1);
static void ov86_0223BEA0(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223BF10(SysTask *param0, void *param1);
static void ov86_0223BF44(SysTask *param0, void *param1);
static void ov86_0223BFAC(SysTask *param0, void *param1);
static void ov86_0223C01C(SysTask *param0, void *param1);
static void ov86_0223C090(SysTask *param0, void *param1);
static void ov86_0223C104(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2);
static void ov86_0223C158(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2);
static void ov86_0223C1B8(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223C20C(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223C26C(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223C2CC(UnkStruct_ov86_0223B3C8 *param0, int param1, BOOL param2, int param3);
static void ov86_0223C398(SysTask *param0, void *param1);
static void ov86_0223C3E4(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2);
static void ov86_0223C58C(SysTask *param0, void *param1);
static void ov86_0223C664(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223C6B4(SysTask *param0, void *param1);
static void ov86_0223C72C(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223C840(UnkStruct_ov86_0223B3C8 *param0, int param1);
static void ov86_0223C914(SysTask *param0, void *param1);
static SysTask *ov86_0223C9B0(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223CA10(SysTask *param0, void *param1);
static void ov86_0223CA64(SysTask *param0, void *param1);
static void ov86_0223CAA0(SysTask *param0, fx16 param1, fx32 param2);
static void ov86_0223CB74(SysTask *param0, void *param1);
static void ov86_0223CD00(SysTask *param0);
static void ov86_0223CD34(SysTask *param0);
static BOOL ov86_0223CD80(void);
static SysTask *ov86_0223CD94(UnkStruct_ov86_0223B3C8 *param0);
static void ov86_0223CF44(SysTask *param0);
static void ov86_0223CF5C(SysTask *param0);
static void ov86_0223CF6C(SysTask *param0, void *param1);
static void ov86_0223D220(SysTask *param0);
static void ov86_0223D264(UnkStruct_ov86_0223D264 *param0, fx32 param1, fx32 param2, int param3);
static fx32 ov86_0223D284(UnkStruct_ov86_0223D264 *param0);
static BOOL ov86_0223D2A4(UnkStruct_ov86_0223D264 *param0);
static int ov86_0223D2A8(UnkStruct_ov86_0223B3C8 *param0, Pokemon *param1, const TrainerInfo *param2);
static SysTask *ov86_0223CAE4(UnkStruct_ov86_0223C9B0 *param0, fx16 param1, fx32 param2, int param3);

int ov86_0223B140(OverlayManager *param0, int *param1)
{
    UnkStruct_ov86_0223B3C8 *v0;

    SetMainCallback(NULL, NULL);
    Heap_Create(3, 63, 196608);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov86_0223B3C8), 63);

    v0->unk_0C = OverlayManager_Args(param0);
    v0->unk_1C50 = MessageLoader_Init(0, 26, 351, 63);
    v0->unk_1C48 = Strbuf_Init(500, 63);
    v0->unk_1C4C = Strbuf_Init(500, 63);
    v0->unk_1C44 = StringTemplate_Default(63);
    v0->unk_1C54 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, 63);

    {
        int v1, v2;

        v0->unk_04 = 0;
        v2 = Party_GetCurrentCount(v0->unk_0C->unk_04);

        for (v1 = 0; v1 < v2; v1++) {
            if (Pokemon_GetValue(Party_GetPokemonBySlotIndex(v0->unk_0C->unk_04, v1), MON_DATA_IS_EGG, NULL) == 0) {
                v0->unk_2C8[v0->unk_04] = v1;
                v0->unk_04++;
            }
        }
    }

    ov86_0223B74C(v0);
    ov86_0223B900(v0);
    ov86_0223BA44(v0);

    v0->unk_1C30 = NULL;
    v0->unk_1C2C = ov86_0223C9B0(v0);

    ov86_0223CAA0(v0->unk_1C2C, -FX16_CONST(0.714f), FX32_CONST(20));
    ov86_0223CAA0(v0->unk_1C2C, -FX16_CONST(0.429f), FX32_CONST(60));
    ov86_0223CAA0(v0->unk_1C2C, -FX16_CONST(0.143f), FX32_CONST(40));
    ov86_0223CAA0(v0->unk_1C2C, FX16_CONST(0.143f), FX32_CONST(140));
    ov86_0223CAA0(v0->unk_1C2C, FX16_CONST(0.429f), FX32_CONST(120));
    ov86_0223CAA0(v0->unk_1C2C, FX16_CONST(0.714f), FX32_CONST(160));

    v0->unk_1C30 = ov86_0223CD94(v0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    v0->unk_00 = 0;
    v0->unk_1C28 = ov86_0223B744(ov86_0223B6CC, v0, 6);

    sub_02004550(8, 1171, 1);

    return 1;
}

int ov86_0223B2E4(OverlayManager *param0, int *param1)
{
    switch (*param1) {
    case 0: {
        UnkStruct_ov86_0223B3C8 *v0 = OverlayManager_Data(param0);

        SysTask_Done(v0->unk_1C28);

        ov86_0223CF44(v0->unk_1C30);
        ov86_0223CD34(v0->unk_1C2C);
        ov86_0223BD68(v0);
        ov86_0223BA34(v0);
        ov86_0223B8C4(v0);

        StringTemplate_Free(v0->unk_1C44);
        Strbuf_Free(v0->unk_1C48);
        Strbuf_Free(v0->unk_1C4C);
        MessageLoader_Free(v0->unk_1C50);
        NARC_dtor(v0->unk_1C54);
        OverlayManager_FreeData(param0);
        Heap_Destroy(63);
    }
        (*param1)++;
        break;
    case 1:
        if (ov86_0223CD80()) {
            return 1;
        }
    }

    return 0;
}

int ov86_0223B394(OverlayManager *param0, int *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov86_0223B3C8 *) = {
        ov86_0223B3C8,
        ov86_0223B464,
        ov86_0223B574,
        ov86_0223B684,
        ov86_0223B40C
    };

    UnkStruct_ov86_0223B3C8 *v1 = OverlayManager_Data(param0);

    if ((*param1) < NELEMS(v0)) {
        if (v0[(*param1)](v1)) {
            v1->unk_00 = 0;
            v1->unk_08 = 0;
            (*param1)++;
        }

        return 0;
    }

    return 1;
}

static BOOL ov86_0223B3C8(UnkStruct_ov86_0223B3C8 *param0)
{
    switch (param0->unk_00) {
    case 0:
        sub_0200F174(3, 1, 1, 0x0, 16, 1, 63);
        param0->unk_00++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov86_0223B40C(UnkStruct_ov86_0223B3C8 *param0)
{
    switch (param0->unk_00) {
    case 0:
        sub_0200F174(3, 0, 0, 0x0, 2, 1, 63);
        sub_0200564C(0, 30);
        param0->unk_00++;
        break;
    case 1:
        if (ScreenWipe_Done() && (Sound_CheckFade() == 0)) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov86_0223B464(UnkStruct_ov86_0223B3C8 *param0)
{
    static int v0 = 0;

    if (param0->unk_08) {
        param0->unk_08--;
        return 0;
    }

    switch (param0->unk_00) {
    case 0:
        v0 = 0;
        param0->unk_00++;
    case 1:
        ov86_0223BDE0(param0, v0, 0);
        ov86_0223C104(param0, v0, 1);
        param0->unk_00++;
        break;
    case 2:
        if (ov86_0223B6B4(param0, 0)) {
            param0->unk_08 = 20;
            param0->unk_00++;
        }
        break;
    case 3:
        ov86_0223C2CC(param0, v0, 1, 0);
        ov86_0223C3E4(param0, v0, 1);
        param0->unk_00++;
        break;
    case 4:
        if (ov86_0223B6B4(param0, 0) && ov86_0223B6B4(param0, 1)) {
            param0->unk_08 = 30;
            param0->unk_00++;
        }
        break;
    case 5:
        ov86_0223C664(param0, 0);
        ov86_0223C158(param0, v0, 1);
        param0->unk_00++;
        break;
    case 6:
        if (ov86_0223B6B4(param0, 0)) {
            CellActor_SetDrawFlag(param0->unk_1B4[v0], 0);

            if (++v0 < param0->unk_04) {
                param0->unk_08 = 30;
                param0->unk_00 = 1;
            } else {
                return 1;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov86_0223B574(UnkStruct_ov86_0223B3C8 *param0)
{
    if (param0->unk_08) {
        param0->unk_08--;
        return 0;
    }

    switch (param0->unk_00) {
    case 0:
        sub_02006E60(105, 1, param0->unk_10, 3, 0, 0, 1, 63);
        param0->unk_00++;
        break;
    case 1:
        ov86_0223BEA0(param0, 0);
        ov86_0223C1B8(param0, 1);
        param0->unk_00++;
        break;
    case 2:
        if (ov86_0223B6B4(param0, 0)
            && ov86_0223B6B4(param0, 1)) {
            param0->unk_08 = 20;
            param0->unk_00++;
        }
        break;
    case 3:
        ov86_0223C20C(param0, 0);
        param0->unk_00++;
        break;
    case 4:
        if (ov86_0223B6B4(param0, 0)) {
            ov86_0223C72C(param0);
            param0->unk_08 = 20;
            param0->unk_00++;
        }
        break;
    case 5:
        ov86_0223C840(param0, 0);
        param0->unk_00++;
        break;
    case 6:
        if (ov86_0223B6B4(param0, 0)) {
            param0->unk_08 = 20;
            param0->unk_00++;
        }
        break;
    case 7:
        ov86_0223CF5C(param0->unk_1C30);
        param0->unk_00++;
        break;
    case 8:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov86_0223B684(UnkStruct_ov86_0223B3C8 *param0)
{
    switch (param0->unk_00) {
    case 0:
        ov86_0223C26C(param0, 0);
        param0->unk_00++;
        break;
    case 1:
        if (ov86_0223B6B4(param0, 0)) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov86_0223B6B4(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    return param0->unk_1C34[param1] == NULL;
}

static void ov86_0223B6CC(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223B3C8 *v0 = param1;

    if (G3X_IsGeometryBusy()) {
        return;
    }

    G3X_Reset();
    NNS_G3dGePushMtx();

    {
        ov86_0223CD00(v0->unk_1C2C);
    }

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    {
        ov86_0223D220(v0->unk_1C30);
    }

    NNS_G3dGePopMtx(1);
    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    CellActorCollection_Update(v0->unk_24);
    sub_0200A858();
}

static SysTask *ov86_0223B744(SysTaskFunc param0, void *param1, int param2)
{
    return SysTask_ExecuteOnVBlank(param0, param1, param2);
}

static void ov86_0223B74C(UnkStruct_ov86_0223B3C8 *param0)
{
    NARC *v0;
    static const UnkStruct_02099F80 v1 = {
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
    static const UnkStruct_ov84_0223BA5C v2 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const UnkStruct_ov97_0222DB78 v3 = {
        0,
        0,
        0x1000,
        0,
        2,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    static const UnkStruct_ov97_0222DB78 v4 = {
        0,
        0,
        0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x18000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };
    static const UnkStruct_ov97_0222DB78 v5 = {
        0,
        0,
        0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x18000,
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };

    param0->unk_10 = sub_02018340(63);

    GXLayers_SetBanks(&v1);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    sub_02018368(&v2);
    sub_020183C4(param0->unk_10, 1, &v3, 0);
    sub_020183C4(param0->unk_10, 2, &v4, 0);
    sub_020183C4(param0->unk_10, 3, &v5, 0);
    sub_020196C0(param0->unk_10, 1, 0x0, 1, 0);
    sub_02019CB8(param0->unk_10, 1, 0x0, 0, 0, 32, 32, 0);
    BGL_AddWindow(param0->unk_10, &(param0->unk_14), 1, 0, 0, 32, 24, 1, 1);
    BGL_FillWindow(&(param0->unk_14), 0);
    sub_0201ACCC(&(param0->unk_14));
    sub_0201A9F4(&param0->unk_14);

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__DENDOU_DEMO, 63);

    sub_020070E8(v0, 3, param0->unk_10, 3, 0, 0, 1, 63);
    sub_0200710C(v0, 0, param0->unk_10, 3, 0, 0, 1, 63);
    sub_02007130(v0, 4, 0, 0, 0x60, 63);
    sub_0200710C(v0, 2, param0->unk_10, 2, 0, 0, 1, 63);
    sub_02019448(param0->unk_10, 1);

    G2_SetWnd0Position(0, 0, 0, 0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG2, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL, 1);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    NARC_dtor(v0);
}

static void ov86_0223B8C4(UnkStruct_ov86_0223B3C8 *param0)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    BGL_DeleteWindow(&(param0->unk_14));
    sub_02019044(param0->unk_10, 1);
    sub_02019044(param0->unk_10, 2);
    sub_02019044(param0->unk_10, 3);
    Heap_FreeToHeap(param0->unk_10);
}

static void ov86_0223B900(UnkStruct_ov86_0223B3C8 *param0)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(2);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0, 0);

    ov86_0223B9A8(param0);
}

static void ov86_0223B9A8(UnkStruct_ov86_0223B3C8 *param0)
{
    VecFx32 v0;

    param0->camera = Camera_Alloc(63);
    param0->unk_1C14.x = 0;
    param0->unk_1C14.y = 0;
    param0->unk_1C14.z = 0;
    param0->cameraAngle.x = ((0 * 0xffff) / 360);
    param0->cameraAngle.y = ((0 * 0xffff) / 360);
    param0->cameraAngle.z = ((0 * 0xffff) / 360);

    Camera_InitWithTarget(&(param0->unk_1C14), 20480, &(param0->cameraAngle), 4004, 0, 1, param0->camera);

    v0.x = 0;
    v0.y = FX32_ONE;
    v0.z = 0;

    Camera_SetUp(&v0, param0->camera);
    Camera_SetAsActive(param0->camera);
    Camera_SetClipping((1 << FX32_SHIFT), (500 << FX32_SHIFT), param0->camera);
}

static void ov86_0223BA34(UnkStruct_ov86_0223B3C8 *param0)
{
    Camera_Delete(param0->camera);
}

static void ov86_0223BA44(UnkStruct_ov86_0223B3C8 *param0)
{
    NNSG2dCellDataBank *v0;
    NNSG2dAnimBankData *v1;
    NARC *v2;

    v2 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 63);

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 63);

    param0->unk_24 = sub_020095C4(64, &param0->unk_28, 63);
    param0->unk_1D0 = sub_02007204(v2, 77, 0, &v0, 63);
    param0->unk_1D4 = sub_02007220(v2, 78, 0, &v1, 63);

    ov86_0223BAC8(param0, v0, v1, v2);

    NARC_dtor(v2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov86_0223BAC8(UnkStruct_ov86_0223B3C8 *param0, NNSG2dCellDataBank *param1, NNSG2dAnimBankData *param2, NARC *param3)
{
    static const UnkStruct_02013610 v0[2] = {
        { 0, 0, 10, 10 },
        { 0 + 10, 0, 10, 10 }
    };
    ArchivedSprite v1;
    CellActorResourceData v2;
    CellActorInitParams v3;
    UnkStruct_ov5_021DE5D0 v4;
    NNSG2dImageProxy v5;
    NNSG2dImagePaletteProxy v6;
    NNSG2dCharacterData *v7;
    NNSG2dPaletteData *v8;
    void *v9;
    void *v10;
    const Pokemon *v11;
    int v12, v13;

    v2.charData = NULL;
    v2.multiCellBank = NULL;
    v2.multiCellAnimBank = NULL;
    v2.isVRamTransfer = 0;
    v2.cellBank = param1;
    v2.cellAnimBank = param2;
    v2.priority = 3;
    v2.imageProxy = &v5;
    v2.paletteProxy = &v6;

    v3.collection = param0->unk_24;
    v3.resourceData = &v2;

    VEC_Set(&(v3.position), 0, 0, 0);

    v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v3.heapID = 63;

    v9 = sub_020071B4(param3, 76, 0, &v7, 63);
    v10 = sub_020071EC(param3, 75, &v8, 63);

    for (v12 = 0; v12 < param0->unk_04; v12++) {
        NNS_G2dInitImageProxy(&v5);
        NNS_G2dInitImagePaletteProxy(&v6);
        NNS_G2dLoadImage1DMapping(v7, v12 * 2 * 3200, NNS_G2D_VRAM_TYPE_2DMAIN, &v5);
        NNS_G2dLoadPalette(v8, v12 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v6);

        v3.priority = 1 + v12;
        param0->unk_1B4[v12] = CellActorCollection_Add(&v3);

        CellActor_SetDrawFlag(param0->unk_1B4[v12], 0);
        v11 = Party_GetPokemonBySlotIndex(param0->unk_0C->unk_04, param0->unk_2C8[v12]);
        Pokemon_BuildArchivedSprite(&v1, (Pokemon *)v11, 2);

        param0->unk_2E0[v12] = Pokemon_GetValue((Pokemon *)v11, MON_DATA_SPECIES, NULL);
        param0->unk_2F8[v12] = Pokemon_GetValue((Pokemon *)v11, MON_DATA_FORM, NULL);

        sub_02013720(v1.archive, v1.character, 63, &v0[0], param0->unk_310, Pokemon_GetValue((Pokemon *)v11, MON_DATA_PERSONALITY, NULL), 1, 2, param0->unk_2E0[v12]);

        DC_FlushRange(param0->unk_310, 3200);
        GX_LoadOBJ(param0->unk_310, v12 * 2 * 3200, 3200);

        sub_02013720(v1.archive, v1.character, 63, &v0[1], param0->unk_310, Pokemon_GetValue((Pokemon *)v11, MON_DATA_PERSONALITY, NULL), 1, 2, param0->unk_2E0[v12]);

        DC_FlushRange(param0->unk_310, 3200);
        GX_LoadOBJ(param0->unk_310, v12 * 2 * 3200 + 3200, 3200);

        sub_02006E84(v1.archive, v1.palette, 1, v12 * 0x20, 0x20, 63);
        PokeSprite_LoadAnimationFrames(param0->unk_1C54, &param0->unk_1D8[v12][0], param0->unk_2E0[v12], 1);
    }

    NNS_G2dInitImageProxy(&v5);
    NNS_G2dInitImagePaletteProxy(&v6);
    NNS_G2dLoadImage1DMapping(v7, 38400, NNS_G2D_VRAM_TYPE_2DMAIN, &v5);
    NNS_G2dLoadPalette(v8, 192, NNS_G2D_VRAM_TYPE_2DMAIN, &v6);

    sub_02076AAC(((TrainerInfo_Gender(param0->unk_0C->unk_00) == 1) ? 1 : 0), 2, &v4);
    sub_020135F0(v4.unk_00, v4.unk_14, 63, &v0[0], param0->unk_310);

    DC_FlushRange(param0->unk_310, 3200);
    GX_LoadOBJ(param0->unk_310, 38400, 3200);

    sub_02006E84(v4.unk_00, v4.unk_08, 1, 192, 0x20, 63);

    v3.priority = 0;
    param0->unk_1CC = CellActorCollection_Add(&v3);

    CellActor_SetDrawFlag(param0->unk_1CC, 0);
    Heap_FreeToHeap(v10);
    Heap_FreeToHeap(v9);
}

static void ov86_0223BD68(UnkStruct_ov86_0223B3C8 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_Delete(param0->unk_1B4[v0]);
    }

    Heap_FreeToHeap(param0->unk_1D4);
    Heap_FreeToHeap(param0->unk_1D0);
    CellActorCollection_Delete(param0->unk_24);
    sub_0200A878();
}

static void ov86_0223BDAC(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223BDAC *v0 = param1;

    *(v0->unk_04) = NULL;

    Heap_FreeToHeap(v0->unk_00);
    SysTask_Done(param0);
}

static void ov86_0223BDC4(UnkStruct_ov86_0223BDAC *param0, void *param1, SysTask **param2)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
}

static void ov86_0223BDCC(UnkStruct_ov86_0223BDAC *param0)
{
    SysTask_ExecuteAfterVBlank(ov86_0223BDAC, param0, 0);
}

static void ov86_0223BDE0(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2)
{
    static const struct {
        fx32 unk_00;
        fx32 unk_04;
    } v0[] = {
        { 786432, 294912 },
        { 262144, 753664 }
    };
    UnkStruct_ov86_0223BDE0 *v1;
    int v2;

    v1 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223BDE0));
    v2 = param1 & 1;

    ov86_0223BDC4(&v1->unk_00, v1, &(param0->unk_1C34[param2]));
    v1->unk_08 = param0->unk_1B4[param1];
    ov86_0223D264(&v1->unk_18, v0[v2].unk_00, v0[v2].unk_04, 28);

    VEC_Set(&v1->unk_0C, v0[v2].unk_00, 393216, 0);

    CellActor_SetPosition(v1->unk_08, &v1->unk_0C);
    CellActor_SetDrawFlag(v1->unk_08, 1);

    param0->unk_1C34[param2] = ov86_0223B744(ov86_0223BE6C, v1, 0);
}

static void ov86_0223BE6C(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223BDE0 *v0 = param1;

    v0->unk_0C.x = ov86_0223D284(&v0->unk_18);
    CellActor_SetPosition(v0->unk_08, &v0->unk_0C);

    if (ov86_0223D2A4(&v0->unk_18)) {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223BEA0(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    UnkStruct_ov86_0223BEA0 *v0;

    v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223BEA0));
    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param1]));

    v0->unk_08 = param0->unk_1CC;
    ov86_0223D264(&v0->unk_18, FX32_CONST(232), FX32_CONST(104), 28);

    VEC_Set(&v0->unk_0C, FX32_CONST(128), FX32_CONST(232), 0);

    CellActor_SetPosition(v0->unk_08, &v0->unk_0C);
    CellActor_SetDrawFlag(v0->unk_08, 1);

    param0->unk_1C34[param1] = ov86_0223B744(ov86_0223BF10, v0, 0);
}

static void ov86_0223BF10(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223BEA0 *v0 = param1;

    v0->unk_0C.y = ov86_0223D284(&v0->unk_18);
    CellActor_SetPosition(v0->unk_08, &v0->unk_0C);

    if (ov86_0223D2A4(&v0->unk_18)) {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223BF44(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223BF44 *v0 = param1;
    int v1, v2;

    v1 = (ov86_0223D284(&(v0->unk_08)) >> FX32_SHIFT);
    v2 = v1 + 96;

    if (v1 < 0) {
        v1 = 0;
    }

    if (v2 < 0) {
        v2 = 0;
    }

    if (v1 > 255) {
        v1 = v2 = 0;
    }

    if (v2 > 255) {
        v2 = 255;
    }

    G2_SetWnd0Position(v1, 32, v2, 32 + 128);

    if (ov86_0223D2A4(&(v0->unk_08))) {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223BFAC(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223BFAC *v0 = param1;
    int v1, v2;

    v1 = (ov86_0223D284(&(v0->unk_08)) >> FX32_SHIFT);
    v2 = v1 + v0->unk_24;

    if (v1 < 0) {
        v1 = 0;
    }

    if (v2 < 0) {
        v2 = 0;
    }

    if (v1 > 191) {
        v1 = v2 = 0;
    }

    if (v2 > 191) {
        v2 = 191;
    }

    G2_SetWnd0Position(v0->unk_1C, v1, v0->unk_20, v2);

    if (ov86_0223D2A4(&(v0->unk_08))) {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223C01C(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223C01C *v0 = param1;
    int v1, v2;

    v1 = ov86_0223D284(&v0->unk_08) >> FX32_SHIFT;
    v2 = ov86_0223D284(&v0->unk_1C) >> FX32_SHIFT;

    if (v1 < 0) {
        v1 = 0;
    }

    if (v2 < 0) {
        v2 = 0;
    }

    if (v1 > 255) {
        v1 = v2 = 0;
    }

    if (v2 > 255) {
        v2 = 255;
    }

    G2_SetWnd0Position(v1, v0->unk_30, v2, v0->unk_34);

    if (ov86_0223D2A4(&(v0->unk_08))) {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223C090(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223C090 *v0 = param1;
    int v1, v2;

    v1 = ov86_0223D284(&v0->unk_08) >> FX32_SHIFT;
    v2 = ov86_0223D284(&v0->unk_1C) >> FX32_SHIFT;

    if (v1 < 0) {
        v1 = 0;
    }

    if (v2 < 0) {
        v2 = 0;
    }

    if (v1 > 191) {
        v1 = v2 = 0;
    }

    if (v2 > 191) {
        v2 = 191;
    }

    G2_SetWnd0Position(v0->unk_30, v1, v0->unk_34, v2);

    if (ov86_0223D2A4(&(v0->unk_08))) {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223C104(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2)
{
    static const struct {
        fx32 unk_00;
        fx32 unk_04;
    } v0[] = {
        { FX32_CONST(-96), FX32_CONST(24) },
        { FX32_CONST(352), FX32_CONST(136) }
    };
    UnkStruct_ov86_0223BF44 *v1;
    int v2;

    v2 = param1 & 1;
    v1 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223BF44));

    ov86_0223BDC4(&v1->unk_00, v1, &(param0->unk_1C34[param2]));
    ov86_0223D264(&v1->unk_08, v0[v2].unk_00, v0[v2].unk_04, 28);

    param0->unk_1C34[param2] = ov86_0223B744(ov86_0223BF44, v1, 1);
}

static void ov86_0223C158(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2)
{
    static const int v0[] = {
        24,
        136,
    };
    UnkStruct_ov86_0223BFAC *v1;
    int v2;

    v2 = param1 & 1;
    v1 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223BFAC));

    ov86_0223BDC4(&v1->unk_00, v1, &(param0->unk_1C34[param2]));
    ov86_0223D264(&v1->unk_08, FX32_CONST(32), FX32_CONST(-160), 28);

    v1->unk_1C = v0[v2];
    v1->unk_20 = v1->unk_1C + 96;
    v1->unk_24 = 128;

    param0->unk_1C34[param2] = ov86_0223B744(ov86_0223BFAC, v1, 1);
}

static void ov86_0223C1B8(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    UnkStruct_ov86_0223BFAC *v0;

    v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223BFAC));

    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param1]));
    ov86_0223D264(&v0->unk_08, FX32_CONST(-144), FX32_CONST(24), 28);

    v0->unk_1C = 88;
    v0->unk_20 = 168;
    v0->unk_24 = 144;

    param0->unk_1C34[param1] = ov86_0223B744(ov86_0223BFAC, v0, 1);
}

static void ov86_0223C20C(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    UnkStruct_ov86_0223C01C *v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C01C));

    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param1]));
    ov86_0223D264(&v0->unk_08, FX32_CONST(88), 0, 12);
    ov86_0223D264(&v0->unk_1C, FX32_CONST(168), FX32_CONST(255), 12);

    v0->unk_30 = 24;
    v0->unk_34 = v0->unk_30 + 144;

    param0->unk_1C34[param1] = ov86_0223B744(ov86_0223C01C, v0, 1);
}

static void ov86_0223C26C(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    UnkStruct_ov86_0223C090 *v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C090));

    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param1]));
    ov86_0223D264(&v0->unk_08, FX32_CONST(24), FX32_CONST(96), 24);
    ov86_0223D264(&v0->unk_1C, FX32_CONST(24 + 144), FX32_CONST(96), 24);

    v0->unk_30 = 0;
    v0->unk_34 = 255;

    param0->unk_1C34[param1] = ov86_0223B744(ov86_0223C090, v0, 1);
}

static void ov86_0223C2CC(UnkStruct_ov86_0223B3C8 *param0, int param1, BOOL param2, int param3)
{
    UnkStruct_ov86_0223C2CC *v0;
    int v1;

    v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C2CC));
    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param3]));

    v0->unk_08 = param0->unk_1B4[param1];
    v0->unk_0C = &param0->unk_1D8[param1][0];

    sub_020088E0(&v0->unk_10, v0->unk_0C);

    v0->unk_6C = param2;
    v0->unk_70 = param0->unk_2E0[param1];
    v0->unk_74 = param0->unk_2F8[param1];
    v0->unk_24[0] = *SpriteActor_ImageProxy(v0->unk_08);
    v0->unk_24[1] = v0->unk_24[0];

    NNS_G2dInitImageProxy(&v0->unk_24[1]);
    NNS_G2dSetImageLocation(&(v0->unk_24[1]), NNS_G2D_VRAM_TYPE_2DMAIN, param1 * 2 * 3200 + 3200);

    param0->unk_1C34[param3] = SysTask_Start(ov86_0223C398, v0, 0);
}

static void ov86_0223C398(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223C2CC *v0 = param1;
    int v1;

    if (v0->unk_6C) {
        sub_02005844(v0->unk_70, v0->unk_74);
        v0->unk_6C = 0;
    }

    v1 = sub_02008900(&v0->unk_10);

    if (v1 >= 0) {
        CellActor_SetImageProxy(v0->unk_08, &v0->unk_24[v1]);
    } else {
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov86_0223C3E4(UnkStruct_ov86_0223B3C8 *param0, int param1, int param2)
{
    UnkStruct_ov86_0223C3E4 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C3E4));
    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param2]));

    v0->unk_08 = param0;
    v0->unk_0C = param0->unk_10;
    v0->unk_10 = &(param0->unk_14);
    v0->unk_14 = param0->unk_1C44;
    v0->unk_18 = param0->unk_1C48;
    v0->unk_1C = param0->unk_1C4C;
    v0->unk_20 = param0->unk_1C50;
    v0->unk_2C = (param1 & 1) ? 0 : 120;
    v0->unk_24 = Party_GetPokemonBySlotIndex(param0->unk_0C->unk_04, param0->unk_2C8[param1]);
    v0->unk_28 = param0->unk_0C->unk_00;
    v0->unk_30 = 0;
    v0->unk_34 = 0;

    param0->unk_1C34[param2] = SysTask_Start(ov86_0223C58C, v0, 0);
}

static void ov86_0223C47C(UnkStruct_ov86_0223C3E4 *param0, int param1)
{
    int v0, v1, v2;

    v1 = Strbuf_NumLines(param0->unk_1C);

    for (v0 = 0; v0 < v1; v0++) {
        Strbuf_CopyLineNum(param0->unk_18, param0->unk_1C, v0);
        v2 = (136 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_18, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(param0->unk_10, FONT_SYSTEM, param0->unk_18, param0->unk_2C + v2, param1 + v0 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

static void ov86_0223C4DC(UnkStruct_ov86_0223C3E4 *param0)
{
    StringTemplate_SetSpeciesName(param0->unk_14, 0, Pokemon_GetBoxPokemon(param0->unk_24));
    StringTemplate_SetNumber(param0->unk_14, 1, Pokemon_GetLevel(param0->unk_24), 3, 0, 1);

    switch (Pokemon_GetGender(param0->unk_24)) {
    case 0:
        MessageLoader_GetStrbuf(param0->unk_20, 1, param0->unk_18);
        break;
    case 1:
        MessageLoader_GetStrbuf(param0->unk_20, 2, param0->unk_18);
        break;
    case 2:
    default:
        MessageLoader_GetStrbuf(param0->unk_20, 3, param0->unk_18);
        break;
    }

    StringTemplate_Format(param0->unk_14, param0->unk_1C, param0->unk_18);
}

static void ov86_0223C54C(UnkStruct_ov86_0223C3E4 *param0)
{
    int v0 = ov86_0223D2A8(param0->unk_08, param0->unk_24, param0->unk_28);

    switch (v0) {
    case 0:
    case 1:
        StringTemplate_SetLocationName(param0->unk_14, 0, Pokemon_GetValue(param0->unk_24, MON_DATA_HATCH_LOCATION, NULL));
        break;
    }

    MessageLoader_GetStrbuf(param0->unk_20, 5 + v0, param0->unk_18);
    StringTemplate_Format(param0->unk_14, param0->unk_1C, param0->unk_18);
}

static void ov86_0223C58C(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223C3E4 *v0 = param1;

    if (v0->unk_30) {
        v0->unk_30--;
        return;
    }

    switch (v0->unk_34) {
    case 0:
        MessageLoader_GetStrbuf(v0->unk_20, 0, v0->unk_1C);
        ov86_0223C47C(v0, 16);
        sub_0201ACCC(v0->unk_10);
        v0->unk_30 = 20;
        v0->unk_34++;
        break;
    case 1:
        Pokemon_GetValue(v0->unk_24, MON_DATA_NICKNAME_STRBUF, v0->unk_1C);
        ov86_0223C47C(v0, 48);
        ov86_0223C4DC(v0);
        ov86_0223C47C(v0, 64);
        sub_0201ACCC(v0->unk_10);
        v0->unk_30 = 20;
        v0->unk_34++;
        break;
    case 2:
        StringTemplate_SetOTName(v0->unk_14, 0, Pokemon_GetBoxPokemon(v0->unk_24));
        MessageLoader_GetStrbuf(v0->unk_20, 4, v0->unk_18);
        StringTemplate_Format(v0->unk_14, v0->unk_1C, v0->unk_18);
        ov86_0223C47C(v0, 96);
        ov86_0223C54C(v0);
        ov86_0223C47C(v0, 112);
        sub_0201ACCC(v0->unk_10);
        v0->unk_34++;
        break;
    case 3:
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
        break;
    }
}

static void ov86_0223C664(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    UnkStruct_ov86_0223C664 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C664));

    ov86_0223BDC4(&v0->unk_00, v0, &(param0->unk_1C34[param1]));

    v0->unk_0C = param0->unk_10;
    v0->unk_10 = &(param0->unk_14);
    v0->unk_2C = 1;
    v0->unk_28 = 0;

    ov86_0223D264(&(v0->unk_14), FX32_CONST(0), FX32_CONST(256), 28);

    param0->unk_1C34[param1] = ov86_0223B744(ov86_0223C6B4, v0, 0);
}

static void ov86_0223C6B4(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223C664 *v0 = param1;

    switch (v0->unk_28) {
    case 0: {
        int v1 = ov86_0223D284(&v0->unk_14) >> FX32_SHIFT;

        sub_02019184(v0->unk_0C, v0->unk_2C, 3, v1);

        if (ov86_0223D2A4(&v0->unk_14)) {
            v0->unk_28++;
        }
    } break;
    case 1:
        BGL_FillWindow(v0->unk_10, 0);
        sub_0201ACCC(v0->unk_10);
        v0->unk_28++;
        break;
    case 2:
        sub_02019184(v0->unk_0C, v0->unk_2C, 3, 0);
        ov86_0223BDCC(&v0->unk_00);
        SysTask_Done(param0);
        break;
    }
}

static void ov86_0223C72C(UnkStruct_ov86_0223B3C8 *param0)
{
    int v0;

    MessageLoader_GetStrbuf(param0->unk_1C50, 12, param0->unk_1C48);

    v0 = (256 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_1C48, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&param0->unk_14, FONT_SYSTEM, param0->unk_1C48, v0, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    StringTemplate_SetPlayerName(param0->unk_1C44, 0, param0->unk_0C->unk_00);

    StringTemplate_SetNumber(param0->unk_1C44, 1, TrainerInfo_ID_LowHalf(param0->unk_0C->unk_00), 5, 2, 1);
    StringTemplate_SetNumber(param0->unk_1C44, 2, PlayTime_GetHours(param0->unk_0C->playTime), 3, 0, 1);
    StringTemplate_SetNumber(param0->unk_1C44, 3, PlayTime_GetMinutes(param0->unk_0C->playTime), 2, 2, 1);
    MessageLoader_GetStrbuf(param0->unk_1C50, 13, param0->unk_1C4C);
    StringTemplate_Format(param0->unk_1C44, param0->unk_1C48, param0->unk_1C4C);

    v0 = (256 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_1C48, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&param0->unk_14, FONT_SYSTEM, param0->unk_1C48, v0, 172, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201ACCC(&param0->unk_14);
}

static void ov86_0223C840(UnkStruct_ov86_0223B3C8 *param0, int param1)
{
    static const VecFx32 v0[] = {
        { FX32_CONST(-40), FX32_CONST(104 - 8), 0 },
        { FX32_CONST(296), FX32_CONST(104 - 8), 0 },
        { FX32_CONST(-40), FX32_CONST(104 - 16), 0 },
        { FX32_CONST(296), FX32_CONST(104 - 16), 0 },
        { FX32_CONST(-40), FX32_CONST(104 - 24), 0 },
        { FX32_CONST(296), FX32_CONST(104 - 24), 0 }
    };
    static const fx32 v1[] = {
        FX32_CONST(128 + 32),
        FX32_CONST(128 - 32),
        FX32_CONST(128 + 64),
        FX32_CONST(128 - 64),
        FX32_CONST(128 + 96),
        FX32_CONST(128 - 96)
    };
    UnkStruct_ov86_0223C840 *v2;
    int v3;

    v2 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C840));

    ov86_0223BDC4(&v2->unk_00, v2, &(param0->unk_1C34[param1]));

    v2->unk_0C = param0;
    v2->unk_08 = param0->unk_1B4;
    v2->unk_10 = 0;
    v2->unk_18 = 0;
    v2->unk_14 = param0->unk_04;

    for (v3 = 0; v3 < v2->unk_14; v3++) {
        v2->unk_94[v3] = v0[v3];
        CellActor_SetPosition(v2->unk_08[v3], &v0[v3]);
        CellActor_SetDrawFlag(v2->unk_08[v3], 1);
    }

    for (v3 = 0; v3 < 6; v3++) {
        ov86_0223D264(&v2->unk_1C[v3], v0[v3].x, v1[v3], 8);
    }

    param0->unk_1C34[param1] = SysTask_Start(ov86_0223C914, v2, 0);
}

static void ov86_0223C914(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223C840 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < v0->unk_10; v1++) {
        v0->unk_94[v1].x = ov86_0223D284(&v0->unk_1C[v1]);

        if (v1 < v0->unk_14) {
            CellActor_SetPosition(v0->unk_08[v1], &(v0->unk_94[v1]));
        }
    }

    if (v0->unk_18) {
        v0->unk_18--;
    } else {
        if (v0->unk_10 < 6) {
            v0->unk_18 = 2 * 2;
            v0->unk_10++;
        } else {
            if (ov86_0223D2A4(&v0->unk_1C[v0->unk_14 - 1])) {
                ov86_0223BDCC(&v0->unk_00);
                SysTask_Done(param0);
            }
        }
    }
}

static u32 Unk_ov86_0223D564 = 0;
static BOOL Unk_ov86_0223D540 = 1;

static SysTask *ov86_0223C9B0(UnkStruct_ov86_0223B3C8 *param0)
{
    UnkStruct_ov86_0223C9B0 *v0 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223C9B0));

    if (v0) {
        SysTask *v1;

        Unk_ov86_0223D540 = 1;
        Unk_ov86_0223D564 = 2;

        v0->unk_83C = 0;
        v0->unk_838 = ov86_0223B744(ov86_0223CA64, v0, 5);
        v0->unk_840 = param0;

        return ov86_0223B744(ov86_0223CA10, v0, 3);
    }

    return NULL;
}

static void ov86_0223CA10(SysTask *param0, void *param1)
{
    if (Unk_ov86_0223D540) {
        UnkStruct_ov86_0223C9B0 *v0 = param1;

        G3_BeginMakeDL(&v0->unk_00, v0->unk_14, sizeof(v0->unk_14));
        G3B_MaterialColorDiffAmb(&v0->unk_00, GX_RGB(31, 31, 31), GX_RGB(16, 16, 16), 0);
        G3B_MaterialColorSpecEmi(&v0->unk_00, GX_RGB(16, 16, 16), GX_RGB(0, 0, 0), 0);
    } else {
        Unk_ov86_0223D564--;
        SysTask_Done(param0);
    }
}

static void ov86_0223CA64(SysTask *param0, void *param1)
{
    if (Unk_ov86_0223D540) {
        UnkStruct_ov86_0223C9B0 *v0 = param1;
        v0->unk_814 = G3_EndMakeDL(&v0->unk_00);
        DC_FlushRange(v0->unk_14, v0->unk_814);
    } else {
        Unk_ov86_0223D564--;
        SysTask_Done(param0);
    }
}

static void ov86_0223CAA0(SysTask *param0, fx16 param1, fx32 param2)
{
    UnkStruct_ov86_0223C9B0 *v0 = SysTask_GetParam(param0);

    if (v0->unk_83C < 8) {
        v0->unk_818[v0->unk_83C] = ov86_0223CAE4(v0, param1, param2, v0->unk_83C);
        Unk_ov86_0223D564++;
        v0->unk_83C++;
    }
}

static SysTask *ov86_0223CAE4(UnkStruct_ov86_0223C9B0 *param0, fx16 param1, fx32 param2, int param3)
{
    static const int v0[] = {
        GX_RGB(31, 31, 12),
        GX_RGB(31, 31, 16),
        GX_RGB(31, 28, 8),
        GX_RGB(31, 31, 12),
        GX_RGB(31, 31, 16),
        GX_RGB(31, 28, 8),
        GX_RGB(31, 31, 12),
        GX_RGB(31, 31, 12)
    };
    static const fx16 v1[] = {
        0xc00,
        0xb00,
        0xa00,
        0xc00,
        0xb00,
        0xa00
    };
    UnkStruct_ov86_0223CAE4 *v2 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223CAE4));

    if (v2) {
        v2->unk_00 = &(param0->unk_00);
        v2->unk_818 = param1;
        v2->unk_810 = v0[param3];
        v2->unk_804 = 0;
        v2->unk_808 = param2;
        v2->unk_80C = v1[param3] * (2 / 2);
        v2->unk_814 = param3;

        VEC_Fx16Set(&(v2->unk_81A), param1 - 80, -FX16_ONE, 0);
        VEC_Fx16Set(&(v2->unk_820), param1 + 80, -FX16_ONE, 0);

        return ov86_0223B744(ov86_0223CB74, v2, 4);
    }

    return NULL;
}

static void inline inline_ov86_0223CB74(UnkStruct_ov86_0223CAE4 *param0)
{
    {
        int v0 = param0->unk_808 >> FX32_SHIFT;
        fx32 v1, v2;

        v1 = param0->unk_818 + FX_Mul(sub_0201D1D4(v0), 10240);
        v2 = FX_Mul(sub_0201D15C(v0), 10240) - FX16_ONE;

        VEC_Fx16Set(&(param0->unk_826), v1 - 576, v2, 0);
        VEC_Fx16Set(&(param0->unk_82C), v1 + 576, v2, 0);
    }
}

static void ov86_0223CB74(SysTask *param0, void *param1)
{
    if (Unk_ov86_0223D540) {
        UnkStruct_ov86_0223CAE4 *v0 = param1;

        v0->unk_808 += v0->unk_80C;

        if (v0->unk_80C > 0) {
            if (v0->unk_808 >= 696320) {
                v0->unk_80C *= -1;
            }
        } else {
            if (v0->unk_808 <= 40960) {
                v0->unk_80C *= -1;
            }
        }

        inline_ov86_0223CB74(v0);

        G3B_PolygonAttr(v0->unk_00, GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_BACK, v0->unk_814, 16, 0);
        G3B_Begin(v0->unk_00, GX_BEGIN_QUADS);

        {
            G3B_Color(v0->unk_00, v0->unk_810);
            G3B_Vtx(v0->unk_00, v0->unk_81A.x, v0->unk_81A.y, v0->unk_81A.z);
            G3B_Vtx(v0->unk_00, v0->unk_820.x, v0->unk_820.y, v0->unk_820.z);
            G3B_Vtx(v0->unk_00, v0->unk_82C.x, v0->unk_82C.y, v0->unk_82C.z);
            G3B_Vtx(v0->unk_00, v0->unk_826.x, v0->unk_826.y, v0->unk_826.z);
        }

        G3B_End(v0->unk_00);
    } else {
        Unk_ov86_0223D564--;
        SysTask_Done(param0);
    }
}

static void ov86_0223CD00(SysTask *param0)
{
    if (param0 != NULL) {
        UnkStruct_ov86_0223C9B0 *v0 = SysTask_GetParam(param0);

        G3_PushMtx();
        MI_SendGXCommand(3, v0->unk_14, v0->unk_814);
        G3_PopMtx(1);
    }
}

static void ov86_0223CD34(SysTask *param0)
{
    Unk_ov86_0223D540 = 0;

    if (param0 != NULL) {
        UnkStruct_ov86_0223C9B0 *v0;
        int v1;

        v0 = SysTask_GetParam(param0);

        for (v1 = 0; v1 < v0->unk_83C; v1++) {
            Heap_FreeToHeap(SysTask_GetParam(v0->unk_818[v1]));
        }

        Heap_FreeToHeap(v0);
    }
}

static BOOL ov86_0223CD80(void)
{
    return Unk_ov86_0223D564 == 0;
}

static SysTask *ov86_0223CD94(UnkStruct_ov86_0223B3C8 *param0)
{
    static const int v0[] = {
        GX_RGB(16, 28, 21),
        GX_RGB(31, 16, 29),
        GX_RGB(8, 8, 31),
        GX_RGB(6, 31, 31),
        GX_RGB(31, 31, 0),
        GX_RGB(9, 31, 0),
        GX_RGB(31, 18, 0),
        GX_RGB(22, 0, 31)
    };
    static const VecFx16 v1[4] = {
        { -156, -205, 0 },
        { 156, -205, 0 },
        { 156, 205, 0 },
        { -156, 205, 0 }
    };
    UnkStruct_ov86_0223CD94 *v2;
    int v3, v4, v5, v6;
    s16 v7, v8, v9;

    v2 = Heap_AllocFromHeap(63, sizeof(UnkStruct_ov86_0223CD94));
    v5 = LCRNG_Next();

    LCRNG_SetSeed(13716);

    for (v3 = 0, v6 = 0; v3 < 48; v3++) {
        v2->unk_08[v3].unk_00 = v0[v6];

        if (++v6 >= NELEMS(v0)) {
            v6 = 0;
        }

        v7 = -4096 + (LCRNG_Next() % 8192);
        v8 = 4096 + (LCRNG_Next() % 8192);
        v9 = -328 + (LCRNG_Next() % 656);

        for (v4 = 0; v4 < 4; v4++) {
            v2->unk_08[v3].unk_08[v4].x = v7 + v1[v4].x;
            v2->unk_08[v3].unk_08[v4].y = v8 + v1[v4].y;
            v2->unk_08[v3].unk_08[v4].z = v9 + v1[v4].z;
            v2->unk_08[v3].unk_20.x = 0;
            v2->unk_08[v3].unk_20.y = 0;
            v2->unk_08[v3].unk_20.z = 0;
            v2->unk_08[v3].unk_26.x = 512 + LCRNG_Next() % 512;
            v2->unk_08[v3].unk_26.y = 512 + LCRNG_Next() % 512;
            v2->unk_08[v3].unk_26.z = 512 + LCRNG_Next() % 512;

            MTX_Identity44(&v2->unk_08[v3].unk_2C);
        }

        v4 = LCRNG_Next() & 7;

        while (v4--) {
            VEC_Fx16Add(&v2->unk_08[v3].unk_20, &v2->unk_08[v3].unk_26, &v2->unk_08[v3].unk_20);
        }
    }

    LCRNG_SetSeed(v5);

    v2->unk_00 = 0;
    v2->unk_04 = 0;
    v2->unk_8D20 = 0;

    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);

    return SysTask_Start(ov86_0223CF6C, v2, 2);
}

static void ov86_0223CF44(SysTask *param0)
{
    if (param0) {
        Heap_FreeToHeap(SysTask_GetParam(param0));
        SysTask_Done(param0);
    }
}

static void ov86_0223CF5C(SysTask *param0)
{
    if (param0) {
        UnkStruct_ov86_0223CD94 *v0 = SysTask_GetParam(param0);
        v0->unk_00 = 1;
    }
}

static void ov86_0223CF6C(SysTask *param0, void *param1)
{
    UnkStruct_ov86_0223CD94 *v0 = param1;

    if (v0->unk_00) {
        int v1, v2;

        G3_BeginMakeDL(&v0->unk_1508, v0->unk_151C, sizeof(v0->unk_151C));
        G3B_PolygonAttr(&v0->unk_1508, GX_LIGHTMASK_01, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 63, 31, 0);
        G3B_MaterialColorDiffAmb(&v0->unk_1508, GX_RGB(20, 20, 20), GX_RGB(0, 0, 0), 0);

        for (v1 = 0; v1 < 48; v1++) {
            v0->unk_08[v1].unk_08[3].y -= 85;

            if (v0->unk_08[v1].unk_08[3].y <= -4096) {
                v0->unk_08[v1].unk_08[3].y = 4096 - (-4096 - v0->unk_08[v1].unk_08[3].y);
            }

            v0->unk_08[v1].unk_08[0].y = v0->unk_08[v1].unk_08[3].y - (205 * 2);
            v0->unk_08[v1].unk_08[1].y = v0->unk_08[v1].unk_08[0].y;
            v0->unk_08[v1].unk_08[2].y = v0->unk_08[v1].unk_08[3].y;

            VEC_Fx16Add(&v0->unk_08[v1].unk_20, &v0->unk_08[v1].unk_26, &v0->unk_08[v1].unk_20);

            MTX_Identity44(&(v0->unk_08[v1].unk_2C));
            MTX_TransApply44(&(v0->unk_08[v1].unk_2C), &(v0->unk_08[v1].unk_2C), v0->unk_08[v1].unk_08[0].x, v0->unk_08[v1].unk_08[0].y, v0->unk_08[v1].unk_08[0].z);

            G3B_LightColor(&(v0->unk_1508), GX_LIGHTID_0, GX_RGB(11, 11, 11));
            G3B_LightColor(&(v0->unk_1508), GX_LIGHTID_1, v0->unk_08[v1].unk_00);

            {
                VecFx16 v3;

                VEC_Fx16Set(&v3, 0, FX16_ONE - 1, -FX16_ONE + 1);
                VEC_Fx16Normalize(&v3, &v3);

                G3B_LightVector(&v0->unk_1508, GX_LIGHTID_0, v3.x, v3.y, v3.z);

                VEC_Fx16Set(&v3, 0, -FX16_ONE + 1, FX16_ONE - 1);
                VEC_Fx16Normalize(&v3, &v3);

                G3B_LightVector(&v0->unk_1508, GX_LIGHTID_1, v3.x, v3.y, v3.z);
            }

            {
                MtxFx44 v4;

                MTX_RotX44(&v4, FX_SinIdx((u16)(v0->unk_08[v1].unk_20.x)), FX_CosIdx((u16)(v0->unk_08[v1].unk_20.x)));
                MTX_Concat44(&v4, &(v0->unk_08[v1].unk_2C), &(v0->unk_08[v1].unk_2C));

                MTX_RotY44(&v4, FX_SinIdx((u16)(v0->unk_08[v1].unk_20.y)), FX_CosIdx((u16)(v0->unk_08[v1].unk_20.y)));
                MTX_Concat44(&v4, &(v0->unk_08[v1].unk_2C), &(v0->unk_08[v1].unk_2C));

                MTX_RotZ44(&v4, FX_SinIdx((u16)(v0->unk_08[v1].unk_20.z)), FX_CosIdx((u16)(v0->unk_08[v1].unk_20.z)));
                MTX_Concat44(&v4, &(v0->unk_08[v1].unk_2C), &(v0->unk_08[v1].unk_2C));
            }

            G3B_MaterialColorSpecEmi(&v0->unk_1508, GX_RGB(31, 31, 31), v0->unk_08[v1].unk_00, 0);
            G3B_PushMtx(&v0->unk_1508);
            G3B_LoadMtx44(&v0->unk_1508, &(v0->unk_08[v1].unk_2C));
            G3B_Begin(&v0->unk_1508, GX_BEGIN_QUADS);

            {
                G3B_Normal(&v0->unk_1508, 0, 0, -FX16_ONE + 1);
                G3B_Vtx(&v0->unk_1508, -156, -205, 0);
                G3B_Vtx(&v0->unk_1508, 156, -205, 0);
                G3B_Vtx(&v0->unk_1508, 156, 205, 0);
                G3B_Vtx(&v0->unk_1508, -156, 205, 0);
            }

            G3B_End(&v0->unk_1508);
            G3B_PopMtx(&v0->unk_1508, 1);
        }

        v0->unk_8D1C = G3_EndMakeDL(&v0->unk_1508);
        DC_FlushRange(v0->unk_151C, v0->unk_8D1C);

        GF_ASSERT(v0->unk_8D1C < sizeof(v0->unk_151C));
        v0->unk_04 = 1;
    }
}

static void ov86_0223D220(SysTask *param0)
{
    if (param0) {
        UnkStruct_ov86_0223CD94 *v0 = SysTask_GetParam(param0);

        if (v0->unk_04) {
            G3_PushMtx();
            MI_SendGXCommand(3, v0->unk_151C, v0->unk_8D1C);
            G3_PopMtx(1);
            v0->unk_04 = 0;
        } else {
            (void)0;
        }
    }
}

static void ov86_0223D264(UnkStruct_ov86_0223D264 *param0, fx32 param1, fx32 param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_08 = param2;
    param0->unk_04 = (param2 - param1) / param3;
    param0->unk_0C = param3 - 1;
    param0->unk_10 = 0;
}

static fx32 ov86_0223D284(UnkStruct_ov86_0223D264 *param0)
{
    if (param0->unk_0C) {
        param0->unk_0C--;
        param0->unk_00 += param0->unk_04;
        return param0->unk_00;
    } else {
        param0->unk_10 = 1;
        return param0->unk_08;
    }
}

static BOOL ov86_0223D2A4(UnkStruct_ov86_0223D264 *param0)
{
    return param0->unk_10;
}

static int ov86_0223D2A8(UnkStruct_ov86_0223B3C8 *param0, Pokemon *param1, const TrainerInfo *param2)
{
    BOOL v0;
    int v1 = 6;

    v0 = Pokemon_EnterDecryptionContext(param1);

    do {
        {
            int v2 = Pokemon_GetValue(param1, MON_DATA_MET_GAME, NULL);

            if ((v2 == 1) || (v2 == 2) || (v2 == 3)) {
                v1 = 4;
                break;
            }

            if ((v2 == 4) || (v2 == 5)) {
                v1 = 3;
                break;
            }

            if (v2 == 15) {
                v1 = 5;
                break;
            }
        }

        if (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL)) {
            v1 = 6;
            break;
        }

        {
            u32 v3, v4;

            v3 = TrainerInfo_ID(param2);
            v4 = Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL);

            if (v3 != v4) {
                v1 = 2;
                break;
            }

            TrainerInfo_NameStrbuf(param2, param0->unk_1C48);
            Pokemon_GetValue(param1, MON_DATA_OTNAME_STRBUF, param0->unk_1C4C);

            if (Strbuf_Compare(param0->unk_1C48, param0->unk_1C4C)) {
                v1 = 2;
                break;
            }
        }

        if (Pokemon_GetValue(param1, MON_DATA_HATCH_LOCATION, NULL) >= 2000) {
            v1 = 6;
        } else {
            if (Pokemon_GetValue(param1, MON_DATA_MET_MONTH, NULL) == 0) {
                v1 = 0;
            } else {
                v1 = 1;
            }
        }
    } while (0);

    Pokemon_ExitDecryptionContext(param1, v0);

    return v1;
}
