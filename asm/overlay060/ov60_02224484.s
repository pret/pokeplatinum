	.include "macros/function.inc"
	.include "overlay060/ov60_02224484.inc"

	

	.text


	arm_func_start ov60_02224484
ov60_02224484: ; 0x02224484
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr ip, _02224574 ; =0x02228CBC
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_0222449C:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0222449C
	ldrb r1, [ip]
	ldr r0, _02224578 ; =0x02229EFC
	strb r1, [r3]
	bl ov4_021D7EB8
	cmp r0, #0
	beq _02224568
	ldr r0, _0222457C ; =0x02229EFC
	ldr r1, [r0, #0]
	cmp r1, #0
	blt _022244F4
	cmp r1, #0xa
	addlt r0, r1, #0x30
	strltb r0, [sp, #1]
	blt _0222450C
_022244F4:
	cmp r1, #0xa
	blt _0222450C
	cmp r1, #0x64
	bge _0222450C
	add r0, sp, #0
	bl ov60_022256C0
_0222450C:
	ldr r0, _0222457C ; =0x02229EFC
	ldr r0, [r0, #0]
	cmp r0, #4
	cmpne r0, #8
	bne _0222454C
	ldr r0, _0222457C ; =0x02229EFC
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _0222453C
	cmp r0, #0xa
	addlt r0, r0, #0x30
	strltb r0, [sp, #3]
_0222453C:
	ldr r1, _02224580 ; =0x02229F04
	add r0, sp, #4
	mov r2, #9
	bl ov60_0222569C
_0222454C:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl ov60_02223FC8
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_02224568:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224574: .word 0x02228CBC
_02224578: .word 0x02229EFC
_0222457C: .word 0x02229EFC
_02224580: .word 0x02229F04
	arm_func_end ov60_02224484

	arm_func_start ov60_02224584
ov60_02224584: ; 0x02224584
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add r0, sp, #0x10
	mov r1, #0x14
	bl ov60_02225688
	add r0, sp, #0x10
	bl sub_020A283C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, #0
	cmp r2, r0
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0
	mov r3, #0xd
	bl ov60_022256CC
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl ov60_02223FC8
	ldr r1, _0222460C ; =0x027FFE0C
	mov r0, r5
	mov r2, #4
	bl ov60_02223FC8
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0222460C: .word 0x027FFE0C
	arm_func_end ov60_02224584

	arm_func_start ov60_02224610
ov60_02224610: ; 0x02224610
	stmfd sp!, {r3, lr}
	ldr r2, _0222462C ; =0x02229C08
	mov r3, #2
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222462C: .word 0x02229C08
	arm_func_end ov60_02224610

	.rodata


	.global Unk_ov60_02228CBC
Unk_ov60_02228CBC: ; 0x02228CBC
	.incbin "incbin/overlay60_rodata.bin", 0x70, 0xD



	.data


	.global Unk_ov60_02229C08
Unk_ov60_02229C08: ; 0x02229C08
	.incbin "incbin/overlay60_data.bin", 0xDC8, 0x18



	.bss


	.global Unk_ov60_02229EFC
Unk_ov60_02229EFC: ; 0x02229EFC
	.space 0x3C

