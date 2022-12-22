	.include "macros/function.inc"
	.include "include/ov18_0222B6A0.inc"

	

	.text


	arm_func_start ov18_0222B6A0
ov18_0222B6A0: ; 0x0222B6A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0222B6F8 ; =0x02253250
	mov r1, r4
	mov r2, #0x3f
	bl strncpy
	ldrb r0, [r4, #5]
	cmp r0, #0x78
	ldreq r0, _0222B6F8 ; =0x02253250
	ldmeqia sp!, {r4, pc}
	bl ov18_0222F74C
	ldrb r1, [r4, #5]
	cmp r1, #0x79
	bne _0222B6E4
	cmp r0, #0
	ldrne r0, _0222B6F8 ; =0x02253250
	ldmneia sp!, {r4, pc}
_0222B6E4:
	ldr r1, _0222B6FC ; =0x02248D0C
	ldrb r1, [r1, r0]
	ldr r0, _0222B6F8 ; =0x02253250
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222B6F8: .word 0x02253250
_0222B6FC: .word 0x02248D0C
	arm_func_end ov18_0222B6A0

	arm_func_start ov18_0222B700
ov18_0222B700: ; 0x0222B700
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl ov18_0222B6A0
	add r1, sp, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, [sp]
	mov r4, r0
	bl DC_FlushRange
	ldr r2, [sp]
	mov r0, r4
	mov r1, #0
	blx r5
	mov r0, r4
	bl ov18_0224382C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_0222B700

	arm_func_start ov18_0222B740
ov18_0222B740: ; 0x0222B740
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F6E8
	ldr r0, [sp]
	cmp r0, #1
	bne _0222B774
	mov r0, r4
	bl ov18_0223EA28
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222B774:
	cmp r0, #2
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl ov18_0223EFBC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov18_0222B740

	arm_func_start ov18_0222B790
ov18_0222B790: ; 0x0222B790
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F6E8
	ldr r0, [sp]
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl ov18_0222AF0C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov18_0222B790

	arm_func_start ov18_0222B7C8
ov18_0222B7C8: ; 0x0222B7C8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r1, _0222B838 ; =0x022532D8
	mov r5, r0
	ldr r0, [r1, #0]
	mov r1, r4
	bl ov18_0222F8B8
	mov r4, r0
	bl ov18_0222B8F8
	mov r1, #0x70
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x28
	mov r3, #0xe6
	bl ov18_02244A9C
	mov r0, r5
	bl ov18_02244C08
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222B838: .word 0x022532D8
	arm_func_end ov18_0222B7C8

	arm_func_start ov18_0222B83C
ov18_0222B83C: ; 0x0222B83C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0
	mov r6, r1
	mov r1, r0
	bl ov18_0224467C
	ldr r1, _0222B8E8 ; =0x022532D8
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, r6
	bl ov18_0222F8B8
	mov r6, r0
	bl ov18_0222B8F8
	mov r1, #0x5e
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r6, [sp, #0xc]
	bl ov18_02244A9C
	bl ov18_0222F74C
	mov r6, r0
	bl ov18_0222F74C
	ldr r1, _0222B8EC ; =0x00000209
	mov r3, r0, lsl #2
	stmia sp, {r1, r5}
	ldr r2, _0222B8F0 ; =0x02248CF2
	ldr r1, _0222B8F4 ; =0x02248CF0
	mov ip, r6, lsl #2
	ldrh r2, [r2, r3]
	ldrh r1, [r1, ip]
	mov r0, r4
	mov r3, #2
	bl ov18_02244904
	mov r0, r4
	bl ov18_02244C08
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222B8E8: .word 0x022532D8
_0222B8EC: .word 0x00000209
_0222B8F0: .word 0x02248CF2
_0222B8F4: .word 0x02248CF0
	arm_func_end ov18_0222B83C

	arm_func_start ov18_0222B8F8
ov18_0222B8F8: ; 0x0222B8F8
	stmfd sp!, {r3, lr}
	bl ov18_0222F74C
	ldr r1, _0222B90C ; =0x02248CD4
	ldr r0, [r1, r0, lsl #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222B90C: .word 0x02248CD4
	arm_func_end ov18_0222B8F8

	.rodata


	.global Unk_ov18_02248CC4
Unk_ov18_02248CC4: ; 0x02248CC4
	.incbin "incbin/overlay18_rodata.bin", 0x2890, 0x2898 - 0x2890

	.global Unk_ov18_02248CCC
Unk_ov18_02248CCC: ; 0x02248CCC
	.incbin "incbin/overlay18_rodata.bin", 0x2898, 0x28A0 - 0x2898

	.global Unk_ov18_02248CD4
Unk_ov18_02248CD4: ; 0x02248CD4
	.incbin "incbin/overlay18_rodata.bin", 0x28A0, 0x28BC - 0x28A0

	.global Unk_ov18_02248CF0
Unk_ov18_02248CF0: ; 0x02248CF0
	.incbin "incbin/overlay18_rodata.bin", 0x28BC, 0x28D8 - 0x28BC

	.global Unk_ov18_02248D0C
Unk_ov18_02248D0C: ; 0x02248D0C
	.incbin "incbin/overlay18_rodata.bin", 0x28D8, 0x8



	.bss


	.global Unk_ov18_02253250
Unk_ov18_02253250: ; 0x02253250
	.space 0x40

