#ifndef NNS_G2D_OAM_DATA_H_
#define NNS_G2D_OAM_DATA_H_

#include <nitro/types.h>
#include <nnsys/g2d/g2d_config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_OAM_AFFINE_IDX_NONE 0xFFFE

typedef struct objSize {
    u16 x;
    u16 y;
} objSize;

#ifdef NNS_FROM_TOOL
    #define NNS_G2D_OBJSIZE_TBL_STATIC static
#else
    #define NNS_G2D_OBJSIZE_TBL_STATIC
extern const u16 NNSi_objSizeHTbl[3][4];
extern const u16 NNSi_objSizeWTbl[3][4];
#endif

#define NNS_G2D_DEFINE_NNSI_OBJSIZEWTBL        \
    NNS_G2D_OBJSIZE_TBL_STATIC                     \
    const u16 NNSi_objSizeWTbl[3][4] =               \
    {                                              \
        {                                          \
            8,                                     \
            16,                                    \
            32,                                    \
            64                                     \
        },                                         \
        {                                          \
            16,                                    \
            32,                                    \
            32,                                    \
            64                                     \
        },                                         \
        {                                          \
            8,                                     \
            8,                                     \
            16,                                    \
            32                                     \
        }                                          \
    }                                              \

#define NNS_G2D_DEFINE_NNSI_OBJSIZEHTBL        \
    NNS_G2D_OBJSIZE_TBL_STATIC                     \
    const u16 NNSi_objSizeHTbl[3][4] =               \
    {                                              \
        {                                          \
            8,                                     \
            16,                                    \
            32,                                    \
            64,                                    \
        },                                         \
        {                                          \
            8,                                     \
            8,                                     \
            16,                                    \
            32,                                    \
        },                                         \
        {                                          \
            16,                                    \
            32,                                    \
            32,                                    \
            64                                     \
        }                                          \
    }                                              \

NNS_G2D_INLINE GXOamShape NNS_G2dGetOAMSize (const GXOamAttr * oamAttr)
{
    const GXOamShape result = (GXOamShape)((GX_OAM_ATTR01_SHAPE_MASK | GX_OAM_ATTR01_SIZE_MASK) & oamAttr->attr01);

    return result;
}

NNS_G2D_INLINE int NNS_G2dGetOamSizeX (const GXOamShape * oamShape)
{
#ifdef NNS_FROM_TOOL
    NNS_G2D_DEFINE_NNSI_OBJSIZEWTBL;
#endif
    return NNSi_objSizeWTbl[(*oamShape & GX_OAM_ATTR01_SHAPE_MASK) >> GX_OAM_ATTR01_SHAPE_SHIFT]
           [(*oamShape & GX_OAM_ATTR01_SIZE_MASK) >> GX_OAM_ATTR01_SIZE_SHIFT];
}

NNS_G2D_INLINE int NNS_G2dGetOamSizeY (const GXOamShape * oamShape)
{
#ifdef NNS_FROM_TOOL
    NNS_G2D_DEFINE_NNSI_OBJSIZEHTBL;
#endif

    return NNSi_objSizeHTbl[(*oamShape & GX_OAM_ATTR01_SHAPE_MASK) >> GX_OAM_ATTR01_SHAPE_SHIFT]
           [(*oamShape & GX_OAM_ATTR01_SIZE_MASK) >> GX_OAM_ATTR01_SIZE_SHIFT];
}

#ifdef __cplusplus
}
#endif

#endif
