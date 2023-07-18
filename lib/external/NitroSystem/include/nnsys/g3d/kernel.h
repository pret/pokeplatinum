#ifndef NNSG3D_KERNEL_H_
#define NNSG3D_KERNEL_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/binres/res_struct_accessor_anm.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G3D_SIZE_MAT_MAX_MAX 256
#define NNS_G3D_SIZE_JNT_MAX_MAX 256
#define NNS_G3D_SIZE_SHP_MAX_MAX 256

#if (NNS_G3D_SIZE_MAT_MAX <= 0 || NNS_G3D_SIZE_MAT_MAX > NNS_G3D_SIZE_MAT_MAX_MAX)
#error NNS_G3D_SIZE_MAT_MAX range error.
#endif

#if (NNS_G3D_SIZE_JNT_MAX <= 0 || NNS_G3D_SIZE_JNT_MAX > NNS_G3D_SIZE_JNT_MAX_MAX)
#error NNS_G3D_SIZE_JNT_MAX range error.
#endif

#if (NNS_G3D_SIZE_SHP_MAX <= 0 || NNS_G3D_SIZE_SHP_MAX > NNS_G3D_SIZE_SHP_MAX_MAX)
#error NNS_G3D_SIZE_SHP_MAX range error.
#endif

#if (NNS_G3D_SIZE_MAT_MAX % 32 != 0)
#error NNS_G3D_SIZE_MAT_MAX must be a multiple of 32.
#endif

#if (NNS_G3D_SIZE_JNT_MAX % 32 != 0)
#error NNS_G3D_SIZE_JNT_MAX must be a multiple of 32.
#endif

#if (NNS_G3D_SIZE_SHP_MAX % 32 != 0)
#error NNS_G3D_SIZE_SHP_MAX must be a multiple of 32.
#endif

typedef u32 NNSG3dTexKey;
typedef u32 NNSG3dPlttKey;

typedef struct NNSG3dAnmObj_ {
    fx32 frame;
    fx32 ratio;
    void * resAnm;
    void * funcAnm;
    struct NNSG3dAnmObj_ * next;
    const NNSG3dResTex * resTex;
    u8 priority;
    u8 numMapData;
    u16 mapData[1];
} NNSG3dAnmObj;

#define NNS_G3D_ANMOBJ_SIZE_MATANM(pMdl) ((sizeof(NNSG3dAnmObj) + sizeof(u16) * pMdl->info.numMat) & ~3)

#define NNS_G3D_ANMOBJ_SIZE_JNTANM(pMdl) ((sizeof(NNSG3dAnmObj) + sizeof(u16) * pMdl->info.numNode) & ~3)
#define NNS_G3D_ANMOBJ_SIZE_VISANM(pMdl) ((sizeof(NNSG3dAnmObj) + sizeof(u16) * pMdl->info.numNode) & ~3)

typedef enum {
    NNS_G3D_ANMOBJ_MAPDATA_EXIST     = 0x0100,
    NNS_G3D_ANMOBJ_MAPDATA_DISABLED  = 0x0200,
    NNS_G3D_ANMOBJ_MAPDATA_DATAFIELD = 0x00ff
} NNSG3dAnmObjMapData;

struct NNSG3dMatAnmResult_;
struct NNSG3dJntAnmResult_;
struct NNSG3dVisAnmResult_;

typedef BOOL (* NNSG3dFuncAnmBlendMat)(struct NNSG3dMatAnmResult_ *,
                                       const NNSG3dAnmObj *,
                                       u32);

typedef BOOL (* NNSG3dFuncAnmBlendJnt)(struct NNSG3dJntAnmResult_ *,
                                       const NNSG3dAnmObj *,
                                       u32);

typedef BOOL (* NNSG3dFuncAnmBlendVis)(struct NNSG3dVisAnmResult_ *,
                                       const NNSG3dAnmObj *,
                                       u32);

typedef enum {
    NNS_G3D_RENDEROBJ_FLAG_RECORD             = 0x00000001,
    NNS_G3D_RENDEROBJ_FLAG_NOGECMD            = 0x00000002,
    NNS_G3D_RENDEROBJ_FLAG_SKIP_SBC_DRAW      = 0x00000004,
    NNS_G3D_RENDEROBJ_FLAG_SKIP_SBC_MTXCALC   = 0x00000008,
    NNS_G3D_RENDEROBJ_FLAG_HINT_OBSOLETE      = 0x00000010
} NNSG3dRenderObjFlag;

struct NNSG3dRS_;
typedef void (* NNSG3dSbcCallBackFunc)(struct NNSG3dRS_ *);

