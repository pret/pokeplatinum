#include "overlay006/ov6_0223E140.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_light.h"
#include "overlay005/fieldmap.h"
#include "overlay005/motion_blur.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/funcptr_ov6_0223E6EC.h"
#include "overlay006/struct_ov6_0223E6EC.h"
#include "overlay006/struct_ov6_0223FDE4_decl.h"
#include "overlay115/camera_angle.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "field_system.h"
#include "field_task.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_object.h"
#include "math.h"
#include "narc.h"
#include "player_avatar.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_02005474.h"
#include "unk_020655F4.h"

void include_unk_ov6_02248F30();

typedef struct {
    FieldSystem *fieldSystem;
    UnkStruct_02099F80 unk_04;
    MotionBlur *motionBlur;
    int unk_30;
    int unk_34;
    u32 unk_38;
} UnkStruct_ov6_0223E140;

typedef struct {
    UnkStruct_ov6_0223FDE4 *unk_00;
    int unk_04;
    u32 unk_08;
    u32 unk_0C;
} UnkStruct_ov6_0223E33C;

typedef struct {
    u32 unk_00;
    s32 unk_04;
    UnkStruct_ov6_02240000 *unk_08;
} UnkStruct_ov6_0223E71C;

typedef struct {
    u32 unk_00;
    s32 unk_04;
    UnkStruct_ov6_0223FDE4 *unk_08;
    UnkStruct_ov6_02240000 *unk_0C;
    Camera *camera;
} UnkStruct_ov6_0223E548_sub1;

typedef struct {
    u32 unk_00;
    s32 unk_04;
    int unk_08;
    UnkStruct_ov6_0223E140 unk_0C;
    UnkStruct_ov6_022401B8 *unk_48;
    UnkStruct_ov6_0223FDE4 *unk_4C;
    UnkStruct_ov6_02240000 *unk_50;
    UnkStruct_ov6_02240C44 *unk_54;
    UnkStruct_ov6_0223E548_sub1 unk_58;
    UnkStruct_ov6_0223E71C unk_6C;
} UnkStruct_ov6_0223E548;

typedef struct {
    UnkStruct_ov6_02240774 *unk_00;
} UnkStruct_ov6_0223E7B4;

typedef struct {
    u32 unk_00;
    UnkStruct_ov6_02240A00 *unk_04;
    UnkStruct_ov6_02240774 *unk_08;
} UnkStruct_ov6_0223E830;

typedef struct {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} UnkStruct_ov6_0223FD00;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    s32 unk_0C;
} UnkStruct_ov6_0223FD0C;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_ov6_022400A8 *unk_08;
    s16 unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    Easy3DObject unk_24;
    Easy3DModel unk_9C;
    Easy3DAnim unk_AC;
    NNSFndAllocator unk_C0;
    s32 unk_D0;
    fx32 unk_D4;
    fx32 unk_D8;
    fx32 unk_DC;
    fx32 unk_E0;
    UnkStruct_ov6_0223FD0C unk_E4;
    UnkStruct_ov6_0223FD0C unk_F4;
    FieldSystem *fieldSystem;
    MapObject *unk_108;
    MapObject *unk_10C;
    MapObject *unk_110;
    PlayerAvatar *playerAvatar;
} UnkStruct_ov6_0223EA98;

typedef struct UnkStruct_ov6_0223FDE4_t {
    Camera *camera1;
    Camera *camera2;
    UnkStruct_ov6_0223FD0C unk_08;
    UnkStruct_ov6_0223FD0C unk_18;
    VecFx32 unk_28;
    VecFx32 unk_34;
    u32 unk_40;
    u32 unk_44;
    u32 unk_48;
};

typedef struct UnkStruct_ov6_02240000_t {
    UnkStruct_ov6_0223FD00 unk_00;
    int unk_10;
    u32 unk_14;
    u32 unk_18;
    int unk_1C;
    SysTask *unk_20;
} UnkStruct_ov6_02240000;

typedef struct {
    Easy3DObject unk_00;
    Easy3DModel unk_78;
    Easy3DAnim unk_88[2];
    UnkStruct_ov6_02240000 *unk_B0;
    UnkStruct_ov6_0223FD0C unk_B4;
    int unk_C4;
    int unk_C8;
    SysTask *unk_CC;
    s32 unk_D0;
    u16 unk_D4;
    u16 unk_D6;
    fx32 unk_D8;
} UnkStruct_ov6_022400A8_sub1;

typedef struct UnkStruct_ov6_022400A8_t {
    FieldSystem *fieldSystem;
    UnkStruct_ov6_0223E140 unk_04;
    UnkStruct_ov6_022400A8_sub1 unk_40;
    NNSFndAllocator unk_11C;
    u32 unk_12C;
    u32 unk_130;
    fx32 unk_134;
    fx32 unk_138;
    fx32 unk_13C;
} UnkStruct_ov6_022400A8;

typedef struct {
    MapObject *unk_00;
    UnkStruct_ov6_0223FD0C unk_04;
    UnkStruct_ov6_0223FD0C unk_14;
    int unk_24;
    int unk_28;
} UnkStruct_ov6_02240240;

typedef struct {
    int unk_00;
    int unk_04;
    Easy3DObject unk_08;
    Easy3DModel unk_80;
    Easy3DAnim unk_90[2];
    u32 unk_B8;
    UnkStruct_ov6_0223FD0C unk_BC;
    int unk_CC;
    int unk_D0;
    int unk_D4;
} UnkStruct_ov6_02240260;

typedef struct UnkStruct_ov6_022401B8_t {
    u32 unk_00;
    FieldSystem *fieldSystem;
    UnkStruct_ov6_02240240 unk_08;
    UnkStruct_ov6_02240260 unk_34;
    NNSFndAllocator unk_10C;
    u32 unk_11C;
} UnkStruct_ov6_022401B8;

typedef struct {
    u32 unk_00;
    Easy3DObject unk_04;
    UnkStruct_ov6_0223FD0C unk_7C;
    int unk_8C;
} UnkStruct_ov6_022407B8;

typedef struct UnkStruct_ov6_02240774_t {
    Easy3DModel unk_00;
    UnkStruct_ov6_022407B8 unk_10[3];
    u32 unk_1C0;
    s32 unk_1C4;
    s32 unk_1C8;
    fx32 unk_1CC;
    fx32 unk_1D0;
    fx32 unk_1D4;
    u16 unk_1D8;
    u16 unk_1DA;
    u16 unk_1DC;
} UnkStruct_ov6_02240774;

typedef struct UnkStruct_ov6_02240A00_t {
    Easy3DObject unk_00;
    Easy3DModel unk_78;
    Easy3DAnim unk_88[3];
    NNSFndAllocator unk_C4;
} UnkStruct_ov6_02240A00;

typedef struct UnkStruct_ov6_02240C44_t {
    Easy3DObject unk_00;
    Easy3DModel unk_78;
    Easy3DAnim unk_88[4];
    FieldSystem *fieldSystem;
    NNSFndAllocator unk_DC;
} UnkStruct_ov6_02240C44;

