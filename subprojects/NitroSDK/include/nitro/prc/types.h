#ifndef NITRO_PRC_TYPES_H_
#define NITRO_PRC_TYPES_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/fx/fx.h>

#define PRC_PEN_UP_MARKER_X (-1)
#define PRC_PEN_UP_MARKER_Y (-1)

#define PRC_CODE_UNKNOWN (-1)

#define PRC_KIND_ALL (0xffffffffU)

#define PRC_LARGE_ENOUGH_X (512)
#define PRC_SMALL_ENOUGH_X (-512)
#define PRC_LARGE_ENOUGH_Y (512)
#define PRC_SMALL_ENOUGH_Y (-512)

#define PRC_TINY_LENGTH (1)

typedef struct PRCPoint {
    s16 x;
    s16 y;
} PRCPoint;

typedef struct PRCBoundingBox {
    s16 x1, y1;
    s16 x2, y2;
} PRCBoundingBox;

typedef struct PRCStrokes {
    PRCPoint * points;
    int size;
    u32 capacity;
} PRCStrokes;

typedef struct PRCPrototypeEntry {
    BOOL enabled;
    u32 kind;
    u16 code;
    fx16 correction;
    void * data;
    int pointIndex;
    u16 pointCount;
    u16 strokeCount;
} PRCPrototypeEntry;

typedef struct PRCPrototypeList {
    const PRCPrototypeEntry * entries;
    int entrySize;
    const PRCPoint * pointArray;
    int pointArraySize;

    union {
        int normalizeSize;
        int regularizeSize;
    };
} PRCPrototypeList;

typedef enum PRCResampleMethod {
    PRC_RESAMPLE_METHOD_NONE = 0,
    PRC_RESAMPLE_METHOD_DISTANCE,
    PRC_RESAMPLE_METHOD_ANGLE,
    PRC_RESAMPLE_METHOD_RECURSIVE,
    PRC_RESAMPLE_METHOD_USER = 256
} PRCResampleMethod;

#ifdef __cplusplus
}
#endif

#endif
