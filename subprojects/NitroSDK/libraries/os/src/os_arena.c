#include <nitro.h>

#define OSi_TRUNC(n, a)     (((u32) (n)) & ~((a) - 1))
#define OSi_ROUND(n, a)     (((u32) (n) + (a) - 1) & ~((a) - 1))

#define OS_ERR_GETARENAHI_INIT     "OS_GetArenaHi: init in advance"
#define OS_ERR_GETARENAHI_INVALID  "OS_GetArenaHi: invalid arena (hi<lo)"
#define OS_ERR_GETARENALO_INIT     "OS_GetArenaLo: init in advance"
#define OS_ERR_GETARENALO_INVALID  "OS_GetArenaLo: invalid arena (hi<lo)"

#define SDK_ARENAID_ASSERT( id )        SDK_ASSERT((u32)id < OS_ARENA_MAX )

#define OSi_GetArenaInfo()              (*(OSArenaInfo *)HW_ARENA_INFO_BUF)

extern void SDK_MAIN_ARENA_LO(void);
#define OSi_MAIN_ARENA_LO_DEFAULT               ((u32)SDK_MAIN_ARENA_LO)
#define OSi_MAIN_ARENA_HI_DEFAULT               HW_MAIN_MEM_MAIN_END

#ifdef SDK_ARM7
extern void SDK_SUBPRIV_ARENA_LO(void);
#define OSi_MAIN_SUBPRIV_ARENA_LO_DEFAULT       ((u32)SDK_SUBPRIV_ARENA_LO)
#define OSi_MAIN_SUBPRIV_ARENA_HI_DEFAULT       HW_MAIN_MEM_SUB_END
#endif

#ifdef SDK_ARM9
extern void SDK_SECTION_ARENA_EX_START(void);
#define OSi_MAINEX_ARENA_LO_DEFAULT             ((u32)SDK_SECTION_ARENA_EX_START)
#define OSi_MAINEX_ARENA_HI_DEFAULT             HW_MAIN_MEM_DEBUGGER
#endif

#ifdef SDK_ARM9

extern void SDK_SECTION_ARENA_DTCM_START(void);
#define OSi_DTCM_ARENA_LO_DEFAULT               ((u32)SDK_SECTION_ARENA_DTCM_START)

extern void SDK_SECTION_ARENA_ITCM_START(void);
#define OSi_ITCM_ARENA_LO_DEFAULT               ((u32)SDK_SECTION_ARENA_ITCM_START)
#endif

#define OSi_WRAM_MAIN_ARENA_LO_DEFAULT          HW_WRAM
#define OSi_WRAM_MAIN_ARENA_HI_DEFAULT          HW_WRAM

#ifdef SDK_ARM7
extern void SDK_WRAM_ARENA_LO(void);
#define OSi_WRAM_SUB_ARENA_LO_DEFAULT           ((u32)SDK_WRAM_ARENA_LO)
#define OSi_WRAM_SUB_ARENA_HI_DEFAULT           HW_WRAM_END
#endif

#ifdef SDK_ARM7
#define OSi_WRAM_SUBPRIV_ARENA_LO_DEFAULT       HW_PRV_WRAM
#define OSi_WRAM_SUBPRIV_ARENA_HI_DEFAULT       HW_PRV_WRAM_END
#endif

extern void SDK_SYS_STACKSIZE(void);
#define OSi_SYS_STACKSIZE               ((int)SDK_SYS_STACKSIZE)
extern void SDK_IRQ_STACKSIZE(void);
#define OSi_IRQ_STACKSIZE               ((int)SDK_IRQ_STACKSIZE)

static BOOL OSi_Initialized = FALSE;

#ifdef SDK_ARM9
#ifdef SDK_4M
BOOL OSi_MainExArenaEnabled = FALSE;
#else
BOOL OSi_MainExArenaEnabled = TRUE;
#endif
#endif

#ifdef SDK_ARM9

void OS_InitArena (void)
{

	if (OSi_Initialized) {
		return;
	}
	OSi_Initialized = TRUE;

	OS_InitArenaHiAndLo(OS_ARENA_MAIN);

	OS_SetArenaLo(OS_ARENA_MAINEX, (void *)0);
	OS_SetArenaHi(OS_ARENA_MAINEX, (void *)0);

	OS_InitArenaHiAndLo(OS_ARENA_ITCM);

	OS_InitArenaHiAndLo(OS_ARENA_DTCM);

	OS_InitArenaHiAndLo(OS_ARENA_SHARED);

	OS_InitArenaHiAndLo(OS_ARENA_WRAM_MAIN);
}
#endif

#ifdef SDK_ARM7

void OS_InitArena (void)
{

	if (OSi_Initialized) {
		return;
	}
	OSi_Initialized = TRUE;

	OS_InitArenaHiAndLo(OS_ARENA_MAIN_SUBPRIV);

	OS_InitArenaHiAndLo(OS_ARENA_WRAM_SUB);

	OS_InitArenaHiAndLo(OS_ARENA_WRAM_SUBPRIV);
}
#endif

