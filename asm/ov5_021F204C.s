	.include "macros/function.inc"
	.include "include/ov5_021F204C.inc"

	

	.text


	thumb_func_start ov5_021F204C
ov5_021F204C: ; 0x021F204C
	push {r3, r4, r5, lr}
	mov r1, #0x4f
	mov r2, #0
	lsl r1, r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F2078
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F204C

	thumb_func_start ov5_021F2068
ov5_021F2068: ; 0x021F2068
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F20B8
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F2068

	thumb_func_start ov5_021F2078
ov5_021F2078: ; 0x021F2078
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #1
	lsl r1, r1, #8
	ldr r4, _021F20B4 ; =0x02200404
	str r0, [sp, #4]
	mov r7, #0
	add r5, r0, r1
	add r6, r0, #4
_021F208A:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r4, #0]
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov5_021DFB00
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02073B70
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	add r6, #0x54
	cmp r7, #3
	blt _021F208A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F20B4: .word 0x02200404
	thumb_func_end ov5_021F2078

	thumb_func_start ov5_021F20B8
ov5_021F20B8: ; 0x021F20B8
	push {r3, r4, r5, lr}
	mov r1, #1
	lsl r1, r1, #8
	mov r4, #0
	add r5, r0, r1
_021F20C2:
	add r0, r5, #0
	bl sub_0207395C
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _021F20C2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F20B8

	thumb_func_start ov5_021F20D4
ov5_021F20D4: ; 0x021F20D4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	mov r1, #0xc
	str r4, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_02063050
	add r0, r5, #0
	bl sub_02062C0C
	add r1, r0, #1
	add r0, sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, _021F2114 ; =0x02200438
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021F2114: .word 0x02200438
	thumb_func_end ov5_021F20D4

	thumb_func_start ov5_021F2118
ov5_021F2118: ; 0x021F2118
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x18]
	bl sub_02062910
	str r0, [r4, #0]
	ldr r0, [r4, #0x18]
	bl sub_02062918
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2118

	thumb_func_start ov5_021F2144
ov5_021F2144: ; 0x021F2144
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F2144

	thumb_func_start ov5_021F2148
ov5_021F2148: ; 0x021F2148
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x18]
	ldr r1, [r4, #0]
	add r5, r0, #0
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F216A
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F216A:
	mov r0, #0
	mov r1, #2
	str r0, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_020628D8
	cmp r0, #1
	beq _021F218C
	add r0, r6, #0
	bl sub_02062C00
	add r1, r6, #0
	bl sub_02055F00
	cmp r0, #0
	bne _021F2194
_021F218C:
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, pc}
_021F2194:
	add r0, r6, #0
	bl sub_02062C00
	add r1, r6, #0
	bl sub_02055F88
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2148

	thumb_func_start ov5_021F21B8
ov5_021F21B8: ; 0x021F21B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _021F21DC
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	add r2, r0, #4
	mov r0, #0x54
	mul r0, r1
	add r0, r2, r0
	add r1, sp, #0
	bl sub_02073BB4
_021F21DC:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F21B8

	thumb_func_start ov5_021F21E0
ov5_021F21E0: ; 0x021F21E0
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov5_021DF53C
	str r4, [r0, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F21E0

	thumb_func_start ov5_021F21F4
ov5_021F21F4: ; 0x021F21F4
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F226C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F21F4

	thumb_func_start ov5_021F2204
ov5_021F2204: ; 0x021F2204
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov5_021F2204

	thumb_func_start ov5_021F220C
ov5_021F220C: ; 0x021F220C
	push {r3, lr}
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	bpl _021F221A
	bl sub_02022974
_021F221A:
	pop {r3, pc}
	thumb_func_end ov5_021F220C

	thumb_func_start ov5_021F221C
ov5_021F221C: ; 0x021F221C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F2264
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x6d
	bl ov5_021DF9E0
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0xb5
	bl ov5_021DFA14
	ldr r0, [r4, #8]
	mov r1, #0xc
	mov r2, #0xe
	mov r3, #1
	bl ov5_021DFA3C
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F2268 ; =0x0220044C
	mov r2, #0xb
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0xd
	add r3, r2, #0
	bl ov5_021DF864
_021F2264:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021F2268: .word 0x0220044C
	thumb_func_end ov5_021F221C

	thumb_func_start ov5_021F226C
ov5_021F226C: ; 0x021F226C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021F229A
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov5_021DFA08
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov5_021DFA30
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl ov5_021DFA7C
	ldr r0, [r4, #8]
	mov r1, #0xd
	bl ov5_021DF9D4
_021F229A:
	pop {r4, pc}
	thumb_func_end ov5_021F226C

	thumb_func_start ov5_021F229C
ov5_021F229C: ; 0x021F229C
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021F22A8
	bl ov5_021F221C
_021F22A8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F229C

	thumb_func_start ov5_021F22AC
ov5_021F22AC: ; 0x021F22AC
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021F22B8
	bl ov5_021F226C
_021F22B8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F22AC

	thumb_func_start ov5_021F22BC
ov5_021F22BC: ; 0x021F22BC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x14
	bl ov5_021ECDA0
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x1c
	str r4, [sp, #8]
	bl ov5_021DF55C
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021F2300 ; =0x02200410
	add r0, r4, #0
	add r2, sp, #0x14
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021F2300: .word 0x02200410
	thumb_func_end ov5_021F22BC

	thumb_func_start ov5_021F2304
ov5_021F2304: ; 0x021F2304
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x10]
	bl ov5_021F229C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	bl ov5_021F2204
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021F2304

	thumb_func_start ov5_021F2344
ov5_021F2344: ; 0x021F2344
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	bl sub_020211FC
	ldr r0, [r4, #0x10]
	bl ov5_021F220C
	ldr r0, [r4, #0x10]
	bl ov5_021F22AC
	pop {r4, pc}
	thumb_func_end ov5_021F2344

	thumb_func_start ov5_021F235C
ov5_021F235C: ; 0x021F235C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021F23B4 ; =0x02200424
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021F2398
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #5
	blt _021F2392
	add r0, r2, #0
	bl ov5_021DF74C
	add sp, #0x14
	pop {r4, r5, pc}
_021F2392:
	ldr r0, [r4, #0x18]
	bl sub_02021380
_021F2398:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x18]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	bl sub_02021368
	cmp r0, #1
	bne _021F23AE
	mov r0, #1
	str r0, [r4, #8]
_021F23AE:
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021F23B4: .word 0x02200424
	thumb_func_end ov5_021F235C

	thumb_func_start ov5_021F23B8
ov5_021F23B8: ; 0x021F23B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_020212A8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F23B8

	.rodata


	.global Unk_ov5_02200404
Unk_ov5_02200404: ; 0x02200404
	.incbin "incbin/overlay5_rodata.bin", 0x7AF0, 0x7AFC - 0x7AF0

	.global Unk_ov5_02200410
Unk_ov5_02200410: ; 0x02200410
	.incbin "incbin/overlay5_rodata.bin", 0x7AFC, 0x7B10 - 0x7AFC

	.global Unk_ov5_02200424
Unk_ov5_02200424: ; 0x02200424
	.incbin "incbin/overlay5_rodata.bin", 0x7B10, 0x7B24 - 0x7B10

	.global Unk_ov5_02200438
Unk_ov5_02200438: ; 0x02200438
	.incbin "incbin/overlay5_rodata.bin", 0x7B24, 0x7B38 - 0x7B24

	.global Unk_ov5_0220044C
Unk_ov5_0220044C: ; 0x0220044C
	.incbin "incbin/overlay5_rodata.bin", 0x7B38, 0x18

