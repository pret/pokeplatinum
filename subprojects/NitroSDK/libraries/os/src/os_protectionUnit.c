#include <nitro/os.h>
#include <nitro/code32.h>

asm void OS_EnableProtectionUnit (void)
{
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #HW_C1_PROTECT_UNIT_ENABLE
	mcr p15, 0, r0, c1, c0, 0
	bx lr
}

asm void OS_DisableProtectionUnit (void)
{
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #HW_C1_PROTECT_UNIT_ENABLE
	mcr p15, 0, r0, c1, c0, 0
	bx lr
}

#include <nitro/codereset.h>