static void ov6_0223E140(UnkStruct_ov6_0223E140 *param0);
static void ov6_0223E198(UnkStruct_ov6_0223E140 *param0);
static u32 ov6_0223E1AC(const UnkStruct_ov6_0223E140 *param0);
static void ov6_0223E1B0(void);
static void ov6_0223E1D0(BgConfig *param0);
static void ov6_0223E2AC(BgConfig *param0);
static void ov6_0223E2A4(BgConfig *param0);
static MotionBlur *ov6_0223E2BC(int param0, int param1);
static void ov6_0223E2E8(UnkStruct_ov6_0223E140 *param0);
static void ov6_0223E234(UnkStruct_ov6_0223E140 *param0);
static void ov6_0223E248(UnkStruct_ov6_0223E140 *param0);
static void ov6_0223E2FC(SysTask *param0, void *param1);
static void ov6_0223E25C(SysTask *param0, void *param1);
static void ov6_0223E280(SysTask *param0, void *param1);
static BOOL ov6_0223E71C(UnkStruct_ov6_0223E71C *param0);
static BOOL ov6_022405D0(UnkStruct_ov6_022401B8 *param0);
static BOOL ov6_02240364(UnkStruct_ov6_022401B8 *param0, int param1, int param2);
static void ov6_0223FD00(UnkStruct_ov6_0223FD00 *param0, s32 param1, s32 param2, s32 param3);
static void ov6_0223FD0C(UnkStruct_ov6_0223FD0C *param0, fx32 param1, fx32 param2, s32 param3);
static BOOL ov6_0223FD18(UnkStruct_ov6_0223FD0C *param0, s32 param1);
static void ov6_0223FD58(Easy3DModel *param0, u32 param1, u32 param2, u32 param3);
static void ov6_0223FD68(Easy3DModel *param0);
static void ov6_0223FD84(Easy3DAnim *param0, NNSFndAllocator *param1);
static BOOL ov6_0223FD98(Easy3DAnim *param0);
static void ov6_0223FD8C(Easy3DAnim *param0);
static void ov6_0223FDA4(Easy3DAnim *param0, fx32 param1);
static void ov6_0223FDAC(Easy3DObject *param0, Easy3DModel *param1);
static void ov6_0223FDB4(Easy3DObject *param0, Easy3DAnim *param1);
static void ov6_0223FDBC(Easy3DObject *param0);
static void ov6_0223FDC4(Easy3DObject *param0, BOOL param1);
static void ov6_0223FDCC(Easy3DObject *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov6_0223FDD4(Easy3DObject *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov6_0223FDDC(Easy3DObject *param0, u16 param1, u32 param2);
static UnkStruct_ov6_0223FDE4 *ov6_0223FDE4(u32 heapID);
static void ov6_0223FF7C(UnkStruct_ov6_0223FDE4 *param0);
static BOOL ov6_0223FFC8(UnkStruct_ov6_0223FDE4 *param0);
static void ov6_0223FFE4(UnkStruct_ov6_0223FDE4 *param0, fx32 param1, fx32 param2);
static void ov6_02240064(SysTask *param0, void *param1);
static void ov6_02240240(UnkStruct_ov6_02240240 *param0, FieldSystem *fieldSystem, u32 param2);
static void ov6_02240260(UnkStruct_ov6_02240260 *param0, u32 param1, NNSFndAllocator *param2);
static void ov6_022402E4(UnkStruct_ov6_02240260 *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov6_02240340(UnkStruct_ov6_02240260 *param0, NNSFndAllocator *param1);
static void ov6_02240600(UnkStruct_ov6_02240260 *param0);
static void ov6_02240654(UnkStruct_ov6_02240774 *param0);
static void ov6_0224067C(UnkStruct_ov6_02240774 *param0, fx32 param1, fx32 param2, fx32 param3, s32 param4, u16 param5, u16 param6, u16 param7);
static void ov6_022406D8(UnkStruct_ov6_02240774 *param0);
static void ov6_02240750(UnkStruct_ov6_02240774 *param0);
static void ov6_022407B8(UnkStruct_ov6_022407B8 *param0, Easy3DModel *param1);
static void ov6_022407DC(UnkStruct_ov6_022407B8 *param0);
static void ov6_022407E8(UnkStruct_ov6_022407B8 *param0, fx32 param1, fx32 param2, int param3, fx32 param4, fx32 param5, fx32 param6, u16 param7, u16 param8, u16 param9);
static void ov6_0224085C(UnkStruct_ov6_022407B8 *param0);
static void ov6_0224089C(UnkStruct_ov6_022407B8 *param0);
static UnkStruct_ov6_022407B8 *ov6_022408A8(UnkStruct_ov6_02240774 *param0);
static UnkStruct_ov6_02240A00 *ov6_022408C8(u32 heapID, u32 param1);
static void ov6_02240968(UnkStruct_ov6_02240A00 *param0);
static void ov6_02240994(UnkStruct_ov6_02240A00 *param0, fx32 param1, fx32 param2, fx32 param3, u16 param4, u16 param5, u16 param6);
static void ov6_022409D4(UnkStruct_ov6_02240A00 *param0);
static void ov6_022409EC(UnkStruct_ov6_02240A00 *param0);

static void ov6_0223E140(UnkStruct_ov6_0223E140 *param0)
{
    switch (param0->unk_38) {
    case 0:
        ov6_0223E234(param0);
        param0->unk_38++;
        break;
    case 1:
        param0->motionBlur = ov6_0223E2BC(param0->unk_30, param0->unk_34);
        param0->unk_38++;
        break;
    case 2:
        break;
    case 3:
        ov6_0223E2E8(param0);
        param0->unk_38++;
        break;
    case 4:
        ov6_0223E248(param0);
        param0->unk_38++;
        break;
    case 5:
        break;
    }
}

static void ov6_0223E198(UnkStruct_ov6_0223E140 *param0)
{
    GF_ASSERT(param0->unk_38 == 2);
    param0->unk_38 = 3;
}

static u32 ov6_0223E1AC(const UnkStruct_ov6_0223E140 *param0)
{
    return param0->unk_38;
}

static void ov6_0223E1B0(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_32_FG,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_NONE,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

static void ov6_0223E1D0(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v0);
    }

    GXLayers_EngineAToggleLayers(
        GX_PLANEMASK_BG0, 1);

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x4000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 3, &v1, 0);
        Bg_ClearTilesRange(3, 32, 0, HEAP_ID_FIELD);
        Bg_ClearTilemap(param0, 3);
    }
}

static void ov6_0223E234(UnkStruct_ov6_0223E140 *param0)
{
    SysTask_ExecuteAfterVBlank(ov6_0223E25C, param0, 1024);
}

static void ov6_0223E248(UnkStruct_ov6_0223E140 *param0)
{
    SysTask_ExecuteAfterVBlank(ov6_0223E280, param0, 1024);
}

static void ov6_0223E25C(SysTask *param0, void *param1)
{
    UnkStruct_ov6_0223E140 *v0 = param1;

    ov6_0223E1B0();
    ov6_0223E2A4(v0->fieldSystem->bgConfig);
    ov6_0223E1D0(v0->fieldSystem->bgConfig);

    SysTask_Done(param0);
}

static void ov6_0223E280(SysTask *param0, void *param1)
{
    UnkStruct_ov6_0223E140 *v0 = param1;

    GXLayers_SetBanks(&v0->unk_04);
    ov6_0223E2A4(v0->fieldSystem->bgConfig);
    ov6_0223E2AC(v0->fieldSystem->bgConfig);
    SysTask_Done(param0);
}

static void ov6_0223E2A4(BgConfig *param0)
{
    ov5_021D143C(param0);
}

static void ov6_0223E2AC(BgConfig *param0)
{
    ov5_021D1434(param0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
}

static MotionBlur *ov6_0223E2BC(int param0, int param1)
{
    MotionBlur *motionBlur;

    {
        MotionBlurParams motionBlurParams = {
            GX_DISPMODE_VRAM_C,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
            GX_CAPTURE_SIZE_256x192,
            GX_CAPTURE_MODE_AB,
            GX_CAPTURE_SRCA_2D3D,
            GX_CAPTURE_SRCB_VRAM_0x00000,
            GX_CAPTURE_DEST_VRAM_C_0x00000,
            0,
            0,
            4
        };

        motionBlurParams.blendCoeffA = param0;
        motionBlurParams.blendCoeffB = param1;

        motionBlur = MotionBlur_New(&motionBlurParams);
    }

    return motionBlur;
}

static void ov6_0223E2E8(UnkStruct_ov6_0223E140 *param0)
{
    SysTask_ExecuteAfterVBlank(ov6_0223E2FC, param0, 1024);
}

static void ov6_0223E2FC(SysTask *param0, void *param1)
{
    UnkStruct_ov6_0223E140 *v0 = param1;

    MotionBlur_Delete(&v0->motionBlur, GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
    SysTask_Done(param0);
}

static void ov6_0223E318(FieldSystem *fieldSystem, u32 param1, BOOL param2)
{
    MapObject *v0 = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, param1);

    if (param2 == 1) {
        MapObject_SetStatusFlagOn(v0, MAP_OBJ_STATUS_HIDE_SHADOW);
    } else {
        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_HIDE_SHADOW);
    }
}

static BOOL ov6_0223E33C(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov6_0223E33C *v1 = FieldTask_GetEnv(taskMan);

    switch (v1->unk_0C) {
    case 0:
        ov6_0223FE9C(v1->unk_00);

        if (ov6_0223FF6C(v1->unk_00) == 1) {
            v1->unk_0C++;
        }
        break;
    case 1:
        ov6_0223FE08(v1->unk_00);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void ov6_0223E384(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov6_0223E33C *v1 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov6_0223E33C));

    memset(v1, 0, sizeof(UnkStruct_ov6_0223E33C));
    v1->unk_00 = ov6_0223FDE4(HEAP_ID_FIELD);

    ov6_0223FE1C(v1->unk_00, (FX32_CONST(2.0f)), 0, 1, 16, fieldSystem->camera);
    FieldTask_InitCall(taskMan, ov6_0223E33C, v1);
}

static void ov6_0223E3D8(UnkStruct_ov6_0223E33C *param0)
{
    fx32 v0 = ov6_0223FFF8(param0->unk_00);
    fx32 v1;
    u32 v2 = ov6_0223FFF4(param0->unk_00);

    if (param0->unk_08 != v2) {
        param0->unk_08 = v2;

        v1 = FX_Div(v0, (8 * FX32_ONE));
        v1 = v0 - v1;

        ov6_0223FFFC(param0->unk_00, v1);
    }
}

static BOOL ov6_0223E408(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov6_0223E33C *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_0C) {
    case 0:
        sub_0200564C(0, 1);
        v1->unk_0C++;
        break;
    case 1:
        if (Sound_CheckFade() == 0) {
            v1->unk_0C++;
            v1->unk_04 = 16;
        }
        break;
    case 2:
        v1->unk_04--;

        if (v1->unk_04 <= 0) {
            v1->unk_0C++;
            Sound_PlayEffect(1628);
        }
        break;
    case 3:
        ov6_0223FE9C(v1->unk_00);
        ov6_0223E3D8(v1);

        if (ov6_0223FF6C(v1->unk_00) == 1) {
            Sound_StopEffect(1628, 0);
            v1->unk_0C++;
            v1->unk_04 = 16;
        }
        break;
    case 4:
        v1->unk_04--;

        if (v1->unk_04 <= 0) {
            v1->unk_0C++;
        }
        break;
    case 5:
        sub_0200560C(127, 16, 0);
        v1->unk_0C++;
        break;
    case 6:
        if (Sound_CheckFade() == 0) {
            v1->unk_0C++;
        }
        break;
    case 7:
        ov6_0223FE08(v1->unk_00);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void ov6_0223E4EC(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov6_0223E33C *v1 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov6_0223E33C));

    memset(v1, 0, sizeof(UnkStruct_ov6_0223E33C));
    v1->unk_00 = ov6_0223FDE4(HEAP_ID_FIELD);

    ov6_0223FE1C(v1->unk_00, (FX32_CONST(4.0f)), 0, 1, 24, fieldSystem->camera);

    v1->unk_08 = ov6_0223FFF4(v1->unk_00);
    FieldTask_InitCall(param0, ov6_0223E408, v1);
}

static void ov6_0223E548(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E548 *v0 = param2;

    memset(v0, 0, sizeof(UnkStruct_ov6_0223E548));

    v0->unk_48 = ov6_02240104(HEAP_ID_FIELD, fieldSystem);
    v0->unk_00 = 0;
}

static void ov6_0223E568(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E548 *v0 = param2;
    ov6_022401B8(v0->unk_48);
}

