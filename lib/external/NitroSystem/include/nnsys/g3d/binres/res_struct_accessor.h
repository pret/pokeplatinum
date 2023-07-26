#ifndef NNSG3D_BINRES_RES_STRUCT_ACCESSOR_H_
#define NNSG3D_BINRES_RES_STRUCT_ACCESSOR_H_

#include <nnsys/g3d/binres/res_struct.h>

#include <nnsys/g3d/binres/res_struct_accessor_anm.h>

#ifdef __cplusplus
extern "C" {
#endif

NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetResNameByIdx(const NNSG3dResDict * dict, u32 idx);
NNS_G3D_RES_INLINE void * NNS_G3dGetResDataByIdx(const NNSG3dResDict * dict, u32 idx);

void * NNS_G3dGetResDataByName(const NNSG3dResDict * dict, const NNSG3dResName * name);
int NNS_G3dGetResDictIdxByName(const NNSG3dResDict * dict, const NNSG3dResName * name);

NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetTexNameByIdx(const NNSG3dResTex * tex, u32 idx);
NNS_G3D_RES_INLINE int NNS_G3dGetTexIdxByName(const NNSG3dResTex * tex,
                                              const NNSG3dResName * name);
NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetPlttNameByIdx(const NNSG3dResTex * tex, u32 idx);
NNS_G3D_RES_INLINE int NNS_G3dGetPlttIdxByName(const NNSG3dResTex * tex,
                                               const NNSG3dResName * name);

NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetNodeNameByIdx(const NNSG3dResNodeInfo * nodeinfo, u32 idx);
NNS_G3D_RES_INLINE int NNS_G3dGetNodeIdxByName(const NNSG3dResNodeInfo * nodeinfo,
                                               const NNSG3dResName * name);

NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetMatNameByIdx(const NNSG3dResMat * mat, u32 idx);
NNS_G3D_RES_INLINE int NNS_G3dGetMatIdxByName(const NNSG3dResMat * mat,
                                              const NNSG3dResName * name);

NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetShpNameByIdx(const NNSG3dResShp * shp, u32 idx);
NNS_G3D_RES_INLINE int NNS_G3dGetShpIdxByName(const NNSG3dResShp * shp,
                                              const NNSG3dResName * name);

NNS_G3D_RES_INLINE NNSG3dResMdlInfo * NNS_G3dGetMdlInfo(const NNSG3dResMdl * mdl);
NNS_G3D_RES_INLINE NNSG3dResNodeInfo * NNS_G3dGetNodeInfo(const NNSG3dResMdl * mdl);
NNS_G3D_RES_INLINE u8 * NNS_G3dGetSbc(const NNSG3dResMdl * mdl);
NNS_G3D_RES_INLINE NNSG3dResMat * NNS_G3dGetMat(const NNSG3dResMdl * mdl);
NNS_G3D_RES_INLINE NNSG3dResShp * NNS_G3dGetShp(const NNSG3dResMdl * mdl);

NNS_G3D_RES_INLINE NNSG3dResMdl * NNS_G3dGetMdlByIdx(const NNSG3dResMdlSet * mdlSet, u32 idx);
NNS_G3D_RES_INLINE const NNSG3dResName * NNS_G3dGetMdlNameByIdx(const NNSG3dResMdlSet * mdlSet, u32 idx);
NNS_G3D_RES_INLINE NNSG3dResMdl * NNS_G3dGetMdlByName(const NNSG3dResMdlSet * mdlSet,
                                                      const NNSG3dResName * name);
NNS_G3D_RES_INLINE int NNS_G3dGetMdlIdxByName(const NNSG3dResMdlSet * mdlSet,
                                              const NNSG3dResName * name);

NNS_G3D_RES_INLINE NNSG3dResMdlSet * NNS_G3dCheckMdlSet(const NNSG3dResDataBlockHeader * dataBlkHeader);
NNS_G3D_RES_INLINE NNSG3dResTex * NNS_G3dCheckTex(const NNSG3dResDataBlockHeader * dataBlkHeader);

NNSG3dResMdlSet * NNS_G3dGetMdlSet(const NNSG3dResFileHeader * header);
NNSG3dResTex * NNS_G3dGetTex(const NNSG3dResFileHeader * header);

NNSG3dResDataBlockHeader *
NNS_G3dGetDataBlockHeaderByIdx(const NNSG3dResFileHeader * header, u32 idx);

NNS_G3D_RES_INLINE NNSG3dResNodeData * NNS_G3dGetNodeDataByIdx(const NNSG3dResNodeInfo * info, u32 idx);
NNS_G3D_RES_INLINE NNSG3dResMatData * NNS_G3dGetMatDataByIdx(const NNSG3dResMat * mat, u32 idx);
NNS_G3D_RES_INLINE NNSG3dResShpData * NNS_G3dGetShpDataByIdx(const NNSG3dResShp * shp, u32 idx);
NNS_G3D_RES_INLINE NNSG3dResDictTexData * NNS_G3dGetTexDataByName(const NNSG3dResTex * tex, const NNSG3dResName * name);
NNS_G3D_RES_INLINE NNSG3dResDictTexData * NNS_G3dGetTexDataByIdx(const NNSG3dResTex * tex, u32 idx);
NNS_G3D_RES_INLINE NNSG3dResDictPlttData * NNS_G3dGetPlttDataByName(const NNSG3dResTex * tex, const NNSG3dResName * name);
NNS_G3D_RES_INLINE NNSG3dResDictPlttData * NNS_G3dGetPlttDataByIdx(const NNSG3dResTex * tex, u32 idx);

NNS_G3D_RES_INLINE const void * NNS_G3dGetTexData(const NNSG3dResTex * tex);
NNS_G3D_RES_INLINE const void * NNS_G3dGetTex4x4Data(const NNSG3dResTex * tex);
NNS_G3D_RES_INLINE const void * NNS_G3dGetTex4x4PlttIdxData(const NNSG3dResTex * tex);
NNS_G3D_RES_INLINE const void * NNS_G3dGetPlttData(const NNSG3dResTex * tex);

NNS_G3D_RES_INLINE const void * NNS_G3dGetShpDLPtr(const NNSG3dResShpData * shp);
NNS_G3D_RES_INLINE u32 NNS_G3dGetShpDLSize(const NNSG3dResShpData * shp);

NNS_G3D_RES_INLINE BOOL NNS_G3dIsMatAnm(const void * pAnm);
NNS_G3D_RES_INLINE BOOL NNS_G3dIsJntAnm(const void * pAnm);
NNS_G3D_RES_INLINE BOOL NNS_G3dIsVisAnm(const void * pAnm);

#ifdef __cplusplus
}
#endif

#include <nnsys/g3d/binres/res_struct_accessor_inline.h>

#endif
