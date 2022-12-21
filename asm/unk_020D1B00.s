	.include "macros/function.inc"
	.include "include/unk_020D1B00.inc"

	

	.text


	arm_func_start sub_020D1B00
sub_020D1B00: ; 0x020D1B00
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D1BCC ; =0x021D03AC
	ldrh r0, [r0]
	bl sub_020C18F4
	ldr r0, _020D1BD0 ; =0x04000204
	ldr r1, _020D1BD4 ; =0x02101488
	ldrh r3, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0]
	ldr r4, [r2, #0x10]
	mov r2, #0
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r0]
	ldrh r4, [r0, #4]
	ldr r1, _020D1BD8 ; =0x021D03C8
	ldr lr, _020D1BDC ; =0x0A005555
	strh r2, [r0, #4]
	str r4, [r1, #0]
	mov r5, #0xaa
	ldr r4, _020D1BE0 ; =0x0A002AAA
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
	ldr r1, _020D1BE4 ; =0x021D03DC
	strh r2, [r0, #4]
	ldr r4, [r1, #0]
	mov r0, #3
	mov r1, #0xa000000
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D1BD0 ; =0x04000204
	ldr r1, _020D1BCC ; =0x021D03AC
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
_020D1BCC: .word 0x021D03AC
_020D1BD0: .word 0x04000204
_020D1BD4: .word 0x02101488
_020D1BD8: .word 0x021D03C8
_020D1BDC: .word 0x0A005555
_020D1BE0: .word 0x0A002AAA
_020D1BE4: .word 0x021D03DC
	arm_func_end sub_020D1B00

	arm_func_start sub_020D1BE8
sub_020D1BE8: ; 0x020D1BE8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r1, [r5, #0]
	ldr r0, _020D1CF4 ; =0x021D03AC
	str r1, [r4, #0]
	ldrh r1, [sp, #0x20]
	ldrh r0, [r0]
	mov r1, r1, lsl #7
	add r5, r1, #0xa000000
	bl sub_020C18F4
	ldr ip, _020D1CF8 ; =0x04000204
	ldr r1, _020D1CFC ; =0x02101488
	ldrh r0, [ip]
	ldr r1, [r1, #0]
	ldrh r2, [ip]
	ldr r3, [r1, #0x10]
	mov r1, #0
	bic r2, r2, #3
	orr r2, r2, r3
	strh r2, [ip]
	ldrh r3, [ip, #4]
	ldr r4, _020D1D00 ; =0x0A005555
	mov r2, #0xaa
	strh r1, [ip, #4]
	strb r2, [r4]
	ldr r1, _020D1D04 ; =0x0A002AAA
	mov r2, #0x55
	strb r2, [r1]
	mov r1, #0xa0
	strb r1, [r4]
	and r4, r0, #3
	mov r0, #0x80
	mov r2, #0xff
_020D1C84:
	strb r2, [r5], #1
	subs r0, r0, #1
	bne _020D1C84
	ldr lr, _020D1D08 ; =0x04000208
	ldr ip, _020D1D0C ; =0x021D03DC
	ldrh r0, [lr]
	sub r1, r5, #1
	strh r3, [lr]
	ldr r3, [ip]
	mov r0, #1
	blx r3
	movs r5, r0
	beq _020D1CC8
	and r0, r5, #0xff00
	orr r0, r0, #2
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_020D1CC8:
	ldr r2, _020D1CF8 ; =0x04000204
	ldr r0, _020D1CF4 ; =0x021D03AC
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r2]
	ldrh r0, [r0]
	bl sub_020C1914
	mov r0, r5
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020D1CF4: .word 0x021D03AC
_020D1CF8: .word 0x04000204
_020D1CFC: .word 0x02101488
_020D1D00: .word 0x0A005555
_020D1D04: .word 0x0A002AAA
_020D1D08: .word 0x04000208
_020D1D0C: .word 0x021D03DC
	arm_func_end sub_020D1BE8

	arm_func_start sub_020D1D10
sub_020D1D10: ; 0x020D1D10
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r0, [sp, #0x20]
	cmp r0, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D1DB4 ; =0x000080FF
	ldmhsia sp!, {r4, r5, r6, r7, pc}
	mov r0, r0, lsl #0x15
	mov r6, r0, lsr #0x10
	mov r5, #0
	mov r4, #2
_020D1D5C:
	mov r7, r4
_020D1D60:
	mov r0, r6
	bl sub_020D2078
	cmp r0, #0
	beq _020D1D80
	sub r1, r7, #1
	mov r1, r1, lsl #0x10
	movs r7, r1, lsr #0x10
	bne _020D1D60
_020D1D80:
	add r1, r6, #1
	mov r1, r1, lsl #0x10
	cmp r0, #0
	mov r6, r1, lsr #0x10
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r1, r5, #1
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	cmp r5, #0x20
	blo _020D1D5C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1DB4: .word 0x000080FF
	arm_func_end sub_020D1D10

	arm_func_start sub_020D1DB8
sub_020D1DB8: ; 0x020D1DB8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D1EB8 ; =0x021D03AC
	ldr r1, [r5, #0]
	ldrh r0, [r0]
	str r1, [r4, #0]
	ldr r5, [sp, #0xc]
	bl sub_020C18F4
	ldr r1, _020D1EBC ; =0x04000204
	ldr r2, _020D1EC0 ; =0x02101488
	ldrh r0, [r1]
	ldr r3, [r2, #0]
	ldrh r2, [r1]
	ldr r4, [r3, #0x10]
	mov r3, #0
	bic r2, r2, #3
	orr r2, r2, r4
	strh r2, [r1]
	ldrh ip, [sp, #0x20]
	ldrh r2, [r1, #4]
	ldr r4, _020D1EC4 ; =0x0A005555
	mov ip, ip, lsl #7
	strh r3, [r1, #4]
	mov r3, #0xaa
	strb r3, [r4]
	ldr r1, _020D1EC8 ; =0x0A002AAA
	mov r3, #0x55
	strb r3, [r1]
	mov r1, #0xa0
	strb r1, [r4]
	and r4, r0, #3
	add lr, ip, #0xa000000
	mov r1, #0x80
_020D1E54:
	ldrb r0, [r5], #1
	subs r1, r1, #1
	strb r0, [lr], #1
	bne _020D1E54
	ldr ip, _020D1ECC ; =0x04000208
	ldr r3, _020D1ED0 ; =0x021D03DC
	ldrh r0, [ip]
	sub r1, lr, #1
	mov r0, #1
	strh r2, [ip]
	ldrb r2, [r5, #-1]
	ldr r3, [r3, #0]
	blx r3
	ldr r3, _020D1EBC ; =0x04000204
	ldr r1, _020D1EB8 ; =0x021D03AC
	ldrh r2, [r3]
	mov r5, r0
	bic r0, r2, #3
	orr r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r1]
	bl sub_020C1914
	mov r0, r5
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020D1EB8: .word 0x021D03AC
_020D1EBC: .word 0x04000204
_020D1EC0: .word 0x02101488
_020D1EC4: .word 0x0A005555
_020D1EC8: .word 0x0A002AAA
_020D1ECC: .word 0x04000208
_020D1ED0: .word 0x021D03DC
	arm_func_end sub_020D1DB8

	arm_func_start sub_020D1ED4
sub_020D1ED4: ; 0x020D1ED4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r0, [sp, #0x20]
	ldr r6, [sp, #0xc]
	cmp r0, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D1F90 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _020D1F94 ; =0x021D03A8
	mov r0, r0, lsl #0x15
	mov r1, #0x1000
	strh r1, [r7]
	mov r5, r0, lsr #0x10
	mov r4, #2
_020D1F2C:
	mov r8, r4
_020D1F30:
	mov r0, r5
	mov r1, r6
	bl sub_020D209C
	cmp r0, #0
	beq _020D1F54
	sub r1, r8, #1
	mov r1, r1, lsl #0x10
	movs r8, r1, lsr #0x10
	bne _020D1F30
_020D1F54:
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r2, [r7]
	add r1, r5, #1
	mov r1, r1, lsl #0x10
	sub r2, r2, #0x80
	strh r2, [r7]
	ldrh r2, [r7]
	add r6, r6, #0x80
	mov r5, r1, lsr #0x10
	cmp r2, #0
	bne _020D1F2C
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D1F90: .word 0x000080FF
_020D1F94: .word 0x021D03A8
	arm_func_end sub_020D1ED4

	arm_func_start sub_020D1F98
sub_020D1F98: ; 0x020D1F98
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	add r0, sp, #0
	bl sub_020D1B00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1F98

	arm_func_start sub_020D1FB8
sub_020D1FB8: ; 0x020D1FB8
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D1D10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1FB8

	arm_func_start sub_020D1FDC
sub_020D1FDC: ; 0x020D1FDC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D1ED4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D1FDC

	arm_func_start sub_020D2004
sub_020D2004: ; 0x020D2004
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, _020D2024 ; =sub_020D1B00
	mov r2, r0
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2024: .word sub_020D1B00
	arm_func_end sub_020D2004

	arm_func_start sub_020D2028
sub_020D2028: ; 0x020D2028
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D204C ; =sub_020D1D10
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D204C: .word sub_020D1D10
	arm_func_end sub_020D2028

	arm_func_start sub_020D2050
sub_020D2050: ; 0x020D2050
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2074 ; =sub_020D1ED4
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2074: .word sub_020D1ED4
	arm_func_end sub_020D2050

	arm_func_start sub_020D2078
sub_020D2078: ; 0x020D2078
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl sub_020D1BE8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D2078

	arm_func_start sub_020D209C
sub_020D209C: ; 0x020D209C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl sub_020D1DB8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end sub_020D209C

	arm_func_start sub_020D20C4
sub_020D20C4: ; 0x020D20C4
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D20E8 ; =sub_020D1BE8
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D20E8: .word sub_020D1BE8
	arm_func_end sub_020D20C4

	arm_func_start sub_020D20EC
sub_020D20EC: ; 0x020D20EC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D2110 ; =sub_020D1DB8
	add r0, sp, #0
	bl sub_020D2F3C
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D2110: .word sub_020D1DB8
	arm_func_end sub_020D20EC

	.rodata


	.global Unk_020FE55C
Unk_020FE55C: ; 0x020FE55C
	.incbin "incbin/arm9_rodata.bin", 0x1991C, 0x19924 - 0x1991C

	.global Unk_020FE564
Unk_020FE564: ; 0x020FE564
	.incbin "incbin/arm9_rodata.bin", 0x19924, 0x19960 - 0x19924

	.global Unk_020FE5A0
Unk_020FE5A0: ; 0x020FE5A0
	.incbin "incbin/arm9_rodata.bin", 0x19960, 0x3C