static void ov6_0223E574(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E548 *v0 = param2;
    BOOL v1[2];
    BOOL v2;

    switch (v0->unk_00) {
    case 0:
        v0->unk_00++;
    case 1:
        v0->unk_00++;
    case 2:
        ov6_022401D0(v0->unk_48, 0);
        v0->unk_04 = 0;
        v0->unk_08 = 0;
        v0->unk_00++;
        break;
    case 3: {
        BOOL v3 = 0;

        if (v0->unk_04 != 12) {
            if ((++v0->unk_08) >= 8) {
                v3 = ov6_02240364(v0->unk_48, v0->unk_04 % 2, v0->unk_04);

                if (v3) {
                    v0->unk_08 = 0;
                    v0->unk_04++;
                }
            }
        } else {
            v3 = 1;
        }

        if (ov6_022405D0(v0->unk_48) && v3) {
            v0->unk_08 = 0;
            v0->unk_00 = 4;
        }
    } break;
    case 4:
        if (ov6_02240364(v0->unk_48, 0, 60)) {
            v0->unk_08 = 0;
            v0->unk_00 = 11;
        }
        break;
    case 5:
        v1[0] = ov6_0223E71C(&v0->unk_6C);

        if (v0->unk_6C.unk_00 == 3) {
            if (ov6_02240060(v0->unk_6C.unk_08) == 13) {
                v0->unk_54 = ov6_02240B9C(HEAP_ID_FIELD, fieldSystem);
            }
        }

        if (v1[0] == 1) {
            v0->unk_00++;
        }
        break;
    case 6:
        ov6_0223E198(&v0->unk_0C);
        v0->unk_00++;
        break;
    case 7:
        ov6_0223E140(&v0->unk_0C);

        if (ov6_0223E1AC(&v0->unk_0C) == 5) {
            v0->unk_00++;
        }
        break;
    case 8:
        ov6_02240C44(v0->unk_54, 0);
        v0->unk_04 = 72;
        v0->unk_00++;
        break;
    case 9:
        v0->unk_04--;

        if (v0->unk_04 <= 0) {
            ov6_0223E318(fieldSystem, 0, 1);
            v0->unk_00++;
        }
    case 10:
        v2 = ov6_02240C7C(v0->unk_54);

        if (v2 == 1) {
            ov6_0223E318(fieldSystem, 0, 0);
            v0->unk_00++;
        }
        break;
    case 11:
        break;
    default:
        break;
    }
}

static void ov6_0223E6D4(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E548 *v0 = param2;

    ov6_02240228(v0->unk_48);

    if (v0->unk_54) {
        ov6_02240C94(v0->unk_54);
    }
}

UnkStruct_ov5_021D1BEC *ov6_0223E6EC(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov6_0223E548),
        ov6_0223E548,
        ov6_0223E568,
        ov6_0223E574,
        ov6_0223E6D4
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

void ov6_0223E700(UnkStruct_ov5_021D1BEC *param0)
{
    ov5_021D1BEC(param0);
}

BOOL ov6_0223E708(UnkStruct_ov5_021D1BEC *param0)
{
    UnkStruct_ov6_0223E548 *v0 = ov5_021D1C2C(param0);

    if (v0->unk_00 == 11) {
        return 1;
    }

    return 0;
}

static BOOL ov6_0223E71C(UnkStruct_ov6_0223E71C *param0)
{
    switch (param0->unk_00) {
    case 0:
        param0->unk_04--;

        if (param0->unk_04 < 0) {
            param0->unk_00++;
        }
        break;
    case 1:
        ov6_02240000(param0->unk_08, 13, 4, 8);
        param0->unk_00++;
        param0->unk_04 = 16;
        break;
    case 2:
        param0->unk_04--;

        if (param0->unk_04 < 0) {
            ov6_02240000(param0->unk_08, 13, 4, 8);
            param0->unk_00++;
            param0->unk_04 = 16;
        }
        break;
    case 3:
        param0->unk_04--;

        if (param0->unk_04 < 0) {
            ov6_02240000(param0->unk_08, 13, 4, 32);
            param0->unk_00++;
            param0->unk_04 = 40;
        }
        break;
    case 4:
        param0->unk_04--;

        if (param0->unk_04 < 0) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov6_0223E7B4(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E7B4 *v0 = param2;
    MapObject *v1;
    u16 v2, v3, v4;

    v1 = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, 0);
    GF_ASSERT(v1);

    v2 = MapObject_GetX(v1);
    v3 = 0;
    v4 = MapObject_GetZ(v1);

    v0->unk_00 = ov6_02240768(HEAP_ID_FIELD);
    ov6_0224077C(v0->unk_00, v2, v3, v4);
}

static void ov6_0223E7F0(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E7B4 *v0 = param2;
    ov6_02240774(v0->unk_00);
}

static void ov6_0223E7FC(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E7B4 *v0 = param2;
    ov6_022407A8(v0->unk_00);
}

static void ov6_0223E808(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E7B4 *v0 = param2;
    ov6_022407B0(v0->unk_00);
}

UnkStruct_ov5_021D1BEC *ov6_0223E814(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov6_0223E7B4),
        ov6_0223E7B4,
        ov6_0223E7F0,
        ov6_0223E7FC,
        ov6_0223E808
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

void ov6_0223E828(UnkStruct_ov5_021D1BEC *param0)
{
    ov5_021D1BEC(param0);
}

static void ov6_0223E830(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E830 *v0 = param2;
    VecFx32 v1;
    CameraAngle v2;

#if (GAME_VERSION == DIAMOND || GAME_VERSION == PLATINUM)
    Camera_SetFOV(0x1701, fieldSystem->camera);
    Camera_SetDistance(0xc8a55, fieldSystem->camera);
    v1.x = 0x2280ef;
    v1.y = 0xca424;
    v1.z = 0x268c50;
    Camera_SetTarget(&v1, fieldSystem->camera);
    v2.x = 0x22a2;
    v2.y = 0xf800;
    v2.z = 0;
    Camera_SetAngleAroundTarget(&v2, fieldSystem->camera);

    Camera_SetClipping(2 * FX32_ONE, 2000 * FX32_ONE, fieldSystem->camera);
#elif (GAME_VERSION == PEARL)
    Camera_SetFOV(0x10c1, fieldSystem->camera);
    Camera_SetDistance(0xD5052, fieldSystem->camera);
    v1.x = 0x1bffbd;
    v1.y = 0xaa361;
    v1.z = 0x25dfdc;
    Camera_SetTarget(&v1, fieldSystem->camera);
    v2.unk_00 = 0x19a3;
    v2.unk_02 = 0x90c;
    v2.unk_04 = 0;
    Camera_SetAngleAroundTarget(&v2, fieldSystem->camera);

    Camera_SetClipping(14 * FX32_ONE, 2031 * FX32_ONE, fieldSystem->camera);
#endif

    v0->unk_04 = ov6_022409F4(HEAP_ID_FIELD);
    v0->unk_08 = ov6_02240AC8(HEAP_ID_FIELD);

    v1 = Camera_GetTarget(fieldSystem->camera);

    ov6_02240A18(v0->unk_04, v1.x, v1.y, v1.z);
    ov6_02240AEC(v0->unk_08, v1.x, v1.y, v1.z);
}

static void ov6_0223E8D0(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E830 *v0 = param2;
    VecFx32 v1;
    CameraAngle v2;

    Camera_SetFOV(0xf81, fieldSystem->camera);
    Camera_SetDistance(0x17e532, fieldSystem->camera);

    v1.x = 0xf99d58;
    v1.y = 0xc5502;
    v1.z = 0x28cf549;

    Camera_SetTarget(&v1, fieldSystem->camera);

    v2.x = 0x642;
    v2.y = 0xeda0;
    v2.z = 0;

    Camera_SetAngleAroundTarget(&v2, fieldSystem->camera);
    Camera_SetClipping(88 * FX32_ONE, 2000 * FX32_ONE, fieldSystem->camera);
    AreaLightManager_Free(&fieldSystem->areaLightMan);

    fieldSystem->areaLightMan = AreaLightManager_New(fieldSystem->areaModelAttrs, 3);

    v0->unk_04 = ov6_022409F4(HEAP_ID_FIELD);
    v0->unk_08 = ov6_02240AC8(HEAP_ID_FIELD);

    v1 = Camera_GetTarget(fieldSystem->camera);

    ov6_02240A50(v0->unk_04, v1.x, v1.y, v1.z);
    ov6_02240B24(v0->unk_08, v1.x, v1.y, v1.z);
}

static void ov6_0223E984(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E830 *v0 = param2;
    VecFx32 v1;
    CameraAngle v2;

    Camera_SetFOV(0x4c1, fieldSystem->camera);
    Camera_SetDistance(0x26bec1, fieldSystem->camera);

    v1.x = 0x1df5dfd;
    v1.y = 0x73a0c;
    v1.z = 0x2b9f4a2;

    Camera_SetTarget(&v1, fieldSystem->camera);

    v2.x = 0x4c2;
    v2.y = 0xa40;
    v2.z = 0;

    Camera_SetAngleAroundTarget(&v2, fieldSystem->camera);
    Camera_SetClipping(176 * FX32_ONE, 1480 * FX32_ONE, fieldSystem->camera);
    AreaLightManager_Free(&fieldSystem->areaLightMan);

    fieldSystem->areaLightMan = AreaLightManager_New(fieldSystem->areaModelAttrs, 3);

    v0->unk_04 = ov6_022409F4(HEAP_ID_FIELD);
    v0->unk_08 = ov6_02240AC8(HEAP_ID_FIELD);

    v1 = Camera_GetTarget(fieldSystem->camera);

    ov6_02240A8C(v0->unk_04, v1.x, v1.y, v1.z);
    ov6_02240B60(v0->unk_08, v1.x, v1.y, v1.z);
}

static void ov6_0223EA38(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E830 *v0 = param2;

    ov6_02240A00(v0->unk_04);
    ov6_02240AD4(v0->unk_08);
}

static void ov6_0223EA4C(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E830 *v0 = param2;

    ov6_02240A08(v0->unk_04);
    ov6_02240ADC(v0->unk_08);
}

static void ov6_0223EA60(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223E830 *v0 = param2;

    ov6_02240A10(v0->unk_04);
    ov6_02240AE4(v0->unk_08);
}

UnkStruct_ov5_021D1BEC *ov6_0223EA74(FieldSystem *fieldSystem, u32 param1)
{
    static UnkStruct_ov6_0223E6EC v0 = {
        1024,
        sizeof(UnkStruct_ov6_0223E830),
        NULL,
        ov6_0223EA38,
        ov6_0223EA4C,
        ov6_0223EA60
    };
    static const UnkFuncPtr_ov6_0223E6EC v1[] = {
        ov6_0223E830,
        ov6_0223E8D0,
        ov6_0223E984
    };
    UnkStruct_ov5_021D1BEC *v2;

    v0.unk_08 = v1[param1];
    v2 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v2;
}

static void ov6_0223EA98(UnkStruct_ov6_0223EA98 *param0)
{
    int v0;
    int v1;
    NARC *v2;
    static const int v3[][2] = {
        { 12, 11 },
        { 8, 7 },
        { 10, 9 }
    };

    v2 = NARC_ctor(NARC_INDEX_ARC__DEMO_TENGAN_GRA, HEAP_ID_FIELD);
    v0 = v3[param0->unk_10][0];
    v1 = v3[param0->unk_10][1];

    Easy3DModel_LoadFrom(&param0->unk_9C, v2, v0, 4);
    Easy3DObject_Init(&param0->unk_24, &param0->unk_9C);
    Easy3DObject_SetPosition(&param0->unk_24, 0, 0, 0);
    Easy3DObject_SetScale(&param0->unk_24, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    Easy3DObject_SetVisibility(&param0->unk_24, 1);
    Easy3DAnim_LoadFrom(&param0->unk_AC, &param0->unk_9C, v2, v1, 4, &param0->unk_C0);
    Easy3DAnim_SetFrame(&param0->unk_AC, 0);
    Easy3DObject_AddAnim(&param0->unk_24, &param0->unk_AC);
    NARC_dtor(v2);
}

static void ov6_0223EB34(UnkStruct_ov6_0223EA98 *param0)
{
    Easy3DModel_Release(&param0->unk_9C);
    Easy3DAnim_Release(&param0->unk_AC, &param0->unk_C0);
}

static void ov6_0223EB4C(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223EA98 *v0 = param2;

    v0->unk_08 = ov6_02240074(fieldSystem);
    v0->unk_0C = 0;
    v0->unk_10 = 0;
    v0->unk_1C = 0;
    v0->unk_14 = 0;
    v0->unk_18 = 0;
    v0->unk_D0 = 30;
    v0->fieldSystem = fieldSystem;
    v0->unk_108 = MapObjMan_LocalMapObjByIndex(v0->fieldSystem->mapObjMan, 1);
    v0->unk_10C = MapObjMan_LocalMapObjByIndex(v0->fieldSystem->mapObjMan, 0);
    v0->unk_110 = Player_MapObject(sub_0205EF3C(v0->fieldSystem));

    Heap_FndInitAllocatorForExpHeap(&v0->unk_C0, 4, 32);
    ov6_0223EA98(v0);
    GX_SetMasterBrightness(v0->unk_0C);

    v0->unk_00 = 0;
}

static void ov6_0223EBD0(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223EA98 *v0 = param2;
    ov6_022400A8(v0->unk_08);
}

static const fx32 Unk_ov6_02248EA8[][2] = {
    { 0x1F8, 0x14A },
    { 0x243, 0x14A },
    { 0x1F8, 0x14A }
};

static BOOL ov6_0223EBDC(UnkStruct_ov6_0223EA98 *param0)
{
    BOOL v0[2];
    fx32 v1, v2, v3;

    switch (param0->unk_18) {
    case 0:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(573);
        param0->unk_D8 = FX32_CONST(330 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 20);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 20);
        param0->unk_18++;
        break;
    case 1:
        param0->unk_D0++;
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            Sound_PlayPokemonCry(POKECRY_NORMAL, SPECIES_UXIE, 0, 100, HEAP_ID_FIELD, 0);
            param0->unk_18++;
        }
        break;
    case 2:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(444);
        param0->unk_D8 = FX32_CONST(330 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 20);
        param0->unk_18++;
        break;
    case 3:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        param0->unk_D8 += (CalcCosineDegrees_Wraparound(param0->unk_D0 * (180 / 20)) * 3);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_D8);

        if (v0[0]) {
            param0->unk_18++;
        }
        break;
    case 4:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(507);
        param0->unk_D8 = FX32_CONST(330 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 20);
        param0->unk_18++;
        break;
    case 5:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        param0->unk_D8 -= (CalcCosineDegrees_Wraparound(param0->unk_D0 * (90 / 20)) * 3);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_D8);

        if (v0[0]) {
            param0->unk_18 = 99;
        }
        break;
    case 99:
        param0->unk_18++;
    default:
        param0->unk_18 = 0;
        return 1;
        break;
    }

    return 0;
}