typedef enum {
    NNS_G3D_SBC_CALLBACK_TIMING_NONE = 0x00,
    NNS_G3D_SBC_CALLBACK_TIMING_A    = 0x01,
    NNS_G3D_SBC_CALLBACK_TIMING_B    = 0x02,
    NNS_G3D_SBC_CALLBACK_TIMING_C    = 0x03
} NNSG3dSbcCallBackTiming;

#define NNS_G3D_SBC_CALLBACK_TIMING_ASSERT(x)               \
    NNS_G3D_ASSERT(x == NNS_G3D_SBC_CALLBACK_TIMING_NONE || \
                   x == NNS_G3D_SBC_CALLBACK_TIMING_A || \
                   x == NNS_G3D_SBC_CALLBACK_TIMING_B || \
                   x == NNS_G3D_SBC_CALLBACK_TIMING_C)

typedef struct NNSG3dRenderObj_ {
    u32 flag;

    NNSG3dResMdl * resMdl;
    NNSG3dAnmObj * anmMat;
    NNSG3dFuncAnmBlendMat funcBlendMat;
    NNSG3dAnmObj * anmJnt;
    NNSG3dFuncAnmBlendJnt funcBlendJnt;
    NNSG3dAnmObj * anmVis;
    NNSG3dFuncAnmBlendVis funcBlendVis;

    NNSG3dSbcCallBackFunc cbFunc;
    u8 cbCmd;
    u8 cbTiming;
    u16 dummy_;

    NNSG3dSbcCallBackFunc cbInitFunc;

    void * ptrUser;

    u8 * ptrUserSbc;

    struct NNSG3dJntAnmResult_ * recJntAnm;
    struct NNSG3dMatAnmResult_ * recMatAnm;

    u32 hintMatAnmExist[NNS_G3D_SIZE_MAT_MAX / 32];
    u32 hintJntAnmExist[NNS_G3D_SIZE_JNT_MAX / 32];
    u32 hintVisAnmExist[NNS_G3D_SIZE_JNT_MAX / 32];
} NNSG3dRenderObj;

#define NNS_G3D_RENDEROBJ_JNTBUFFER_SIZE(numJnt) \
    ((u32)(sizeof(NNSG3dJntAnmResult) * (numJnt)))

#define NNS_G3D_RENDEROBJ_MATBUFFER_SIZE(numMat) \
    ((u32)(sizeof(NNSG3dMatAnmResult) * (numMat)))

NNS_G3D_INLINE void NNS_G3dAnmObjSetFrame(NNSG3dAnmObj * pAnmObj, fx32 frame);
NNS_G3D_INLINE void NNS_G3dAnmObjSetBlendRatio(NNSG3dAnmObj * pAnmObj, fx32 ratio);
NNS_G3D_INLINE fx32 NNS_G3dAnmObjGetNumFrame(const NNSG3dAnmObj * pAnmObj);

u32 NNS_G3dAnmObjCalcSizeRequired(const void * pAnm, const NNSG3dResMdl * pMdl);
void NNS_G3dAnmObjInit(NNSG3dAnmObj * pAnmObj,
                       void * pResAnm,
                       const NNSG3dResMdl * pResMdl,
                       const NNSG3dResTex * pResTex);
void NNS_G3dAnmObjEnableID(NNSG3dAnmObj * pAnmObj, int id);
void NNS_G3dAnmObjDisableID(NNSG3dAnmObj * pAnmObj, int id);

NNS_G3D_INLINE void NNS_G3dRenderObjSetFlag(NNSG3dRenderObj * pRenderObj, NNSG3dRenderObjFlag flag);
NNS_G3D_INLINE void NNS_G3dRenderObjResetFlag(NNSG3dRenderObj * pRenderObj, NNSG3dRenderObjFlag flag);
NNS_G3D_INLINE BOOL NNS_G3dRenderObjTestFlag(const NNSG3dRenderObj * pRenderObj, NNSG3dRenderObjFlag flag);
NNS_G3D_INLINE u8 * NNS_G3dRenderObjSetUserSbc(NNSG3dRenderObj * pRenderObj, u8 * sbc);
NNS_G3D_INLINE void NNS_G3dRenderObjSetJntAnmBuffer(NNSG3dRenderObj * pRenderObj, struct NNSG3dJntAnmResult_ * buf);
NNS_G3D_INLINE void NNS_G3dRenderObjSetMatAnmBuffer(NNSG3dRenderObj * pRenderObj, struct NNSG3dMatAnmResult_ * buf);

NNS_G3D_INLINE struct NNSG3dJntAnmResult_ * NNS_G3dRenderObjReleaseJntAnmBuffer(NNSG3dRenderObj * pRenderObj);
NNS_G3D_INLINE struct NNSG3dMatAnmResult_ * NNS_G3dRenderObjReleaseMatAnmBuffer(NNSG3dRenderObj * pRenderObj);
NNS_G3D_INLINE void * NNS_G3dRenderObjSetUserPtr(NNSG3dRenderObj * pRenderObj, void * ptr);

