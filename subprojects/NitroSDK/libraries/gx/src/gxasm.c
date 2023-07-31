#include <nitro/code32.h>

#include "include/gxasm.h"

asm void GX_SendFifo48B (register const void * pSrc, register void * pDest) {
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    bx lr
}

asm void GX_SendFifo64B (register const void * pSrc, register void * pDest) {
#ifdef SDK_TEG
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2}
    stmia r1, {r2}
    bx lr
#else
    stmfd sp !, {r4 - r8}
    ldmia r0 !, {r2 - r8, r12}
    stmia r1, {r2 - r8, r12}
    ldmia r0 !, {r2 - r8, r12}
    stmia r1, {r2 - r8, r12}
    ldmfd sp !, {r4 - r8}
    bx lr
#endif
}

asm void GX_SendFifo128B (register const void * pSrc, register void * pDest) {
#ifdef SDK_TEG
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1, {r2, r3, r12}
    ldmia r0 !, {r2, r3}
    stmia r1, {r2, r3}
    bx lr
#else
    stmfd sp !, {r4 - r8}
    ldmia r0 !, {r2 - r8, r12}
    stmia r1, {r2 - r8, r12}
    ldmia r0 !, {r2 - r8, r12}
    stmia r1, {r2 - r8, r12}
    ldmia r0 !, {r2 - r8, r12}
    stmia r1, {r2 - r8, r12}
    ldmia r0 !, {r2 - r8, r12}
    stmia r1, {r2 - r8, r12}
    ldmfd sp !, {r4 - r8}
    bx lr
#endif
}