static BOOL ov6_0223EE5C(UnkStruct_ov6_0223EA98 *param0)
{
    BOOL v0[2];
    fx32 v1, v2, v3;

    switch (param0->unk_18) {
    case 0:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(555);
        param0->unk_D8 = FX32_CONST(317 + 30);
        param0->unk_E0 = FX32_CONST(0);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 32);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 32);
        param0->unk_18++;
        break;
    case 1:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00 + param0->unk_E0);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    case 2:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(507);
        param0->unk_D8 = FX32_CONST(317 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 32);
        param0->unk_18++;
        break;
    case 3:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        param0->unk_D8 += (CalcCosineDegrees_Wraparound(param0->unk_D0 * (180 / 32)) * 3);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_D8);

        if (v0[0]) {
            param0->unk_18++;
        }
        break;
    case 4:
        param0->unk_D0 = 0;
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &param0->unk_D8);
        param0->unk_18++;
    case 5:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        param0->unk_D8 -= (CalcCosineDegrees_Wraparound(param0->unk_D0 * (360 / 32)) * 2);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, v1, v2, param0->unk_D8);

        if (param0->unk_D0 >= (32 * 2)) {
            param0->unk_D0 = 0;
            param0->unk_18++;
        }
        break;
    case 6:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(465);
        param0->unk_D8 = FX32_CONST(468 + 30);
        param0->unk_DC = FX32_CONST(0);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 32);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 32);
        param0->unk_18++;
        break;
    case 7:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_D0++;
        param0->unk_DC -= (CalcCosineDegrees_Wraparound((param0->unk_D0 + 1) * (180 / 32)) * 4);
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00 + param0->unk_DC, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    case 8:
        param0->unk_D0 = 0;
        MapObject_Face(param0->unk_10C, 2);
        LocalMapObj_SetAnimationCode(param0->unk_110, 0x2);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &param0->unk_D8);
        param0->unk_18++;
    case 9:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        param0->unk_D8 += (CalcCosineDegrees_Wraparound(param0->unk_D0 * (360 / 32)) * 1);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, v1, v2, param0->unk_D8);

        if (param0->unk_D0 >= (32 * 1)) {
            param0->unk_1C = 1;
            param0->unk_D0 = 0;
            param0->unk_18++;
        }
        break;
    case 10:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(503);
        param0->unk_D8 = FX32_CONST(475 + 30);
        param0->unk_E0 = FX32_CONST(0);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 32);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 32);
        param0->unk_18++;
        break;
    case 11:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_E0 += (CalcCosineDegrees_Wraparound(param0->unk_D0 * (180 / 32)) * 2);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00 + param0->unk_E0);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    case 12:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(503);
        param0->unk_D8 = FX32_CONST(454 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 32 / 4);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 32 / 4);
        param0->unk_18++;
        break;
    case 13:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_D0++;

        if (param0->unk_D0 >= 4) {
            if (param0->unk_0C < 16) {
                param0->unk_0C += 2;
                GX_SetMasterBrightness(param0->unk_0C);
            }
        }

        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    case 14:
        if (param0->unk_0C < 16) {
            param0->unk_0C += 2;
            GX_SetMasterBrightness(param0->unk_0C);
            break;
        }

        MapObject_SetHidden(param0->unk_108, 0);
        Easy3DObject_SetVisibility(&param0->unk_24, 0);
        param0->unk_18++;
        break;
    case 15:
        if (param0->unk_0C > 0) {
            param0->unk_0C -= 1;
            GX_SetMasterBrightness(param0->unk_0C);
            break;
        }

        param0->unk_D0 = 0;
        Sound_PlayPokemonCry(POKECRY_NORMAL, SPECIES_MESPRIT, 0, 100, HEAP_ID_FIELD, 0);
        param0->unk_18++;
        break;
    case 16:
        if ((++param0->unk_D0) < 60) {
            break;
        }

        param0->unk_18++;
        break;
    case 17:
        if (param0->unk_0C < 16) {
            param0->unk_0C += 2;
            GX_SetMasterBrightness(param0->unk_0C);
            break;
        }

        MapObject_SetHidden(param0->unk_108, 1);
        Easy3DObject_SetVisibility(&param0->unk_24, 1);

        param0->unk_18++;
    case 18:
        param0->unk_18++;
        break;
    case 19:
        param0->unk_D0 = 0;
        param0->unk_D8 = FX32_CONST(319 + 30);
        param0->unk_DC = FX32_CONST(0);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        param0->unk_D4 = v1;
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 32);
        param0->unk_18++;
        break;
    case 20:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_D0++;

        if (param0->unk_0C > 0) {
            param0->unk_0C -= 1;
            GX_SetMasterBrightness(param0->unk_0C);
        }

        param0->unk_DC += (CalcCosineDegrees_Wraparound((param0->unk_D0 + 1) * (180 / 32)) * 8);
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_D4 + param0->unk_DC, v2, param0->unk_F4.unk_00);

        if (v0[0]) {
            param0->unk_18 = 99;
        }
        break;
    case 99:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(Unk_ov6_02248EA8[param0->unk_10][0]);
        param0->unk_D8 = FX32_CONST(Unk_ov6_02248EA8[param0->unk_10][1]);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 20);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 20);
        param0->unk_18++;
        break;
    case 100:
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_D0++;
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    default:
        param0->unk_18 = 0;
        return 1;
        break;
    }

    if (param0->unk_1C != 0) {
        if (param0->unk_1C == 20) {
            MapObject_Face(param0->unk_10C, 1);
            LocalMapObj_SetAnimationCode(param0->unk_110, 0x1);
        }

        if (param0->unk_1C == 40) {
            MapObject_Face(param0->unk_10C, 2);
            LocalMapObj_SetAnimationCode(param0->unk_110, 0x3);
        }

        if (param0->unk_1C == 50) {
            MapObject_Face(param0->unk_10C, 0);
            LocalMapObj_SetAnimationCode(param0->unk_110, 0x0);
        }

        param0->unk_1C++;
    }

    return 0;
}

