#include <nitro/hw/common/armArch.h>
#include <nitro/memorymap.h>
#include <nitro/os.h>

#ifdef SDK_ARM9
#define OSi_ExPrintf OS_Printf

#else
#define OSi_ExPrintf OS_Printf
#endif

static asm void OSi_ExceptionHandler(void);
static asm void OSi_GetAndDisplayContext(void);
static asm void OSi_SetExContext(void);
static void OSi_DisplayExContext(void);

typedef struct {
	OSContext context;
	u32 cp15;
	u32 spsr;
	u32 exinfo;
	u32 debug[4];
} OSiExContext;

static OSiExContext OSi_ExContext;

static OSExceptionHandler OSi_UserExceptionHandler;
static void *OSi_UserExceptionHandlerArg;

static void *OSi_DebuggerHandler = NULL;

#include <nitro/code32.h>
asm void OS_SetExceptionVectorUpper (void)
{
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #HW_C1_EXCEPT_VEC_UPPER
	mcr p15, 0, r0, c1, c0, 0
	bx lr
}

asm void OS_SetExceptionVectorLower (void)
{
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #HW_C1_EXCEPT_VEC_UPPER
	mcr p15, 0, r0, c1, c0, 0
	bx lr
}
#include <nitro/codereset.h>

#define HW_EXCP_VECTOR_BUF_FOR_DEBUGGER  0x027ffd9c

void OS_InitException (void)
{
	if (0x2600000 <= *(u32 *)HW_EXCP_VECTOR_BUF_FOR_DEBUGGER
	    && *(u32 *)HW_EXCP_VECTOR_BUF_FOR_DEBUGGER < 0x2800000) {
		OSi_DebuggerHandler = *(void **)HW_EXCP_VECTOR_BUF_FOR_DEBUGGER;
	} else  {
		OSi_DebuggerHandler = NULL;
	}

	if (!OSi_DebuggerHandler) {
		*(u32 *)(HW_EXCP_VECTOR_BUF_FOR_DEBUGGER) = (u32)OSi_ExceptionHandler;
		*(u32 *)(HW_EXCP_VECTOR_BUF) = (u32)OSi_ExceptionHandler;
	}

	OSi_UserExceptionHandler = NULL;
}

#if defined(SDK_ARM9)

