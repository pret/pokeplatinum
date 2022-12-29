#ifndef NITRO_PRC_RESAMPLE_H_
#define NITRO_PRC_RESAMPLE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/prc/common.h>
#include <nitro/prc/types.h>

BOOL

PRC_ResampleStrokes_None(u16 * selectedPoints,
                         int * pSelectedPointNum,
                         int maxPointCount,
                         int maxStrokeCount,
                         const PRCStrokes * strokes, int threshold, void * buffer);

BOOL

PRC_ResampleStrokes_Distance(u16 * selectedPoints,
                             int * pSelectedPointNum,
                             int maxPointCount,
                             int maxStrokeCount,
                             const PRCStrokes * strokes, int threshold, void * buffer);

BOOL

PRC_ResampleStrokes_Angle(u16 * selectedPoints,
                          int * pSelectedPointNum,
                          int maxPointCount,
                          int maxStrokeCount,
                          const PRCStrokes * strokes, int threshold, void * buffer);

BOOL

PRC_ResampleStrokes_Recursive(u16 * selectedPoints,
                              int * pSelectedPointNum,
                              int maxPointCount,
                              int maxStrokeCount,
                              const PRCStrokes * strokes, int threshold, void * buffer);

#ifdef __cplusplus
}
#endif

#endif
