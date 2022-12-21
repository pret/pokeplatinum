	.include "macros/function.inc"
	.include "include/unk_020D26F4.inc"

	

	.text


	arm_func_start sub_020D26F4
sub_020D26F4: ; 0x020D26F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D27C0 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r0, _020D27C4 ; =0x04000204
	ldr r1, _020D27C8 ; =0x02101488
	ldrh r3, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0]
	ldr r4, [r2, #0x10]
	mov r2, #0
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r0]
	ldrh r4, [r0, #4]
	ldr r1, _020D27CC ; =0x021D03C8
	ldr lr, _020D27D0 ; =0x0A005555
	strh r2, [r0, #4]
	str r4, [r1, #0]
	mov r5, #0xaa
	ldr r4, _020D27D4 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r2, #0x80
	strb r2, [lr]
	strb r5, [lr]
	strb ip, [r4]
	mov r2, #0x10
	strb r2, [lr]
	ldrh r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r1, _020D27D8 ; =0x021D03DC
	strh r2, [r0, #4]
	ldr r4, [r1, #0]
	mov r0, #3
	mov r1, #0xa000000
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D27C4 ; =0x04000204
	ldr r1, _020D27C0 ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D27C0: .word 0x021D03AC
_020D27C4: .word 0x04000204
_020D27C8: .word 0x02101488
_020D27CC: .word 0x021D03C8
_020D27D0: .word 0x0A005555
_020D27D4: .word 0x0A002AAA
_020D27D8: .word 0x021D03DC
	arm_func_end sub_020D26F4

	arm_func_start sub_020D27DC
sub_020D27DC: ; 0x020D27DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D2944 ; =0x02101488
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	str r1, [r4, #0]
	ldrh r4, [sp, #0x24]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	addhs sp, sp, #0x28
	ldrhs r0, _020D2948 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020D294C ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r5, _020D2950 ; =0x04000204
	ldr r0, _020D2944 ; =0x02101488
	ldrh r3, [r5]
	ldr r2, [r0, #0]
	ldrh r1, [r5]
	mov r0, r4, lsl #0xc
	ldr r2, [r2, #0x10]
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [r5]
	and r1, r3, #3
	mov r0, r0, lsr #0x10
	str r1, [sp]
	bl sub_020D14B4
	and sl, r4, #0xf
	mov r8, #0
	add r7, r5, #4
	ldr r5, _020D2954 ; =0x0A005555
	ldr r4, _020D2958 ; =0x021D03C8
	mov fp, r8
	mov r6, #0xaa
_020D2884:
	ldr r0, _020D2944 ; =0x02101488
	ldrh r3, [r7]
	ldr r0, [r0, #0]
	mov sb, #0x55
	ldrh r1, [r0, #8]
	mov r0, #2
	mov r2, #0xff
	strh fp, [r7]
	str r3, [r4, #0]
	ldr r3, _020D295C ; =0x0A002AAA
	strb r6, [r5]
	strb sb, [r3]
	mov r3, #0x80
	strb r3, [r5]
	mov r1, sl, lsl r1
	ldr r3, _020D295C ; =0x0A002AAA
	strb r6, [r5]
	strb sb, [r3]
	add r1, r1, #0xa000000
	mov r3, #0x30
	strb r3, [r1]
	ldrh r3, [r7]
	ldr r3, [r4, #0]
	strh r3, [r7]
	ldr r3, _020D2960 ; =0x021D03DC
	ldr r3, [r3, #0]
	blx r3
	mov sb, r0
	tst sb, #0xa000
	beq _020D2914
	cmp r8, #0
	bne _020D2914
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	b _020D2884
_020D2914:
	ldr r2, _020D2950 ; =0x04000204
	ldr r1, _020D294C ; =0x021D03AC
	ldrh r0, [r2]
	bic r3, r0, #3
	ldr r0, [sp]
	orr r0, r3, r0
	strh r0, [r2]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, sb
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D2944: .word 0x02101488
_020D2948: .word 0x000080FF
_020D294C: .word 0x021D03AC
_020D2950: .word 0x04000204
_020D2954: .word 0x0A005555
_020D2958: .word 0x021D03C8
_020D295C: .word 0x0A002AAA
_020D2960: .word 0x021D03DC
	arm_func_end sub_020D27DC

	arm_func_start sub_020D2964
sub_020D2964: ; 0x020D2964
	stmfd sp!, {r3, lr}
	ldr ip, _020D29AC ; =0x0A005555
	mov r3, #0xaa
	ldr r2, _020D29B0 ; =0x0A002AAA
	strb r3, [ip]
	mov r3, #0x55
	mov lr, r0
	strb r3, [r2]
	mov r0, #0xa0
	strb r0, [ip]
	ldrb r2, [lr]
	ldr r3, _020D29B4 ; =0x021D03DC
	mov r0, #1
	strb r2, [r1]
	ldrb r2, [lr]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D29AC: .word 0x0A005555
_020D29B0: .word 0x0A002AAA
_020D29B4: .word 0x021D03DC
	arm_func_end sub_020D2964

	arm_func_start sub_020D29B8
sub_020D29B8: ; 0x020D29B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D2B14 ; =0x02101488
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	str r1, [r4, #0]
	ldrh r4, [sp, #0x20]
	ldrh r0, [r0, #0xa]
	ldr r7, [sp, #0xc]
	cmp r4, r0
	addhs sp, sp, #0x24
	ldrhs r0, _020D2B18 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_020D2B50
	movs r6, r0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _020D2B1C ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r5, _020D2B20 ; =0x04000204
	ldr r0, _020D2B14 ; =0x02101488
	ldrh r3, [r5]
	ldr r2, [r0, #0]
	ldrh r1, [r5]
	mov r0, r4, lsl #0xc
	ldr r2, [r2, #0x10]
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [r5]
	mov r0, r0, lsr #0x10
	and r5, r3, #3
	bl sub_020D14B4
	ldr r0, _020D2B14 ; =0x02101488
	ldr r8, _020D2B24 ; =0x021D03A8
	ldr r2, [r0, #0]
	ldr r1, _020D2B28 ; =0x04000208
	ldr r0, [r2, #4]
	and r4, r4, #0xf
	strh r0, [r8]
	ldrh r3, [r2, #8]
	ldrh r2, [r1]
	mov r0, #0
	mov r3, r4, lsl r3
	strh r0, [r1]
	ldrh r1, [r8]
	ldr r0, _020D2B2C ; =0x021D03C8
	add r4, r3, #0xa000000
	str r2, [r0, #0]
	cmp r1, #0
	beq _020D2AD4
_020D2AA0:
	mov r0, r7
	mov r1, r4
	bl sub_020D2964
	movs r6, r0
	bne _020D2AD4
	ldrh r0, [r8]
	add r7, r7, #1
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	bne _020D2AA0
_020D2AD4:
	ldr r3, _020D2B28 ; =0x04000208
	ldr r0, _020D2B2C ; =0x021D03C8
	ldrh r1, [r3]
	ldr r0, [r0, #0]
	sub r2, r3, #4
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _020D2B1C ; =0x021D03AC
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r6
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D2B14: .word 0x02101488
_020D2B18: .word 0x000080FF
_020D2B1C: .word 0x021D03AC
_020D2B20: .word 0x04000204
_020D2B24: .word 0x021D03A8
_020D2B28: .word 0x04000208
_020D2B2C: .word 0x021D03C8
	arm_func_end sub_020D29B8

	arm_func_start sub_020D2B30
sub_020D2B30: ; 0x020D2B30
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	add r0, sp, #0
	bl sub_020D26F4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2B30

	arm_func_start sub_020D2B50
sub_020D2B50: ; 0x020D2B50
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D27DC
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2B50

	arm_func_start sub_020D2B74
sub_020D2B74: ; 0x020D2B74
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D29B8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2B74

	arm_func_start sub_020D2B9C
sub_020D2B9C: ; 0x020D2B9C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, _020D2BBC ; =sub_020D26F4
	mov r2, r0
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2BBC: .word sub_020D26F4
	arm_func_end sub_020D2B9C

	arm_func_start sub_020D2BC0
sub_020D2BC0: ; 0x020D2BC0
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D2BE4 ; =sub_020D27DC
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2BE4: .word sub_020D27DC
	arm_func_end sub_020D2BC0

	arm_func_start sub_020D2BE8
sub_020D2BE8: ; 0x020D2BE8
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2C0C ; =sub_020D29B8
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2C0C: .word sub_020D29B8
	arm_func_end sub_020D2BE8

	arm_func_start sub_020D2C10
sub_020D2C10: ; 0x020D2C10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D2D2C ; =0x02101488
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	str r1, [r4, #0]
	ldrh r4, [sp, #0x20]
	ldrh r0, [r0, #0xa]
	ldr r7, [sp, #0xc]
	cmp r4, r0
	addhs sp, sp, #0x24
	ldrhs r0, _020D2D30 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_020D2634
	movs r6, r0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _020D2D34 ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r5, _020D2D38 ; =0x04000204
	ldr r0, _020D2D2C ; =0x02101488
	ldrh r3, [r5]
	ldr r2, [r0, #0]
	ldrh r1, [r5]
	ldr r2, [r2, #0x10]
	ldr r8, _020D2D3C ; =0x021D03A8
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [r5]
	ldr r1, [r0, #0]
	and r5, r3, #3
	ldr r0, [r1, #4]
	strh r0, [r8]
	ldrh r1, [r1, #8]
	ldrh r0, [r8]
	mov r1, r4, lsl r1
	cmp r0, #0
	add r4, r1, #0xa000000
	beq _020D2D00
_020D2CCC:
	mov r0, r7
	mov r1, r4
	bl sub_020D2330
	movs r6, r0
	bne _020D2D00
	ldrh r0, [r8]
	add r7, r7, #1
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	bne _020D2CCC
_020D2D00:
	ldr r2, _020D2D38 ; =0x04000204
	ldr r0, _020D2D34 ; =0x021D03AC
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r6
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D2D2C: .word 0x02101488
_020D2D30: .word 0x000080FF
_020D2D34: .word 0x021D03AC
_020D2D38: .word 0x04000204
_020D2D3C: .word 0x021D03A8
	arm_func_end sub_020D2C10

	arm_func_start sub_020D2D40
sub_020D2D40: ; 0x020D2D40
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D2C10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2D40

	arm_func_start sub_020D2D68
sub_020D2D68: ; 0x020D2D68
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2D8C ; =sub_020D2C10
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2D8C: .word sub_020D2C10
	arm_func_end sub_020D2D68

	.rodata


	.global Unk_020FE6A0
Unk_020FE6A0: ; 0x020FE6A0
	.incbin "incbin/arm9_rodata.bin", 0x19A60, 0x19A68 - 0x19A60

	.global Unk_020FE6A8
Unk_020FE6A8: ; 0x020FE6A8
	.incbin "incbin/arm9_rodata.bin", 0x19A68, 0x19AA4 - 0x19A68

	.global Unk_020FE6E4
Unk_020FE6E4: ; 0x020FE6E4
	.incbin "incbin/arm9_rodata.bin", 0x19AA4, 0x19AE0 - 0x19AA4

	.global Unk_020FE720
Unk_020FE720: ; 0x020FE720
	.incbin "incbin/arm9_rodata.bin", 0x19AE0, 0x19AE8 - 0x19AE0

	.global Unk_020FE728
Unk_020FE728: ; 0x020FE728
	.incbin "incbin/arm9_rodata.bin", 0x19AE8, 0x3C

