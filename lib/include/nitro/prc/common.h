#ifndef NITRO_PRC_COMMON_H_
#define NITRO_PRC_COMMON_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

#include <nitro/prc/types.h>
#include <nitro/fx/fx_cp.h>
#include <nitro/fx/fx_trig.h>

void PRCi_Init(void);

void

PRC_GetEntryStrokes(PRCStrokes * strokes,
                    const PRCPrototypeList * prototypeList, const PRCPrototypeEntry * entry);

BOOL PRC_CopyStrokes(const PRCStrokes * srcStrokes, PRCStrokes * dstStrokes);

static inline int PRC_GetEntryCode (const PRCPrototypeEntry * entry)
{
    return (entry != NULL) ? entry->code : -1;
}

static inline void * PRC_GetEntryData (const PRCPrototypeEntry * entry)
{
    return (entry != NULL) ? entry->data : NULL;
}

static inline void PRC_InitStrokes (PRCStrokes * strokes, PRCPoint * points, u32 size)
{
    SDK_ASSERT(strokes && points);
    strokes->points = points;
    strokes->capacity = size;
    strokes->size = 0;
}

static inline void PRC_AppendPoint (PRCStrokes * strokes, int x, int y)
{
    SDK_ASSERT(strokes);
    SDK_ASSERT(strokes->size < strokes->capacity);
    strokes->points[strokes->size].x = (s16)x;
    strokes->points[strokes->size].y = (s16)y;
    (strokes->size)++;
}

static inline void PRC_AppendPenUpMarker (PRCStrokes * strokes)
{
    PRC_AppendPoint(strokes, PRC_PEN_UP_MARKER_X, PRC_PEN_UP_MARKER_Y);
}

static inline void PRC_Clear (PRCStrokes * strokes)
{
    SDK_ASSERT(strokes);
    strokes->size = 0;
}

static inline BOOL PRC_IsFull (const PRCStrokes * strokes)
{
    SDK_ASSERT(strokes);
    return strokes->size >= strokes->capacity;
}

static inline BOOL PRC_IsEmpty (const PRCStrokes * strokes)
{
    SDK_ASSERT(strokes);
    return strokes->size == 0;
}

static inline int PRC_IsPenUpMarker (const PRCPoint * point)
{
    SDK_ASSERT(point);

    SDK_ASSERT((point->x != PRC_PEN_UP_MARKER_X) || (point->y == PRC_PEN_UP_MARKER_Y));
    return (point->x == PRC_PEN_UP_MARKER_X);
}

static inline fx32 PRCi_CalcDistance (const PRCPoint * p1, const PRCPoint * p2)
{
    SDK_ASSERT(p1 && p2);
    return (FX_Sqrt
                (((p1->x - p2->x) * (p1->x - p2->x) +
                  (p1->y - p2->y) * (p1->y - p2->y)) << FX32_SHIFT));
}

static inline u16 PRCi_CalcAngle (const PRCPoint * from, const PRCPoint * to)
{
    SDK_ASSERT(from && to);
    return ((u16)(FX_Atan2Idx(to->y - from->y, to->x - from->x)));
}

#ifdef __cplusplus
}
#endif

#endif
