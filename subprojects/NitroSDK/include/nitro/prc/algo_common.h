#ifndef NITRO_PRC_ALGO_COMMON_H_
#define NITRO_PRC_ALGO_COMMON_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/prc/types.h>
#include <nitro/prc/common.h>

#define PRCi_ARRAY_SIZE(type, size, dummy) \
    sizeof(type) * (size)

#define PRCi_ALLOC_ARRAY(dst, type, size, base, offset) \
    (dst) = (type *)((u8 *)(base) + (offset)); \
    (offset) += sizeof(type) * (size)

#define PRC_RESAMPLE_DEFAULT_METHOD_COMMON PRC_RESAMPLE_METHOD_RECURSIVE
#define PRC_RESAMPLE_DEFAULT_THRESHOLD_COMMON 5

typedef struct PRCPrototypeDBParam_Common {
    int dummy;
} PRCPrototypeDBParam_Common;

typedef struct PRCInputPatternParam_Common {
    union {
        int normalizeSize;
        int regularizeSize;
    };
    PRCResampleMethod resampleMethod;
    int resampleThreshold;
} PRCInputPatternParam_Common;

typedef struct PRCiPatternData_Common {
    u16 strokeCount;
    u16 pointCount;
    const PRCPoint * pointArray;
    int * strokes;
    int * strokeSizes;
    fx32 * lineSegmentLengthArray;
    fx16 * lineSegmentRatioToStrokeArray;

    u16 * lineSegmentAngleArray;
    fx32 * strokeLengths;
    fx16 * strokeRatios;
    fx32 wholeLength;
    PRCBoundingBox * strokeBoundingBoxes;
    PRCBoundingBox wholeBoundingBox;
} PRCiPatternData_Common;

typedef struct PRCiPatternBufferInfo_Common {
    PRCPoint * pointArray;
    int * strokes;
    int * strokeSizes;
    fx32 * lineSegmentLengthArray;
    fx16 * lineSegmentRatioToStrokeArray;

    u16 * lineSegmentAngleArray;
    fx32 * strokeLengths;
    fx16 * strokeRatios;
    PRCBoundingBox * strokeBoundingBoxes;
} PRCiPatternBufferInfo_Common;

typedef struct PRCiPrototypeEntry_Common {
    PRCiPatternData_Common data;
    const PRCPrototypeEntry * entry;
} PRCiPrototypeEntry_Common;

typedef struct PRCInputPattern_Common {
    PRCiPatternData_Common data;
    union {
        int normalizeSize;
        int regularizeSize;
    };

    void * buffer;
    u32 bufferSize;
} PRCInputPattern_Common;

typedef struct PRCiPrototypeListBufferInfo_Common {
    PRCiPrototypeEntry_Common * patterns;
    fx32 * lineSegmentLengthArray;
    fx16 * lineSegmentRatioToStrokeArray;

    u16 * lineSegmentAngleArray;
    int * strokeArray;
    int * strokeSizeArray;
    fx32 * strokeLengthArray;
    fx16 * strokeRatioArray;
    PRCBoundingBox * strokeBoundingBoxArray;
} PRCiPrototypeListBufferInfo_Common;

typedef struct PRCPrototypeDB_Common {
    PRCiPrototypeEntry_Common * patterns;
    int patternCount;

    fx32 * lineSegmentLengthArray;
    fx16 * lineSegmentRatioToStrokeArray;

    u16 * lineSegmentAngleArray;
    int wholePointCount;

    int * strokeArray;
    int * strokeSizeArray;
    fx32 * strokeLengthArray;
    fx16 * strokeRatioArray;
    PRCBoundingBox * strokeBoundingBoxArray;
    int wholeStrokeCount;

    int maxPointCount;
    int maxStrokeCount;

    union {
        int normalizeSize;
        int regularizeSize;
    };

    const PRCPrototypeList * prototypeList;
    void * buffer;
    u32 bufferSize;
} PRCPrototypeDB_Common;

static inline void PRC_Init_Common (void)
{
    PRCi_Init();
}

u32

PRC_GetPrototypeDBBufferSizeEx_Common(const PRCPrototypeList * prototypeList,
                                      u32 kindMask,
                                      BOOL ignoreDisabledEntries,
                                      const PRCPrototypeDBParam_Common * param);

u32 static inline PRC_GetPrototypeDBBufferSize_Common (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSizeEx_Common(prototypeList, PRC_KIND_ALL, FALSE, NULL);
}

BOOL

PRC_InitPrototypeDBEx_Common(PRCPrototypeDB_Common * protoDB,
                             void * buffer,
                             const PRCPrototypeList * prototypeList,
                             u32 kindMask,
                             BOOL ignoreDisabledEntries, const PRCPrototypeDBParam_Common * param);

static inline BOOL PRC_InitPrototypeDB_Common (PRCPrototypeDB_Common * protoDB,
                                               void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDBEx_Common(protoDB, buffer, prototypeList, PRC_KIND_ALL, FALSE, NULL);
}

u32 PRC_GetInputPatternBufferSize_Common(int maxPointCount, int maxStrokeCount);

BOOL

PRC_InitInputPatternEx_Common(PRCInputPattern_Common * pattern,
                              void * buffer,
                              const PRCStrokes * strokes,
                              int maxPointCount,
                              int maxStrokeCount, const PRCInputPatternParam_Common * param);

static inline BOOL PRC_InitInputPattern_Common (PRCInputPattern_Common * pattern,
                                                void * buffer,
                                                const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPatternEx_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                         NULL);
}

void PRC_GetInputPatternStrokes_Common(PRCStrokes * strokes, const PRCInputPattern_Common * input);

void PRCi_PrintPatternData_Common(PRCiPatternData_Common * data);

#ifdef __cplusplus
}
#endif

#endif
