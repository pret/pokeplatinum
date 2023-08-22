#include        <nitro/code32.h>
#include        <nitro/types.h>
#include        <nitro/os/common/interrupt.h>
#include        <nitro/os/common/thread.h>
#include        <nitro/os/common/systemCall.h>

#ifdef SDK_ARM9
#include        <nitro/hw/ARM9/mmap_global.h>
#include        <nitro/hw/ARM9/ioreg_OS.h>
#else
#include        <nitro/hw/ARM7/mmap_global.h>
#include        <nitro/hw/ARM7/ioreg_OS.h>
#endif

#ifdef SDK_ARM9
#include <nitro/dtcm_begin.h>
#endif

#ifndef SDK_THREAD_INFINITY
OSThreadQueue OSi_IrqThreadQueue = 0;
#else
OSThreadQueue OSi_IrqThreadQueue = { NULL, NULL };
#endif

#ifdef SDK_ARM9
#include <nitro/dtcm_end.h>
#include <nitro/itcm_begin.h>
#endif

asm void OS_IrqHandler (void)
{
#ifdef  SDK_NO_THREAD
#else
	stmfd sp !, { lr }
#endif
	mov r12, #HW_REG_BASE
	add r12, r12, #REG_IE_OFFSET
	ldr r1, [r12, #REG_IME_ADDR - REG_IE_ADDR]
	cmp r1, #0
#ifdef  SDK_NO_THREAD
	beq @bxeq1
	b @bxeq2
@bxeq1:
	bx lr
@bxeq2:
#else
	beq @ldmeqfd3
	b @ldmeqfd4
@ldmeqfd3:
	ldmfd sp !, { pc }
@ldmeqfd4:
#endif
	ldmia r12, { r1 - r2 }
	ands r1, r1, r2

#ifdef  SDK_NO_THREAD
	beq @bxeq5
	b @bxeq6
@bxeq5:
	bx lr
@bxeq6:
#else
	beq @ldmeqfd7
	b @ldmeqfd8
@ldmeqfd7:
	ldmfd sp !, { pc }
@ldmeqfd8:
#endif

#if defined(SDK_ARM9) && !defined(SDK_CWBUG_PROC_OPT)
	mov r3, #1 << 31
	@1 :     clz r0, r1
	bics r1, r1, r3, LSR r0
	bne     @1
	mov r1, r3, LSR r0
	str r1, [r12, #REG_IF_ADDR - REG_IE_ADDR]
	rsbs r0, r0, #31

#else
	mov r3, #1
	mov r0, #0
	@1: ands r2, r1, r3, LSL r0
	beq @addeq9
	b @addeq10
@addeq9:
	add r0, r0, #1
@addeq10:
	beq     @1
	str r2, [r12, #REG_IF_ADDR - REG_IE_ADDR]
#endif

#ifdef  SDK_DEBUG
	cmp r0, #OS_IRQ_TABLE_MAX
	@2: bge @2
#endif
	ldr r1, = OS_IRQTable
	ldr r0, [r1, r0, LSL #2]

#ifdef  SDK_NO_THREAD
	bx r0
#else
	ldr lr, = OS_IrqHandler_ThreadSwitch
	bx r0
#endif
}

asm void OS_IrqHandler_ThreadSwitch (void)
{
#ifdef  SDK_NO_THREAD
#else
#ifndef SDK_THREAD_INFINITY
	ldr r12, = OSi_IrqThreadQueue
#if     (OS_THREAD_MAX_NUM <= 16)
	ldrh r3, [r12]
	mov r0, #0
	cmp r3, #0
	beq @thread_switch
	strh r0, [r12]
#else
	ldr r3, [r12]
	mov r0, #0
	cmp r3, #0
	beq @thread_switch
	str r0, [r12]
#endif
	ldr r12, = OSi_ThreadInfo
	mov r1, #1
	strh r1, [r12, #OS_THREADINFO_OFFSET_ISNEEDRESCHEDULING]
	ldr r12, [r12, #OS_THREADINFO_OFFSET_LIST]
	mov r2, #OS_THREAD_STATE_READY
	@1 :
	cmp r12, #0
	beq @thread_switch
	ldr r0, [r12, #OS_THREAD_OFFSET_ID]
	tst r3, r1, LSL r0
	bne @strne1
	b @strne2
@strne1:
	str r2, [r12, #OS_THREAD_OFFSET_STATE]
@strne2:
	ldr r12, [r12, #OS_THREAD_OFFSET_NEXT]
	b       @1
#else
	ldr r12, = OSi_IrqThreadQueue
	mov r3, #0
	ldr r12, [r12, #OSThreadQueue.head]
	mov r2, #OS_THREAD_STATE_READY
	cmp r12, #0
	beq @thread_switch
	@1: str r2, [r12, #OSThread.state]
	str r3, [r12, #OSThread.queue]
	str r3, [r12, #OSThread.link.prev]
	ldr r0, [r12, #OSThread.link.next]
	str r3, [r12, #OSThread.link.next]
	mov r12, r0
	cmp r12, #0
	bne @1
	ldr r12, = OSi_IrqThreadQueue
	str r3, [r12, #OSThreadQueue.head]
	str r3, [r12, #OSThreadQueue.tail]
	ldr r12, = OSi_ThreadInfo
	mov r1, #1
	strh r1, [r12, #OS_THREADINFO_OFFSET_ISNEEDRESCHEDULING]
#endif

@thread_switch:
	ldr r12, = OSi_ThreadInfo
	ldrh r1, [r12, #OS_THREADINFO_OFFSET_ISNEEDRESCHEDULING]
	cmp r1, #0
	beq @ldreq3
	b @ldreq4
@ldreq3:
	ldr pc, [sp], #4
@ldreq4:
	mov r1, #0
	strh r1, [r12, #OS_THREADINFO_OFFSET_ISNEEDRESCHEDULING]
	mov r3, #HW_PSR_IRQ_MODE | HW_PSR_FIQ_DISABLE | HW_PSR_IRQ_DISABLE | HW_PSR_ARM_STATE
	msr cpsr_c, r3
	add r2, r12, #OS_THREADINFO_OFFSET_LIST
	ldr r1, [r2]
	@11 :
	cmp r1, #0
	bne @ldrneh5
	b @ldrneh6
@ldrneh5:
	ldrh r0, [r1, #OS_THREAD_OFFSET_STATE]
@ldrneh6:
	bne @cmpne7
	b @cmpne8
@cmpne7:
	cmp r0, #OS_THREAD_STATE_READY
@cmpne8:
	bne @ldrne9
	b @ldrne10
@ldrne9:
	ldr r1, [r1, #OS_THREAD_OFFSET_NEXT]
@ldrne10:
	bne     @11
	cmp r1, #0
	bne     @12

_dont_switched_:
	mov r3, #HW_PSR_IRQ_MODE | HW_PSR_IRQ_DISABLE | HW_PSR_ARM_STATE
	msr cpsr_c, r3
	ldr pc, [sp], #4

	@12 :
	ldr r0, [r12, #OS_THREADINFO_OFFSET_CURRENT]
	cmp r1, r0
	beq _dont_switched_
	ldr r3, [r12, #OS_THREADINFO_OFFSET_SWITCHCALLBACK]
	cmp r3, #0
	beq     @13
	stmfd sp !, { r0, r1, r12 }
	mov lr, pc
	bx r3
	ldmfd sp !, { r0, r1, r12 }

	@13:
	str r1, [r12, #OS_THREADINFO_OFFSET_CURRENT]
	mrs r2, SPSR
	str r2, [r0, #OS_THREAD_OFFSET_CONTEXT] !

#if defined(SDK_ARM9)
	stmfd sp !, { r0, r1 }
	add r0, r0, #OS_THREAD_OFFSET_CONTEXT
	add r0, r0, #OS_CONTEXT_CP_CONTEXT
	ldr r1, = CP_SaveContext
	blx r1
	ldmfd sp !, { r0, r1 }
#endif
	ldmib sp !, { r2, r3 }
	stmib r0 !, { r2, r3 }
	ldmib sp !, { r2, r3, r12, r14 }
	stmib r0 !, { r2 - r14        }^
	stmib r0 !, { r14           }
#ifdef  SDK_CONTEXT_HAS_SP_SVC
	mov r3, #HW_PSR_SVC_MODE | HW_PSR_FIQ_DISABLE | HW_PSR_IRQ_DISABLE | HW_PSR_ARM_STATE
	msr cpsr_c, r3
	stmib r0 !, { sp }
#endif

#if defined(SDK_ARM9)
	stmfd sp !, { r1 }
	add r0, r1, #OS_THREAD_OFFSET_CONTEXT
	add r0, r0, #OS_CONTEXT_CP_CONTEXT
	ldr r1, = CPi_RestoreContext
	blx r1
	ldmfd sp !, { r1 }
#endif

#ifdef SDK_CONTEXT_HAS_SP_SVC
	ldr sp, [r1, #OS_THREAD_OFFSET_CONTEXT + OS_CONTEXT_SP_SVC]
	mov r3, #HW_PSR_IRQ_MODE | HW_PSR_FIQ_DISABLE | HW_PSR_IRQ_DISABLE | HW_PSR_ARM_STATE
	msr cpsr_c, r3
#endif
	ldr r2, [r1, #OS_THREAD_OFFSET_CONTEXT] !
	msr SPSR, r2
	ldr r14, [r1, #OS_CONTEXT_PC_PLUS4 - OS_CONTEXT_CPSR]
	ldmib r1, { r0 - r14 }^
	nop
	stmda sp !, { r0 - r3, r12, r14 }
	ldmfd sp !, { pc }
#endif
}

#ifdef SDK_ARM9
#include <nitro/itcm_end.h>
#endif

void OS_WaitIrq (BOOL clear, OSIrqMask irqFlags)
{
#ifdef SDK_NO_THREAD
	OS_WaitInterrupt(clear, irqFlags);

#else
	OSIntrMode enabled = OS_DisableInterrupts();

	if (clear) {
		(void)OS_ClearIrqCheckFlag(irqFlags);
	}

	(void)OS_RestoreInterrupts(enabled);

	while (!(OS_GetIrqCheckFlag() & irqFlags)) {
		OS_SleepThread(&OSi_IrqThreadQueue);
	}
#endif
}

void OS_WaitAnyIrq (void)
{
#ifdef SDK_NO_THREAD
	OS_Halt();
#else
	OS_SleepThread(&OSi_IrqThreadQueue);
#endif
}