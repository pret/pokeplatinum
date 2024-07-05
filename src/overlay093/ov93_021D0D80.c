#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_0206C8D4.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay009/struct_ov9_02249FF4.h"

#include "unk_02005474.h"
#include "overlay_manager.h"
#include "narc.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "easy3d.h"
#include "gx_layers.h"
#include "camera.h"
#include "unk_0202419C.h"
#include "unk_0208C098.h"
#include "overlay093/ov93_021D0D80.h"

typedef struct {
    Camera * camera;
    NNSG3dRenderObj unk_04;
    NNSG3dResMdl * unk_58;
    NNSG3dResFileHeader * unk_5C;
    void * unk_60[4];
    NNSFndAllocator unk_70;
    NNSG3dAnmObj * unk_80[4];
    VecFx32 unk_90;
    u8 unk_9C;
    u8 unk_9D;
} UnkStruct_ov93_021D102C;

typedef struct {
    u16 unk_00;
    u16 unk_02[4];
} UnkStruct_ov93_021D15A0;

static void ov93_021D0FA8(void);
static void ov93_021D100C(void);
static void ov93_021D102C(UnkStruct_ov93_021D102C * param0);

static const UnkStruct_ov9_02249FF4 Unk_ov93_021D14B8 = {
    0x29AEC1,
    {-0x29fe, 0x0, 0x0},
    0x0,
    0x5C1,
    0x0
};

static const GXRgb Unk_ov93_021D14A8[8] = {
    GX_RGB(0, 0, 0),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4)
};

static UnkStruct_ov93_021D15A0 Unk_ov93_021D15A0[4] = {
    {
        0x2,
        {0x0, 0x1, 0x3, 0x4},
    },
    {
        0x7,
        {0x5, 0x6, 0x8, 0x9},
    },
    {
        0xC,
        {0xA, 0xB, 0xD, 0xE},
    },
    {
        0x11,
        {0xF, 0x10, 0x12, 0x13},
    },
};

int ov93_021D0D80 (OverlayManager * param0, int * param1)
{
    u8 v0;
    UnkStruct_ov93_021D102C * v1;
    UnkStruct_0206C8D4 * v2;

    Heap_Create(3, 72, 0x20000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov93_021D102C), 72);
    memset(v1, 0, sizeof(UnkStruct_ov93_021D102C));
    v2 = OverlayManager_Args(param0);

    v1->unk_9C = v2->unk_00;
    v1->unk_9D = 0;
    v1->camera = Camera_Alloc(72);

    ov93_021D0FA8();
    ov93_021D102C(v1);

    {
        VecFx32 v3 = {0, 0, 0};

        Camera_InitWithTarget(&v3, Unk_ov93_021D14B8.unk_00, &Unk_ov93_021D14B8.cameraAngle, Unk_ov93_021D14B8.unk_0E, Unk_ov93_021D14B8.unk_0C, 0, v1->camera);
        Camera_SetAsActive(v1->camera);
    }

    for (v0 = 0; v0 < 4; v0++) {
        NNS_G3dGlbLightVector(v0, v2->unk_04->unk_00[v0].x, v2->unk_04->unk_00[v0].y, v2->unk_04->unk_00[v0].z);
        NNS_G3dGlbLightColor(v0, v2->unk_04->unk_18[v0]);
    }

    NNS_G3dGlbMaterialColorDiffAmb(v2->unk_04->unk_20, v2->unk_04->unk_22, v2->unk_04->unk_28);
    NNS_G3dGlbMaterialColorSpecEmi(v2->unk_04->unk_24, v2->unk_04->unk_26, v2->unk_04->unk_2C);
    NNS_G3dGlbPolygonAttr(v2->unk_04->unk_30, v2->unk_04->unk_34, v2->unk_04->unk_38, v2->unk_04->unk_3C, v2->unk_04->unk_40, v2->unk_04->unk_44);

    sub_0208C120(0, 72);
    return 1;
}

int ov93_021D0E70 (OverlayManager * param0, int * param1)
{
    u8 v0;
    BOOL v1;
    MtxFx33 v2 = {
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE
    };
    VecFx32 v3 = {
        FX32_ONE,
        FX32_ONE,
        FX32_ONE
    };
    VecFx32 v4 = {
        0,
        0,
        0
    };
    UnkStruct_ov93_021D102C * v5 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        Sound_PlayEffect(1756);
        (*param1)++;
        break;
    case 1:
        if (!v5->unk_9D) {
            if (v5->unk_80[0]->frame + FX32_ONE == NNS_G3dAnmObjGetNumFrame(v5->unk_80[0])) {
                v5->unk_9D = 1;

                sub_0208C120(1, 72);
            }
        } else {
            if (ScreenWipe_Done()) {
                return 1;
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v5->unk_80[v0]->frame + FX32_ONE < NNS_G3dAnmObjGetNumFrame(v5->unk_80[v0])) {
            v5->unk_80[v0]->frame += (FX32_ONE);
        }
    }

    sub_020241B4();
    Camera_ComputeViewMatrix();
    Easy3D_DrawRenderObj(&v5->unk_04, &v4, &v2, &v3);
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);

    return 0;
}

int ov93_021D0F58 (OverlayManager * param0, int * param1)
{
    u8 v0;
    UnkStruct_ov93_021D102C * v1 = OverlayManager_Data(param0);

    for (v0 = 0; v0 < 4; v0++) {
        NNS_G3dFreeAnmObj(&v1->unk_70, v1->unk_80[v0]);
        Heap_FreeToHeap(v1->unk_60[v0]);
    }

    Heap_FreeToHeap(v1->unk_5C);
    Camera_Delete(v1->camera);
    OverlayManager_FreeData(param0);
    Easy3D_Shutdown();
    Heap_Destroy(72);

    return 1;
}

static void ov93_021D0FA8 (void)
{
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    ov93_021D100C();
    Easy3D_Init(72);

    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(Unk_ov93_021D14A8);

    GXLayers_SwapDisplay();
}

static void ov93_021D100C (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

static void ov93_021D102C (UnkStruct_ov93_021D102C * param0)
{
    u8 v0;
    NNSG3dResTex * v1;
    void * v2;
    NARC * v3;

    v3 = NARC_ctor(NARC_INDEX_ARC__SHIP_DEMO, 72);
    Heap_FndInitAllocatorForExpHeap(&param0->unk_70, 72, 4);

    param0->unk_5C = NARC_AllocAndReadWholeMember(v3, Unk_ov93_021D15A0[param0->unk_9C].unk_00, 72);
    Easy3D_InitRenderObjFromResource(&param0->unk_04, &param0->unk_58, &param0->unk_5C);
    v1 = NNS_G3dGetTex(param0->unk_5C);

    NNS_G3dMdlUseGlbDiff(param0->unk_58);
    NNS_G3dMdlUseGlbAmb(param0->unk_58);
    NNS_G3dMdlUseGlbSpec(param0->unk_58);
    NNS_G3dMdlUseGlbEmi(param0->unk_58);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_60[v0] = NARC_AllocAndReadWholeMember(v3, Unk_ov93_021D15A0[param0->unk_9C].unk_02[v0], 72);
        v2 = NNS_G3dGetAnmByIdx(param0->unk_60[v0], 0);

        param0->unk_80[v0] = NNS_G3dAllocAnmObj(&param0->unk_70, v2, param0->unk_58);

        NNS_G3dAnmObjInit(param0->unk_80[v0], v2, param0->unk_58, v1);
        NNS_G3dRenderObjAddAnmObj(&param0->unk_04, param0->unk_80[v0]);
    }

    NARC_dtor(v3);
}
