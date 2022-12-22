	.include "macros/function.inc"
	.include "include/ov4_021E73FC.inc"

	

	.text


	arm_func_start ov4_021E73FC
ov4_021E73FC: ; 0x021E73FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov4_021E62EC
	mov r4, r0
	cmp r5, #0
	beq _021E742C
	cmp r5, #1
	beq _021E744C
	cmp r5, #2
	beq _021E7464
	b _021E7488
_021E742C:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r4
	bl ov4_021E74DC
	strb r0, [r4, #0xd10]
	b _021E7488
_021E744C:
	bl ov4_021E7730
	strb r0, [r4, #0xd10]
	mov r0, r4
	bl ov4_021E77C0
	strb r0, [r4, #0xd0f]
	b _021E7488
_021E7464:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0xd0f]
	bl ov4_021E753C
	strb r0, [r4, #0xd10]
_021E7488:
	ldrb r0, [r4, #0xd10]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E73FC

	arm_func_start ov4_021E7490
ov4_021E7490: ; 0x021E7490
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #6
	bne _021E74D0
	ldr r1, _021E74D8 ; =0x022158A0
	add r0, r4, #0xc
	mov r2, #8
	bl strncmp
	cmp r0, #0
	moveq r0, #8
	ldmeqia sp!, {r4, pc}
_021E74D0:
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E74D8: .word 0x022158A0
	arm_func_end ov4_021E7490

	arm_func_start ov4_021E74DC
ov4_021E74DC: ; 0x021E74DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl ov4_021E7628
	ldrb r1, [r5, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mla r4, r5, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _021E7530
	ldr r0, _021E7538 ; =0x022158A0
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	strb r1, [r4, #3]
	add r0, r5, #1
	strb r1, [r4, #1]
	and r5, r0, #0xff
_021E7530:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E7538: .word 0x022158A0
	arm_func_end ov4_021E74DC

	arm_func_start ov4_021E753C
ov4_021E753C: ; 0x021E753C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl ov4_021E7628
	ldrb r1, [r6, #0xd0c]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #4
	bne _021E7598
	ldr r0, _021E761C ; =0x0221760C
	add r1, r5, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #6
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_021E7598:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #7
	bne _021E75D8
	ldr r0, _021E7620 ; =0x02215898
	add r1, r5, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #9
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_021E75D8:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #8
	bne _021E7614
	ldr r0, _021E7624 ; =0x022158A8
	add r1, r5, #4
	mov r2, #0xb
	bl MI_CpuCopy8
	mov r1, #0xb
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #0xa
	strb r1, [r5, #1]
	and r4, r0, #0xff
_021E7614:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E761C: .word 0x0221760C
_021E7620: .word 0x02215898
_021E7624: .word 0x022158A8
	arm_func_end ov4_021E753C

	arm_func_start ov4_021E7628
ov4_021E7628: ; 0x021E7628
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0
	mov r3, r0
	mov r1, r2
	add ip, r0, #0x300
_021E763C:
	ldrb r4, [r0, #0xd0c]
	mov r4, r4, lsl #0x1c
	movs r5, r4, lsr #0x1c
	addne r4, r1, #1
	cmpne r5, r4
	bne _021E7718
	ldrb r4, [r3, #0xe7]
	cmp r4, #0xff
	beq _021E7718
	mov r6, #0
_021E7664:
	add r4, r3, r6
	ldrb lr, [r4, #0x40]
	cmp lr, #0
	beq _021E768C
	add r4, r6, #1
	add r5, ip, r6
	and r6, r4, #0xff
	strb lr, [r5, #4]
	cmp r6, #0x20
	blo _021E7664
_021E768C:
	cmp r6, #0
	moveq r4, #0
	beq _021E76A4
	strb r6, [ip, #3]
	strb r1, [ip, #1]
	mov r4, #1
_021E76A4:
	cmp r4, #0
	ldrb r4, [r3, #0xe7]
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
	cmp r4, #1
	bne _021E7718
	mov r6, #0
_021E76C4:
	add r4, r3, r6
	ldrb r5, [r4, #0x60]
	cmp r5, #0
	beq _021E76EC
	add lr, r6, #1
	add r4, ip, r6
	and r6, lr, #0xff
	strb r5, [r4, #4]
	cmp r6, #0x20
	blo _021E76C4
_021E76EC:
	cmp r6, #0
	moveq r4, #0
	beq _021E7708
	strb r6, [ip, #3]
	add lr, r1, #3
	strb lr, [ip, #1]
	mov r4, #1
_021E7708:
	cmp r4, #0
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
_021E7718:
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0x100
	blt _021E763C
	mov r0, r2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E7628

	arm_func_start ov4_021E7730
ov4_021E7730: ; 0x021E7730
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r3, [r0, #0xd12]
	mov r2, #0
	mov r1, r2
	cmp r3, #0
	ble _021E77B8
	add r3, r0, #0x47
	mov ip, r0
	add r3, r3, #0x400
_021E7754:
	add r4, r0, r1, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _021E7794
	add lr, ip, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r3]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	beq _021E7794
	bic lr, lr, #0x80
	add r2, r2, #1
	strb lr, [r3]
	and r2, r2, #0xff
	b _021E77A0
_021E7794:
	ldrb lr, [r3]
	orr lr, lr, #0x80
	strb lr, [r3]
_021E77A0:
	ldrb lr, [r0, #0xd12]
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, lr
	add ip, ip, #0xc0
	blt _021E7754
_021E77B8:
	mov r0, r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E7730

	arm_func_start ov4_021E77C0
ov4_021E77C0: ; 0x021E77C0
	ldrb ip, [r0, #0xd12]
	mov r3, #0
	mov r2, r3
	cmp ip, #0
	bls _021E77FC
_021E77D4:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, r2
	beq _021E77FC
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, ip
	blo _021E77D4
_021E77FC:
	mov r0, r3
	bx lr
	arm_func_end ov4_021E77C0

	.rodata


	.global Unk_ov4_02215898
Unk_ov4_02215898: ; 0x02215898
	.incbin "incbin/overlay4_rodata.bin", 0x30, 0x38 - 0x30

	.global Unk_ov4_022158A0
Unk_ov4_022158A0: ; 0x022158A0
	.incbin "incbin/overlay4_rodata.bin", 0x38, 0x40 - 0x38

	.global Unk_ov4_022158A8
Unk_ov4_022158A8: ; 0x022158A8
	.incbin "incbin/overlay4_rodata.bin", 0x40, 0xC



	.data


	.global Unk_ov4_0221760C
Unk_ov4_0221760C: ; 0x0221760C
	.incbin "incbin/overlay4_data.bin", 0x178C, 0x9

