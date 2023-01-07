	.include "macros/function.inc"
	.include "include/cell.inc"

	

	.text


	arm_func_start ov18_022438B8
ov18_022438B8: ; 0x022438B8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r0, #0x450
	mov r1, #4
	bl ov18_02245068
	ldr sl, _02243988 ; =0x022533B0
	mov r8, #0
	mov sb, r8
	str r0, [sl]
	mov r7, #0x20
	mov r6, #0x10
	mov r5, #0x40
	mov r4, #0x7f
_022438E8:
	ldr r1, [sl]
	mov r0, r7
	mov r2, r6
	add r1, r1, sb
	bl ov18_02244008
	ldr r1, [sl]
	add r1, r1, sb
	str r0, [r1, #0x224]
	bl ov18_02245974
	ldr r2, [sl]
	mov r1, r5
	add r2, r2, sb
	str r0, [r2, #0x220]
	mov r0, r8
	bl ov18_02245BC0
	ldr r2, [sl]
	mov r1, r4
	add r2, r2, sb
	str r0, [r2, #0x208]
	mov r0, r8
	bl ov18_02245BC0
	add r1, r0, #8
	ldr r0, [sl]
	add r0, r0, sb
	str r1, [r0, #0x218]
	ldr r0, [sl]
	add r1, r0, sb
	ldr r0, [r1, #0x220]
	add r1, r1, #0x200
	bl ov18_02245A34
	ldr r0, [sl]
	add r1, r0, sb
	ldr r0, [r1, #0x220]
	add r1, r1, #0x210
	bl ov18_02245A24
	add sb, sb, #0x228
	add r8, r8, #1
	cmp r8, #2
	blt _022438E8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02243988: .word Unk_ov18_022533B0
	arm_func_end ov18_022438B8

	arm_func_start ov18_0224398C
ov18_0224398C: ; 0x0224398C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	ldr r4, _022439D8 ; =0x022533B0
	mov r6, r5
_0224399C:
	ldr r0, [r4, #0]
	add r0, r0, r6
	ldr r0, [r0, #0x220]
	bl ov18_022459A0
	ldr r0, [r4, #0]
	add r0, r0, r6
	ldr r0, [r0, #0x224]
	bl ov18_02244048
	add r5, r5, #1
	cmp r5, #2
	add r6, r6, #0x228
	blt _0224399C
	ldr r0, _022439DC ; =0x022533B0
	bl ov18_0224508C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022439D8: .word Unk_ov18_022533B0
_022439DC: .word Unk_ov18_022533B0
	arm_func_end ov18_0224398C

	arm_func_start ov18_022439E0
ov18_022439E0: ; 0x022439E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #0x228
	mul r7, sb, r0
	ldr r0, _02243B38 ; =0x022533B0
	mov r8, r1
	ldr r0, [r0, #0]
	mov r5, r2
	add r0, r0, r7
	ldr r0, [r0, #0x224]
	bl ov18_022440BC
	mov r4, r0
	mov r0, #1
	bl OS_DisableIrqMask
	mov r6, r0
	cmp r5, #0
	mov r0, #0x228
	beq _02243AA4
	ldr r1, _02243B38 ; =0x022533B0
	ldr r1, [r1, #0]
	mla r0, sb, r0, r1
	add r5, r0, #0x200
	add r0, r0, #0x210
	cmp r5, r0
	beq _02243A84
	add r0, r1, r7
	add r1, r0, #0x210
_02243A4C:
	ldrb r3, [r5, #0xc]
	ldmib r5, {r0, sb}
	add sb, sb, r3, lsl #3
	ldr r2, [r0, #8]
	add r3, sb, r8, lsl #3
	cmp r3, r2
	bhi _02243A78
	mov r1, r4
	str sb, [r4, #8]
	bl ov18_022459F4
	b _02243A84
_02243A78:
	mov r5, r0
	cmp r0, r1
	bne _02243A4C
_02243A84:
	ldr r0, _02243B38 ; =0x022533B0
	ldr r0, [r0, #0]
	add r0, r0, r7
	add r0, r0, #0x210
	cmp r5, r0
	bne _02243B24
	bl OS_Terminate
	b _02243B24
_02243AA4:
	ldr r1, _02243B38 ; =0x022533B0
	ldr r1, [r1, #0]
	mla r0, sb, r0, r1
	add r5, r0, #0x210
	add r0, r0, #0x200
	cmp r5, r0
	beq _02243B08
	add r0, r1, r7
	add r0, r0, #0x200
_02243AC8:
	ldr sb, [r5]
	ldr r3, [r5, #8]
	ldrb r1, [sb, #0xc]
	ldr r2, [sb, #8]
	sub r3, r3, r8, lsl #3
	add r1, r2, r1, lsl #3
	cmp r3, r1
	blo _02243AFC
	mov r0, r5
	mov r1, r4
	str r3, [r4, #8]
	bl ov18_022459F4
	b _02243B08
_02243AFC:
	mov r5, sb
	cmp sb, r0
	bne _02243AC8
_02243B08:
	ldr r0, _02243B38 ; =0x022533B0
	ldr r0, [r0, #0]
	add r0, r0, r7
	add r0, r0, #0x200
	cmp r5, r0
	bne _02243B24
	bl OS_Terminate
_02243B24:
	mov r0, r6
	bl OS_EnableIrqMask
	mov r0, r4
	strb r8, [r4, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02243B38: .word Unk_ov18_022533B0
	arm_func_end ov18_022439E0

	arm_func_start ov18_02243B3C
ov18_02243B3C: ; 0x02243B3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xc]
	mov r4, #0
	mov r3, r4
	cmp r0, #0
	ldr r2, [r5, #8]
	ble _02243B80
	ldr r0, _02243BB4 ; =0xC1FFFCFF
_02243B60:
	ldr r1, [r2, #0]
	add r3, r3, #1
	and r1, r1, r0
	orr r1, r1, #0x200
	str r1, [r2, #0], #8
	ldrb r1, [r5, #0xc]
	cmp r3, r1
	blt _02243B60
_02243B80:
	mov r0, r5
	bl ov18_022459BC
	ldr r0, _02243BB8 ; =0x022533B0
	ldr r1, [r0, #0]
	add r0, r1, #0x228
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x228
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x224]
	mov r1, r5
	bl ov18_02244064
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02243BB4: .word 0xC1FFFCFF
_02243BB8: .word Unk_ov18_022533B0
	arm_func_end ov18_02243B3C

	arm_func_start ov18_02243BBC
ov18_02243BBC: ; 0x02243BBC
	ldr r0, [r0, #8]
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end ov18_02243BBC

	arm_func_start ov18_02243BC8
ov18_02243BC8: ; 0x02243BC8
	ldrb r0, [r0, #0xc]
	bx lr
	arm_func_end ov18_02243BC8

	arm_func_start ov18_02243BD0
ov18_02243BD0: ; 0x02243BD0
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr ip, [r0, #8]
	blt _02243C1C
	cmp r2, #0x100
	cmpne r2, #0x300
	ldr r0, _02243C70 ; =0xC1FFFCFF
	beq _02243C04
	ldr r3, [ip, r1, lsl #3]
	and r0, r3, r0
	orr r0, r0, r2
	str r0, [ip, r1, lsl #3]
	ldmia sp!, {r4, pc}
_02243C04:
	ldr r4, [ip, r1, lsl #3]
	and r0, r4, r0
	orr r0, r0, r2
	orr r0, r0, r3, lsl #25
	str r0, [ip, r1, lsl #3]
	ldmia sp!, {r4, pc}
_02243C1C:
	ldrb r4, [r0, #0xc]
	mov r1, #0
	cmp r4, #0
	ldmleia sp!, {r4, pc}
	ldr lr, _02243C70 ; =0xC1FFFCFF
_02243C30:
	cmp r2, #0x100
	cmpne r2, #0x300
	ldr r4, [ip, r1, lsl #3]
	beq _02243C4C
	and r4, r4, lr
	orr r4, r4, r2
	b _02243C58
_02243C4C:
	and r4, r4, lr
	orr r4, r4, r2
	orr r4, r4, r3, lsl #25
_02243C58:
	str r4, [ip, r1, lsl #3]
	ldrb r4, [r0, #0xc]
	add r1, r1, #1
	cmp r1, r4
	blt _02243C30
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02243C70: .word 0xC1FFFCFF
	arm_func_end ov18_02243BD0

	arm_func_start ov18_02243C74
ov18_02243C74: ; 0x02243C74
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr ip, [r0, #8]
	blt _02243CAC
	ldr r0, [ip, r1, lsl #3]
	add lr, ip, r1, lsl #3
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	str r0, [ip, r1, lsl #3]
	ldrh r0, [lr, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r3, lsl #12
	strh r0, [lr, #4]
	ldmia sp!, {r4, pc}
_02243CAC:
	ldrb r1, [r0, #0xc]
	mov r4, #0
	cmp r1, #0
	ldmleia sp!, {r4, pc}
_02243CBC:
	ldr r1, [ip, r4, lsl #3]
	add lr, ip, r4, lsl #3
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	str r1, [ip, r4, lsl #3]
	ldrh r1, [lr, #4]
	add r4, r4, #1
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [lr, #4]
	ldrb r1, [r0, #0xc]
	cmp r4, r1
	blt _02243CBC
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02243C74

	arm_func_start ov18_02243CF4
ov18_02243CF4: ; 0x02243CF4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	cmp r1, #0
	ldr r5, [r0, #8]
	blt _02243D30
	ldr r4, [r5, r1, lsl #3]
	ldr r0, _02243DDC ; =0xFE00FF00
	and r3, r3, #0xff
	and r0, r4, r0
	mov r2, r2, lsl #0x17
	orr r0, r0, r3
	orr r0, r0, r2, lsr #7
	add sp, sp, #0x10
	str r0, [r5, r1, lsl #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02243D30:
	ldr r1, [r5, #0]
	ldr ip, _02243DDC ; =0xFE00FF00
	and r6, r3, #0xff
	and r7, r1, ip
	mov sb, r1
	ldr r1, _02243DE0 ; =0x01FF0000
	mov r8, r2, lsl #0x17
	orr r6, r7, r6
	orr r6, r6, r8, lsr #7
	str r6, [r5, #0]
	ldrb r6, [r0, #0xc]
	and r4, sb, r1
	and lr, sb, #0xff
	mov r7, r4, lsr #0x10
	str r7, [sp, #0xc]
	cmp r6, #1
	str lr, [sp, #8]
	sub r6, r2, r4, lsr #16
	sub r7, r3, lr
	mov r4, #1
	addle sp, sp, #0x10
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02243D88:
	ldr r2, [r5, r4, lsl #3]
	and r3, r2, #0xff
	mov sb, r2
	and lr, r2, r1
	add r8, r3, r7
	add r2, r6, lr, lsr #16
	and sb, sb, ip
	and r8, r8, #0xff
	mov sl, r2, lsl #0x17
	orr r2, sb, r8
	orr r2, r2, sl, lsr #7
	str r2, [r5, r4, lsl #3]
	ldrb r2, [r0, #0xc]
	add r4, r4, #1
	mov r8, lr, lsr #0x10
	cmp r4, r2
	blt _02243D88
	str r3, [sp]
	str r8, [sp, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02243DDC: .word 0xFE00FF00
_02243DE0: .word 0x01FF0000
	arm_func_end ov18_02243CF4

	arm_func_start ov18_02243DE4
ov18_02243DE4: ; 0x02243DE4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr ip, [r0, #8]
	blt _02243E0C
	add r1, ip, r1, lsl #3
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	strh r0, [r1, #4]
	ldmia sp!, {r3, pc}
_02243E0C:
	ldrb r1, [r0, #0xc]
	mov lr, #0
	cmp r1, #0
	ldmleia sp!, {r3, pc}
_02243E1C:
	add r3, ip, lr, lsl #3
	ldrh r1, [r3, #4]
	add lr, lr, #1
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	strh r1, [r3, #4]
	ldrb r1, [r0, #0xc]
	cmp lr, r1
	blt _02243E1C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02243DE4

	arm_func_start ov18_02243E44
ov18_02243E44: ; 0x02243E44
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	ldr r0, _02243E70 ; =0x01FF0000
	ldr ip, [lr, r1, lsl #3]
	and r0, ip, r0
	mov r0, r0, lsr #0x10
	str r0, [r2, #0]
	ldr r0, [lr, r1, lsl #3]
	and r0, r0, #0xff
	str r0, [r3, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02243E70: .word 0x01FF0000
	arm_func_end ov18_02243E44

	.bss


	.global Unk_ov18_022533B0
Unk_ov18_022533B0: ; 0x022533B0
	.space 0x4

