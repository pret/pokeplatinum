#include <nitro/os.h>
#include <nitro/mi/wram.h>
#include <nitro/pxi.h>
#include <nitro/spi.h>

#ifndef SDK_TEG
#include <nitro/ctrdg.h>
#endif

#include <nitro/code32.h>
static asm void OSi_WaitVCount0 (void)
{
	mov r12, #HW_REG_BASE
	ldr r1, [r12, #REG_IME_OFFSET]
	str r12, [r12, #REG_IME_OFFSET]

@wait_vcount_0:
	ldrh r0, [r12, #REG_VCOUNT_OFFSET]
	cmp r0, #0
	bne @wait_vcount_0
	str r1, [r12, #REG_IME_OFFSET]
	bx lr
}

#include <nitro/codereset.h>

#pragma profile off
void OS_Init (void)
{
#ifdef SDK_ARM9
	SDK_ASSERT((u32) & (OS_GetSystemWork()->command_area) == HW_CMD_AREA);
#ifdef SDK_ENABLE_ARM7_PRINT
	OS_InitPrintServer();
#endif
	OS_InitArena();
	PXI_Init();
	OS_InitLock();
	OS_InitArenaEx();
	OS_InitIrqTable();
	OS_SetIrqStackChecker();
	OS_InitException();
	MI_Init();
	OS_InitVAlarm();
	OSi_InitVramExclusive();

#ifndef SDK_NO_THREAD
	OS_InitThread();
#endif

#ifndef SDK_SMALL_BUILD
	OS_InitReset();
#endif

#ifndef SDK_TEG
	CTRDG_Init();
#endif

#ifndef SDK_SMALL_BUILD
	CARD_Init();
#endif

#ifndef SDK_TEG
	PM_Init();
#endif
	OSi_WaitVCount0();
#else
	OS_InitArena();
	PXI_Init();
	OS_InitLock();
	OS_InitIrqTable();

#define SDK_EXCEPTION_BUG
#ifndef SDK_EXCEPTION_BUG
	OS_InitException();
#endif

	OS_InitTick();
	OS_InitAlarm();
	OS_InitThread();

#ifndef SDK_SMALL_BUILD
	OS_InitReset();
#endif

#ifndef SDK_TEG
	CTRDG_Init();
#endif

#endif
}

#pragma profile reset