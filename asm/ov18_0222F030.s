	.include "macros/function.inc"
	.include "include/ov18_0222F030.inc"

	

	.text


	arm_func_start ov18_0222F030
ov18_0222F030: ; 0x0222F030
	stmdb sp!, {lr}
	sub sp, sp, #0x104
	mov r0, #0x26c
	mov r1, #4
	bl ov18_02245068
	ldr r3, _0222F130 ; =0x022532A4
	add r1, sp, #0
	str r0, [r3, #4]
	mov r0, #0
	mov r2, #0x104
	strb r0, [r3]
	bl sub_020C4AF0
	mov r3, #0x50
	mov r2, #0xc
	ldr r0, _0222F134 ; =0x022490FC
	add r1, sp, #4
	strb r3, [sp]
	strh r2, [sp, #2]
	bl sub_020C4DB0
	ldr r0, _0222F130 ; =0x022532A4
	mov r2, #3
	ldr r1, [r0, #4]
	add ip, sp, #0
	strh r2, [r1]
	ldr lr, [r0, #4]
	mov r2, #0x41
	add r3, lr, #2
_0222F09C:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	subs r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _0222F09C
	ldr r1, _0222F130 ; =0x022532A4
	mov r3, #1
	add r0, lr, #0x100
	strh r3, [r0, #6]
	ldr r0, [r1, #4]
	sub r2, r3, #2
	add r0, r0, #0x100
	strh r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0xa]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xe]
	ldr r0, [r1, #4]
	add r0, r0, #0x110
	bl sub_020C3FA0
	ldr r0, _0222F138 ; =ov18_0222F1F0
	ldr r1, _0222F13C ; =ov18_0222F200
	blx ov18_022269F8
	cmp r0, #0
	addeq sp, sp, #0x104
	ldmeqia sp!, {pc}
	bl sub_020C42A8
	add sp, sp, #0x104
	ldmia sp!, {pc}
	; .align 2, 0
_0222F130: .word 0x022532A4
_0222F134: .word 0x022490FC
_0222F138: .word ov18_0222F1F0
_0222F13C: .word ov18_0222F200
	arm_func_end ov18_0222F030

	arm_func_start ov18_0222F140
ov18_0222F140: ; 0x0222F140
	stmfd sp!, {r4, lr}
	mov r4, r0
	blx ov18_02226ABC
	cmp r4, #0
	beq _0222F17C
	ldr r0, _0222F188 ; =0x022532A4
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x116]
	cmp r1, #0
	ldreqb r0, [r0]
	cmpeq r0, #1
	bne _0222F17C
	add r0, r2, #0x17
	add r0, r0, #0x100
	bl ov18_0223E4C0
_0222F17C:
	ldr r0, _0222F18C ; =0x022532A8
	bl ov18_0224508C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222F188: .word 0x022532A4
_0222F18C: .word 0x022532A8
	arm_func_end ov18_0222F140

	arm_func_start ov18_0222F190
ov18_0222F190: ; 0x0222F190
	stmfd sp!, {r3, lr}
	ldr r0, _0222F1EC ; =0x022532A4
	ldr r0, [r0, #4]
	blx ov18_022246E4
	cmp r0, #0
	bne _0222F1B8
	ldr r1, _0222F1EC ; =0x022532A4
	mov r0, #1
	strb r0, [r1]
	ldmia sp!, {r3, pc}
_0222F1B8:
	ldr r0, _0222F1EC ; =0x022532A4
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x116]
	cmp r0, #1
	beq _0222F1DC
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _0222F1E4
_0222F1DC:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222F1E4:
	mov r0, #2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222F1EC: .word 0x022532A4
	arm_func_end ov18_0222F190

	arm_func_start ov18_0222F1F0
ov18_0222F1F0: ; 0x0222F1F0
	ldr ip, _0222F1FC ; =ov18_02245068
	mov r1, #0x20
	bx ip
	; .align 2, 0
_0222F1FC: .word ov18_02245068
	arm_func_end ov18_0222F1F0

	arm_func_start ov18_0222F200
ov18_0222F200: ; 0x0222F200
	ldr ip, _0222F208 ; =ov18_022450D0
	bx ip
	; .align 2, 0
_0222F208: .word ov18_022450D0
	arm_func_end ov18_0222F200

	.rodata


	.global Unk_ov18_022490FC
Unk_ov18_022490FC: ; 0x022490FC
	.incbin "incbin/overlay18_rodata.bin", 0x2CC8, 0xC



	.bss


	.global Unk_ov18_022532A4
Unk_ov18_022532A4: ; 0x022532A4
	.space 0x4

	.global Unk_ov18_022532A8
Unk_ov18_022532A8: ; 0x022532A8
	.space 0x4

