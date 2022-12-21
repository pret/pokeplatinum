	.include "macros/function.inc"
	.include "include/unk_020B2628.inc"

	

	.text


	arm_func_start sub_020B2628
sub_020B2628: ; 0x020B2628
	stmfd sp!, {r3, lr}
	ldr r0, _020B267C ; =0x021C89F4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020B2640
	bl sub_020B2684
_020B2640:
	ldr r0, _020B267C ; =0x021C89F4
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r2, [r0]
	cmpne r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _020B2680 ; =0x04000400
	add r0, r0, #4
	mov r2, r2, lsl #2
	bl sub_020C4B90
	ldr r0, _020B267C ; =0x021C89F4
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B267C: .word 0x021C89F4
_020B2680: .word 0x04000400
	arm_func_end sub_020B2628

	arm_func_start sub_020B2684
sub_020B2684: ; 0x020B2684
	ldr r0, _020B2698 ; =0x021C89F4
_020B2688:
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020B2688
	bx lr
	; .align 2, 0
_020B2698: .word 0x021C89F4
	arm_func_end sub_020B2684

	arm_func_start sub_020B269C
sub_020B269C: ; 0x020B269C
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020B269C

	arm_func_start sub_020B26A8
sub_020B26A8: ; 0x020B26A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x100
	blo _020B26D0
	ldr r1, _020B274C ; =0x02101148
	mvn r0, #0
	ldr r1, [r1, #0]
	cmp r1, r0
	bne _020B26E8
_020B26D0:
	mov r2, r4, lsr #2
	ldr r0, [r5, #0]
	add r1, r5, #4
	sub r2, r2, #1
	bl sub_020B275C
	ldmia sp!, {r3, r4, r5, pc}
_020B26E8:
	bl sub_020B2628
	ldr r0, _020B2750 ; =0x021C89F4
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020B2728
	ldr r1, _020B2754 ; =0x021C89F8
	ldr r0, _020B274C ; =0x02101148
	str r1, [sp]
	ldr r0, [r0, #0]
	ldr r3, _020B2758 ; =sub_020B269C
	mov r1, r5
	mov r2, r4
	bl sub_020C4A0C
	ldmia sp!, {r3, r4, r5, pc}
_020B2728:
	ldr r1, _020B2754 ; =0x021C89F8
	ldr r0, _020B274C ; =0x02101148
	str r1, [sp]
	ldr r0, [r0, #0]
	ldr r3, _020B2758 ; =sub_020B269C
	mov r1, r5
	mov r2, r4
	bl sub_020C4808
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B274C: .word 0x02101148
_020B2750: .word 0x021C89F4
_020B2754: .word 0x021C89F8
_020B2758: .word sub_020B269C
	arm_func_end sub_020B26A8

	arm_func_start sub_020B275C
sub_020B275C: ; 0x020B275C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020B2838 ; =0x021C89F4
	mov r6, r0
	ldr ip, [r3]
	mov r5, r1
	mov r4, r2
	cmp ip, #0
	beq _020B2810
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _020B27E4
	ldr r2, [ip]
	add r0, r2, #1
	add r1, r0, r4
	cmp r1, #0xc0
	bhi _020B27E4
	str r0, [ip]
	ldr r0, [r3, #0]
	cmp r4, #0
	add r0, r0, r2, lsl #2
	str r6, [r0, #4]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r3, #0]
	mov r0, r5
	ldr r1, [r2, #0], #4
	add r1, r2, r1, lsl #2
	mov r2, r4, lsl #2
	bl sub_020C4C14
	ldr r0, _020B2838 ; =0x021C89F4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	add r0, r0, r4
	str r0, [r1, #0]
	ldmia sp!, {r4, r5, r6, pc}
_020B27E4:
	ldr r0, [ip]
	cmp r0, #0
	beq _020B27F8
	bl sub_020B2628
	b _020B2820
_020B27F8:
	ldr r0, _020B2838 ; =0x021C89F4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020B2820
	bl sub_020B2684
	b _020B2820
_020B2810:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _020B2820
	bl sub_020B2684
_020B2820:
	ldr r1, _020B283C ; =0x04000400
	mov r0, r5
	mov r2, r4, lsl #2
	str r6, [r1, #0]
	bl sub_020C4B90
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B2838: .word 0x021C89F4
_020B283C: .word 0x04000400
	arm_func_end sub_020B275C

	.bss


	.global Unk_021C89F4
Unk_021C89F4: ; 0x021C89F4
	.space 0x4

	.global Unk_021C89F8
Unk_021C89F8: ; 0x021C89F8
	.space 0x4

	.global Unk_021C89FC
Unk_021C89FC: ; 0x021C89FC
	.space 0x4

