#include <nitro/os.h>
#include <nitro/code32.h>

#define SDK_AVOID_FLUSH

asm BOOL DC_Enable (void)
{
	mrc p15, 0, r1, c1, c0, 0
	and r0, r1, #HW_C1_DCACHE_ENABLE
	mov r0, r0, LSR #HW_C1_DCACHE_ENABLE_SHIFT
	orr r1, r1, #HW_C1_DCACHE_ENABLE
	mcr p15, 0, r1, c1, c0, 0
	bx lr
}

asm BOOL DC_Disable (void)
{
	mrc p15, 0, r1, c1, c0, 0
	and r0, r1, #HW_C1_DCACHE_ENABLE
	mov r0, r0, LSR #HW_C1_DCACHE_ENABLE_SHIFT
	bic r1, r1, #HW_C1_DCACHE_ENABLE
	mcr p15, 0, r1, c1, c0, 0
	bx lr
}

asm BOOL DC_Restore (register BOOL enable)
{
	cmp r0, #0
	moveq r2, #0
	movne r2, #HW_C1_DCACHE_ENABLE
	mrc p15, 0, r1, c1, c0, 0
	and r0, r1, #HW_C1_DCACHE_ENABLE
	mov r0, r0, LSR #HW_C1_DCACHE_ENABLE_SHIFT
	bic r1, r1, #HW_C1_DCACHE_ENABLE
	orr r1, r1, r2
	mcr p15, 0, r1, c1, c0, 0
	bx lr
}

asm void DC_InvalidateAll (void)
{
	mov r0, #0
	mcr p15, 0, r0, c7, c6, 0
	bx lr
}

asm void DC_StoreAll (void)
{
	mov r1, #0

	@1:
	mov r0, #0
	
    @2:
	orr r2, r1, r0
	mcr p15, 0, r2, c7, c10, 2
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, #HW_DCACHE_SIZE / 4
	blt @2
	add r1, r1, #1 << HW_C7_CACHE_SET_NO_SHIFT
	cmp r1, #0
	bne @1
	bx lr
}

asm void DC_FlushAll (void)
{
	mov r12, #0
	mov r1, #0

	@1:
	mov r0, #0

	@2:
	orr r2, r1, r0
	mcr p15, 0, r12, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, #HW_DCACHE_SIZE / 4
	blt @2
	add r1, r1, #1 << HW_C7_CACHE_SET_NO_SHIFT
	cmp r1, #0
	bne @1
	bx lr
}

asm void DC_InvalidateRange (register void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1

	@1:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	bx lr
}

asm void DC_StoreRange (register const void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1

	@1 :
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	bx lr
}

asm void DC_FlushRange (register const void *startAddr, register u32 nBytes)
{
	mov r12, #0
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1
	
    @1:
	mcr p15, 0, r12, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	bx lr
}

asm void DC_TouchRange (register const void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1

	@1:
	pld[r0]
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	bx lr
}

asm void DC_LockdownRange (register const void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1
	mrc p15, 0, r3, c9, c0, 0
	and r3, r3, #HW_C9_LOCKDOWN_SET_NO_MASK
	cmp r3, #3
	mvneq r0, #0
	bxeq lr
	stmfd sp !, { lr, r0, r1 }
	ldr r0, = OS_DisableInterrupts
	blx r0
	mov r2, r0
	ldmfd sp !, { lr, r0, r1 }
	orr r3, r3, #HW_C9_LOCKDOWN_LOAD_MODE
	mcr p15, 0, r3, c9, c0, 0

	@111 :
	mcr p15, 0, r0, c7, c14, 1
	ldr r12, [r0]
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @111
	add r3, r3, #1
	bic r0, r3, #HW_C9_LOCKDOWN_LOAD_MODE
	mcr p15, 0, r3, c9, c0, 0
	stmfd sp !, { lr }
	mov r0, r2
	ldr r1, = OS_RestoreInterrupts
	blx r1
	ldmfd sp !, { lr }
	bx lr
}

asm void DC_UnlockdownAll (void)
{
	mov r3, #0
	mcr p15, 0, r3, c9, c0, 0
	bx lr
}