#ifdef SDK_ARM9

void OS_InitArenaEx (void)
{
	OS_InitArenaHiAndLo(OS_ARENA_MAINEX);

	if (!OSi_MainExArenaEnabled ||
	    ((OS_GetConsoleType() & OS_CONSOLE_SIZE_MASK) == OS_CONSOLE_SIZE_4MB)) {

		OS_SetProtectionRegion(1, HW_MAIN_MEM_MAIN, 4MB);

#if     HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x1000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 4KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x2000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 8KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x4000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 16KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x8000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 32KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x10000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 64KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x20000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 128KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x40000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 256KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x80000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 512KB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x100000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 1MB);
#elif   HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x200000
		OS_SetProtectionRegion(2, HW_MAIN_MEM_MAIN_END, 2MB);
#else
#pragma message(ERROR: Size unmatch HW_MAIN_MEM_MAIN_END)
#endif
	}
}
#endif

void *OS_GetArenaInfo (void)
{
	return (void *)&OSi_GetArenaInfo();
}

void *OS_GetArenaHi (OSArenaId id)
{
	SDK_ASSERT(OSi_Initialized);
	SDK_ARENAID_ASSERT(id);
	SDK_ASSERTMSG((u32)OSi_GetArenaInfo().lo[id] != 0xffffffff, OS_ERR_GETARENALO_INIT);
	SDK_ASSERTMSG((u32)OSi_GetArenaInfo().lo[id] <= (u32)OSi_GetArenaInfo().hi[id],
	              OS_ERR_GETARENALO_INVALID);

	return OSi_GetArenaInfo().hi[id];
}

void *OS_GetArenaLo (OSArenaId id)
{
	SDK_ASSERT(OSi_Initialized);
	SDK_ARENAID_ASSERT(id);
	SDK_ASSERTMSG((u32)OSi_GetArenaInfo().lo[id] != 0xffffffff, OS_ERR_GETARENALO_INIT);
	SDK_ASSERTMSG((u32)OSi_GetArenaInfo().lo[id] <= (u32)OSi_GetArenaInfo().hi[id],
	              OS_ERR_GETARENALO_INVALID);

	return OSi_GetArenaInfo().lo[id];
}

void *OS_GetInitArenaHi (OSArenaId id)
{
	SDK_ASSERT(OSi_Initialized);
	SDK_ARENAID_ASSERT(id);

	switch (id) {
#ifdef SDK_ARM9
	case OS_ARENA_MAIN:
		return (void *)OSi_MAIN_ARENA_HI_DEFAULT;
	case OS_ARENA_MAINEX:
		if (!OSi_MainExArenaEnabled ||
		    ((OS_GetConsoleType() & OS_CONSOLE_SIZE_MASK) == OS_CONSOLE_SIZE_4MB)) {
			return (void *)0;
		} else  {
			return (void *)OSi_MAINEX_ARENA_HI_DEFAULT;
		}
	case OS_ARENA_ITCM:
		return (void *)HW_ITCM_ARENA_HI_DEFAULT;
	case OS_ARENA_DTCM:
	{
		u32 irqStackLo;
		u32 sysStackLo;

		irqStackLo = (u32)HW_DTCM_IRQ_STACK_END - OSi_IRQ_STACKSIZE;

		if (OSi_SYS_STACKSIZE == 0) {
			sysStackLo = HW_DTCM;
			if (sysStackLo < OSi_DTCM_ARENA_LO_DEFAULT) {
				sysStackLo = OSi_DTCM_ARENA_LO_DEFAULT;
			}
		} else if (OSi_SYS_STACKSIZE < 0)   {
			sysStackLo = OSi_DTCM_ARENA_LO_DEFAULT - OSi_SYS_STACKSIZE;
		} else  {
			sysStackLo = irqStackLo - OSi_SYS_STACKSIZE;
		}
		SDK_ASSERT((u32)OSi_DTCM_ARENA_LO_DEFAULT <= sysStackLo && sysStackLo < irqStackLo);
		return (void *)sysStackLo;
	}
	case OS_ARENA_SHARED:
		return (void *)HW_SHARED_ARENA_HI_DEFAULT;
	case OS_ARENA_WRAM_MAIN:
		return (void *)(void *)OSi_WRAM_MAIN_ARENA_HI_DEFAULT;
#else
	case OS_ARENA_MAIN_SUBPRIV:
		return (void *)OSi_MAIN_SUBPRIV_ARENA_HI_DEFAULT;
	case OS_ARENA_WRAM_SUB:
		return (void *)OSi_WRAM_SUB_ARENA_HI_DEFAULT;
	case OS_ARENA_WRAM_SUBPRIV:
	{
		u32 irqStackLo;
		u32 sysStackLo;

		irqStackLo = (u32)HW_PRV_WRAM_IRQ_STACK_END - OSi_IRQ_STACKSIZE;
		sysStackLo = (u32)HW_PRV_WRAM;

		if ((u32)SDK_WRAM_ARENA_LO > (u32)HW_PRV_WRAM) {
			sysStackLo = (u32)SDK_WRAM_ARENA_LO;
		}

		if (OSi_SYS_STACKSIZE == 0) {

		} else if (OSi_SYS_STACKSIZE < 0)   {
			sysStackLo -= OSi_SYS_STACKSIZE;
		} else  {
			sysStackLo = irqStackLo - OSi_SYS_STACKSIZE;
		}
		SDK_ASSERT((u32)HW_PRV_WRAM <= sysStackLo && sysStackLo < irqStackLo);
		return (void *)sysStackLo;
	}
#endif
	default:
		SDK_WARNING(0, "Bad arena id");
	}

	return NULL;
}

