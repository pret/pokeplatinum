#ifndef NITRO_CP_CONTEXT_H_
#define NITRO_CP_CONTEXT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/ioreg.h>
#include <nitro/cp/divider.h>

typedef struct CPContext {
    u64 div_numer;
    u64 div_denom;
    u64 sqrt;
    u16 div_mode;
    u16 sqrt_mode;
} CPContext;

void CP_SaveContext(CPContext * context);

void CPi_RestoreContext(const CPContext * context);
static inline void CP_RestoreContext (const CPContext * context)
{
    CPi_RestoreContext(context);
    CP_WaitDiv();
}

#ifdef __cplusplus
}
#endif

#endif
