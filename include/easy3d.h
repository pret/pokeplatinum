#ifndef POKEPLATINUM_EASY3D_H
#define POKEPLATINUM_EASY3D_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

void Easy3D_LoadModelFromPath(const u8 heapID, const char *path, NNSG3dResMdl **outModel, NNSG3dResFileHeader **outResource);
void Easy3D_InitRenderObjFromPath(const u8 heapID, const char *path, NNSG3dRenderObj *obj, NNSG3dResMdl **outModel, NNSG3dResFileHeader **outResource);
void Easy3D_InitRenderObjFromResource(NNSG3dRenderObj *renderObj, NNSG3dResMdl **model, NNSG3dResFileHeader **resource);
BOOL Easy3D_IsTextureUploadedToVRam(NNSG3dResTex *texture);
void Easy3D_DrawRenderObj(NNSG3dRenderObj *renderObj, const VecFx32 *pos, const MtxFx33 *rot, const VecFx32 *scale);
void Easy3D_DrawRenderObjSimple(NNSG3dRenderObj *renderObj, const VecFx32 *pos, const MtxFx33 *rot, const VecFx32 *scale);
void Easy3D_Init(const u8 heapID);
void Easy3D_Shutdown(void);
BOOL Easy3D_BindTextureToResource(void *resource, NNSG3dResTex *texture);
BOOL Easy3D_UploadTextureToVRam(NNSG3dResTex *texture);

#endif // POKEPLATINUM_EASY3D_H