void *OS_GetInitArenaLo (OSArenaId id)
{
	SDK_ASSERT(OSi_Initialized);
	SDK_ARENAID_ASSERT(id);

	switch (id) {
#ifdef SDK_ARM9
	case OS_ARENA_MAIN:
		return (void *)OSi_MAIN_ARENA_LO_DEFAULT;
	case OS_ARENA_MAINEX:
		if (!OSi_MainExArenaEnabled ||
		    ((OS_GetConsoleType() & OS_CONSOLE_SIZE_MASK) == OS_CONSOLE_SIZE_4MB)) {
			return (void *)0;
		} else  {
			return (void *)OSi_MAINEX_ARENA_LO_DEFAULT;
		}
	case OS_ARENA_ITCM:
		return (void *)OSi_ITCM_ARENA_LO_DEFAULT;
	case OS_ARENA_DTCM:
		return (void *)OSi_DTCM_ARENA_LO_DEFAULT;
	case OS_ARENA_SHARED:
		return (void *)HW_SHARED_ARENA_LO_DEFAULT;
	case OS_ARENA_WRAM_MAIN:
		return (void *)OSi_WRAM_MAIN_ARENA_LO_DEFAULT;
#else
	case OS_ARENA_MAIN_SUBPRIV:
		return (void *)OSi_MAIN_SUBPRIV_ARENA_LO_DEFAULT;
	case OS_ARENA_WRAM_SUB:
	{
		u32 wramSubLo = OSi_WRAM_SUB_ARENA_LO_DEFAULT;
		if ((u32)HW_WRAM_END < (u32)wramSubLo) {
			wramSubLo = (u32)HW_WRAM_END;
		}
		return (void *)wramSubLo;
	}
	case OS_ARENA_WRAM_SUBPRIV:
	{
		u32 privWramLo = OSi_WRAM_SUBPRIV_ARENA_LO_DEFAULT;
		if ((u32)SDK_WRAM_ARENA_LO > (u32)privWramLo) {
			privWramLo = (u32)SDK_WRAM_ARENA_LO;
		}
		return (void *)privWramLo;
	}
#endif
	default:
		SDK_WARNING(0, "Bad arena id");
	}

	return NULL;
}

void OS_SetArenaHi (OSArenaId id, void *newHi)
{
	SDK_ASSERT(OSi_Initialized);
	SDK_ARENAID_ASSERT(id);

	OSi_GetArenaInfo().hi[id] = newHi;
}

void OS_SetArenaLo (OSArenaId id, void *newLo)
{
	SDK_ASSERT(OSi_Initialized);
	SDK_ARENAID_ASSERT(id);

	OSi_GetArenaInfo().lo[id] = newLo;
}

void *OS_AllocFromArenaLo (OSArenaId id, u32 size, u32 align)
{
	void *ptr;
	u8 *arenaLo;

	ptr = OS_GetArenaLo(id);
	if (!ptr) {
		return NULL;
	}

	arenaLo = ptr = (void *)OSi_ROUND(ptr, align);
	arenaLo += size;
	arenaLo = (u8 *)OSi_ROUND(arenaLo, align);

	if (arenaLo > OS_GetArenaHi(id)) {
		return NULL;
	}

	OS_SetArenaLo(id, arenaLo);

	return ptr;
}

void *OS_AllocFromArenaHi (OSArenaId id, u32 size, u32 align)
{
	void *ptr;
	u8 *arenaHi;

	arenaHi = OS_GetArenaHi(id);
	if (!arenaHi) {
		return NULL;
	}

	arenaHi = (u8 *)OSi_TRUNC(arenaHi, align);
	arenaHi -= size;
	arenaHi = ptr = (void *)OSi_TRUNC(arenaHi, align);

	if (arenaHi < OS_GetArenaLo(id)) {
		return NULL;
	}

	OS_SetArenaHi(id, arenaHi);

	return ptr;
}

#ifdef SDK_ARM9

void OS_EnableMainExArena (void)
{
	SDK_ASSERT(!OSi_Initialized);

	OSi_MainExArenaEnabled = TRUE;
}

void OS_DisableMainExArena (void)
{
	SDK_ASSERT(!OSi_Initialized);

	OSi_MainExArenaEnabled = FALSE;
}
#endif