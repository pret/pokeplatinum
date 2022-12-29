#ifndef NITRO_OS_SYSTEM_H_
#define NITRO_OS_SYSTEM_H_

#ifndef SDK_ASM
#include <nitro/types.h>
#include <nitro/os/common/systemCall.h>
#endif

#include <nitro/hw/common/armArch.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef SDK_ASM
#define OS_EXIT_STRING_1 "*** Exit nitro program (status="
#define OS_EXIT_STRING_2 "%d).\n"
#define OS_EXIT_STRING OS_EXIT_STRING_1 OS_EXIT_STRING_2

typedef enum {
    OS_PROCMODE_USER = HW_PSR_USER_MODE,
    OS_PROCMODE_FIQ = HW_PSR_FIQ_MODE,
    OS_PROCMODE_IRQ = HW_PSR_IRQ_MODE,
    OS_PROCMODE_SVC = HW_PSR_SVC_MODE,
    OS_PROCMODE_ABORT = HW_PSR_ABORT_MODE,
    OS_PROCMODE_UNDEF = HW_PSR_UNDEF_MODE,
    OS_PROCMODE_SYS = HW_PSR_SYS_MODE
} OSProcMode;

typedef enum {
    OS_INTRMODE_IRQ_DISABLE = HW_PSR_IRQ_DISABLE,
    OS_INTRMODE_IRQ_ENABLE = 0
} OSIntrMode_Irq;

typedef enum {
    OS_INTRMODE_FIQ_DISABLE = HW_PSR_FIQ_DISABLE,
    OS_INTRMODE_FIQ_ENABLE = 0
} OSIntrMode_Fiq;

typedef u32 OSIntrMode;

extern OSIntrMode OS_EnableInterrupts(void);

extern OSIntrMode OS_DisableInterrupts(void);

extern OSIntrMode OS_RestoreInterrupts(OSIntrMode state);

extern OSIntrMode OS_EnableInterrupts_IrqAndFiq(void);

extern OSIntrMode OS_DisableInterrupts_IrqAndFiq(void);

extern OSIntrMode OS_RestoreInterrupts_IrqAndFiq(OSIntrMode state);

extern OSIntrMode_Irq OS_GetCpsrIrq(void);

extern OSProcMode OS_GetProcMode(void);

extern void OS_Terminate(void);

#ifdef SDK_ARM9
extern void OS_Halt(void);
#else
static inline void OS_Halt (void)
{
    SVC_Halt();
}
#endif

extern void OS_Exit(int status);

extern void OS_SpinWait(u32 cycle);

#ifndef OSi_OSIRQMASK_DEFINED
typedef u32 OSIrqMask;
#define OSi_OSIRQMASK_DEFINED
#endif
extern void OS_WaitInterrupt(BOOL clear, OSIrqMask irqFlags);

extern void OS_WaitVBlankIntr(void);

#endif

#ifdef __cplusplus
}
#endif

#endif
