#ifndef NITRO_PAD_XYBUTTON_H_
#define NITRO_PAD_XYBUTTON_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

extern BOOL PADi_XYButtonAvailable;

BOOL PAD_InitXYButton(void);

static inline BOOL PAD_IsXYButtonAvailable (void)
{
    return PADi_XYButtonAvailable;
}

#ifdef __cplusplus
}
#endif

#endif