static BOOL ov6_0223F744(UnkStruct_ov6_0223EA98 *param0)
{
    BOOL v0[2];
    fx32 v1, v2, v3;

    switch (param0->unk_18) {
    case 0:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(606);
        param0->unk_D8 = FX32_CONST(340 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 8);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 8);
        param0->unk_18++;
        break;
    case 1:
        param0->unk_D0++;
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    case 2:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(438);
        param0->unk_D8 = FX32_CONST(412 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 8);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 8);
        param0->unk_18++;
        break;
    case 3:
        param0->unk_D0++;
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            Sound_PlayPokemonCry(POKECRY_NORMAL, SPECIES_AZELF, 0, 100, HEAP_ID_FIELD, 0);
            param0->unk_18++;
        }

        break;
    case 4:
        param0->unk_D0 = 0;
        param0->unk_D4 = FX32_CONST(504);
        param0->unk_D8 = FX32_CONST(307 + 30);
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 8);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 8);
        param0->unk_18++;
        break;
    case 5:
        param0->unk_D0++;
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            param0->unk_18++;
        }
        break;
    case 6:
        if ((++param0->unk_D0) > 15) {
            param0->unk_18 = 99;
        }
        break;
    case 99:
        param0->unk_18++;
    default:
        param0->unk_18 = 0;
        return 1;
        break;
    }

    return 0;
}

static BOOL ov6_0223F9F4(UnkStruct_ov6_0223EA98 *param0)
{
    BOOL v0[2];
    fx32 v1, v2, v3;

    switch (param0->unk_14) {
    case 0:
        switch (param0->unk_10) {
        case 0:
            v0[0] = ov6_0223EBDC(param0);
            break;
        case 1:
            v0[0] = ov6_0223F744(param0);
            break;
        case 2:
            v0[0] = ov6_0223EE5C(param0);
            break;
        }

        if (v0[0]) {
            param0->unk_14++;
        }
        break;
    case 1: {
        param0->unk_D4 = FX32_CONST(504);
        param0->unk_D8 = FX32_CONST(439);
        param0->unk_D0 = 0;
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);
        ov6_0223FD0C(&param0->unk_E4, v1, param0->unk_D4, 6);
        ov6_0223FD0C(&param0->unk_F4, v3, param0->unk_D8, 6);
        param0->unk_14++;
    } break;
    case 2: {
        Easy3DObject_GetPosition(&param0->unk_24, &v1, &v2, &v3);

        v0[0] = ov6_0223FD18(&param0->unk_E4, param0->unk_D0);
        v0[1] = ov6_0223FD18(&param0->unk_F4, param0->unk_D0);
        param0->unk_D0++;

        Easy3DObject_SetPosition(&param0->unk_24, param0->unk_E4.unk_00, v2, param0->unk_F4.unk_00);

        if (v0[0] && v0[1]) {
            param0->unk_14++;
        }
    } break;
    default:
        return 1;
        break;
    }

    return 0;
}

static void ov6_0223FAF8(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223EA98 *v0 = param2;
    u32 v1[2];
    VecFx32 v2;
    int v3[] = { 68, 38, 390 };

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_D0 != 0) {
            v0->unk_D0--;
            break;
        }

        if (v0->unk_0C > 0) {
            v0->unk_0C -= 1;
            GX_SetMasterBrightness(v0->unk_0C);
            break;
        }

        v2 = Camera_GetTarget(fieldSystem->camera);
        {
            int v4[] = {
                504, 504, 435
            };

            Easy3DObject_SetPosition(&v0->unk_24, FX32_CONST(v4[v0->unk_10]), FX32_CONST(99), FX32_CONST(290 + 30));
        }

        v0->unk_20 = 0;
        v0->unk_00++;
        break;
    case 1:
        if (ov6_0223F9F4(v0)) {
            Sound_PlayEffect(1750);
            v0->unk_20 = 0;
            v0->unk_00++;
        } else {
            v0->unk_20++;

            if (v3[v0->unk_10] < v0->unk_20) {
                if (v0->unk_0C != 16) {
                    v0->unk_0C += 2;
                    GX_SetMasterBrightness(v0->unk_0C);
                } else {
                    v0->unk_20 = 0;
                }
            }
            break;
        }
    case 2:
        if (v0->unk_0C != 16) {
            v0->unk_0C += 2;
            GX_SetMasterBrightness(v0->unk_0C);
            break;
        }

        v0->unk_10++;
        v0->unk_14 = 0;
        v0->unk_D0 = 30;

        ov6_0223EB34(v0);

        if (v0->unk_10 != 3) {
            ov6_0223EA98(v0);
            v0->unk_00 = 0;
        } else {
            v0->unk_00++;
        }
        break;
    default:
        if (v0->unk_D0 != 0) {
            v0->unk_D0--;
            break;
        }

        if (v0->unk_0C > 0) {
            v0->unk_0C -= 1;
            GX_SetMasterBrightness(v0->unk_0C);
            break;
        }

        v0->unk_00 = 6;
        break;
    }

    if (v0->unk_10 != 3) {
        G3_Identity();
        Easy3DAnim_UpdateLooped(&v0->unk_AC, FX32_ONE);
        NNS_G3dGePushMtx();
        Easy3DObject_Draw(&v0->unk_24);
        NNS_G3dGePopMtx(1);
    }
}

static void ov6_0223FCC0(UnkStruct_ov5_021D1BEC *param0, FieldSystem *fieldSystem, void *param2)
{
    UnkStruct_ov6_0223EA98 *v0 = param2;
    ov6_022400C4(v0->unk_08);
}

UnkStruct_ov5_021D1BEC *ov6_0223FCCC(FieldSystem *fieldSystem)
{
    static const UnkStruct_ov6_0223E6EC v0 = {
        1024, sizeof(UnkStruct_ov6_0223EA98), ov6_0223EB4C, ov6_0223EBD0, ov6_0223FAF8, ov6_0223FCC0
    };
    UnkStruct_ov5_021D1BEC *v1 = ov5_021D1B6C(fieldSystem->unk_04->unk_04, &v0);
    return v1;
}

void ov6_0223FCE0(UnkStruct_ov5_021D1BEC *param0)
{
    ov5_021D1BEC(param0);
}

void ov6_0223FCE8(UnkStruct_ov5_021D1BEC *param0)
{
    UnkStruct_ov6_0223EA98 *v0 = ov5_021D1C2C(param0);
    v0->unk_00 = 3;
}

u32 ov6_0223FCF4(UnkStruct_ov5_021D1BEC *param0)
{
    UnkStruct_ov6_0223EA98 *v0 = ov5_021D1C2C(param0);

    return v0->unk_00;
}

static void ov6_0223FD00(UnkStruct_ov6_0223FD00 *param0, s32 param1, s32 param2, s32 param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0C = param3;
}

static void ov6_0223FD0C(UnkStruct_ov6_0223FD0C *param0, fx32 param1, fx32 param2, s32 param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0C = param3;
}

static BOOL ov6_0223FD18(UnkStruct_ov6_0223FD0C *param0, s32 param1)
{
    s32 v0;
    BOOL v1;
    fx32 v2;

    if (param1 >= param0->unk_0C) {
        v0 = param0->unk_0C;
        v1 = 1;
    } else {
        v0 = param1;
        v1 = 0;
    }

    v2 = FX_Mul(param0->unk_08, v0 << FX32_SHIFT);
    v2 = FX_Div(v2, param0->unk_0C << FX32_SHIFT);
    v2 += param0->unk_04;

    param0->unk_00 = v2;

    return v1;
}

static void ov6_0223FD58(Easy3DModel *param0, u32 param1, u32 param2, u32 param3)
{
    Easy3DModel_Load(param0, param1, param2, param3);
}

static void ov6_0223FD60(Easy3DModel *param0, NARC *param1, u32 param2, u32 param3)
{
    Easy3DModel_LoadFrom(param0, param1, param2, param3);
}

static void ov6_0223FD68(Easy3DModel *param0)
{
    Easy3DModel_Release(param0);
}

static void ov6_0223FD70(Easy3DAnim *param0, const Easy3DModel *param1, NARC *param2, u32 param3, u32 param4, NNSFndAllocator *param5)
{
    Easy3DAnim_LoadFrom(param0, param1, param2, param3, param4, param5);
}

static void ov6_0223FD84(Easy3DAnim *param0, NNSFndAllocator *param1)
{
    Easy3DAnim_Release(param0, param1);
}

static void ov6_0223FD8C(Easy3DAnim *param0)
{
    Easy3DAnim_UpdateLooped(param0, FX32_ONE);
}

static BOOL ov6_0223FD98(Easy3DAnim *param0)
{
    return Easy3DAnim_Update(param0, FX32_ONE);
}

