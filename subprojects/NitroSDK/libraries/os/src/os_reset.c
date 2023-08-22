#include <nitro.h>
#include <nitro/mb.h>
#include <nitro/snd/common/global.h>
#include <nitro/card.h>

#include <nitro/code32.h>

extern void SDK_IRQ_STACKSIZE(void);

#define OS_PXI_COMMAND_RESET      0x10

#define OS_PXI_COMMAND_MASK       0x00007f00
#define OS_PXI_COMMAND_SHIFT      8
#define OS_PXI_DATA_MASK          0x000000ff
#define OS_PXI_DATA_SHIFT         0

#ifdef SDK_ARM9
#define OSi_HW_DTCM               SDK_AUTOLOAD_DTCM_START
#endif

#ifdef SDK_ARM9
static void OSi_CpuClear32(register u32 data, register void *destp, register u32 size);
static void OSi_ReloadRomData(void);
static void OSi_ReadCardRom32(u32 src, void *dst, int len);
#endif

static void OSi_CommonCallback(PXIFifoTag tag, u32 data, BOOL err);
static void OSi_DoResetSystem(void);
static void OSi_DoBoot(void);
static void OSi_SendToPxi(u16 data);

static u16 OSi_IsInitReset = FALSE;
static vu16 OSi_IsResetOccurred = FALSE;

void OS_InitReset (void)
{
	if (OSi_IsInitReset) {
		return;
	}
	OSi_IsInitReset = TRUE;

#ifdef SDK_ARM9

	PXI_Init();
	while (!PXI_IsCallbackReady(PXI_FIFO_TAG_OS, PXI_PROC_ARM7)) {
	}
#endif

	PXI_SetFifoRecvCallback(PXI_FIFO_TAG_OS, OSi_CommonCallback);
}

BOOL OS_IsResetOccurred (void)
{
	return OSi_IsResetOccurred;
}

static void OSi_CommonCallback (PXIFifoTag tag, u32 data, BOOL err)
{
#pragma unused( tag, err )
	u16 command;
	u16 commandArg;

	command = (u16)((data & OS_PXI_COMMAND_MASK) >> OS_PXI_COMMAND_SHIFT);
	commandArg = (u16)((data & OS_PXI_DATA_MASK) >> OS_PXI_DATA_SHIFT);

#ifdef SDK_ARM9
	if (command == OS_PXI_COMMAND_RESET) {
		OSi_IsResetOccurred = TRUE;
	} else {
#ifndef SDK_FINALROM
		OS_Panic("unknown command");
#else
		OS_Panic("");
#endif
	}

#else
	if (command == OS_PXI_COMMAND_RESET) {
		OSi_IsResetOccurred = TRUE;
	} else {
#ifndef SDK_FINALROM
		OS_Panic("unknown command");
#else
		OS_Panic("");
#endif
	}
#endif
}

static void OSi_SendToPxi (u16 data)
{
	u32 pxi_send_data;

	pxi_send_data = ((u32)data) << OS_PXI_COMMAND_SHIFT;
	while (PXI_SendWordByFifo(PXI_FIFO_TAG_OS, pxi_send_data, FALSE) != PXI_FIFO_SUCCESS) {
	}
}

#define RESET_HW_DTCM_IRQ_STACK_END SDK_AUTOLOAD_DTCM_START + 0x00003fc0 - HW_SVC_STACK_SIZE

#ifdef SDK_ARM9
void OS_ResetSystem (u32 parameter)
{

	if (MB_IsMultiBootChild()) {
#ifndef SDK_FINALROM
		OS_Panic("cannot reset from MB child");
#else
		OS_Panic("");
#endif
	}

	{
		u16 id = (u16)OS_GetLockID();
		CARD_LockRom(id);
	}

	MI_StopDma(0);
	MI_StopDma(1);
	MI_StopDma(2);
	MI_StopDma(3);

	(void)OS_SetIrqMask(OS_IE_FIFO_RECV);
	(void)OS_ResetRequestIrqMask(0xffffffff);

	*(u32 *)HW_RESET_PARAMETER_BUF = parameter;

	OSi_SendToPxi(OS_PXI_COMMAND_RESET);

	asm
	{

		ldr r0, = RESET_HW_DTCM_IRQ_STACK_END;
		ldr r1, = SDK_IRQ_STACKSIZE;
		sub r0, r0, r1;
		mov sp, r0;

		bl OSi_DoResetSystem;
	}

}

