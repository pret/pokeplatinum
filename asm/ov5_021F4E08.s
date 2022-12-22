	.include "macros/function.inc"
	.include "include/ov5_021F4E08.inc"

	

	.text


	thumb_func_start ov5_021F4E08
ov5_021F4E08: ; 0x021F4E08
	push {r3, r4, r5, lr}
	mov r2, #0
	ldr r1, _021F4E24 ; =0x00000D6C
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F4E38
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021F4E24: .word 0x00000D6C
	thumb_func_end ov5_021F4E08

	thumb_func_start ov5_021F4E28
ov5_021F4E28: ; 0x021F4E28
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F4E94
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F4E28

	thumb_func_start ov5_021F4E38
ov5_021F4E38: ; 0x021F4E38
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	mov r5, #0
	add r4, r7, #4
	add r6, r7, r0
_021F4E46:
	mov r0, #0
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [r7, #0]
	add r1, r4, #0
	mov r2, #0
	add r3, #0x1a
	bl ov5_021DFB00
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02073B70
	add r5, r5, #1
	add r4, #0x14
	add r6, #0x54
	cmp r5, #0x20
	blt _021F4E46
	mov r2, #0
	mov r0, #0x14
	add r6, r5, #0
	str r2, [sp]
	mul r6, r0
	add r4, r7, #4
	ldr r0, [r7, #0]
	add r1, r4, r6
	mov r3, #0x19
	bl ov5_021DFB00
	mov r0, #0xa6
	lsl r0, r0, #2
	add r1, r7, r0
	mov r0, #0x54
	mul r0, r5
	add r0, r1, r0
	add r1, r4, r6
	bl sub_02073B70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F4E38

	thumb_func_start ov5_021F4E94
ov5_021F4E94: ; 0x021F4E94
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #4
_021F4E9A:
	add r0, r5, #0
	bl sub_0207395C
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #0x21
	blt _021F4E9A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4E94

	thumb_func_start ov5_021F4EAC
ov5_021F4EAC: ; 0x021F4EAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	mov r1, #3
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #8]
	str r0, [sp, #0x24]
	bl ov5_021DF55C
	str r0, [sp, #0x28]
	mov r0, #9
	mov r3, #0
	lsl r1, r4, #0x10
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r3, [sp, #0x10]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F4F14 ; =0x02200A0C
	add r2, sp, #0xc
	bl ov5_021DF72C
	add r5, r0, #0
	beq _021F4F0E
	bl sub_02071598
	add r4, r0, #0
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x54]
	add r0, r7, #0
	bl _f_itof
	str r0, [r4, #0x58]
	add r0, r7, #0
	bl _f_itof
	str r0, [r4, #0x5c]
_021F4F0E:
	add r0, r5, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F4F14: .word 0x02200A0C
	thumb_func_end ov5_021F4EAC

	thumb_func_start ov5_021F4F18
ov5_021F4F18: ; 0x021F4F18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	add r5, r3, #0
	str r4, [sp]
	bl ov5_021F4EAC
	add r6, r0, #0
	beq _021F4F3C
	bl sub_02071598
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x58]
	add r0, r5, #0
	bl _f_itof
	str r0, [r4, #0x5c]
_021F4F3C:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4F18

	thumb_func_start ov5_021F4F44
ov5_021F4F44: ; 0x021F4F44
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x6c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r0, #0x10
	mov r0, #9
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020715D4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4F44

	thumb_func_start ov5_021F4F88
ov5_021F4F88: ; 0x021F4F88
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F4F88

	thumb_func_start ov5_021F4F8C
ov5_021F4F8C: ; 0x021F4F8C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	bl _f_flt
	bhs _021F4FAE
	ldr r0, [r4, #0x58]
	bl _f_ftod
	ldr r2, _021F4FB0 ; =0x9999999A
	ldr r3, _021F4FB4 ; =0x3FC99999
	bl _d_add
	bl _d_dtof
	str r0, [r4, #0x58]
_021F4FAE:
	pop {r4, pc}
	; .align 2, 0
_021F4FB0: .word 0x9999999A
_021F4FB4: .word 0x3FC99999
	thumb_func_end ov5_021F4F8C

	thumb_func_start ov5_021F4FB8
ov5_021F4FB8: ; 0x021F4FB8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r4, _021F5058 ; =0x02200A00
	add r2, r0, #0
	add r5, r1, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r6, _021F505C ; =0x02200A20
	str r0, [r3, #0]
	add r4, sp, #0
	mov r3, #4
_021F4FD2:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021F4FD2
	ldr r0, [r6, #0]
	str r0, [r4, #0]
	mov r0, #0xa6
	ldr r1, [r5, #0x7c]
	lsl r0, r0, #2
	add r4, r1, r0
	ldr r1, [r5, #0x54]
	mov r0, #0x54
	add r6, r1, #0
	mul r6, r0
	add r0, r2, #0
	add r1, sp, #0x30
	bl sub_020715E4
	ldr r0, [sp, #0x24]
	bl _f_itof
	ldr r1, [r5, #0x58]
	bl _f_mul
	bl _f_ftoi
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	bl _f_itof
	ldr r1, [r5, #0x58]
	bl _f_mul
	bl _f_ftoi
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	bl _f_itof
	ldr r1, [r5, #0x58]
	bl _f_mul
	bl _f_ftoi
	str r0, [sp, #0x2c]
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x34]
	lsl r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #0x34]
	mov r0, #5
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, r4, r6
	add r1, sp, #0x30
	add r2, sp, #0x24
	add r3, sp, #0
	bl sub_02073BA4
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F5058: .word 0x02200A00
_021F505C: .word 0x02200A20
	thumb_func_end ov5_021F4FB8

	.rodata


	.global Unk_ov5_02200A00
Unk_ov5_02200A00: ; 0x02200A00
	.incbin "incbin/overlay5_rodata.bin", 0x80EC, 0x80F8 - 0x80EC

	.global Unk_ov5_02200A0C
Unk_ov5_02200A0C: ; 0x02200A0C
	.incbin "incbin/overlay5_rodata.bin", 0x80F8, 0x810C - 0x80F8

	.global Unk_ov5_02200A20
Unk_ov5_02200A20: ; 0x02200A20
	.incbin "incbin/overlay5_rodata.bin", 0x810C, 0x24

