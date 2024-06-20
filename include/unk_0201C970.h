#ifndef POKEPLATINUM_UNK_0201C970_H
#define POKEPLATINUM_UNK_0201C970_H


#include <nitro/fx/fx.h>
#include <nnsys.h>

void Easy3D_LoadModelFromPath(const u8, const char *, NNSG3dResMdl **, NNSG3dResFileHeader **);
void Easy3D_InitRenderObjFromPath(const u8, const char *, NNSG3dRenderObj *, NNSG3dResMdl **, NNSG3dResFileHeader **);
void Easy3D_InitRenderObjFromResource(NNSG3dRenderObj *, NNSG3dResMdl **, NNSG3dResFileHeader **);
BOOL Texture_IsUploadedToVRam(NNSG3dResTex *texture);
void Easy3D_DrawRenderObj(NNSG3dRenderObj *, const VecFx32 *, const MtxFx33 *, const VecFx32 *);
void Easy3D_DrawRenderObjSimple(NNSG3dRenderObj *, const VecFx32 *, const MtxFx33 *, const VecFx32 *);
void Easy3D_Init(const u8 param0);
void Easy3D_Shutdown(void);
BOOL Easy3D_BindTextureToResource(void * param0, NNSG3dResTex * param1);
BOOL Easy3D_UploadTextureToVRam(NNSG3dResTex * param0);

#endif // POKEPLATINUM_UNK_0201C970_H
