#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "struct_defs/struct_0207C690.h"

#include "unk_02017728.h"
#include "unk_0201C970.h"
#include "gx_layers.h"
#include "unk_02024220.h"

void sub_0201C9CC(NNSG3dResMdl ** param0, NNSG3dResFileHeader ** param1);
static void sub_0201CB1C(void);

void sub_0201C970 (const u8 param0, const char * param1, NNSG3dResMdl ** param2, NNSG3dResFileHeader ** param3)
{
    NNSG3dResTex * v0 = NULL;
    BOOL v1;

    *param3 = sub_02017A40(param0, param1);
    NNS_G3D_NULL_ASSERT(*param3);

    v0 = NNS_G3dGetTex(*param3);

    if (v0 != NULL) {
        if (sub_0201CA5C(v0) == 0) {
            DC_FlushRange(*param3, (*param3)->fileSize);

            v1 = NNS_G3dResDefaultSetup(*param3);
        }
    }

    *param2 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*param3), 0);
}

void sub_0201C9CC (NNSG3dResMdl ** param0, NNSG3dResFileHeader ** param1)
{
    NNSG3dResTex * v0 = NULL;
    BOOL v1;

    v0 = NNS_G3dGetTex(*param1);

    if (v0 != NULL) {
        if (sub_0201CA5C(v0) == 0) {
            DC_FlushRange(*param1, (*param1)->fileSize);

            v1 = NNS_G3dResDefaultSetup(*param1);
        }
    }

    *param0 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*param1), 0);
}

void sub_0201CA24 (const u8 param0, const char * param1, NNSG3dRenderObj * param2, NNSG3dResMdl ** param3, NNSG3dResFileHeader ** param4)
{
    sub_0201C970(param0, param1, param3, param4);
    NNS_G3dRenderObjInit(param2, *param3);
}

void sub_0201CA3C (NNSG3dRenderObj * param0, NNSG3dResMdl ** param1, NNSG3dResFileHeader ** param2)
{
    sub_0201C9CC(param1, param2);
    GF_ASSERT(param1);
    NNS_G3dRenderObjInit(param0, *param1);
}

BOOL sub_0201CA5C (NNSG3dResTex * param0)
{
    if ((param0->texInfo.flag & NNS_G3D_RESTEX_LOADED) || (param0->tex4x4Info.flag & NNS_G3D_RESTEX4x4_LOADED)) {
        return 1;
    }

    return 0;
}

void sub_0201CA74 (NNSG3dRenderObj * param0, const VecFx32 * param1, const MtxFx33 * param2, const VecFx32 * param3)
{
    NNS_G3dGlbSetBaseTrans(param1);
    NNS_G3dGlbSetBaseRot(param2);
    NNS_G3dGlbSetBaseScale(param3);
    NNS_G3dGlbFlush();
    NNS_G3dDraw(param0);
}

void sub_0201CAB0 (NNSG3dRenderObj * param0, const VecFx32 * param1, const MtxFx33 * param2, const VecFx32 * param3)
{
    NNS_G3dGlbSetBaseTrans(param1);
    NNS_G3dGlbSetBaseRot(param2);
    NNS_G3dGlbSetBaseScale(param3);
    NNS_G3dGlbFlush();
    NNS_G3dDraw1Mat1Shp(param0->resMdl, 0, 0, 1);
    NNS_G3dGeFlushBuffer();
}

static GenericPointerData * Unk_021BFB0C = NULL;

void sub_0201CAF4 (const u8 param0)
{
    Unk_021BFB0C = sub_02024220(param0, 0, 2, 0, 4, sub_0201CB1C);
}

static void sub_0201CB1C (void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void sub_0201CBA0 (void)
{
    sub_020242C4(Unk_021BFB0C);
}

BOOL sub_0201CBB0 (void * param0, NNSG3dResTex * param1)
{
    NNSG3dResMdlSet * v0 = NNS_G3dGetMdlSet((NNSG3dResFileHeader *)param0);

    NNS_G3D_NULL_ASSERT(v0);

    if (param1) {
        BOOL v1;

        v1 = NNS_G3dBindMdlSet(v0, param1);
        return 1;
    }

    return 0;
}

BOOL sub_0201CBCC (NNSG3dResTex * param0)
{
    if (param0 == NULL) {
        return 0;
    }

    param0->texInfo.vramKey = 0;
    {
        u32 v0, v1, v2;
        BOOL v3 = 1;
        BOOL v4 = 1;
        BOOL v5 = 1;
        NNSG3dTexKey v6;
        NNSG3dTexKey v7;
        NNSG3dPlttKey v8;

        if (param0) {
            v0 = NNS_G3dTexGetRequiredSize(param0);
            v1 = NNS_G3dTex4x4GetRequiredSize(param0);
            v2 = NNS_G3dPlttGetRequiredSize(param0);

            if (v0 > 0) {
                v6 = NNS_GfdAllocTexVram(v0, 0, 0);

                if (v6 == NNS_GFD_ALLOC_ERROR_TEXKEY) {
                    v3 = 0;
                }
            } else {
                v6 = 0;
            }

            if (v1 > 0) {
                v7 = NNS_GfdAllocTexVram(v1, 1, 0);

                if (v7 == NNS_GFD_ALLOC_ERROR_TEXKEY) {
                    v4 = 0;
                }
            } else {
                v7 = 0;
            }

            if (v2 > 0) {
                v8 = NNS_GfdAllocPlttVram(v2, param0->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);

                if (v8 == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
                    v5 = 0;
                }
            } else {
                v8 = 0;
            }

            if (!v3) {
                int v9;

                v9 = NNS_GfdFreeTexVram(v6);
                GF_ASSERT(!v9);

                return 0;
            }

            if (!v4) {
                int v10;

                v10 = NNS_GfdFreeTexVram(v7);
                GF_ASSERT(!v10);

                return 0;
            }

            if (!v5) {
                int v11;

                v11 = NNS_GfdFreePlttVram(v8);
                GF_ASSERT(!v11);

                return 0;
            }

            NNS_G3dTexSetTexKey(param0, v6, v7);
            NNS_G3dPlttSetPlttKey(param0, v8);

            DC_FlushRange(param0, param0->header.size);

            NNS_G3dTexLoad(param0, 1);
            NNS_G3dPlttLoad(param0, 1);
        }
    }
    return 1;
}
