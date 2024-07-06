#include "easy3d.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "struct_defs/struct_0207C690.h"

#include "gx_layers.h"
#include "unk_02017728.h"
#include "unk_02024220.h"

#define G3X_DEPTH_MAX 0x7FFF

static void Easy3D_SetupEngine(void);

void Easy3D_LoadModelFromPath(const u8 heapID, const char *path, NNSG3dResMdl **outModel, NNSG3dResFileHeader **outResource)
{
    *outResource = ReadFileToHeap(heapID, path);
    NNS_G3D_NULL_ASSERT(*outResource);

    NNSG3dResTex *texture = NNS_G3dGetTex(*outResource);
    if (texture != NULL && Easy3D_IsTextureUploadedToVRAM(texture) == FALSE) {
        DC_FlushRange(*outResource, (*outResource)->fileSize);
        NNS_G3dResDefaultSetup(*outResource);
    }

    *outModel = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*outResource), 0);
}

void Easy3D_LoadModelFromResource(NNSG3dResMdl **outModel, NNSG3dResFileHeader **resource)
{
    NNSG3dResTex *texture = NNS_G3dGetTex(*resource);

    if (texture != NULL && Easy3D_IsTextureUploadedToVRAM(texture) == FALSE) {
        DC_FlushRange(*resource, (*resource)->fileSize);
        NNS_G3dResDefaultSetup(*resource);
    }

    *outModel = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*resource), 0);
}

void Easy3D_InitRenderObjFromPath(const u8 heapID, const char *path, NNSG3dRenderObj *obj, NNSG3dResMdl **outModel, NNSG3dResFileHeader **outResource)
{
    Easy3D_LoadModelFromPath(heapID, path, outModel, outResource);
    NNS_G3dRenderObjInit(obj, *outModel);
}

void Easy3D_InitRenderObjFromResource(NNSG3dRenderObj *renderObj, NNSG3dResMdl **model, NNSG3dResFileHeader **resource)
{
    Easy3D_LoadModelFromResource(model, resource);
    GF_ASSERT(model);
    NNS_G3dRenderObjInit(renderObj, *model);
}

BOOL Easy3D_IsTextureUploadedToVRAM(NNSG3dResTex *texture)
{
    return (texture->texInfo.flag & NNS_G3D_RESTEX_LOADED)
        || (texture->tex4x4Info.flag & NNS_G3D_RESTEX4x4_LOADED);
}

void Easy3D_DrawRenderObj(NNSG3dRenderObj *renderObj, const VecFx32 *pos, const MtxFx33 *rot, const VecFx32 *scale)
{
    NNS_G3dGlbSetBaseTrans(pos);
    NNS_G3dGlbSetBaseRot(rot);
    NNS_G3dGlbSetBaseScale(scale);
    NNS_G3dGlbFlush();
    NNS_G3dDraw(renderObj);
}

void Easy3D_DrawRenderObjSimple(NNSG3dRenderObj *renderObj, const VecFx32 *pos, const MtxFx33 *rot, const VecFx32 *scale)
{
    NNS_G3dGlbSetBaseTrans(pos);
    NNS_G3dGlbSetBaseRot(rot);
    NNS_G3dGlbSetBaseScale(scale);
    NNS_G3dGlbFlush();
    NNS_G3dDraw1Mat1Shp(renderObj->resMdl, 0, 0, TRUE);
    NNS_G3dGeFlushBuffer();
}

static GenericPointerData *Unk_021BFB0C = NULL;

void Easy3D_Init(const u8 heapID)
{
    Unk_021BFB0C = sub_02024220(heapID, 0, 2, 0, 4, Easy3D_SetupEngine);
}

static void Easy3D_SetupEngine(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, G3X_DEPTH_MAX, 63, FALSE);
    G3_ViewPort(0, 0, 255, 191);
}

void Easy3D_Shutdown(void)
{
    sub_020242C4(Unk_021BFB0C);
}

BOOL Easy3D_BindTextureToResource(void *resource, NNSG3dResTex *texture)
{
    NNSG3dResMdlSet *modelSet = NNS_G3dGetMdlSet((NNSG3dResFileHeader *)resource);
    NNS_G3D_NULL_ASSERT(modelSet);

    if (texture) {
        BOOL v1 = NNS_G3dBindMdlSet(modelSet, texture);
        return TRUE;
    }

    return FALSE;
}

BOOL Easy3D_UploadTextureToVRAM(NNSG3dResTex *texture)
{
    if (texture == NULL) {
        return FALSE;
    }

    texture->texInfo.vramKey = 0;

    u32 texRequiredSize, tex4x4RequiredSize, paletteRequiredSize;
    BOOL texOk = TRUE;
    BOOL tex4x4Ok = TRUE;
    BOOL paletteOk = TRUE;
    NNSG3dTexKey texKey;
    NNSG3dTexKey tex4x4Key;
    NNSG3dPlttKey paletteKey;

    if (texture) {
        texRequiredSize = NNS_G3dTexGetRequiredSize(texture);
        tex4x4RequiredSize = NNS_G3dTex4x4GetRequiredSize(texture);
        paletteRequiredSize = NNS_G3dPlttGetRequiredSize(texture);

        if (texRequiredSize > 0) {
            texKey = NNS_GfdAllocTexVram(texRequiredSize, FALSE, 0);

            if (texKey == NNS_GFD_ALLOC_ERROR_TEXKEY) {
                texOk = FALSE;
            }
        } else {
            texKey = 0;
        }

        if (tex4x4RequiredSize > 0) {
            tex4x4Key = NNS_GfdAllocTexVram(tex4x4RequiredSize, TRUE, 0);

            if (tex4x4Key == NNS_GFD_ALLOC_ERROR_TEXKEY) {
                tex4x4Ok = FALSE;
            }
        } else {
            tex4x4Key = 0;
        }

        if (paletteRequiredSize > 0) {
            paletteKey = NNS_GfdAllocPlttVram(paletteRequiredSize, texture->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);

            if (paletteKey == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
                paletteOk = FALSE;
            }
        } else {
            paletteKey = 0;
        }

        if (!texOk) {
            int result = NNS_GfdFreeTexVram(texKey);
            GF_ASSERT(!result);

            return FALSE;
        }

        if (!tex4x4Ok) {
            int result = NNS_GfdFreeTexVram(tex4x4Key);
            GF_ASSERT(!result);

            return FALSE;
        }

        if (!paletteOk) {
            int result = NNS_GfdFreePlttVram(paletteKey);
            GF_ASSERT(!result);

            return FALSE;
        }

        NNS_G3dTexSetTexKey(texture, texKey, tex4x4Key);
        NNS_G3dPlttSetPlttKey(texture, paletteKey);

        DC_FlushRange(texture, texture->header.size);

        NNS_G3dTexLoad(texture, TRUE);
        NNS_G3dPlttLoad(texture, TRUE);
    }

    return TRUE;
}
