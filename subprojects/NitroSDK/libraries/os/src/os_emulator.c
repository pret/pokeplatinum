#include <nitro.h>

#ifdef SDK_ARM9
#define OSi_CURPROC_LOCKED_FLAG    OS_MAINP_LOCKED_FLAG
#else
#define OSi_CURPROC_LOCKED_FLAG    OS_SUBP_LOCKED_FLAG
#endif

static u32 OSi_ConsoleTypeCache = OSi_CONSOLE_NOT_DETECT;

u32 OSi_GetDeviceType(void);
BOOL OSi_IsRunOnDebugger(void);

BOOL OS_IsRunOnEmulator (void)
{
#ifdef  SDK_ARM9
#ifndef SDK_FINALROM
	static int onEmu = -1;
	u32 val;
	OSIntrMode intr;

	if (onEmu == -1) {
		intr = OS_DisableInterrupts();
		{
			(*(REGType32v *)REG_CLIPMTX_RESULT_0_ADDR) = 0x2468ace0;

			val = *(vu16 *)REG_VCOUNT_ADDR & 0x1ffU;

			if (val == 270) {
				*(vu32 *)0x4fff010 = 0x13579bdf;
				*(vu32 *)0x4fff010 = 0xfdb97531;
				onEmu = TRUE;
			} else  {
				onEmu = FALSE;
			}
		}
		(void)OS_RestoreInterrupts(intr);
	}
	return (BOOL)onEmu;
#else
	return FALSE;
#endif

#else
	return FALSE;
#endif
}

u32 OS_GetConsoleType (void)
{
#if defined(SDK_FINALROM) || defined(SDK_SMALL_BUILD)
	OSi_ConsoleTypeCache = OS_CONSOLE_NITRO | OS_CONSOLE_DEV_CARD | OS_CONSOLE_SIZE_4MB;

#else
	if (OSi_ConsoleTypeCache == OSi_CONSOLE_NOT_DETECT) {
		u32 type = OSi_GetDeviceType();

		if (OS_IsRunOnEmulator()) {
			type |= OS_CONSOLE_ENSATA;
		} else if (OSi_IsRunOnDebugger())   {
			type |= OS_CONSOLE_ISDEBUGGER;
		} else if (type & OS_CONSOLE_DEV_CARTRIDGE)   {
			type |= OS_CONSOLE_ISEMULATOR;
		} else  {
			type |= OS_CONSOLE_NITRO;
		}

		type |= *(u16 *)HW_MMEMCHECKER_SUB;

		OSi_ConsoleTypeCache = type;
	}
#endif

	return OSi_ConsoleTypeCache;
}

u32 OSi_GetDeviceType (void)
{
	BOOL checked = FALSE;
	u16 lockId = (u16)OS_GetLockID();
	u32 result = 0;

	do {
		s32 ret = OS_LOCK_ERROR;
		OSIntrMode enabled = OS_DisableInterrupts();

		if ((OS_ReadOwnerOfLockCartridge() & OSi_CURPROC_LOCKED_FLAG)
		    || ((ret = (s32)OS_TryLockCartridge(lockId)) == OS_LOCK_SUCCESS)) {

			result =
				(u32)(((((vu32 *)HW_CTRDG_ROM)[0] == (u32)'TNIN') &&
				       (((vu32 *)HW_CTRDG_ROM)[1] == (u32)'ODNE')) ?
				      OS_CONSOLE_DEV_CARTRIDGE : OS_CONSOLE_DEV_CARD);

			if (ret == OS_LOCK_SUCCESS) {
				(void)OS_UnlockCartridge(lockId);
				checked = TRUE;
			}
		}

		(void)OS_RestoreInterrupts(enabled);
	} while (!checked);

	return result;
}

BOOL OSi_IsRunOnDebugger (void)
{
	u16 *checkAddress = (u16 *)((*(u16 *)HW_CHECK_DEBUGGER_SW ==
	                             0) ? HW_CHECK_DEBUGGER_BUF1 : HW_CHECK_DEBUGGER_BUF2);

	return (*checkAddress == 1) ? TRUE : FALSE;
}