static void ov6_0223FDA4(Easy3DAnim *param0, fx32 param1)
{
    Easy3DAnim_SetFrame(param0, param1);
}

static void ov6_0223FDAC(Easy3DObject *param0, Easy3DModel *param1)
{
    Easy3DObject_Init(param0, param1);
}

static void ov6_0223FDB4(Easy3DObject *param0, Easy3DAnim *param1)
{
    Easy3DObject_AddAnim(param0, param1);
}

static void ov6_0223FDBC(Easy3DObject *param0)
{
    Easy3DObject_Draw(param0);
}

static void ov6_0223FDC4(Easy3DObject *param0, BOOL param1)
{
    Easy3DObject_SetVisibility(param0, param1);
}

static void ov6_0223FDCC(Easy3DObject *param0, fx32 param1, fx32 param2, fx32 param3)
{
    Easy3DObject_SetPosition(param0, param1, param2, param3);
}

static void ov6_0223FDD4(Easy3DObject *param0, fx32 param1, fx32 param2, fx32 param3)
{
    Easy3DObject_SetScale(param0, param1, param2, param3);
}

static void ov6_0223FDDC(Easy3DObject *param0, u16 param1, u32 param2)
{
    Easy3DObject_SetRotation(param0, param1, param2);
}

UnkStruct_ov6_0223FDE4 *ov6_0223FDE4(u32 heapID)
{
    UnkStruct_ov6_0223FDE4 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov6_0223FDE4));
    memset(v0, 0, sizeof(UnkStruct_ov6_0223FDE4));
    v0->camera1 = Camera_Alloc(heapID);
    v0->unk_40 = 5;

    return v0;
}

void ov6_0223FE08(UnkStruct_ov6_0223FDE4 *param0)
{
    Camera_Delete(param0->camera1);
    Heap_FreeToHeap(param0);
}

void ov6_0223FE1C(UnkStruct_ov6_0223FDE4 *param0, fx32 param1, fx32 param2, u32 param3, u32 param4, Camera *camera)
{
    ov6_0223FF7C(param0);
    Camera_Copy(camera, param0->camera1);

    param0->unk_28 = Camera_GetTarget(camera);
    param0->unk_34 = param0->unk_28;

    Camera_TrackTarget(&param0->unk_28, param0->camera1);
    Camera_SetAsActive(param0->camera1);

    param0->camera2 = camera;

    ov6_0223FD0C(&param0->unk_08, 0, param1, param3);
    ov6_0223FD0C(&param0->unk_18, 0, param2, param3);

    param0->unk_48 = param4;

    Sound_PlayEffect(1749);
}

void ov6_0223FE9C(UnkStruct_ov6_0223FDE4 *param0)
{
    BOOL v0;

    switch (param0->unk_40) {
    case 0:
        param0->unk_44++;
        v0 = ov6_0223FFC8(param0);
        ov6_0223FFE4(param0, param0->unk_08.unk_00, param0->unk_18.unk_00);

        if (v0 == 1) {
            param0->unk_40++;
        }
        break;
    case 1:
        param0->unk_44--;
        ov6_0223FFC8(param0);
        ov6_0223FFE4(param0, param0->unk_08.unk_00, param0->unk_18.unk_00);

        if (param0->unk_44 <= 0) {
            param0->unk_40++;
        }
        break;
    case 2:
        param0->unk_44++;
        v0 = ov6_0223FFC8(param0);
        ov6_0223FFE4(param0, -param0->unk_08.unk_00, -param0->unk_18.unk_00);

        if (v0 == 1) {
            param0->unk_40++;
        }
        break;
    case 3:
        param0->unk_44--;
        ov6_0223FFC8(param0);
        ov6_0223FFE4(param0, -param0->unk_08.unk_00, -param0->unk_18.unk_00);

        if (param0->unk_44 <= 0) {
            param0->unk_48--;

            if (param0->unk_48 > 0) {
                param0->unk_40 = 0;
            } else {
                param0->unk_40++;
            }
        }
        break;
    case 4:
        Camera_SetAsActive(param0->camera2);
        param0->unk_40++;
        break;
    case 5:
        break;

    default:
        break;
    }
}

BOOL ov6_0223FF6C(UnkStruct_ov6_0223FDE4 *param0)
{
    if (param0->unk_40 == 5) {
        return 1;
    }

    return 0;
}

static void ov6_0223FF7C(UnkStruct_ov6_0223FDE4 *param0)
{
    memset(&param0->unk_08, 0, sizeof(UnkStruct_ov6_0223FD0C));
    memset(&param0->unk_18, 0, sizeof(UnkStruct_ov6_0223FD0C));
    memset(&param0->unk_28, 0, sizeof(VecFx32));

    param0->unk_40 = 0;
    param0->unk_44 = 0;
    param0->unk_48 = 0;
}

static BOOL ov6_0223FFC8(UnkStruct_ov6_0223FDE4 *param0)
{
    BOOL v0 = ov6_0223FD18(&param0->unk_08, param0->unk_44);
    ov6_0223FD18(&param0->unk_18, param0->unk_44);

    return v0;
}

static void ov6_0223FFE4(UnkStruct_ov6_0223FDE4 *param0, fx32 param1, fx32 param2)
{
    param0->unk_28.x = param0->unk_34.x + param1;
    param0->unk_28.y = param0->unk_34.y + param2;
}

u32 ov6_0223FFF4(const UnkStruct_ov6_0223FDE4 *param0)
{
    return param0->unk_48;
}

fx32 ov6_0223FFF8(const UnkStruct_ov6_0223FDE4 *param0)
{
    return param0->unk_08.unk_08;
}

void ov6_0223FFFC(UnkStruct_ov6_0223FDE4 *param0, fx32 param1)
{
    param0->unk_08.unk_08 = param1;
}

void ov6_02240000(UnkStruct_ov6_02240000 *param0, u32 param1, u32 param2, u32 param3)
{
    if (param0->unk_1C != 3) {
        if (param0->unk_20 != NULL) {
            SysTask_Done(param0->unk_20);
            param0->unk_20 = NULL;
        }
    }

    ov6_0223FD00(&param0->unk_00, 0, param1, param2);

    param0->unk_10 = 0;
    param0->unk_1C = 0;
    param0->unk_18 = param3;
    param0->unk_14 = param1;

    GX_SetMasterBrightness(param0->unk_00.unk_00);

    param0->unk_20 = SysTask_ExecuteAfterVBlank(ov6_02240064, param0, 1024);
    Sound_PlayEffect(1748);
}

int ov6_02240060(const UnkStruct_ov6_02240000 *param0)
{
    return param0->unk_00.unk_00;
}

static void ov6_02240064(SysTask *param0, void *param1)
{
    UnkStruct_ov6_02240000 *v0 = param1;
    GX_SetMasterBrightness(v0->unk_00.unk_00);
}

UnkStruct_ov6_022400A8 *ov6_02240074(FieldSystem *fieldSystem)
{
    UnkStruct_ov6_022400A8 *v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov6_022400A8));
    memset(v0, 0, sizeof(UnkStruct_ov6_022400A8));
    v0->fieldSystem = fieldSystem;
    v0->unk_12C = 5;

    Heap_FndInitAllocatorForExpHeap(&v0->unk_11C, 4, 32);

    return v0;
}

void ov6_022400A8(UnkStruct_ov6_022400A8 *param0)
{
    GF_ASSERT(param0->unk_12C == 5);
    Heap_FreeToHeap(param0);
}

void ov6_022400C4(UnkStruct_ov6_022400A8 *param0)
{
    if ((param0->unk_12C == 0) || (param0->unk_12C == 4) || (param0->unk_12C == 5)) {
        return;
    }

    G3_Identity();
    NNS_G3dGePushMtx();

    {
        ov6_0223FDBC(&param0->unk_40.unk_00);
    }

    NNS_G3dGePopMtx(1);
}

UnkStruct_ov6_022401B8 *ov6_02240104(u32 heapID, FieldSystem *fieldSystem)
{
    UnkStruct_ov6_022401B8 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov6_022401B8));
    memset(v0, 0, sizeof(UnkStruct_ov6_022401B8));
    v0->fieldSystem = fieldSystem;
    v0->unk_00 = 0;
    v0->unk_11C = heapID;

    Heap_FndInitAllocatorForExpHeap(&v0->unk_10C, heapID, 32);
    ov6_02240260(&v0->unk_34, v0->unk_11C, &v0->unk_10C);

    {
        BgConfig *v1 = FieldSystem_GetBgConfig(v0->fieldSystem);

        Graphics_LoadTilesToBgLayer(172, 74, v1, 2, 0, 0, 0, heapID);
        Graphics_LoadTilemapToBgLayer(172, 76, v1, 2, 0, 0, 0, heapID);
        Graphics_LoadPalette(172, 75, 0, 0x20 * 6, 0x20, heapID);
        Bg_SetPriority(2, 1);

        v0->unk_34.unk_00 = 0;
        v0->unk_34.unk_04 = 31;

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG0, v0->unk_34.unk_00, v0->unk_34.unk_04);
    }

    return v0;
}

void ov6_022401B8(UnkStruct_ov6_022401B8 *param0)
{
    ov6_02240340(&param0->unk_34, &param0->unk_10C);
    Heap_FreeToHeap(param0);
}

void ov6_022401D0(UnkStruct_ov6_022401B8 *param0, u32 param1)
{
    VecFx32 v0;

    ov6_02240240(&param0->unk_08, param0->fieldSystem, 1);
    MapObject_GetPosPtr(param0->unk_08.unk_00, &v0);
    ov6_022402E4(&param0->unk_34, v0.x, v0.y, v0.z);
    ov6_02240240(&param0->unk_08, param0->fieldSystem, param1);
    MapObject_GetPosPtr(param0->unk_08.unk_00, &v0);

    param0->unk_00 = 1;
}

