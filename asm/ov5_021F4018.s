	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F4018
ov5_021F4018: ; 0x021F4018
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x80
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F4044
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4018

	thumb_func_start ov5_021F4034
ov5_021F4034: ; 0x021F4034
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F407C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F4034

	thumb_func_start ov5_021F4044
ov5_021F4044: ; 0x021F4044
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x6f
	bl ov5_021DFB00
	mov r2, #0
	str r2, [sp]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x18
	mov r3, #0xa6
	bl ov5_021DFB24
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r4, #0x3c
	add r1, r4, #0
	mov r3, #0xa7
	bl ov5_021DFB24
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F4044

	thumb_func_start ov5_021F407C
ov5_021F407C: ; 0x021F407C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0207395C
	add r0, r4, #0
	add r0, #0x18
	bl sub_02073AA8
	add r4, #0x3c
	add r0, r4, #0
	bl sub_02073AA8
	pop {r4, pc}
	thumb_func_end ov5_021F407C

	thumb_func_start ov5_021F4098
ov5_021F4098: ; 0x021F4098
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #0x1c
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	mov r1, #0x1e
	ldr r0, [r0, #0x40]
	str r0, [sp, #0x10]
	bl ov5_021DF4E4
	cmp r0, #0
	bne _021F40C2
	ldr r0, [sp, #0x10]
	mov r1, #0x1e
	bl ov5_021DF4A8
_021F40C2:
	ldr r0, [sp, #0x10]
	mov r1, #0x1e
	bl ov5_021DF55C
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _021F411A
	add r4, r7, #0
	add r4, #0x60
	mov r6, #1
	mov r5, #0x10
_021F40E0:
	mov r0, #2
	lsl r1, r5, #0xc
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #0x4e
	lsl r0, r0, #0xe
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	add r1, sp, #0x1c
	mov r2, #0
	bl sub_020644D0
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, _021F4168 ; =0x022006C8
	add r2, sp, #0x1c
	mov r3, #0
	bl ov5_021DF72C
	add r6, r6, #1
	add r5, #0x10
	stmia r4!, {r0}
	cmp r6, #5
	blt _021F40E0
_021F411A:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F4162
	mov r5, #0x12
	add r7, #0x70
	lsl r4, r5, #4
	add r6, sp, #0x1c
_021F4128:
	mov r0, #2
	lsl r1, r4, #0xc
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #0x4e
	lsl r0, r0, #0xe
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0
	bl sub_020644D0
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, _021F4168 ; =0x022006C8
	add r2, r6, #0
	mov r3, #0
	bl ov5_021DF72C
	add r5, r5, #1
	add r4, #0x10
	stmia r7!, {r0}
	cmp r5, #0x16
	blt _021F4128
_021F4162:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4168: .word 0x022006C8
	thumb_func_end ov5_021F4098

	thumb_func_start ov5_021F416C
ov5_021F416C: ; 0x021F416C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, [r0, #0x40]
	add r4, r1, #0
	mov r1, #0x1e
	str r0, [sp, #4]
	bl ov5_021DF4E4
	cmp r0, #1
	beq _021F4184
	bl sub_02022974
_021F4184:
	ldr r0, [sp, #4]
	mov r1, #0x1e
	bl ov5_021DF55C
	cmp r4, #0
	bne _021F4196
	add r5, r0, #0
	add r5, #0x60
	b _021F419A
_021F4196:
	add r5, r0, #0
	add r5, #0x70
_021F419A:
	mov r7, #4
	mov r6, #0
	cmp r7, #0
	ble _021F41EC
	ble _021F41EC
_021F41A4:
	ldr r0, [r5, #0]
	bl sub_02071598
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	add r0, r4, #4
	bl sub_02073A90
	add r0, r4, #4
	bl sub_02073974
	add r0, r4, #0
	add r0, #0x80
	ldr r3, [r0, #0]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [sp, #4]
	add r1, r4, #4
	add r3, #0x3c
	bl ov5_021DFB40
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r0, r4, #0
	add r0, #0x28
	add r1, r1, #4
	add r2, r4, #4
	bl sub_02073B90
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blt _021F41A4
_021F41EC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F416C

	thumb_func_start ov5_021F41F0
ov5_021F41F0: ; 0x021F41F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_020715BC
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	add r0, r4, #0
	str r2, [r4, #0x7c]
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r3, [r0, #0]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x7c]
	add r1, r4, #4
	add r3, #0x18
	bl ov5_021DFB40
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r0, r4, #0
	add r0, #0x28
	add r1, r1, #4
	add r2, r4, #4
	bl sub_02073B90
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F41F0

	thumb_func_start ov5_021F4234
ov5_021F4234: ; 0x021F4234
	ldr r3, _021F423C ; =sub_02073AA8
	add r0, r1, #4
	bx r3
	nop
_021F423C: .word sub_02073AA8
	thumb_func_end ov5_021F4234

	thumb_func_start ov5_021F4240
ov5_021F4240: ; 0x021F4240
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	cmp r0, #1
	bne _021F4262
	add r0, r4, #4
	bl sub_02073B40
	cmp r0, #1
	bne _021F4260
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, pc}
_021F4260:
	mov r2, #0
_021F4262:
	mov r1, #1
	add r0, r4, #4
	lsl r1, r1, #0xc
	bl sub_02073AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4240

	thumb_func_start ov5_021F4270
ov5_021F4270: ; 0x021F4270
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	add r4, #0x28
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02073BB4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4270

	.rodata


	.global Unk_ov5_022006C8
Unk_ov5_022006C8: ; 0x022006C8
	.incbin "incbin/overlay5_rodata.bin", 0x7DB4, 0x14

