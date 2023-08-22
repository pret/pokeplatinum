#include <nitro/os.h>
#include <nitro/memorymap.h>

#ifdef SDK_ARM9
#include <nitro/cp/context.h>
#endif

#include <nitro/code32.h>
asm void OS_InitContext (register OSContext *context, register u32 newpc, register u32 newsp)
{
	add newpc, newpc, #4
	str newpc, [context, #OS_CONTEXT_PC_PLUS4]

#ifdef  SDK_CONTEXT_HAS_SP_SVC
	str newsp, [context, #OS_CONTEXT_SP_SVC]
	sub newsp, newsp, #HW_SVC_STACK_SIZE
#endif
	tst newsp, #4
	bne @subne1
	b @subne2
@subne1:
	sub newsp, newsp, #4
@subne2:
	str newsp, [context, #OS_CONTEXT_SP]
	ands r1, newpc, #1
	bne @movne1
	b @movne2
@movne1:
	mov r1, #HW_PSR_SYS_MODE | HW_PSR_THUMB_STATE
@movne2:
	beq @moveq1
	b @moveq2
@moveq1:
	mov r1, #HW_PSR_SYS_MODE | HW_PSR_ARM_STATE
@moveq2:
	str r1, [context, #OS_CONTEXT_CPSR]
	mov r1, #0
	str r1, [context, #OS_CONTEXT_R0]
	str r1, [context, #OS_CONTEXT_R1]
	str r1, [context, #OS_CONTEXT_R2]
	str r1, [context, #OS_CONTEXT_R3]
	str r1, [context, #OS_CONTEXT_R4]
	str r1, [context, #OS_CONTEXT_R5]
	str r1, [context, #OS_CONTEXT_R6]
	str r1, [context, #OS_CONTEXT_R7]
	str r1, [context, #OS_CONTEXT_R8]
	str r1, [context, #OS_CONTEXT_R9]
	str r1, [context, #OS_CONTEXT_R10]
	str r1, [context, #OS_CONTEXT_R11]
	str r1, [context, #OS_CONTEXT_R12]
	str r1, [context, #OS_CONTEXT_LR]
	bx lr
}

#if defined(SDK_TCM_APPLY) && defined(SDK_ARM9)
#include <nitro/itcm_begin.h>
#endif

asm BOOL OS_SaveContext (register OSContext *context)
{
#if defined(SDK_ARM9)
	stmfd sp !, { lr, r0 }
	add r0, r0, #OS_CONTEXT_CP_CONTEXT
	ldr r1, = CP_SaveContext
	blx r1
	ldmfd sp !, { lr, r0 }
#endif
	add r1, r0, #OS_CONTEXT_CPSR
	mrs r2, cpsr
	str r2, [r1], #OS_CONTEXT_R0 - OS_CONTEXT_CPSR

#ifdef  SDK_CONTEXT_HAS_SP_SVC
	mov r0, #HW_PSR_SVC_MODE | HW_PSR_IRQ_DISABLE | HW_PSR_FIQ_DISABLE | HW_PSR_ARM_STATE
	msr cpsr_c, r0
	str sp, [r1, #OS_CONTEXT_SP_SVC - OS_CONTEXT_R0]
	msr cpsr_c, r2
#endif
	mov r0, #1
	stmia r1, {r0 - r14}
	add r0, pc, #8
	str r0, [r1, #OS_CONTEXT_PC_PLUS4 - OS_CONTEXT_R0]
	mov r0, #0
	bx lr
}

#define OFFSETOF(x, y) (int)(&(((x *)0)->y))

asm void OS_LoadContext (register OSContext *context)
{
#if OS_CONTEXT_CPSR != 0
#pragma message(has changed!!!)
	add r0, r0, #OS_CONTEXT_CPSR
#endif

#if defined(SDK_ARM9)
	stmfd sp !, { lr, r0 }
	add r0, r0, #OS_CONTEXT_CP_CONTEXT
	ldr r1, = CPi_RestoreContext
	blx r1
	ldmfd sp !, { lr, r0 }
#endif
	mrs r1, cpsr
	bic r1, r1, #HW_PSR_CPU_MODE_MASK
	orr r1, r1, #HW_PSR_SVC_MODE | HW_PSR_IRQ_DISABLE | HW_PSR_FIQ_DISABLE
	msr cpsr_c, r1
	ldr r1, [r0], #OS_CONTEXT_R0 - OS_CONTEXT_CPSR
	msr spsr_fsxc, r1
#ifdef  SDK_CONTEXT_HAS_SP_SVC
	ldr sp, [r0, #OS_CONTEXT_SP_SVC - OS_CONTEXT_R0]
#endif
	ldr lr, [r0, #OS_CONTEXT_PC_PLUS4 - OS_CONTEXT_R0]
	ldmia r0, { r0 - r14 }^
	nop
	subs pc, lr, #4
}
#if defined(SDK_TCM_APPLY) && defined(SDK_ARM9)
#include <nitro/itcm_end.h>
#endif

#include <nitro/codereset.h>

void OS_DumpContext (OSContext *context)
{
#ifndef SDK_FINALROM
	s32 i;

	OS_Printf("context=%08x\n", context);
	if (context) {
		OS_Printf("CPSR  %08x\n", context->cpsr);
		for (i = 0; i < 13; i++) {
			OS_Printf("R%02d   %08x\n", i, context->r[i]);
		}
		OS_Printf("SP    %08x\n", context->sp);
		OS_Printf("LR    %08x\n", context->lr);
		OS_Printf("PC+4  %08x\n", context->pc_plus4);
#ifdef  SDK_CONTEXT_HAS_SP_SVC
		OS_Printf("SPsvc %08x\n", context->sp_svc);
#endif
	}
#else
	(void)context;
#endif
}