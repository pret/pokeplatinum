#ifndef NITRO_MATH_QSORT_H_
#define NITRO_MATH_QSORT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/math/math.h>

typedef s32 (* MATHCompareFunc) (void * elem1, void * elem2);

static inline u32 MATH_QSortStackSize (u32 num)
{
    int tmp = MATH_ILog2(num);

    if (tmp <= 0) {
        return sizeof(u32);
    } else {
        return (u32)((MATH_ILog2(num) + 1) * sizeof(u32) * 2);
    }
}

void MATH_QSort(void * head, u32 num, u32 width, MATHCompareFunc comp, void * stackBuf);

#ifdef __cplusplus
}
#endif

#endif