NNS_G3D_INLINE NNSG3dResMdl * NNS_G3dRenderObjGetResMdl(NNSG3dRenderObj * pRenderObj);
NNS_G3D_INLINE void NNS_G3dRenderObjSetBlendFuncMat(NNSG3dRenderObj * pRenderObj, NNSG3dFuncAnmBlendMat func);
NNS_G3D_INLINE void NNS_G3dRenderObjSetBlendFuncJnt(NNSG3dRenderObj * pRenderObj, NNSG3dFuncAnmBlendJnt func);
NNS_G3D_INLINE void NNS_G3dRenderObjSetBlendFuncVis(NNSG3dRenderObj * pRenderObj, NNSG3dFuncAnmBlendVis func);

void NNS_G3dRenderObjInit(NNSG3dRenderObj * pRenderObj, NNSG3dResMdl * pResMdl);
void NNS_G3dRenderObjAddAnmObj(NNSG3dRenderObj * pRenderObj, NNSG3dAnmObj * pAnmObj);
void NNS_G3dRenderObjRemoveAnmObj(NNSG3dRenderObj * pRenderObj, NNSG3dAnmObj * pAnmObj);
void NNS_G3dRenderObjSetCallBack(NNSG3dRenderObj * pRenderObj,
                                 NNSG3dSbcCallBackFunc func,
                                 u8 *,
                                 u8 cmd,
                                 NNSG3dSbcCallBackTiming timing);
void NNS_G3dRenderObjResetCallBack(NNSG3dRenderObj * pRenderObj);
void NNS_G3dRenderObjSetInitFunc(NNSG3dRenderObj * pRenderObj, NNSG3dSbcCallBackFunc func);

u32 NNS_G3dTexGetRequiredSize(const NNSG3dResTex * pTex);
u32 NNS_G3dTex4x4GetRequiredSize(const NNSG3dResTex * pTex);
void NNS_G3dTexSetTexKey(NNSG3dResTex * pTex,
                         NNSG3dTexKey texKey,
                         NNSG3dTexKey tex4x4Key);
void NNS_G3dTexLoad(NNSG3dResTex * pTex, BOOL exec_begin_end);
void NNS_G3dTexReleaseTexKey(NNSG3dResTex * pTex,
                             NNSG3dTexKey * texKey,
                             NNSG3dTexKey * tex4x4Key);

u32 NNS_G3dPlttGetRequiredSize(const NNSG3dResTex * pTex);
void NNS_G3dPlttSetPlttKey(NNSG3dResTex * pTex, NNSG3dPlttKey plttKey);
void NNS_G3dPlttLoad(NNSG3dResTex * pTex, BOOL exec_begin_end);
NNSG3dPlttKey NNS_G3dPlttReleasePlttKey(NNSG3dResTex * pTex);

BOOL NNS_G3dBindMdlTex(NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex);
BOOL NNS_G3dBindMdlTexEx(NNSG3dResMdl * pMdl,
                         const NNSG3dResTex * pTex,
                         const NNSG3dResName * pResName);
BOOL NNS_G3dForceBindMdlTex(NNSG3dResMdl * pMdl,
                            const NNSG3dResTex * pTex,
                            u32 texToMatListIdx,
                            u32 texIdx);

void NNS_G3dReleaseMdlTex(NNSG3dResMdl * pMdl);
BOOL NNS_G3dReleaseMdlTexEx(NNSG3dResMdl * pMdl, const NNSG3dResName * pResName);

BOOL NNS_G3dBindMdlPltt(NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex);
BOOL NNS_G3dBindMdlPlttEx(NNSG3dResMdl * pMdl,
                          const NNSG3dResTex * pTex,
                          const NNSG3dResName * pResName);
BOOL NNS_G3dForceBindMdlPltt(NNSG3dResMdl * pMdl,
                             const NNSG3dResTex * pTex,
                             u32 plttToMatListIdx,
                             u32 plttIdx);
void NNS_G3dReleaseMdlPltt(NNSG3dResMdl * pMdl);
BOOL NNS_G3dReleaseMdlPlttEx(NNSG3dResMdl * pMdl, const NNSG3dResName * pResName);

BOOL NNS_G3dBindMdlSet(NNSG3dResMdlSet * pMdlSet, const NNSG3dResTex * pTex);
void NNS_G3dReleaseMdlSet(NNSG3dResMdlSet * pMdlSet);

#ifdef __cplusplus
}
#endif

#include <nnsys/g3d/kernel_inline.h>

#endif