asm void DC_Unlockdown (register u32 num)
{
	mrc p15, 0, r3, c9, c0, 0
	and r3, r3, #HW_C9_LOCKDOWN_SET_NO_MASK
	subs r3, r3, r0
	movmi r3, #0
	mcr p15, 0, r3, c9, c0, 0
	bx lr
}

asm void DC_WaitWriteBufferEmpty (void)
{
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
}

asm BOOL IC_Enable (void)
{
	mrc p15, 0, r1, c1, c0, 0
	and r0, r1, #HW_C1_ICACHE_ENABLE
	mov r0, r0, LSR #HW_C1_ICACHE_ENABLE_SHIFT
	orr r1, r1, #HW_C1_ICACHE_ENABLE
	mcr p15, 0, r1, c1, c0, 0
	bx lr
}

asm BOOL IC_Disable (void)
{
	mrc p15, 0, r1, c1, c0, 0
	and r0, r1, #HW_C1_ICACHE_ENABLE
	mov r0, r0, LSR #HW_C1_ICACHE_ENABLE_SHIFT
	bic r1, r1, #HW_C1_ICACHE_ENABLE
	mcr p15, 0, r1, c1, c0, 0
	bx lr
}

asm BOOL IC_Restore (register BOOL enable)
{
	cmp r0, #0
	moveq r2, #0
	movne r2, #HW_C1_ICACHE_ENABLE
	mrc p15, 0, r1, c1, c0, 0
	and r0, r1, #HW_C1_ICACHE_ENABLE
	mov r0, r0, LSR #HW_C1_ICACHE_ENABLE_SHIFT
	bic r1, r1, #HW_C1_ICACHE_ENABLE
	orr r1, r1, r2
	mcr p15, 0, r1, c1, c0, 0
	bx lr
}

asm void IC_InvalidateAll (void)
{
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	bx lr
}

asm void IC_InvalidateRange (register void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1

	@1:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	bx lr
}

asm void IC_PrefetchRange (register const void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1

	@1:
	mcr p15, 0, r0, c7, c13, 1
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	bx lr
}

#include <nitro/itcm_begin.h>

asm void IC_LockdownRange (register const void *startAddr, register u32 nBytes)
{
	add r1, r1, r0
	bic r0, r0, #HW_CACHE_LINE_SIZE - 1
	mrc p15, 0, r3, c9, c0, 1
	and r3, r3, #HW_C9_LOCKDOWN_SET_NO_MASK
	cmp r3, #3
	mvneq r0, #0
	bxeq lr
	stmfd sp !, { lr, r0, r1 }
	ldr r0, = OS_DisableInterrupts
	blx r0
	mov r2, r0
	ldmfd sp !, { lr, r0, r1 }
	orr r3, r3, #HW_C9_LOCKDOWN_LOAD_MODE
	mcr p15, 0, r3, c9, c0, 1

	@1:
	mcr p15, 0, r0, c7, c5, 1
	mcr p15, 0, r0, c7, c13, 1
	add r0, r0, #HW_CACHE_LINE_SIZE
	cmp r0, r1
	blt @1
	add r3, r3, #1
	bic r0, r3, #HW_C9_LOCKDOWN_LOAD_MODE
	mcr p15, 0, r3, c9, c0, 1
	stmfd sp !, { lr }
	mov r0, r2
	ldr r1, = OS_RestoreInterrupts
	blx r1
	ldmfd sp !, { lr }
	bx lr
}

#include <nitro/itcm_end.h>

asm void IC_UnlockdownAll (void)
{
	mov r3, #0
	mcr p15, 0, r3, c9, c0, 1
	bx lr
}

asm void IC_Unlockdown (register u32 num)
{
	mrc p15, 0, r3, c9, c0, 1
	and r3, r3, #HW_C9_LOCKDOWN_SET_NO_MASK
	subs r3, r3, r0
	movmi r3, #0
	mcr p15, 0, r3, c9, c0, 1
	bx lr
}

#include <nitro/codereset.h>