BOOL ov6_02240214(UnkStruct_ov6_022401B8 *param0)
{
    if ((param0->unk_00 == 0) || (param0->unk_00 == 5)) {
        return 1;
    }

    return 0;
}

void ov6_02240228(UnkStruct_ov6_022401B8 *param0)
{
    if (ov6_02240214(param0) == 1) {
        return;
    }

    ov6_02240600(&param0->unk_34);
}

static void ov6_02240240(UnkStruct_ov6_02240240 *param0, FieldSystem *fieldSystem, u32 param2)
{
    param0->unk_00 = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, param2);
    GF_ASSERT(param0->unk_00);
    param0->unk_24 = 0;
    param0->unk_28 = 0;
}

static void ov6_02240260(UnkStruct_ov6_02240260 *param0, u32 param1, NNSFndAllocator *param2)
{
    int v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_ARC__DEMO_TENGAN_GRA, param1);

    ov6_0223FD60(&param0->unk_80, v1, 6, param1);

    for (v0 = 0; v0 < 2; v0++) {
        ov6_0223FD70(&param0->unk_90[v0], &param0->unk_80, v1, 4 + v0, param1, param2);
    }

    ov6_0223FDAC(&param0->unk_08, &param0->unk_80);

    for (v0 = 0; v0 < 2; v0++) {
        ov6_0223FDB4(&param0->unk_08, &param0->unk_90[v0]);
    }

    ov6_0223FDC4(&param0->unk_08, 0);
    NARC_dtor(v1);
}

static void ov6_022402E4(UnkStruct_ov6_02240260 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    int v0;

    ov6_0223FDCC(&param0->unk_08, param1, param2, param3);
    ov6_0223FDD4(&param0->unk_08, FX32_ONE, FX32_ONE, FX32_ONE);

    for (v0 = 0; v0 < 2; v0++) {
        ov6_0223FDA4(&param0->unk_90[v0], 0);
    }

    param0->unk_CC = 0;
    param0->unk_B8 = 0;
    param0->unk_D0 = 82;
    param0->unk_D4 = 0;

    ov6_0223FDC4(&param0->unk_08, 1);
}

static void ov6_02240340(UnkStruct_ov6_02240260 *param0, NNSFndAllocator *param1)
{
    int v0;

    ov6_0223FD68(&param0->unk_80);

    for (v0 = 0; v0 < 2; v0++) {
        ov6_0223FD84(&param0->unk_90[v0], param1);
    }
}

static BOOL ov6_02240364(UnkStruct_ov6_022401B8 *param0, int param1, int param2)
{
    BOOL v0 = 0;
    BOOL v1[2] = { 0, 0 };
    UnkStruct_ov6_02240260 *v2 = &param0->unk_34;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        v2->unk_00++;
        v2->unk_00 %= 32;
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (v2->unk_00) {
            v2->unk_00--;
        } else {
            v2->unk_00 = 31;
        }
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        v2->unk_04++;
        v2->unk_04 %= 32;
    }

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (v2->unk_04) {
            v2->unk_04--;
        } else {
            v2->unk_04 = 31;
        }
    }

    switch (param2) {
    case 0:
        if (v2->unk_04 > 16) {
            v2->unk_04--;
        } else {
            v1[0] = v1[1] = 1;
        }
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        if (param1) {
            if (v2->unk_00 < 8) {
                v2->unk_00++;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 > 8) {
                v2->unk_04--;
            } else {
                v1[1] = 1;
            }
        } else {
            if (v2->unk_00 > 2) {
                v2->unk_00--;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 < 14) {
                v2->unk_04++;
            } else {
                v1[1] = 1;
            }
        }
        break;
    case 5:
    case 6:
    case 7:
    case 8:
        if (param1) {
            if (v2->unk_00 < 8) {
                v2->unk_00++;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 > 8) {
                v2->unk_04--;
            } else {
                v1[1] = 1;
            }
        } else {
            if (v2->unk_00 > 3) {
                v2->unk_00--;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 < 13) {
                v2->unk_04++;
            } else {
                v1[1] = 1;
            }
        }
        break;
    case 9:
    case 10:
        if (param1) {
            if (v2->unk_00 < 8) {
                v2->unk_00++;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 > 8) {
                v2->unk_04--;
            } else {
                v1[1] = 1;
            }
        } else {
            if (v2->unk_00 > 4) {
                v2->unk_00--;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 < 12) {
                v2->unk_04++;
            } else {
                v1[1] = 1;
            }
        }
        break;
    case 11:
    case 12:
        if (param1) {
            if (v2->unk_00 < 8) {
                v2->unk_00++;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 > 8) {
                v2->unk_04--;
            } else {
                v1[1] = 1;
            }
        } else {
            if (v2->unk_00 > 5) {
                v2->unk_00--;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 < 11) {
                v2->unk_04++;
            } else {
                v1[1] = 1;
            }
        }
        break;
    case 13:
    case 14:
        if (param1) {
            if (v2->unk_00 < 8) {
                v2->unk_00++;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 > 8) {
                v2->unk_04--;
            } else {
                v1[1] = 1;
            }
        } else {
            if (v2->unk_00 > 6) {
                v2->unk_00--;
            } else {
                v1[0] = 1;
            }

            if (v2->unk_04 < 10) {
                v2->unk_04++;
            } else {
                v1[1] = 1;
            }
        }
        break;
    default:
        if (v2->unk_00 > 0) {
            v2->unk_00--;
        } else {
            v1[0] = 1;
        }

        if (v2->unk_04 > 0) {
            v2->unk_04--;
        } else {
            v1[1] = 1;
        }
        break;
    }

    G2_ChangeBlendAlpha(v2->unk_00, v2->unk_04);

    if (v1[0] && v1[1]) {
        v0 = 1;
    }

    return v0;
}

static BOOL ov6_022405D0(UnkStruct_ov6_022401B8 *param0)
{
    int v0;
    BOOL v1;
    UnkStruct_ov6_02240260 *v2 = &param0->unk_34;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = ov6_0223FD98(&v2->unk_90[v0]);
    }

    if (v1) {
        ov6_0223FDC4(&v2->unk_08, 0);
    }

    return v1;
}

static void ov6_02240600(UnkStruct_ov6_02240260 *param0)
{
    ov6_0223FDBC(&param0->unk_08);
}

static UnkStruct_ov6_02240774 *ov6_0224060C(u32 heapID, u32 param1)
{
    UnkStruct_ov6_02240774 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov6_02240774));
    memset(v0, 0, sizeof(UnkStruct_ov6_02240774));

    ov6_0223FD58(&v0->unk_00, 98, param1, heapID);

    for (int i = 0; i < 3; i++) {
        ov6_022407B8(&v0->unk_10[i], &v0->unk_00);
    }

    v0->unk_1C0 = 0;

    return v0;
}

static void ov6_02240654(UnkStruct_ov6_02240774 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov6_022407DC(&param0->unk_10[v0]);
    }

    ov6_0223FD68(&param0->unk_00);
    Heap_FreeToHeap(param0);
}

static void ov6_0224067C(UnkStruct_ov6_02240774 *param0, fx32 param1, fx32 param2, fx32 param3, s32 param4, u16 param5, u16 param6, u16 param7)
{
    GF_ASSERT(param0->unk_1C0 == 0);

    param0->unk_1C4 = 0;
    param0->unk_1CC = param1;
    param0->unk_1D0 = param2;
    param0->unk_1D4 = param3;
    param0->unk_1D8 = param5;
    param0->unk_1DA = param6;
    param0->unk_1DC = param7;
    param0->unk_1C8 = param4;
    param0->unk_1C0 = 1;
}

static void ov6_022406D8(UnkStruct_ov6_02240774 *param0)
{
    int v0;
    UnkStruct_ov6_022407B8 *v1;

    param0->unk_1C4--;

    if (param0->unk_1C4 < 0) {
        param0->unk_1C4 = param0->unk_1C8;

        v1 = ov6_022408A8(param0);
        GF_ASSERT(v1);

        ov6_022407E8(v1, 0, (FX32_CONST(16)), 96, param0->unk_1CC, param0->unk_1D0, param0->unk_1D4, param0->unk_1D8, param0->unk_1DA, param0->unk_1DC);
    }

    for (v0 = 0; v0 < 3; v0++) {
        ov6_0224085C(&param0->unk_10[v0]);
    }
}

static void ov6_02240750(UnkStruct_ov6_02240774 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov6_0224089C(&param0->unk_10[v0]);
    }
}

UnkStruct_ov6_02240774 *ov6_02240768(u32 heapID)
{
    return ov6_0224060C(heapID, 6);
}

void ov6_02240774(UnkStruct_ov6_02240774 *param0)
{
    ov6_02240654(param0);
}

void ov6_0224077C(UnkStruct_ov6_02240774 *param0, u16 param1, u16 param2, u16 param3)
{
    ov6_0224067C(param0, (((param1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1), (((param2) << 4) * FX32_ONE) + ((10 << 4) * FX32_ONE), (((param3) << 4) * FX32_ONE) + ((1 << 4) * FX32_ONE), 64, 0, 0, 0);
}

void ov6_022407A8(UnkStruct_ov6_02240774 *param0)
{
    ov6_022406D8(param0);
}

void ov6_022407B0(UnkStruct_ov6_02240774 *param0)
{
    ov6_02240750(param0);
}

static void ov6_022407B8(UnkStruct_ov6_022407B8 *param0, Easy3DModel *param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov6_022407B8));

    ov6_0223FDAC(&param0->unk_04, param1);
    ov6_0223FDC4(&param0->unk_04, 0);

    param0->unk_00 = 0;
}

static void ov6_022407DC(UnkStruct_ov6_022407B8 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov6_022407B8));
}