#else
void OS_ResetSystem (void)
{
	MI_StopDma(0);
	MI_StopDma(1);
	MI_StopDma(2);
	MI_StopDma(3);

	(void)OS_SetIrqMask(OS_IE_FIFO_RECV);
	(void)OS_ResetRequestIrqMask(0xffffffff);

	SND_Shutdown();

	OSi_SendToPxi(OS_PXI_COMMAND_RESET);
	OSi_DoResetSystem();
}
#endif

#ifdef SDK_ARM9
#include    <nitro/itcm_begin.h>
static void OSi_DoResetSystem (void)
{
	while (!(vu16)OSi_IsResetOccurred) {
	}

	reg_OS_IME = 0;

	OSi_ReloadRomData();

	OSi_DoBoot();
}

#include <nitro/itcm_end.h>

#else
#include <nitro/wram_begin.h>
static void OSi_DoResetSystem (void)
{
	reg_OS_IME = 0;
	OSi_DoBoot();
}

#include <nitro/wram_end.h>
#endif

#ifdef SDK_ARM9
#include    <nitro/itcm_begin.h>
asm void OSi_DoBoot (void)
{
	mov r12, #HW_REG_BASE
	str r12, [r12, #REG_IME_OFFSET]
	ldr r1, = OSi_HW_DTCM
	add r1, r1, #0x3fc0
	add r1, r1, #HW_DTCM_SYSRV_OFS_INTR_VECTOR
	mov r0, #0
	str r0, [r1, #0]
	ldr r1, = REG_SUBPINTF_ADDR
	@1:
	ldrh r0, [r1]
	and r0, r0, #0x000f
	cmp r0, #0x0001
	bne @1
	mov r0, #0x0100
	strh r0, [r1]
	mov r0, #0
	ldr r3, = HW_EXCP_VECTOR_MAIN
	ldr r4, [r3]
	ldr r1, = HW_BIOS_EXCP_STACK_MAIN
	mov r2, #0x80
	bl OSi_CpuClear32
	str r4, [r3]
	ldr r1, = HW_PXI_SIGNAL_PARAM_ARM9
	mov r2, #0x18
	bl OSi_CpuClear32
	ldr r1, = HW_WM_RSSI_POOL
	strh r0, [r1]
	ldr r1, = HW_COMPONENT_PARAM
	mov r2, #0x64
	bl OSi_CpuClear32
	ldr r1, = REG_SUBPINTF_ADDR
	@2:
	ldrh r0, [r1]
	and r0, r0, #0x000f
	cmp r0, #0x0001
	beq @2
	mov r0, #0
	strh r0, [r1]
	ldr r3, = HW_ROM_HEADER_BUF
	ldr r12, [r3, #0x24]
	mov lr, r12
	ldr r11, = HW_PXI_SIGNAL_PARAM_ARM9
	ldmia r11, {r0 - r10}
	mov r11, #0
	bx r12
}

#include <nitro/itcm_end.h>
#else
#include <nitro/wram_begin.h>
asm void OSi_DoBoot (void)
{
	mov r12, #HW_REG_BASE
	str r12, [r12, #REG_IME_OFFSET]
	ldr r1, = HW_INTR_VECTOR_BUF
	mov r0, #0
	str r0, [r1, #0]
	ldr r1, = REG_MAINPINTF_ADDR
	mov r0, #0x0100
	strh r0, [r1]
	@1:
	ldrh r0, [r1]
	and r0, r0, #0x000f
	cmp r0, #0x0001
	bne @1
	ldr r1, = REG_MAINPINTF_ADDR
	mov r0, #0
	strh r0, [r1]
	@2 :
	ldrh r0, [r1]
	cmp r0, #0x0001
	beq @2
	ldr r3, = HW_ROM_HEADER_BUF
	ldr r12, [r3, #0x34]
	mov lr, r12
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bx r12
}
#include <nitro/wram_end.h>
#endif

#ifdef SDK_ARM9
#include <nitro/itcm_begin.h>

static asm void  OSi_CpuClear32 (register u32 data, register void *destp, register u32 size)
{
	add r12, r1, r2
	@1:
	cmp r1, r12
	blt @stmltia1
	b @stmltia2
@stmltia1:
	stmia r1 !, {r0}
@stmltia2:
	blt     @1
	bx lr
}

static void OSi_ReloadRomData (void)
{
	u32 p = (u32)HW_ROM_HEADER_BUF;
	const u32 rom_base = *(u32 *)HW_ROM_BASE_OFFSET_BUF;

	if (rom_base >= 0x8000)
		OSi_ReadCardRom32(rom_base, (void *)p, 0x160);

	{
		u32 src_arm9 = *(u32 *)(p + 0x20);
		u32 dst_arm9 = *(u32 *)(p + 0x28);
		u32 len_arm9 = *(u32 *)(p + 0x2c);
		u32 src_arm7 = *(u32 *)(p + 0x30);
		u32 dst_arm7 = *(u32 *)(p + 0x38);
		u32 len_arm7 = *(u32 *)(p + 0x3c);

		{
			OSIntrMode bak_cpsr = OS_DisableInterrupts();
			DC_StoreAll();
			DC_InvalidateAll();
			(void)OS_RestoreInterrupts(bak_cpsr);
		}
		IC_InvalidateAll();
		DC_WaitWriteBufferEmpty();

		src_arm9 += rom_base;
		src_arm7 += rom_base;

		if (src_arm9 < 0x8000) {
			u32 diff = 0x8000 - src_arm9;
			src_arm9 = 0x8000;
			dst_arm9 += diff;
			len_arm9 -= diff;
		}
		OSi_ReadCardRom32(src_arm9, (void *)dst_arm9, (int)len_arm9);

		OSi_ReadCardRom32(src_arm7, (void *)dst_arm7, (int)len_arm7);
	}
}

static void OSi_ReadCardRom32 (u32 src, void *dst, int len)
{
	vu8 *const reg_CARD_MASTERCNT = (vu8 *)(HW_REG_BASE + 0x1a1);
	vu8 *const reg_CARD_CMD = (vu8 *)(HW_REG_BASE + 0x1a8);
	vu32 *const reg_CARD_CNT = (vu32 *)(HW_REG_BASE + 0x1a4);
	vu32 *const reg_CARD_DATA = (vu32 *)(HW_REG_BASE + 0x100010);
	vu32 *const hdr_GAME_BUF = (vu32 *)(HW_ROM_HEADER_BUF + 0x60);

	enum {
		CARD_MASTER_SELECT_ROM = 0x00,
		CARD_MASTER_ENABLE = 0x80,
		CARD_CMD_READ_PAGE = 0xb7,
		CARD_CTRL_CMD_MASK = 0x07000000,
		CARD_CTRL_CMD_PAGE = 0x01000000,
		CARD_CTRL_READ = 0x00000000,
		CARD_CTRL_RESET_HI = 0x20000000,
		CARD_CTRL_START = 0x80000000,
		CARD_CTRL_READY = 0x00800000,
		CARD_ENUM_END
	};

	const u32 ctrl_start = (u32)((*hdr_GAME_BUF & ~CARD_CTRL_CMD_MASK)
	                             | (CARD_CTRL_CMD_PAGE | CARD_CTRL_READ
	                                | CARD_CTRL_START | CARD_CTRL_RESET_HI));

	int pos = -(int)(src & (512 - 1));

	while ((*reg_CARD_CNT & CARD_CTRL_START) != 0) {
	}
	*reg_CARD_MASTERCNT = (u32)(CARD_MASTER_SELECT_ROM | CARD_MASTER_ENABLE);

	for (src = (u32)(src + pos); pos < len; src += 512) {

		reg_CARD_CMD[0] = (u8)(CARD_CMD_READ_PAGE);
		reg_CARD_CMD[1] = (u8)(src >> 24);
		reg_CARD_CMD[2] = (u8)(src >> 16);
		reg_CARD_CMD[3] = (u8)(src >> 8);
		reg_CARD_CMD[4] = (u8)(src >> 0);
		reg_CARD_CMD[5] = (u8)(0);
		reg_CARD_CMD[6] = (u8)(0);
		reg_CARD_CMD[7] = (u8)(0);

		*reg_CARD_CNT = ctrl_start;
		for (;;) {
			u32 ctrl = *reg_CARD_CNT;

			if ((ctrl & CARD_CTRL_READY) != 0) {

				const u32 data = *reg_CARD_DATA;

				if ((pos >= 0) && (pos < len)) {
					*(u32 *)((u32)dst + pos) = data;
				}

				pos += sizeof(u32);
			}

			if (!(ctrl & CARD_CTRL_START)) {
				break;
			}
		}
	}
}

#include <nitro/itcm_end.h>
#endif