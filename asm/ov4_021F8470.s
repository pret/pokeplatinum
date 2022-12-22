	.include "macros/function.inc"
	.include "include/ov4_021F8470.inc"

	

	.text


	arm_func_start ov4_021F8470
ov4_021F8470: ; 0x021F8470
	stmfd sp!, {r3, lr}
	ldr ip, [sp, #8]
	str ip, [sp]
	bl ov4_021FA3FC
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021F8470

	arm_func_start ov4_021F8484
ov4_021F8484: ; 0x021F8484
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021F8710
	mov r0, r4
	bl ov4_021FA61C
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F8484

	arm_func_start ov4_021F849C
ov4_021F849C: ; 0x021F849C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021F9A68
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021FAB4C
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021FAB88
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F849C

	arm_func_start ov4_021F84CC
ov4_021F84CC: ; 0x021F84CC
	ldr ip, _021F84D4 ; =ov4_021FA660
	bx ip
	; .align 2, 0
_021F84D4: .word ov4_021FA660
	arm_func_end ov4_021F84CC

	arm_func_start ov4_021F84D8
ov4_021F84D8: ; 0x021F84D8
	ldr ip, _021F84E0 ; =ov4_021F805C
	bx ip
	; .align 2, 0
_021F84E0: .word ov4_021F805C
	arm_func_end ov4_021F84D8

	arm_func_start ov4_021F84E4
ov4_021F84E4: ; 0x021F84E4
	ldr ip, _021F84EC ; =ov4_021F80B8
	bx ip
	; .align 2, 0
_021F84EC: .word ov4_021F80B8
	arm_func_end ov4_021F84E4

	arm_func_start ov4_021F84F0
ov4_021F84F0: ; 0x021F84F0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r0, r2
	add r1, sp, #4
	add r2, sp, #0
	mov r4, r3
	bl ov4_021FACAC
	cmp r0, #0
	ldrne r2, [sp, #4]
	cmpne r2, #0
	ldrneh r3, [sp]
	cmpne r3, #0
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r1, r2, lsr #0x18
	mov r0, r2, lsr #8
	mov r7, r2, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r8, r2, lsl #0x18
	orr r0, r1, r0
	and r7, r7, #0xff0000
	and r1, r8, #0xff000000
	orr r0, r7, r0
	orr r0, r1, r0
	and r0, r0, #0xe0000000
	cmp r0, #-0x20000000
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r1, sp, #8
	mov r0, r6
	bl ov4_021F7F54
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	str r1, [r0, #0x20]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x30]
	mov r1, r4
	bl ov4_021F7FB4
	movs r4, r0
	beq _021F85C8
	ldr r0, [sp, #8]
	bl ov4_021FA888
	add sp, sp, #0xc
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021F85C8:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _021F85EC
	cmp r5, #0
	ldrne r0, [sp, #8]
	add sp, sp, #0xc
	strne r0, [r5]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021F85EC:
	ldr r1, [sp, #8]
	mov r8, #1
	ldr r0, [r1, #0x24]
	mov r7, #0
	add r0, r0, #1
	str r0, [r1, #0x24]
	mov r4, r8
_021F8608:
	mov r0, r6
	bl ov4_021F849C
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #5
	movge sb, r8
	movlt sb, r7
	cmp sb, #0
	bne _021F8634
	mov r0, r4
	bl ov4_021EA898
_021F8634:
	cmp sb, #0
	beq _021F8608
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x24]
	sub r0, r0, #1
	str r0, [r1, #0x24]
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #5
	streq r1, [r5]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021F84F0

	arm_func_start ov4_021F866C
ov4_021F866C: ; 0x021F866C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r3
	cmp r0, #5
	ldmneia sp!, {r3, r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0x14
	add r1, sp, #0x18
	bl ov4_021FAE30
	ldr r0, [r5, #0x98]
	bl ov4_021E9BBC
	cmp r0, #0
	beq _021F86D0
	str r4, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	mov r1, #0
	bl ov4_021F7B48
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_021F86D0:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r0, r5
	mov r3, r4
	bl ov4_021FA344
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021F866C

	arm_func_start ov4_021F86F0
ov4_021F86F0: ; 0x021F86F0
	ldr ip, _021F86FC ; =ov4_021F8340
	mov r1, #1
	bx ip
	; .align 2, 0
_021F86FC: .word ov4_021F8340
	arm_func_end ov4_021F86F0

	arm_func_start ov4_021F8700
ov4_021F8700: ; 0x021F8700
	ldr ip, _021F870C ; =ov4_021F86F0
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_021F870C: .word ov4_021F86F0
	arm_func_end ov4_021F8700

	arm_func_start ov4_021F8710
ov4_021F8710: ; 0x021F8710
	stmfd sp!, {r3, lr}
	ldr r1, _021F874C ; =0x0221B3B0
	ldr r2, [r1, #0]
	cmp r2, #1
	ldmeqia sp!, {r3, pc}
	mov r2, #1
	str r2, [r1, #0]
	ldr r0, [r0, #0xc]
	ldr r1, _021F8750 ; =ov4_021F8700
	mov r2, #0
	bl ov4_021EA6D0
	ldr r0, _021F874C ; =0x0221B3B0
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F874C: .word 0x0221B3B0
_021F8750: .word ov4_021F8700
	arm_func_end ov4_021F8710

	arm_func_start ov4_021F8754
ov4_021F8754: ; 0x021F8754
	ldrh r0, [r0, #8]
	bx lr
	arm_func_end ov4_021F8754

	arm_func_start ov4_021F875C
ov4_021F875C: ; 0x021F875C
	ldr r1, [r0, #0x54]
	ldr r0, [r0, #0x58]
	sub r0, r1, r0
	bx lr
	arm_func_end ov4_021F875C

	arm_func_start ov4_021F876C
ov4_021F876C: ; 0x021F876C
	ldr r0, [r0, #0]
	bx lr
	arm_func_end ov4_021F876C

	arm_func_start ov4_021F8774
ov4_021F8774: ; 0x021F8774
	str r1, [r0, #0x30]
	bx lr
	arm_func_end ov4_021F8774

	arm_func_start ov4_021F877C
ov4_021F877C: ; 0x021F877C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _021F87A0
	ldr r0, _021F87A8 ; =0x02219708
	ldr r1, _021F87AC ; =0x022196FC
	ldr r2, _021F87B0 ; =0x022196CC
	ldr r3, _021F87B4 ; =0x000001A3
	bl __msl_assertion_failed
_021F87A0:
	str r4, [r5, #0x40]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F87A8: .word 0x02219708
_021F87AC: .word 0x022196FC
_021F87B0: .word 0x022196CC
_021F87B4: .word 0x000001A3
	arm_func_end ov4_021F877C

	arm_func_start ov4_021F87B8
ov4_021F87B8: ; 0x021F87B8
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _021F87D8
	ldr r0, _021F87E0 ; =0x02219708
	ldr r1, _021F87E4 ; =0x022196FC
	ldr r2, _021F87E8 ; =0x022196E4
	ldr r3, _021F87EC ; =0x000001AA
	bl __msl_assertion_failed
_021F87D8:
	ldr r0, [r4, #0x40]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F87E0: .word 0x02219708
_021F87E4: .word 0x022196FC
_021F87E8: .word 0x022196E4
_021F87EC: .word 0x000001AA
	arm_func_end ov4_021F87B8

	.data


	.global Unk_ov4_022196CC
Unk_ov4_022196CC: ; 0x022196CC
	.incbin "incbin/overlay4_data.bin", 0x384C, 0x3864 - 0x384C

	.global Unk_ov4_022196E4
Unk_ov4_022196E4: ; 0x022196E4
	.incbin "incbin/overlay4_data.bin", 0x3864, 0x387C - 0x3864

	.global Unk_ov4_022196FC
Unk_ov4_022196FC: ; 0x022196FC
	.incbin "incbin/overlay4_data.bin", 0x387C, 0x3888 - 0x387C

	.global Unk_ov4_02219708
Unk_ov4_02219708: ; 0x02219708
	.incbin "incbin/overlay4_data.bin", 0x3888, 0xB



	.bss


	.global Unk_ov4_0221B3B0
Unk_ov4_0221B3B0: ; 0x0221B3B0
	.space 0x4