static void ov6_022407E8(UnkStruct_ov6_022407B8 *param0, fx32 param1, fx32 param2, int param3, fx32 param4, fx32 param5, fx32 param6, u16 param7, u16 param8, u16 param9)
{
    GF_ASSERT(param0->unk_00 == 0);

    ov6_0223FD0C(&param0->unk_7C, param1, param2, param3);
    ov6_0223FDC4(&param0->unk_04, 1);
    ov6_0223FDCC(&param0->unk_04, param4, param5, param6);
    ov6_0223FDD4(&param0->unk_04, param1, FX32_ONE, param1);
    ov6_0223FDDC(&param0->unk_04, param7, 0);
    ov6_0223FDDC(&param0->unk_04, param8, 1);
    ov6_0223FDDC(&param0->unk_04, param9, 2);

    param0->unk_00 = 1;
    param0->unk_8C = 0;
}

static void ov6_0224085C(UnkStruct_ov6_022407B8 *param0)
{
    BOOL v0;

    if (param0->unk_00 == 0) {
        return;
    }

    param0->unk_8C++;
    v0 = ov6_0223FD18(&param0->unk_7C, param0->unk_8C);

    ov6_0223FDD4(&param0->unk_04, param0->unk_7C.unk_00, FX32_ONE, param0->unk_7C.unk_00);

    if (v0 == 1) {
        param0->unk_00 = 0;
    }
}

static void ov6_0224089C(UnkStruct_ov6_022407B8 *param0)
{
    ov6_0223FDBC(&param0->unk_04);
}

static UnkStruct_ov6_022407B8 *ov6_022408A8(UnkStruct_ov6_02240774 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_10[v0].unk_00 == 0) {
            return &param0->unk_10[v0];
        }
    }

    return NULL;
}

static UnkStruct_ov6_02240A00 *ov6_022408C8(u32 heapID, u32 param1)
{
    UnkStruct_ov6_02240A00 *v0;
    int v1;
    NARC *v2;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov6_02240A00));
    memset(v0, 0, sizeof(UnkStruct_ov6_02240A00));

    Heap_FndInitAllocatorForExpHeap(&v0->unk_C4, heapID, 32);
    v2 = NARC_ctor(NARC_INDEX_DATA__DEMO_CLIMAX, heapID);
    ov6_0223FD60(&v0->unk_78, v2, param1, heapID);

    for (v1 = 0; v1 < 3; v1++) {
        ov6_0223FD70(&v0->unk_88[v1], &v0->unk_78, v2, 1 + v1, heapID, &v0->unk_C4);
    }

    ov6_0223FDAC(&v0->unk_00, &v0->unk_78);

    for (v1 = 0; v1 < 3; v1++) {
        ov6_0223FDB4(&v0->unk_00, &v0->unk_88[v1]);
    }

    ov6_0223FDC4(&v0->unk_00, 0);
    NARC_dtor(v2);

    return v0;
}

static void ov6_02240968(UnkStruct_ov6_02240A00 *param0)
{
    int v0;

    ov6_0223FD68(&param0->unk_78);

    for (v0 = 0; v0 < 3; v0++) {
        ov6_0223FD84(&param0->unk_88[v0], &param0->unk_C4);
    }

    Heap_FreeToHeap(param0);
}

static void ov6_02240994(UnkStruct_ov6_02240A00 *param0, fx32 param1, fx32 param2, fx32 param3, u16 param4, u16 param5, u16 param6)
{
    ov6_0223FDCC(&param0->unk_00, param1, param2, param3);
    ov6_0223FDDC(&param0->unk_00, param4, 0);
    ov6_0223FDDC(&param0->unk_00, param6, 2);
    ov6_0223FDDC(&param0->unk_00, param5, 1);
    ov6_0223FDC4(&param0->unk_00, 1);
}

static void ov6_022409D4(UnkStruct_ov6_02240A00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov6_0223FD8C(&param0->unk_88[v0]);
    }
}

static void ov6_022409EC(UnkStruct_ov6_02240A00 *param0)
{
    ov6_0223FDBC(&param0->unk_00);
}

UnkStruct_ov6_02240A00 *ov6_022409F4(u32 heapID)
{
    return ov6_022408C8(heapID, 0);
}

void ov6_02240A00(UnkStruct_ov6_02240A00 *param0)
{
    ov6_02240968(param0);
}

void ov6_02240A08(UnkStruct_ov6_02240A00 *param0)
{
    VecFx32 v0;
    ov6_022409D4(param0);
}

void ov6_02240A10(UnkStruct_ov6_02240A00 *param0)
{
    ov6_022409EC(param0);
}

void ov6_02240A18(UnkStruct_ov6_02240A00 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    ov6_02240994(param0, param1 + 170920, param2 + -225940, param3 + -747638, 62623, 32949, 32942);
}

void ov6_02240A50(UnkStruct_ov6_02240A00 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    ov6_02240994(param0, param1 + 1141327, param2 + 323947, param3 + -598296, 58801, 49507, 32760);
}

void ov6_02240A8C(UnkStruct_ov6_02240A00 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    ov6_02240994(param0, param1 + -811008, param2 + 356351, param3 + -2162696, 59165, 21301, 31122);
}

UnkStruct_ov6_02240774 *ov6_02240AC8(u32 heapID)
{
    return ov6_0224060C(heapID, 6);
}

void ov6_02240AD4(UnkStruct_ov6_02240774 *param0)
{
    ov6_02240654(param0);
}

void ov6_02240ADC(UnkStruct_ov6_02240774 *param0)
{
    ov6_022406D8(param0);
}

void ov6_02240AE4(UnkStruct_ov6_02240774 *param0)
{
    ov6_02240750(param0);
}

void ov6_02240AEC(UnkStruct_ov6_02240774 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    ov6_0224067C(param0, param1 + 0x11000, param2 + 0xfff91000, param3 + 0xfff35000, 64, 62623, 32949, 32942);
}

void ov6_02240B24(UnkStruct_ov6_02240774 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    ov6_0224067C(param0, param1 + 0x252000, param2 + 0x43000, param3 + 0xfffc8000, 64, 58801, 49507, 32760);
}

void ov6_02240B60(UnkStruct_ov6_02240774 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    ov6_0224067C(param0, param1 + 0xffeb4000, param2 + 0xffff3000, param3 + 0xffe3c000, 64, 59165, 21301, 31122);
}

static const AreaLightTemplate Unk_ov6_02248F30[3] = {
    {
        8,
        0xD,
        {
            GX_RGB(13, 11, 11),
            GX_RGB(0, 0, 0),
            GX_RGB(10, 3, 0),
            GX_RGB(31, 31, 31),
        },
        {
            { -2022, -3561, 93 },
            { 0, 0, 4096 },
            { 0, 0, 4096 },
            { 0, 0, 4096 },
        },
        GX_RGB(13, 13, 14),
        GX_RGB(13, 12, 12),
        GX_RGB(13, 11, 14),
        GX_RGB(11, 9, 10),
    },
    {
        16,
        0xD,
        {
            GX_RGB(11, 9, 9),
            GX_RGB(0, 0, 0),
            GX_RGB(10, 3, 0),
            GX_RGB(31, 31, 31),
        },
        {
            { -2022, -3561, 93 },
            { 0, 0, 4096 },
            { 0, 0, 4096 },
            { 0, 0, 4096 },
        },
        GX_RGB(11, 11, 12),
        GX_RGB(13, 12, 12),
        GX_RGB(13, 11, 14),
        GX_RGB(11, 9, 10),
    },
    {
        24,
        0xD,
        {
            GX_RGB(9, 8, 8),
            GX_RGB(0, 0, 0),
            GX_RGB(10, 3, 0),
            GX_RGB(31, 31, 31),
        },
        {
            { -2022, -3561, 93 },
            { 0, 0, 4096 },
            { 0, 0, 4096 },
            { 0, 0, 4096 },
        },
        GX_RGB(10, 9, 9),
        GX_RGB(11, 10, 10),
        GX_RGB(13, 11, 14),
        GX_RGB(11, 9, 10),
    },
};

void include_unk_ov6_02248F30(void)
{
    Unk_ov6_02248F30[0];
}

UnkStruct_ov6_02240C44 *ov6_02240B9C(u32 heapID, FieldSystem *fieldSystem)
{
    UnkStruct_ov6_02240C44 *v0;
    int v1;
    NARC *v2;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov6_02240C44));
    memset(v0, 0, sizeof(UnkStruct_ov6_02240C44));

    v2 = NARC_ctor(NARC_INDEX_DATA__DEMO_CLIMAX, heapID);
    v0->fieldSystem = fieldSystem;

    Heap_FndInitAllocatorForExpHeap(&v0->unk_DC, heapID, 32);
    ov6_0223FD60(&v0->unk_78, v2, 15, heapID);

    for (v1 = 0; v1 < 4; v1++) {
        ov6_0223FD70(&v0->unk_88[v1], &v0->unk_78, v2, 16 + v1, heapID, &v0->unk_DC);
    }

    ov6_0223FDAC(&v0->unk_00, &v0->unk_78);

    for (v1 = 0; v1 < 4; v1++) {
        ov6_0223FDB4(&v0->unk_00, &v0->unk_88[v1]);
    }

    ov6_0223FDC4(&v0->unk_00, 0);
    NARC_dtor(v2);

    return v0;
}

void ov6_02240C44(UnkStruct_ov6_02240C44 *param0, u32 param1)
{
    VecFx32 v0;
    MapObject *v1 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, param1);

    MapObject_GetPosPtr(v1, &v0);

    ov6_0223FDCC(&param0->unk_00, v0.x, v0.y, v0.z);
    ov6_0223FDC4(&param0->unk_00, 1);

    Sound_PlayEffect(1752);
}

BOOL ov6_02240C7C(UnkStruct_ov6_02240C44 *param0)
{
    int v0;
    BOOL v1;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = ov6_0223FD98(&param0->unk_88[v0]);
    }

    return v1;
}

void ov6_02240C94(UnkStruct_ov6_02240C44 *param0)
{
    ov6_0223FDBC(&param0->unk_00);
}
