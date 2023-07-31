	.include "macros/function.inc"
	.include "include/os_irqhandler.inc"

	.extern OSi_ThreadInfo
	.extern Unk_021CCFE4
	.extern OS_IRQTable
	.extern OSi_IrqThreadQueue

	.text

	arm_func_start OS_WaitIrq
OS_WaitIrq: ; 0x020C12B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _020C12E4
	ldr r1, _020C1320 ; =0x027E0000
	mvn r2, r4
	add r1, r1, #0x3000
	ldr r3, [r1, #0xff8]
	and r2, r3, r2
	str r2, [r1, #0xff8]
_020C12E4:
	bl OS_RestoreInterrupts
	ldr r1, _020C1320 ; =0x027E0000
	add r0, r1, #0x3000
	ldr r0, [r0, #0xff8]
	tst r4, r0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r1, #0x3f8
	ldr r5, _020C1324 ; =0x027E0060
	add r6, r0, #0x3c00
_020C1308:
	mov r0, r5
	bl OS_SleepThread
	ldr r0, [r6, #0]
	tst r4, r0
	beq _020C1308
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C1320: .word OS_IRQTable
_020C1324: .word OSi_IrqThreadQueue
	arm_func_end OS_WaitIrq


	.section .itcm,4,1,4

	arm_func_start OS_IrqHandler
OS_IrqHandler: ; 0x01FF8000
	stmdb sp!, {lr}
	mov ip, #0x4000000
	add ip, ip, #0x210
	ldr r1, [ip, #-8]
	cmp r1, #0
	beq _01FF801C
	b _01FF8020
_01FF801C:
	ldmia sp!, {pc}
_01FF8020:
	ldmia ip, {r1, r2}
	ands r1, r1, r2
	beq _01FF8030
	b _01FF8034
_01FF8030:
	ldmia sp!, {pc}
_01FF8034:
	mov r3, #-0x80000000
_01FF8038:
	clz r0, r1
	bics r1, r1, r3, lsr r0
	bne _01FF8038
	mov r1, r3, lsr r0
	str r1, [ip, #4]
	rsbs r0, r0, #0x1f
	ldr r1, _01FF8060 ; =0x027E0000
	ldr r0, [r1, r0, lsl #2]
	ldr lr, _01FF8064 ; =OS_IrqHandler_ThreadSwitch
	bx r0
	; .align 2, 0
_01FF8060: .word OS_IRQTable
_01FF8064: .word OS_IrqHandler_ThreadSwitch
	arm_func_end OS_IrqHandler

	arm_func_start OS_IrqHandler_ThreadSwitch
OS_IrqHandler_ThreadSwitch: ; 0x01FF8068
	ldr ip, _01FF81D4 ; =0x027E0060
	mov r3, #0
	ldr ip, [ip]
	mov r2, #1
	cmp ip, #0
	beq _01FF80B8
_01FF8080:
	str r2, [ip, #0x64]
	str r3, [ip, #0x78]
	str r3, [ip, #0x7c]
	ldr r0, [ip, #0x80]
	str r3, [ip, #0x80]
	mov ip, r0
	cmp ip, #0
	bne _01FF8080
	ldr ip, _01FF81D4 ; =0x027E0060
	str r3, [ip]
	str r3, [ip, #4]
	ldr ip, _01FF81D8 ; =0x021CCC80
	mov r1, #1
	strh r1, [ip]
_01FF80B8:
	ldr ip, _01FF81D8 ; =0x021CCC80
	ldrh r1, [ip]
	cmp r1, #0
	beq _01FF80CC
	b _01FF80D0
_01FF80CC:
	ldr pc, [sp], #4
_01FF80D0:
	mov r1, #0
	strh r1, [ip]
	mov r3, #0xd2
	msr cpsr_c, r3
	add r2, ip, #8
	ldr r1, [r2, #0]
_01FF80E8:
	cmp r1, #0
	bne _01FF80F4
	b _01FF80F8
_01FF80F4:
	ldrh r0, [r1, #0x64]
_01FF80F8:
	bne _01FF8100
	b _01FF8104
_01FF8100:
	cmp r0, #1
_01FF8104:
	bne _01FF810C
	b _01FF8110
_01FF810C:
	ldr r1, [r1, #0x68]
_01FF8110:
	bne _01FF80E8
	cmp r1, #0
	bne _01FF8128
_01FF811C:
	mov r3, #0x92
	msr cpsr_c, r3
	ldr pc, [sp], #4
_01FF8128:
	ldr r0, [ip, #4]
	cmp r1, r0
	beq _01FF811C
	ldr r3, [ip, #0xc]
	cmp r3, #0
	beq _01FF8150
	stmfd sp!, {r0, r1, ip}
	mov lr, pc
	bx r3
_01FF814C:
	.byte 0x03, 0x10, 0xBD, 0xE8
_01FF8150:
	str r1, [ip, #4]
	mrs r2, spsr
	str r2, [r0, #0]!
	stmfd sp!, {r0, r1}
	add r0, r0, #0
	add r0, r0, #0x48
	ldr r1, _01FF81DC ; =0x020C99FC
	blx r1
	ldmia sp!, {r0, r1}
	ldmib sp!, {r2, r3}
	stmib r0!, {r2, r3}
	ldmib sp!, {r2, r3, ip, lr}
	stmib r0!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	stmib r0!, {lr}
	mov r3, #0xd3
	msr cpsr_c, r3
	stmib r0!, {sp}
	stmdb sp!, {r1}
	add r0, r1, #0
	add r0, r0, #0x48
	ldr r1, _01FF81E0 ; =0x020C9A3C
	blx r1
	ldmia sp!, {r1}
	ldr sp, [r1, #0x44]
	mov r3, #0xd2
	msr cpsr_c, r3
	ldr r2, [r1, #0]!
	msr spsr_fc, r2
	ldr lr, [r1, #0x40]
	ldmib r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	mov r0, r0
	stmda sp!, {r0, r1, r2, r3, ip, lr}
	ldmia sp!, {pc}
	; .align 2, 0
_01FF81D4: .word OSi_IrqThreadQueue
_01FF81D8: .word OSi_ThreadInfo
_01FF81DC: .word 0x020C99FC
_01FF81E0: .word 0x020C9A3C
	arm_func_end OS_IrqHandler_ThreadSwitch

	arm_func_start OSi_DoResetSystem
OSi_DoResetSystem: ; 0x01FF81E4
	stmfd sp!, {r3, lr}
	ldr r0, _01FF8210 ; =0x021CCFE4
_01FF81EC:
	ldrh r1, [r0]
	cmp r1, #0
	beq _01FF81EC
	ldr r0, _01FF8214 ; =0x04000208
	mov r1, #0
	strh r1, [r0]
	bl OSi_ReloadRomData
	bl OSi_DoBoot
	ldmia sp!, {r3, pc}
	; .align 2, 0
_01FF8210: .word Unk_021CCFE4
_01FF8214: .word 0x04000208
	arm_func_end OSi_DoResetSystem

	arm_func_start OSi_DoBoot
OSi_DoBoot: ; 0x01FF8218
	mov ip, #0x4000000
	str ip, [ip, #0x208]
	ldr r1, _01FF82C4 ; =0x027E0000
	add r1, r1, #0x3fc0
	add r1, r1, #0x3c
	mov r0, #0
	str r0, [r1, #0]
	ldr r1, _01FF82C8 ; =0x04000180
_01FF8238:
	ldrh r0, [r1]
	and r0, r0, #0xf
	cmp r0, #1
	bne _01FF8238
	mov r0, #0x100
	strh r0, [r1]
	mov r0, #0
	ldr r3, _01FF82CC ; =0x027FFD9C
	ldr r4, [r3, #0]
	ldr r1, _01FF82D0 ; =0x027FFD80
	mov r2, #0x80
	bl OSi_CpuClear32
	str r4, [r3, #0]
	ldr r1, _01FF82D4 ; =0x027FFF80
	mov r2, #0x18
	bl OSi_CpuClear32
	ldr r1, _01FF82D8 ; =0x027FFF98
	strh r0, [r1]
	ldr r1, _01FF82DC ; =0x027FFF9C
	mov r2, #0x64
	bl OSi_CpuClear32
	ldr r1, _01FF82C8 ; =0x04000180
_01FF8290:
	ldrh r0, [r1]
	and r0, r0, #0xf
	cmp r0, #1
	beq _01FF8290
	mov r0, #0
	strh r0, [r1]
	ldr r3, _01FF82E0 ; =0x027FFE00
	ldr ip, [r3, #0x24]
	mov lr, ip
	ldr fp, _01FF82D4 ; =0x027FFF80
	ldmia fp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl}
	mov fp, #0
	bx ip
	; .align 2, 0
_01FF82C4: .word OS_IRQTable
_01FF82C8: .word 0x04000180
_01FF82CC: .word 0x027FFD9C
_01FF82D0: .word 0x027FFD80
_01FF82D4: .word 0x027FFF80
_01FF82D8: .word 0x027FFF98
_01FF82DC: .word 0x027FFF9C
_01FF82E0: .word 0x027FFE00
	arm_func_end OSi_DoBoot

	arm_func_start OSi_CpuClear32
OSi_CpuClear32: ; 0x01FF82E4
	add ip, r1, r2
_01FF82E8:
	cmp r1, ip
	blt _01FF82F4
	b _01FF82F8
_01FF82F4:
	stmia r1!, {r0}
_01FF82F8:
	blt _01FF82E8
	bx lr
	arm_func_end OSi_CpuClear32

	arm_func_start OSi_ReloadRomData
OSi_ReloadRomData: ; 0x01FF8300
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _01FF83A0 ; =0x027FFC2C
	ldr r4, [r1, #0]
	cmp r4, #0x8000
	blo _01FF8324
	mov r0, r4
	add r1, r1, #0x1d4
	mov r2, #0x160
	bl OSi_ReadCardRom32
_01FF8324:
	ldr r0, _01FF83A4 ; =0x027FFE20
	ldr r5, [r0, #0]
	ldr r6, [r0, #8]
	ldr r7, [r0, #0xc]
	ldr r8, [r0, #0x10]
	ldr sb, [r0, #0x18]
	ldr sl, [r0, #0x1c]
	bl OS_DisableInterrupts
	mov fp, r0
	bl DC_StoreAll
	bl DC_InvalidateAll
	mov r0, fp
	bl OS_RestoreInterrupts
	bl IC_InvalidateAll
	bl DC_WaitWriteBufferEmpty
	add r5, r5, r4
	cmp r5, #0x8000
	bhs _01FF837C
	rsb r0, r5, #0x8000
	add r6, r6, r0
	sub r7, r7, r0
	mov r5, #0x8000
_01FF837C:
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl OSi_ReadCardRom32
	mov r1, sb
	mov r2, sl
	add r0, r8, r4
	bl OSi_ReadCardRom32
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_01FF83A0: .word 0x027FFC2C
_01FF83A4: .word 0x027FFE20
	arm_func_end OSi_ReloadRomData

	arm_func_start OSi_ReadCardRom32
OSi_ReadCardRom32: ; 0x01FF83A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _01FF846C ; =0x027FFE60
	ldr r3, _01FF8470 ; =0x000001FF
	ldr r5, [r4, #0]
	and r4, r0, r3
	bic r3, r5, #0x7000000
	ldr r5, _01FF8474 ; =0x040001A4
	orr r3, r3, #0xa1000000
	rsb ip, r4, #0
_01FF83CC:
	ldr r4, [r5, #0]
	tst r4, #-0x80000000
	bne _01FF83CC
	ldr r7, _01FF8478 ; =0x040001A1
	mov r4, #0x80
	strb r4, [r7]
	cmp ip, r2
	add r0, r0, ip
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r4, _01FF847C ; =0x04100010
	mov sb, r0, lsr #8
	mov r6, #0xb7
	mov r5, #0
_01FF8400:
	strb r6, [r7, #7]
	mov lr, r0, lsr #0x18
	strb lr, [r7, #8]
	mov lr, r0, lsr #0x10
	strb lr, [r7, #9]
	strb sb, [r7, #0xa]
	strb r0, [r7, #0xb]
	strb r5, [r7, #0xc]
	strb r5, [r7, #0xd]
	strb r5, [r7, #0xe]
	str r3, [r7, #3]
_01FF842C:
	ldr r8, [r7, #3]
	tst r8, #0x800000
	beq _01FF8450
	cmp ip, #0
	ldr lr, [r4]
	blt _01FF844C
	cmp ip, r2
	strlt lr, [r1, ip]
_01FF844C:
	add ip, ip, #4
_01FF8450:
	tst r8, #-0x80000000
	bne _01FF842C
	cmp ip, r2
	add sb, sb, #2
	add r0, r0, #0x200
	blt _01FF8400
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_01FF846C: .word 0x027FFE60
_01FF8470: .word 0x000001FF
_01FF8474: .word 0x040001A4
_01FF8478: .word 0x040001A1
_01FF847C: .word 0x04100010
	arm_func_end OSi_ReadCardRom32
