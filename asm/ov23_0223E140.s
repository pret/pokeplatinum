	.include "macros/function.inc"
	.include "include/ov23_0223E140.inc"

	

	.text


	thumb_func_start ov23_0223E140
ov23_0223E140: ; 0x0223E140
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0223E1D0 ; =0x000008CC
	ldr r4, _0223E1D4 ; =0x02257740
	add r3, r2, #0
	mov r1, #0
	mov r0, #0xff
	add r3, #8
_0223E14E:
	ldr r5, [r4, #0]
	add r5, r5, r1
	strb r0, [r5, r2]
	ldr r5, [r4, #0]
	add r5, r5, r1
	add r1, r1, #1
	strb r0, [r5, r3]
	cmp r1, #8
	blt _0223E14E
	ldr r0, _0223E1D4 ; =0x02257740
	ldr r1, _0223E1D8 ; =0x000009E4
	ldr r2, [r0, #0]
	mov r3, #1
	strb r3, [r2, r1]
	ldr r4, [r0, #0]
	mov r2, #0
	add r3, r1, #1
	strb r2, [r4, r3]
	ldr r3, [r0, #0]
	mov r4, #0xc4
	add r1, r1, #3
	strb r4, [r3, r1]
	mov r3, #0x81
	lsl r3, r3, #4
	add r4, r3, #0
	add r1, r2, #0
	add r5, r2, #0
	add r4, #8
_0223E186:
	ldr r6, [r0, #0]
	add r2, r2, #1
	add r6, r6, r1
	str r5, [r6, r3]
	ldr r6, [r0, #0]
	add r6, r6, r1
	add r1, #0xc
	strb r5, [r6, r4]
	cmp r2, #8
	blt _0223E186
	ldr r6, _0223E1D4 ; =0x02257740
	mov r7, #0
_0223E19E:
	add r0, r5, #0
	mov r1, #0xd
	bl sub_020E1F6C
	add r4, r0, #0
	mov r1, #0xd
	add r0, r5, #0
	mul r4, r1
	bl sub_020E1F6C
	ldr r0, [r6, #0]
	add r5, r5, #1
	add r0, r0, r4
	add r2, r1, r0
	ldr r0, _0223E1DC ; =0x000008DC
	strb r7, [r2, r0]
	ldr r0, [r6, #0]
	add r0, r0, r4
	add r2, r1, r0
	mov r1, #2
	ldr r0, _0223E1E0 ; =0x0000095E
	cmp r5, #0x82
	strb r1, [r2, r0]
	blt _0223E19E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E1D0: .word 0x000008CC
_0223E1D4: .word 0x02257740
_0223E1D8: .word 0x000009E4
_0223E1DC: .word 0x000008DC
_0223E1E0: .word 0x0000095E
	thumb_func_end ov23_0223E140

	thumb_func_start ov23_0223E1E4
ov23_0223E1E4: ; 0x0223E1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _0223E2D4 ; =0x02257740
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0223E2D0
	mov r2, #0x9f
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	ldr r0, _0223E2D4 ; =0x02257740
	ldr r0, [r0, #0]
	add r0, #8
	bl sub_020361BC
	ldr r5, _0223E2D4 ; =0x02257740
	mov r2, #0
	ldr r0, [r5, #0]
	ldr r7, _0223E2D8 ; =0x0000020A
	str r4, [r0, #0]
	ldr r0, _0223E2DC ; =0x0000FFFF
	add r3, r2, #0
	mov r1, #0xff
_0223E218:
	ldr r4, [r5, #0]
	add r2, r2, #1
	add r6, r4, r3
	mov r4, #0x83
	lsl r4, r4, #2
	strb r1, [r6, r4]
	ldr r4, [r5, #0]
	add r6, r4, r3
	mov r4, #0x82
	lsl r4, r4, #2
	strh r0, [r6, r4]
	ldr r4, [r5, #0]
	add r4, r4, r3
	add r3, r3, #6
	strh r0, [r4, r7]
	cmp r2, #0xfa
	blt _0223E218
	bl ov23_0223E140
	ldr r1, _0223E2D4 ; =0x02257740
	mov r3, #0
	mov r0, #0x9e
	ldr r2, [r1, #0]
	mvn r3, r3
	lsl r0, r0, #4
	str r3, [r2, r0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r4, r0, #0
	bl sub_02029234
	cmp r0, #0
	beq _0223E2C8
	add r0, r4, #0
	bl sub_02028930
	str r0, [sp, #4]
	ldr r0, _0223E2E0 ; =0x5D588B65
	mov r5, #0
	str r0, [sp, #8]
	ldr r0, _0223E2E4 ; =0x00269EC3
	str r0, [sp, #0xc]
_0223E272:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020291A4
	add r5, r5, #1
	cmp r5, #0xff
	blt _0223E272
	mov r5, #0
	add r6, r5, #0
_0223E284:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r6, #0
	str r6, [sp]
	bl sub_02028EF8
	add r5, r5, #1
	cmp r5, #0x40
	blt _0223E284
	add r0, sp, #4
	bl ov23_02241DF8
	mov r1, #0xa
	bl sub_020E1F6C
	mov r1, #0x18
	sub r6, r1, r0
	mov r5, #0
	cmp r6, #0
	ble _0223E2BE
	add r7, sp, #4
_0223E2B0:
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0223E434
	add r5, r5, #1
	cmp r5, r6
	blt _0223E2B0
_0223E2BE:
	add r0, r4, #0
	bl sub_02029240
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0223E2C8:
	bl ov23_0223E834
	bl ov23_02243CE8
_0223E2D0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E2D4: .word 0x02257740
_0223E2D8: .word 0x0000020A
_0223E2DC: .word 0x0000FFFF
_0223E2E0: .word 0x5D588B65
_0223E2E4: .word 0x00269EC3
	thumb_func_end ov23_0223E1E4

	thumb_func_start ov23_0223E2E8
ov23_0223E2E8: ; 0x0223E2E8
	mov r0, #0x9f
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0223E2E8

	thumb_func_start ov23_0223E2F0
ov23_0223E2F0: ; 0x0223E2F0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0223E2F0

	thumb_func_start ov23_0223E2F4
ov23_0223E2F4: ; 0x0223E2F4
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0223E2F4

	thumb_func_start ov23_0223E2F8
ov23_0223E2F8: ; 0x0223E2F8
	push {r3, lr}
	ldr r0, _0223E348 ; =0x02257740
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223E344
	ldr r0, _0223E34C ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223E336
	bl sub_0200DA58
	ldr r0, _0223E348 ; =0x02257740
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0223E34C ; =0x0000087C
	str r2, [r1, r0]
	bl ov23_0224219C
	bl ov23_02254044
	ldr r0, _0223E348 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _0223E350 ; =0x000007E4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223E332
	mov r1, #4
	bl sub_02002154
_0223E332:
	bl sub_02059514
_0223E336:
	ldr r0, _0223E348 ; =0x02257740
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0223E348 ; =0x02257740
	mov r1, #0
	str r1, [r0, #0]
_0223E344:
	pop {r3, pc}
	nop
_0223E348: .word 0x02257740
_0223E34C: .word 0x0000087C
_0223E350: .word 0x000007E4
	thumb_func_end ov23_0223E2F8

	thumb_func_start ov23_0223E354
ov23_0223E354: ; 0x0223E354
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl ov23_0223E88C
	add r4, r0, #0
	add r0, sp, #0
	strb r5, [r0]
	beq _0223E39E
	ldrb r0, [r4, #4]
	cmp r0, #0xff
	bne _0223E39E
	add r0, r5, #0
	bl ov23_0224A6B8
	cmp r0, #0
	beq _0223E37C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E37C:
	mov r0, #0x40
	add r1, sp, #0
	mov r2, #1
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	ldr r0, _0223E3A4 ; =0x02257740
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r1, r1, r0
	ldr r0, _0223E3A8 ; =0x000007E8
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E39E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223E3A4: .word 0x02257740
_0223E3A8: .word 0x000007E8
	thumb_func_end ov23_0223E354

	thumb_func_start ov23_0223E3AC
ov23_0223E3AC: ; 0x0223E3AC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0223E3C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223E3C4:
	ldr r0, _0223E430 ; =0x000001DE
	cmp r4, r0
	ble _0223E3CE
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223E3CE:
	cmp r5, r0
	ble _0223E3D6
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223E3D6:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02054F68
	cmp r0, #0
	beq _0223E42C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #1
	bl sub_02054F68
	cmp r0, #0
	bne _0223E3F6
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223E3F6:
	add r0, r6, #0
	add r1, r5, #0
	sub r2, r4, #1
	bl sub_02054F68
	cmp r0, #0
	bne _0223E408
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223E408:
	add r0, r6, #0
	add r1, r5, #1
	add r2, r4, #0
	bl sub_02054F68
	cmp r0, #0
	bne _0223E41A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223E41A:
	add r0, r6, #0
	sub r1, r5, #1
	add r2, r4, #0
	bl sub_02054F68
	cmp r0, #0
	bne _0223E42C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223E42C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223E430: .word 0x000001DE
	thumb_func_end ov23_0223E3AC

	thumb_func_start ov23_0223E434
ov23_0223E434: ; 0x0223E434
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0223E648 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	str r0, [sp, #0x10]
	ldr r0, _0223E648 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02039E10
	sub r0, r0, #2
	lsl r0, r0, #0x15
	lsr r6, r0, #0x10
	ldr r0, _0223E648 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02039E20
	sub r0, r0, #2
	lsl r0, r0, #0x15
	lsr r4, r0, #0x10
_0223E46C:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	cmp r6, #0
	ldr r0, [r5, #0]
	bne _0223E482
	lsr r1, r0, #0x10
	b _0223E48A
_0223E482:
	lsr r1, r0, #0x10
	add r2, r1, #0
	mul r2, r6
	lsr r1, r2, #0x10
_0223E48A:
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r1, #0x20
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	cmp r4, #0
	ldr r0, [r5, #0]
	bne _0223E4AA
	lsr r0, r0, #0x10
	b _0223E4B2
_0223E4AA:
	lsr r0, r0, #0x10
	add r1, r0, #0
	mul r1, r4
	lsr r0, r1, #0x10
_0223E4B2:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, #0x40
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, _0223E648 ; =0x02257740
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	add r2, r7, #0
	ldr r0, [r0, #0]
	bl ov23_0223E3AC
	cmp r0, #0
	beq _0223E46C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	lsr r1, r0, #0x10
	mov r0, #6
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r0, #6
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _0223E58E
_0223E4F4:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
_0223E4FA:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	lsr r2, r0, #0x10
	mov r1, #0x14
	mul r1, r2
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, [sp, #0xc]
	str r0, [r5, #0]
	add r1, r1, r2
	sub r1, #0xa
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	lsr r1, r0, #0x10
	mov r0, #0x14
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r7, r0
	sub r0, #0xa
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, _0223E648 ; =0x02257740
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	ldr r0, [r0, #0]
	bl ov23_0223E3AC
	cmp r0, #0
	beq _0223E552
	mov r0, #1
	str r0, [sp, #0x14]
	b _0223E55C
_0223E552:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x64
	blt _0223E4FA
_0223E55C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0223E582
	bl ov23_0223E6F8
	cmp r0, #0
	beq _0223E58E
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0223E740
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029140
	ldr r1, [sp, #0x24]
	strb r0, [r1, #5]
_0223E582:
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _0223E4F4
_0223E58E:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	lsr r1, r0, #0x10
	mov r0, #6
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _0223E642
_0223E5B2:
	mov r0, #0
	str r0, [sp]
_0223E5B6:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	lsr r2, r0, #0x10
	mov r1, #0x14
	mul r1, r2
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, [sp, #0xc]
	str r0, [r5, #0]
	add r1, r1, r2
	sub r1, #0xa
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	lsr r1, r0, #0x10
	mov r0, #0x14
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r7, r0
	sub r0, #0xa
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0223E648 ; =0x02257740
	add r1, r6, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	bne _0223E62C
	ldr r3, _0223E648 ; =0x02257740
	add r1, r4, #0
	ldr r4, [r3, #0]
	ldr r3, _0223E64C ; =0x000009EC
	add r0, r6, #0
	ldrb r3, [r4, r3]
	add r2, r5, #0
	bl ov23_02243C3C
	cmp r0, #0
	beq _0223E62C
	ldr r0, _0223E648 ; =0x02257740
	ldr r2, [r0, #0]
	ldr r0, _0223E64C ; =0x000009EC
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	b _0223E636
_0223E62C:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x64
	blt _0223E5B6
_0223E636:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0223E5B2
_0223E642:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E648: .word 0x02257740
_0223E64C: .word 0x000009EC
	thumb_func_end ov23_0223E434

	thumb_func_start ov23_0223E650
ov23_0223E650: ; 0x0223E650
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, _0223E6F4 ; =0x02257740
	str r1, [sp, #4]
	ldr r0, [r0, #0]
	add r5, r2, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	mov r4, #0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
_0223E66C:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	lsr r2, r0, #0x10
	mov r1, #0x14
	mul r1, r2
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, [sp]
	str r0, [r5, #0]
	add r1, r1, r2
	sub r1, #0xa
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	mul r0, r1
	add r0, r2, r0
	str r0, [r5, #0]
	lsr r1, r0, #0x10
	mov r0, #0x14
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	add r0, r0, r1
	sub r0, #0xa
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, _0223E6F4 ; =0x02257740
	add r1, r6, #0
	ldr r0, [r0, #0]
	add r2, r7, #0
	ldr r0, [r0, #0]
	bl ov23_0223E3AC
	cmp r0, #0
	beq _0223E6C6
	mov r0, #1
	str r0, [sp, #0xc]
	b _0223E6CC
_0223E6C6:
	add r4, r4, #1
	cmp r4, #0x64
	blt _0223E66C
_0223E6CC:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0223E6F0
	bl ov23_0223E6F8
	cmp r0, #0
	beq _0223E6F0
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_0223E740
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02029140
	strb r0, [r4, #5]
_0223E6F0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E6F4: .word 0x02257740
	thumb_func_end ov23_0223E650

	thumb_func_start ov23_0223E6F8
ov23_0223E6F8: ; 0x0223E6F8
	push {r4, r5, r6, r7}
	ldr r1, _0223E734 ; =0x02257740
	ldr r3, _0223E738 ; =0x0000020A
	ldr r2, [r1, #0]
	ldr r4, _0223E73C ; =0x0000FFFF
	mov r0, #0
	add r1, r2, #0
	sub r5, r3, #2
	add r6, r4, #0
_0223E70A:
	ldrh r7, [r1, r5]
	cmp r7, r6
	bne _0223E726
	ldrh r7, [r1, r3]
	cmp r7, r4
	bne _0223E726
	mov r1, #0x82
	lsl r1, r1, #2
	add r2, r2, r1
	mov r1, #6
	mul r1, r0
	add r0, r2, r1
	pop {r4, r5, r6, r7}
	bx lr
_0223E726:
	add r0, r0, #1
	add r1, r1, #6
	cmp r0, #0xfa
	blt _0223E70A
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0223E734: .word 0x02257740
_0223E738: .word 0x0000020A
_0223E73C: .word 0x0000FFFF
	thumb_func_end ov23_0223E6F8

	thumb_func_start ov23_0223E740
ov23_0223E740: ; 0x0223E740
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r1
	mov r1, #0xf
	str r0, [sp]
	lsl r1, r1, #6
	mov r0, lr
	mul r1, r0
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	ldr r0, _0223E820 ; =0x02257740
	mvn r6, r6
	ldr r3, [r0, #0]
	mov r2, #0
	mov ip, r3
	lsr r7, r6, #0x10
_0223E760:
	mov r0, #0x82
	lsl r0, r0, #2
	ldrh r1, [r3, r0]
	cmp r1, r7
	beq _0223E784
	add r0, r0, #2
	ldrh r0, [r3, r0]
	ldr r4, _0223E824 ; =0x0000FFFF
	cmp r0, r4
	beq _0223E784
	mov r4, #0xf
	lsl r4, r4, #6
	mul r4, r0
	add r0, r1, r4
	cmp r5, r0
	bge _0223E7A8
	add r6, r2, #0
	b _0223E7B0
_0223E784:
	mov r0, #6
	mul r0, r2
	mov r1, ip
	add r2, r1, r0
	mov r3, #0x82
	ldr r1, [sp]
	lsl r3, r3, #2
	strh r1, [r2, r3]
	ldr r4, _0223E820 ; =0x02257740
	add r2, r3, #2
	ldr r1, [r4, #0]
	add r5, r1, r0
	mov r1, lr
	strh r1, [r5, r2]
	ldr r1, [r4, #0]
	add r1, r1, r3
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0223E7A8:
	add r2, r2, #1
	add r3, r3, #6
	cmp r2, #0xfa
	blt _0223E760
_0223E7B0:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223E80E
	mov r1, #0xf8
	cmp r6, #0xf8
	bgt _0223E7F2
	mov r0, #0x5d
	ldr r3, _0223E820 ; =0x02257740
	ldr r7, _0223E828 ; =0x00000213
	lsl r0, r0, #4
_0223E7C6:
	ldr r2, [r3, #0]
	sub r1, r1, #1
	add r5, r2, r0
	mov r2, #0x82
	lsl r2, r2, #2
	ldrh r4, [r5, r2]
	add r2, r2, #6
	strh r4, [r5, r2]
	ldr r2, [r3, #0]
	add r5, r2, r0
	ldr r2, _0223E82C ; =0x0000020A
	ldrh r4, [r5, r2]
	add r2, r2, #6
	strh r4, [r5, r2]
	ldr r2, [r3, #0]
	ldr r4, _0223E830 ; =0x0000020D
	add r2, r2, r0
	ldrb r4, [r2, r4]
	sub r0, r0, #6
	strb r4, [r2, r7]
	cmp r1, r6
	bge _0223E7C6
_0223E7F2:
	ldr r3, _0223E820 ; =0x02257740
	mov r0, #6
	ldr r1, [r3, #0]
	mul r0, r6
	add r4, r1, r0
	mov r2, #0x82
	ldr r1, [sp]
	lsl r2, r2, #2
	strh r1, [r4, r2]
	ldr r1, [r3, #0]
	add r3, r1, r0
	add r1, r2, #2
	mov r0, lr
	strh r0, [r3, r1]
_0223E80E:
	ldr r0, _0223E820 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #6
	mul r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E820: .word 0x02257740
_0223E824: .word 0x0000FFFF
_0223E828: .word 0x00000213
_0223E82C: .word 0x0000020A
_0223E830: .word 0x0000020D
	thumb_func_end ov23_0223E740

	thumb_func_start ov23_0223E834
ov23_0223E834: ; 0x0223E834
	push {r4, r5, r6, lr}
	ldr r0, _0223E874 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	mov r5, #0
_0223E846:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020291CC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020291EC
	add r1, r0, #0
	cmp r4, #0
	beq _0223E86A
	cmp r1, #0
	beq _0223E86A
	add r0, r4, #0
	bl ov23_0223E740
	strb r5, [r0, #5]
_0223E86A:
	add r5, r5, #1
	cmp r5, #0xff
	blt _0223E846
	pop {r4, r5, r6, pc}
	nop
_0223E874: .word 0x02257740
	thumb_func_end ov23_0223E834

	thumb_func_start ov23_0223E878
ov23_0223E878: ; 0x0223E878
	push {r3, lr}
	bl sub_0203608C
	cmp r0, #0
	bne _0223E88A
	bl ov23_022414D4
	bl ov23_022413B4
_0223E88A:
	pop {r3, pc}
	thumb_func_end ov23_0223E878

	thumb_func_start ov23_0223E88C
ov23_0223E88C: ; 0x0223E88C
	push {r4, r5, r6, r7}
	ldr r3, _0223E8C4 ; =0x02257740
	ldr r5, _0223E8C8 ; =0x0000020A
	ldr r4, [r3, #0]
	mov r2, #0
	add r3, r4, #0
	sub r6, r5, #2
_0223E89A:
	ldrh r7, [r3, r6]
	cmp r0, r7
	bne _0223E8B6
	ldrh r7, [r3, r5]
	cmp r1, r7
	bne _0223E8B6
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #6
	mul r0, r2
	add r0, r1, r0
	pop {r4, r5, r6, r7}
	bx lr
_0223E8B6:
	add r2, r2, #1
	add r3, r3, #6
	cmp r2, #0xfa
	blt _0223E89A
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0223E8C4: .word 0x02257740
_0223E8C8: .word 0x0000020A
	thumb_func_end ov23_0223E88C

	thumb_func_start ov23_0223E8CC
ov23_0223E8CC: ; 0x0223E8CC
	push {r3, r4, r5, r6, r7, lr}
	add r2, r1, #0
	add r6, r1, #0
	str r2, [sp]
	add r2, #0x50
	add r4, r0, #0
	add r7, r0, #0
	sub r6, #0x50
	str r2, [sp]
	sub r4, #0x50
	add r7, #0x50
	mov r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0223E8F0
	sub r0, r5, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223E8F0:
	cmp r4, #0x40
	bge _0223E8F6
	mov r4, #0x40
_0223E8F6:
	mov r0, #2
	lsl r0, r0, #8
	cmp r7, r0
	ble _0223E900
	add r7, r0, #0
_0223E900:
	cmp r6, #0x20
	bge _0223E906
	mov r6, #0x20
_0223E906:
	mov r1, #0x1e
	ldr r0, [sp]
	lsl r1, r1, #4
	cmp r0, r1
	ble _0223E912
	str r1, [sp]
_0223E912:
	ldr r0, _0223E994 ; =0x02257740
	mov r2, #0
	ldr r3, [r0, #0]
_0223E918:
	ldr r0, _0223E998 ; =0x0000020A
	ldrh r1, [r3, r0]
	cmp r1, r6
	blt _0223E936
	ldr r0, [sp]
	cmp r1, r0
	bgt _0223E936
	mov r0, #0x82
	lsl r0, r0, #2
	ldrh r0, [r3, r0]
	cmp r0, r4
	ble _0223E936
	cmp r0, r7
	bge _0223E936
	add r5, r5, #1
_0223E936:
	add r2, r2, #1
	add r3, r3, #6
	cmp r2, #0xfa
	blt _0223E918
	cmp r5, #0
	bne _0223E948
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0223E948:
	bl sub_0201D2E8
	add r1, r5, #0
	bl sub_020E1F6C
	ldr r0, _0223E994 ; =0x02257740
	mov r3, #0
	ldr r2, [r0, #0]
	mov ip, r1
	add r5, r3, #0
_0223E95C:
	ldr r0, _0223E998 ; =0x0000020A
	ldrh r1, [r2, r0]
	cmp r1, r6
	blt _0223E984
	ldr r0, [sp]
	cmp r1, r0
	bgt _0223E984
	mov r0, #0x82
	lsl r0, r0, #2
	ldrh r0, [r2, r0]
	cmp r0, r4
	ble _0223E984
	cmp r0, r7
	bge _0223E984
	mov r0, ip
	cmp r3, r0
	bne _0223E982
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223E982:
	add r3, r3, #1
_0223E984:
	add r5, r5, #1
	add r2, r2, #6
	cmp r5, #0xfa
	blt _0223E95C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E994: .word 0x02257740
_0223E998: .word 0x0000020A
	thumb_func_end ov23_0223E8CC

	thumb_func_start ov23_0223E99C
ov23_0223E99C: ; 0x0223E99C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E9CC ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _0223E9D0 ; =0x000007E4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223E9B2
	mov r1, #4
	bl sub_02002154
_0223E9B2:
	ldr r1, _0223E9CC ; =0x02257740
	ldr r0, _0223E9D0 ; =0x000007E4
	ldr r2, [r1, #0]
	mov r3, #0
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, #0x98
	str r3, [r1, r0]
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	nop
_0223E9CC: .word 0x02257740
_0223E9D0: .word 0x000007E4
	thumb_func_end ov23_0223E99C

	thumb_func_start ov23_0223E9D4
ov23_0223E9D4: ; 0x0223E9D4
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0223EA24
	bl sub_02035EE0
	cmp r0, #0
	beq _0223EA24
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x13
	add r3, r2, #0
	bl ov23_02253F40
	ldr r2, _0223EA28 ; =0x02257740
	mov r1, #0x9e
	ldr r3, [r2, #0]
	lsl r1, r1, #4
	str r0, [r3, r1]
	ldr r1, [r2, #0]
	ldr r0, _0223EA2C ; =ov23_0223EA38
	mov r2, #0
	bl sub_0200D9E8
	ldr r2, _0223EA28 ; =0x02257740
	ldr r1, _0223EA30 ; =0x0000087C
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r2, [r2, #0]
	mov r0, #0
	ldr r1, [r2, r1]
	ldr r2, _0223EA34 ; =ov23_0223E99C
	bl ov23_022431EC
	bl sub_020594FC
_0223EA24:
	pop {r4, pc}
	nop
_0223EA28: .word 0x02257740
_0223EA2C: .word ov23_0223EA38
_0223EA30: .word 0x0000087C
_0223EA34: .word ov23_0223E99C
	thumb_func_end ov23_0223E9D4

	thumb_func_start ov23_0223EA38
ov23_0223EA38: ; 0x0223EA38
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0223EAE4 ; =0x02257740
	ldr r2, [r0, #0]
	mov r0, #0x9e
	lsl r0, r0, #4
	ldr r1, [r2, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0223EA8A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223EADE
	mov r0, #4
	str r0, [sp]
	ldr r0, _0223EAE4 ; =0x02257740
	ldr r1, _0223EAE8 ; =0x0225630E
	ldr r0, [r0, #0]
	ldr r2, _0223EAEC ; =0x000003D9
	ldr r0, [r0, #0]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_02002100
	ldr r2, _0223EAE4 ; =0x02257740
	ldr r1, _0223EAF0 ; =0x000007E4
	ldr r3, [r2, #0]
	add sp, #8
	str r0, [r3, r1]
	mov r3, #0
	mov r0, #0x9e
	ldr r1, [r2, #0]
	mvn r3, r3
	lsl r0, r0, #4
	str r3, [r1, r0]
	pop {r4, pc}
_0223EA8A:
	ldr r0, _0223EAF0 ; =0x000007E4
	mov r1, #4
	ldr r0, [r2, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223EADE
	cmp r0, #0
	add r0, sp, #4
	bne _0223EAA8
	mov r1, #1
	strb r1, [r0]
	b _0223EAB0
_0223EAA8:
	mov r1, #0
	strb r1, [r0]
	bl sub_02059514
_0223EAB0:
	mov r0, #0x41
	add r1, sp, #4
	bl sub_020360D0
	ldr r0, _0223EAE4 ; =0x02257740
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0223EAF0 ; =0x000007E4
	str r2, [r1, r0]
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r4, #0
	bl sub_0200DA58
	bl ov23_02243204
	ldr r0, _0223EAE4 ; =0x02257740
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0223EAF4 ; =0x0000087C
	str r2, [r1, r0]
_0223EADE:
	add sp, #8
	pop {r4, pc}
	nop
_0223EAE4: .word 0x02257740
_0223EAE8: .word 0x0225630E
_0223EAEC: .word 0x000003D9
_0223EAF0: .word 0x000007E4
_0223EAF4: .word 0x0000087C
	thumb_func_end ov23_0223EA38

	thumb_func_start ov23_0223EAF8
ov23_0223EAF8: ; 0x0223EAF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223EB7C ; =0x02257740
	add r7, r2, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	str r0, [sp]
	ldr r0, _0223EB7C ; =0x02257740
	lsl r6, r5, #2
	ldr r1, [r0, #0]
	ldr r0, _0223EB80 ; =0x000007E8
	add r2, r1, r6
	ldr r4, [r2, r0]
	add r0, sp, #4
	strb r5, [r0]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0223EB64
	cmp r4, #0
	beq _0223EB64
	ldrb r0, [r4, #4]
	cmp r0, #0xff
	bne _0223EB76
	mov r0, #0x42
	add r1, sp, #4
	mov r2, #1
	bl sub_02035AC4
	mov r0, #0xff
	strb r0, [r4, #4]
	ldr r0, _0223EB84 ; =0x0000FFFF
	strh r0, [r4]
	strh r0, [r4, #2]
	ldrb r1, [r4, #5]
	ldr r0, [sp]
	bl sub_020291A4
	ldr r1, _0223EB7C ; =0x02257740
	mov r3, #1
	ldr r0, [r1, #0]
	add sp, #8
	add r2, r0, r5
	ldr r0, _0223EB88 ; =0x00000808
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	mov r2, #0
	add r1, r1, r6
	sub r0, #0x20
	str r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0223EB64:
	add r2, r1, r5
	ldr r1, _0223EB88 ; =0x00000808
	mov r0, #0
	strb r0, [r2, r1]
	ldr r2, _0223EB7C ; =0x02257740
	sub r1, #0x20
	ldr r2, [r2, #0]
	add r2, r2, r6
	str r0, [r2, r1]
_0223EB76:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EB7C: .word 0x02257740
_0223EB80: .word 0x000007E8
_0223EB84: .word 0x0000FFFF
_0223EB88: .word 0x00000808
	thumb_func_end ov23_0223EAF8

	thumb_func_start ov23_0223EB8C
ov23_0223EB8C: ; 0x0223EB8C
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0223EBA8
	bl sub_020594FC
	ldr r0, _0223EBB8 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov23_0223F70C
_0223EBA8:
	ldr r0, _0223EBB8 ; =0x02257740
	mov r2, #1
	ldr r1, [r0, #0]
	ldrb r0, [r4]
	add r1, r1, r0
	ldr r0, _0223EBBC ; =0x000008C4
	strb r2, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_0223EBB8: .word 0x02257740
_0223EBBC: .word 0x000008C4
	thumb_func_end ov23_0223EB8C

	thumb_func_start ov23_0223EBC0
ov23_0223EBC0: ; 0x0223EBC0
	push {r3, r4}
	ldr r2, _0223EBDC ; =0x02257740
	mov r4, #0
	ldr r1, [r2, #0]
	add r3, r1, r0
	ldr r1, _0223EBE0 ; =0x00000808
	strb r4, [r3, r1]
	ldr r2, [r2, #0]
	add r1, #0xb0
	add r0, r2, r0
	strb r4, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_0223EBDC: .word 0x02257740
_0223EBE0: .word 0x00000808
	thumb_func_end ov23_0223EBC0

	thumb_func_start ov23_0223EBE4
ov23_0223EBE4: ; 0x0223EBE4
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	ldrb r0, [r2, #1]
	strb r0, [r1, #2]
	mov r0, #0x45
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, pc}
	thumb_func_end ov23_0223EBE4

	thumb_func_start ov23_0223EBFC
ov23_0223EBFC: ; 0x0223EBFC
	mov r0, #2
	bx lr
	thumb_func_end ov23_0223EBFC

	thumb_func_start ov23_0223EC00
ov23_0223EC00: ; 0x0223EC00
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldrb r4, [r5]
	bl sub_0203608C
	cmp r4, r0
	beq _0223EC26
	ldr r1, _0223EC28 ; =0x02257740
	ldrb r3, [r5, #1]
	ldr r0, [r1, #0]
	add r2, r0, r4
	ldr r0, _0223EC2C ; =0x000008CC
	strb r3, [r2, r0]
	ldr r2, [r1, #0]
	ldrb r1, [r5]
	ldrb r3, [r5, #2]
	add r0, #8
	add r1, r2, r1
	strb r3, [r1, r0]
_0223EC26:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EC28: .word 0x02257740
_0223EC2C: .word 0x000008CC
	thumb_func_end ov23_0223EC00

	thumb_func_start ov23_0223EC30
ov23_0223EC30: ; 0x0223EC30
	mov r0, #3
	bx lr
	thumb_func_end ov23_0223EC30

	thumb_func_start ov23_0223EC34
ov23_0223EC34: ; 0x0223EC34
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	ldr r5, _0223ED50 ; =0x022563A8
	add r4, r0, #0
	add r3, sp, #0x80
	mov r2, #5
_0223EC40:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223EC40
	add r0, sp, #0x80
	bl sub_0201FE94
	ldr r5, _0223ED54 ; =0x02256328
	add r3, sp, #0x70
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223ED58 ; =0x02256338
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x1d
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0223ED5C ; =0x02256354
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1d
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0223ED60 ; =0x02256370
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1d
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0223ED64 ; =0x0225638C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1d
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1d
	bl sub_02019690
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x1d
	bl sub_02019690
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	nop
_0223ED50: .word 0x022563A8
_0223ED54: .word 0x02256328
_0223ED58: .word 0x02256338
_0223ED5C: .word 0x02256354
_0223ED60: .word 0x02256370
_0223ED64: .word 0x0225638C
	thumb_func_end ov23_0223EC34

	thumb_func_start ov23_0223ED68
ov23_0223ED68: ; 0x0223ED68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0
	beq _0223ED8A
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	b _0223ED9A
_0223ED8A:
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
_0223ED9A:
	cmp r7, #0
	beq _0223EDB6
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, _0223EE74 ; =0x000006A4
	bl sub_02005748
	b _0223EDE8
_0223EDB6:
	cmp r4, #0
	beq _0223EDD2
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, _0223EE78 ; =0x000006A2
	bl sub_02005748
	b _0223EDE8
_0223EDD2:
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, _0223EE7C ; =0x000006A3
	bl sub_02005748
_0223EDE8:
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	add r5, #8
	lsl r0, r5, #0xc
	add r6, #8
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0223EE6A
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02021D6C
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _0223EE70 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
_0223EE6A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223EE70: .word 0x02257740
_0223EE74: .word 0x000006A4
_0223EE78: .word 0x000006A2
_0223EE7C: .word 0x000006A3
	thumb_func_end ov23_0223ED68

	thumb_func_start ov23_0223EE80
ov23_0223EE80: ; 0x0223EE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0
	add r6, r0, #0
	mov r0, #0x3a
	add r2, r1, #0
	bl sub_02004550
	bl ov23_0223E140
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r2, #5
	mov r0, #3
	mov r1, #0x1d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r0, #0x1d
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0223EF8C ; =0x02257740
	add r1, r5, #0
	ldr r0, [r0, #0]
	str r5, [r0, #4]
	ldr r0, _0223EF90 ; =ov23_022411E8
	bl sub_02017798
	bl ov23_0224219C
	ldr r2, _0223EF94 ; =0x000001E2
	add r1, r5, #0
	add r3, r2, #0
	sub r3, #0xb5
	bl ov23_02253E2C
	add r0, r5, #0
	bl ov23_0223EC34
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	ldr r2, _0223EF94 ; =0x000001E2
	add r0, r5, #0
	mov r1, #3
	mov r3, #0xa
	bl sub_0200DD0C
	mov r0, #0x34
	mov r1, #0x1d
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x1d
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #1
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r7, r0, #0
	str r3, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	mov r3, #0x80
	str r3, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	mov r0, #0x32
	mov r1, #0x34
	mov r2, #0
	add r3, #0xc0
	bl sub_02006E84
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov23_0223FA3C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EF8C: .word 0x02257740
_0223EF90: .word ov23_022411E8
_0223EF94: .word 0x000001E2
	thumb_func_end ov23_0223EE80

	thumb_func_start ov23_0223EF98
ov23_0223EF98: ; 0x0223EF98
	push {r3, lr}
	sub sp, #0x10
	ldr r0, _0223F01C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_022404C8
	ldr r0, _0223F01C ; =0x02257740
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02019448
	ldr r0, _0223F01C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_0223FF8C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	ldr r2, _0223F01C ; =0x02257740
	mov r0, #0x37
	ldr r2, [r2, #0]
	mov r1, #9
	ldr r2, [r2, #4]
	mov r3, #2
	bl sub_02006E3C
	ldr r0, _0223F01C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_022401B0
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	mov r1, #2
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	bl ov23_02240E88
	bl ov23_0224108C
	ldr r0, _0223F01C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_02240688
	add sp, #0x10
	pop {r3, pc}
	nop
_0223F01C: .word 0x02257740
	thumb_func_end ov23_0223EF98

	thumb_func_start ov23_0223F020
ov23_0223F020: ; 0x0223F020
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223F110 ; =0x02257740
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02019044
	ldr r0, _0223F110 ; =0x02257740
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02019044
	ldr r0, _0223F110 ; =0x02257740
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02019044
	ldr r0, _0223F110 ; =0x02257740
	mov r1, #3
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02019044
	ldr r0, _0223F110 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A4E4
	ldr r0, _0223F110 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A4E4
	ldr r0, _0223F110 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A6DC
	ldr r0, _0223F110 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A6DC
	mov r6, #0
	ldr r7, _0223F110 ; =0x02257740
	add r4, r6, #0
_0223F092:
	ldr r0, [r7, #0]
	add r1, r0, r4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02009754
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0223F092
	mov r4, #0
	add r6, r4, #0
_0223F0AC:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223F0B8
	bl sub_020181C4
	str r6, [r5, #0x18]
_0223F0B8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223F0AC
	ldr r0, _0223F110 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, _0223F110 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, _0223F110 ; =0x02257740
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
	mov r0, #0x1d
	bl sub_0201807C
	bl ov23_0224219C
	ldr r1, _0223F110 ; =0x02257740
	ldr r2, _0223F114 ; =0x000003E2
	ldr r1, [r1, #0]
	add r3, r2, #0
	ldr r1, [r1, #0]
	sub r3, #0xb5
	ldr r1, [r1, #8]
	bl ov23_02253E2C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F110: .word 0x02257740
_0223F114: .word 0x000003E2
	thumb_func_end ov23_0223F020

	thumb_func_start ov23_0223F118
ov23_0223F118: ; 0x0223F118
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0x10]
	cmp r0, #0x1b
	bls _0223F12A
	b _0223F6F4
_0223F12A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F136: ; jump table
	.short _0223F16E - _0223F136 - 2 ; case 0
	.short _0223F18A - _0223F136 - 2 ; case 1
	.short _0223F1B2 - _0223F136 - 2 ; case 2
	.short _0223F1D0 - _0223F136 - 2 ; case 3
	.short _0223F1E8 - _0223F136 - 2 ; case 4
	.short _0223F1F8 - _0223F136 - 2 ; case 5
	.short _0223F206 - _0223F136 - 2 ; case 6
	.short _0223F24C - _0223F136 - 2 ; case 7
	.short _0223F266 - _0223F136 - 2 ; case 8
	.short _0223F278 - _0223F136 - 2 ; case 9
	.short _0223F2AA - _0223F136 - 2 ; case 10
	.short _0223F2EA - _0223F136 - 2 ; case 11
	.short _0223F310 - _0223F136 - 2 ; case 12
	.short _0223F34A - _0223F136 - 2 ; case 13
	.short _0223F36E - _0223F136 - 2 ; case 14
	.short _0223F3B0 - _0223F136 - 2 ; case 15
	.short _0223F400 - _0223F136 - 2 ; case 16
	.short _0223F428 - _0223F136 - 2 ; case 17
	.short _0223F484 - _0223F136 - 2 ; case 18
	.short _0223F4B8 - _0223F136 - 2 ; case 19
	.short _0223F4E4 - _0223F136 - 2 ; case 20
	.short _0223F528 - _0223F136 - 2 ; case 21
	.short _0223F5CC - _0223F136 - 2 ; case 22
	.short _0223F600 - _0223F136 - 2 ; case 23
	.short _0223F630 - _0223F136 - 2 ; case 24
	.short _0223F66C - _0223F136 - 2 ; case 25
	.short _0223F684 - _0223F136 - 2 ; case 26
	.short _0223F6B4 - _0223F136 - 2 ; case 27
_0223F16E:
	mov r0, #0
	bl ov23_0224DBF4
	bl ov23_022417CC
	bl sub_0205764C
	bl ov23_0224B430
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F18A:
	ldr r0, [r5, #0x6c]
	bl ov23_0224942C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0x10
	mov r2, #0x12
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F1B2:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223F2B4
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _0223F2B4
	add r0, r5, #0
	bl sub_0203CD44
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F1D0:
	add r0, r5, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _0223F2B4
	bl sub_02039794
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F1E8:
	add r0, r4, #0
	bl ov23_0223EE80
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F1F8:
	bl ov23_0223EF98
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F206:
	bl sub_02039734
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1d
	mov r1, #0x11
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F24C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223F2B4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, _0223F594 ; =0x0000054A
	bl sub_02005748
	mov r0, #8
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F266:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x14
	ble _0223F2B4
	mov r0, #9
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F278:
	bl ov23_0224219C
	ldr r2, [r4, #0xc]
	mov r1, #0
	bl ov23_0225410C
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3e
	add r3, r2, #0
	bl ov23_02253F60
	ldr r1, _0223F598 ; =0x02257740
	add sp, #0xc
	ldr r2, [r1, #0]
	mov r1, #0x9e
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F2AA:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x50
	bgt _0223F2B6
_0223F2B4:
	b _0223F6F4
_0223F2B6:
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	add r5, r0, #0
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	bl sub_0202920C
	cmp r0, #0
	beq _0223F2E2
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F2E2:
	mov r0, #0xd
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F2EA:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x55
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, _0223F598 ; =0x02257740
	add sp, #0xc
	ldr r2, [r1, #0]
	mov r1, #0x9e
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F310:
	ldr r0, _0223F598 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x9e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F3EE
	ldr r0, _0223F59C ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223F338
	ldr r0, _0223F5A0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223F3EE
_0223F338:
	bl ov23_0224219C
	bl ov23_02254044
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F34A:
	add r0, r4, #0
	bl ov23_02240CFC
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_02240B84
	add r0, r4, #0
	bl ov23_0223FDE0
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223F36E:
	add r0, r4, #0
	bl ov23_0223FDE0
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bne _0223F3EE
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x40
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, _0223F598 ; =0x02257740
	ldr r2, [r1, #0]
	mov r1, #0x9e
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, _0223F5A4 ; =0x000005E3
	bl sub_02005748
	mov r0, #0x3c
	str r0, [r4, #0x4c]
	mov r0, #0xf
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F3B0:
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	ldr r0, _0223F598 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x9e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F3EE
	ldr r0, [r4, #0x4c]
	sub r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r0, _0223F59C ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223F3F0
	ldr r0, _0223F5A0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0223F3F0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0223F3F0
_0223F3EE:
	b _0223F6F4
_0223F3F0:
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #0x10
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F400:
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	add r0, r4, #0
	bl ov23_022409F0
	cmp r0, #0
	beq _0223F420
	mov r0, #0x11
	str r0, [r4, #0]
	mov r0, #0x3c
	add sp, #0xc
	str r0, [r4, #0x4c]
	pop {r4, r5, r6, r7, pc}
_0223F420:
	mov r0, #0x12
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F428:
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	ldr r0, _0223F598 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x9e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F536
	ldr r0, [r4, #0x4c]
	sub r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r0, _0223F59C ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223F466
	ldr r0, _0223F5A0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0223F466
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _0223F536
_0223F466:
	add r0, r4, #0
	bl ov23_02240A90
	cmp r0, #0
	beq _0223F47C
	mov r0, #0x3c
	str r0, [r4, #0x4c]
	mov r0, #0xf
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F47C:
	mov r0, #0x10
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F484:
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1d
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F4B8:
	ldr r0, _0223F598 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223F536
	bl sub_02039794
	add r0, r4, #0
	bl ov23_0223F020
	add r0, r5, #0
	bl sub_020509D4
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F4E4:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0223F536
	add r0, r5, #0
	bl ov23_02249404
	str r0, [r5, #0x6c]
	bl sub_02039734
	bl sub_020594FC
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x11
	mov r2, #0x13
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F528:
	mov r0, #0
	bl sub_0200F338
	bl sub_0200F2AC
	cmp r0, #0
	bne _0223F538
_0223F536:
	b _0223F6F4
_0223F538:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	mov r3, #0x80
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x32
	mov r1, #0x34
	mov r2, #0
	add r3, #0xc0
	bl sub_02006E84
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	ldr r2, _0223F5A8 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	bl sub_020576A0
	bl ov23_0224B460
	bl ov23_022417E0
	add r1, r4, #0
	mov r0, #0x43
	add r1, #0x50
	bl sub_020360D0
	bl sub_02059514
	ldr r0, _0223F598 ; =0x02257740
	b _0223F5AC
	; .align 2, 0
_0223F594: .word 0x0000054A
_0223F598: .word 0x02257740
_0223F59C: .word 0x021BF6BC
_0223F5A0: .word 0x021BF67C
_0223F5A4: .word 0x000005E3
_0223F5A8: .word 0x000003D9
_0223F5AC:
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0x22
	lsl r0, r0, #6
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #1
	bl ov23_0224DBF4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223F5CC:
	ldr r1, _0223F6F8 ; =0x02257740
	ldr r0, _0223F6FC ; =0x000009E8
	ldr r2, [r1, #0]
	mov r3, #1
	strb r3, [r2, r0]
	ldr r2, [r4, #8]
	sub r2, r2, #1
	str r2, [r4, #8]
	bne _0223F5E8
	ldr r1, [r1, #0]
	mov r2, #0x64
	strb r2, [r1, r0]
	mov r0, #0x17
	str r0, [r4, #0]
_0223F5E8:
	ldr r0, _0223F6F8 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_02240B84
	ldr r0, _0223F6F8 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223F600:
	ldr r0, _0223F6F8 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	mov r0, #0xf
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1d
	mov r1, #2
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, _0223F700 ; =0x000006A1
	bl sub_02005748
	mov r0, #0x18
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F630:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223F65E
	mov r6, #0
	ldr r7, _0223F6F8 ; =0x02257740
	add r5, r6, #0
_0223F63E:
	ldr r0, [r7, #0]
	add r1, r0, r5
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _0223F63E
	mov r0, #0x19
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F65E:
	ldr r0, _0223F6F8 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl sub_020219F8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223F66C:
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	mov r3, #7
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #0x1a
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F684:
	mov r0, #0
	bl sub_0200F32C
	mov r0, #0
	bl sub_0200F338
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3f
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, _0223F6F8 ; =0x02257740
	add sp, #0xc
	ldr r2, [r1, #0]
	mov r1, #0x9e
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0x3c
	str r0, [r4, #0x4c]
	mov r0, #0xf
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0223F6B4:
	ldr r0, _0223F6F8 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x9e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F6F4
	ldr r0, [r4, #0x4c]
	sub r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r0, _0223F704 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223F6E8
	ldr r0, _0223F708 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0223F6E8
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _0223F6F4
_0223F6E8:
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #0x13
	str r0, [r4, #0]
_0223F6F4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F6F8: .word 0x02257740
_0223F6FC: .word 0x000009E8
_0223F700: .word 0x000006A1
_0223F704: .word 0x021BF6BC
_0223F708: .word 0x021BF67C
	thumb_func_end ov23_0223F118

	thumb_func_start ov23_0223F70C
ov23_0223F70C: ; 0x0223F70C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	bl sub_0202BE14
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0202B758
	mov r0, #0xb
	mov r1, #0x54
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x54
	bl sub_020C4CF4
	str r5, [r4, #0x10]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3FC
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AA04
	ldr r0, _0223F760 ; =ov23_0223F118
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _0223F764 ; =0x02257740
	ldr r2, [r1, #0]
	mov r1, #0x22
	lsl r1, r1, #6
	str r0, [r2, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223F760: .word ov23_0223F118
_0223F764: .word 0x02257740
	thumb_func_end ov23_0223F70C

	thumb_func_start ov23_0223F768
ov23_0223F768: ; 0x0223F768
	ldr r0, _0223F788 ; =0x02257740
	mov r2, #0
	ldr r3, [r0, #0]
	mov r0, #0x81
	lsl r0, r0, #4
_0223F772:
	ldr r1, [r3, r0]
	cmp r1, #0
	bne _0223F77C
	mov r0, #1
	bx lr
_0223F77C:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #8
	blt _0223F772
	mov r0, #0
	bx lr
	; .align 2, 0
_0223F788: .word 0x02257740
	thumb_func_end ov23_0223F768

	thumb_func_start ov23_0223F78C
ov23_0223F78C: ; 0x0223F78C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _0223F7F8 ; =0x02257740
	mov r3, #0x81
	ldr r2, [r2, #0]
	mov ip, r1
	mov r1, #0
	add r5, r2, #0
	lsl r3, r3, #4
_0223F79E:
	ldr r4, [r5, r3]
	cmp r4, #0
	bne _0223F7E8
	add r4, r0, #0
	mov r3, #0x14
	mul r4, r3
	ldr r3, _0223F7FC ; =0x02256EB0
	mov r0, #0xc
	mul r0, r1
	add r5, r3, r4
	mov r3, #0x81
	add r2, r2, r0
	lsl r3, r3, #4
	str r5, [r2, r3]
	ldr r2, _0223F800 ; =0x02256EBE
	ldrb r6, [r2, r4]
	ldr r4, _0223F7F8 ; =0x02257740
	ldr r2, [r4, #0]
	add r5, r2, r0
	add r2, r3, #4
	strb r6, [r5, r2]
	ldr r2, [r4, #0]
	mov r6, ip
	add r5, r2, r0
	add r2, r3, #5
	strb r6, [r5, r2]
	ldr r2, [r4, #0]
	add r5, r2, r0
	add r2, r3, #6
	strb r7, [r5, r2]
	ldr r2, [r4, #0]
	mov r5, #0
	add r0, r2, r0
	add r3, #8
	strb r5, [r0, r3]
	add r0, r1, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223F7E8:
	add r1, r1, #1
	add r5, #0xc
	cmp r1, #8
	blt _0223F79E
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F7F8: .word 0x02257740
_0223F7FC: .word 0x02256EB0
_0223F800: .word 0x02256EBE
	thumb_func_end ov23_0223F78C

	thumb_func_start ov23_0223F804
ov23_0223F804: ; 0x0223F804
	push {r3, r4}
	ldr r3, [r0, #0]
	cmp r3, #0
	bne _0223F812
	mov r0, #1
	pop {r3, r4}
	bx lr
_0223F812:
	lsr r4, r1, #0x1f
	add r4, r1, r4
	ldrb r0, [r0, #0xc]
	asr r1, r4, #1
	lsr r4, r2, #0x1f
	add r4, r2, r4
	asr r2, r4, #1
	lsr r0, r0, #1
	mul r0, r2
	add r0, r1, r0
	ldrb r0, [r3, r0]
	cmp r0, #0x6f
	beq _0223F832
	mov r0, #1
	pop {r3, r4}
	bx lr
_0223F832:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov23_0223F804

	thumb_func_start ov23_0223F838
ov23_0223F838: ; 0x0223F838
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	bl ov23_0223F768
	cmp r0, #0
	bne _0223F850
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223F850:
	ldr r0, [sp]
	mov r1, #0x14
	mul r1, r0
	str r1, [sp, #0xc]
	ldr r1, _0223F95C ; =0x02256EBC
	ldr r0, [sp, #0xc]
	ldrb r0, [r1, r0]
	lsr r1, r0, #1
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r1, _0223F960 ; =0x02256EBD
	ldr r0, [sp, #0xc]
	ldrb r0, [r1, r0]
	lsr r0, r0, #1
	add r7, r6, r0
	ldr r0, [sp, #0x1c]
	cmp r0, #0xd
	ble _0223F87C
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223F87C:
	cmp r7, #0xa
	ble _0223F886
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223F886:
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bge _0223F8EA
	mov r0, #0xd
	mul r0, r6
	str r0, [sp, #0x20]
_0223F898:
	add r4, r6, #0
	cmp r6, r7
	bge _0223F8DE
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r5, [sp, #0x20]
	sub r0, r1, r0
	lsl r0, r0, #1
	str r0, [sp, #0x14]
_0223F8AA:
	ldr r1, _0223F964 ; =0x02256EB0
	ldr r0, [sp, #0xc]
	sub r2, r4, r6
	add r0, r1, r0
	ldr r1, [sp, #0x14]
	lsl r2, r2, #1
	bl ov23_0223F804
	cmp r0, #0
	beq _0223F8D6
	ldr r0, _0223F968 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r1, r5, r0
	ldr r0, _0223F96C ; =0x000008DC
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0223F8D6
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223F8D6:
	add r4, r4, #1
	add r5, #0xd
	cmp r4, r7
	blt _0223F8AA
_0223F8DE:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _0223F898
_0223F8EA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl ov23_0223F78C
	ldr r1, [sp, #4]
	str r1, [sp, #8]
	add r2, r1, #0
	ldr r1, [sp, #0x1c]
	cmp r2, r1
	bge _0223F956
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0xd
	mul r0, r6
	str r0, [sp, #0x24]
_0223F90C:
	add r5, r6, #0
	cmp r6, r7
	bge _0223F94A
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x24]
	sub r0, r1, r0
	lsl r0, r0, #1
	str r0, [sp, #0x18]
_0223F91E:
	ldr r1, _0223F964 ; =0x02256EB0
	ldr r0, [sp, #0xc]
	sub r2, r5, r6
	add r0, r1, r0
	ldr r1, [sp, #0x18]
	lsl r2, r2, #1
	bl ov23_0223F804
	cmp r0, #0
	beq _0223F942
	ldr r0, _0223F968 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r2, r4, r0
	ldr r1, [sp, #0x28]
	ldr r0, _0223F96C ; =0x000008DC
	strb r1, [r2, r0]
_0223F942:
	add r5, r5, #1
	add r4, #0xd
	cmp r5, r7
	blt _0223F91E
_0223F94A:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0223F90C
_0223F956:
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F95C: .word 0x02256EBC
_0223F960: .word 0x02256EBD
_0223F964: .word 0x02256EB0
_0223F968: .word 0x02257740
_0223F96C: .word 0x000008DC
	thumb_func_end ov23_0223F838

	thumb_func_start ov23_0223F970
ov23_0223F970: ; 0x0223F970
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223F9C4 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	add r6, r0, #0
	bl sub_020298B0
	add r0, r6, #0
	bl sub_02025E38
	bl sub_02025F20
	add r4, r0, #0
	mov r1, #1
	add r0, r6, #0
	and r4, r1
	bl sub_02027560
	bl sub_02027474
	mov r1, #0
	cmp r0, #0
	beq _0223F9B4
	cmp r4, #0
	beq _0223F9AE
	ldrh r0, [r5, #8]
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_0223F9AE:
	ldrh r0, [r5, #0xa]
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_0223F9B4:
	cmp r4, #0
	beq _0223F9BE
	ldrh r0, [r5, #4]
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_0223F9BE:
	ldrh r0, [r5, #6]
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223F9C4: .word 0x02257740
	thumb_func_end ov23_0223F970

	thumb_func_start ov23_0223F9C8
ov23_0223F9C8: ; 0x0223F9C8
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _0223F9EC ; =0x02256EB0
	add r6, r4, #0
_0223F9D0:
	ldrb r0, [r5, #0xe]
	cmp r0, #0x3c
	beq _0223F9E6
	add r0, r5, #0
	bl ov23_0223F970
	add r6, r6, #1
	add r4, r4, r0
	add r5, #0x14
	cmp r6, #0x55
	blo _0223F9D0
_0223F9E6:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0223F9EC: .word 0x02256EB0
	thumb_func_end ov23_0223F9C8

	thumb_func_start ov23_0223F9F0
ov23_0223F9F0: ; 0x0223F9F0
	push {r4, r5, r6, lr}
	ldr r5, _0223FA1C ; =0x02256EB0
	add r6, r0, #0
	mov r4, #0
_0223F9F8:
	ldrb r0, [r5, #0xe]
	cmp r0, #0x3c
	beq _0223FA14
	add r0, r5, #0
	bl ov23_0223F970
	sub r6, r6, r0
	bpl _0223FA0C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0223FA0C:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #0x55
	blo _0223F9F8
_0223FA14:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223FA1C: .word 0x02256EB0
	thumb_func_end ov23_0223F9F0

	thumb_func_start ov23_0223FA20
ov23_0223FA20: ; 0x0223FA20
	mov r0, #0
	ldr r3, _0223FA38 ; =0x02256EB0
	add r2, r0, #0
_0223FA26:
	ldrb r1, [r3, #0xe]
	cmp r1, #0x3c
	blo _0223FA2E
	add r0, r0, #1
_0223FA2E:
	add r2, r2, #1
	add r3, #0x14
	cmp r2, #0x55
	blo _0223FA26
	bx lr
	; .align 2, 0
_0223FA38: .word 0x02256EB0
	thumb_func_end ov23_0223FA20

	thumb_func_start ov23_0223FA3C
ov23_0223FA3C: ; 0x0223FA3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp]
	ldr r0, _0223FC94 ; =0x02257740
	str r1, [sp, #4]
	ldr r0, [r0, #0]
	str r2, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	str r0, [sp, #0x38]
	bl ov23_0223F9C8
	str r0, [sp, #0x1c]
	bl ov23_0223FA20
	str r0, [sp, #0x28]
	ldr r0, _0223FC94 ; =0x02257740
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #8]
	str r3, [r5, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_020E1F1C
	ldr r0, [sp, #8]
	add r1, r1, #2
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x38]
	bl sub_0202920C
	cmp r0, #0
	beq _0223FAA4
	ldr r0, [sp, #8]
	mov r1, #3
	str r1, [r0, #0xc]
_0223FAA4:
	ldr r0, [sp, #8]
	mov r4, #0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ble _0223FBAE
	add r7, sp, #0x48
	str r4, [sp, #0x20]
_0223FAB2:
	ldr r0, _0223FC94 ; =0x02257740
	ldr r6, [r0, #0]
	add r5, r6, #0
	add r5, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r6, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, r2
	str r0, [r6, #8]
	adc r1, r3
	ldr r0, [sp, #0x1c]
	str r1, [r5, #4]
	cmp r0, #0
	bne _0223FAE0
	ldr r1, [r5, #4]
	b _0223FAEC
_0223FAE0:
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	mov r1, #0
	bl sub_020E1F1C
_0223FAEC:
	add r0, r1, #0
	bl ov23_0223F9F0
	mov r1, #0x14
	str r0, [sp, #0x30]
	mul r1, r0
	ldr r0, _0223FC98 ; =0x02256EB0
	add r0, r0, r1
	ldrb r5, [r0, #0xe]
	ldr r0, [sp, #0x38]
	add r1, r5, #0
	bl sub_02029274
	cmp r0, #0
	beq _0223FBA6
	cmp r5, #0x2c
	blt _0223FB36
	cmp r5, #0x3b
	bgt _0223FB36
	mov r3, #0
	add r2, r3, #0
	str r5, [r7, #0]
	cmp r4, #0
	ble _0223FB30
	add r6, sp, #0x48
	mov r0, #1
_0223FB20:
	ldr r1, [r6, #0]
	cmp r5, r1
	bne _0223FB28
	add r3, r0, #0
_0223FB28:
	add r2, r2, #1
	add r6, r6, #4
	cmp r2, r4
	blt _0223FB20
_0223FB30:
	cmp r3, #0
	bne _0223FBA6
	b _0223FB3A
_0223FB36:
	mov r0, #0x1c
	str r0, [r7, #0]
_0223FB3A:
	ldr r0, _0223FC94 ; =0x02257740
	ldr r5, [r0, #0]
	add r6, r5, #0
	add r6, #8
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	add r3, r0, #0
	ldr r0, [r6, #0x10]
	ldr r2, [r6, #0x14]
	add r0, r0, r3
	adc r2, r1
	str r0, [r5, #8]
	str r2, [r6, #4]
	add r0, r2, #0
	mov r1, #0
	mov r2, #0xd
	mov r3, #0
	bl sub_020E1F1C
	add r6, r5, #0
	add r6, #8
	str r1, [sp, #0x18]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	add r3, r0, #0
	ldr r0, [r6, #0x10]
	ldr r2, [r6, #0x14]
	add r0, r0, r3
	adc r2, r1
	str r0, [r5, #8]
	str r2, [r6, #4]
	add r0, r2, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	add r2, r1, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x18]
	bl ov23_0223F838
	cmp r0, #0
	beq _0223FBA6
	add r7, r7, #4
	add r4, r4, #1
_0223FBA6:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r4, r0
	blt _0223FAB2
_0223FBAE:
	ldr r0, [sp, #0x38]
	bl sub_0202920C
	cmp r0, #0
	bne _0223FC82
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #0x55
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
_0223FBCE:
	ldr r0, _0223FC94 ; =0x02257740
	ldr r6, [r0, #0]
	add r5, r6, #0
	add r5, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r6, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	str r0, [r6, #8]
	adc r3, r1
	ldr r0, [sp, #0x28]
	str r3, [r5, #4]
	cmp r0, #0
	ldr r0, [r5, #4]
	bne _0223FBFA
	str r0, [sp, #0x10]
	b _0223FC06
_0223FBFA:
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl sub_020E1F1C
	str r1, [sp, #0x10]
_0223FC06:
	ldr r0, _0223FC94 ; =0x02257740
	ldr r5, [r0, #0]
	add r6, r5, #0
	add r6, #8
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #8]
	ldr r1, [sp, #0x40]
	str r3, [r6, #4]
	add r0, r3, #0
	mov r2, #0xd
	mov r3, #0
	bl sub_020E1F1C
	add r6, r5, #0
	add r6, #8
	add r7, r1, #0
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	add r0, r0, r2
	adc r1, r3
	str r0, [r5, #8]
	str r1, [r6, #4]
	add r0, r1, #0
	ldr r1, [sp, #0x44]
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	add r2, r1, #0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	add r1, r7, #0
	bl ov23_0223F838
	cmp r0, #0
	beq _0223FC74
	add r4, r4, #1
_0223FC74:
	cmp r4, #0xc
	bgt _0223FC82
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #0x64
	blt _0223FBCE
_0223FC82:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov23_0223FF60
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FC94: .word 0x02257740
_0223FC98: .word 0x02256EB0
	thumb_func_end ov23_0223FA3C

	thumb_func_start ov23_0223FC9C
ov23_0223FC9C: ; 0x0223FC9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r0, _0223FDDC ; =0x02257740
	str r1, [sp, #0x10]
	ldr r1, [r0, #0]
	mov r0, #0x81
	lsl r0, r0, #4
	add r5, r1, r0
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r6
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl sub_02019FE4
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	ldr r1, [r5, r6]
	ldrb r0, [r0, #5]
	add r6, r4, #0
	lsl r7, r0, #1
	ldr r0, [sp, #0x3c]
	ldrb r0, [r0, #6]
	lsl r0, r0, #1
	str r0, [sp, #0x34]
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r0, r7, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r0, r0, r1
	str r0, [sp, #0x2c]
	mov r0, #0x37
	mov r1, #0x1d
	bl sub_02006C24
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0xc]
	cmp r4, r0
	blt _0223FCFA
	mov r6, #4
_0223FCFA:
	cmp r4, r0
	blt _0223FD1A
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	add r3, r6, #3
	ldr r1, [r1, #0]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, #0x12]
	mov r2, #0
	lsl r3, r3, #5
	bl sub_02007130
	b _0223FD4E
_0223FD1A:
	ldr r1, [sp, #0x3c]
	ldr r5, [sp, #0x18]
	ldr r1, [r1, #0]
	lsl r4, r4, #2
	ldrh r1, [r1, #0x12]
	add r5, #0x28
	ldr r0, [sp, #0x20]
	add r2, r5, r4
	mov r3, #0x1d
	bl sub_020071EC
	ldr r1, [sp, #0x18]
	add r1, r1, r4
	str r0, [r1, #0x18]
	ldr r0, [r5, r4]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [r5, r4]
	add r1, r6, #3
	ldr r0, [r0, #0xc]
	lsl r1, r1, #5
	mov r2, #0x20
	bl sub_020C00B4
_0223FD4E:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x3c]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	ldr r1, [r1, #0]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, #0x10]
	ldr r2, [sp, #0x10]
	mov r3, #1
	bl sub_020070E8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	bl sub_02006CA8
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x28]
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bge _0223FDD6
	add r0, r6, #3
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x14]
	add r6, r0, r1
	lsl r0, r7, #1
	str r0, [sp, #0x40]
_0223FD8C:
	ldr r0, [sp, #0x30]
	add r4, r7, #0
	cmp r7, r0
	bge _0223FDCA
	ldr r0, [sp, #0x28]
	add r0, r0, #4
	lsl r1, r0, #6
	ldr r0, [sp, #0x38]
	add r1, r0, r1
	ldr r0, [sp, #0x40]
	add r5, r1, r0
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x34]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
_0223FDAA:
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0]
	sub r1, r4, r7
	add r6, r6, #1
	bl ov23_0223F804
	cmp r0, #0
	beq _0223FDC0
	sub r0, r6, #1
	strh r0, [r5]
_0223FDC0:
	ldr r0, [sp, #0x30]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _0223FDAA
_0223FDCA:
	ldr r0, [sp, #0x28]
	add r1, r0, #1
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	cmp r1, r0
	blt _0223FD8C
_0223FDD6:
	ldr r0, [sp, #0x24]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FDDC: .word 0x02257740
	thumb_func_end ov23_0223FC9C

	thumb_func_start ov23_0223FDE0
ov23_0223FDE0: ; 0x0223FDE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x10]
_0223FDF2:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _0223FEE6
	ldr r0, _0223FF4C ; =0x000006A7
	bl sub_02005748
	mov r0, #0
	mov r4, #0
	str r4, [sp, #0x18]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
_0223FE0A:
	ldr r0, _0223FF50 ; =0x02257740
	ldr r6, [r0, #0]
	ldr r0, [sp, #0x10]
	add r5, r6, #0
	add r1, r0, r6
	mov r0, #0x81
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r5, #8
	ldrb r0, [r0, #0xc]
	str r1, [sp, #0xc]
	ldr r1, [r5, #0xc]
	lsl r7, r0, #3
	ldr r0, [r5, #8]
	ldr r2, [r6, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, r3
	adc r1, r2
	str r0, [r6, #8]
	str r1, [r5, #4]
	cmp r7, #0
	ldr r0, [r5, #4]
	bne _0223FE48
	str r0, [sp, #8]
	b _0223FE54
_0223FE48:
	ldr r1, [sp, #0x20]
	add r2, r7, #0
	mov r3, #0
	bl sub_020E1F1C
	str r1, [sp, #8]
_0223FE54:
	mov r0, #0x81
	ldr r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r5, r6, #0
	ldrb r0, [r0, #0xd]
	add r5, #8
	ldr r1, [r5, #0xc]
	lsl r7, r0, #3
	ldr r0, [r5, #8]
	ldr r2, [r6, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, r3
	adc r1, r2
	str r0, [r6, #8]
	str r1, [r5, #4]
	cmp r7, #0
	bne _0223FE88
	ldr r1, [r5, #4]
	b _0223FE94
_0223FE88:
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	add r2, r7, #0
	mov r3, #0
	bl sub_020E1F1C
_0223FE94:
	ldr r0, _0223FF50 ; =0x02257740
	ldr r3, [sp, #0xc]
	ldr r2, [r0, #0]
	ldr r0, _0223FF54 ; =0x00000815
	ldr r5, [sp, #0xc]
	ldrb r0, [r3, r0]
	lsl r3, r0, #4
	ldr r0, [sp, #8]
	add r0, r0, r3
	ldr r3, _0223FF58 ; =0x00000816
	lsl r0, r0, #0xc
	ldrb r3, [r5, r3]
	lsl r3, r3, #4
	str r0, [sp, #0x28]
	add r0, r1, r3
	add r0, #0x20
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	mov r0, #0x7f
	add r1, r2, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	add r1, #8
	bl sub_02021D6C
	ldr r0, _0223FF50 ; =0x02257740
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x28
	bl sub_02021C50
	ldr r0, [sp, #0x18]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0223FE0A
_0223FEE6:
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	bge _0223FEFE
	b _0223FDF2
_0223FEFE:
	mov r5, #0
	ldr r4, _0223FF5C ; =0x02257570
	mov r7, #0x20
	add r6, r5, #0
_0223FF06:
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0223FF3C
	ldr r1, [sp]
	ldr r1, [r1, #0x28]
	ldr r3, [r1, #0xc]
	add r1, r4, r0
	sub r1, r1, #1
	ldrb r2, [r1]
	cmp r2, #0xff
	bne _0223FF24
	ldr r0, [sp]
	str r6, [r0, #0x38]
	b _0223FF3C
_0223FF24:
	add r1, r0, #1
	ldr r0, [sp]
	cmp r2, #0xfe
	str r1, [r0, #0x38]
	beq _0223FF3C
	lsl r0, r2, #1
	add r1, r5, #3
	add r0, r3, r0
	lsl r1, r1, #5
	add r2, r7, #0
	bl sub_020C00B4
_0223FF3C:
	ldr r0, [sp]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp]
	cmp r5, #4
	blt _0223FF06
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FF4C: .word 0x000006A7
_0223FF50: .word 0x02257740
_0223FF54: .word 0x00000815
_0223FF58: .word 0x00000816
_0223FF5C: .word 0x02257570
	thumb_func_end ov23_0223FDE0

	thumb_func_start ov23_0223FF60
ov23_0223FF60: ; 0x0223FF60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
	str r3, [sp]
	ldr r5, _0223FF88 ; =0x00000269
	cmp r6, #0
	ble _0223FF86
_0223FF70:
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov23_0223FC9C
	lsr r0, r0, #5
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, r6
	blt _0223FF70
_0223FF86:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FF88: .word 0x00000269
	thumb_func_end ov23_0223FF60

	thumb_func_start ov23_0223FF8C
ov23_0223FF8C: ; 0x0223FF8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r0, #0
	str r0, [sp, #0xc]
_0223FF94:
	ldr r0, _022401A0 ; =0x02257740
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #8]
	str r3, [r5, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x15
	mov r3, #0
	bl sub_020E1F1C
	add r5, r4, #0
	add r5, #8
	str r1, [sp, #0x20]
	sub r1, #8
	str r1, [sp, #0x20]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #8]
	str r3, [r5, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x12
	mov r3, #0
	bl sub_020E1F1C
	sub r5, r1, #5
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #8
	add r1, r5, #0
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r1, r0
	bge _02240054
	add r0, r5, #0
	ldr r3, [sp, #0x20]
	mov r1, #0xd
	add r6, r0, #0
	mul r6, r1
	add r3, #8
_0224000C:
	cmp r5, #0xa
	bge _0224004A
	cmp r5, #0
	blt _0224004A
	ldr r4, [sp, #0x20]
	add r0, r4, #0
	cmp r0, r3
	bge _0224004A
	ldr r0, [sp, #0x10]
	sub r0, r5, r0
	lsl r1, r0, #3
	ldr r0, _022401A4 ; =0x02256E70
	add r7, r0, r1
_02240026:
	cmp r4, #0xd
	bge _02240044
	cmp r4, #0
	blt _02240044
	ldr r0, [sp, #0x20]
	sub r0, r4, r0
	ldrb r2, [r7, r0]
	cmp r2, #0
	beq _02240044
	ldr r0, _022401A0 ; =0x02257740
	ldr r0, [r0, #0]
	add r0, r6, r0
	add r1, r4, r0
	ldr r0, _022401A8 ; =0x0000095E
	strb r2, [r1, r0]
_02240044:
	add r4, r4, #1
	cmp r4, r3
	blt _02240026
_0224004A:
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	add r6, #0xd
	cmp r5, r0
	blt _0224000C
_02240054:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0xa
	blt _0223FF94
	mov r0, #0
	str r0, [sp, #4]
_02240062:
	ldr r0, _022401A0 ; =0x02257740
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r4, #4]
	bl sub_020E1F1C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #8]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x12
	mov r3, #0
	bl sub_020E1F1C
	add r6, r5, #0
	add r6, #8
	sub r4, r1, #5
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #8]
	str r3, [r6, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #0
	bl sub_020E1F1C
	sub r0, r1, #5
	str r0, [sp]
	ldr r3, [sp]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, r0, #5
	add r1, r3, #0
	str r0, [sp, #0x18]
	cmp r1, r0
	bge _02240126
	mov r1, #0xd
	add r0, r3, #0
	mul r1, r0
	ldr r7, _022401A8 ; =0x0000095E
	add r1, r5, r1
	add r0, r4, #5
_022400DA:
	cmp r3, #0xa
	bge _0224011C
	cmp r3, #0
	blt _0224011C
	add r5, r4, #0
	cmp r4, r0
	bge _02240116
	ldr r2, [sp]
	sub r2, r3, r2
	lsl r6, r2, #3
	ldr r2, _022401A4 ; =0x02256E70
	add r2, r2, r6
_022400F2:
	cmp r5, #0xd
	bge _02240110
	cmp r5, #0
	blt _02240110
	sub r6, r5, r4
	ldrb r6, [r2, r6]
	cmp r6, #0
	beq _02240110
	add r6, r1, r5
	ldrb r6, [r6, r7]
	cmp r6, #4
	bhs _02240110
	mov r2, #0
	str r2, [sp, #8]
	b _02240116
_02240110:
	add r5, r5, #1
	cmp r5, r0
	blt _022400F2
_02240116:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _02240126
_0224011C:
	ldr r2, [sp, #0x18]
	add r3, r3, #1
	add r1, #0xd
	cmp r3, r2
	blt _022400DA
_02240126:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02240190
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [sp, #0x1c]
	add r0, r0, #5
	mov ip, r0
	cmp r1, r0
	bge _02240190
	ldr r0, [sp]
	mov r1, #0xd
	add r3, r0, #0
	mul r3, r1
	add r6, r4, #5
_02240144:
	ldr r0, [sp, #0x1c]
	cmp r0, #0xa
	bge _02240182
	cmp r0, #0
	blt _02240182
	add r5, r4, #0
	cmp r4, r6
	bge _02240182
	ldr r1, [sp]
	sub r1, r0, r1
	lsl r0, r1, #2
	add r1, r1, r0
	ldr r0, _022401AC ; =0x02256E3A
	add r7, r0, r1
_02240160:
	cmp r5, #0xd
	bge _0224017C
	cmp r5, #0
	blt _0224017C
	sub r0, r5, r4
	ldrb r2, [r7, r0]
	cmp r2, #0
	beq _0224017C
	ldr r0, _022401A0 ; =0x02257740
	ldr r0, [r0, #0]
	add r0, r3, r0
	add r1, r5, r0
	ldr r0, _022401A8 ; =0x0000095E
	strb r2, [r1, r0]
_0224017C:
	add r5, r5, #1
	cmp r5, r6
	blt _02240160
_02240182:
	ldr r0, [sp, #0x1c]
	mov r1, ip
	add r0, r0, #1
	add r3, #0xd
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _02240144
_02240190:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xf
	bge _0224019C
	b _02240062
_0224019C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022401A0: .word 0x02257740
_022401A4: .word 0x02256E70
_022401A8: .word 0x0000095E
_022401AC: .word 0x02256E3A
	thumb_func_end ov23_0223FF8C

	thumb_func_start ov23_022401B0
ov23_022401B0: ; 0x022401B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #2
	str r0, [sp]
	bl sub_02019FE4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #4
	mov ip, r2
	str r0, [sp, #4]
_022401C6:
	ldr r0, [sp, #4]
	mov r6, #0
	lsl r3, r0, #5
_022401CC:
	ldr r0, _02240234 ; =0x02257740
	lsl r7, r3, #1
	ldr r0, [r0, #0]
	ldr r4, _02240238 ; =0x00002001
	add r0, r2, r0
	add r1, r6, r0
	ldr r0, _0224023C ; =0x0000095E
	add r6, r6, #1
	ldrb r0, [r1, r0]
	add r3, r3, #2
	lsl r1, r0, #2
	ldr r0, _02240240 ; =0x02256E54
	ldr r1, [r0, r1]
	ldr r0, [sp, #8]
	ldrb r5, [r1]
	add r0, r0, r7
	add r5, r5, r4
	ldr r4, [sp, #8]
	strh r5, [r4, r7]
	ldrb r5, [r1, #1]
	ldr r4, _02240238 ; =0x00002001
	add r4, r5, r4
	strh r4, [r0, #2]
	ldrb r5, [r1, #2]
	ldr r4, _02240238 ; =0x00002001
	add r5, r5, r4
	add r4, r0, #0
	add r4, #0x40
	strh r5, [r4]
	ldrb r4, [r1, #3]
	ldr r1, _02240238 ; =0x00002001
	add r0, #0x42
	add r1, r4, r1
	strh r1, [r0]
	cmp r6, #0xd
	blt _022401CC
	ldr r0, [sp, #4]
	add r2, #0xd
	add r0, r0, #2
	str r0, [sp, #4]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0xa
	blt _022401C6
	ldr r0, [sp]
	mov r1, #2
	bl sub_02019448
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02240234: .word 0x02257740
_02240238: .word 0x00002001
_0224023C: .word 0x0000095E
_02240240: .word 0x02256E54
	thumb_func_end ov23_022401B0

	thumb_func_start ov23_02240244
ov23_02240244: ; 0x02240244
	ldr r2, _02240278 ; =0x02257740
	mov r3, #0xd
	ldr r2, [r2, #0]
	mul r3, r1
	add r1, r2, r3
	add r0, r1, r0
	ldr r1, _0224027C ; =0x000008DC
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0224025C
	mov r0, #0
	bx lr
_0224025C:
	sub r3, r0, #1
	mov r0, #0xc
	mul r0, r3
	add r0, r2, r0
	sub r1, #0xc8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02240274
	cmp r0, #0x3c
	bge _02240274
	mov r0, #1
	bx lr
_02240274:
	mov r0, #0
	bx lr
	; .align 2, 0
_02240278: .word 0x02257740
_0224027C: .word 0x000008DC
	thumb_func_end ov23_02240244

	thumb_func_start ov23_02240280
ov23_02240280: ; 0x02240280
	ldr r2, _022402B0 ; =0x02257740
	mov r3, #0xd
	ldr r2, [r2, #0]
	mul r3, r1
	add r1, r2, r3
	add r0, r1, r0
	ldr r1, _022402B4 ; =0x000008DC
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02240298
	mov r0, #0
	bx lr
_02240298:
	sub r3, r0, #1
	mov r0, #0xc
	mul r0, r3
	add r0, r2, r0
	sub r1, #0xc8
	ldrb r0, [r0, r1]
	cmp r0, #0x3c
	blo _022402AC
	mov r0, #1
	bx lr
_022402AC:
	mov r0, #0
	bx lr
	; .align 2, 0
_022402B0: .word 0x02257740
_022402B4: .word 0x000008DC
	thumb_func_end ov23_02240280

	thumb_func_start ov23_022402B8
ov23_022402B8: ; 0x022402B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp, #4]
	asr r2, r0, #3
	lsr r2, r2, #0x1c
	add r2, r0, r2
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	mov r5, #0
	sub r0, r0, #2
	asr r7, r2, #4
	add r6, r5, #0
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	cmp r7, #0
	blt _022402E8
	cmp r7, #0xd
	bge _022402E8
	cmp r0, #0
	blt _022402E8
	cmp r0, #0xa
	blt _022402EA
_022402E8:
	b _02240436
_022402EA:
	add r4, r0, #0
	mov r1, #0xd
	ldr r0, _0224043C ; =0x02257740
	mul r4, r1
	ldr r1, [r0, #0]
	ldr r0, _02240440 ; =0x0000095E
	add r0, r1, r0
	add r1, r0, r4
	ldrb r0, [r1, r7]
	cmp r0, #0
	beq _02240304
	sub r0, r0, #1
	strb r0, [r1, r7]
_02240304:
	ldr r0, _0224043C ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02240440 ; =0x0000095E
	add r0, r1, r0
	add r1, r0, r4
	ldrb r0, [r1, r7]
	cmp r0, #0
	beq _02240318
	sub r0, r0, #1
	strb r0, [r1, r7]
_02240318:
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov23_02240280
	cmp r0, #0
	beq _02240336
	ldr r0, _0224043C ; =0x02257740
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r1, r0, r7
	ldr r0, _02240440 ; =0x0000095E
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02240336
	mov r5, #1
_02240336:
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov23_02240244
	cmp r0, #0
	beq _0224035A
	ldr r0, _0224043C ; =0x02257740
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r1, r0, r7
	ldr r0, _02240440 ; =0x0000095E
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224035A
	ldr r0, [sp, #8]
	mov r1, #0xf
	mov r6, #1
	str r1, [r0, #0x14]
_0224035A:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	add r1, r1, #2
	lsl r0, r7, #4
	lsl r1, r1, #4
	add r3, r5, #0
	str r6, [sp]
	bl ov23_0223ED68
	cmp r5, #0
	bne _02240436
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022403C2
	ldr r4, _02240444 ; =0x02257554
	ldr r5, _02240448 ; =0x02256BE0
	mov r3, #0
_0224037C:
	mov r0, #0
	ldrsb r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r2, r0, r1
	mov r0, #0
	ldrsb r0, [r5, r0]
	add r1, r7, r0
	cmp r2, #0
	blt _022403B8
	cmp r2, #0xa
	bge _022403B8
	cmp r1, #0
	blt _022403B8
	cmp r1, #0xd
	bge _022403B8
	ldr r0, _0224043C ; =0x02257740
	mov r6, #0xd
	ldr r0, [r0, #0]
	mul r6, r2
	add r0, r0, r6
	add r0, r0, r1
	ldr r1, _02240440 ; =0x0000095E
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _022403B8
	ldr r1, _02240440 ; =0x0000095E
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02240440 ; =0x0000095E
	strb r2, [r0, r1]
_022403B8:
	add r3, r3, #1
	add r4, r4, #1
	add r5, r5, #1
	cmp r3, #4
	blt _0224037C
_022403C2:
	mov r0, #0
	ldr r2, _0224044C ; =0x0225756C
	ldr r3, _02240450 ; =0x02257558
	mov ip, r0
_022403CA:
	mov r0, #0
	ldrsb r1, [r2, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	mov r1, #0
	ldrsb r1, [r3, r1]
	add r5, r7, r1
	cmp r0, #0
	blt _02240428
	cmp r0, #0xa
	bge _02240428
	cmp r5, #0
	blt _02240428
	cmp r5, #0xd
	bge _02240428
	add r4, r0, #0
	ldr r0, _0224043C ; =0x02257740
	mov r1, #0xd
	ldr r0, [r0, #0]
	mul r4, r1
	add r0, r0, r4
	add r6, r0, r5
	ldr r0, _02240440 ; =0x0000095E
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _02240408
	ldr r0, _02240440 ; =0x0000095E
	ldrb r0, [r6, r0]
	sub r1, r0, #1
	ldr r0, _02240440 ; =0x0000095E
	strb r1, [r6, r0]
_02240408:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02240428
	ldr r0, _0224043C ; =0x02257740
	ldr r1, _02240440 ; =0x0000095E
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02240428
	ldr r1, _02240440 ; =0x0000095E
	ldrb r1, [r0, r1]
	sub r4, r1, #1
	ldr r1, _02240440 ; =0x0000095E
	strb r4, [r0, r1]
_02240428:
	mov r0, ip
	add r0, r0, #1
	add r2, r2, #1
	add r3, r3, #1
	mov ip, r0
	cmp r0, #4
	blt _022403CA
_02240436:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224043C: .word 0x02257740
_02240440: .word 0x0000095E
_02240444: .word 0x02257554
_02240448: .word 0x02256BE0
_0224044C: .word 0x0225756C
_02240450: .word 0x02257558
	thumb_func_end ov23_022402B8

	thumb_func_start ov23_02240454
ov23_02240454: ; 0x02240454
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldrb r1, [r6, #1]
	str r2, [sp]
	ldrb r2, [r6, #3]
	mov ip, r1
	mov r1, #0
	mov lr, r1
	mov r1, ip
	str r3, [sp, #4]
	cmp r1, r2
	bge _022404C2
	mov r1, ip
	cmp r1, r2
	bge _022404C2
	mov r1, lr
	str r1, [sp, #8]
	mov r1, ip
	mov r7, #0x3f
	lsl r5, r1, #5
	lsl r7, r7, #0xa
_02240480:
	ldr r2, [sp]
	ldr r1, [sp, #8]
	add r3, r2, r1
	ldrb r2, [r6]
	ldrb r1, [r6, #2]
	cmp r2, r1
	bge _022404A4
_0224048E:
	add r1, r2, r5
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	add r2, r2, #1
	and r4, r7
	add r4, r3, r4
	strh r4, [r0, r1]
	ldrb r1, [r6, #2]
	add r3, r3, #1
	cmp r2, r1
	blt _0224048E
_022404A4:
	mov r1, ip
	add r1, r1, #1
	mov ip, r1
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r5, #0x20
	add r1, r2, r1
	str r1, [sp, #8]
	mov r1, lr
	add r1, r1, #1
	mov lr, r1
	ldrb r2, [r6, #3]
	mov r1, ip
	cmp r1, r2
	blt _02240480
_022404C2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02240454

	thumb_func_start ov23_022404C8
ov23_022404C8: ; 0x022404C8
	push {r4, lr}
	ldr r3, _022404EC ; =0x02257740
	ldr r2, _022404F0 ; =0x000009E6
	ldr r4, [r3, #0]
	mov r1, #1
	strb r1, [r4, r2]
	ldr r3, [r3, #0]
	sub r2, r2, #2
	strb r1, [r3, r2]
	bl sub_02019FE4
	ldr r1, _022404F4 ; =0x02256BF4
	mov r2, #0x30
	mov r3, #0x36
	bl ov23_02240454
	pop {r4, pc}
	nop
_022404EC: .word 0x02257740
_022404F0: .word 0x000009E6
_022404F4: .word 0x02256BF4
	thumb_func_end ov23_022404C8

	thumb_func_start ov23_022404F8
ov23_022404F8: ; 0x022404F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r3, #0
	add r5, r0, #0
	cmp r4, #2
	blt _02240530
	bne _02240542
	cmp r1, #0xd6
	ble _02240530
	cmp r1, #0xfc
	bge _02240530
	cmp r2, #0x2b
	ble _02240528
	cmp r2, #0x6e
	bge _02240528
	ldr r2, _0224064C ; =0x02257740
	ldr r1, _02240650 ; =0x000009E6
	ldr r3, [r2, #0]
	mov r0, #0
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	sub r1, r1, #2
	strb r0, [r2, r1]
	b _02240542
_02240528:
	cmp r2, #0x72
	ble _02240530
	cmp r2, #0xae
	blt _02240532
_02240530:
	b _02240648
_02240532:
	ldr r2, _0224064C ; =0x02257740
	ldr r1, _02240650 ; =0x000009E6
	ldr r3, [r2, #0]
	mov r0, #1
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	sub r1, r1, #2
	strb r0, [r2, r1]
_02240542:
	add r0, r5, #0
	mov r1, #1
	bl sub_02019FE4
	ldr r1, _0224064C ; =0x02257740
	add r6, r0, #0
	ldr r2, [r1, #0]
	ldr r1, _02240650 ; =0x000009E6
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0224055E
	cmp r1, #1
	beq _022405D0
	b _02240640
_0224055E:
	cmp r4, #2
	bne _02240580
	ldr r1, _02240654 ; =0x02256BF8
	mov r2, #0x18
	mov r3, #0x36
	bl ov23_02240454
	ldr r1, _02240658 ; =0x02256BF4
	add r0, r6, #0
	mov r2, #0x24
	mov r3, #0x36
	bl ov23_02240454
	ldr r0, _0224065C ; =0x000005DC
	bl sub_02005748
	b _0224058E
_02240580:
	cmp r4, #3
	bne _0224058E
	ldr r1, _02240654 ; =0x02256BF8
	mov r2, #0x1e
	mov r3, #0x36
	bl ov23_02240454
_0224058E:
	cmp r4, #2
	bne _02240640
	ldr r0, _0224064C ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #6
	bl sub_02021D6C
	ldr r0, _0224064C ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x3a
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0224064C ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	b _02240640
_022405D0:
	cmp r4, #2
	bne _022405F2
	ldr r1, _02240654 ; =0x02256BF8
	mov r2, #0x12
	mov r3, #0x36
	bl ov23_02240454
	ldr r1, _02240658 ; =0x02256BF4
	add r0, r6, #0
	mov r2, #0x2a
	mov r3, #0x36
	bl ov23_02240454
	ldr r0, _0224065C ; =0x000005DC
	bl sub_02005748
	b _02240600
_022405F2:
	cmp r4, #3
	bne _02240600
	ldr r1, _02240658 ; =0x02256BF4
	mov r2, #0x30
	mov r3, #0x36
	bl ov23_02240454
_02240600:
	cmp r4, #2
	bne _02240640
	ldr r0, _0224064C ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl sub_02021D6C
	ldr r0, _0224064C ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x3a
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0x26
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	ldr r0, _0224064C ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
_02240640:
	add r0, r5, #0
	mov r1, #1
	bl sub_02019448
_02240648:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224064C: .word 0x02257740
_02240650: .word 0x000009E6
_02240654: .word 0x02256BF8
_02240658: .word 0x02256BF4
_0224065C: .word 0x000005DC
	thumb_func_end ov23_022404F8

	thumb_func_start ov23_02240660
ov23_02240660: ; 0x02240660
	ldr r1, _02240680 ; =0x02257740
	ldr r2, [r1, #0]
	ldr r1, _02240684 ; =0x000009E7
	ldrb r2, [r2, r1]
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	asr r1, r1, #2
	lsl r1, r1, #2
	add r1, #0x10
	lsl r1, r1, #0xc
	str r1, [r0, #0]
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_02240680: .word 0x02257740
_02240684: .word 0x000009E7
	thumb_func_end ov23_02240660

	thumb_func_start ov23_02240688
ov23_02240688: ; 0x02240688
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _02240750 ; =0x02257740
	str r0, [sp]
	ldr r2, [r1, #0]
	ldr r1, _02240754 ; =0x000009E7
	ldrb r4, [r2, r1]
	mov r1, #0
	bl sub_02019FE4
	add r5, r0, #0
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r0, r0, #2
	lsl r4, r0, #2
	add r0, sp, #4
	bl ov23_02240660
	add r0, r4, #0
	mov r1, #0x18
	bl sub_020E1F6C
	ldr r0, _02240750 ; =0x02257740
	ldr r2, [r0, #0]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	asr r2, r1, #1
	lsr r2, r2, #0x1e
	add r2, r1, r2
	asr r2, r2, #2
	mov r1, #6
	sub r1, r1, r2
	bl sub_02021D6C
	add r4, #8
	mov r0, #0xd0
	sub r1, r0, r4
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r7, r0, #3
	mov r4, #0
	cmp r7, #0
	ble _02240744
_022406E4:
	mov r0, #0x19
	sub r0, r0, r4
	lsl r6, r0, #1
	add r0, r4, #0
	mov r1, #3
	bl sub_020E1F6C
	add r0, r1, #0
	mov r1, #0x3f
	ldrh r2, [r5, r6]
	lsl r1, r1, #0xa
	and r1, r2
	add r1, #0xb
	sub r1, r1, r0
	strh r1, [r5, r6]
	mov r1, #0x39
	sub r1, r1, r4
	lsl r1, r1, #1
	mov r2, #0x3f
	ldrh r3, [r5, r1]
	lsl r2, r2, #0xa
	and r2, r3
	add r2, #0x41
	sub r2, r2, r0
	strh r2, [r5, r1]
	mov r1, #0x59
	sub r1, r1, r4
	lsl r1, r1, #1
	mov r2, #0x3f
	ldrh r3, [r5, r1]
	lsl r2, r2, #0xa
	and r2, r3
	add r2, #0x77
	sub r2, r2, r0
	strh r2, [r5, r1]
	mov r1, #0x79
	sub r1, r1, r4
	lsl r1, r1, #1
	mov r2, #0x3f
	ldrh r3, [r5, r1]
	lsl r2, r2, #0xa
	add r4, r4, #1
	and r2, r3
	add r2, #0xad
	sub r0, r2, r0
	strh r0, [r5, r1]
	cmp r4, r7
	blt _022406E4
_02240744:
	ldr r0, [sp]
	mov r1, #0
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240750: .word 0x02257740
_02240754: .word 0x000009E7
	thumb_func_end ov23_02240688

	thumb_func_start ov23_02240758
ov23_02240758: ; 0x02240758
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0
	str r0, [sp]
	str r5, [sp, #4]
_02240762:
	ldr r0, _02240800 ; =0x02257740
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02240804 ; =0x000008CC
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _022407E6
	ldr r0, _02240808 ; =0x000008D4
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _022407E6
	bl sub_0203608C
	bl sub_02058CA0
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058CF4
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224AD04
	add r7, r0, #0
	add r0, r5, #0
	bl ov23_0224AD40
	add r1, r4, #0
	sub r1, #0xa
	cmp r7, r1
	ble _022407E6
	add r4, #0xa
	cmp r7, r4
	bge _022407E6
	add r1, r6, #0
	sub r1, #0xa
	cmp r0, r1
	ble _022407E6
	add r6, #0xa
	cmp r0, r6
	bge _022407E6
	ldr r0, _02240800 ; =0x02257740
	ldr r1, _02240808 ; =0x000008D4
	ldr r0, [r0, #0]
	ldr r3, [sp]
	add r2, r0, r5
	ldr r0, _02240804 ; =0x000008CC
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	mov r2, #1
	bl ov23_022402B8
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240800 ; =0x02257740
	mov r1, #0xff
	ldr r0, [r0, #0]
	add r2, r0, r5
	ldr r0, _02240804 ; =0x000008CC
	strb r1, [r2, r0]
	ldr r0, _02240800 ; =0x02257740
	ldr r0, [r0, #0]
	add r2, r0, r5
	ldr r0, _02240808 ; =0x000008D4
	strb r1, [r2, r0]
_022407E6:
	add r5, r5, #1
	cmp r5, #8
	blt _02240762
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022407FC
	ldr r0, _02240800 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_022401B0
_022407FC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240800: .word 0x02257740
_02240804: .word 0x000008CC
_02240808: .word 0x000008D4
	thumb_func_end ov23_02240758

	thumb_func_start ov23_0224080C
ov23_0224080C: ; 0x0224080C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r5, #0
	bl ov23_02241CF4
	cmp r0, #0
	beq _02240894
	cmp r4, #6
	beq _02240828
	cmp r4, #7
	beq _02240828
	sub r0, r4, #1
	cmp r0, #1
	bhi _0224084E
_02240828:
	ldr r0, _02240898 ; =0x02257740
	ldr r6, [r0, #0]
	add r5, r6, #0
	add r5, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r6, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r6, #8]
	mov r0, #0
	str r3, [r5, #4]
	add r5, r0, #1
	b _02240878
_0224084E:
	ldr r0, _02240898 ; =0x02257740
	ldr r6, [r0, #0]
	add r5, r6, #0
	add r5, #8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r6, #8]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r3, [r5, #0x10]
	ldr r2, [r5, #0x14]
	add r0, r3, r0
	adc r2, r1
	str r0, [r6, #8]
	mov r1, #0
	lsr r0, r2, #0x1e
	lsl r1, r1, #2
	orr r1, r0
	str r2, [r5, #4]
	add r5, r1, #1
_02240878:
	sub r0, r4, #6
	cmp r0, #4
	bhi _02240880
	add r5, #0xa
_02240880:
	ldr r0, _0224089C ; =0x000009E7
	mov r1, #0x27
	ldrb r4, [r6, r0]
	add r0, r4, #0
	bl sub_020E1F6C
	add r5, r5, r0
	cmp r4, #0
	beq _02240894
	add r5, r5, #5
_02240894:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02240898: .word 0x02257740
_0224089C: .word 0x000009E7
	thumb_func_end ov23_0224080C

	thumb_func_start ov23_022408A0
ov23_022408A0: ; 0x022408A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022408E8 ; =0x02257740
	add r4, r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298A0
	ldr r0, _022408E8 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_02241CF4
	cmp r0, #0
	beq _022408D8
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224F6E0
	pop {r4, r5, r6, pc}
_022408D8:
	add r0, r5, #0
	bl ov23_0224F710
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02029250
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022408E8: .word 0x02257740
	thumb_func_end ov23_022408A0

	thumb_func_start ov23_022408EC
ov23_022408EC: ; 0x022408EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02240930 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	add r5, r0, #0
	add r0, r4, #0
	bl ov23_02241CF4
	cmp r0, #0
	beq _0224091C
	add r0, r5, #0
	bl sub_02028C3C
	cmp r0, #0x28
	beq _02240918
	mov r0, #1
	pop {r3, r4, r5, pc}
_02240918:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224091C:
	add r0, r5, #0
	bl sub_02028D58
	cmp r0, #0x28
	beq _0224092A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224092A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02240930: .word 0x02257740
	thumb_func_end ov23_022408EC

	thumb_func_start ov23_02240934
ov23_02240934: ; 0x02240934
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #1
	mov lr, r0
	ldr r0, [r4, #0xc]
	mov r2, #0
	cmp r0, #0
	ble _02240954
	add r3, sp, #0
	mov r1, #1
_0224094A:
	stmia r3!, {r1}
	ldr r0, [r4, #0xc]
	add r2, r2, #1
	cmp r2, r0
	blt _0224094A
_02240954:
	mov r0, #0
	mov ip, r0
	ldr r0, _022409E0 ; =0x02257740
	mov r6, #0
	ldr r3, [r0, #0]
	add r7, sp, #0
_02240960:
	mov r2, #0
_02240962:
	ldr r0, _022409E4 ; =0x000008DC
	add r1, r3, r2
	ldrb r0, [r1, r0]
	ldr r5, [r4, #0xc]
	cmp r0, r5
	bgt _02240982
	cmp r0, #0
	beq _02240982
	ldr r5, _022409E8 ; =0x0000095E
	ldrb r1, [r1, r5]
	cmp r1, #0
	beq _02240982
	lsl r0, r0, #2
	add r0, r7, r0
	sub r0, r0, #4
	str r6, [r0, #0]
_02240982:
	add r2, r2, #1
	cmp r2, #0xd
	blt _02240962
	mov r0, ip
	add r0, r0, #1
	add r3, #0xd
	mov ip, r0
	cmp r0, #0xa
	blt _02240960
	ldr r0, [r4, #0xc]
	mov r3, #0
	cmp r0, #0
	ble _022409D8
	add r0, sp, #0
	add r1, r3, #0
	add r2, r4, #0
	mov r7, #1
_022409A4:
	ldr r5, [r0, #0]
	cmp r5, #0
	bne _022409B0
	mov r5, #0
	mov lr, r5
	b _022409CA
_022409B0:
	ldr r5, _022409E0 ; =0x02257740
	ldr r5, [r5, #0]
	add r6, r5, r1
	ldr r5, _022409EC ; =0x00000818
	ldrb r5, [r6, r5]
	cmp r5, #0
	bne _022409CA
	ldr r5, _022409E0 ; =0x02257740
	str r7, [r2, #0x38]
	ldr r5, [r5, #0]
	add r6, r5, r1
	ldr r5, _022409EC ; =0x00000818
	strb r7, [r6, r5]
_022409CA:
	ldr r5, [r4, #0xc]
	add r3, r3, #1
	add r0, r0, #4
	add r1, #0xc
	add r2, r2, #4
	cmp r3, r5
	blt _022409A4
_022409D8:
	mov r0, lr
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022409E0: .word 0x02257740
_022409E4: .word 0x000008DC
_022409E8: .word 0x0000095E
_022409EC: .word 0x00000818
	thumb_func_end ov23_02240934

	thumb_func_start ov23_022409F0
ov23_022409F0: ; 0x022409F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0
	cmp r1, #0
	ble _02240A80
	ldr r2, _02240A84 ; =0x02257740
	ldr r3, _02240A88 ; =0x00000818
	ldr r2, [r2, #0]
	add r6, r2, #0
_02240A04:
	ldrb r4, [r6, r3]
	cmp r4, #1
	bne _02240A78
	add r4, r0, #0
	mov r1, #0xc
	mul r4, r1
	ldr r0, _02240A8C ; =0x00000814
	add r1, r2, r4
	ldrb r0, [r1, r0]
	bl ov23_0224080C
	str r0, [r5, #0x48]
	bl ov23_0224219C
	ldr r1, _02240A84 ; =0x02257740
	ldr r1, [r1, #0]
	add r2, r1, r4
	ldr r1, _02240A8C ; =0x00000814
	ldrb r1, [r2, r1]
	bl ov23_02254080
	ldr r0, _02240A84 ; =0x02257740
	ldr r0, [r0, #0]
	add r1, r0, r4
	ldr r0, _02240A8C ; =0x00000814
	ldrb r0, [r1, r0]
	bl ov23_02241CF4
	cmp r0, #0
	beq _02240A50
	mov r4, #0x45
	bl ov23_0224219C
	ldr r2, [r5, #0x48]
	mov r1, #1
	bl ov23_02254154
	b _02240A5C
_02240A50:
	mov r4, #0x11
	bl ov23_0224219C
	mov r1, #2
	bl ov23_02254204
_02240A5C:
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, _02240A84 ; =0x02257740
	ldr r2, [r1, #0]
	mov r1, #0x9e
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02240A78:
	add r0, r0, #1
	add r6, #0xc
	cmp r0, r1
	blt _02240A04
_02240A80:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02240A84: .word 0x02257740
_02240A88: .word 0x00000818
_02240A8C: .word 0x00000814
	thumb_func_end ov23_022409F0

	thumb_func_start ov23_02240A90
ov23_02240A90: ; 0x02240A90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02240B7C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298A0
	add r7, r0, #0
	ldr r0, _02240B7C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	ldr r5, [r4, #0xc]
	mov r2, #0
	cmp r5, #0
	ble _02240B76
	ldr r0, _02240B7C ; =0x02257740
	ldr r6, [r0, #0]
	ldr r0, _02240B80 ; =0x00000818
	add r3, r6, #0
_02240ABE:
	ldrb r1, [r3, r0]
	cmp r1, #1
	bne _02240B6E
	mov r0, #0xc
	mul r0, r2
	ldr r1, _02240B80 ; =0x00000818
	mov r3, #0
	add r2, r6, r0
	strb r3, [r2, r1]
	ldr r2, _02240B7C ; =0x02257740
	ldr r2, [r2, #0]
	add r2, r2, r0
	sub r0, r1, #4
	ldrb r5, [r2, r0]
	add r0, r5, #0
	bl ov23_02241CF4
	cmp r0, #0
	beq _02240AEE
	add r0, r7, #0
	mov r1, #1
	bl sub_020295F8
	b _02240B3E
_02240AEE:
	ldr r0, _02240B7C ; =0x02257740
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	ldr r0, [r0, #0]
	bl sub_0206D6C8
	cmp r5, #0x17
	blt _02240B04
	cmp r5, #0x1d
	blt _02240B0C
_02240B04:
	add r0, r5, #0
	sub r0, #0x24
	cmp r0, #1
	bhi _02240B36
_02240B0C:
	add r0, r7, #0
	mov r1, #1
	bl sub_02029644
	ldr r0, _02240B7C ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B40C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B41C
	b _02240B3E
_02240B36:
	add r0, r7, #0
	mov r1, #1
	bl sub_02029688
_02240B3E:
	add r0, r5, #0
	bl ov23_022408EC
	cmp r0, #0
	beq _02240B52
	ldr r1, [r4, #0x48]
	add r0, r5, #0
	bl ov23_022408A0
	b _02240B76
_02240B52:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x41
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, _02240B7C ; =0x02257740
	ldr r2, [r1, #0]
	mov r1, #0x9e
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02240B6E:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, r5
	blt _02240ABE
_02240B76:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240B7C: .word 0x02257740
_02240B80: .word 0x00000818
	thumb_func_end ov23_02240A90

	thumb_func_start ov23_02240B84
ov23_02240B84: ; 0x02240B84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _02240C84 ; =0x02257740
	ldr r4, [r0, #0]
	ldr r0, _02240C88 ; =0x000009E8
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02240C80
	sub r0, r0, #1
	ldrb r1, [r4, r0]
	mov r0, #0xc4
	sub r6, r0, r1
	add r0, r6, #0
	mov r1, #0x32
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r0, _02240C88 ; =0x000009E8
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldr r0, _02240C84 ; =0x02257740
	mov r1, #0xf
	ldr r5, [r0, #0]
	add r0, r6, #0
	bl sub_020E1F6C
	ldr r1, _02240C88 ; =0x000009E8
	ldrb r2, [r5, r1]
	cmp r2, r0
	ble _02240BD6
	mov r2, #0
	add r0, r1, #2
	strb r2, [r5, r0]
	ldr r0, _02240C84 ; =0x02257740
	ldr r3, [r0, #0]
	add r0, r1, #2
	ldrsb r2, [r3, r0]
	add r0, r1, #1
	strb r2, [r3, r0]
	b _02240C52
_02240BD6:
	add r4, r5, #0
	add r4, #8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r4, #4]
	bl sub_020E1F1C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #8]
	str r3, [r4, #4]
	add r6, r7, #3
	bne _02240BFA
	ldr r1, [r4, #4]
	b _02240C06
_02240BFA:
	ldr r0, [r4, #4]
	mov r1, #0
	mov r3, #0
	add r2, r6, #0
	bl sub_020E1F1C
_02240C06:
	add r2, r7, #3
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r7, r0, #1
	ldr r0, _02240C8C ; =0x000009E9
	sub r1, r1, r7
	strb r1, [r5, r0]
	ldr r0, _02240C84 ; =0x02257740
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r4, #4]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r0, r0, r2
	adc r1, r3
	str r0, [r5, #8]
	str r1, [r4, #4]
	cmp r6, #0
	bne _02240C40
	ldr r1, [r4, #4]
	b _02240C4C
_02240C40:
	ldr r0, [r4, #4]
	mov r1, #0
	mov r3, #0
	add r2, r6, #0
	bl sub_020E1F1C
_02240C4C:
	ldr r0, _02240C90 ; =0x000009EA
	sub r1, r1, r7
	strb r1, [r5, r0]
_02240C52:
	add r0, sp, #0
	bl ov23_02240660
	ldr r0, _02240C84 ; =0x02257740
	ldr r1, _02240C8C ; =0x000009E9
	ldr r0, [r0, #0]
	ldr r3, [sp]
	ldrsb r2, [r0, r1]
	add r1, r1, #1
	lsl r2, r2, #0xc
	sub r2, r3, r2
	str r2, [sp]
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #4]
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [sp, #4]
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl sub_02021C50
_02240C80:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240C84: .word 0x02257740
_02240C88: .word 0x000009E8
_02240C8C: .word 0x000009E9
_02240C90: .word 0x000009EA
	thumb_func_end ov23_02240B84

	thumb_func_start ov23_02240C94
ov23_02240C94: ; 0x02240C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02240CEC ; =0x02257740
	ldr r4, [r0, #0]
	ldr r0, _02240CF0 ; =0x000009E8
	ldrb r6, [r4, r0]
	cmp r6, #0
	beq _02240CEA
	sub r0, r0, #1
	ldrb r1, [r4, r0]
	mov r0, #0xc4
	sub r0, r0, r1
	mov r1, #0xa
	bl sub_020E1F6C
	cmp r6, r0
	ble _02240CBC
	ldr r0, _02240CF0 ; =0x000009E8
	mov r1, #0
	strb r1, [r4, r0]
_02240CBC:
	ldr r7, _02240CEC ; =0x02257740
	mov r4, #0
_02240CC0:
	ldr r6, [r7, #0]
	ldr r3, _02240CF4 ; =0x000009E9
	lsl r1, r4, #0x18
	ldrsb r3, [r6, r3]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	lsl r1, r4, #0x18
	ldr r6, [r7, #0]
	ldr r3, _02240CF8 ; =0x000009EA
	add r0, r5, #0
	ldrsb r3, [r6, r3]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	add r4, r4, #1
	cmp r4, #3
	blt _02240CC0
_02240CEA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240CEC: .word 0x02257740
_02240CF0: .word 0x000009E8
_02240CF4: .word 0x000009E9
_02240CF8: .word 0x000009EA
	thumb_func_end ov23_02240C94

	thumb_func_start ov23_02240CFC
ov23_02240CFC: ; 0x02240CFC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02240E44 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	add r6, r0, #0
	ldr r0, _02240E44 ; =0x02257740
	ldr r2, [r0, #0]
	ldr r0, _02240E48 ; =0x000009E5
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _02240D22
	mov r1, #0
	strb r1, [r2, r0]
_02240D22:
	ldr r1, _02240E4C ; =0x021BF6BC
	ldrh r0, [r1, #0x20]
	cmp r0, #0
	beq _02240DA6
	ldrh r0, [r1, #0x1c]
	cmp r0, #0xd0
	bhs _02240D98
	ldrh r1, [r1, #0x1e]
	cmp r1, #0x20
	blo _02240D98
	add r2, sp, #0
	strb r0, [r2]
	strb r1, [r2, #1]
	ldr r2, _02240E44 ; =0x02257740
	ldr r3, [r2, #0]
	ldr r2, _02240E50 ; =0x000009E4
	ldrb r2, [r3, r2]
	add r3, r5, #0
	bl ov23_022402B8
	ldr r0, _02240E44 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02240E50 ; =0x000009E4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02240D5A
	mov r4, #4
	b _02240D5C
_02240D5A:
	mov r4, #8
_02240D5C:
	mov r0, #0x44
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02240E44 ; =0x02257740
	ldr r1, _02240E54 ; =0x000009E7
	ldr r0, [r0, #0]
	ldrb r2, [r0, r1]
	cmp r2, r4
	ble _02240D74
	sub r2, r2, r4
	b _02240D76
_02240D74:
	mov r2, #0
_02240D76:
	strb r2, [r0, r1]
	ldr r0, _02240E44 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_022401B0
	ldr r0, _02240E44 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov23_02240688
	ldr r0, _02240E44 ; =0x02257740
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02240E58 ; =0x000009E8
	strb r2, [r1, r0]
	b _02240DA6
_02240D98:
	cmp r0, #0xd0
	blo _02240DA6
	ldr r0, _02240E44 ; =0x02257740
	mov r2, #2
	ldr r1, [r0, #0]
	ldr r0, _02240E48 ; =0x000009E5
	strb r2, [r1, r0]
_02240DA6:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02240DB8
	sub r0, r0, #1
	str r0, [r5, #0x14]
	bne _02240DB8
	ldr r0, _02240E5C ; =0x000006A5
	bl sub_02005748
_02240DB8:
	ldr r0, _02240E44 ; =0x02257740
	ldr r2, _02240E4C ; =0x021BF6BC
	ldr r3, [r0, #0]
	ldr r4, _02240E48 ; =0x000009E5
	ldr r0, [r3, #4]
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	ldrb r3, [r3, r4]
	bl ov23_022404F8
	ldr r0, _02240E44 ; =0x02257740
	ldr r2, [r0, #0]
	add r0, r4, #0
	ldrb r1, [r2, r0]
	cmp r1, #2
	blo _02240DDC
	add r1, r1, #1
	strb r1, [r2, r0]
_02240DDC:
	add r0, r5, #0
	bl ov23_02240758
	add r0, r5, #0
	bl ov23_02240934
	cmp r0, #0
	beq _02240E16
	add r0, r6, #0
	bl sub_02029220
	ldr r0, _02240E44 ; =0x02257740
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x1e
	bl sub_0202CFEC
	mov r0, #0xe
	str r0, [r5, #0]
	mov r0, #0x19
	str r0, [r5, #8]
	mov r0, #1
	add r5, #0x50
	add sp, #4
	strb r0, [r5]
	pop {r3, r4, r5, r6, pc}
_02240E16:
	ldr r0, _02240E44 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02240E54 ; =0x000009E7
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02240E3E
	add r0, r6, #0
	bl sub_02029220
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strb r1, [r0]
	mov r0, #0x2d
	str r0, [r5, #8]
	mov r0, #0x16
	str r0, [r5, #0]
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02240E3E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02240E44: .word 0x02257740
_02240E48: .word 0x000009E5
_02240E4C: .word 0x021BF6BC
_02240E50: .word 0x000009E4
_02240E54: .word 0x000009E7
_02240E58: .word 0x000009E8
_02240E5C: .word 0x000006A5
	thumb_func_end ov23_02240CFC

	thumb_func_start ov23_02240E60
ov23_02240E60: ; 0x02240E60
	push {r3, r4}
	ldr r3, _02240E80 ; =0x02257740
	ldr r2, _02240E84 ; =0x000009EB
	ldr r4, [r3, #0]
	ldrb r1, [r4, r2]
	lsl r1, r1, #2
	add r4, r4, r1
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r3, #0]
	ldrb r0, [r1, r2]
	add r0, r0, #1
	strb r0, [r1, r2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02240E80: .word 0x02257740
_02240E84: .word 0x000009EB
	thumb_func_end ov23_02240E60

	thumb_func_start ov23_02240E88
ov23_02240E88: ; 0x02240E88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, _02241084 ; =0x02257740
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02241088 ; =0x000009EB
	strb r2, [r1, r0]
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #0x1d
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	bl ov23_0224119C
	ldr r1, _02241084 ; =0x02257740
	mov r0, #0x1a
	ldr r1, [r1, #0]
	mov r2, #0x1d
	add r1, #0x24
	bl sub_020095C4
	ldr r1, _02241084 ; =0x02257740
	ldr r2, [r1, #0]
	str r0, [r2, #0x20]
	ldr r0, [r1, #0]
	mov r2, #6
	add r0, #0x24
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r4, #0
	mov r7, #0x53
	ldr r6, _02241084 ; =0x02257740
	add r5, r4, #0
	lsl r7, r7, #2
_02240EE2:
	mov r0, #2
	add r1, r4, #0
	mov r2, #0x1d
	bl sub_02009714
	ldr r1, [r6, #0]
	add r4, r4, #1
	add r1, r1, r5
	add r5, r5, #4
	str r0, [r1, r7]
	cmp r4, #4
	blt _02240EE2
	mov r0, #0x40
	mov r1, #0x1d
	bl sub_02006C24
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _02241084 ; =0x02257740
	mov r2, #6
	ldr r1, [r0, #0]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009A4C
	bl ov23_02240E60
	ldr r0, _02241084 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241088 ; =0x000009EB
	ldrb r0, [r1, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A328
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	ldr r0, _02241084 ; =0x02257740
	mov r2, #7
	ldr r1, [r0, #0]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009B04
	bl ov23_02240E60
	ldr r0, _02241084 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241088 ; =0x000009EB
	ldrb r0, [r1, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _02241084 ; =0x02257740
	mov r2, #5
	ldr r1, [r0, #0]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009BC4
	bl ov23_02240E60
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _02241084 ; =0x02257740
	mov r2, #4
	ldr r1, [r0, #0]
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009BC4
	bl ov23_02240E60
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _02241084 ; =0x02257740
	mov r2, #3
	ldr r1, [r0, #0]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	bl ov23_02240E60
	ldr r0, _02241084 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241088 ; =0x000009EB
	ldrb r0, [r1, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A328
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	ldr r0, _02241084 ; =0x02257740
	mov r3, #0
	ldr r1, [r0, #0]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x34
	bl sub_020098B8
	bl ov23_02240E60
	ldr r0, _02241084 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241088 ; =0x000009EB
	ldrb r0, [r1, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _02241084 ; =0x02257740
	mov r3, #0
	ldr r1, [r0, #0]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009BC4
	bl ov23_02240E60
	mov r2, #1
	str r2, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _02241084 ; =0x02257740
	mov r3, #0
	ldr r1, [r0, #0]
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009BC4
	bl ov23_02240E60
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02241084: .word 0x02257740
_02241088: .word 0x000009EB
	thumb_func_end ov23_02240E88

	thumb_func_start ov23_0224108C
ov23_0224108C: ; 0x0224108C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	mov r7, #0
	str r7, [sp, #0x30]
	str r7, [sp, #0x2c]
_02241096:
	ldr r0, _02241198 ; =0x02257740
	mov r3, #0x53
	ldr r1, [r0, #0]
	mov r0, #0
	str r7, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r1, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r1, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r1, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r1, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r1, r1, r3
	ldr r0, [sp, #0x30]
	add r2, r7, #0
	add r0, r1, r0
	add r1, r7, #0
	add r3, r7, #0
	bl sub_020093B4
	ldr r6, _02241198 ; =0x02257740
	mov r2, #2
	ldr r1, [r6, #0]
	lsl r2, r2, #0x10
	ldr r0, [r1, #0x20]
	str r0, [sp, #0x34]
	mov r0, #0x1a
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x40]
	lsr r0, r2, #5
	mov r1, #0
	str r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	add r0, sp, #0x34
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x5c]
	mov r0, #0x1d
	str r0, [sp, #0x60]
	mov r0, #0xf
	lsl r0, r0, #0x10
	str r1, [sp, #0x58]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	cmp r7, #0
	bne _02241150
	mov r4, #2
	mov r5, #8
_02241128:
	add r0, sp, #0x34
	bl sub_02021AA0
	ldr r1, [r6, #0]
	add r2, r1, r5
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	ble _02241128
_02241150:
	add r0, sp, #0x34
	bl sub_02021AA0
	ldr r2, _02241198 ; =0x02257740
	ldr r1, [sp, #0x2c]
	ldr r3, [r2, #0]
	add r3, r3, r1
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r3, r1]
	ldr r2, [r2, #0]
	ldr r0, [sp, #0x2c]
	add r0, r2, r0
	ldr r0, [r0, r1]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [sp, #0x30]
	add r7, r7, #1
	add r0, #0x24
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, r0, #4
	str r0, [sp, #0x2c]
	cmp r7, #2
	blt _02241096
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241198: .word 0x02257740
	thumb_func_end ov23_0224108C

	thumb_func_start ov23_0224119C
ov23_0224119C: ; 0x0224119C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _022411DC ; =0x02256318
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _022411E0 ; =0x00200010
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0x14
	mov r1, #0x1d
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	ldr r1, _022411E4 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add sp, #0x10
	pop {r4, pc}
	nop
_022411DC: .word 0x02256318
_022411E0: .word 0x00200010
_022411E4: .word 0x00100010
	thumb_func_end ov23_0224119C

	thumb_func_start ov23_022411E8
ov23_022411E8: ; 0x022411E8
	push {r4, lr}
	add r4, r0, #0
	bl ov23_02240C94
	add r0, r4, #0
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	pop {r4, pc}
	thumb_func_end ov23_022411E8

	thumb_func_start ov23_02241200
ov23_02241200: ; 0x02241200
	push {r3, lr}
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov23_0223E88C
	cmp r0, #0
	beq _02241216
	mov r0, #1
	pop {r3, pc}
_02241216:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02241200

	thumb_func_start ov23_0224121C
ov23_0224121C: ; 0x0224121C
	ldr r1, _02241234 ; =0x02257740
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241230
	mov r1, #6
	mul r1, r0
	ldr r0, _02241238 ; =0x00000888
	add r1, r2, r1
	ldrh r0, [r1, r0]
	bx lr
_02241230:
	mov r0, #0
	bx lr
	; .align 2, 0
_02241234: .word 0x02257740
_02241238: .word 0x00000888
	thumb_func_end ov23_0224121C

	thumb_func_start ov23_0224123C
ov23_0224123C: ; 0x0224123C
	ldr r1, _02241254 ; =0x02257740
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241250
	mov r1, #6
	mul r1, r0
	ldr r0, _02241258 ; =0x0000088A
	add r1, r2, r1
	ldrh r0, [r1, r0]
	bx lr
_02241250:
	mov r0, #0
	bx lr
	; .align 2, 0
_02241254: .word 0x02257740
_02241258: .word 0x0000088A
	thumb_func_end ov23_0224123C

	thumb_func_start ov23_0224125C
ov23_0224125C: ; 0x0224125C
	push {r4, lr}
	ldr r1, _02241288 ; =0x02257740
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241282
	ldr r1, _0224128C ; =0x00000884
	ldr r4, [r2, r1]
	cmp r4, #0
	beq _02241282
	ldr r1, _02241290 ; =0x000005DE
	ldrh r1, [r4, r1]
	add r0, r1, r0
	mov r1, #0x53
	bl sub_020E1F6C
	mov r0, #6
	mul r0, r1
	ldrh r0, [r4, r0]
	pop {r4, pc}
_02241282:
	mov r0, #0
	pop {r4, pc}
	nop
_02241288: .word 0x02257740
_0224128C: .word 0x00000884
_02241290: .word 0x000005DE
	thumb_func_end ov23_0224125C

	thumb_func_start ov23_02241294
ov23_02241294: ; 0x02241294
	push {r4, lr}
	ldr r1, _022412C0 ; =0x02257740
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _022412BC
	ldr r1, _022412C4 ; =0x00000884
	ldr r4, [r2, r1]
	cmp r4, #0
	beq _022412BC
	ldr r1, _022412C8 ; =0x000005DE
	ldrh r1, [r4, r1]
	add r0, r1, r0
	mov r1, #0x53
	bl sub_020E1F6C
	mov r0, #6
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r4, pc}
_022412BC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022412C0: .word 0x02257740
_022412C4: .word 0x00000884
_022412C8: .word 0x000005DE
	thumb_func_end ov23_02241294

	thumb_func_start ov23_022412CC
ov23_022412CC: ; 0x022412CC
	push {r4, lr}
	ldr r0, _022412EC ; =0x000005DE
	add r4, r1, #0
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	cmp r1, #0x53
	bls _022412EA
	sub r0, #0x94
	bl sub_02005748
	ldr r0, _022412EC ; =0x000005DE
	mov r1, #0
	strh r1, [r4, r0]
_022412EA:
	pop {r4, pc}
	; .align 2, 0
_022412EC: .word 0x000005DE
	thumb_func_end ov23_022412CC

	thumb_func_start ov23_022412F0
ov23_022412F0: ; 0x022412F0
	push {r4, lr}
	ldr r0, _02241350 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241354 ; =0x00000884
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241302
	bl sub_02022974
_02241302:
	ldr r0, _02241350 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241358 ; =0x00000878
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241312
	bl sub_02022974
_02241312:
	mov r1, #0x5e
	mov r0, #0xb
	lsl r1, r1, #4
	bl sub_02018184
	mov r2, #0x5e
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x47
	bl sub_020360DC
	ldr r0, _0224135C ; =0x000005DE
	mov r1, #0x49
	strh r1, [r4, r0]
	ldr r0, _02241350 ; =0x02257740
	mov r2, #0x64
	ldr r1, [r0, #0]
	ldr r0, _02241354 ; =0x00000884
	str r4, [r1, r0]
	ldr r0, _02241360 ; =ov23_022412CC
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02241350 ; =0x02257740
	ldr r2, [r1, #0]
	ldr r1, _02241358 ; =0x00000878
	str r0, [r2, r1]
	pop {r4, pc}
	; .align 2, 0
_02241350: .word 0x02257740
_02241354: .word 0x00000884
_02241358: .word 0x00000878
_0224135C: .word 0x000005DE
_02241360: .word ov23_022412CC
	thumb_func_end ov23_022412F0

	thumb_func_start ov23_02241364
ov23_02241364: ; 0x02241364
	push {r3, lr}
	ldr r0, _02241394 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _02241398 ; =0x00000878
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241392
	bl sub_0200DA58
	ldr r0, _02241394 ; =0x02257740
	ldr r1, [r0, #0]
	ldr r0, _0224139C ; =0x00000884
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _02241394 ; =0x02257740
	ldr r0, _02241398 ; =0x00000878
	ldr r2, [r1, #0]
	mov r3, #0
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, #0xc
	str r3, [r1, r0]
_02241392:
	pop {r3, pc}
	; .align 2, 0
_02241394: .word 0x02257740
_02241398: .word 0x00000878
_0224139C: .word 0x00000884
	thumb_func_end ov23_02241364

	thumb_func_start ov23_022413A0
ov23_022413A0: ; 0x022413A0
	ldr r1, _022413B0 ; =0x02257740
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0x87
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_022413B0: .word 0x02257740
	thumb_func_end ov23_022413A0

	thumb_func_start ov23_022413B4
ov23_022413B4: ; 0x022413B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0
_022413BA:
	ldr r0, _02241424 ; =0x02257740
	ldr r1, [r0, #0]
	mov r0, #0x87
	add r7, r1, r5
	lsl r0, r0, #4
	ldrb r0, [r7, r0]
	sub r4, r0, #1
	cmp r0, #0
	beq _0224141A
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #6
	mul r0, r4
	add r6, r1, r0
	ldr r0, _02241428 ; =0x0000FFFF
	add r1, r0, #0
_022413DC:
	ldrh r3, [r6]
	cmp r3, r1
	beq _0224140A
	ldrh r2, [r6, #2]
	cmp r2, r0
	beq _0224140A
	add r0, sp, #0
	strh r3, [r0]
	ldrh r1, [r6, #2]
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	mov r0, #0x48
	add r1, sp, #0
	bl sub_02035B48
	ldr r0, _02241424 ; =0x02257740
	add r2, r4, #3
	ldr r0, [r0, #0]
	add r1, r0, r5
	mov r0, #0x87
	lsl r0, r0, #4
	strb r2, [r1, r0]
	b _0224141A
_0224140A:
	add r4, r4, #3
	add r6, #0x12
	cmp r4, #0xfa
	blt _022413DC
	mov r1, #0x87
	lsl r1, r1, #4
	mov r0, #0
	strb r0, [r7, r1]
_0224141A:
	add r5, r5, #1
	cmp r5, #8
	blt _022413BA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241424: .word 0x02257740
_02241428: .word 0x0000FFFF
	thumb_func_end ov23_022413B4

	thumb_func_start ov23_0224142C
ov23_0224142C: ; 0x0224142C
	push {r3, r4, r5, lr}
	ldr r0, _022414C0 ; =0x02257740
	add r5, r2, #0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _022414BC
	ldrb r1, [r5, #4]
	mov r0, #0xf
	add r4, r1, #0
	and r4, r0
	ldr r0, _022414C4 ; =0x00000884
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _0224147C
	bl sub_0203608C
	cmp r4, r0
	bne _022414BC
	ldrb r0, [r5, #4]
	asr r1, r0, #4
	mov r0, #0xf
	add r3, r1, #0
	and r3, r0
	cmp r3, #0
	ble _022414BC
	cmp r3, #8
	bgt _022414BC
	ldr r1, _022414C0 ; =0x02257740
	add r0, r5, #0
	ldr r2, [r1, #0]
	ldr r1, _022414C8 ; =0x00000888
	add r4, r2, r1
	sub r1, r3, #1
	mov r2, #6
	add r3, r1, #0
	mul r3, r2
	add r1, r4, r3
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
_0224147C:
	bl sub_0203608C
	cmp r4, r0
	bne _022414BC
	ldr r0, _022414C0 ; =0x02257740
	mov r2, #6
	ldr r1, [r0, #0]
	ldr r0, _022414C4 ; =0x00000884
	ldr r4, [r1, r0]
	ldr r1, _022414CC ; =0x000005DC
	add r0, r5, #0
	ldrb r1, [r4, r1]
	add r3, r1, #0
	mul r3, r2
	add r1, r4, r3
	bl sub_020C4DB0
	ldr r2, _022414C0 ; =0x02257740
	ldr r0, _022414C4 ; =0x00000884
	ldr r1, [r2, #0]
	ldr r4, [r1, r0]
	ldr r1, _022414CC ; =0x000005DC
	ldrb r3, [r4, r1]
	add r3, r3, #1
	strb r3, [r4, r1]
	ldr r2, [r2, #0]
	ldr r2, [r2, r0]
	ldrb r0, [r2, r1]
	cmp r0, #0xfa
	blo _022414BC
	mov r0, #0
	strb r0, [r2, r1]
_022414BC:
	pop {r3, r4, r5, pc}
	nop
_022414C0: .word 0x02257740
_022414C4: .word 0x00000884
_022414C8: .word 0x00000888
_022414CC: .word 0x000005DC
	thumb_func_end ov23_0224142C

	thumb_func_start ov23_022414D0
ov23_022414D0: ; 0x022414D0
	mov r0, #6
	bx lr
	thumb_func_end ov23_022414D0

	thumb_func_start ov23_022414D4
ov23_022414D4: ; 0x022414D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _022415AC ; =0x02257740
	mov r5, #0
	add r4, sp, #0
_022414DE:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _022415A0
	add r0, r5, #0
	bl sub_020593CC
	cmp r0, #0
	ldr r0, [r6, #0]
	beq _02241500
	add r2, r0, r5
	ldr r0, _022415B0 ; =0x000008B8
	mov r1, #0
	strb r1, [r2, r0]
	b _022415A0
_02241500:
	ldr r1, _022415B0 ; =0x000008B8
	add r0, r0, r5
	ldrb r1, [r0, r1]
	cmp r1, #0x1c
	bhs _022415A0
	ldr r1, _022415B0 ; =0x000008B8
	ldrb r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _022415B0 ; =0x000008B8
	strb r2, [r0, r1]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _022415B0 ; =0x000008B8
	ldrb r0, [r1, r0]
	cmp r0, #0x14
	blo _022415A0
	add r0, r5, #0
	bl sub_02058DF8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058E4C
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov23_0223E8CC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02241582
	mov r2, #0x82
	ldr r1, [r6, #0]
	lsl r2, r2, #2
	add r3, r1, r2
	mov r2, #6
	mul r2, r0
	add r0, r3, r2
	ldrh r3, [r3, r2]
	ldr r2, _022415B4 ; =0x0000FFFF
	cmp r3, r2
	beq _022415A0
	ldrh r3, [r0, #2]
	cmp r3, r2
	beq _022415A0
	add r2, r1, r5
	ldr r1, _022415B0 ; =0x000008B8
	ldrb r1, [r2, r1]
	sub r1, #0x13
	lsl r1, r1, #4
	add r1, r5, r1
	strb r1, [r4, #0xa]
	ldrh r1, [r0]
	strh r1, [r4, #6]
	ldrh r0, [r0, #2]
	add r1, sp, #4
	add r1, #2
	strh r0, [r4, #8]
	mov r0, #0x48
	bl sub_02035B48
	b _022415A0
_02241582:
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _022415B0 ; =0x000008B8
	ldrb r0, [r1, r0]
	add r1, sp, #0
	sub r0, #0x13
	lsl r0, r0, #4
	add r0, r5, r0
	strb r0, [r4, #4]
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	mov r0, #0x48
	bl sub_02035B48
_022415A0:
	add r5, r5, #1
	cmp r5, #8
	blt _022414DE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022415AC: .word 0x02257740
_022415B0: .word 0x000008B8
_022415B4: .word 0x0000FFFF
	thumb_func_end ov23_022414D4

	thumb_func_start ov23_022415B8
ov23_022415B8: ; 0x022415B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02241604 ; =0x02257740
	add r5, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _022415C8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022415C8:
	mov r4, #0
	add r7, r4, #0
_022415CC:
	ldr r0, [r6, #0]
	add r1, r0, r4
	ldr r0, _02241608 ; =0x000008C4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022415F8
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, [r6, #0]
	add r3, r5, #0
	add r2, r1, r4
	ldr r1, _02241608 ; =0x000008C4
	strb r7, [r2, r1]
	add r1, r7, #0
	mov r2, #0x69
	bl ov23_022422A8
	cmp r0, #0
	beq _022415F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022415F8:
	add r4, r4, #1
	cmp r4, #8
	blt _022415CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241604: .word 0x02257740
_02241608: .word 0x000008C4
	thumb_func_end ov23_022415B8

	thumb_func_start ov23_0224160C
ov23_0224160C: ; 0x0224160C
	push {r3, lr}
	ldr r0, _02241624 ; =0x02257740
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02241622
	ldr r0, _02241628 ; =0x000008C4
	mov r2, #8
	add r0, r1, r0
	mov r1, #0
	bl sub_020C4CF4
_02241622:
	pop {r3, pc}
	; .align 2, 0
_02241624: .word 0x02257740
_02241628: .word 0x000008C4
	thumb_func_end ov23_0224160C

	thumb_func_start ov23_0224162C
ov23_0224162C: ; 0x0224162C
	ldr r1, _02241640 ; =0x02257740
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224163C
	add r1, r1, r0
	ldr r0, _02241644 ; =0x00000808
	ldrb r0, [r1, r0]
	bx lr
_0224163C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02241640: .word 0x02257740
_02241644: .word 0x00000808
	thumb_func_end ov23_0224162C

	thumb_func_start ov23_02241648
ov23_02241648: ; 0x02241648
	push {r3, r4}
	ldr r2, _02241668 ; =0x02257740
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02241662
	add r3, r1, r0
	ldr r1, _0224166C ; =0x00000808
	mov r4, #0
	strb r4, [r3, r1]
	ldr r2, [r2, #0]
	add r1, #0xb0
	add r0, r2, r0
	strb r4, [r0, r1]
_02241662:
	pop {r3, r4}
	bx lr
	nop
_02241668: .word 0x02257740
_0224166C: .word 0x00000808
	thumb_func_end ov23_02241648

	thumb_func_start ov23_02241670
ov23_02241670: ; 0x02241670
	ldr r0, _0224168C ; =0x02257740
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02241686
	mov r0, #0x22
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241686
	mov r0, #1
	bx lr
_02241686:
	mov r0, #0
	bx lr
	nop
_0224168C: .word 0x02257740
	thumb_func_end ov23_02241670

	thumb_func_start ov23_02241690
ov23_02241690: ; 0x02241690
	ldr r2, _022416A0 ; =0x02257740
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224169E
	add r2, r2, r0
	ldr r0, _022416A4 ; =0x00000808
	strb r1, [r2, r0]
_0224169E:
	bx lr
	; .align 2, 0
_022416A0: .word 0x02257740
_022416A4: .word 0x00000808
	thumb_func_end ov23_02241690

	.rodata


	.global Unk_ov23_0225630C
Unk_ov23_0225630C: ; 0x0225630C
	.incbin "incbin/overlay23_rodata.bin", 0x0, 0x1 - 0x0

	.global Unk_ov23_0225630D
Unk_ov23_0225630D: ; 0x0225630D
	.incbin "incbin/overlay23_rodata.bin", 0x1, 0x2 - 0x1

	.global Unk_ov23_0225630E
Unk_ov23_0225630E: ; 0x0225630E
	.incbin "incbin/overlay23_rodata.bin", 0x2, 0xC - 0x2

	.global Unk_ov23_02256318
Unk_ov23_02256318: ; 0x02256318
	.incbin "incbin/overlay23_rodata.bin", 0xC, 0x1C - 0xC

	.global Unk_ov23_02256328
Unk_ov23_02256328: ; 0x02256328
	.incbin "incbin/overlay23_rodata.bin", 0x1C, 0x2C - 0x1C

	.global Unk_ov23_02256338
Unk_ov23_02256338: ; 0x02256338
	.incbin "incbin/overlay23_rodata.bin", 0x2C, 0x48 - 0x2C

	.global Unk_ov23_02256354
Unk_ov23_02256354: ; 0x02256354
	.incbin "incbin/overlay23_rodata.bin", 0x48, 0x64 - 0x48

	.global Unk_ov23_02256370
Unk_ov23_02256370: ; 0x02256370
	.incbin "incbin/overlay23_rodata.bin", 0x64, 0x80 - 0x64

	.global Unk_ov23_0225638C
Unk_ov23_0225638C: ; 0x0225638C
	.incbin "incbin/overlay23_rodata.bin", 0x80, 0x9C - 0x80

	.global Unk_ov23_022563A8
Unk_ov23_022563A8: ; 0x022563A8
	.incbin "incbin/overlay23_rodata.bin", 0x9C, 0x28


	.data


	.global Unk_ov23_02256BE0
Unk_ov23_02256BE0: ; 0x02256BE0
	.incbin "incbin/overlay23_data.bin", 0x0, 0x4 - 0x0

	.global Unk_ov23_02256BE4
Unk_ov23_02256BE4: ; 0x02256BE4
	.incbin "incbin/overlay23_data.bin", 0x4, 0x8 - 0x4

	.global Unk_ov23_02256BE8
Unk_ov23_02256BE8: ; 0x02256BE8
	.incbin "incbin/overlay23_data.bin", 0x8, 0xC - 0x8

	.global Unk_ov23_02256BEC
Unk_ov23_02256BEC: ; 0x02256BEC
	.incbin "incbin/overlay23_data.bin", 0xC, 0x10 - 0xC

	.global Unk_ov23_02256BF0
Unk_ov23_02256BF0: ; 0x02256BF0
	.incbin "incbin/overlay23_data.bin", 0x10, 0x14 - 0x10

	.global Unk_ov23_02256BF4
Unk_ov23_02256BF4: ; 0x02256BF4
	.incbin "incbin/overlay23_data.bin", 0x14, 0x18 - 0x14

	.global Unk_ov23_02256BF8
Unk_ov23_02256BF8: ; 0x02256BF8
	.incbin "incbin/overlay23_data.bin", 0x18, 0x1C - 0x18

	.global Unk_ov23_02256BFC
Unk_ov23_02256BFC: ; 0x02256BFC
	.incbin "incbin/overlay23_data.bin", 0x1C, 0x22 - 0x1C

	.global Unk_ov23_02256C02
Unk_ov23_02256C02: ; 0x02256C02
	.incbin "incbin/overlay23_data.bin", 0x22, 0x28 - 0x22

	.global Unk_ov23_02256C08
Unk_ov23_02256C08: ; 0x02256C08
	.incbin "incbin/overlay23_data.bin", 0x28, 0x2E - 0x28

	.global Unk_ov23_02256C0E
Unk_ov23_02256C0E: ; 0x02256C0E
	.incbin "incbin/overlay23_data.bin", 0x2E, 0x34 - 0x2E

	.global Unk_ov23_02256C14
Unk_ov23_02256C14: ; 0x02256C14
	.incbin "incbin/overlay23_data.bin", 0x34, 0x3A - 0x34

	.global Unk_ov23_02256C1A
Unk_ov23_02256C1A: ; 0x02256C1A
	.incbin "incbin/overlay23_data.bin", 0x3A, 0x40 - 0x3A

	.global Unk_ov23_02256C20
Unk_ov23_02256C20: ; 0x02256C20
	.incbin "incbin/overlay23_data.bin", 0x40, 0x46 - 0x40

	.global Unk_ov23_02256C26
Unk_ov23_02256C26: ; 0x02256C26
	.incbin "incbin/overlay23_data.bin", 0x46, 0x4C - 0x46

	.global Unk_ov23_02256C2C
Unk_ov23_02256C2C: ; 0x02256C2C
	.incbin "incbin/overlay23_data.bin", 0x4C, 0x54 - 0x4C

	.global Unk_ov23_02256C34
Unk_ov23_02256C34: ; 0x02256C34
	.incbin "incbin/overlay23_data.bin", 0x54, 0x5C - 0x54

	.global Unk_ov23_02256C3C
Unk_ov23_02256C3C: ; 0x02256C3C
	.incbin "incbin/overlay23_data.bin", 0x5C, 0x65 - 0x5C

	.global Unk_ov23_02256C45
Unk_ov23_02256C45: ; 0x02256C45
	.incbin "incbin/overlay23_data.bin", 0x65, 0x6E - 0x65

	.global Unk_ov23_02256C4E
Unk_ov23_02256C4E: ; 0x02256C4E
	.incbin "incbin/overlay23_data.bin", 0x6E, 0x77 - 0x6E

	.global Unk_ov23_02256C57
Unk_ov23_02256C57: ; 0x02256C57
	.incbin "incbin/overlay23_data.bin", 0x77, 0x80 - 0x77

	.global Unk_ov23_02256C60
Unk_ov23_02256C60: ; 0x02256C60
	.incbin "incbin/overlay23_data.bin", 0x80, 0x89 - 0x80

	.global Unk_ov23_02256C69
Unk_ov23_02256C69: ; 0x02256C69
	.incbin "incbin/overlay23_data.bin", 0x89, 0x92 - 0x89

	.global Unk_ov23_02256C72
Unk_ov23_02256C72: ; 0x02256C72
	.incbin "incbin/overlay23_data.bin", 0x92, 0x9E - 0x92

	.global Unk_ov23_02256C7E
Unk_ov23_02256C7E: ; 0x02256C7E
	.incbin "incbin/overlay23_data.bin", 0x9E, 0xAA - 0x9E

	.global Unk_ov23_02256C8A
Unk_ov23_02256C8A: ; 0x02256C8A
	.incbin "incbin/overlay23_data.bin", 0xAA, 0xB6 - 0xAA

	.global Unk_ov23_02256C96
Unk_ov23_02256C96: ; 0x02256C96
	.incbin "incbin/overlay23_data.bin", 0xB6, 0xC2 - 0xB6

	.global Unk_ov23_02256CA2
Unk_ov23_02256CA2: ; 0x02256CA2
	.incbin "incbin/overlay23_data.bin", 0xC2, 0xCE - 0xC2

	.global Unk_ov23_02256CAE
Unk_ov23_02256CAE: ; 0x02256CAE
	.incbin "incbin/overlay23_data.bin", 0xCE, 0xDA - 0xCE

	.global Unk_ov23_02256CBA
Unk_ov23_02256CBA: ; 0x02256CBA
	.incbin "incbin/overlay23_data.bin", 0xDA, 0xEA - 0xDA

	.global Unk_ov23_02256CCA
Unk_ov23_02256CCA: ; 0x02256CCA
	.incbin "incbin/overlay23_data.bin", 0xEA, 0xFA - 0xEA

	.global Unk_ov23_02256CDA
Unk_ov23_02256CDA: ; 0x02256CDA
	.incbin "incbin/overlay23_data.bin", 0xFA, 0x10A - 0xFA

	.global Unk_ov23_02256CEA
Unk_ov23_02256CEA: ; 0x02256CEA
	.incbin "incbin/overlay23_data.bin", 0x10A, 0x11A - 0x10A

	.global Unk_ov23_02256CFA
Unk_ov23_02256CFA: ; 0x02256CFA
	.incbin "incbin/overlay23_data.bin", 0x11A, 0x12A - 0x11A

	.global Unk_ov23_02256D0A
Unk_ov23_02256D0A: ; 0x02256D0A
	.incbin "incbin/overlay23_data.bin", 0x12A, 0x13A - 0x12A

	.global Unk_ov23_02256D1A
Unk_ov23_02256D1A: ; 0x02256D1A
	.incbin "incbin/overlay23_data.bin", 0x13A, 0x14A - 0x13A

	.global Unk_ov23_02256D2A
Unk_ov23_02256D2A: ; 0x02256D2A
	.incbin "incbin/overlay23_data.bin", 0x14A, 0x15A - 0x14A

	.global Unk_ov23_02256D3A
Unk_ov23_02256D3A: ; 0x02256D3A
	.incbin "incbin/overlay23_data.bin", 0x15A, 0x16C - 0x15A

	.global Unk_ov23_02256D4C
Unk_ov23_02256D4C: ; 0x02256D4C
	.incbin "incbin/overlay23_data.bin", 0x16C, 0x17E - 0x16C

	.global Unk_ov23_02256D5E
Unk_ov23_02256D5E: ; 0x02256D5E
	.incbin "incbin/overlay23_data.bin", 0x17E, 0x192 - 0x17E

	.global Unk_ov23_02256D72
Unk_ov23_02256D72: ; 0x02256D72
	.incbin "incbin/overlay23_data.bin", 0x192, 0x1A6 - 0x192

	.global Unk_ov23_02256D86
Unk_ov23_02256D86: ; 0x02256D86
	.incbin "incbin/overlay23_data.bin", 0x1A6, 0x1BA - 0x1A6

	.global Unk_ov23_02256D9A
Unk_ov23_02256D9A: ; 0x02256D9A
	.incbin "incbin/overlay23_data.bin", 0x1BA, 0x1CE - 0x1BA

	.global Unk_ov23_02256DAE
Unk_ov23_02256DAE: ; 0x02256DAE
	.incbin "incbin/overlay23_data.bin", 0x1CE, 0x1E2 - 0x1CE

	.global Unk_ov23_02256DC2
Unk_ov23_02256DC2: ; 0x02256DC2
	.incbin "incbin/overlay23_data.bin", 0x1E2, 0x1F6 - 0x1E2

	.global Unk_ov23_02256DD6
Unk_ov23_02256DD6: ; 0x02256DD6
	.incbin "incbin/overlay23_data.bin", 0x1F6, 0x20F - 0x1F6

	.global Unk_ov23_02256DEF
Unk_ov23_02256DEF: ; 0x02256DEF
	.incbin "incbin/overlay23_data.bin", 0x20F, 0x228 - 0x20F

	.global Unk_ov23_02256E08
Unk_ov23_02256E08: ; 0x02256E08
	.incbin "incbin/overlay23_data.bin", 0x228, 0x241 - 0x228

	.global Unk_ov23_02256E21
Unk_ov23_02256E21: ; 0x02256E21
	.incbin "incbin/overlay23_data.bin", 0x241, 0x25A - 0x241

	.global Unk_ov23_02256E3A
Unk_ov23_02256E3A: ; 0x02256E3A
	.incbin "incbin/overlay23_data.bin", 0x25A, 0x274 - 0x25A

	.global Unk_ov23_02256E54
Unk_ov23_02256E54: ; 0x02256E54
	.incbin "incbin/overlay23_data.bin", 0x274, 0x290 - 0x274

	.global Unk_ov23_02256E70
Unk_ov23_02256E70: ; 0x02256E70
	.incbin "incbin/overlay23_data.bin", 0x290, 0x2D0 - 0x290

	.global Unk_ov23_02256EB0
Unk_ov23_02256EB0: ; 0x02256EB0
	.incbin "incbin/overlay23_data.bin", 0x2D0, 0x974 - 0x2D0

	.global Unk_ov23_02257554
Unk_ov23_02257554: ; 0x02257554
	.incbin "incbin/overlay23_data.bin", 0x974, 0x978 - 0x974

	.global Unk_ov23_02257558
Unk_ov23_02257558: ; 0x02257558
	.incbin "incbin/overlay23_data.bin", 0x978, 0x97C - 0x978

	.global Unk_ov23_0225755C
Unk_ov23_0225755C: ; 0x0225755C
	.incbin "incbin/overlay23_data.bin", 0x97C, 0x980 - 0x97C

	.global Unk_ov23_02257560
Unk_ov23_02257560: ; 0x02257560
	.incbin "incbin/overlay23_data.bin", 0x980, 0x984 - 0x980

	.global Unk_ov23_02257564
Unk_ov23_02257564: ; 0x02257564
	.incbin "incbin/overlay23_data.bin", 0x984, 0x988 - 0x984

	.global Unk_ov23_02257568
Unk_ov23_02257568: ; 0x02257568
	.incbin "incbin/overlay23_data.bin", 0x988, 0x98C - 0x988

	.global Unk_ov23_0225756C
Unk_ov23_0225756C: ; 0x0225756C
	.incbin "incbin/overlay23_data.bin", 0x98C, 0x990 - 0x98C

	.global Unk_ov23_02257570
Unk_ov23_02257570: ; 0x02257570
	.incbin "incbin/overlay23_data.bin", 0x990, 0x10


	.bss


	.global Unk_ov23_02257740
Unk_ov23_02257740: ; 0x02257740
	.space 0x4