#include <nitro/code32.h>
static u32 OSi_ExceptionHookStack[8];
asm static void OSi_DebuggerExceptionHook (void)
{
	ldr r12, = OSi_ExceptionHookStack
	stmia r12, {r0 - r4, sp, lr}
	mrs r4, CPSR
	mrs r0, CPSR
	and r0, r0, #0x1f
	teq r0, #0x17
	beq user_exception
	teq r0, #0x1b
	bne user_exception_end
is_und:
	bic r0, sp, #1
	ldr r1, [r0, #4]
	ldr r0, [r0, #12]
	tst r1, #0x20
	beq is_und_arm
is_und_thumb:
	bic r0, r0, #1
	ldrh r0, [r0, #- 2]
	ldr r1, = 0x0000EFFF
	cmp r0, r1
	beq user_exception_end
	ldr r1, = 0x0000DEFE
	cmp r0, r1
	beq user_exception_end
	ldr r1, = 0x0000BE00
	cmp r0, r1
	beq user_exception_end
	b user_exception
is_und_arm:
	bic r0, r0, #3
	ldr r0, [r0, #- 4]
	ldr r1, = 0xE7FFFFFF
	cmp r0, r1
	beq user_exception_end
	ldr r1, = 0xE7FDDEFE
	cmp r0, r1
	beq user_exception_end
	ldr r1, = 0xE6000010
	cmp r0, r1
	beq user_exception_end
	b user_exception
user_exception:
	ldmia r12, {r0 - r1}
	ldr r12, = HW_ITCM_END
	stmfd r12 !, {r0 - r3, sp, lr}
	and r0, sp, #1
	mov sp, r12
	bl OSi_GetAndDisplayContext
	ldmfd sp !, {r0 - r3, r12, lr}
	mov sp, r12
user_exception_end:
	msr CPSR_cxsf, r4
	ldr r12, = OSi_ExceptionHookStack
	ldmia r12, {r0 - r4, sp, lr}
	ldr r12, = OSi_DebuggerHandler
	ldr r12, [r12]
	cmp r12, #0
	bxne r12
	bx lr
}
#include <nitro/codereset.h>

void OS_EnableUserExceptionHandlerOnDebugger (void)
{
	if (OSi_DebuggerHandler) {
		*(u32 *)(HW_EXCP_VECTOR_BUF_FOR_DEBUGGER) = (u32)OSi_DebuggerExceptionHook;
	}
}
#endif

void OS_SetUserExceptionHandler (OSExceptionHandler handler, void *arg)
{
	OSi_UserExceptionHandler = handler;
	OSi_UserExceptionHandlerArg = arg;
}

#include <nitro/code32.h>
asm void OSi_ExceptionHandler (void)
{
	ldr r12, = OSi_DebuggerHandler
	ldr r12, [r12]
	cmp r12, #0
	bne @movne1
	b @movne2
@movne1:
	mov lr, pc
@movne2:
	bne @bxne1
	b @bxne2
@bxne1:
	bx r12
@bxne2:

#ifdef SDK_ARM9
	ldr r12, = HW_ITCM_END
#else
	ldr r12, = 0x3806000
#endif
	stmfd r12 !, {r0 - r3, sp, lr}
	and r0, sp, #1
	mov sp, r12
	mrs r1, CPSR
	and r1, r1, #0x1f
	teq r1, #0x17
	bne @10
	bl OSi_GetAndDisplayContext
	b usr_return

	@10:
	teq r1, #0x1b
	bne usr_return
	bl OSi_GetAndDisplayContext

usr_return:
	ldr r12, = OSi_DebuggerHandler
	ldr r12, [r12]
	cmp r12, #0
	@1: beq @1
	@2:
	mov r0, r0
	b @2
	ldmfd sp !, {r0 - r3, r12, lr}
	mov sp, r12
	bx lr
}

static asm void OSi_GetAndDisplayContext (void)
{
	stmfd sp !, {r0, lr}
	bl OSi_SetExContext
	bl OSi_DisplayExContext
	ldmfd sp !, {r0, lr}
	bx lr
}

static asm void OSi_SetExContext (void)
{
	ldr r1, = OSi_ExContext;
	mrs r2, CPSR
	str r2, [r1, #OSiExContext.debug[1]]
	str r0, [r1, #OSiExContext.exinfo]
	ldr r0, [r12, #0]
	str r0, [r1, #OS_CONTEXT_R0]
	ldr r0, [r12, #4]
	str r0, [r1, #OS_CONTEXT_R1]
	ldr r0, [r12, #8]
	str r0, [r1, #OS_CONTEXT_R2]
	ldr r0, [r12, #12]
	str r0, [r1, #OS_CONTEXT_R3]
	ldr r2, [r12, #16]
	bic r2, r2, #1
	add r0, r1, #OS_CONTEXT_R4
	stmia r0, {r4 - r11}
	str r12, [r1, #OSiExContext.debug[0]]

#ifdef SDK_ARM9
	ldr r0, [r2, #0]
	str r0, [r1, #OSiExContext.cp15]
	ldr r3, [r2, #4]
	str r3, [r1, #OS_CONTEXT_CPSR]
	ldr r0, [r2, #8]
	str r0, [r1, #OS_CONTEXT_R12]
	ldr r0, [r2, #12]
	str r0, [r1, #OS_CONTEXT_PC_PLUS4]
#else
	mov r0, #0
	str r0, [r1, #OSiExContext.cp15]
	ldr r3, [r2, #0]
	str r3, [r1, #OS_CONTEXT_CPSR]
	ldr r0, [r2, #4]
	str r0, [r1, #OS_CONTEXT_R12]
	ldr r0, [r2, #8]
	str r0, [r1, #OS_CONTEXT_PC_PLUS4]
#endif
	mrs r0, CPSR
	orr r3, r3, #0x80
	bic r3, r3, #0x20
	msr CPSR_cxsf, r3
	str sp, [r1, #OS_CONTEXT_R13]
	str lr, [r1, #OS_CONTEXT_R14]
	mrs r2, SPSR
	str r2, [r1, #OSiExContext.debug[3]]
	msr CPSR_cxsf, r0
	bx lr
}

static void OSi_DisplayExContext (void)
{
#ifndef SDK_FINALROM
	int i;

	OSi_ExPrintf("**** Exception Occurred ****\n");

	for (i = 0; i < 13; i++) {
		OSi_ExPrintf("R%02d=%08X  %c", i, OSi_ExContext.context.r[i], ((i & 3) == 3) ? '\n' : ' ');
	}
	OSi_ExPrintf("SP =%08X   ", OSi_ExContext.context.sp);
	OSi_ExPrintf("LR =%08X   ", OSi_ExContext.context.lr);
	OSi_ExPrintf("PC =%08X\n", OSi_ExContext.context.pc_plus4);

#ifdef SDK_ARM9
	OSi_ExPrintf("  CPSR=%08X  SPSR=%08X  CP15=%08X\n",
	             OSi_ExContext.context.cpsr, OSi_ExContext.spsr, OSi_ExContext.cp15);
#else
	OSi_ExPrintf("  CPSR=%08X  SPSR=%08X\n", OSi_ExContext.context.cpsr, OSi_ExContext.spsr);
#endif
	OSi_ExPrintf("\n\n");
#endif
	if (OSi_UserExceptionHandler) {
		asm {
			mrs r2, CPSR
			mov r0, sp
			ldr r1, = 0x9f
			msr CPSR_cxsf, r1
			mov r1, sp
			mov sp, r0
			stmfd sp !, {r1, r2}
#ifdef SDK_ARM9
			bl OS_EnableProtectionUnit
#endif
			ldr r0, = OSi_ExContext
			ldr r1, = OSi_UserExceptionHandlerArg
			ldr r1, [r1]
			ldr r12, = OSi_UserExceptionHandler
			ldr r12, [r12]
			ldr lr, = @1
			bx r12
			@1:
#ifdef SDK_ARM9
			bl OS_DisableProtectionUnit
#endif
			ldmfd sp !, {r1, r2}
			mov sp, r1
			msr CPSR_cxsf, r2

		}
	}
}

#include <nitro/codereset.h>