	.include "macros/function.inc"
	.include "global.inc"

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

	thumb_func_start ov23_022416A8
ov23_022416A8: ; 0x022416A8
	ldr r3, _022416AC ; =sub_02059514
	bx r3
	; .align 2, 0
_022416AC: .word sub_02059514
	thumb_func_end ov23_022416A8

	thumb_func_start ov23_022416B0
ov23_022416B0: ; 0x022416B0
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0
	ble _022416D4
	bl ov23_0224219C
	mov r1, #0
	add r2, r4, #0
	bl ov23_02254154
	bl ov23_0224219C
	ldr r3, _022416DC ; =ov23_022416A8
	mov r1, #0x4b
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_022416D4:
	bl ov23_022416A8
	pop {r4, pc}
	nop
_022416DC: .word ov23_022416A8
	thumb_func_end ov23_022416B0

	thumb_func_start ov23_022416E0
ov23_022416E0: ; 0x022416E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _0224176C ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0224176A
	ldr r2, _02241770 ; =0x000004DC
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _0224176C ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241774 ; =0x000004C8
	str r4, [r1, r0]
	add r0, r4, #0
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	ldr r7, _0224176C ; =0x02257744
	add r6, r0, #0
	add r5, r4, #0
_02241710:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020290DC
	ldr r1, [r7, #0]
	add r1, r1, r5
	strb r0, [r1, #6]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020290E8
	ldr r1, [r7, #0]
	strh r0, [r1, r5]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029108
	ldr r1, [r7, #0]
	add r1, r1, r5
	strh r0, [r1, #2]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029128
	ldr r1, [r7, #0]
	add r1, r1, r5
	strb r0, [r1, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029134
	ldr r1, [r7, #0]
	add r1, r1, r5
	strb r0, [r1, #5]
	ldr r0, [r7, #0]
	add r0, r0, r5
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _02241762
	bl ov23_022418C0
_02241762:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _02241710
_0224176A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224176C: .word 0x02257744
_02241770: .word 0x000004DC
_02241774: .word 0x000004C8
	thumb_func_end ov23_022416E0

	thumb_func_start ov23_02241778
ov23_02241778: ; 0x02241778
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _022417BC ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _022417C0 ; =0x000004C8
	ldr r0, [r1, r0]
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	ldr r7, _022417BC ; =0x02257744
	add r6, r0, #0
	add r5, r4, #0
_02241794:
	ldr r3, [r7, #0]
	add r2, r4, #0
	add r1, r3, r5
	ldrh r0, [r1, #2]
	str r0, [sp]
	ldrb r0, [r1, #4]
	str r0, [sp, #4]
	ldrb r0, [r1, #5]
	str r0, [sp, #8]
	ldrb r1, [r1, #6]
	ldrh r3, [r3, r5]
	add r0, r6, #0
	bl sub_02029088
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _02241794
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022417BC: .word 0x02257744
_022417C0: .word 0x000004C8
	thumb_func_end ov23_02241778

	thumb_func_start ov23_022417C4
ov23_022417C4: ; 0x022417C4
	ldr r0, _022417C8 ; =0x000004DC
	bx lr
	; .align 2, 0
_022417C8: .word 0x000004DC
	thumb_func_end ov23_022417C4

	thumb_func_start ov23_022417CC
ov23_022417CC: ; 0x022417CC
	ldr r0, _022417D8 ; =0x02257744
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _022417DC ; =0x000004DA
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_022417D8: .word 0x02257744
_022417DC: .word 0x000004DA
	thumb_func_end ov23_022417CC

	thumb_func_start ov23_022417E0
ov23_022417E0: ; 0x022417E0
	ldr r0, _022417EC ; =0x02257744
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _022417F0 ; =0x000004DA
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_022417EC: .word 0x02257744
_022417F0: .word 0x000004DA
	thumb_func_end ov23_022417E0

	thumb_func_start ov23_022417F4
ov23_022417F4: ; 0x022417F4
	push {r3, lr}
	ldr r0, _0224180C ; =0x02257744
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02241808
	bl sub_020181C4
	ldr r0, _0224180C ; =0x02257744
	mov r1, #0
	str r1, [r0, #0]
_02241808:
	pop {r3, pc}
	nop
_0224180C: .word 0x02257744
	thumb_func_end ov23_022417F4

	thumb_func_start ov23_02241810
ov23_02241810: ; 0x02241810
	push {r3, r4, r5, lr}
	ldr r3, _02241880 ; =0x02257744
	ldr r2, _02241884 ; =0x000004DA
	ldr r0, [r3, #0]
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _0224187E
	sub r1, r2, #6
	ldr r1, [r0, r1]
	add r4, r1, #1
	sub r1, r2, #6
	str r4, [r0, r1]
	ldr r3, [r3, #0]
	add r0, r1, #0
	ldr r1, [r3, r0]
	mov r0, #0x7d
	lsl r0, r0, #4
	cmp r1, r0
	blt _0224183C
	mov r1, #0
	sub r0, r2, #6
	str r1, [r3, r0]
_0224183C:
	ldr r0, _02241880 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241888 ; =0x000004D4
	ldr r4, [r1, r0]
	mov r1, #0x14
	add r0, r4, #0
	bl sub_020E1F6C
	cmp r1, #0xa
	bne _0224187E
	add r0, r4, #0
	mov r1, #0x14
	bl sub_020E1F6C
	add r5, r0, #0
	bl ov23_02241D18
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_02241D38
	add r2, r0, #0
	cmp r4, #0
	beq _0224187E
	cmp r2, #0
	beq _0224187E
	ldr r0, _02241880 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _0224188C ; =0x000004C8
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov5_021F57C8
_0224187E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241880: .word 0x02257744
_02241884: .word 0x000004DA
_02241888: .word 0x000004D4
_0224188C: .word 0x000004C8
	thumb_func_end ov23_02241810

	thumb_func_start ov23_02241890
ov23_02241890: ; 0x02241890
	push {r3, r4}
	ldr r3, _022418BC ; =0x02257744
	lsl r1, r1, #2
	ldr r2, [r3, #0]
	add r4, r2, r1
	mov r2, #0x32
	lsl r2, r2, #4
	ldr r4, [r4, r2]
	cmp r4, #0
	bne _022418AA
	mov r0, #0
	pop {r3, r4}
	bx lr
_022418AA:
	ldrh r4, [r4]
	strh r4, [r0]
	ldr r3, [r3, #0]
	add r1, r3, r1
	ldr r1, [r1, r2]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022418BC: .word 0x02257744
	thumb_func_end ov23_02241890

	thumb_func_start ov23_022418C0
ov23_022418C0: ; 0x022418C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldrh r0, [r0]
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [sp]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r1, _02241920 ; =ov23_02241890
	mov r0, #0x64
	bl ov23_022427DC
	add r0, sp, #4
	bl ov23_02242788
	add r4, r0, #0
	cmp r4, #0x64
	blt _022418EA
	bl sub_02022974
_022418EA:
	mov r5, #0x63
	cmp r4, #0x63
	bge _0224190A
	mov r7, #0xc7
	lsl r7, r7, #2
	ldr r1, _02241924 ; =0x02257744
	lsl r6, r5, #2
	add r0, r7, #4
_022418FA:
	ldr r2, [r1, #0]
	sub r5, r5, #1
	add r3, r2, r6
	ldr r2, [r3, r7]
	sub r6, r6, #4
	str r2, [r3, r0]
	cmp r5, r4
	bgt _022418FA
_0224190A:
	ldr r0, _02241924 ; =0x02257744
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r2, r1, r0
	mov r1, #0x32
	ldr r0, [sp]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241920: .word ov23_02241890
_02241924: .word 0x02257744
	thumb_func_end ov23_022418C0

	thumb_func_start ov23_02241928
ov23_02241928: ; 0x02241928
	push {r4, r5, r6, lr}
	ldr r0, _0224195C ; =0x02257744
	mov r2, #0x32
	ldr r0, [r0, #0]
	lsl r2, r2, #4
	add r0, r0, r2
	mov r1, #0
	lsr r2, r2, #1
	bl sub_020C4CF4
	mov r4, #0
	ldr r6, _0224195C ; =0x02257744
	add r5, r4, #0
_02241942:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _02241950
	bl ov23_022418C0
_02241950:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _02241942
	pop {r4, r5, r6, pc}
	nop
_0224195C: .word 0x02257744
	thumb_func_end ov23_02241928

	thumb_func_start ov23_02241960
ov23_02241960: ; 0x02241960
	mov r2, #0
_02241962:
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _02241972
	add r2, r2, #1
	add r0, #8
	cmp r2, #0x64
	blt _02241962
	mov r0, #0
_02241972:
	bx lr
	thumb_func_end ov23_02241960

	thumb_func_start ov23_02241974
ov23_02241974: ; 0x02241974
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02241974

	thumb_func_start ov23_02241978
ov23_02241978: ; 0x02241978
	push {r3, lr}
	add r2, sp, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r1, _022419AC ; =ov23_02241890
	mov r0, #0x64
	bl ov23_022427DC
	add r0, sp, #0
	bl ov23_0224271C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0224199A
	mov r0, #0
	pop {r3, pc}
_0224199A:
	ldr r1, _022419B0 ; =0x02257744
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, pc}
	nop
_022419AC: .word ov23_02241890
_022419B0: .word 0x02257744
	thumb_func_end ov23_02241978

	thumb_func_start ov23_022419B4
ov23_022419B4: ; 0x022419B4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, r5
	bne _02241A68
	bl sub_02058D88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058DC0
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02241978
	add r4, r0, #0
	beq _02241A68
	bl sub_020594FC
	ldrb r2, [r4, #4]
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	add r1, r2, r1
	bl ov23_0224F6E0
	cmp r0, #0
	beq _02241A5A
	ldr r0, _02241A6C ; =0x02257744
	ldrb r2, [r4, #6]
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02241A70 ; =0x000004CC
	strb r2, [r1, r0]
	ldr r0, _02241A74 ; =0x000005E3
	bl sub_02005748
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	mov r5, #0x63
	add r0, r1, r0
	cmp r0, #0x63
	bge _02241A10
	add r5, r0, #0
_02241A10:
	bl ov23_0224219C
	mov r1, #1
	add r2, r5, #0
	bl ov23_02254154
	bl ov23_0224219C
	ldrb r2, [r4, #6]
	mov r1, #2
	bl ov23_022541DC
	ldrb r5, [r4, #5]
	ldrb r1, [r4, #4]
	add r0, r5, r1
	cmp r0, #0x63
	ble _02241A36
	mov r0, #0x63
	sub r5, r0, r1
_02241A36:
	bl ov23_0224219C
	ldr r3, _02241A78 ; =ov23_022416B0
	mov r1, #0x45
	mov r2, #1
	str r5, [sp]
	bl ov23_02253F78
	bl ov23_0224219C
	bl ov23_02253F98
	add r0, r4, #0
	bl ov23_02241C48
	bl ov23_02241778
	pop {r3, r4, r5, pc}
_02241A5A:
	bl ov23_0224219C
	ldr r3, _02241A7C ; =ov23_022416A8
	mov r1, #0x53
	mov r2, #1
	bl ov23_02253F40
_02241A68:
	pop {r3, r4, r5, pc}
	nop
_02241A6C: .word 0x02257744
_02241A70: .word 0x000004CC
_02241A74: .word 0x000005E3
_02241A78: .word ov23_022416B0
_02241A7C: .word ov23_022416A8
	thumb_func_end ov23_022419B4

	thumb_func_start ov23_02241A80
ov23_02241A80: ; 0x02241A80
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0]
	bx lr
	thumb_func_end ov23_02241A80

	thumb_func_start ov23_02241A88
ov23_02241A88: ; 0x02241A88
	push {r3, r4, r5, r6}
	ldrh r6, [r0, #2]
	mov r2, #0
	ldrh r3, [r0]
	cmp r6, #0
	blt _02241AE2
	add r5, r2, #0
_02241A96:
	sub r4, r3, r5
	cmp r4, #0
	ble _02241AA0
	add r3, r4, #0
	b _02241ADA
_02241AA0:
	cmp r3, #0
	beq _02241AA6
	sub r3, r3, #1
_02241AA6:
	lsl r4, r2, #1
	cmp r3, r4
	bge _02241AB0
	sub r5, r2, r3
	b _02241AB4
_02241AB0:
	add r5, r2, r4
	sub r5, r3, r5
_02241AB4:
	cmp r3, r2
	blt _02241ACA
	lsl r6, r2, #1
	add r6, r2, r6
	cmp r3, r6
	bge _02241AC4
	sub r3, r4, r3
	b _02241ACA
_02241AC4:
	lsl r2, r2, #2
	neg r2, r2
	add r3, r2, r3
_02241ACA:
	strh r3, [r1]
	strh r5, [r1, #2]
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02241ADA:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, r6
	ble _02241A96
_02241AE2:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov23_02241A88

	thumb_func_start ov23_02241AE8
ov23_02241AE8: ; 0x02241AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	add r6, r2, #0
	add r1, sp, #0xc
	add r7, r3, #0
	strh r6, [r1]
	strh r7, [r1, #2]
	ldr r0, [sp]
	strb r5, [r1, #4]
	strb r0, [r1, #6]
	ldr r0, [sp, #8]
	strb r0, [r1, #5]
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _02241B26
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x54
	add r3, r2, #0
	bl ov23_02253F40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241B26:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02058108
	cmp r0, #0
	beq _02241B44
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x37
	add r3, r2, #0
	bl ov23_02253F40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241B44:
	ldr r0, _02241C3C ; =0x02257744
	add r2, r7, #0
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_02054F68
	cmp r0, #0
	beq _02241B6A
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	bl ov23_02253F40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241B6A:
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_02241978
	add r4, r0, #0
	add r0, sp, #0xc
	beq _02241BC2
	ldrb r1, [r4, #6]
	ldrb r0, [r0, #6]
	cmp r1, r0
	bne _02241BB2
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	cmp r0, r5
	ble _02241B96
	add r0, r5, #0
	mov r1, #5
	bl sub_020E1F6C
	ldr r1, [sp, #4]
	add r0, r1, r0
	b _02241B9E
_02241B96:
	mov r1, #5
	bl sub_020E1F6C
	add r0, r5, r0
_02241B9E:
	add r0, r0, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	cmp r0, #0x63
	bls _02241BAC
	mov r0, #0x63
	strb r0, [r4, #4]
_02241BAC:
	mov r0, #1
	str r0, [sp, #8]
	b _02241BCA
_02241BB2:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3b
	add r3, r2, #0
	bl ov23_02253F40
	b _02241BCA
_02241BC2:
	bl ov23_02241CAC
	mov r0, #1
	str r0, [sp, #8]
_02241BCA:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02241C38
	bl ov23_0224219C
	ldr r2, [sp]
	mov r1, #0
	bl ov23_022541A0
	bl ov23_0224219C
	mov r1, #1
	add r2, r5, #0
	bl ov23_02254154
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x3a
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, [sp]
	bl ov23_02250128
	ldr r0, _02241C44 ; =0x00000631
	bl sub_02005748
	ldr r0, _02241C3C ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AA14
	ldr r0, _02241C3C ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x2f
	bl sub_0202CF28
	ldr r0, _02241C3C ; =0x02257744
	add r2, r7, #0
	ldr r1, [r0, #0]
	ldr r0, _02241C40 ; =0x000004C8
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov5_021F57C8
_02241C38:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241C3C: .word 0x02257744
_02241C40: .word 0x000004C8
_02241C44: .word 0x00000631
	thumb_func_end ov23_02241AE8

	thumb_func_start ov23_02241C48
ov23_02241C48: ; 0x02241C48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02241CA4 ; =0x02257744
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	mov r4, #0
_02241C56:
	cmp r0, r6
	bne _02241C5E
	add r1, r4, #0
	b _02241C66
_02241C5E:
	add r4, r4, #1
	add r0, #8
	cmp r4, #0x64
	blt _02241C56
_02241C66:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02241C72
	bl sub_02022974
_02241C72:
	cmp r4, #0x63
	bge _02241C92
	ldr r7, _02241CA4 ; =0x02257744
	lsl r5, r4, #3
_02241C7A:
	add r0, r4, #1
	ldr r1, [r7, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	add r1, r1, r5
	mov r2, #8
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x63
	blt _02241C7A
_02241C92:
	ldr r0, _02241CA4 ; =0x02257744
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02241CA8 ; =0x0000031E
	strb r2, [r1, r0]
	add r0, r6, #0
	bl ov23_02241928
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241CA4: .word 0x02257744
_02241CA8: .word 0x0000031E
	thumb_func_end ov23_02241C48

	thumb_func_start ov23_02241CAC
ov23_02241CAC: ; 0x02241CAC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02241CF0 ; =0x02257744
	ldr r0, [r0, #0]
	bl ov23_02241960
	add r5, r0, #0
	bne _02241CD8
	ldr r0, _02241CF0 ; =0x02257744
	ldr r0, [r0, #0]
	bl ov23_02241974
	bl ov23_02241C48
	ldr r0, _02241CF0 ; =0x02257744
	ldr r0, [r0, #0]
	bl ov23_02241960
	add r5, r0, #0
	bne _02241CD8
	bl sub_02022974
_02241CD8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, #0
	bl ov23_022418C0
	bl ov23_02241778
	pop {r3, r4, r5, pc}
	nop
_02241CF0: .word 0x02257744
	thumb_func_end ov23_02241CAC

	thumb_func_start ov23_02241CF4
ov23_02241CF4: ; 0x02241CF4
	cmp r0, #0
	beq _02241D00
	cmp r0, #0xb
	bge _02241D00
	mov r0, #1
	bx lr
_02241D00:
	mov r0, #0
	bx lr
	thumb_func_end ov23_02241CF4

	thumb_func_start ov23_02241D04
ov23_02241D04: ; 0x02241D04
	push {r3, lr}
	bl ov23_02241978
	cmp r0, #0
	beq _02241D12
	mov r0, #1
	pop {r3, pc}
_02241D12:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02241D04

	thumb_func_start ov23_02241D18
ov23_02241D18: ; 0x02241D18
	ldr r1, _02241D34 ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241D2E
	lsl r1, r0, #3
	add r0, r2, r1
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _02241D2E
	ldrh r0, [r2, r1]
	bx lr
_02241D2E:
	mov r0, #0
	bx lr
	nop
_02241D34: .word 0x02257744
	thumb_func_end ov23_02241D18

	thumb_func_start ov23_02241D38
ov23_02241D38: ; 0x02241D38
	ldr r1, _02241D54 ; =0x02257744
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02241D4E
	lsl r0, r0, #3
	add r1, r1, r0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _02241D4E
	ldrh r0, [r1, #2]
	bx lr
_02241D4E:
	mov r0, #0
	bx lr
	nop
_02241D54: .word 0x02257744
	thumb_func_end ov23_02241D38

	thumb_func_start ov23_02241D58
ov23_02241D58: ; 0x02241D58
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _02241DF0 ; =0x02257744
	mov r5, #0
	ldr r2, [r0, #0]
	add r6, r5, #0
	add r7, r5, #0
	cmp r2, #0
	bne _02241D6E
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241D6E:
	ldr r0, _02241DF4 ; =0x000004CC
	add r4, r5, #0
_02241D72:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02241DCE
	mov r0, #4
	bl sub_0200B358
	add r5, r0, #0
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	ldr r2, _02241DF0 ; =0x02257744
	add r6, r0, #0
	ldr r2, [r2, #0]
	add r0, r5, #0
	add r3, r2, r4
	ldr r2, _02241DF4 ; =0x000004CC
	mov r1, #2
	ldrb r2, [r3, r2]
	bl sub_0200BACC
	add r0, r5, #0
	mov r1, #2
	bl sub_0200C324
	bl ov23_0224219C
	bl ov23_02253E3C
	mov r1, #0x5f
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0200C388
	ldr r1, _02241DF0 ; =0x02257744
	mov r0, #0
	ldr r1, [r1, #0]
	mov r7, #1
	add r2, r1, r4
	ldr r1, _02241DF4 ; =0x000004CC
	strb r0, [r2, r1]
	b _02241DD6
_02241DCE:
	add r4, r4, #1
	add r2, r2, #1
	cmp r4, #8
	blt _02241D72
_02241DD6:
	cmp r6, #0
	beq _02241DE0
	add r0, r6, #0
	bl sub_020237BC
_02241DE0:
	cmp r5, #0
	beq _02241DEA
	add r0, r5, #0
	bl sub_0200B3F0
_02241DEA:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241DF0: .word 0x02257744
_02241DF4: .word 0x000004CC
	thumb_func_end ov23_02241D58

	thumb_func_start ov23_02241DF8
ov23_02241DF8: ; 0x02241DF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02241E44 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241E48 ; =0x000004C8
	ldr r0, [r1, r0]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	mov r5, #0
_02241E10:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020290DC
	cmp r0, #0
	beq _02241E38
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020290E8
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02029108
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl ov23_0223E650
_02241E38:
	add r5, r5, #1
	cmp r5, #0x64
	blt _02241E10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241E44: .word 0x02257744
_02241E48: .word 0x000004C8
	thumb_func_end ov23_02241DF8

	thumb_func_start ov23_02241E4C
ov23_02241E4C: ; 0x02241E4C
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x64
	bls _02241E66
	ldr r0, _02241E68 ; =0x0000054A
	bl sub_02005748
	mov r0, #0
	strh r0, [r4, #2]
_02241E66:
	pop {r4, pc}
	; .align 2, 0
_02241E68: .word 0x0000054A
	thumb_func_end ov23_02241E4C

	thumb_func_start ov23_02241E6C
ov23_02241E6C: ; 0x02241E6C
	push {r4, lr}
	ldr r0, _02241EC4 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241EC8 ; =0x000004C4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241E7E
	bl sub_02022974
_02241E7E:
	ldr r0, _02241EC4 ; =0x02257744
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241E90
	bl sub_02022974
_02241E90:
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r2, #0x64
	ldr r0, _02241EC4 ; =0x02257744
	strh r2, [r4, #2]
	ldr r1, [r0, #0]
	ldr r0, _02241EC8 ; =0x000004C4
	str r4, [r1, r0]
	ldr r0, _02241ECC ; =ov23_02241E4C
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02241EC4 ; =0x02257744
	ldr r2, [r1, #0]
	mov r1, #0x13
	lsl r1, r1, #6
	str r0, [r2, r1]
	pop {r4, pc}
	nop
_02241EC4: .word 0x02257744
_02241EC8: .word 0x000004C4
_02241ECC: .word ov23_02241E4C
	thumb_func_end ov23_02241E6C

	thumb_func_start ov23_02241ED0
ov23_02241ED0: ; 0x02241ED0
	push {r3, lr}
	ldr r0, _02241F04 ; =0x02257744
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241F02
	bl sub_0200DA58
	ldr r0, _02241F04 ; =0x02257744
	ldr r1, [r0, #0]
	ldr r0, _02241F08 ; =0x000004C4
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _02241F04 ; =0x02257744
	mov r0, #0x13
	ldr r2, [r1, #0]
	mov r3, #0
	lsl r0, r0, #6
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, r0, #4
	str r3, [r1, r0]
_02241F02:
	pop {r3, pc}
	; .align 2, 0
_02241F04: .word 0x02257744
_02241F08: .word 0x000004C4
	thumb_func_end ov23_02241ED0

	thumb_func_start ov23_02241F0C
ov23_02241F0C: ; 0x02241F0C
	push {r3, lr}
	ldr r1, _02241F38 ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241F32
	ldr r1, _02241F3C ; =0x000004C4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02241F32
	ldrh r1, [r1, #2]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r1, #0
	bl ov23_02241D18
	pop {r3, pc}
_02241F32:
	mov r0, #0
	pop {r3, pc}
	nop
_02241F38: .word 0x02257744
_02241F3C: .word 0x000004C4
	thumb_func_end ov23_02241F0C

	thumb_func_start ov23_02241F40
ov23_02241F40: ; 0x02241F40
	push {r3, lr}
	ldr r1, _02241F6C ; =0x02257744
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02241F66
	ldr r1, _02241F70 ; =0x000004C4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02241F66
	ldrh r1, [r1, #2]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r1, #0
	bl ov23_02241D38
	pop {r3, pc}
_02241F66:
	mov r0, #0
	pop {r3, pc}
	nop
_02241F6C: .word 0x02257744
_02241F70: .word 0x000004C4
	thumb_func_end ov23_02241F40

	thumb_func_start ov23_02241F74
ov23_02241F74: ; 0x02241F74
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	bl sub_02027AC0
	add r4, r0, #0
	ldr r0, _022420E4 ; =0x02257748
	mov r2, #0x15
	str r6, [r0, #0]
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	ldr r2, _022420E4 ; =0x02257748
	mov r3, #0x4d
	ldr r0, [r2, #0]
	lsl r3, r3, #2
	str r5, [r0, #0xc]
	ldr r1, [r2, #0]
	mov r0, #0
	strb r0, [r1, r3]
	ldr r1, [r2, #0]
	strh r0, [r1, #0x1c]
	ldr r1, [r2, #0]
	strh r0, [r1, #0x1e]
	add r1, r3, #0
	ldr r6, [r2, #0]
	add r1, #0x17
	strb r0, [r6, r1]
	add r0, r3, #0
	ldr r1, [r2, #0]
	mov r6, #1
	add r0, #0x13
	strb r6, [r1, r0]
	add r3, #0xc0
	str r3, [sp]
	ldr r0, _022420E8 ; =0x0000027A
	ldr r2, [r5, #8]
	mov r1, #0x21
	add r3, r4, #0
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022420EC ; =0x0000027E
	ldr r2, [r5, #8]
	mov r1, #0x21
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #0x9f
	ldr r2, [r5, #8]
	lsl r0, r0, #2
	mov r1, #0x21
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022420F0 ; =0x0000027D
	ldr r2, [r5, #8]
	mov r1, #0x21
	bl ov23_02253D48
	ldr r1, _022420E4 ; =0x02257748
	add r3, r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022420F4 ; =0x00000276
	ldr r2, [r5, #8]
	mov r1, #0x21
	bl ov23_02253D48
	ldr r2, _022420E4 ; =0x02257748
	mov r1, #0x4a
	ldr r3, [r2, #0]
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r2, #0]
	ldr r2, _022420F8 ; =0x000003E2
	ldr r0, [r0, #0xc]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r3, #0xa
	bl sub_0200DD0C
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
	ldr r0, _022420E4 ; =0x02257748
	ldr r2, _022420FC ; =0x000003D9
	ldr r0, [r0, #0]
	mov r1, #3
	ldr r0, [r0, #0xc]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_0200DAA4
	mov r3, #0
	ldr r0, _022420E4 ; =0x02257748
	add r4, r3, #0
	mov r2, #0xff
	add r1, r3, #0
_02242098:
	ldr r5, [r0, #0]
	add r5, r5, r3
	add r5, #0xc2
	strb r2, [r5]
	ldr r5, [r0, #0]
	add r5, r5, r3
	add r5, #0xd2
	strb r2, [r5]
	ldr r5, [r0, #0]
	add r3, r3, #1
	add r5, r5, r4
	add r5, #0xdc
	add r4, r4, #4
	str r1, [r5, #0]
	cmp r3, #8
	blt _02242098
	ldr r0, _022420E4 ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A9F4
	mov r1, #0
	ldr r0, _02242100 ; =ov23_02243310
	add r2, r1, #0
	bl sub_0200D9E8
	ldr r1, _022420E4 ; =0x02257748
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	ldr r0, _02242104 ; =ov23_022433F4
	bl sub_02032110
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022420E4: .word 0x02257748
_022420E8: .word 0x0000027A
_022420EC: .word 0x0000027E
_022420F0: .word 0x0000027D
_022420F4: .word 0x00000276
_022420F8: .word 0x000003E2
_022420FC: .word 0x000003D9
_02242100: .word ov23_02243310
_02242104: .word ov23_022433F4
	thumb_func_end ov23_02241F74

	thumb_func_start ov23_02242108
ov23_02242108: ; 0x02242108
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _02242198 ; =0x02257748
	add r5, r4, #0
_02242110:
	ldr r0, [r6, #0]
	add r0, r0, r5
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242120
	bl sub_020237BC
_02242120:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _02242110
	mov r0, #0
	bl sub_02032110
	ldr r0, _02242198 ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x14]
	bl sub_0200DA58
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02253DD8
	ldr r0, _02242198 ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r1, [r1, #0xc]
	add r1, #0x90
	str r2, [r1, #0]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02242198 ; =0x02257748
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02242198: .word 0x02257748
	thumb_func_end ov23_02242108

	thumb_func_start ov23_0224219C
ov23_0224219C: ; 0x0224219C
	ldr r0, _022421A8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421A8: .word 0x02257748
	thumb_func_end ov23_0224219C

	thumb_func_start ov23_022421AC
ov23_022421AC: ; 0x022421AC
	ldr r0, _022421B8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421B8: .word 0x02257748
	thumb_func_end ov23_022421AC

	thumb_func_start ov23_022421BC
ov23_022421BC: ; 0x022421BC
	ldr r0, _022421C8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421C8: .word 0x02257748
	thumb_func_end ov23_022421BC

	thumb_func_start ov23_022421CC
ov23_022421CC: ; 0x022421CC
	ldr r0, _022421D8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421D8: .word 0x02257748
	thumb_func_end ov23_022421CC

	thumb_func_start ov23_022421DC
ov23_022421DC: ; 0x022421DC
	ldr r0, _022421E8 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
_022421E8: .word 0x02257748
	thumb_func_end ov23_022421DC

	thumb_func_start ov23_022421EC
ov23_022421EC: ; 0x022421EC
	push {r3, lr}
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	ldr r0, _02242238 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254210
	pop {r3, pc}
	nop
_02242238: .word 0x02257748
	thumb_func_end ov23_022421EC

	thumb_func_start ov23_0224223C
ov23_0224223C: ; 0x0224223C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r5, #0
	beq _022422A2
	cmp r6, #0
	beq _022422A2
	mov r0, #4
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B498
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0200B498
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r1, [sp]
	add r2, r7, #0
	bl sub_0200B1B8
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022422A2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224223C

	thumb_func_start ov23_022422A8
ov23_022422A8: ; 0x022422A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r5, #0
	beq _02242300
	mov r0, #4
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200B498
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242300:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_022422A8

	thumb_func_start ov23_02242308
ov23_02242308: ; 0x02242308
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02242404 ; =0x02257748
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02242318
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242318:
	mov r5, #0
_0224231A:
	add r0, r5, #0
	bl sub_02032DE0
	cmp r0, #0
	beq _02242346
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02032E30
	add r0, r7, #0
	mov r1, #1
	mov r2, #0x5b
	add r3, r6, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _02242346
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242346:
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0xc2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _02242384
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0xc2
	ldrb r0, [r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r3, r6, #0
	add r2, r0, r5
	add r2, #0xc2
	mov r0, #0xff
	strb r0, [r2]
	add r0, r7, #0
	mov r2, #0x6f
	bl ov23_0224223C
	cmp r0, #0
	beq _02242384
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242384:
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _022423B2
	add r0, r5, #0
	bl sub_02032EE8
	ldr r1, [r4, #0]
	add r3, r6, #0
	add r2, r1, r5
	add r2, #0xd2
	mov r1, #0xff
	strb r1, [r2]
	mov r1, #0
	mov r2, #0x70
	bl ov23_022422A8
	cmp r0, #0
	beq _022423B2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022423B2:
	ldr r0, [r4, #0]
	ldr r1, _02242408 ; =0x0000013D
	add r2, r0, r5
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _022423FA
	lsl r4, r5, #2
	add r0, r0, r4
	add r0, #0xdc
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022423EA
	add r0, r6, #0
	bl sub_02023810
	ldr r0, _02242404 ; =0x02257748
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_020237BC
	ldr r0, _02242404 ; =0x02257748
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xdc
	str r1, [r0, #0]
_022423EA:
	ldr r0, _02242404 ; =0x02257748
	mov r2, #0
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _02242408 ; =0x0000013D
	strb r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022423FA:
	add r5, r5, #1
	cmp r5, #8
	blt _0224231A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242404: .word 0x02257748
_02242408: .word 0x0000013D
	thumb_func_end ov23_02242308

	thumb_func_start ov23_0224240C
ov23_0224240C: ; 0x0224240C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	strh r5, [r0]
	strh r4, [r0, #2]
	ldr r0, _02242454 ; =0x02257748
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_02054F68
	cmp r0, #0
	beq _0224242E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224242E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022442D8
	cmp r0, #0
	beq _0224243E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224243E:
	mov r1, #0
	add r0, sp, #0
	mvn r1, r1
	bl ov23_022512D4
	cmp r0, #0xff
	beq _02242450
	mov r0, #1
	pop {r3, r4, r5, pc}
_02242450:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242454: .word 0x02257748
	thumb_func_end ov23_0224240C

	thumb_func_start ov23_02242458
ov23_02242458: ; 0x02242458
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _02242534 ; =0x02257748
	ldr r2, _02242538 ; =0x00000146
	ldr r0, [r3, #0]
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _02242472
	add r1, r2, #0
	sub r1, #0x12
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02242486
_02242472:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _02242480
	sub r2, r2, #1
	strb r2, [r0, r1]
_02242480:
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_02242486:
	ldr r1, _0224253C ; =0x021BF6BC
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _0224252C
	add r1, r2, #0
	mov r4, #0x1e
	sub r1, #0x12
	strb r4, [r0, r1]
	ldr r1, [r3, #0]
	add r0, r2, #5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224252C
	bl sub_02057FAC
	cmp r0, #0
	beq _0224252C
	bl sub_0203608C
	bl ov23_0224ACC0
	cmp r0, #0
	bne _0224252C
	bl sub_020360F0
	cmp r0, #0
	beq _022424C2
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_022424C2:
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	beq _022424D4
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_022424D4:
	ldr r3, _02242534 ; =0x02257748
	ldr r2, _0224253C ; =0x021BF6BC
	ldr r3, [r3, #0]
	ldrh r1, [r2, #0x1c]
	ldr r3, [r3, #0xc]
	ldrh r2, [r2, #0x1e]
	add r3, #0x8c
	ldr r3, [r3, #0]
	add r0, sp, #0xc
	bl ov5_021EAFA4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r2, sp, #8
	add r3, sp, #4
	bl ov5_021E9230
	ldr r1, [sp, #8]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [sp, #4]
	strh r1, [r0, #2]
	ldr r1, _0224253C ; =0x021BF6BC
	ldr r0, _02242534 ; =0x02257748
	ldrh r3, [r1, #0x1c]
	ldr r2, [r0, #0]
	strh r3, [r2, #0x18]
	ldrh r2, [r1, #0x1e]
	ldr r1, [r0, #0]
	strh r2, [r1, #0x1a]
	ldr r2, [sp, #8]
	ldr r1, [r0, #0]
	strh r2, [r1, #0x1c]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	mov r2, #4
	strh r1, [r0, #0x1e]
	mov r0, #0x30
	add r1, sp, #0
	bl sub_020359DC
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_0224252C:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	nop
_02242534: .word 0x02257748
_02242538: .word 0x00000146
_0224253C: .word 0x021BF6BC
	thumb_func_end ov23_02242458

	thumb_func_start ov23_02242540
ov23_02242540: ; 0x02242540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	str r0, [sp]
	ldrh r0, [r6]
	str r1, [sp, #4]
	mov r1, #6
	sub r0, r0, #6
	str r0, [sp, #0xc]
	ldrh r0, [r6, #2]
	mov r4, #1
	sub r0, r0, #6
	str r0, [sp, #8]
	add r0, sp, #0x14
	bl ov23_02241A80
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl ov23_02241A88
	cmp r0, #0
	beq _022425B0
_0224256C:
	add r1, sp, #0x10
	mov r0, #0
	ldrh r2, [r6]
	ldrsh r0, [r1, r0]
	add r5, r2, r0
	mov r0, #2
	ldrh r2, [r6, #2]
	ldrsh r0, [r1, r0]
	add r7, r2, r0
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	blx r2
	cmp r0, #0
	beq _022425A4
	ldr r0, [sp, #0xc]
	sub r1, r5, r0
	ldr r0, [sp, #8]
	sub r0, r7, r0
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, [sp]
	cmp r4, #8
	strb r1, [r0, r4]
	bne _022425A2
	add r4, r4, #1
	b _022425B0
_022425A2:
	add r4, r4, #1
_022425A4:
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl ov23_02241A88
	cmp r0, #0
	bne _0224256C
_022425B0:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02242540

	thumb_func_start ov23_022425B8
ov23_022425B8: ; 0x022425B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	strb r0, [r1]
	ldr r1, _022425F0 ; =ov23_022442D8
	add r0, sp, #0
	add r2, r4, #0
	bl ov23_02242540
	add r2, r0, #0
	mov r0, #0x31
	add r1, sp, #0
	bl sub_02035AC4
	ldr r1, _022425F4 ; =ov23_02241200
	add r0, sp, #0
	add r2, r4, #0
	bl ov23_02242540
	add r2, r0, #0
	mov r0, #0x32
	add r1, sp, #0
	bl sub_02035AC4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022425F0: .word ov23_022442D8
_022425F4: .word ov23_02241200
	thumb_func_end ov23_022425B8

	thumb_func_start ov23_022425F8
ov23_022425F8: ; 0x022425F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02059094
	cmp r0, #0
	beq _02242620
	add r0, r5, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _02242620
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022425B8
_02242620:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_022425F8

	thumb_func_start ov23_02242624
ov23_02242624: ; 0x02242624
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224264E
	ldr r1, _02242650 ; =0x02257748
	add r0, r4, #1
	ldr r1, [r1, #0]
	sub r2, r5, #1
	add r1, #0xfc
	bl sub_020C4DB0
	ldr r0, _02242650 ; =0x02257748
	sub r2, r5, #1
	ldr r1, [r0, #0]
	mov r0, #0x52
	lsl r0, r0, #2
	strb r2, [r1, r0]
_0224264E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242650: .word 0x02257748
	thumb_func_end ov23_02242624

	thumb_func_start ov23_02242654
ov23_02242654: ; 0x02242654
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _022426EE
	ldr r1, _022426F4 ; =0x02257748
	add r0, r4, #1
	ldr r2, [r1, #0]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	sub r2, r5, #1
	bl sub_020C4DB0
	ldr r2, _022426F4 ; =0x02257748
	ldr r0, _022426F8 ; =0x00000149
	ldr r1, [r2, #0]
	sub r3, r5, #1
	strb r3, [r1, r0]
	ldr r2, [r2, #0]
	ldr r1, _022426FC ; =ov23_02241D04
	add r0, sp, #0x1c
	add r2, #0x1c
	bl ov23_02242540
	ldr r1, _022426F4 ; =0x02257748
	ldr r2, _02242700 ; =0x0000014A
	ldr r3, [r1, #0]
	strb r0, [r3, r2]
	ldr r3, [r1, #0]
	ldrb r0, [r3, r2]
	sub r0, r0, #1
	strb r0, [r3, r2]
	ldr r3, [r1, #0]
	add r1, r2, #0
	add r0, sp, #0x1c
	sub r1, #0x3e
	ldrb r2, [r3, r2]
	add r0, #1
	add r1, r3, r1
	bl sub_020C4DB0
	ldr r0, _022426F4 ; =0x02257748
	ldr r3, [r0, #0]
	ldrh r0, [r3, #0x1a]
	str r0, [sp]
	add r0, r3, #0
	add r0, #0xfc
	str r0, [sp, #4]
	mov r0, #0x52
	lsl r0, r0, #2
	ldrb r1, [r3, r0]
	str r1, [sp, #8]
	add r1, r0, #0
	sub r1, #0x44
	add r1, r3, r1
	str r1, [sp, #0xc]
	add r1, r0, #1
	ldrb r1, [r3, r1]
	str r1, [sp, #0x10]
	add r1, r0, #0
	sub r1, #0x3c
	add r1, r3, r1
	str r1, [sp, #0x14]
	add r0, r0, #2
	ldrb r0, [r3, r0]
	str r0, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r1, [r3, #0x1c]
	ldrh r2, [r3, #0x1e]
	ldrh r3, [r3, #0x18]
	bl ov23_022489F8
_022426EE:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_022426F4: .word 0x02257748
_022426F8: .word 0x00000149
_022426FC: .word ov23_02241D04
_02242700: .word 0x0000014A
	thumb_func_end ov23_02242654

	thumb_func_start ov23_02242704
ov23_02242704: ; 0x02242704
	cmp r0, #0
	bne _0224270E
	mov r0, #0xe1
	lsl r0, r0, #0xc
	bx lr
_0224270E:
	ldrh r1, [r0, #2]
	ldrh r2, [r0]
	mov r0, #0xf
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
	thumb_func_end ov23_02242704

	thumb_func_start ov23_0224271C
ov23_0224271C: ; 0x0224271C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02242784 ; =0x02257748
	mov r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	sub r5, r1, #1
	bl ov23_02242704
	str r0, [sp]
	ldr r0, _02242784 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r5, #0
	ble _02242764
_02242742:
	add r1, r4, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
	add r0, sp, #4
	add r1, r6, #0
	blx r7
	bl ov23_02242704
	ldr r1, [sp]
	cmp r0, r1
	bge _0224275E
	add r4, r6, #1
	b _02242760
_0224275E:
	add r5, r6, #0
_02242760:
	cmp r4, r5
	blt _02242742
_02242764:
	add r0, sp, #4
	add r1, r4, #0
	blx r7
	bl ov23_02242704
	ldr r1, [sp]
	cmp r1, r0
	bne _0224277A
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224277A:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242784: .word 0x02257748
	thumb_func_end ov23_0224271C

	thumb_func_start ov23_02242788
ov23_02242788: ; 0x02242788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _022427D8 ; =0x02257748
	mov r4, #0
	ldr r2, [r1, #0]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	sub r5, r1, #2
	bl ov23_02242704
	str r0, [sp]
	ldr r0, _022427D8 ; =0x02257748
	add r5, r5, #1
	ldr r1, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r5, #0
	ble _022427D2
_022427B0:
	add r1, r4, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
	add r0, sp, #4
	add r1, r6, #0
	blx r7
	bl ov23_02242704
	ldr r1, [sp]
	cmp r0, r1
	bge _022427CC
	add r4, r6, #1
	b _022427CE
_022427CC:
	add r5, r6, #0
_022427CE:
	cmp r4, r5
	blt _022427B0
_022427D2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022427D8: .word 0x02257748
	thumb_func_end ov23_02242788

	thumb_func_start ov23_022427DC
ov23_022427DC: ; 0x022427DC
	push {r3, r4}
	ldr r3, _022427F4 ; =0x02257748
	mov r2, #0x45
	ldr r4, [r3, #0]
	lsl r2, r2, #2
	str r1, [r4, r2]
	ldr r1, [r3, #0]
	add r2, #0x18
	str r0, [r1, r2]
	pop {r3, r4}
	bx lr
	nop
_022427F4: .word 0x02257748
	thumb_func_end ov23_022427DC

	thumb_func_start ov23_022427F8
ov23_022427F8: ; 0x022427F8
	push {r3, lr}
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _02242810
	mov r0, #0x1b
	bl sub_020360DC
	bl sub_0203572C
_02242810:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_022427F8

	thumb_func_start ov23_02242814
ov23_02242814: ; 0x02242814
	ldr r0, _02242828 ; =0x02257748
	ldr r2, [r0, #0]
	ldr r0, _0224282C ; =0x00000146
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02242824
	sub r1, r1, #1
	strb r1, [r2, r0]
_02242824:
	bx lr
	nop
_02242828: .word 0x02257748
_0224282C: .word 0x00000146
	thumb_func_end ov23_02242814

	thumb_func_start ov23_02242830
ov23_02242830: ; 0x02242830
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _022428CC ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r4, r0, #0
	ldr r0, _022428CC ; =0x02257748
	ldr r2, [r0, #0]
	ldr r0, _022428D0 ; =0x00000146
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02242858
	sub r0, #0x12
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _022428C6
_02242858:
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _022428C6
	add r0, r4, #0
	bl sub_02028E28
	cmp r0, #0x28
	bne _02242876
	mov r0, #0x10
	orr r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02242876:
	bl sub_0203608C
	bl sub_02058D88
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058DC0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_02241D04
	cmp r0, #0
	beq _0224289E
	mov r0, #0x20
	orr r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0224289E:
	mov r0, #0xf
	add r2, r6, #0
	and r2, r0
	lsl r0, r4, #0x1c
	add r1, sp, #0
	lsr r0, r0, #0x18
	strb r5, [r1]
	add r0, r2, r0
	strb r0, [r1, #1]
	mov r0, #0x1c
	add r1, sp, #0
	bl sub_020360D0
	bl sub_0203572C
	ldr r0, _022428CC ; =0x02257748
	mov r2, #8
	ldr r1, [r0, #0]
	ldr r0, _022428D0 ; =0x00000146
	strb r2, [r1, r0]
_022428C6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022428CC: .word 0x02257748
_022428D0: .word 0x00000146
	thumb_func_end ov23_02242830

	thumb_func_start ov23_022428D4
ov23_022428D4: ; 0x022428D4
	mov r0, #2
	bx lr
	thumb_func_end ov23_022428D4

	thumb_func_start ov23_022428D8
ov23_022428D8: ; 0x022428D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, sp, #0
	add r6, r2, #0
	strb r5, [r1]
	bl sub_02058EE0
	add r1, sp, #0
	strh r0, [r1, #2]
	add r0, r5, #0
	bl sub_02058F18
	add r1, sp, #0
	strh r0, [r1, #4]
	add r0, r5, #0
	bl sub_02058DF8
	ldr r1, _02242B10 ; =0x0000FFFF
	cmp r0, r1
	bne _0224290E
	add r0, r5, #0
	bl sub_02058E4C
	ldr r1, _02242B10 ; =0x0000FFFF
	cmp r0, r1
	beq _022429C2
_0224290E:
	add r0, r5, #0
	bl sub_02059094
	cmp r0, #0
	beq _022429C2
	add r0, r5, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _022429C2
	add r1, sp, #0
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_0205900C
	add r4, r0, #0
	cmp r4, #0xff
	bne _02242934
	b _02242A3A
_02242934:
	bl ov23_0224C1C8
	cmp r0, #0
	bne _022429C2
	add r0, r4, #0
	bl ov23_0224162C
	cmp r0, #0
	beq _02242968
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	add r1, sp, #4
	strb r5, [r0, #7]
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242968:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_0224A658
	cmp r0, #0
	bne _022429C2
	add r0, r4, #0
	bl ov23_0224ACC0
	cmp r0, #0
	beq _022429B8
	add r0, r4, #0
	bl ov23_02244470
	cmp r0, #0
	bne _02242996
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02245560
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242996:
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	add r1, sp, #4
	strb r5, [r0, #7]
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_022429B8:
	add r0, r5, #0
	bl sub_02059094
	cmp r0, #0
	bne _022429C4
_022429C2:
	b _02242B0C
_022429C4:
	add r0, r4, #0
	bl sub_02059094
	cmp r0, #0
	beq _022429D8
	add r0, r4, #0
	bl sub_020593E0
	cmp r0, #0
	beq _022429FA
_022429D8:
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	add r1, sp, #4
	strb r5, [r0, #7]
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_022429FA:
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #6]
	strb r4, [r0, #8]
	strb r5, [r0, #7]
	add r0, r4, #0
	bl sub_02059094
	cmp r0, #0
	beq _02242B0C
	add r1, sp, #4
	mov r0, #0x1e
	add r1, #2
	mov r2, #3
	bl sub_02035AC4
	cmp r0, #0
	beq _02242B0C
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add r0, r4, #0
	mov r1, #0
	bl sub_02059058
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02058FB0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A3A:
	ldrb r2, [r6]
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_02244080
	cmp r0, #0
	beq _02242A56
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A56:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_0223E354
	cmp r0, #0
	beq _02242A70
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A70:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_02251324
	cmp r0, #0
	beq _02242A8A
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242A8A:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl ov23_0224D454
	cmp r0, #0
	beq _02242AA4
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242AA4:
	add r1, sp, #0
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_02058108
	cmp r0, #0
	beq _02242AD4
	add r0, r5, #0
	mov r1, #0xff
	mov r2, #0
	bl ov23_0224A658
	cmp r0, #0
	bne _02242B0C
	mov r0, #0x18
	add r1, sp, #0
	bl sub_02035B48
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02242AD4:
	ldrb r1, [r6]
	mov r0, #0x20
	tst r0, r1
	beq _02242B0C
	add r0, r5, #0
	bl ov23_0224A6B8
	cmp r0, #0
	bne _02242B0C
	add r2, sp, #0
	ldrh r3, [r2, #4]
	mov r1, #0xf
	ldrb r0, [r6, #1]
	and r3, r1
	ldrh r1, [r2, #2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	add r1, r3, r1
	cmp r0, r1
	bne _02242B0C
	mov r0, #0x3f
	add r1, sp, #0
	bl sub_02035B48
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
_02242B0C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02242B10: .word 0x0000FFFF
	thumb_func_end ov23_022428D8

	thumb_func_start ov23_02242B14
ov23_02242B14: ; 0x02242B14
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203608C
	cmp r0, #0
	bne _02242B6C
	mov r5, #0
	ldr r4, _02242BB0 ; =0x02257748
	add r7, r5, #0
	mov r6, #1
_02242B26:
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02242B42
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _02242BB4 ; =0x00000135
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242B42
	add r0, r5, #0
	bl ov23_0224B5CC
_02242B42:
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _02242B56
	add r1, r0, r5
	ldr r0, _02242BB4 ; =0x00000135
	strb r6, [r1, r0]
	b _02242B5C
_02242B56:
	add r1, r0, r5
	ldr r0, _02242BB4 ; =0x00000135
	strb r7, [r1, r0]
_02242B5C:
	add r5, r5, #1
	cmp r5, #8
	blt _02242B26
	bl ov23_022433D0
	add r0, r0, #2
	bl sub_02037B58
_02242B6C:
	ldr r0, _02242BB0 ; =0x02257748
	ldr r2, [r0, #0]
	ldr r0, _02242BB8 ; =0x00000145
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02242B8E
	bl sub_02032CE8
	cmp r0, #0
	beq _02242B8E
	mov r0, #1
	bl sub_02057AE4
_02242B8E:
	bl ov23_02241810
	bl ov23_02243AE8
	bl ov23_0223E878
	ldr r0, _02242BB0 ; =0x02257748
	ldr r1, [r0, #0]
	ldr r0, _02242BBC ; =0x0000014B
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242BAE
	ldr r0, [r1, #0xc]
	ldr r0, [r0, #8]
	bl ov23_022468A8
_02242BAE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242BB0: .word 0x02257748
_02242BB4: .word 0x00000135
_02242BB8: .word 0x00000145
_02242BBC: .word 0x0000014B
	thumb_func_end ov23_02242B14

	thumb_func_start ov23_02242BC0
ov23_02242BC0: ; 0x02242BC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02242C74 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02242C70
	mov r1, #0x15
	mov r0, #0xf
	lsl r1, r1, #4
	bl sub_02018144
	add r1, r5, #0
	bl ov23_02241F74
	bl sub_02057C84
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	mov r2, #1
	bl sub_02057524
	bl ov23_02243858
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_022434BC
	bl ov23_0224B5C4
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_0224B144
	bl ov23_022417C4
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_022416E0
	bl ov23_0223E2E8
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r1, r5, #0
	bl ov23_0223E1E4
	bl ov23_02253608
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_02253598
	add r0, r5, #0
	bl sub_0203D174
	bl sub_020298B0
	bl ov23_0224F588
_02242C70:
	pop {r4, r5, r6, pc}
	nop
_02242C74: .word 0x02257748
	thumb_func_end ov23_02242BC0

	thumb_func_start ov23_02242C78
ov23_02242C78: ; 0x02242C78
	push {r3, lr}
	ldr r0, _02242CAC ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242CA8
	bl ov23_022535EC
	bl ov23_022417CC
	bl ov23_0224B430
	bl ov23_02243520
	bl sub_0205764C
	bl ov23_0223E2F0
	bl ov23_022421EC
	ldr r0, _02242CAC ; =0x02257748
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02242CB0 ; =0x0000014B
	strb r2, [r1, r0]
_02242CA8:
	pop {r3, pc}
	nop
_02242CAC: .word 0x02257748
_02242CB0: .word 0x0000014B
	thumb_func_end ov23_02242C78

	thumb_func_start ov23_02242CB4
ov23_02242CB4: ; 0x02242CB4
	push {r3, lr}
	sub sp, #8
	ldr r0, _02242CFC ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242CF8
	bl sub_020576A0
	bl ov23_02253604
	bl ov23_022417E0
	bl ov23_0224B460
	bl ov23_022435A8
	bl ov23_0223E2F4
	ldr r1, _02242CFC ; =0x02257748
	ldr r0, _02242D00 ; =0x0000014B
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, r0]
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	ldr r2, _02242D04 ; =0x000003E2
	ldr r0, [r0, #0xc]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r3, #0xa
	bl sub_0200DD0C
_02242CF8:
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_02242CFC: .word 0x02257748
_02242D00: .word 0x0000014B
_02242D04: .word 0x000003E2
	thumb_func_end ov23_02242CB4

	thumb_func_start ov23_02242D08
ov23_02242D08: ; 0x02242D08
	push {r3, lr}
	ldr r0, _02242D40 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242D3C
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020287F8
	bl ov23_0224B4E4
	bl ov23_022435DC
	mov r0, #1
	bl sub_020576CC
	bl ov23_022417F4
	bl ov23_0223E2F8
	bl ov23_0224F5B8
	bl ov23_022535CC
	bl ov23_02242108
_02242D3C:
	pop {r3, pc}
	nop
_02242D40: .word 0x02257748
	thumb_func_end ov23_02242D08

	thumb_func_start ov23_02242D44
ov23_02242D44: ; 0x02242D44
	push {r3, lr}
	ldr r1, _02242D5C ; =0x02257748
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02242D5A
	bl ov23_02243670
	bl sub_02057764
	bl ov23_0224B518
_02242D5A:
	pop {r3, pc}
	; .align 2, 0
_02242D5C: .word 0x02257748
	thumb_func_end ov23_02242D44

	thumb_func_start ov23_02242D60
ov23_02242D60: ; 0x02242D60
	push {r4, lr}
	ldr r1, _02242E0C ; =0x02257748
	add r4, r0, #0
	ldr r3, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _02242D78
	mov r0, #0
	strb r0, [r3, r1]
	pop {r4, pc}
_02242D78:
	bl ov23_02242308
	cmp r0, #0
	beq _02242D8E
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242D8E:
	add r0, r4, #0
	bl ov23_022446B0
	cmp r0, #0
	beq _02242DA6
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DA6:
	add r0, r4, #0
	bl ov23_02244784
	cmp r0, #0
	beq _02242DBE
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DBE:
	add r0, r4, #0
	bl ov23_0224D020
	cmp r0, #0
	beq _02242DD6
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DD6:
	add r0, r4, #0
	bl ov23_022415B8
	cmp r0, #0
	beq _02242DEE
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242DEE:
	add r0, r4, #0
	bl ov23_02241D58
	cmp r0, #0
	beq _02242E06
	ldr r1, _02242E0C ; =0x02257748
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x53
	lsl r1, r1, #2
	strb r0, [r2, r1]
	pop {r4, pc}
_02242E06:
	mov r0, #0
	pop {r4, pc}
	nop
_02242E0C: .word 0x02257748
	thumb_func_end ov23_02242D60

	thumb_func_start ov23_02242E10
ov23_02242E10: ; 0x02242E10
	push {r3, lr}
	ldr r1, _02242E24 ; =0x02257748
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02242E20
	bl ov23_0224D130
	pop {r3, pc}
_02242E20:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242E24: .word 0x02257748
	thumb_func_end ov23_02242E10

	thumb_func_start ov23_02242E28
ov23_02242E28: ; 0x02242E28
	push {r3, lr}
	ldr r0, _02242E3C ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242E38
	bl ov23_0224D150
	pop {r3, pc}
_02242E38:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242E3C: .word 0x02257748
	thumb_func_end ov23_02242E28

	thumb_func_start ov23_02242E40
ov23_02242E40: ; 0x02242E40
	push {r3, lr}
	ldr r0, _02242E54 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242E50
	bl ov23_0224D178
	pop {r3, pc}
_02242E50:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242E54: .word 0x02257748
	thumb_func_end ov23_02242E40

	thumb_func_start ov23_02242E58
ov23_02242E58: ; 0x02242E58
	cmp r0, #0x20
	ble _02242E6E
	cmp r1, #0x40
	ble _02242E6E
	ldr r2, _02242E74 ; =0x000001DF
	cmp r0, r2
	bge _02242E6E
	cmp r1, r2
	bge _02242E6E
	mov r0, #0
	bx lr
_02242E6E:
	mov r0, #1
	bx lr
	nop
_02242E74: .word 0x000001DF
	thumb_func_end ov23_02242E58

	thumb_func_start ov23_02242E78
ov23_02242E78: ; 0x02242E78
	push {r3, lr}
	ldr r1, _02242ED8 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02242ED2
	cmp r0, #0x10
	bge _02242EC4
	ldr r1, _02242EDC ; =0x00000147
	ldrb r1, [r2, r1]
	cmp r1, #4
	bhi _02242ED2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242E9A: ; jump table
	.short _02242EA4 - _02242E9A - 2 ; case 0
	.short _02242EA8 - _02242E9A - 2 ; case 1
	.short _02242EB2 - _02242E9A - 2 ; case 2
	.short _02242EBE - _02242E9A - 2 ; case 3
	.short _02242EB8 - _02242E9A - 2 ; case 4
_02242EA4:
	mov r0, #0
	pop {r3, pc}
_02242EA8:
	cmp r0, #8
	bge _02242EB2
	bl ov23_0224121C
	pop {r3, pc}
_02242EB2:
	bl ov23_02241F0C
	pop {r3, pc}
_02242EB8:
	bl ov23_02245698
	pop {r3, pc}
_02242EBE:
	bl ov23_0224125C
	pop {r3, pc}
_02242EC4:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02029894
	bl sub_02029874
	pop {r3, pc}
_02242ED2:
	mov r0, #0
	pop {r3, pc}
	nop
_02242ED8: .word 0x02257748
_02242EDC: .word 0x00000147
	thumb_func_end ov23_02242E78

	thumb_func_start ov23_02242EE0
ov23_02242EE0: ; 0x02242EE0
	push {r3, lr}
	ldr r1, _02242F40 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02242F3A
	cmp r0, #0x10
	bge _02242F2C
	ldr r1, _02242F44 ; =0x00000147
	ldrb r1, [r2, r1]
	cmp r1, #4
	bhi _02242F3A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242F02: ; jump table
	.short _02242F0C - _02242F02 - 2 ; case 0
	.short _02242F10 - _02242F02 - 2 ; case 1
	.short _02242F1A - _02242F02 - 2 ; case 2
	.short _02242F26 - _02242F02 - 2 ; case 3
	.short _02242F20 - _02242F02 - 2 ; case 4
_02242F0C:
	mov r0, #0
	pop {r3, pc}
_02242F10:
	cmp r0, #8
	bge _02242F1A
	bl ov23_0224123C
	pop {r3, pc}
_02242F1A:
	bl ov23_02241F40
	pop {r3, pc}
_02242F20:
	bl ov23_022456CC
	pop {r3, pc}
_02242F26:
	bl ov23_02241294
	pop {r3, pc}
_02242F2C:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02029894
	bl sub_0202987C
	pop {r3, pc}
_02242F3A:
	mov r0, #0
	pop {r3, pc}
	nop
_02242F40: .word 0x02257748
_02242F44: .word 0x00000147
	thumb_func_end ov23_02242EE0

	thumb_func_start ov23_02242F48
ov23_02242F48: ; 0x02242F48
	push {r3, lr}
	ldr r1, _02242FA0 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02242F9C
	cmp r0, #0x10
	bge _02242F88
	ldr r1, _02242FA4 ; =0x00000147
	ldrb r1, [r2, r1]
	cmp r1, #4
	bhi _02242F9C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242F6A: ; jump table
	.short _02242F9C - _02242F6A - 2 ; case 0
	.short _02242F74 - _02242F6A - 2 ; case 1
	.short _02242F7C - _02242F6A - 2 ; case 2
	.short _02242F84 - _02242F6A - 2 ; case 3
	.short _02242F80 - _02242F6A - 2 ; case 4
_02242F74:
	cmp r0, #8
	bge _02242F7C
	mov r0, #0xc
	pop {r3, pc}
_02242F7C:
	mov r0, #9
	pop {r3, pc}
_02242F80:
	mov r0, #0xb
	pop {r3, pc}
_02242F84:
	mov r0, #0xc
	pop {r3, pc}
_02242F88:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_02029894
	bl sub_0202988C
	cmp r0, #0
	beq _02242F9C
	mov r0, #3
	pop {r3, pc}
_02242F9C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02242FA0: .word 0x02257748
_02242FA4: .word 0x00000147
	thumb_func_end ov23_02242F48

	thumb_func_start ov23_02242FA8
ov23_02242FA8: ; 0x02242FA8
	ldr r0, _02242FB4 ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02242FB8 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FB4: .word 0x02257748
_02242FB8: .word 0x00000147
	thumb_func_end ov23_02242FA8

	thumb_func_start ov23_02242FBC
ov23_02242FBC: ; 0x02242FBC
	ldr r0, _02242FC8 ; =0x02257748
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02242FCC ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FC8: .word 0x02257748
_02242FCC: .word 0x00000147
	thumb_func_end ov23_02242FBC

	thumb_func_start ov23_02242FD0
ov23_02242FD0: ; 0x02242FD0
	ldr r0, _02242FDC ; =0x02257748
	mov r2, #2
	ldr r1, [r0, #0]
	ldr r0, _02242FE0 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FDC: .word 0x02257748
_02242FE0: .word 0x00000147
	thumb_func_end ov23_02242FD0

	thumb_func_start ov23_02242FE4
ov23_02242FE4: ; 0x02242FE4
	ldr r0, _02242FF0 ; =0x02257748
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _02242FF4 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02242FF0: .word 0x02257748
_02242FF4: .word 0x00000147
	thumb_func_end ov23_02242FE4

	thumb_func_start ov23_02242FF8
ov23_02242FF8: ; 0x02242FF8
	ldr r0, _02243004 ; =0x02257748
	mov r2, #3
	ldr r1, [r0, #0]
	ldr r0, _02243008 ; =0x00000147
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02243004: .word 0x02257748
_02243008: .word 0x00000147
	thumb_func_end ov23_02242FF8

	thumb_func_start ov23_0224300C
ov23_0224300C: ; 0x0224300C
	ldr r2, _0224301C ; =0x02257748
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224301A
	add r0, r2, r0
	add r0, #0xc2
	strb r1, [r0]
_0224301A:
	bx lr
	; .align 2, 0
_0224301C: .word 0x02257748
	thumb_func_end ov23_0224300C

	thumb_func_start ov23_02243020
ov23_02243020: ; 0x02243020
	ldr r1, _02243034 ; =0x02257748
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02243030
	add r0, r2, r0
	mov r1, #1
	add r0, #0xd2
	strb r1, [r0]
_02243030:
	bx lr
	nop
_02243034: .word 0x02257748
	thumb_func_end ov23_02243020

	thumb_func_start ov23_02243038
ov23_02243038: ; 0x02243038
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _022430B4 ; =0x02257748
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022430B2
	lsl r4, r5, #2
	add r0, r0, r4
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022430B2
	mov r0, #0x64
	mov r1, #0xf
	bl sub_02023790
	ldr r1, _022430B4 ; =0x02257748
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0xdc
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #0xb
	bl sub_02023790
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B498
	bl ov23_0224219C
	bl ov23_02253E3C
	mov r1, #0x73
	add r2, r7, #0
	bl sub_0200B1B8
	ldr r1, _022430B4 ; =0x02257748
	add r0, r6, #0
	ldr r1, [r1, #0]
	add r2, r7, #0
	add r1, r1, r4
	add r1, #0xdc
	ldr r1, [r1, #0]
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
_022430B2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022430B4: .word 0x02257748
	thumb_func_end ov23_02243038

	thumb_func_start ov23_022430B8
ov23_022430B8: ; 0x022430B8
	ldr r1, _022430C8 ; =0x02257748
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _022430CC ; =0x0000013D
	strb r2, [r1, r0]
	bx lr
	nop
_022430C8: .word 0x02257748
_022430CC: .word 0x0000013D
	thumb_func_end ov23_022430B8

	thumb_func_start ov23_022430D0
ov23_022430D0: ; 0x022430D0
	ldr r1, _022430DC ; =0x02257748
	ldr r1, [r1, #0]
	add r1, #0xc0
	strh r0, [r1]
	bx lr
	nop
_022430DC: .word 0x02257748
	thumb_func_end ov23_022430D0

	thumb_func_start ov23_022430E0
ov23_022430E0: ; 0x022430E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _02243150 ; =0x02257748
	add r5, r2, #0
	ldr r3, [r1, #0]
	add r1, r3, #0
	add r1, #0xc0
	ldrh r4, [r1]
	cmp r4, #0
	beq _0224314E
	mov r1, #0
	add r2, r3, #0
_022430F8:
	ldrh r6, [r2, #0x20]
	cmp r4, r6
	bne _02243114
	ldrh r6, [r2, #0x22]
	cmp r0, r6
	bne _02243114
	lsl r1, r1, #3
	add r0, r3, r1
	strh r7, [r0, #0x24]
	ldr r0, _02243150 ; =0x02257748
	ldr r0, [r0, #0]
	add r0, r0, r1
	strh r5, [r0, #0x26]
	pop {r3, r4, r5, r6, r7, pc}
_02243114:
	add r1, r1, #1
	add r2, #8
	cmp r1, #0x14
	blt _022430F8
	mov r6, #0
	add r2, r3, #0
_02243120:
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	bne _02243142
	lsl r1, r6, #3
	add r2, r3, r1
	strh r4, [r2, #0x20]
	ldr r2, _02243150 ; =0x02257748
	ldr r3, [r2, #0]
	add r3, r3, r1
	strh r0, [r3, #0x22]
	ldr r0, [r2, #0]
	add r0, r0, r1
	strh r7, [r0, #0x24]
	ldr r0, [r2, #0]
	add r0, r0, r1
	strh r5, [r0, #0x26]
	pop {r3, r4, r5, r6, r7, pc}
_02243142:
	add r6, r6, #1
	add r2, #8
	cmp r6, #0x14
	blt _02243120
	bl sub_02022974
_0224314E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243150: .word 0x02257748
	thumb_func_end ov23_022430E0

	thumb_func_start ov23_02243154
ov23_02243154: ; 0x02243154
	push {r4, r5}
	ldr r1, _02243188 ; =0x02257748
	mov r3, #0
	ldr r1, [r1, #0]
	add r2, r1, #0
	add r2, #0xc0
	ldrh r5, [r2]
	add r4, r1, #0
_02243164:
	ldrh r2, [r4, #0x20]
	cmp r5, r2
	bne _0224317A
	ldrh r2, [r4, #0x22]
	cmp r0, r2
	bne _0224317A
	lsl r0, r3, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x26]
	pop {r4, r5}
	bx lr
_0224317A:
	add r3, r3, #1
	add r4, #8
	cmp r3, #0x14
	blt _02243164
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02243188: .word 0x02257748
	thumb_func_end ov23_02243154

	thumb_func_start ov23_0224318C
ov23_0224318C: ; 0x0224318C
	push {r4, r5}
	ldr r1, _022431C0 ; =0x02257748
	mov r3, #0
	ldr r1, [r1, #0]
	add r2, r1, #0
	add r2, #0xc0
	ldrh r5, [r2]
	add r4, r1, #0
_0224319C:
	ldrh r2, [r4, #0x20]
	cmp r5, r2
	bne _022431B2
	ldrh r2, [r4, #0x22]
	cmp r0, r2
	bne _022431B2
	lsl r0, r3, #3
	add r0, r1, r0
	ldrh r0, [r0, #0x24]
	pop {r4, r5}
	bx lr
_022431B2:
	add r3, r3, #1
	add r4, #8
	cmp r3, #0x14
	blt _0224319C
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_022431C0: .word 0x02257748
	thumb_func_end ov23_0224318C

	thumb_func_start ov23_022431C4
ov23_022431C4: ; 0x022431C4
	push {r4, lr}
	ldrb r4, [r2]
	bl sub_0203608C
	cmp r4, r0
	bne _022431E4
	ldr r0, _022431E8 ; =0x02257748
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl ov23_022534A0
	mov r0, #0x19
	bl sub_020360DC
	bl sub_020594FC
_022431E4:
	pop {r4, pc}
	nop
_022431E8: .word 0x02257748
	thumb_func_end ov23_022431C4

	thumb_func_start ov23_022431EC
ov23_022431EC: ; 0x022431EC
	push {r3, r4}
	ldr r3, _02243200 ; =0x02257748
	ldr r4, [r3, #0]
	str r0, [r4, #0]
	ldr r0, [r3, #0]
	str r1, [r0, #4]
	ldr r0, [r3, #0]
	str r2, [r0, #8]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02243200: .word 0x02257748
	thumb_func_end ov23_022431EC

	thumb_func_start ov23_02243204
ov23_02243204: ; 0x02243204
	ldr r0, _02243218 ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	str r2, [r1, #4]
	ldr r0, [r0, #0]
	str r2, [r0, #8]
	bx lr
	nop
_02243218: .word 0x02257748
	thumb_func_end ov23_02243204

	thumb_func_start ov23_0224321C
ov23_0224321C: ; 0x0224321C
	push {r4, lr}
	ldr r0, _02243294 ; =0x02257748
	mov r4, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _02243236
	ldr r1, [r2, #0]
	ldr r2, [r2, #8]
	blx r2
	bl ov23_02243204
	mov r4, #1
_02243236:
	bl ov23_022421EC
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	ldr r0, _02243294 ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254044
	add r0, r4, #0
	pop {r4, pc}
	nop
_02243294: .word 0x02257748
	thumb_func_end ov23_0224321C

	thumb_func_start ov23_02243298
ov23_02243298: ; 0x02243298
	push {r3, r4, r5, lr}
	ldr r2, _0224330C ; =0x02257748
	add r4, r0, #0
	ldr r1, [r2, #0]
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _022432AA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432AA:
	ldr r3, [r1, #0xc]
	ldr r3, [r3, #0x10]
	cmp r3, #0
	beq _022432CC
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r3, [r1, r0]
	add r3, r3, #1
	str r3, [r1, r0]
	ldr r1, [r2, #0]
	ldr r0, [r1, r0]
	cmp r0, #0x64
	ble _022432C8
	bl sub_02022974
_022432C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432CC:
	bl ov23_0224ACC0
	cmp r0, #0
	beq _022432D8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432D8:
	add r0, r4, #0
	bl sub_02058D48
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02058D68
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _022432FA
	cmp r4, #0
	beq _022432FA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022432FA:
	ldr r0, _0224330C ; =0x02257748
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	str r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224330C: .word 0x02257748
	thumb_func_end ov23_02243298

	thumb_func_start ov23_02243310
ov23_02243310: ; 0x02243310
	push {r3, lr}
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	ldr r0, _0224335C ; =0x02257748
	ldr r1, [r0, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov23_02254250
	pop {r3, pc}
	nop
_0224335C: .word 0x02257748
	thumb_func_end ov23_02243310

	thumb_func_start ov23_02243360
ov23_02243360: ; 0x02243360
	push {r3, lr}
	sub sp, #8
	bl ov23_0224DB48
	add r1, sp, #0
	strh r0, [r1]
	bl ov23_0224DB64
	add r1, sp, #0
	strh r0, [r1, #2]
	bl ov23_0224DB84
	add r1, sp, #0
	strb r0, [r1, #4]
	bl ov23_02241670
	add r1, sp, #0
	strb r0, [r1, #5]
	mov r0, #0x46
	add r1, sp, #0
	bl sub_020360D0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov23_02243360

	thumb_func_start ov23_02243390
ov23_02243390: ; 0x02243390
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldrh r1, [r4]
	add r5, r0, #0
	bl ov23_0224DBA0
	ldrh r1, [r4, #2]
	add r0, r5, #0
	bl ov23_0224DBBC
	ldrb r1, [r4, #4]
	add r0, r5, #0
	bl ov23_0224DBD8
	ldrb r1, [r4, #5]
	add r0, r5, #0
	bl ov23_02241690
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02243390

	thumb_func_start ov23_022433B8
ov23_022433B8: ; 0x022433B8
	mov r0, #6
	bx lr
	thumb_func_end ov23_022433B8

	thumb_func_start ov23_022433BC
ov23_022433BC: ; 0x022433BC
	ldr r1, _022433CC ; =0x02257748
	mov r2, #1
	ldr r1, [r1, #0]
	add r0, r1, r0
	add r0, #0xca
	strb r2, [r0]
	bx lr
	nop
_022433CC: .word 0x02257748
	thumb_func_end ov23_022433BC

	thumb_func_start ov23_022433D0
ov23_022433D0: ; 0x022433D0
	ldr r1, _022433F0 ; =0x02257748
	mov r0, #0
	ldr r3, [r1, #0]
	add r2, r0, #0
_022433D8:
	add r1, r3, #0
	add r1, #0xca
	ldrb r1, [r1]
	cmp r1, #0
	beq _022433E4
	add r0, r0, #1
_022433E4:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #8
	blt _022433D8
	bx lr
	nop
_022433F0: .word 0x02257748
	thumb_func_end ov23_022433D0

	thumb_func_start ov23_022433F4
ov23_022433F4: ; 0x022433F4
	ldr r1, _02243404 ; =0x02257748
	ldr r3, _02243408 ; =ov23_0224B5CC
	ldr r1, [r1, #0]
	mov r2, #0
	add r1, r1, r0
	add r1, #0xca
	strb r2, [r1]
	bx r3
	; .align 2, 0
_02243404: .word 0x02257748
_02243408: .word ov23_0224B5CC
	thumb_func_end ov23_022433F4

	thumb_func_start ov23_0224340C
ov23_0224340C: ; 0x0224340C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022434AC ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	ldr r7, _022434AC ; =0x02257760
	add r6, r0, #0
	add r5, r4, #0
	str r4, [sp]
_02243426:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029030
	ldr r1, [r7, #4]
	add r2, r1, r5
	mov r1, #0xaa
	lsl r1, r1, #2
	strb r0, [r2, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202903C
	ldr r1, [r7, #4]
	add r2, r1, r5
	mov r1, #0xa9
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202905C
	ldr r1, [r7, #4]
	add r2, r1, r5
	ldr r1, _022434B0 ; =0x000002A6
	strh r0, [r2, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202907C
	ldr r1, [r7, #4]
	add r2, r1, r5
	ldr r1, _022434B4 ; =0x000002A9
	strb r0, [r2, r1]
	ldr r1, [r7, #4]
	ldr r0, _022434B8 ; =0x00000B46
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224349A
	mov r0, #0xaa
	add r2, r1, r5
	lsl r0, r0, #2
	ldrb r3, [r2, r0]
	cmp r3, #0
	beq _0224349A
	ldr r1, _022434B0 ; =0x000002A6
	sub r0, r0, #4
	ldrh r0, [r2, r0]
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov23_02244E68
	ldr r2, [r7, #4]
	ldr r1, [sp]
	add r2, r2, r1
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r2, r1]
_0224349A:
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	add r5, r5, #6
	str r0, [sp]
	cmp r4, #0x10
	blt _02243426
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022434AC: .word 0x02257760
_022434B0: .word 0x000002A6
_022434B4: .word 0x000002A9
_022434B8: .word 0x00000B46
	thumb_func_end ov23_0224340C

	thumb_func_start ov23_022434BC
ov23_022434BC: ; 0x022434BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02243514 ; =0x02257760
	ldr r2, [r1, #4]
	cmp r2, #0
	bne _02243510
	ldr r2, _02243518 ; =0x00000B48
	str r0, [r1, #4]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02243514 ; =0x02257760
	ldr r0, [r0, #4]
	str r4, [r0, #0x40]
	add r0, r4, #0
	bl sub_0203D174
	bl sub_020298B0
	ldr r2, _02243514 ; =0x02257760
	mov r1, #0xa3
	ldr r3, [r2, #4]
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r3, r1]
	ldr r1, _0224351C ; =0x00000B04
	mov r5, #0xff
_022434F2:
	ldr r3, [r2, #4]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #8
	blt _022434F2
	ldr r0, [r4, #0x24]
	bl ov5_021EB0C8
	add r4, #0x8c
	str r0, [r4, #0]
	bl ov23_02243754
	bl ov23_0224340C
_02243510:
	pop {r3, r4, r5, pc}
	nop
_02243514: .word 0x02257760
_02243518: .word 0x00000B48
_0224351C: .word 0x00000B04
	thumb_func_end ov23_022434BC

	thumb_func_start ov23_02243520
ov23_02243520: ; 0x02243520
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022435A0 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	add r0, #0x8c
	bl ov5_021EB184
	bl ov23_0224382C
	bl ov23_02248BD0
	mov r5, #0
	mov r7, #0xc1
	lsl r7, r7, #2
	ldr r1, _022435A0 ; =0x02257760
	add r6, r5, #0
	add r2, r5, #0
	add r0, r7, #0
_02243544:
	ldr r3, [r1, #4]
	add r4, r3, r6
	ldr r3, [r4, r0]
	cmp r3, #0
	beq _02243550
	str r2, [r4, r7]
_02243550:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0x10
	blt _02243544
	ldr r0, _022435A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243576
	bl sub_0200DA58
	ldr r0, _022435A0 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	str r2, [r1, r0]
_02243576:
	ldr r0, _022435A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243594
	bl sub_020181C4
	ldr r0, _022435A0 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r2, [r1, r0]
_02243594:
	ldr r0, _022435A0 ; =0x02257760
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r0, _022435A4 ; =0x00000B46
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022435A0: .word 0x02257760
_022435A4: .word 0x00000B46
	thumb_func_end ov23_02243520

	thumb_func_start ov23_022435A8
ov23_022435A8: ; 0x022435A8
	push {r3, lr}
	ldr r0, _022435D4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x24]
	bl ov5_021EB0C8
	ldr r1, _022435D4 ; =0x02257760
	ldr r2, [r1, #4]
	ldr r2, [r2, #0x40]
	add r2, #0x8c
	str r0, [r2, #0]
	ldr r1, [r1, #4]
	ldr r0, _022435D8 ; =0x00000B46
	mov r2, #0
	strb r2, [r1, r0]
	bl ov23_0224340C
	bl ov23_02243754
	pop {r3, pc}
	nop
_022435D4: .word 0x02257760
_022435D8: .word 0x00000B46
	thumb_func_end ov23_022435A8

	thumb_func_start ov23_022435DC
ov23_022435DC: ; 0x022435DC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02243668 ; =0x02257760
	add r5, r4, #0
	add r7, r4, #0
_022435E6:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243602
	bl sub_0207136C
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	str r7, [r1, r0]
_02243602:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _022435E6
	bl ov23_02248BD0
	bl ov23_0224382C
	ldr r0, _02243668 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	add r0, #0x8c
	bl ov5_021EB184
	ldr r0, _02243668 ; =0x02257760
	ldr r1, _0224366C ; =0x00000B34
	ldr r3, [r0, #4]
	ldrh r2, [r3, r1]
	cmp r2, #0xa
	blo _02243634
	add r1, r1, #2
	ldrb r1, [r3, r1]
	ldr r0, [r3, #0x40]
	bl sub_0206DEEC
_02243634:
	ldr r0, _02243668 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243646
	bl sub_0200DA58
_02243646:
	ldr r0, _02243668 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243658
	bl sub_020181C4
_02243658:
	ldr r0, _02243668 ; =0x02257760
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, _02243668 ; =0x02257760
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243668: .word 0x02257760
_0224366C: .word 0x00000B34
	thumb_func_end ov23_022435DC

	thumb_func_start ov23_02243670
ov23_02243670: ; 0x02243670
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _022436E4 ; =0x02257760
	add r5, r4, #0
	add r7, r4, #0
_0224367A:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243696
	bl sub_0207136C
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	str r7, [r1, r0]
_02243696:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _0224367A
	bl ov23_02248BD0
	bl ov23_0224340C
	mov r4, #0
	ldr r2, _022436E4 ; =0x02257760
	ldr r0, _022436E8 ; =0x00000B3C
	add r1, r4, #0
_022436AE:
	ldr r3, [r2, #4]
	add r3, r3, r4
	add r4, r4, #1
	strb r1, [r3, r0]
	cmp r4, #8
	blt _022436AE
	ldr r0, _022436E4 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r0, r2, r0
	mov r2, #0x12
	lsl r2, r2, #6
	bl sub_020C4CF4
	ldr r0, _022436E4 ; =0x02257760
	mov r2, #3
	ldr r1, [r0, #4]
	ldr r0, _022436EC ; =0x000007C4
	lsl r2, r2, #8
	add r0, r1, r0
	mov r1, #0
	bl sub_020C4CF4
	bl ov23_02243CE8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022436E4: .word 0x02257760
_022436E8: .word 0x00000B3C
_022436EC: .word 0x000007C4
	thumb_func_end ov23_02243670

	thumb_func_start ov23_022436F0
ov23_022436F0: ; 0x022436F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224374C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r2, r1, r0
	lsl r1, r4, #4
	mov r0, #6
	mul r0, r1
	add r1, r2, r0
	mov r2, #0
	add r0, r2, #0
_0224370A:
	add r2, r2, #1
	strb r0, [r1, #4]
	add r1, r1, #6
	cmp r2, #0x10
	blt _0224370A
	add r0, r4, #0
	bl ov23_02243970
	ldr r0, _0224374C ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _02243750 ; =0x00000B3C
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224374A
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _0224374C ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _02243750 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
	ldr r0, _0224374C ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _02243750 ; =0x00000B3C
	strb r2, [r1, r0]
_0224374A:
	pop {r4, pc}
	; .align 2, 0
_0224374C: .word 0x02257760
_02243750: .word 0x00000B3C
	thumb_func_end ov23_022436F0

	thumb_func_start ov23_02243754
ov23_02243754: ; 0x02243754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	mov r7, #6
	ldr r6, _02243828 ; =0x02257760
	add r5, r4, #0
	lsl r7, r7, #6
_02243762:
	mov r0, #1
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	ldr r1, [r6, #4]
	add r4, r4, #1
	add r1, r1, r5
	add r5, r5, #4
	str r0, [r1, r7]
	cmp r4, #4
	blt _02243762
	mov r0, #0x32
	mov r1, #4
	bl sub_02006C24
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02243828 ; =0x02257760
	mov r2, #0x11
	ldr r1, [r0, #4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009A4C
	ldr r2, _02243828 ; =0x02257760
	mov r1, #0x1a
	ldr r3, [r2, #4]
	lsl r1, r1, #4
	str r0, [r3, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r2, #4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	add r1, r4, #0
	mov r2, #0x12
	bl sub_02009B04
	ldr r2, _02243828 ; =0x02257760
	mov r1, #0x69
	ldr r3, [r2, #4]
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r2, #4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	add r1, r4, #0
	mov r2, #0x10
	bl sub_02009BC4
	ldr r2, _02243828 ; =0x02257760
	mov r1, #0x6a
	ldr r3, [r2, #4]
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r2, #4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	add r1, r4, #0
	mov r2, #0xf
	bl sub_02009BC4
	ldr r1, _02243828 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243828: .word 0x02257760
	thumb_func_end ov23_02243754

	thumb_func_start ov23_0224382C
ov23_0224382C: ; 0x0224382C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #6
	ldr r6, _0224384C ; =0x02257760
	add r5, r4, #0
	lsl r7, r7, #6
_02243838:
	ldr r0, [r6, #4]
	add r0, r0, r5
	ldr r0, [r0, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02243838
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224384C: .word 0x02257760
	thumb_func_end ov23_0224382C

	thumb_func_start ov23_02243850
ov23_02243850: ; 0x02243850
	ldr r3, _02243854 ; =sub_02059514
	bx r3
	; .align 2, 0
_02243854: .word sub_02059514
	thumb_func_end ov23_02243850

	thumb_func_start ov23_02243858
ov23_02243858: ; 0x02243858
	ldr r0, _0224385C ; =0x00000B48
	bx lr
	; .align 2, 0
_0224385C: .word 0x00000B48
	thumb_func_end ov23_02243858

	thumb_func_start ov23_02243860
ov23_02243860: ; 0x02243860
	mov r0, #0x60
	bx lr
	thumb_func_end ov23_02243860

	thumb_func_start ov23_02243864
ov23_02243864: ; 0x02243864
	push {r3, r4}
	ldr r3, _02243890 ; =0x02257760
	lsl r1, r1, #2
	ldr r2, [r3, #4]
	add r4, r2, r1
	ldr r2, _02243894 ; =0x000007C4
	ldr r4, [r4, r2]
	cmp r4, #0
	bne _0224387C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224387C:
	ldrh r4, [r4]
	strh r4, [r0]
	ldr r3, [r3, #4]
	add r1, r3, r1
	ldr r1, [r1, r2]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	pop {r3, r4}
	bx lr
	nop
_02243890: .word 0x02257760
_02243894: .word 0x000007C4
	thumb_func_end ov23_02243864

	thumb_func_start ov23_02243898
ov23_02243898: ; 0x02243898
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	add r0, sp, #0
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldr r1, _02243900 ; =ov23_02243864
	mov r0, #0xc0
	bl ov23_022427DC
	add r0, sp, #0
	bl ov23_02242788
	cmp r0, #0xc0
	bge _022438FE
	ldr r1, _02243904 ; =0x02257760
	mov r3, #0
	ldr r5, [r1, #4]
	ldr r1, _02243908 ; =0x000007C4
_022438C0:
	ldr r2, [r5, r1]
	cmp r2, r4
	beq _022438FE
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #0xc0
	blt _022438C0
	mov r2, #0xbe
	cmp r0, #0xbe
	bgt _022438EC
	ldr r7, _02243904 ; =0x02257760
	ldr r6, _0224390C ; =0x000007C8
	lsl r3, r2, #2
_022438DA:
	ldr r1, [r7, #4]
	ldr r5, _02243908 ; =0x000007C4
	add r1, r1, r3
	ldr r5, [r1, r5]
	sub r2, r2, #1
	str r5, [r1, r6]
	sub r3, r3, #4
	cmp r2, r0
	bge _022438DA
_022438EC:
	ldr r1, _02243904 ; =0x02257760
	lsl r3, r0, #2
	ldr r0, [r1, #4]
	add r2, r0, r3
	ldr r0, _02243908 ; =0x000007C4
	str r4, [r2, r0]
	ldr r1, [r1, #4]
	add r1, r1, r3
	str r4, [r1, r0]
_022438FE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243900: .word ov23_02243864
_02243904: .word 0x02257760
_02243908: .word 0x000007C4
_0224390C: .word 0x000007C8
	thumb_func_end ov23_02243898

	thumb_func_start ov23_02243910
ov23_02243910: ; 0x02243910
	push {r3, r4, r5, r6}
	ldr r2, _02243964 ; =0x02257760
	mov r1, #0
	ldr r5, [r2, #4]
	ldr r2, _02243968 ; =0x000007C4
	mvn r1, r1
	mov r4, #0
_0224391E:
	ldr r3, [r5, r2]
	cmp r3, r0
	bne _02243928
	add r1, r4, #0
	b _02243930
_02243928:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc0
	blt _0224391E
_02243930:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02243960
	cmp r1, #0xbf
	bge _02243954
	ldr r0, _0224396C ; =0x000007C8
	ldr r3, _02243964 ; =0x02257760
	lsl r6, r1, #2
	sub r2, r0, #4
_02243944:
	ldr r4, [r3, #4]
	add r1, r1, #1
	add r5, r4, r6
	ldr r4, [r5, r0]
	add r6, r6, #4
	str r4, [r5, r2]
	cmp r1, #0xbf
	blt _02243944
_02243954:
	ldr r0, _02243964 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x2b
	lsl r0, r0, #6
	str r2, [r1, r0]
_02243960:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02243964: .word 0x02257760
_02243968: .word 0x000007C4
_0224396C: .word 0x000007C8
	thumb_func_end ov23_02243910

	thumb_func_start ov23_02243970
ov23_02243970: ; 0x02243970
	push {r3, r4, r5, r6, r7, lr}
	lsl r5, r0, #4
	ldr r7, _022439CC ; =0x02257760
	mov r6, #0
	add r4, r5, #0
_0224397A:
	mov r0, #0xd1
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #6
	mul r0, r4
	add r0, r1, r0
	bl ov23_02243910
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, #0x10
	blt _0224397A
	mov r6, #0
	mov r0, #6
	add r7, r5, #0
	add r4, r6, #0
	mul r7, r0
_0224399E:
	ldr r0, _022439CC ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r7, r0
	add r2, r4, r1
	mov r1, #0xd2
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _022439C0
	mov r1, #0xd1
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #6
	mul r0, r5
	add r0, r1, r0
	bl ov23_02243898
_022439C0:
	add r6, r6, #1
	add r4, r4, #6
	add r5, r5, #1
	cmp r6, #0x10
	blt _0224399E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022439CC: .word 0x02257760
	thumb_func_end ov23_02243970

	thumb_func_start ov23_022439D0
ov23_022439D0: ; 0x022439D0
	mov r2, #0
_022439D2:
	ldrb r1, [r0, #4]
	cmp r1, #0
	beq _022439E2
	add r2, r2, #1
	add r0, r0, #6
	cmp r2, #0x10
	blt _022439D2
	mov r0, #0
_022439E2:
	bx lr
	thumb_func_end ov23_022439D0

	thumb_func_start ov23_022439E4
ov23_022439E4: ; 0x022439E4
	mov r2, #0
_022439E6:
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _022439F0
	add r0, r2, #0
	bx lr
_022439F0:
	add r2, r2, #1
	add r0, r0, #6
	cmp r2, #0x10
	blt _022439E6
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022439E4

	thumb_func_start ov23_02243A00
ov23_02243A00: ; 0x02243A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02243A78 ; =0x02257760
	ldr r6, [r1, #4]
	mov r1, #0xd1
	lsl r1, r1, #2
	add r1, r6, r1
	sub r0, r0, r1
	mov r1, #6
	bl sub_020E2178
	add r4, r0, #0
	lsr r0, r4, #4
	str r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #6
	add r5, r4, #0
	mul r5, r0
	mov r0, #0xd2
	mov r2, #0
	add r1, r6, r5
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r0, [sp]
	sub r6, r0, #1
	cmp r4, r6
	bhs _02243A5C
	ldr r7, _02243A78 ; =0x02257760
_02243A3C:
	mov r0, #0xd1
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	add r2, r4, #1
	mov r0, #6
	mul r0, r2
	add r0, r1, r0
	add r1, r1, r5
	mov r2, #6
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, r6
	blo _02243A3C
_02243A5C:
	ldr r1, _02243A78 ; =0x02257760
	mov r2, #6
	ldr r3, [r1, #4]
	ldr r1, [sp]
	mov r0, #0
	mul r2, r1
	ldr r1, _02243A7C ; =0x00000342
	add r2, r3, r2
	strb r0, [r2, r1]
	ldr r0, [sp, #4]
	bl ov23_02243970
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243A78: .word 0x02257760
_02243A7C: .word 0x00000342
	thumb_func_end ov23_02243A00

	thumb_func_start ov23_02243A80
ov23_02243A80: ; 0x02243A80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02243AD0 ; =0x02257760
	add r6, r1, #0
	ldr r0, [r0, #4]
	add r7, r2, #0
	ldr r0, [r0, #0x40]
	add r1, r5, #0
	add r2, r6, #0
	str r3, [sp]
	bl sub_02054F68
	cmp r0, #0
	beq _02243AA0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243AA0:
	add r0, r7, #0
	bl ov23_022439D0
	add r4, r0, #0
	bne _02243ABE
	add r0, r7, #0
	bl ov23_02244EA0
	add r4, r0, #0
	bl ov23_02243A00
	add r0, r4, #0
	bl ov23_022439D0
	add r4, r0, #0
_02243ABE:
	strh r5, [r4]
	ldr r0, [sp]
	strh r6, [r4, #2]
	strb r0, [r4, #4]
	add r0, r4, #0
	bl ov23_02243898
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243AD0: .word 0x02257760
	thumb_func_end ov23_02243A80

	thumb_func_start ov23_02243AD4
ov23_02243AD4: ; 0x02243AD4
	push {r0, r1, r2, r3}
	push {r3, lr}
	mov r0, #0x20
	add r1, sp, #8
	bl sub_020360D0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov23_02243AD4

	thumb_func_start ov23_02243AE8
ov23_02243AE8: ; 0x02243AE8
	ldr r3, _02243AEC ; =ov23_022457FC
	bx r3
	; .align 2, 0
_02243AEC: .word ov23_022457FC
	thumb_func_end ov23_02243AE8

	thumb_func_start ov23_02243AF0
ov23_02243AF0: ; 0x02243AF0
	ldr r1, _02243B04 ; =0x02257760
	ldr r3, _02243B08 ; =sub_02035F58
	ldr r2, [r1, #4]
	mov r1, #0xa9
	lsl r1, r1, #2
	add r1, r2, r1
	mov r0, #0x23
	mov r2, #0x60
	bx r3
	nop
_02243B04: .word 0x02257760
_02243B08: .word sub_02035F58
	thumb_func_end ov23_02243AF0

	thumb_func_start ov23_02243B0C
ov23_02243B0C: ; 0x02243B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02243C30 ; =0x02257760
	add r5, r0, #0
	ldr r1, [r1, #4]
	add r7, r2, #0
	cmp r1, #0
	bne _02243B1E
	b _02243C2A
_02243B1E:
	add r1, sp, #0
	strb r5, [r1, #6]
	mov r2, #3
	strb r2, [r1, #7]
	bl sub_02058EE0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02058F18
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058DF8
	ldr r1, _02243C34 ; =0x0000FFFF
	cmp r0, r1
	bne _02243B60
	add r0, r5, #0
	bl sub_02058E4C
	ldr r1, _02243C34 ; =0x0000FFFF
	cmp r0, r1
	bne _02243B60
	mov r1, #7
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243B60:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0205900C
	cmp r0, #0xff
	beq _02243B80
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243B80:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02058108
	cmp r0, #0
	beq _02243BA0
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243BA0:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _02243BC0
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243BC0:
	ldr r0, _02243C30 ; =0x02257760
	add r1, r6, #0
	ldr r0, [r0, #4]
	add r2, r4, #0
	ldr r0, [r0, #0x40]
	bl sub_02054F68
	cmp r0, #0
	beq _02243BE6
	mov r1, #6
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243BE6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224240C
	cmp r0, #0
	bne _02243C20
	ldr r2, _02243C30 ; =0x02257760
	add r1, r4, #0
	ldr r3, [r2, #4]
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r4, r5, #4
	mov r3, #6
	mul r3, r4
	add r2, r2, r3
	ldrb r3, [r7]
	add r0, r6, #0
	bl ov23_02243A80
	cmp r0, #0
	beq _02243C20
	mov r2, #1
	add r1, sp, #0
	strb r2, [r1, #7]
	add r1, sp, #0
	mov r2, #6
	bl sub_020C4DB0
_02243C20:
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
_02243C2A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243C30: .word 0x02257760
_02243C34: .word 0x0000FFFF
	thumb_func_end ov23_02243B0C

	thumb_func_start ov23_02243C38
ov23_02243C38: ; 0x02243C38
	mov r0, #8
	bx lr
	thumb_func_end ov23_02243C38

	thumb_func_start ov23_02243C3C
ov23_02243C3C: ; 0x02243C3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, _02243CE0 ; =0x02257760
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	add r7, r2, #0
	ldr r0, [r0, #0x40]
	add r5, r3, #0
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	str r0, [sp, #0xc]
	cmp r5, #0x40
	blt _02243C60
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243C60:
	ldr r0, _02243CE0 ; =0x02257760
	ldr r2, [r7, #4]
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r4, r1, r0
	asr r0, r5, #3
	lsr r0, r0, #0x1c
	add r0, r5, r0
	asr r0, r0, #4
	add r0, #8
	lsl r1, r0, #4
	add r6, r1, #0
	mov r0, #6
	ldr r1, [r7, #0]
	mul r6, r0
	ldr r0, [r7, #8]
	mul r1, r2
	add r0, r0, r1
	str r0, [r7, #0]
	lsr r1, r0, #0x10
	mov r0, #0x1a
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02243CE4 ; =0x02256788
	ldrb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov23_0224240C
	cmp r0, #0
	bne _02243CDA
	add r0, r4, r6
	bl ov23_022439D0
	cmp r0, #0
	beq _02243CDA
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r4, r6
	add r3, r7, #0
	bl ov23_02243A80
	cmp r0, #0
	beq _02243CDA
	strb r5, [r0, #5]
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02028EF8
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243CDA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243CE0: .word 0x02257760
_02243CE4: .word 0x02256788
	thumb_func_end ov23_02243C3C

	thumb_func_start ov23_02243CE8
ov23_02243CE8: ; 0x02243CE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02243D4C ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r5, r0, #0
	mov r4, #0
_02243CFA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02028F40
	add r7, r0, #0
	beq _02243D44
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02028F5C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02028F88
	ldr r2, _02243D4C ; =0x02257760
	add r1, r0, #0
	ldr r3, [r2, #4]
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r3, r2
	asr r3, r4, #3
	lsr r3, r3, #0x1c
	add r3, r4, r3
	asr r3, r3, #4
	add r3, #8
	add r0, r6, #0
	lsl r6, r3, #4
	mov r3, #6
	mul r3, r6
	add r2, r2, r3
	add r3, r7, #0
	bl ov23_02243A80
	cmp r0, #0
	beq _02243D44
	strb r4, [r0, #5]
_02243D44:
	add r4, r4, #1
	cmp r4, #0x40
	blt _02243CFA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243D4C: .word 0x02257760
	thumb_func_end ov23_02243CE8

	thumb_func_start ov23_02243D50
ov23_02243D50: ; 0x02243D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _02243D9C ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	add r7, r0, #0
	add r5, r4, #0
_02243D68:
	ldr r0, _02243D9C ; =0x02257760
	mov r1, #0xaa
	ldr r0, [r0, #4]
	mov r3, #0xa9
	add r6, r0, r5
	ldr r0, _02243DA0 ; =0x000002A6
	lsl r1, r1, #2
	ldrh r0, [r6, r0]
	lsl r3, r3, #2
	add r2, r4, #0
	str r0, [sp]
	ldr r0, _02243DA4 ; =0x000002A9
	ldrb r0, [r6, r0]
	str r0, [sp, #4]
	ldrb r1, [r6, r1]
	ldrh r3, [r6, r3]
	add r0, r7, #0
	bl sub_02028FE0
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x10
	blt _02243D68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243D9C: .word 0x02257760
_02243DA0: .word 0x000002A6
_02243DA4: .word 0x000002A9
	thumb_func_end ov23_02243D50

	thumb_func_start ov23_02243DA8
ov23_02243DA8: ; 0x02243DA8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_022439D0
	add r5, r0, #0
	bne _02243DE0
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_02244EA0
	bl ov23_02243E20
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_022439D0
	add r5, r0, #0
_02243DE0:
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_022439E4
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	bl sub_020C4DB0
	bl ov23_02243D50
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	ldrb r3, [r5, #4]
	mov r2, #1
	bl ov23_02244E68
	ldr r1, _02243E1C ; =0x02257760
	ldr r2, [r1, #4]
	lsl r1, r4, #2
	add r2, r2, r1
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	nop
_02243E1C: .word 0x02257760
	thumb_func_end ov23_02243DA8

	thumb_func_start ov23_02243E20
ov23_02243E20: ; 0x02243E20
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _02243ECC ; =0x02257760
	mov r6, #0
	ldr r3, [r2, #4]
	mov r2, #0xa9
	lsl r2, r2, #2
	add r2, r3, r2
	ldrh r3, [r0]
	mvn r6, r6
	mov r1, #0
_02243E34:
	ldrh r4, [r2]
	cmp r3, r4
	bne _02243E46
	ldrh r5, [r0, #2]
	ldrh r4, [r2, #2]
	cmp r5, r4
	bne _02243E46
	add r6, r1, #0
	b _02243E4E
_02243E46:
	add r1, r1, #1
	add r2, r2, #6
	cmp r1, #0x10
	blt _02243E34
_02243E4E:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02243EC8
	add r5, r6, #0
	cmp r6, #0xf
	bge _02243E84
	mov r0, #6
	add r4, r6, #0
	ldr r7, _02243ECC ; =0x02257760
	mul r4, r0
_02243E64:
	mov r0, #0xa9
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	add r2, r5, #1
	mov r0, #6
	mul r0, r2
	add r0, r1, r0
	add r1, r1, r4
	mov r2, #6
	bl sub_020C4DB0
	add r5, r5, #1
	add r4, r4, #6
	cmp r5, #0xf
	blt _02243E64
_02243E84:
	ldr r1, _02243ECC ; =0x02257760
	ldr r0, _02243ED0 ; =0x00000302
	ldr r2, [r1, #4]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1, #4]
	lsl r4, r6, #2
	add r1, r1, r4
	add r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243EA0
	bl sub_0207136C
_02243EA0:
	cmp r6, #0xf
	bge _02243EBC
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r2, _02243ECC ; =0x02257760
	sub r1, r0, #4
_02243EAC:
	ldr r3, [r2, #4]
	add r6, r6, #1
	add r5, r3, r4
	ldr r3, [r5, r0]
	add r4, r4, #4
	str r3, [r5, r1]
	cmp r6, #0xf
	blt _02243EAC
_02243EBC:
	ldr r0, _02243ECC ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xd
	lsl r0, r0, #6
	str r2, [r1, r0]
_02243EC8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243ECC: .word 0x02257760
_02243ED0: .word 0x00000302
	thumb_func_end ov23_02243E20

	thumb_func_start ov23_02243ED4
ov23_02243ED4: ; 0x02243ED4
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4, #6]
	cmp r1, r0
	bne _02243F6E
	bl sub_020594FC
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _02243F18
	add r0, r4, #0
	bl ov23_02243DA8
	ldrb r0, [r4, #4]
	bl ov23_0224FD68
	bl ov23_0224219C
	ldrb r1, [r4, #4]
	bl ov23_02254098
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x83
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _02243F74 ; =0x00000623
	bl sub_02005748
	pop {r4, pc}
_02243F18:
	cmp r0, #4
	bne _02243F2C
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x49
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_02243F2C:
	cmp r0, #5
	bne _02243F40
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x37
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_02243F40:
	cmp r0, #6
	bne _02243F54
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x3c
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_02243F54:
	cmp r0, #7
	bne _02243F60
	mov r0, #0
	bl ov23_02243850
	pop {r4, pc}
_02243F60:
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x3b
	mov r2, #1
	bl ov23_02253F40
_02243F6E:
	pop {r4, pc}
	; .align 2, 0
_02243F70: .word ov23_02243850
_02243F74: .word 0x00000623
	thumb_func_end ov23_02243ED4

	thumb_func_start ov23_02243F78
ov23_02243F78: ; 0x02243F78
	ldr r0, _02243F90 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r3, r1, r0
	ldrh r1, [r2]
	mov r0, #6
	mul r0, r1
	add r0, r3, r0
	ldr r3, _02243F94 ; =ov23_02243A00
	bx r3
	nop
_02243F90: .word 0x02257760
_02243F94: .word ov23_02243A00
	thumb_func_end ov23_02243F78

	thumb_func_start ov23_02243F98
ov23_02243F98: ; 0x02243F98
	mov r0, #2
	bx lr
	thumb_func_end ov23_02243F98

	thumb_func_start ov23_02243F9C
ov23_02243F9C: ; 0x02243F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	lsl r1, r0, #4
	str r0, [sp]
	mov r0, #6
	add r7, r1, #0
	mul r7, r0
	ldr r0, _02244018 ; =0x02257760
	add r5, r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r0, r1, r0
	add r6, r0, r7
	bl sub_0203608C
	cmp r0, #0
	bne _02244012
	cmp r4, #0x60
	beq _02243FCA
	bl sub_02022974
_02243FCA:
	mov r0, #0
	add r4, r0, #0
_02243FCE:
	add r0, r0, #1
	strb r4, [r6, #4]
	add r6, r6, #6
	cmp r0, #0x10
	blt _02243FCE
_02243FD8:
	ldrb r3, [r5, #4]
	cmp r3, #0
	beq _02243FF2
	ldr r2, _02244018 ; =0x02257760
	ldrh r0, [r5]
	ldr r6, [r2, #4]
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r6, r2
	ldrh r1, [r5, #2]
	add r2, r2, r7
	bl ov23_02243A80
_02243FF2:
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x10
	blt _02243FD8
	ldr r0, [sp]
	add r1, sp, #4
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #1]
	mov r0, #0x24
	add r1, sp, #4
	mov r2, #2
	bl sub_02035AC4
	bl ov23_02244638
_02244012:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244018: .word 0x02257760
	thumb_func_end ov23_02243F9C

	thumb_func_start ov23_0224401C
ov23_0224401C: ; 0x0224401C
	push {r4, lr}
	ldr r0, _02244040 ; =0x02257760
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224403C
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224403C
	ldr r0, _02244040 ; =0x02257760
	ldrb r2, [r4, #1]
	ldr r1, [r0, #4]
	ldr r0, _02244044 ; =0x00000B45
	strb r2, [r1, r0]
_0224403C:
	pop {r4, pc}
	nop
_02244040: .word 0x02257760
_02244044: .word 0x00000B45
	thumb_func_end ov23_0224401C

	thumb_func_start ov23_02244048
ov23_02244048: ; 0x02244048
	mov r0, #2
	bx lr
	thumb_func_end ov23_02244048

	thumb_func_start ov23_0224404C
ov23_0224404C: ; 0x0224404C
	ldr r0, _02244060 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02244064 ; =0x00000B45
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224405C
	mov r0, #1
	bx lr
_0224405C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02244060: .word 0x02257760
_02244064: .word 0x00000B45
	thumb_func_end ov23_0224404C

	thumb_func_start ov23_02244068
ov23_02244068: ; 0x02244068
	ldr r0, _02244074 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _02244078 ; =0x00000B45
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02244074: .word 0x02257760
_02244078: .word 0x00000B45
	thumb_func_end ov23_02244068

	thumb_func_start ov23_0224407C
ov23_0224407C: ; 0x0224407C
	mov r0, #4
	bx lr
	thumb_func_end ov23_0224407C

	thumb_func_start ov23_02244080
ov23_02244080: ; 0x02244080
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02244138 ; =0x02257760
	add r6, r2, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298B0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058EE0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058F18
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_0224429C
	add r4, r0, #0
	beq _02244132
	add r0, r5, #0
	bl ov23_0224A6B8
	cmp r0, #0
	beq _022440C2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022440C2:
	add r3, sp, #0
	ldrb r2, [r3, #7]
	mov r0, #0xf
	bic r2, r0
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	orr r0, r2
	strb r0, [r3, #7]
	add r0, r4, #0
	bl ov23_0224426C
	add r1, sp, #0
	strb r0, [r1, #6]
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #6
	bl sub_020C4DB0
	mov r0, #0x10
	tst r0, r6
	add r1, sp, #0
	beq _022440FC
	ldrb r2, [r1, #7]
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1, #7]
	b _0224410A
_022440FC:
	ldrb r2, [r1, #7]
	mov r0, #0x40
	bic r2, r0
	add r0, r4, #0
	strb r2, [r1, #7]
	bl ov23_02243A00
_0224410A:
	add r1, sp, #0
	ldrb r0, [r1, #6]
	cmp r0, #8
	blo _0224411A
	ldrb r1, [r1, #5]
	add r0, r7, #0
	bl sub_02028FB4
_0224411A:
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	mov r0, #0x33
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244132:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244138: .word 0x02257760
	thumb_func_end ov23_02244080

	thumb_func_start ov23_0224413C
ov23_0224413C: ; 0x0224413C
	mov r0, #8
	bx lr
	thumb_func_end ov23_0224413C

	thumb_func_start ov23_02244140
ov23_02244140: ; 0x02244140
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #8
	blo _02244152
	bl sub_02022974
_02244152:
	ldrb r3, [r4, #7]
	lsl r0, r3, #0x19
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224417E
	bl sub_0203608C
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, r0
	bne _02244250
	bl ov23_0224219C
	ldr r3, _02244254 ; =ov23_02243850
	mov r1, #0x4e
	mov r2, #1
	bl ov23_02253F40
	bl sub_020594FC
	pop {r3, r4, r5, pc}
_0224417E:
	ldr r1, _02244258 ; =0x02257760
	mov r0, #1
	ldr r2, [r1, #4]
	lsl r1, r3, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _0224425C ; =0x00000B2C
	strb r0, [r2, r1]
	bl sub_0203608C
	ldrb r1, [r4, #6]
	cmp r1, r0
	bne _022441A2
	add r0, r4, #0
	bl ov23_02243E20
	bl ov23_02243D50
_022441A2:
	bl sub_0203608C
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, r0
	bne _02244250
	ldrb r0, [r4, #4]
	bl ov23_0224F730
	cmp r0, #0
	beq _0224423E
	bl sub_0203608C
	ldrb r1, [r4, #6]
	cmp r1, r0
	beq _022441E8
	ldr r0, _02244258 ; =0x02257760
	ldr r2, [r0, #4]
	ldr r0, _02244260 ; =0x00000B34
	ldrh r1, [r2, r0]
	cmp r1, #0
	bne _022441D6
	ldrb r1, [r4, #4]
	add r0, r0, #2
	strb r1, [r2, r0]
_022441D6:
	ldr r0, _02244258 ; =0x02257760
	ldr r1, _02244264 ; =0x0000FFFF
	ldr r3, [r0, #4]
	ldr r0, _02244260 ; =0x00000B34
	ldrh r2, [r3, r0]
	cmp r2, r1
	beq _022441E8
	add r1, r2, #1
	strh r1, [r3, r0]
_022441E8:
	ldr r0, _02244268 ; =0x000005E3
	bl sub_02005748
	bl ov23_0224219C
	add r5, r0, #0
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254050
	bl ov23_0224219C
	ldrb r2, [r4, #4]
	mov r1, #2
	bl ov23_022541F0
	bl ov23_0224219C
	mov r1, #2
	bl ov23_02254204
	bl ov23_0224219C
	ldrb r1, [r4, #4]
	bl ov23_02254098
	bl ov23_0224219C
	ldr r3, _02244254 ; =ov23_02243850
	mov r1, #0x12
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224219C
	bl ov23_02253F98
	b _0224424C
_0224423E:
	bl ov23_0224219C
	ldr r3, _02244254 ; =ov23_02243850
	mov r1, #0x4e
	mov r2, #1
	bl ov23_02253F40
_0224424C:
	bl sub_020594FC
_02244250:
	pop {r3, r4, r5, pc}
	nop
_02244254: .word ov23_02243850
_02244258: .word 0x02257760
_0224425C: .word 0x00000B2C
_02244260: .word 0x00000B34
_02244264: .word 0x0000FFFF
_02244268: .word 0x000005E3
	thumb_func_end ov23_02244140

	thumb_func_start ov23_0224426C
ov23_0224426C: ; 0x0224426C
	push {r3, lr}
	ldr r1, _02244298 ; =0x02257760
	mov r3, #0
	ldr r2, [r1, #4]
	mov r1, #0xd1
	lsl r1, r1, #2
	add r1, r2, r1
_0224427A:
	cmp r1, r0
	bne _02244288
	asr r0, r3, #3
	lsr r0, r0, #0x1c
	add r0, r3, r0
	asr r0, r0, #4
	pop {r3, pc}
_02244288:
	add r3, r3, #1
	add r1, r1, #6
	cmp r3, #0xc0
	blt _0224427A
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02244298: .word 0x02257760
	thumb_func_end ov23_0224426C

	thumb_func_start ov23_0224429C
ov23_0224429C: ; 0x0224429C
	push {r3, lr}
	add r2, sp, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r1, _022442CC ; =ov23_02243864
	mov r0, #0xc0
	bl ov23_022427DC
	add r0, sp, #0
	bl ov23_0224271C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022442BE
	mov r0, #0
	pop {r3, pc}
_022442BE:
	ldr r1, _022442D0 ; =0x02257760
	lsl r0, r0, #2
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _022442D4 ; =0x000007C4
	ldr r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_022442CC: .word ov23_02243864
_022442D0: .word 0x02257760
_022442D4: .word 0x000007C4
	thumb_func_end ov23_0224429C

	thumb_func_start ov23_022442D8
ov23_022442D8: ; 0x022442D8
	push {r3, lr}
	bl ov23_0224429C
	cmp r0, #0
	beq _022442E6
	mov r0, #1
	pop {r3, pc}
_022442E6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_022442D8

	thumb_func_start ov23_022442EC
ov23_022442EC: ; 0x022442EC
	mov r0, #8
	bx lr
	thumb_func_end ov23_022442EC

	thumb_func_start ov23_022442F0
ov23_022442F0: ; 0x022442F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _022443C4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	add r0, r4, #0
	bl ov23_0224162C
	cmp r0, #0
	beq _02244314
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02244314:
	add r0, r4, #0
	bl sub_02058DF8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02058E4C
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_0224429C
	add r5, r0, #0
	bne _02244334
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02244334:
	ldr r0, _022443C4 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _022443C8 ; =0x00000B3C
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02244358
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _022443C4 ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _022443C8 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
_02244358:
	ldrb r1, [r5, #4]
	add r0, r4, #0
	bl ov23_02244830
	add r0, sp, #0
	ldrb r2, [r0, #7]
	mov r1, #0x80
	bic r2, r1
	strb r2, [r0, #7]
	ldrb r1, [r0, #7]
	mov r2, #0xf
	bic r1, r2
	lsl r2, r4, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r0, #7]
	add r0, r5, #0
	bl ov23_0224426C
	add r1, sp, #0
	strb r0, [r1, #6]
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #6
	bl sub_020C4DB0
	add r1, sp, #0
	ldrb r0, [r1, #6]
	cmp r0, #8
	blo _022443A0
	ldrb r1, [r1, #5]
	add r0, r6, #0
	bl sub_02028FB4
_022443A0:
	mov r0, #0x25
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	ldr r0, _022443C4 ; =0x02257760
	ldrb r2, [r5, #4]
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _022443C8 ; =0x00000B3C
	strb r2, [r1, r0]
	add r0, r5, #0
	bl ov23_02243A00
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022443C4: .word 0x02257760
_022443C8: .word 0x00000B3C
	thumb_func_end ov23_022442F0

	thumb_func_start ov23_022443CC
ov23_022443CC: ; 0x022443CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, _02244444 ; =0x02257760
	add r5, r0, #0
	ldr r1, [r1, #4]
	add r4, r2, #0
	add r2, r1, r5
	ldr r1, _02244448 ; =0x00000B3C
	add r7, r3, #0
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _022443EA
	bl ov23_02244844
_022443EA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02244830
	add r1, sp, #0
	ldrb r3, [r1, #7]
	mov r0, #0xf
	bic r3, r0
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xf
	and r0, r2
	orr r0, r3
	strb r0, [r1, #7]
	strb r6, [r1, #6]
	ldrb r2, [r1, #7]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #7]
	strb r4, [r1, #4]
	ldr r0, [sp, #0x20]
	strh r7, [r1]
	strh r0, [r1, #2]
	ldrb r0, [r1, #7]
	mov r2, #0x30
	bic r0, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1a
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0x25
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	ldr r0, _02244444 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02244448 ; =0x00000B3C
	strb r4, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244444: .word 0x02257760
_02244448: .word 0x00000B3C
	thumb_func_end ov23_022443CC

	thumb_func_start ov23_0224444C
ov23_0224444C: ; 0x0224444C
	push {r4, lr}
	ldr r1, _0224446C ; =0x02257760
	add r4, r0, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02244468
	bl sub_02059094
	cmp r0, #0
	beq _02244468
	add r0, r4, #0
	bl ov23_022442F0
	pop {r4, pc}
_02244468:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0224446C: .word 0x02257760
	thumb_func_end ov23_0224444C

	thumb_func_start ov23_02244470
ov23_02244470: ; 0x02244470
	ldr r1, _02244484 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _02244488 ; =0x00000ACB
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	nop
_02244484: .word 0x02257760
_02244488: .word 0x00000ACB
	thumb_func_end ov23_02244470

	thumb_func_start ov23_0224448C
ov23_0224448C: ; 0x0224448C
	push {r4, r5, r6, lr}
	ldr r0, _022445D4 ; =0x02257760
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224449A
	b _022445D2
_0224449A:
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	ldr r0, _022445D8 ; =0x00000622
	bl sub_02005748
	ldr r1, _022445D4 ; =0x02257760
	add r0, r4, #0
	ldr r2, [r1, #4]
	ldr r1, _022445DC ; =0x00000AC4
	add r1, r2, r1
	ldrb r2, [r4, #7]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x19
	add r1, r1, r2
	mov r2, #8
	bl sub_020C4DB0
	ldrb r0, [r4, #4]
	sub r0, #0x18
	cmp r0, #3
	bhi _02244530
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022444D8: ; jump table
	.short _022444E0 - _022444D8 - 2 ; case 0
	.short _022444F4 - _022444D8 - 2 ; case 1
	.short _02244508 - _022444D8 - 2 ; case 2
	.short _0224451C - _022444D8 - 2 ; case 3
_022444E0:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x75
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_022444F4:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x76
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_02244508:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x77
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_0224451C:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x78
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_02244530:
	ldr r0, _022445D4 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022445E4 ; =0x00000ACB
	add r0, r1, r0
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r3, r1, #0x19
	ldrb r2, [r0, r3]
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, r3]
_02244546:
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r5, r0, #0x1c
	bl sub_0203608C
	cmp r5, r0
	bne _02244568
	ldrb r3, [r4, #7]
	ldrb r1, [r4, #4]
	add r0, r5, #0
	lsl r2, r3, #0x18
	lsl r3, r3, #0x1a
	lsr r2, r2, #0x1f
	lsr r3, r3, #0x1e
	bl ov23_022448C4
	b _02244570
_02244568:
	ldrb r1, [r4, #4]
	add r0, r5, #0
	bl ov23_02248B3C
_02244570:
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl ov23_0224B00C
	bl sub_0203608C
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, r0
	bne _0224458E
	add r0, r6, #0
	bl sub_0202970C
_0224458E:
	ldrb r5, [r4, #6]
	bl sub_0203608C
	cmp r5, r0
	bne _022445D2
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r5, r0
	beq _022445A8
	add r0, r6, #0
	bl sub_020296D4
_022445A8:
	ldr r0, _022445D4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	bl sub_0206B42C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0206B43C
	add r0, r4, #0
	bl ov23_02243E20
	bl ov23_02243D50
_022445D2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022445D4: .word 0x02257760
_022445D8: .word 0x00000622
_022445DC: .word 0x00000AC4
_022445E0: .word 0x00000B24
_022445E4: .word 0x00000ACB
	thumb_func_end ov23_0224448C

	thumb_func_start ov23_022445E8
ov23_022445E8: ; 0x022445E8
	push {r4, lr}
	ldrb r2, [r2]
	ldr r1, _02244610 ; =0x02256558
	lsl r3, r2, #2
	ldr r1, [r1, r3]
	ldr r3, _02244614 ; =0x02257760
	ldr r3, [r3, #4]
	add r4, r3, r0
	ldr r3, _02244618 ; =0x00000B3C
	ldrb r3, [r4, r3]
	cmp r2, r3
	beq _02244608
	mov r0, #1
	bl sub_020389C4
	pop {r4, pc}
_02244608:
	cmp r1, #0
	beq _0224460E
	blx r1
_0224460E:
	pop {r4, pc}
	; .align 2, 0
_02244610: .word 0x02256558
_02244614: .word 0x02257760
_02244618: .word 0x00000B3C
	thumb_func_end ov23_022445E8

	thumb_func_start ov23_0224461C
ov23_0224461C: ; 0x0224461C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldrb r4, [r5]
	bl sub_0203608C
	cmp r4, r0
	beq _02244634
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	add r0, r4, #0
	bl sub_02058BA8
_02244634:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224461C

	thumb_func_start ov23_02244638
ov23_02244638: ; 0x02244638
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r0, #0
	add r3, sp, #0
	ldr r1, _02244674 ; =0x02257760
	strb r0, [r3]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0224466E
	ldr r2, _02244678 ; =0x00000B3C
	mov r4, #1
_0224464E:
	ldrb r5, [r1, r2]
	cmp r5, #0
	beq _0224465E
	add r5, r4, #0
	ldrb r6, [r3]
	lsl r5, r0
	orr r5, r6
	strb r5, [r3]
_0224465E:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #8
	blt _0224464E
	mov r0, #0x2d
	add r1, sp, #0
	bl sub_02035B48
_0224466E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02244674: .word 0x02257760
_02244678: .word 0x00000B3C
	thumb_func_end ov23_02244638

	thumb_func_start ov23_0224467C
ov23_0224467C: ; 0x0224467C
	push {r4, r5, r6, lr}
	ldr r0, _022446A8 ; =0x02257760
	ldrb r5, [r2]
	ldr r1, [r0, #4]
	ldr r0, _022446AC ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022446A4
	mov r4, #0
	mov r6, #1
_02244690:
	add r0, r6, #0
	lsl r0, r4
	tst r0, r5
	beq _0224469E
	add r0, r4, #0
	bl ov23_0224B00C
_0224469E:
	add r4, r4, #1
	cmp r4, #8
	blt _02244690
_022446A4:
	pop {r4, r5, r6, pc}
	nop
_022446A8: .word 0x02257760
_022446AC: .word 0x00000B3B
	thumb_func_end ov23_0224467C

	thumb_func_start ov23_022446B0
ov23_022446B0: ; 0x022446B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _022446C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022446C0:
	mov r5, #0
	mov r0, #0x40
	add r6, r5, #0
	str r0, [sp]
_022446C8:
	ldr r0, _02244774 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02244778 ; =0x00000ACB
	add r0, r1, r0
	ldrb r2, [r0, r6]
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _02244724
	ldr r1, [sp]
	bic r2, r1
	strb r2, [r0, r6]
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r6
	ldr r0, _0224477C ; =0x00000ACA
	ldrb r0, [r1, r0]
	cmp r0, #8
	blo _02244706
	add r0, r5, #0
	bl sub_02032EE8
	mov r1, #0
	mov r2, #0x63
	add r3, r7, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _02244724
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244706:
	bl sub_02032EE8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	add r1, r4, #0
	mov r2, #0x64
	add r3, r7, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _02244724
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244724:
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02244780 ; =0x00000B04
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _02244768
	add r0, r5, #0
	bl sub_02032EE8
	add r4, r0, #0
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02244780 ; =0x00000B04
	ldrb r0, [r1, r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, _02244774 ; =0x02257760
	mov r2, #0xff
	ldr r0, [r0, #4]
	add r3, r0, r5
	ldr r0, _02244780 ; =0x00000B04
	strb r2, [r3, r0]
	add r0, r4, #0
	mov r2, #0x74
	add r3, r7, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _02244768
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244768:
	add r5, r5, #1
	add r6, #8
	cmp r5, #8
	blt _022446C8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244774: .word 0x02257760
_02244778: .word 0x00000ACB
_0224477C: .word 0x00000ACA
_02244780: .word 0x00000B04
	thumb_func_end ov23_022446B0

	thumb_func_start ov23_02244784
ov23_02244784: ; 0x02244784
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02244820 ; =0x02257760
	add r5, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02244794
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02244794:
	mov r4, #0
_02244796:
	ldr r0, [r6, #4]
	ldr r1, _02244824 ; =0x00000B24
	add r0, r0, r4
	ldrb r7, [r0, r1]
	cmp r7, #0
	beq _022447BE
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r4, #0
	bl sub_02032EE8
	mov r1, #0
	add r2, r7, #0
	add r3, r5, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _022447BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022447BE:
	ldr r0, [r6, #4]
	ldr r1, _02244828 ; =0x00000B2C
	add r0, r0, r4
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _022447E8
	ldr r1, _02244828 ; =0x00000B2C
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r4, #0
	bl sub_02032EE8
	mov r1, #0
	mov r2, #0x5a
	add r3, r5, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _022447E8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022447E8:
	ldr r0, [r6, #4]
	add r1, r0, r4
	ldr r0, _0224482C ; =0x00000B1C
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02244816
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, [r6, #4]
	mov r2, #0
	add r3, r1, r4
	ldr r1, _0224482C ; =0x00000B1C
	strb r2, [r3, r1]
	add r1, r2, #0
	mov r2, #0x62
	add r3, r5, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _02244816
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244816:
	add r4, r4, #1
	cmp r4, #8
	blt _02244796
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244820: .word 0x02257760
_02244824: .word 0x00000B24
_02244828: .word 0x00000B2C
_0224482C: .word 0x00000B1C
	thumb_func_end ov23_02244784

	thumb_func_start ov23_02244830
ov23_02244830: ; 0x02244830
	push {r3, lr}
	lsl r2, r1, #2
	ldr r1, _02244840 ; =0x022564CC
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _0224483E
	blx r1
_0224483E:
	pop {r3, pc}
	; .align 2, 0
_02244840: .word 0x022564CC
	thumb_func_end ov23_02244830

	thumb_func_start ov23_02244844
ov23_02244844: ; 0x02244844
	push {r3, lr}
	lsl r2, r1, #2
	ldr r1, _02244854 ; =0x022565E4
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _02244852
	blx r1
_02244852:
	pop {r3, pc}
	; .align 2, 0
_02244854: .word 0x022565E4
	thumb_func_end ov23_02244844

	thumb_func_start ov23_02244858
ov23_02244858: ; 0x02244858
	push {r4, lr}
	ldr r2, _022448B4 ; =0x02257760
	add r4, r0, #0
	ldr r3, [r2, #4]
	ldr r2, _022448B8 ; =0x00000B3B
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _022448B2
	lsl r3, r2, #2
	ldr r2, _022448BC ; =0x022566FC
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _02244874
	blx r2
_02244874:
	bl sub_0203608C
	cmp r0, #0
	beq _02244882
	add r0, r4, #0
	bl ov23_0224AD98
_02244882:
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _022448C0 ; =0x00000609
	bl sub_02005748
	ldr r0, _022448B4 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x2a
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	bl ov23_0224B040
	bl ov23_0224219C
	bl ov23_02254044
	ldr r0, _022448B4 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _022448B8 ; =0x00000B3B
	strb r2, [r1, r0]
_022448B2:
	pop {r4, pc}
	; .align 2, 0
_022448B4: .word 0x02257760
_022448B8: .word 0x00000B3B
_022448BC: .word 0x022566FC
_022448C0: .word 0x00000609
	thumb_func_end ov23_02244858

	thumb_func_start ov23_022448C4
ov23_022448C4: ; 0x022448C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov23_02244858
	ldr r0, _022448F0 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022448F4 ; =0x00000B3B
	strb r4, [r1, r0]
	ldr r0, _022448F8 ; =0x02256440
	lsl r1, r4, #2
	ldr r3, [r0, r1]
	cmp r3, #0
	beq _022448EE
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r3
_022448EE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022448F0: .word 0x02257760
_022448F4: .word 0x00000B3B
_022448F8: .word 0x02256440
	thumb_func_end ov23_022448C4

	thumb_func_start ov23_022448FC
ov23_022448FC: ; 0x022448FC
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02059328
	add r6, r0, #0
	ldr r0, _02244950 ; =0x02257760
	add r1, r6, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	bl sub_0203608C
	ldr r1, _02244950 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _02244954 ; =0x00000AC4
	ldrh r4, [r1, r0]
	bl sub_0203608C
	ldr r1, _02244950 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _02244958 ; =0x00000AC6
	ldrh r5, [r1, r0]
	add r0, r6, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_020641A8
	add r2, r0, #0
	mov r0, #0
	add r1, r4, r7
	add r2, r5, r2
	bl sub_02057A94
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244950: .word 0x02257760
_02244954: .word 0x00000AC4
_02244958: .word 0x00000AC6
	thumb_func_end ov23_022448FC

	thumb_func_start ov23_0224495C
ov23_0224495C: ; 0x0224495C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _022449D4 ; =0x02257760
	add r6, r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	str r0, [sp]
	ldr r0, _022449D4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02059328
	str r0, [sp, #4]
	bl sub_0203608C
	ldr r1, _022449D4 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _022449D8 ; =0x00000AC4
	ldrh r4, [r1, r0]
	bl sub_0203608C
	ldr r1, _022449D4 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _022449DC ; =0x00000AC6
	cmp r6, #0
	ldrh r5, [r1, r0]
	bne _022449BC
	ldr r0, [sp, #4]
	bl sub_0206419C
	add r4, r4, r0
	ldr r0, [sp, #4]
	bl sub_020641A8
	add r5, r5, r0
_022449BC:
	ldr r0, [sp]
	cmp r0, r4
	bne _022449CC
	cmp r7, r5
	bne _022449CC
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022449CC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022449D4: .word 0x02257760
_022449D8: .word 0x00000AC4
_022449DC: .word 0x00000AC6
	thumb_func_end ov23_0224495C

	thumb_func_start ov23_022449E0
ov23_022449E0: ; 0x022449E0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_02059354
	pop {r4, pc}
	thumb_func_end ov23_022449E0

	thumb_func_start ov23_022449F4
ov23_022449F4: ; 0x022449F4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_02059354
	pop {r4, pc}
	thumb_func_end ov23_022449F4

	thumb_func_start ov23_02244A08
ov23_02244A08: ; 0x02244A08
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov23_0224AD7C
	add r0, r4, #0
	bl sub_02059378
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244A08

	thumb_func_start ov23_02244A1C
ov23_02244A1C: ; 0x02244A1C
	ldr r3, _02244A24 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02244A24: .word ov23_0224AD7C
	thumb_func_end ov23_02244A1C

	thumb_func_start ov23_02244A28
ov23_02244A28: ; 0x02244A28
	ldr r3, _02244A30 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02244A30: .word ov23_0224AD7C
	thumb_func_end ov23_02244A28

	thumb_func_start ov23_02244A34
ov23_02244A34: ; 0x02244A34
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	bl ov23_0224AD7C
	add r0, r4, #0
	bl sub_02058B94
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244A34

	thumb_func_start ov23_02244A48
ov23_02244A48: ; 0x02244A48
	ldr r3, _02244A50 ; =sub_02058B0C
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02244A50: .word sub_02058B0C
	thumb_func_end ov23_02244A48

	thumb_func_start ov23_02244A54
ov23_02244A54: ; 0x02244A54
	ldr r3, _02244A5C ; =sub_02058B0C
	mov r1, #1
	mov r2, #0
	bx r3
	; .align 2, 0
_02244A5C: .word sub_02058B0C
	thumb_func_end ov23_02244A54

	thumb_func_start ov23_02244A60
ov23_02244A60: ; 0x02244A60
	ldr r3, _02244A68 ; =sub_02058B0C
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_02244A68: .word sub_02058B0C
	thumb_func_end ov23_02244A60

	thumb_func_start ov23_02244A6C
ov23_02244A6C: ; 0x02244A6C
	ldr r3, _02244A74 ; =sub_02058B0C
	mov r1, #3
	mov r2, #0
	bx r3
	; .align 2, 0
_02244A74: .word sub_02058B0C
	thumb_func_end ov23_02244A6C

	thumb_func_start ov23_02244A78
ov23_02244A78: ; 0x02244A78
	ldr r3, _02244A80 ; =sub_02058B0C
	mov r1, #0
	mov r2, #1
	bx r3
	; .align 2, 0
_02244A80: .word sub_02058B0C
	thumb_func_end ov23_02244A78

	thumb_func_start ov23_02244A84
ov23_02244A84: ; 0x02244A84
	ldr r3, _02244A8C ; =sub_02058B0C
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02244A8C: .word sub_02058B0C
	thumb_func_end ov23_02244A84

	thumb_func_start ov23_02244A90
ov23_02244A90: ; 0x02244A90
	ldr r3, _02244A98 ; =sub_02058B0C
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_02244A98: .word sub_02058B0C
	thumb_func_end ov23_02244A90

	thumb_func_start ov23_02244A9C
ov23_02244A9C: ; 0x02244A9C
	ldr r3, _02244AA4 ; =sub_02058B0C
	mov r1, #3
	mov r2, #1
	bx r3
	; .align 2, 0
_02244AA4: .word sub_02058B0C
	thumb_func_end ov23_02244A9C

	thumb_func_start ov23_02244AA8
ov23_02244AA8: ; 0x02244AA8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov23_0224AD7C
	add r0, r4, #0
	bl sub_02058B7C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244AA8

	thumb_func_start ov23_02244ABC
ov23_02244ABC: ; 0x02244ABC
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02244ABC

	thumb_func_start ov23_02244AC0
ov23_02244AC0: ; 0x02244AC0
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r4, r0
	bne _02244AD8
	mov r0, #1
	bl ov23_02245A58
_02244AD8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244AC0

	thumb_func_start ov23_02244ADC
ov23_02244ADC: ; 0x02244ADC
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r4, r0
	bne _02244AF4
	mov r0, #0
	bl ov23_02245A58
_02244AF4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244ADC

	thumb_func_start ov23_02244AF8
ov23_02244AF8: ; 0x02244AF8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02244B1C
	ldr r0, _02244B20 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244EA4
_02244B1C:
	pop {r4, r5, r6, pc}
	nop
_02244B20: .word 0x02257760
	thumb_func_end ov23_02244AF8

	thumb_func_start ov23_02244B24
ov23_02244B24: ; 0x02244B24
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02244B48
	ldr r0, _02244B4C ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	bl ov23_022462A8
_02244B48:
	pop {r4, r5, r6, pc}
	nop
_02244B4C: .word 0x02257760
	thumb_func_end ov23_02244B24

	thumb_func_start ov23_02244B50
ov23_02244B50: ; 0x02244B50
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244B64 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244B64: .word 0x02257760
	thumb_func_end ov23_02244B50

	thumb_func_start ov23_02244B68
ov23_02244B68: ; 0x02244B68
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244B7C ; =0x02257760
	mov r2, #1
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244B7C: .word 0x02257760
	thumb_func_end ov23_02244B68

	thumb_func_start ov23_02244B80
ov23_02244B80: ; 0x02244B80
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244B94 ; =0x02257760
	mov r2, #2
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244B94: .word 0x02257760
	thumb_func_end ov23_02244B80

	thumb_func_start ov23_02244B98
ov23_02244B98: ; 0x02244B98
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BAC ; =0x02257760
	mov r2, #3
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BAC: .word 0x02257760
	thumb_func_end ov23_02244B98

	thumb_func_start ov23_02244BB0
ov23_02244BB0: ; 0x02244BB0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BC4 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	mov r3, #1
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BC4: .word 0x02257760
	thumb_func_end ov23_02244BB0

	thumb_func_start ov23_02244BC8
ov23_02244BC8: ; 0x02244BC8
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BDC ; =0x02257760
	mov r2, #1
	ldr r0, [r0, #4]
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BDC: .word 0x02257760
	thumb_func_end ov23_02244BC8

	thumb_func_start ov23_02244BE0
ov23_02244BE0: ; 0x02244BE0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BF4 ; =0x02257760
	mov r2, #2
	ldr r0, [r0, #4]
	mov r3, #1
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BF4: .word 0x02257760
	thumb_func_end ov23_02244BE0

	thumb_func_start ov23_02244BF8
ov23_02244BF8: ; 0x02244BF8
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244C0C ; =0x02257760
	mov r2, #3
	ldr r0, [r0, #4]
	mov r3, #1
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244C0C: .word 0x02257760
	thumb_func_end ov23_02244BF8

	thumb_func_start ov23_02244C10
ov23_02244C10: ; 0x02244C10
	push {r4, lr}
	ldr r0, _02244C68 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, _02244C68 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r3, r0, #0
	ldr r0, _02244C68 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #0
	ldr r0, [r0, #0x40]
	bl ov5_021F5634
	bl ov23_0224219C
	ldr r2, _02244C68 ; =0x02257760
	mov r1, #0
	ldr r3, [r2, #4]
	ldr r2, _02244C6C ; =0x00000B3B
	ldrb r2, [r3, r2]
	bl ov23_022541B4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x46
	add r3, r2, #0
	bl ov23_02253F60
	add r4, r0, #0
	mov r0, #0x10
	bl sub_02059464
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02244C68: .word 0x02257760
_02244C6C: .word 0x00000B3B
	thumb_func_end ov23_02244C10

	thumb_func_start ov23_02244C70
ov23_02244C70: ; 0x02244C70
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #7
	bhi _02244D70
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244C8A: ; jump table
	.short _02244C9A - _02244C8A - 2 ; case 0
	.short _02244CAA - _02244C8A - 2 ; case 1
	.short _02244CC2 - _02244C8A - 2 ; case 2
	.short _02244CCA - _02244C8A - 2 ; case 3
	.short _02244CE2 - _02244C8A - 2 ; case 4
	.short _02244D3A - _02244C8A - 2 ; case 5
	.short _02244D70 - _02244C8A - 2 ; case 6
	.short _02244D42 - _02244C8A - 2 ; case 7
_02244C9A:
	bl ov23_02244C10
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CAA:
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CC2:
	add r0, r0, #1
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CCA:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CE2:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x1c
	bne _02244D00
	ldr r0, _02244D74 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02244D78 ; =0x00000B3B
	ldrb r1, [r1, r0]
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0x26
	add r1, sp, #4
	bl sub_020360D0
_02244D00:
	ldr r0, [r4, #0x14]
	cmp r0, #0x1e
	ble _02244D70
	mov r0, #0x10
	bl sub_0205948C
	mov r0, #1
	str r0, [sp]
	sub r1, r0, #5
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	bl ov23_0224219C
	bl ov23_02254044
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x18]
	bl sub_02058BA8
	ldr r0, _02244D7C ; =0x0000065F
	bl sub_02005748
	mov r0, #5
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244D3A:
	mov r0, #6
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244D42:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r2, _02244D74 ; =0x02257760
	mov r0, #0xa3
	ldr r3, [r2, #4]
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r3, r0]
	ldr r2, [r2, #4]
	add r0, #0x10
	str r1, [r2, r0]
	ldr r0, _02244D7C ; =0x0000065F
	bl sub_020057A4
_02244D70:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244D74: .word 0x02257760
_02244D78: .word 0x00000B3B
_02244D7C: .word 0x0000065F
	thumb_func_end ov23_02244C70

	thumb_func_start ov23_02244D80
ov23_02244D80: ; 0x02244D80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x1c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02244DD8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02244DAE
	bl sub_02022974
_02244DAE:
	ldr r0, _02244DD8 ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	str r5, [r4, #8]
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x18]
	ldr r0, _02244DDC ; =ov23_02244C70
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02244DD8 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244DD8: .word 0x02257760
_02244DDC: .word ov23_02244C70
	thumb_func_end ov23_02244D80

	thumb_func_start ov23_02244DE0
ov23_02244DE0: ; 0x02244DE0
	push {r3, lr}
	bl sub_02058BE8
	ldr r2, _02244E08 ; =0x02257760
	mov r0, #0xa7
	ldr r1, [r2, #4]
	lsl r0, r0, #2
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _02244E04
	mov r1, #7
	str r1, [r3, #0]
	ldr r2, [r2, #4]
	mov r1, #0
	str r1, [r2, r0]
	ldr r0, _02244E0C ; =0x0000065F
	bl sub_020057A4
_02244E04:
	pop {r3, pc}
	nop
_02244E08: .word 0x02257760
_02244E0C: .word 0x0000065F
	thumb_func_end ov23_02244DE0

	thumb_func_start ov23_02244E10
ov23_02244E10: ; 0x02244E10
	push {r4, lr}
	bl sub_02058BE8
	ldr r0, _02244E5C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02244E5A
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _02244E5C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r2, _02244E5C ; =0x02257760
	mov r0, #0xa3
	ldr r3, [r2, #4]
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r3, r0]
	ldr r2, [r2, #4]
	add r0, #0x10
	str r1, [r2, r0]
	ldr r0, _02244E60 ; =0x0000065F
	bl sub_020057A4
_02244E5A:
	pop {r4, pc}
	; .align 2, 0
_02244E5C: .word 0x02257760
_02244E60: .word 0x0000065F
	thumb_func_end ov23_02244E10

	thumb_func_start ov23_02244E64
ov23_02244E64: ; 0x02244E64
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02244E64

	thumb_func_start ov23_02244E68
ov23_02244E68: ; 0x02244E68
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _02244E98 ; =0x02257760
	add r5, r1, #0
	ldr r0, [r0, #4]
	ldr r1, _02244E9C ; =0x00000B46
	add r4, r2, #0
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _02244E92
	sub r1, r3, #1
	str r1, [sp]
	ldr r0, [r0, #0x40]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ov5_021F4EAC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02244E92:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02244E98: .word 0x02257760
_02244E9C: .word 0x00000B46
	thumb_func_end ov23_02244E68

	thumb_func_start ov23_02244EA0
ov23_02244EA0: ; 0x02244EA0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02244EA0

	thumb_func_start ov23_02244EA4
ov23_02244EA4: ; 0x02244EA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x20
	add r7, r2, #0
	bl sub_02018184
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02244EF0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	add r0, r4, #0
	bl ov23_022451BC
	ldr r0, [r5, #8]
	add r1, r4, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x14]
	strb r6, [r4, #0x19]
	ldr r0, _02244EF4 ; =ov23_022451C8
	mov r2, #0x64
	strb r7, [r4, #0x18]
	bl sub_0200D9E8
	ldr r1, _02244EF0 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244EF0: .word 0x02257760
_02244EF4: .word ov23_022451C8
	thumb_func_end ov23_02244EA4

	thumb_func_start ov23_02244EF8
ov23_02244EF8: ; 0x02244EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	str r3, [sp, #4]
	str r0, [sp, #0x38]
	add r0, r2, #0
	sub r0, r5, r0
	add r4, r1, #0
	str r2, [sp]
	bl sub_020D4070
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r0, r0, r4
	bl sub_020D4070
	ldr r1, [sp]
	mov r7, #0
	cmp r5, r1
	bge _02244F28
	mov r1, #1
	str r1, [sp, #0x1c]
	b _02244F2C
_02244F28:
	sub r1, r7, #1
	str r1, [sp, #0x1c]
_02244F2C:
	ldr r1, [sp, #4]
	cmp r4, r1
	bge _02244F38
	mov r1, #1
	str r1, [sp, #0x18]
	b _02244F3E
_02244F38:
	mov r1, #0
	mvn r1, r1
	str r1, [sp, #0x18]
_02244F3E:
	ldr r1, [sp, #0x20]
	cmp r1, r0
	blt _02244F7C
	neg r6, r1
	ldr r1, [sp]
	cmp r5, r1
	beq _02244FB2
	lsl r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #1
	str r0, [sp, #8]
_02244F56:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022450D4
	add r7, r7, r0
	ldr r0, [sp, #0x1c]
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r6, r6, r0
	bmi _02244F74
	ldr r0, [sp, #8]
	sub r6, r6, r0
	ldr r0, [sp, #0x18]
	add r4, r4, r0
_02244F74:
	ldr r0, [sp]
	cmp r5, r0
	bne _02244F56
	b _02244FB2
_02244F7C:
	ldr r1, [sp, #4]
	neg r6, r0
	cmp r4, r1
	beq _02244FB2
	ldr r1, [sp, #0x20]
	lsl r0, r0, #1
	lsl r1, r1, #1
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
_02244F8E:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022450D4
	add r7, r7, r0
	ldr r0, [sp, #0x18]
	add r4, r4, r0
	ldr r0, [sp, #0x14]
	add r6, r6, r0
	bmi _02244FAC
	ldr r0, [sp, #0x10]
	sub r6, r6, r0
	ldr r0, [sp, #0x1c]
	add r5, r5, r0
_02244FAC:
	ldr r0, [sp, #4]
	cmp r4, r0
	bne _02244F8E
_02244FB2:
	cmp r7, #0
	beq _02244FC6
	ldr r0, _02244FCC ; =0x00000629
	bl sub_020057D4
	cmp r0, #0
	bne _02244FC6
	ldr r0, _02244FCC ; =0x00000629
	bl sub_02005748
_02244FC6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02244FCC: .word 0x00000629
	thumb_func_end ov23_02244EF8

	thumb_func_start ov23_02244FD0
ov23_02244FD0: ; 0x02244FD0
	push {r4, lr}
	ldr r0, _0224505C ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _02245058
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _02244FF0
	cmp r1, #0
	beq _02244FF0
	ldrb r0, [r4, #0x18]
	bl ov23_022448FC
_02244FF0:
	ldr r1, _02245060 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	mov r1, #1
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _0224505C ; =0x02257760
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl sub_02019FE4
	mov r3, #0
	mov r1, #2
	add r2, r3, #0
	lsl r1, r1, #0xa
_02245014:
	strb r2, [r0, r3]
	add r3, r3, #2
	cmp r3, r1
	blt _02245014
	mov r0, #2
	mov r1, #3
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _0224505C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _0224505C ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245058:
	pop {r4, pc}
	nop
_0224505C: .word 0x02257760
_02245060: .word 0x04000050
	thumb_func_end ov23_02244FD0

	thumb_func_start ov23_02245064
ov23_02245064: ; 0x02245064
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #2
	add r6, r2, #0
	mov r4, #0
	bl sub_02019FE4
	add r5, r0, #0
	bne _02245082
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245082:
	ldrh r2, [r6, #8]
	ldr r0, _022450D0 ; =0x0000FFFF
	cmp r2, r0
	beq _022450A2
	ldrh r3, [r6, #0xa]
	cmp r3, r0
	beq _022450A2
	str r5, [sp]
	ldrh r0, [r7]
	ldrh r1, [r7, #2]
	bl ov23_02244EF8
	ldr r0, [sp, #4]
	mov r1, #2
	bl sub_02019448
_022450A2:
	ldrh r0, [r7]
	mov r2, #0
	strh r0, [r6, #8]
	ldrh r0, [r7, #2]
	strh r0, [r6, #0xa]
	mov r0, #2
	lsl r0, r0, #0xa
_022450B0:
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _022450B8
	add r4, r4, #1
_022450B8:
	add r2, r2, #2
	cmp r2, r0
	blt _022450B0
	cmp r4, #0xd
	bge _022450C8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022450C8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022450D0: .word 0x0000FFFF
	thumb_func_end ov23_02245064

	thumb_func_start ov23_022450D4
ov23_022450D4: ; 0x022450D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r2, #0
	asr r2, r0, #2
	lsr r2, r2, #0x1d
	add r2, r0, r2
	asr r0, r2, #3
	asr r2, r1, #2
	lsr r2, r2, #0x1d
	add r2, r1, r2
	asr r1, r2, #3
	lsl r1, r1, #5
	add r0, r0, r1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	ldr r4, _022451B8 ; =0x0225641C
	str r0, [sp, #4]
	add r3, sp, #0xc
	mov r2, #4
_022450FA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022450FA
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [r3, #0]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsl r1, r1, #0xa
	cmp r0, r1
	bls _0224511A
	ldr r0, [sp, #8]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0224511A:
	ldr r1, [sp, #4]
	lsr r0, r0, #0x1f
	lsl r2, r1, #0x1a
	sub r2, r2, r0
	mov r1, #0x1a
	ror r2, r1
	add r0, r0, r2
	ldr r6, [sp, #8]
	add r7, sp, #0xc
	str r0, [sp]
_0224512E:
	ldr r1, [r7, #0]
	ldr r0, [sp, #4]
	add r4, r0, r1
	ldr r0, [sp]
	cmp r0, #0x3e
	bne _02245146
	add r0, r6, #0
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #2
	beq _022451A8
_02245146:
	ldr r0, [sp]
	cmp r0, #0
	bne _02245158
	add r0, r6, #0
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #0
	beq _022451A8
_02245158:
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r4, r0
	bge _022451A8
	cmp r4, #0
	blt _022451A8
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _022451A8
	mov r1, #1
	str r1, [sp, #8]
	cmp r6, #7
	bhi _0224519A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224517E: ; jump table
	.short _0224519A - _0224517E - 2 ; case 0
	.short _02245194 - _0224517E - 2 ; case 1
	.short _0224519A - _0224517E - 2 ; case 2
	.short _02245194 - _0224517E - 2 ; case 3
	.short _0224518E - _0224517E - 2 ; case 4
	.short _02245194 - _0224517E - 2 ; case 5
	.short _0224519A - _0224517E - 2 ; case 6
	.short _02245194 - _0224517E - 2 ; case 7
_0224518E:
	add r0, r0, #3
	strb r0, [r5, r4]
	b _0224519E
_02245194:
	add r0, r0, #2
	strb r0, [r5, r4]
	b _0224519E
_0224519A:
	add r0, r0, #1
	strb r0, [r5, r4]
_0224519E:
	ldrb r0, [r5, r4]
	cmp r0, #5
	bls _022451A8
	mov r0, #0
	strb r0, [r5, r4]
_022451A8:
	add r6, r6, #1
	add r7, r7, #4
	cmp r6, #9
	blo _0224512E
	ldr r0, [sp, #8]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022451B8: .word 0x0225641C
	thumb_func_end ov23_022450D4

	thumb_func_start ov23_022451BC
ov23_022451BC: ; 0x022451BC
	ldr r1, _022451C4 ; =0x0000FFFF
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	; .align 2, 0
_022451C4: .word 0x0000FFFF
	thumb_func_end ov23_022451BC

	thumb_func_start ov23_022451C8
ov23_022451C8: ; 0x022451C8
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _022451D6
	b _022453F0
_022451D6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022451E2: ; jump table
	.short _022451FC - _022451E2 - 2 ; case 0
	.short _02245214 - _022451E2 - 2 ; case 1
	.short _02245248 - _022451E2 - 2 ; case 2
	.short _02245266 - _022451E2 - 2 ; case 3
	.short _0224530E - _022451E2 - 2 ; case 4
	.short _0224530E - _022451E2 - 2 ; case 5
	.short _0224530E - _022451E2 - 2 ; case 6
	.short _0224534E - _022451E2 - 2 ; case 7
	.short _022453A6 - _022451E2 - 2 ; case 8
	.short _022453B2 - _022451E2 - 2 ; case 9
	.short _022453F0 - _022451E2 - 2 ; case 10
	.short _022453C0 - _022451E2 - 2 ; case 11
	.short _022453DC - _022451E2 - 2 ; case 12
_022451FC:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	bl ov23_02244C10
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02245214:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, #0x32
	mov r1, #9
	mov r3, #2
	bl sub_02006E3C
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02245248:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x32
	mov r1, #0xa
	add r3, r2, #0
	bl sub_02006E84
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02245266:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _022453F4 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022453F8 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x13
	bne _0224529E
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, #0x32
	mov r1, #8
	mov r3, #2
	bl sub_02006E60
	b _022452E4
_0224529E:
	ldr r1, _022453FC ; =0x022563D0
	add r0, sp, #0x10
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #4]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #6]
	ldrh r2, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r1, r0, #0x10
	mov r2, #0
	mov r0, #6
	str r2, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	lsr r2, r1, #0xf
	add r1, sp, #0x14
	ldrh r1, [r1, r2]
	ldr r2, [r4, #0x10]
	mov r0, #0x32
	mov r3, #2
	bl sub_02006E60
_022452E4:
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
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224530E:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _022453F0
	mov r0, #1
	sub r1, r0, #5
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #7
	str r0, [r4, #0]
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4d
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _02245400 ; =0x00000661
	bl sub_02005748
	add sp, #0x1c
	pop {r3, r4, pc}
_0224534E:
	ldr r1, _02245404 ; =0x021BF6BC
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	beq _02245386
	ldrh r2, [r1, #0x1c]
	add r0, sp, #0x10
	strh r2, [r0]
	ldrh r1, [r1, #0x1e]
	add r2, r4, #0
	strh r1, [r0, #2]
	ldr r1, [r4, #0x10]
	add r0, sp, #0x10
	bl ov23_02245064
	cmp r0, #0
	beq _0224538C
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0224537A
	mov r0, #0xb
	str r0, [r4, #0]
	b _0224538C
_0224537A:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
	b _0224538C
_02245386:
	add r0, r4, #0
	bl ov23_022451BC
_0224538C:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	bge _022453F0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x3c
	bne _022453F0
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x1c
	pop {r3, r4, pc}
_022453A6:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x1c
	pop {r3, r4, pc}
_022453B2:
	bl sub_0203608C
	ldrb r1, [r4, #0x19]
	bl ov23_02244FD0
	add sp, #0x1c
	pop {r3, r4, pc}
_022453C0:
	mov r0, #0
	strb r0, [r4, #0x19]
	mov r0, #0x10
	bl sub_0205948C
	ldrb r0, [r4, #0x18]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xc
	add sp, #0x1c
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022453DC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #8
	ble _022453F0
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_022453F0:
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_022453F4: .word 0x02257760
_022453F8: .word 0x00000B3B
_022453FC: .word 0x022563D0
_02245400: .word 0x00000661
_02245404: .word 0x021BF6BC
	thumb_func_end ov23_022451C8

	thumb_func_start ov23_02245408
ov23_02245408: ; 0x02245408
	mov r0, #4
	bx lr
	thumb_func_end ov23_02245408

	thumb_func_start ov23_0224540C
ov23_0224540C: ; 0x0224540C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_0224ACC0
	cmp r0, #0
	beq _02245454
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _02245464 ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _02245468 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
	add r0, r4, #0
	bl ov23_0224D87C
	add r1, sp, #0
	strb r0, [r1, #3]
	ldr r0, _02245464 ; =0x02257760
	ldr r0, [r0, #4]
	add r2, r0, r4
	ldr r0, _02245468 ; =0x00000B3C
	ldrb r0, [r2, r0]
	strb r0, [r1]
	strb r4, [r1, #1]
	mov r0, #1
	strb r0, [r1, #2]
	mov r0, #0x2a
	add r1, sp, #0
	bl sub_02035B48
_02245454:
	ldr r0, _02245464 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _02245468 ; =0x00000B3C
	strb r2, [r1, r0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02245464: .word 0x02257760
_02245468: .word 0x00000B3C
	thumb_func_end ov23_0224540C

	thumb_func_start ov23_0224546C
ov23_0224546C: ; 0x0224546C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_0224AD98
	ldr r0, _022454AC ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _022454B0 ; =0x00000B3C
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq _02245488
	add r0, r4, #0
	bl ov23_02244844
_02245488:
	ldr r1, _022454AC ; =0x02257760
	mov r3, #0
	ldr r0, [r1, #4]
	add r2, r0, r4
	ldr r0, _022454B0 ; =0x00000B3C
	strb r3, [r2, r0]
	ldr r1, [r1, #4]
	sub r0, #0x71
	add r3, r1, r0
	lsl r2, r4, #3
	ldrb r1, [r3, r2]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	strb r1, [r3, r2]
	bl ov23_0224D87C
	pop {r4, pc}
	; .align 2, 0
_022454AC: .word 0x02257760
_022454B0: .word 0x00000B3C
	thumb_func_end ov23_0224546C

	thumb_func_start ov23_022454B4
ov23_022454B4: ; 0x022454B4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	ldrb r0, [r4, #2]
	ldrb r5, [r4]
	cmp r0, #0
	ldrb r0, [r4, #1]
	beq _022454C8
	bl ov23_0224B024
	b _022454CC
_022454C8:
	bl ov23_0224B040
_022454CC:
	ldrb r0, [r4, #1]
	bl ov23_02248B98
	ldrb r6, [r4, #1]
	bl sub_0203608C
	cmp r6, r0
	bne _022454F6
	ldr r0, _02245530 ; =0x02256670
	lsl r1, r5, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _022454EC
	ldrb r1, [r4, #3]
	add r0, r6, #0
	blx r2
_022454EC:
	ldr r0, _02245534 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _02245538 ; =0x00000B3B
	strb r2, [r1, r0]
_022454F6:
	sub r5, #0x18
	cmp r5, #3
	bhi _02245510
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245508: ; jump table
	.short _0224551E - _02245508 - 2 ; case 0
	.short _0224551E - _02245508 - 2 ; case 1
	.short _0224551E - _02245508 - 2 ; case 2
	.short _0224551E - _02245508 - 2 ; case 3
_02245510:
	ldr r0, _02245534 ; =0x02257760
	mov r2, #1
	ldr r1, [r0, #4]
	ldrb r0, [r4, #1]
	add r1, r1, r0
	ldr r0, _0224553C ; =0x00000B1C
	strb r2, [r1, r0]
_0224551E:
	bl sub_0203608C
	cmp r0, #0
	beq _0224552C
	ldrb r0, [r4, #1]
	bl ov23_0224AD98
_0224552C:
	pop {r4, r5, r6, pc}
	nop
_02245530: .word 0x02256670
_02245534: .word 0x02257760
_02245538: .word 0x00000B3B
_0224553C: .word 0x00000B1C
	thumb_func_end ov23_022454B4

	thumb_func_start ov23_02245540
ov23_02245540: ; 0x02245540
	push {r3, lr}
	ldr r0, _02245558 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _0224555C ; =0x00000B3B
	ldrb r0, [r1, r0]
	sub r0, #0xb
	cmp r0, #1
	bhi _02245556
	ldrb r0, [r2]
	bl ov23_02245B78
_02245556:
	pop {r3, pc}
	; .align 2, 0
_02245558: .word 0x02257760
_0224555C: .word 0x00000B3B
	thumb_func_end ov23_02245540

	thumb_func_start ov23_02245560
ov23_02245560: ; 0x02245560
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _022455AC ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _022455B0 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
	add r1, sp, #0
	strb r4, [r1, #1]
	ldr r0, _022455AC ; =0x02257760
	strb r5, [r1]
	ldr r0, [r0, #4]
	add r2, r0, r4
	ldr r0, _022455B0 ; =0x00000B3C
	ldrb r0, [r2, r0]
	strb r0, [r1, #2]
	mov r0, #0x2c
	add r1, sp, #0
	bl sub_02035B48
	ldr r0, _022455AC ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, r0, r4
	ldr r0, _022455B0 ; =0x00000B3C
	strb r1, [r2, r0]
	add r0, r5, #0
	bl sub_02059058
	pop {r3, r4, r5, pc}
	nop
_022455AC: .word 0x02257760
_022455B0: .word 0x00000B3C
	thumb_func_end ov23_02245560

	thumb_func_start ov23_022455B4
ov23_022455B4: ; 0x022455B4
	push {r3, r4, r5, lr}
	ldr r0, _02245680 ; =0x02257760
	add r4, r2, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298A0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	bl ov23_0224B024
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _02245616
	add r0, r5, #0
	bl sub_02029744
	ldr r0, _02245680 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x22
	bl sub_0202CFEC
	bl sub_020594FC
	bl ov23_0224219C
	add r5, r0, #0
	ldrb r0, [r4, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254068
	bl ov23_0224219C
	ldr r3, _02245684 ; =ov23_02243850
	mov r1, #0x47
	mov r2, #1
	bl ov23_02253F40
_02245616:
	ldrb r0, [r4, #1]
	bl ov23_02248B98
	ldrb r5, [r4, #1]
	bl sub_0203608C
	cmp r5, r0
	bne _02245662
	ldr r0, _02245680 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02245688 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02245662
	lsl r1, r0, #2
	ldr r0, _0224568C ; =0x022566FC
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02245642
	add r0, r5, #0
	mov r1, #0
	blx r2
_02245642:
	ldr r1, _02245680 ; =0x02257760
	mov r0, #0x2a
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #4
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	ldr r0, _02245688 ; =0x00000B3B
	strb r3, [r1, r0]
	mov r0, #0x10
	bl sub_0205948C
	bl ov23_0224219C
	bl ov23_02254044
_02245662:
	bl sub_0203608C
	cmp r0, #0
	beq _02245670
	ldrb r0, [r4, #1]
	bl ov23_0224AD98
_02245670:
	ldr r0, _02245680 ; =0x02257760
	ldrb r2, [r4, #1]
	ldr r1, [r0, #4]
	ldrb r0, [r4]
	add r1, r1, r0
	ldr r0, _02245690 ; =0x00000B04
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245680: .word 0x02257760
_02245684: .word ov23_02243850
_02245688: .word 0x00000B3B
_0224568C: .word 0x022566FC
_02245690: .word 0x00000B04
	thumb_func_end ov23_022455B4

	thumb_func_start ov23_02245694
ov23_02245694: ; 0x02245694
	mov r0, #3
	bx lr
	thumb_func_end ov23_02245694

	thumb_func_start ov23_02245698
ov23_02245698: ; 0x02245698
	push {r4, lr}
	ldr r1, _022456C8 ; =0x02257760
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _022456C2
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r4, [r2, r1]
	cmp r4, #0
	beq _022456C2
	sub r1, #0xb6
	ldrh r1, [r4, r1]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x50
	bl sub_020E1F6C
	mov r0, #6
	mul r0, r1
	ldrh r0, [r4, r0]
	pop {r4, pc}
_022456C2:
	mov r0, #0
	pop {r4, pc}
	nop
_022456C8: .word 0x02257760
	thumb_func_end ov23_02245698

	thumb_func_start ov23_022456CC
ov23_022456CC: ; 0x022456CC
	push {r4, lr}
	ldr r1, _022456FC ; =0x02257760
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _022456F8
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r4, [r2, r1]
	cmp r4, #0
	beq _022456F8
	sub r1, #0xb6
	ldrh r1, [r4, r1]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x50
	bl sub_020E1F6C
	mov r0, #6
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r4, pc}
_022456F8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022456FC: .word 0x02257760
	thumb_func_end ov23_022456CC

	thumb_func_start ov23_02245700
ov23_02245700: ; 0x02245700
	push {r4, lr}
	ldr r0, _02245720 ; =0x000001E2
	add r4, r1, #0
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0xa0
	bls _0224571E
	ldr r0, _02245724 ; =0x0000054A
	bl sub_02005748
	ldr r0, _02245720 ; =0x000001E2
	mov r1, #0
	strh r1, [r4, r0]
_0224571E:
	pop {r4, pc}
	; .align 2, 0
_02245720: .word 0x000001E2
_02245724: .word 0x0000054A
	thumb_func_end ov23_02245700

	thumb_func_start ov23_02245728
ov23_02245728: ; 0x02245728
	push {r4, lr}
	ldr r0, _0224577C ; =0x02257760
	mov r1, #0xa6
	ldr r2, [r0, #4]
	lsl r1, r1, #2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _02245778
	sub r0, r1, #4
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _02245778
	mov r0, #4
	sub r1, #0xb4
	bl sub_02018184
	mov r2, #0x79
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x2e
	bl sub_020360DC
	ldr r0, _0224577C ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa6
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02245780 ; =ov23_02245700
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _0224577C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa5
	lsl r1, r1, #2
	str r0, [r2, r1]
_02245778:
	pop {r4, pc}
	nop
_0224577C: .word 0x02257760
_02245780: .word ov23_02245700
	thumb_func_end ov23_02245728

	thumb_func_start ov23_02245784
ov23_02245784: ; 0x02245784
	push {r3, lr}
	ldr r0, _022457DC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022457D8
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _022457E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	ldr r0, _022457DC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _022457DC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _022457DC ; =0x02257760
	mov r0, #0xa5
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, r0, #4
	str r3, [r1, r0]
_022457D8:
	pop {r3, pc}
	nop
_022457DC: .word 0x02257760
_022457E0: .word 0x04000050
	thumb_func_end ov23_02245784

	thumb_func_start ov23_022457E4
ov23_022457E4: ; 0x022457E4
	ldr r1, _022457F4 ; =0x02257760
	lsl r0, r0, #1
	ldr r1, [r1, #4]
	mov r2, #1
	add r1, r1, r0
	ldr r0, _022457F8 ; =0x00000B0C
	strh r2, [r1, r0]
	bx lr
	; .align 2, 0
_022457F4: .word 0x02257760
_022457F8: .word 0x00000B0C
	thumb_func_end ov23_022457E4

	thumb_func_start ov23_022457FC
ov23_022457FC: ; 0x022457FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0
	str r5, [sp]
_02245804:
	ldr r0, _02245890 ; =0x02257760
	ldr r1, _02245894 ; =0x00000B0C
	ldr r0, [r0, #4]
	add r2, r0, r5
	ldrh r1, [r2, r1]
	sub r4, r1, #1
	cmp r1, #0
	beq _02245880
	lsl r7, r4, #2
_02245816:
	add r1, r0, r7
	ldr r0, _02245898 ; =0x000007C4
	ldr r6, [r1, r0]
	cmp r6, #0
	beq _0224585A
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0224585A
	add r0, r6, #0
	bl ov23_0224426C
	ldr r1, [sp]
	cmp r0, r1
	beq _02245836
	cmp r0, #8
	blt _0224585A
_02245836:
	ldrh r0, [r6]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	ldr r0, [sp]
	strb r0, [r1, #4]
	mov r0, #0x2f
	add r1, sp, #4
	bl sub_02035B48
	ldr r0, _02245890 ; =0x02257760
	add r2, r4, #2
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02245894 ; =0x00000B0C
	strh r2, [r1, r0]
	b _02245880
_0224585A:
	add r4, r4, #1
	add r7, r7, #4
	cmp r4, #0xc0
	blt _02245870
	ldr r0, _02245890 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02245894 ; =0x00000B0C
	strh r2, [r1, r0]
	b _02245880
_02245870:
	ldr r0, _02245890 ; =0x02257760
	ldr r1, _02245894 ; =0x00000B0C
	ldr r0, [r0, #4]
	add r2, r5, r0
	ldrh r1, [r2, r1]
	sub r1, r1, #1
	cmp r4, r1
	bne _02245816
_02245880:
	ldr r0, [sp]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _02245804
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02245890: .word 0x02257760
_02245894: .word 0x00000B0C
_02245898: .word 0x000007C4
	thumb_func_end ov23_022457FC

	thumb_func_start ov23_0224589C
ov23_0224589C: ; 0x0224589C
	push {r3, r4, r5, lr}
	ldr r0, _02245904 ; =0x02257760
	add r4, r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02245900
	bl sub_0203608C
	ldrb r1, [r4, #4]
	cmp r1, r0
	bne _02245900
	ldr r0, _02245904 ; =0x02257760
	mov r1, #0xa6
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	ldr r5, [r0, r1]
	sub r1, #0xb8
	ldrb r1, [r5, r1]
	mov r2, #6
	add r0, r4, #0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	bl sub_020C4DB0
	ldr r2, _02245904 ; =0x02257760
	mov r1, #0xa6
	ldr r0, [r2, #4]
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	add r0, r1, #0
	sub r0, #0xb8
	ldrb r0, [r4, r0]
	add r3, r0, #1
	add r0, r1, #0
	sub r0, #0xb8
	strb r3, [r4, r0]
	ldr r0, [r2, #4]
	ldr r2, [r0, r1]
	add r0, r1, #0
	sub r0, #0xb8
	ldrb r0, [r2, r0]
	cmp r0, #0x50
	blo _02245900
	mov r0, #0
	sub r1, #0xb8
	strb r0, [r2, r1]
_02245900:
	pop {r3, r4, r5, pc}
	nop
_02245904: .word 0x02257760
	thumb_func_end ov23_0224589C

	thumb_func_start ov23_02245908
ov23_02245908: ; 0x02245908
	mov r0, #6
	bx lr
	thumb_func_end ov23_02245908

	thumb_func_start ov23_0224590C
ov23_0224590C: ; 0x0224590C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _02245930
	ldr r1, _02245934 ; =0x02257760
	mov r0, #0xa7
	ldr r2, [r1, #4]
	lsl r0, r0, #2
	ldr r3, [r2, r0]
	cmp r3, #0
	beq _02245930
	mov r2, #2
	str r2, [r3, #0]
	ldr r1, [r1, #4]
	mov r2, #0
	str r2, [r1, r0]
_02245930:
	pop {r4, pc}
	nop
_02245934: .word 0x02257760
	thumb_func_end ov23_0224590C

	thumb_func_start ov23_02245938
ov23_02245938: ; 0x02245938
	push {r3, lr}
	ldr r0, _02245994 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02245990
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02245998 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	bl sub_0203568C
	ldr r0, _02245994 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _02245994 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _02245994 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245990:
	pop {r3, pc}
	nop
_02245994: .word 0x02257760
_02245998: .word 0x04000050
	thumb_func_end ov23_02245938

	thumb_func_start ov23_0224599C
ov23_0224599C: ; 0x0224599C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022459B2
	cmp r0, #1
	beq _02245A4C
	cmp r0, #2
	beq _02245A14
	pop {r3, r4, r5, pc}
_022459B2:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #1
	bne _022459C4
	bl ov23_02244C10
	str r0, [r4, #4]
	b _022459EA
_022459C4:
	cmp r0, #2
	bne _022459D8
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	b _022459EA
_022459D8:
	cmp r0, #4
	bne _022459EA
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
_022459EA:
	ldr r0, [r4, #0x10]
	cmp r0, #0x1e
	ble _02245A4C
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02245A08
	bl sub_02035678
	b _02245A0C
_02245A08:
	bl sub_02035664
_02245A0C:
	mov r0, #0x10
	bl sub_0205948C
	pop {r3, r4, r5, pc}
_02245A14:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02245A50 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	bl sub_0203568C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r1, _02245A54 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245A4C:
	pop {r3, r4, r5, pc}
	nop
_02245A50: .word 0x04000050
_02245A54: .word 0x02257760
	thumb_func_end ov23_0224599C

	thumb_func_start ov23_02245A58
ov23_02245A58: ; 0x02245A58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r5, [r4, #8]
	str r0, [r4, #0x10]
	ldr r0, _02245A9C ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02245AA0 ; =ov23_0224599C
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02245A9C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0x10
	bl sub_02059464
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245A9C: .word 0x02257760
_02245AA0: .word ov23_0224599C
	thumb_func_end ov23_02245A58

	thumb_func_start ov23_02245AA4
ov23_02245AA4: ; 0x02245AA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _02245AEE
	ldr r0, _02245AF0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02245AEE
	ldr r0, [r1, #0x40]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	ldr r0, _02245AF0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02245AF0 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245AEE:
	pop {r4, pc}
	; .align 2, 0
_02245AF0: .word 0x02257760
	thumb_func_end ov23_02245AA4

	thumb_func_start ov23_02245AF4
ov23_02245AF4: ; 0x02245AF4
	push {r3, r4, r5, lr}
	ldr r0, _02245B70 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02245B6E
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02245B14
	bl sub_0207136C
	mov r0, #0
	str r0, [r4, #0x14]
_02245B14:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _02245B24
	cmp r5, #0
	beq _02245B24
	ldrb r0, [r4, #0xc]
	bl ov23_022448FC
_02245B24:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02245B74 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	ldr r0, _02245B70 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	ldr r0, _02245B70 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02245B70 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245B6E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245B70: .word 0x02257760
_02245B74: .word 0x04000050
	thumb_func_end ov23_02245AF4

	thumb_func_start ov23_02245B78
ov23_02245B78: ; 0x02245B78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _02245B9C
	ldr r0, _02245BA0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02245B9C
	mov r0, #0xe
	str r0, [r1, #0]
	ldr r0, _02245BA4 ; =0x0000060B
	bl sub_02005748
_02245B9C:
	pop {r4, pc}
	nop
_02245BA0: .word 0x02257760
_02245BA4: .word 0x0000060B
	thumb_func_end ov23_02245B78

	thumb_func_start ov23_02245BA8
ov23_02245BA8: ; 0x02245BA8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _02245DE4 ; =0x022563F4
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r1, #0xf
_02245BB6:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02245BB6
	ldr r0, [r4, #0]
	cmp r0, #0xe
	bhi _02245C7A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245BD4: ; jump table
	.short _02245BF2 - _02245BD4 - 2 ; case 0
	.short _02245C06 - _02245BD4 - 2 ; case 1
	.short _02245C1E - _02245BD4 - 2 ; case 2
	.short _02245C26 - _02245BD4 - 2 ; case 3
	.short _02245C3E - _02245BD4 - 2 ; case 4
	.short _02245C70 - _02245BD4 - 2 ; case 5
	.short _02245C70 - _02245BD4 - 2 ; case 6
	.short _02245CFC - _02245BD4 - 2 ; case 7
	.short _02245DDE - _02245BD4 - 2 ; case 8
	.short _02245D20 - _02245BD4 - 2 ; case 9
	.short _02245DDE - _02245BD4 - 2 ; case 10
	.short _02245D50 - _02245BD4 - 2 ; case 11
	.short _02245D6C - _02245BD4 - 2 ; case 12
	.short _02245DDE - _02245BD4 - 2 ; case 13
	.short _02245D92 - _02245BD4 - 2 ; case 14
_02245BF2:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C06:
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C1E:
	add r0, r0, #1
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C26:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C3E:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x3c
	ble _02245C56
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, r5, pc}
_02245C56:
	ldrb r0, [r4, #0xc]
	mov r1, #1
	bl ov23_0224495C
	cmp r0, #0
	beq _02245C7A
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, r5, pc}
_02245C70:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x1e
	bgt _02245C7C
_02245C7A:
	b _02245DDE
_02245C7C:
	mov r0, #0x10
	bl sub_0205948C
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #7
	str r0, [r4, #0]
	ldr r0, _02245DE8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, _02245DE8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02245CD6
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02245DE8 ; =0x02257760
	add r1, r5, #0
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0x40]
	bl ov5_021F4EAC
	str r0, [r4, #0x14]
	ldr r0, _02245DE8 ; =0x02257760
	ldr r1, _02245DEC ; =0xFFFFE000
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	add sp, #0x14
	pop {r4, r5, pc}
_02245CD6:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02245DE8 ; =0x02257760
	add r1, r5, #0
	ldr r0, [r0, #4]
	mov r3, #3
	ldr r0, [r0, #0x40]
	bl ov5_021F4EAC
	str r0, [r4, #0x14]
	ldr r0, _02245DE8 ; =0x02257760
	ldr r1, _02245DF0 ; =0xFFFFD000
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	add sp, #0x14
	pop {r4, r5, pc}
_02245CFC:
	ldr r0, _02245DE8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, r5
	beq _02245D16
	ldr r0, _02245DF4 ; =0x000005EB
	bl sub_02005748
_02245D16:
	str r5, [r4, #0x18]
	mov r0, #0
	add sp, #0x14
	str r0, [r4, #0x10]
	pop {r4, r5, pc}
_02245D20:
	ldr r0, _02245DE8 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r1, _02245DE8 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
	add sp, #0x14
	pop {r4, r5, pc}
_02245D50:
	mov r0, #0
	strb r0, [r4, #0xd]
	mov r0, #0x10
	bl sub_0205948C
	ldrb r0, [r4, #0xc]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #0xc
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245D6C:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #0xc]
	bl ov23_0224495C
	cmp r0, #0
	bne _02245D84
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	ble _02245DDE
_02245D84:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245D92:
	ldr r1, [r4, #0x10]
	add r0, sp, #4
	ldrsb r1, [r0, r1]
	mov r0, #9
	mvn r0, r0
	cmp r1, r0
	beq _02245DDE
	ldr r0, _02245DE8 ; =0x02257760
	lsl r1, r1, #0xc
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #5
	bne _02245DDE
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02245DC6
	bl sub_0207136C
	mov r0, #0
	str r0, [r4, #0x14]
_02245DC6:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _02245DD4
	mov r0, #0xb
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245DD4:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #9
	str r0, [r4, #0]
_02245DDE:
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02245DE4: .word 0x022563F4
_02245DE8: .word 0x02257760
_02245DEC: .word 0xFFFFE000
_02245DF0: .word 0xFFFFD000
_02245DF4: .word 0x000005EB
	thumb_func_end ov23_02245BA8

	thumb_func_start ov23_02245DF8
ov23_02245DF8: ; 0x02245DF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x24
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r5, [r4, #8]
	str r0, [r4, #0x10]
	ldr r0, _02245E4C ; =0x02257760
	strb r6, [r4, #0xd]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	str r0, [r4, #0x18]
	ldr r0, _02245E4C ; =0x02257760
	strb r7, [r4, #0xc]
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02245E50 ; =ov23_02245BA8
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _02245E4C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245E4C: .word 0x02257760
_02245E50: .word ov23_02245BA8
	thumb_func_end ov23_02245DF8

	thumb_func_start ov23_02245E54
ov23_02245E54: ; 0x02245E54
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #4
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02245E74
	mov r0, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov23_02245DF8
_02245E74:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02245E54

	thumb_func_start ov23_02245E78
ov23_02245E78: ; 0x02245E78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #4
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02245E98
	mov r0, #1
	add r1, r4, #0
	add r2, r6, #0
	bl ov23_02245DF8
_02245E98:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02245E78

	thumb_func_start ov23_02245E9C
ov23_02245E9C: ; 0x02245E9C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_0224AD98
	add r0, r4, #0
	bl sub_020593B4
	pop {r4, pc}
	thumb_func_end ov23_02245E9C

	thumb_func_start ov23_02245EAC
ov23_02245EAC: ; 0x02245EAC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02059390
	pop {r4, pc}
	thumb_func_end ov23_02245EAC

	thumb_func_start ov23_02245EC0
ov23_02245EC0: ; 0x02245EC0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0x14
	bl sub_02059390
	pop {r4, pc}
	thumb_func_end ov23_02245EC0

	thumb_func_start ov23_02245ED4
ov23_02245ED4: ; 0x02245ED4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r0, sp, #0xc
	bl sub_020361BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	ble _02245F8A
	mov r0, #0
	add r5, r7, #0
	add r6, r7, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
_02245EF8:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r2
	str r0, [sp, #0xc]
	adc r1, r3
	ldr r0, [sp]
	str r1, [sp, #0x10]
	lsl r2, r0, #8
	lsr r1, r1, #0x18
	add r0, r5, #0
	orr r2, r1
	add r0, #0x48
	strh r2, [r0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r2
	adc r1, r3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r1, #0
	ldr r1, [sp, #4]
	mov r2, #0xc0
	mov r3, #0
	bl sub_020E1F1C
	add r0, r5, #0
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r2
	adc r1, r3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r1, #0
	ldr r1, [sp, #8]
	ldr r2, _02245F90 ; =0x0000FFFF
	mov r3, #0
	bl sub_020E1F1C
	mov r0, #0x45
	strh r1, [r6, #8]
	lsl r0, r0, #2
	ldrb r0, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #2
	cmp r4, r0
	blt _02245EF8
_02245F8A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02245F90: .word 0x0000FFFF
	thumb_func_end ov23_02245ED4

	thumb_func_start ov23_02245F94
ov23_02245F94: ; 0x02245F94
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _02245FA2
	b _02246208
_02245FA2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245FAE: ; jump table
	.short _02245FC8 - _02245FAE - 2 ; case 0
	.short _02245FE2 - _02245FAE - 2 ; case 1
	.short _0224602E - _02245FAE - 2 ; case 2
	.short _02246070 - _02245FAE - 2 ; case 3
	.short _022460BC - _02245FAE - 2 ; case 4
	.short _022460FA - _02245FAE - 2 ; case 5
	.short _02246130 - _02245FAE - 2 ; case 6
	.short _0224616A - _02245FAE - 2 ; case 7
	.short _022461B2 - _02245FAE - 2 ; case 8
	.short _022461BE - _02245FAE - 2 ; case 9
	.short _02246208 - _02245FAE - 2 ; case 10
	.short _022461CE - _02245FAE - 2 ; case 11
	.short _022461F0 - _02245FAE - 2 ; case 12
_02245FC8:
	bl ov23_02244C10
	str r0, [r4, #4]
	ldr r0, _0224620C ; =0x00000111
	mov r1, #0
	strb r1, [r4, r0]
	bl ov23_02246324
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02245FE2:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _02246000
	mov r2, #2
	b _02246002
_02246000:
	mov r2, #0x1c
_02246002:
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_0200985C
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224602E:
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _0224603E
	mov r2, #3
	b _02246040
_0224603E:
	mov r2, #0x1d
_02246040:
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #7
	str r1, [sp, #8]
	mov r1, #4
	str r1, [sp, #0xc]
	mov r1, #0x5d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246070:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _0224608E
	mov r2, #1
	b _02246090
_0224608E:
	mov r2, #0x1b
_02246090:
	mov r3, #0
	str r3, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022460BC:
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _022460CC
	mov r2, #0
	b _022460CE
_022460CC:
	mov r2, #0x1a
_022460CE:
	mov r3, #0
	str r3, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022460FA:
	ldr r0, _02246210 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02246210 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	bl ov23_0224644C
	add r0, r4, #0
	bl ov23_02245ED4
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246130:
	ldr r0, _0224620C ; =0x00000111
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x1e
	bls _02246208
	mov r0, #1
	sub r1, r0, #5
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4c
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #2
	add sp, #0x10
	str r1, [r4, r0]
	pop {r4, pc}
_0224616A:
	ldr r0, _02246210 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02246640
	cmp r0, #0
	beq _02246192
	ldr r0, _02246218 ; =0x00000113
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02246188
	mov r0, #0xb
	str r0, [r4, #0]
	b _02246192
_02246188:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246192:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x3c
	bge _02246208
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	bne _02246208
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022461B2:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022461BE:
	bl sub_0203608C
	ldr r1, _02246218 ; =0x00000113
	ldrb r1, [r4, r1]
	bl ov23_02246220
	add sp, #0x10
	pop {r4, pc}
_022461CE:
	ldr r0, _02246218 ; =0x00000113
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _0224621C ; =0x00000112
	ldrb r0, [r4, r0]
	bl ov23_022448FC
	ldr r0, _0224620C ; =0x00000111
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r4, pc}
_022461F0:
	ldr r0, _0224620C ; =0x00000111
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02246208
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246208:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0224620C: .word 0x00000111
_02246210: .word 0x02257760
_02246214: .word 0x00000B3B
_02246218: .word 0x00000113
_0224621C: .word 0x00000112
	thumb_func_end ov23_02245F94

	thumb_func_start ov23_02246220
ov23_02246220: ; 0x02246220
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _022462A0 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _0224629C
	ldr r0, _022462A4 ; =0x00000113
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _02246246
	cmp r1, #0
	beq _02246246
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	bl ov23_022448FC
_02246246:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	mov r0, #1
	mov r1, #0
	sub r2, r1, #4
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	bl ov23_02246370
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _022462A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _022462A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _022462A0 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_0224629C:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022462A0: .word 0x02257760
_022462A4: .word 0x00000113
	thumb_func_end ov23_02246220

	thumb_func_start ov23_022462A8
ov23_022462A8: ; 0x022462A8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x12
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	add r7, r2, #0
	bl sub_02018144
	mov r2, #0x12
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02246310 ; =0x00000113
	add r1, r0, #0
	strb r6, [r4, r0]
	add r1, #9
	str r5, [r4, r1]
	ldr r1, _02246314 ; =0x02257760
	ldr r2, [r1, #4]
	ldr r1, _02246318 ; =0x00000B3B
	ldrb r1, [r2, r1]
	cmp r1, #0x1d
	bne _022462E4
	mov r1, #0x20
	add r0, r1, #0
	add r0, #0xf4
	b _022462E8
_022462E4:
	mov r1, #0x10
	add r0, r0, #1
_022462E8:
	strb r1, [r4, r0]
	ldr r0, _0224631C ; =0x00000112
	mov r2, #0x64
	strb r7, [r4, r0]
	ldr r0, _02246314 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02246320 ; =ov23_02245F94
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02246314 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246310: .word 0x00000113
_02246314: .word 0x02257760
_02246318: .word 0x00000B3B
_0224631C: .word 0x00000112
_02246320: .word ov23_02245F94
	thumb_func_end ov23_022462A8

	thumb_func_start ov23_02246324
ov23_02246324: ; 0x02246324
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224636C ; =0x02257760
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	add r1, #0x48
	bl sub_020095C4
	ldr r1, _0224636C ; =0x02257760
	ldr r2, [r1, #4]
	str r0, [r2, #0x44]
	ldr r0, [r1, #4]
	mov r2, #6
	add r0, #0x48
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r4, #0
	mov r7, #0x17
	ldr r6, _0224636C ; =0x02257760
	add r5, r4, #0
	lsl r7, r7, #4
_02246352:
	mov r0, #2
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	ldr r1, [r6, #4]
	add r4, r4, #1
	add r1, r1, r5
	add r5, r5, #4
	str r0, [r1, r7]
	cmp r4, #4
	blt _02246352
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224636C: .word 0x02257760
	thumb_func_end ov23_02246324

	thumb_func_start ov23_02246370
ov23_02246370: ; 0x02246370
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _022463A4
	ldr r7, _02246448 ; =0x02257760
	add r5, r4, #0
_0224637E:
	ldr r0, [r7, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224639C
	bl sub_02021BD4
	ldr r0, [r7, #4]
	mov r1, #0
	add r2, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	str r1, [r2, r0]
_0224639C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _0224637E
_022463A4:
	ldr r0, _02246448 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022463CC
	bl sub_02009E08
	bl sub_0201EAD8
	cmp r0, #0
	beq _022463CC
	ldr r0, _02246448 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A4E4
_022463CC:
	ldr r1, _02246448 ; =0x02257760
	mov r0, #0x19
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #4
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022463FC
	bl sub_02009E08
	bl sub_0201F9DC
	cmp r0, #0
	beq _022463FC
	ldr r0, _02246448 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A6DC
_022463FC:
	ldr r6, _02246448 ; =0x02257760
	mov r5, #0
	mov r0, #0x65
	ldr r1, [r6, #4]
	lsl r0, r0, #2
	str r5, [r1, r0]
	add r4, r5, #0
	add r7, r5, #0
_0224640C:
	ldr r0, [r6, #4]
	add r1, r0, r4
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224641E
	bl sub_02009754
_0224641E:
	ldr r0, [r6, #4]
	add r5, r5, #1
	add r1, r0, r4
	mov r0, #0x17
	lsl r0, r0, #4
	add r4, r4, #4
	str r7, [r1, r0]
	cmp r5, #4
	blt _0224640C
	ldr r0, _02246448 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _0224643E
	bl sub_02021964
_0224643E:
	ldr r0, _02246448 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x44]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246448: .word 0x02257760
	thumb_func_end ov23_02246370

	thumb_func_start ov23_0224644C
ov23_0224644C: ; 0x0224644C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r7, r0, #0
	ldr r0, _02246544 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	sub r2, r1, #1
	str r1, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0x17
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r4, _02246544 ; =0x02257760
	mov r6, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x44]
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	str r1, [sp, #0x34]
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r6, [sp, #0x50]
	str r0, [sp, #0x58]
	cmp r7, #0
	ble _0224652E
	add r5, r6, #0
_022464CE:
	mov r0, #0x4b
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	ldr r1, [r4, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blt _022464CE
_0224652E:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02246544: .word 0x02257760
	thumb_func_end ov23_0224644C

	thumb_func_start ov23_02246548
ov23_02246548: ; 0x02246548
	push {r4, lr}
	lsl r4, r0, #2
	ldr r0, _02246570 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224656E
	bl sub_02021BD4
	ldr r0, _02246570 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r4
	mov r0, #0x7e
	lsl r0, r0, #2
	str r2, [r1, r0]
_0224656E:
	pop {r4, pc}
	; .align 2, 0
_02246570: .word 0x02257760
	thumb_func_end ov23_02246548

	thumb_func_start ov23_02246574
ov23_02246574: ; 0x02246574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r3, r0, #0
	add r0, r1, #0
	lsl r5, r3, #2
	add r1, r0, r5
	add r1, #0x48
	ldrh r1, [r1]
	str r1, [sp]
	add r1, r0, r5
	add r1, #0x4a
	ldrh r7, [r1]
	cmp r2, #0
	bne _022465A0
	add r6, r0, #0
	add r6, #8
	lsl r4, r3, #1
	mov r1, #1
	ldrh r2, [r6, r4]
	lsl r1, r1, #0xa
	add r1, r2, r1
	strh r1, [r6, r4]
_022465A0:
	lsl r1, r3, #1
	add r0, r0, r1
	ldrh r0, [r0, #8]
	mov r2, #0x12
	lsl r2, r2, #0xa
	asr r0, r0, #4
	lsl r6, r0, #1
	ldr r0, _0224661C ; =0x020F983C
	lsl r1, r6, #1
	ldrsh r0, [r0, r1]
	mov r3, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	orr r4, r0
	add r0, r6, #1
	lsl r1, r0, #1
	ldr r0, _0224661C ; =0x020F983C
	mov r2, #0xa
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xa
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	bpl _022465F2
	neg r1, r1
_022465F2:
	ldr r0, _02246620 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	add r0, r2, r0
	ldr r2, [r0, r5]
	cmp r2, #0
	beq _02246618
	ldr r2, [sp]
	lsl r2, r2, #0xc
	add r2, r4, r2
	str r2, [sp, #4]
	lsl r2, r7, #0xc
	add r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r0, r5]
	add r1, sp, #4
	bl sub_02021C50
_02246618:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224661C: .word 0x020F983C
_02246620: .word 0x02257760
	thumb_func_end ov23_02246574

	thumb_func_start ov23_02246624
ov23_02246624: ; 0x02246624
	cmp r0, #0
	bne _02246634
	ldr r1, _02246638 ; =0x02257760
	mov r0, #0
	ldrsb r2, [r1, r0]
	ldr r1, [r1, #4]
	ldr r0, _0224663C ; =0x00000B3A
	strb r2, [r1, r0]
_02246634:
	bx lr
	nop
_02246638: .word 0x02257760
_0224663C: .word 0x00000B3A
	thumb_func_end ov23_02246624

	thumb_func_start ov23_02246640
ov23_02246640: ; 0x02246640
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, _02246890 ; =0x02257760
	ldr r2, _02246894 ; =ov23_02246624
	mov r3, #0
	mov r0, #2
	bl sub_02004B70
	ldr r0, _02246898 ; =0x02257760
	ldr r2, [r0, #4]
	ldr r0, _0224689C ; =0x00000B3B
	ldrb r1, [r2, r0]
	cmp r1, #0x1d
	bne _0224666E
	sub r0, r0, #1
	ldrsb r0, [r2, r0]
	bl sub_020D4070
	mov r1, #0x21
	bl sub_020E1F6C
	b _0224667C
_0224666E:
	sub r0, r0, #1
	ldrsb r0, [r2, r0]
	bl sub_020D4070
	mov r1, #0x19
	bl sub_020E1F6C
_0224667C:
	mov r1, #0x11
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	mov r2, #0x7e
	lsl r2, r2, #2
	add r1, r5, r1
	add r1, #0xc8
	strb r0, [r1]
	ldr r0, _02246898 ; =0x02257760
	add r1, r2, #0
	mov r4, #0
	ldr r0, [r0, #4]
	sub r1, #0xe4
	b _022466A4
_02246698:
	lsl r3, r4, #2
	add r3, r0, r3
	ldr r3, [r3, r2]
	cmp r3, #0
	bne _022466AA
	add r4, r4, #1
_022466A4:
	ldrb r3, [r5, r1]
	cmp r4, r3
	blt _02246698
_022466AA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bne _022466BA
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022466BA:
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x4a
	add r7, r5, #0
	mov r4, #0
	str r0, [sp, #0x10]
	add r7, #0x48
	b _0224685E
_022466CA:
	lsl r2, r4, #2
	add r0, r5, r2
	add r0, #0x48
	ldrh r1, [r0]
	cmp r1, #0
	beq _022466EC
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bhs _022466EC
	add r0, r5, r2
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	beq _022466EC
	cmp r0, #0xc0
	blo _022466F4
_022466EC:
	add r0, r4, #0
	bl ov23_02246548
	b _0224685C
_022466F4:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r0, r5, r4
	add r0, #0xf0
	ldrb r0, [r0]
	sub r0, r1, r0
	bpl _02246706
	add r0, #0x28
_02246706:
	add r0, r5, r0
	add r0, #0xc8
	lsl r1, r4, #2
	ldrb r6, [r0]
	add r0, r5, r1
	add r0, #0x48
	add r1, r5, r1
	ldrh r0, [r0]
	add r1, #0x4a
	ldrh r1, [r1]
	sub r0, #0x80
	lsl r0, r0, #0xc
	sub r1, #0x60
	str r0, [sp, #4]
	lsl r0, r1, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #8]
	orr r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	ldr r0, [sp, #8]
	orr r2, r1
	add r0, r2, r0
	bl sub_020BCFF0
	str r0, [sp, #0xc]
	cmp r6, #0
	bne _0224679A
	mov r1, #0xa
	lsl r1, r1, #0x10
	bl sub_020BCFD0
	mov r2, #0x26
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	add r0, r5, r4
	add r0, #0xf0
	strb r1, [r0]
	b _02246852
_0224679A:
	lsl r2, r4, #2
	add r0, r5, r2
	add r0, #0x48
	ldrh r1, [r0]
	add r0, r5, r2
	add r0, #0x4a
	ldrh r0, [r0]
	sub r1, #0x80
	sub r0, #0x60
	bne _022467C0
	cmp r1, #0
	ldrh r0, [r7, r2]
	bge _022467BA
	sub r0, r0, r6
	strh r0, [r7, r2]
	b _02246852
_022467BA:
	add r0, r0, r6
	strh r0, [r7, r2]
	b _02246852
_022467C0:
	cmp r1, #0
	bne _022467E0
	cmp r0, #0
	bge _022467D4
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, r2]
	sub r1, r0, r6
	ldr r0, [sp, #0x10]
	strh r1, [r0, r2]
	b _02246852
_022467D4:
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, r2]
	add r1, r0, r6
	ldr r0, [sp, #0x10]
	strh r1, [r0, r2]
	b _02246852
_022467E0:
	bl sub_020BDA20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r6, #0xc
	add r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _022468A4 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r2, [sp]
	add r1, #0x60
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	asr r3, r2, #0x1f
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _022468A4 ; =0x020F983C
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	lsl r0, r4, #2
	add r0, r5, r0
	add r1, #0x80
	add r0, #0x48
	strh r1, [r0]
_02246852:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov23_02246574
_0224685C:
	add r4, r4, #1
_0224685E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0224686A
	b _022466CA
_0224686A:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	cmp r1, #0x28
	blo _0224687E
	mov r1, #0
	strb r1, [r5, r0]
_0224687E:
	ldr r0, _02246898 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246890: .word 0x02257760
_02246894: .word ov23_02246624
_02246898: .word 0x02257760
_0224689C: .word 0x00000B3B
_022468A0: .word 0x00000000
_022468A4: .word 0x020F983C
	thumb_func_end ov23_02246640

	thumb_func_start ov23_022468A8
ov23_022468A8: ; 0x022468A8
	push {r3, lr}
	ldr r1, _022468BC ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _022468BA
	blx r1
_022468BA:
	pop {r3, pc}
	; .align 2, 0
_022468BC: .word 0x02257760
	thumb_func_end ov23_022468A8

	thumb_func_start ov23_022468C0
ov23_022468C0: ; 0x022468C0
	ldr r0, _022468D4 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022468D8 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x17
	bne _022468D0
	mov r0, #0x14
	bx lr
_022468D0:
	mov r0, #7
	bx lr
	; .align 2, 0
_022468D4: .word 0x02257760
_022468D8: .word 0x00000B3B
	thumb_func_end ov23_022468C0

	thumb_func_start ov23_022468DC
ov23_022468DC: ; 0x022468DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x24
	bl sub_020361BC
	bl ov23_022468C0
	str r0, [sp, #4]
	ldr r0, _02246A70 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02246A74 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x17
	bne _02246922
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r2, r0
	adc r3, r1
	mov r1, #0
	str r0, [sp, #0x24]
	lsr r0, r3, #0x1f
	lsl r1, r1, #1
	orr r1, r0
	add r0, r1, #1
	str r3, [sp, #0x28]
	str r0, [sp, #0xc]
_02246922:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r2, r0
	adc r3, r1
	str r0, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, r3, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_020E1F1C
	ldr r0, [sp, #0xc]
	mov r6, #0
	add r0, r0, r1
	add r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _02246958
	b _02246A6A
_02246958:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
_02246962:
	ldr r0, [sp, #4]
	sub r0, r0, r6
	sub r4, r0, #1
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bge _02246976
	add r1, r5, r4
	mov r0, #0
	strb r0, [r1, #8]
	b _0224698A
_02246976:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _02246984
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #8]
	b _0224698A
_02246984:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #8]
_0224698A:
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	lsl r1, r0, #2
	ldr r0, _02246A78 ; =0x022563E8
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x30]
	str r0, [sp]
	lsl r7, r0, #1
	mov r0, #0xc0
	sub r0, r0, r7
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	bl sub_020E1F1C
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r1, r1, r2
	adc r0, r3
	str r1, [sp, #0x24]
	mov r1, #1
	lsl r1, r1, #8
	str r0, [sp, #0x28]
	sub r2, r1, r7
	beq _022469CA
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl sub_020E1F1C
	add r0, r1, #0
_022469CA:
	lsl r1, r4, #3
	add r7, r5, r1
	ldr r1, [sp]
	add r0, r1, r0
	lsl r0, r0, #0xc
	str r0, [r7, #0x44]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	add r2, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r0, r2
	str r0, [sp, #0x24]
	adc r3, r1
	ldr r0, [sp, #0x10]
	str r3, [sp, #0x28]
	cmp r0, #0
	beq _02246A04
	ldr r1, [sp, #0x18]
	add r0, r3, #0
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl sub_020E1F1C
	add r3, r1, #0
_02246A04:
	ldr r0, [sp]
	add r0, r0, r3
	lsl r0, r0, #0xc
	str r0, [r7, #0x48]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x38]
	add r0, r3, r0
	adc r2, r1
	str r0, [sp, #0x24]
	lsl r0, r4, #1
	add r4, r5, r0
	str r2, [sp, #0x28]
	add r0, r2, #0
	ldr r1, [sp, #0x1c]
	ldr r2, _02246A7C ; =0x0000FFFF
	mov r3, #0
	bl sub_020E1F1C
	strh r1, [r4, #0x1c]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r2, r0
	adc r3, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, _02246A7C ; =0x0000FFFF
	str r3, [sp, #0x28]
	add r0, r3, #0
	mov r3, #0
	bl sub_020E1F1C
	mov r0, #0x4d
	lsl r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	bge _02246A6A
	b _02246962
_02246A6A:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02246A70: .word 0x02257760
_02246A74: .word 0x00000B3B
_02246A78: .word 0x022563E8
_02246A7C: .word 0x0000FFFF
	thumb_func_end ov23_022468DC

	thumb_func_start ov23_02246A80
ov23_02246A80: ; 0x02246A80
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _02246A8E
	b _02246CD6
_02246A8E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246A9A: ; jump table
	.short _02246AB4 - _02246A9A - 2 ; case 0
	.short _02246AD0 - _02246A9A - 2 ; case 1
	.short _02246B10 - _02246A9A - 2 ; case 2
	.short _02246B44 - _02246A9A - 2 ; case 3
	.short _02246B84 - _02246A9A - 2 ; case 4
	.short _02246BB4 - _02246A9A - 2 ; case 5
	.short _02246BCA - _02246A9A - 2 ; case 6
	.short _02246C0A - _02246A9A - 2 ; case 7
	.short _02246C6E - _02246A9A - 2 ; case 8
	.short _02246C84 - _02246A9A - 2 ; case 9
	.short _02246CD6 - _02246A9A - 2 ; case 10
	.short _02246C98 - _02246A9A - 2 ; case 11
	.short _02246CBC - _02246A9A - 2 ; case 12
_02246AB4:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	bl ov23_02246324
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246AD0:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02246CDC ; =0x02257760
	mov r2, #6
	ldr r1, [r0, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_0200985C
	ldr r1, _02246CDC ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246B10:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #7
	str r2, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _02246CDC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02246CDC ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246B44:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02246CDC ; =0x02257760
	mov r2, #5
	ldr r1, [r0, #4]
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246CDC ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246B84:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, #4
	ldr r0, _02246CDC ; =0x02257760
	str r2, [sp, #8]
	ldr r1, [r0, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246CDC ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246BB4:
	add r0, r4, #0
	bl ov23_022468DC
	add r0, r4, #0
	bl ov23_02246D44
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246BCA:
	mov r0, #0x57
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x1e
	bls _02246CD6
	mov r1, #3
	ldr r0, _02246CE0 ; =0x0400006C
	mvn r1, r1
	bl sub_020BDEC4
	mov r0, #7
	str r0, [r4, #0]
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4d
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #0x16
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x66
	lsl r0, r0, #4
	bl sub_02005748
	add sp, #0x10
	pop {r4, pc}
_02246C0A:
	mov r0, #7
	str r0, [sp]
	ldr r0, _02246CE4 ; =0x04000050
	mov r1, #0x10
	mov r2, #1
	mov r3, #0xe
	bl sub_020BF55C
	ldr r0, _02246CDC ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02246F20
	cmp r0, #0
	beq _02246C4E
	mov r0, #0x66
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02246CE8 ; =0x0000015E
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02246C44
	mov r0, #0xb
	str r0, [r4, #0]
	b _02246C4E
_02246C44:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246C4E:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0x3c
	bge _02246CD6
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	bne _02246CD6
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_02246C6E:
	mov r0, #0x66
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_02246C84:
	mov r0, #0xa
	str r0, [r4, #0]
	bl sub_0203608C
	ldr r1, _02246CE8 ; =0x0000015E
	ldrb r1, [r4, r1]
	bl ov23_02247144
	add sp, #0x10
	pop {r4, pc}
_02246C98:
	ldr r0, _02246CE8 ; =0x0000015E
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02246CEC ; =0x0000015D
	ldrb r0, [r4, r0]
	bl ov23_022448FC
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r4, pc}
_02246CBC:
	mov r0, #0x57
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02246CD6
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246CD6:
	add sp, #0x10
	pop {r4, pc}
	nop
_02246CDC: .word 0x02257760
_02246CE0: .word 0x0400006C
_02246CE4: .word 0x04000050
_02246CE8: .word 0x0000015E
_02246CEC: .word 0x0000015D
	thumb_func_end ov23_02246A80

	thumb_func_start ov23_02246CF0
ov23_02246CF0: ; 0x02246CF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x59
	mov r0, #4
	lsl r1, r1, #2
	add r6, r2, #0
	bl sub_02018184
	mov r2, #0x59
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02246D34 ; =0x0000015E
	mov r2, #0x64
	strb r5, [r4, r0]
	ldr r0, _02246D38 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02246D3C ; =ov23_02246A80
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02246D38 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, _02246D40 ; =0x0000015D
	strb r6, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246D34: .word 0x0000015E
_02246D38: .word 0x02257760
_02246D3C: .word ov23_02246A80
_02246D40: .word 0x0000015D
	thumb_func_end ov23_02246CF0

	thumb_func_start ov23_02246D44
ov23_02246D44: ; 0x02246D44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp, #0x2c]
	ldr r0, _02246E8C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02246E8C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02246E8C ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x17
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r0, _02246E8C ; =0x02257760
	mov r6, #0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x44]
	str r0, [sp, #0x30]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x34]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
	lsr r0, r1, #5
	str r1, [sp, #0x38]
	str r6, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x30
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x58]
	mov r0, #4
	str r6, [sp, #0x54]
	str r0, [sp, #0x5c]
	bl ov23_022468C0
	cmp r0, #0
	ble _02246E78
	add r5, r6, #0
	ldr r4, _02246E8C ; =0x02257760
	add r7, r5, #0
_02246DEA:
	mov r0, #0x4b
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl sub_02021AA0
	ldr r1, [r4, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CF8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	add r1, r1, r6
	ldrb r1, [r1, #8]
	lsl r1, r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	add r5, r5, #4
	add r7, r7, #4
	add r6, r6, #1
	bl ov23_022468C0
	cmp r6, r0
	blt _02246DEA
_02246E78:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246E8C: .word 0x02257760
	thumb_func_end ov23_02246D44

	thumb_func_start ov23_02246E90
ov23_02246E90: ; 0x02246E90
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02246F18 ; =0x02257760
	add r4, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r0, r5, #2
	ldr r2, [r1, r0]
	cmp r2, #0
	beq _02246F14
	lsl r2, r5, #3
	add r3, r4, r2
	ldr r2, [r3, #0x44]
	str r2, [sp]
	ldr r2, [r3, #0x48]
	str r2, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x4d
	lsl r0, r0, #2
	add r2, r4, r0
	lsl r1, r5, #1
	mov r3, #0x64
	add r4, r5, #0
	mul r4, r3
	mov r3, #0x25
	lsl r3, r3, #4
	ldrh r0, [r2, r1]
	add r3, r4, r3
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r0, [r2, r1]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02246F1C ; =0x020F983C
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	lsl r0, r0, #0x10
	mov r1, #5
	asr r0, r0, #0x10
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	mov r1, #1
	lsl r1, r1, #0xc
	sub r0, r1, r0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246F18 ; =0x02257760
	ldr r1, [r0, #4]
	lsl r0, r5, #2
	add r1, r1, r0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C70
_02246F14:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02246F18: .word 0x02257760
_02246F1C: .word 0x020F983C
	thumb_func_end ov23_02246E90

	thumb_func_start ov23_02246F20
ov23_02246F20: ; 0x02246F20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r6, #0
	str r1, [sp]
	add r4, r6, #0
	bl ov23_022468C0
	cmp r0, #0
	ble _02246F56
	ldr r5, [sp]
_02246F34:
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02246F48
	ldr r1, [sp]
	add r0, r4, #0
	bl ov23_02246E90
	b _02246F4A
_02246F48:
	add r6, r6, #1
_02246F4A:
	add r5, r5, #4
	add r4, r4, #1
	bl ov23_022468C0
	cmp r4, r0
	blt _02246F34
_02246F56:
	bl ov23_022468C0
	cmp r6, r0
	bne _02246F64
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02246F64:
	ldr r0, _022470F0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02247034
	mov r5, #0
	bl ov23_022468C0
	cmp r0, #0
	ble _02247034
	ldr r6, [sp]
	add r4, r6, #0
_02246F7A:
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02247026
	ldr r0, _022470F0 ; =0x021BF6BC
	ldrh r0, [r0, #0x1e]
	lsl r1, r0, #0xc
	ldr r0, [r4, #0x48]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	asr r7, r0, #0x1f
	ldr r0, _022470F0 ; =0x021BF6BC
	ldrh r0, [r0, #0x1c]
	lsl r1, r0, #0xc
	ldr r0, [r4, #0x44]
	sub r0, r1, r0
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl sub_020E1F1C
	add r7, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xa
	add r2, r1, r0
	ldr r1, [sp, #8]
	ldr r0, _022470F4 ; =0x00000000
	adc r1, r0
	str r1, [sp, #8]
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	ldr r2, _022470F4 ; =0x00000000
	add r0, r7, r0
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	bl sub_020BCFF0
	ldr r1, [sp]
	add r1, r1, r5
	ldrb r1, [r1, #8]
	lsl r2, r1, #2
	ldr r1, _022470F8 ; =0x022563E8
	ldr r1, [r1, r2]
	lsl r1, r1, #0xc
	cmp r1, r0
	ble _02247026
	ldr r0, _022470FC ; =0x00000626
	bl sub_02005748
	ldr r0, _02247100 ; =0x02257760
	lsl r4, r5, #2
	ldr r0, [r0, #4]
	add r1, r0, r4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp]
	add r1, r1, r5
	ldrb r1, [r1, #8]
	lsl r1, r1, #1
	add r1, r1, #1
	bl sub_02021D6C
	ldr r0, [sp]
	mov r1, #1
	add r0, r0, r4
	add r0, #0xe4
	str r1, [r0, #0]
	b _02247034
_02247026:
	add r6, r6, #4
	add r4, #8
	add r5, r5, #1
	bl ov23_022468C0
	cmp r5, r0
	blt _02246F7A
_02247034:
	mov r6, #0
	bl ov23_022468C0
	cmp r0, #0
	ble _022470E0
	ldr r7, [sp]
	add r4, r7, #0
	add r5, r7, #0
_02247044:
	add r0, r7, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022470D0
	ldrh r0, [r4, #0x1c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02247104 ; =0x020F983C
	ldrsh r1, [r0, r1]
	ldr r0, [r5, #0x48]
	sub r0, r0, r1
	str r0, [r5, #0x48]
	ldrh r1, [r4, #0x1c]
	ldr r0, [r5, #0x44]
	asr r1, r1, #4
	lsl r2, r1, #2
	ldr r1, _02247104 ; =0x020F983C
	add r2, r1, r2
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [sp]
	add r0, r0, r6
	ldrb r0, [r0, #8]
	lsl r1, r0, #2
	ldr r0, _022470F8 ; =0x022563E8
	ldr r1, [r0, r1]
	ldr r0, [r5, #0x48]
	lsl r3, r1, #0xc
	cmp r0, r3
	bge _02247090
	ldrh r2, [r4, #0x1c]
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r2
	strh r0, [r4, #0x1c]
	b _022470A2
_02247090:
	mov r2, #0xc0
	sub r2, r2, r1
	lsl r2, r2, #0xc
	cmp r0, r2
	blt _022470A2
	ldrh r2, [r4, #0x1c]
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r2
	strh r0, [r4, #0x1c]
_022470A2:
	ldr r0, [r5, #0x44]
	cmp r0, r3
	bge _022470B8
	ldrh r1, [r4, #0x1c]
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r1, r0
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r1
	strh r0, [r4, #0x1c]
	b _022470D0
_022470B8:
	mov r2, #1
	lsl r2, r2, #8
	sub r1, r2, r1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _022470D0
	ldrh r1, [r4, #0x1c]
	lsl r0, r2, #7
	sub r1, r1, r0
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r1
	strh r0, [r4, #0x1c]
_022470D0:
	add r7, r7, #4
	add r4, r4, #2
	add r5, #8
	add r6, r6, #1
	bl ov23_022468C0
	cmp r6, r0
	blt _02247044
_022470E0:
	ldr r0, _02247100 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022470F0: .word 0x021BF6BC
_022470F4: .word 0x00000000
_022470F8: .word 0x022563E8
_022470FC: .word 0x00000626
_02247100: .word 0x02257760
_02247104: .word 0x020F983C
_02247108: .word 0x0000FFFF
	thumb_func_end ov23_02246F20

	thumb_func_start ov23_0224710C
ov23_0224710C: ; 0x0224710C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02247132
	ldr r0, _02247134 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02246CF0
_02247132:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247134: .word 0x02257760
	thumb_func_end ov23_0224710C

	thumb_func_start ov23_02247138
ov23_02247138: ; 0x02247138
	ldr r3, _02247140 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02247140: .word ov23_0224AD7C
	thumb_func_end ov23_02247138

	thumb_func_start ov23_02247144
ov23_02247144: ; 0x02247144
	push {r3, r4, r5, lr}
	ldr r0, _022471C8 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _022471C6
	mov r0, #0x66
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022471CC ; =0x0000015E
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02247174
	cmp r5, #0
	beq _02247174
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	bl ov23_022448FC
_02247174:
	ldr r1, _022471D0 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	mov r1, #1
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _022471D4 ; =0x0400006C
	mov r1, #0
	bl sub_020BDEC4
	bl ov23_022468C0
	bl ov23_02246370
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _022471C8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _022471C8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _022471C8 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_022471C6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022471C8: .word 0x02257760
_022471CC: .word 0x0000015E
_022471D0: .word 0x04000050
_022471D4: .word 0x0400006C
	thumb_func_end ov23_02247144

	thumb_func_start ov23_022471D8
ov23_022471D8: ; 0x022471D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r0, _02247308 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02247308 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02247308 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x17
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r4, _02247308 ; =0x02257760
	mov r6, #0
	ldr r1, [r4, #4]
	mov r7, #0x19
	ldr r0, [r1, #0x44]
	add r5, r6, #0
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	str r1, [sp, #0x34]
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r6, [sp, #0x50]
	str r0, [sp, #0x58]
	lsl r7, r7, #0xe
_02247274:
	add r0, sp, #0x2c
	str r7, [sp, #0x34]
	str r7, [sp, #0x38]
	bl sub_02021AA0
	ldr r1, [r4, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0xf
	sub r1, r1, r6
	bl sub_02021F58
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xf
	blt _02247274
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02247308: .word 0x02257760
	thumb_func_end ov23_022471D8

	thumb_func_start ov23_0224730C
ov23_0224730C: ; 0x0224730C
	push {r4, lr}
	lsl r1, r1, #2
	add r4, r0, r1
	str r2, [r4, #8]
	add r0, r4, #0
	ldr r2, [sp, #8]
	add r0, #0x80
	str r2, [r0, #0]
	str r3, [r4, #0x44]
	ldr r0, [sp, #0xc]
	add r4, #0xbc
	str r0, [r4, #0]
	ldr r0, _02247338 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r1
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
_02247338: .word 0x02257760
	thumb_func_end ov23_0224730C

	thumb_func_start ov23_0224733C
ov23_0224733C: ; 0x0224733C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r1, #4
	bhi _0224735C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247352: ; jump table
	.short _022474B6 - _02247352 - 2 ; case 0
	.short _0224747E - _02247352 - 2 ; case 1
	.short _0224742E - _02247352 - 2 ; case 2
	.short _022473C6 - _02247352 - 2 ; case 3
	.short _0224735C - _02247352 - 2 ; case 4
_0224735C:
	mov r0, #2
	mov r2, #0x69
	str r0, [sp]
	sub r0, r0, #6
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xb7
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xb
	sub r3, r3, #5
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x8c
	str r0, [sp]
	sub r0, r0, #2
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x94
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xc
	sub r3, #0xf
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x87
	str r0, [sp]
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x99
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xd
	sub r3, #0x14
	bl ov23_0224730C
	mov r0, #2
	mov r2, #0x78
	str r0, [sp]
	mov r0, #0
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa8
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xe
	sub r3, #0xb
	bl ov23_0224730C
_022473C6:
	mov r0, #3
	mov r2, #0x80
	str r0, [sp]
	sub r0, r0, #7
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa0
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #7
	sub r3, r3, #5
	bl ov23_0224730C
	mov r0, #2
	mvn r0, r0
	mov r2, #0x84
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x9c
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #8
	sub r3, #0xf
	bl ov23_0224730C
	mov r0, #1
	mov r2, #0x70
	str r0, [sp]
	sub r0, r0, #3
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xb0
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #9
	bl ov23_0224730C
	mov r0, #1
	mov r2, #0x73
	str r0, [sp]
	sub r0, r0, #3
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xad
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xa
	add r3, r3, #2
	bl ov23_0224730C
_0224742E:
	mov r0, #2
	mov r2, #0x8c
	str r0, [sp]
	sub r0, r0, #5
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x94
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #4
	sub r3, #0xa
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x8c
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x94
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #5
	sub r3, #0x14
	bl ov23_0224730C
	mov r0, #0
	mvn r0, r0
	mov r2, #0x6e
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xb2
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #6
	bl ov23_0224730C
_0224747E:
	mov r0, #1
	mvn r0, r0
	mov r2, #0x78
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa8
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #2
	sub r3, #0x1e
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x64
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xbc
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #3
	sub r3, #0xa
	bl ov23_0224730C
_022474B6:
	mov r0, #2
	mov r2, #0x80
	str r0, [sp]
	sub r0, r0, #5
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa0
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	sub r3, #0x1e
	bl ov23_0224730C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov23_0224733C

	thumb_func_start ov23_022474D4
ov23_022474D4: ; 0x022474D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r7, #0
	add r4, r6, #0
	add r5, r7, #0
_022474E0:
	add r0, r4, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02247556
	ldr r0, [r4, #8]
	add r0, r0, r1
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0]
	add r0, r1, r0
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02247564 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	ldr r1, [r4, #0x44]
	add r0, #0x23
	cmp r1, r0
	ble _02247556
	ldr r0, _02247564 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r1, r4, #0
	add r1, #0x80
	mov r0, #0
	str r0, [r1, #0]
_02247556:
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #0xf
	blt _022474E0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247564: .word 0x02257760
	thumb_func_end ov23_022474D4

	thumb_func_start ov23_02247568
ov23_02247568: ; 0x02247568
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, _022478A4 ; =0x00000125
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #6
	bhi _0224766E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247582: ; jump table
	.short _02247590 - _02247582 - 2 ; case 0
	.short _022475D8 - _02247582 - 2 ; case 1
	.short _02247608 - _02247582 - 2 ; case 2
	.short _02247692 - _02247582 - 2 ; case 3
	.short _022477A0 - _02247582 - 2 ; case 4
	.short _0224781A - _02247582 - 2 ; case 5
	.short _022479B4 - _02247582 - 2 ; case 6
_02247590:
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _022478A8 ; =0x02257760
	add r1, r5, #0
	ldr r0, [r0, #4]
	mov r3, #5
	ldr r0, [r0, #0x40]
	bl ov5_021F4F18
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x11
	strb r0, [r4, r1]
	ldr r0, _022478AC ; =0x0000065E
	bl sub_02005748
	b _022479DE
_022475D8:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x14
	bls _0224766E
	mov r1, #2
	strb r1, [r4, r0]
	mov r1, #0
	sub r2, r0, #5
	str r1, [r4, r2]
	add r2, r0, #0
	mov r3, #5
	sub r2, #9
	str r3, [r4, r2]
	ldr r2, _022478A8 ; =0x02257760
	add r0, #0xd3
	ldr r2, [r2, #4]
	ldr r0, [r2, r0]
	bl sub_02021D6C
	b _022479DE
_02247608:
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp, #8]
	sub r1, r0, #5
	ldr r1, [r4, r1]
	add r0, #0xd3
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	ldr r1, _022478A8 ; =0x02257760
	ldr r1, [r1, #4]
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022478A8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #0x41
	ble _0224767E
	mov r2, #3
	add r0, r1, #5
	strb r2, [r4, r0]
	ldr r0, _022478B0 ; =0x0000065D
	bl sub_02005748
	ldr r0, _022478A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022478B4 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x15
	bne _0224765C
	mov r1, #0
	mvn r1, r1
	b _0224765E
_0224765C:
	mov r1, #5
_0224765E:
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02247670
_0224766E:
	b _022479DE
_02247670:
	bl sub_0207136C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _022479DE
_0224767E:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r0, r2, r0
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #3
	sub r0, r1, #4
	str r2, [r4, r0]
	b _022479DE
_02247692:
	ldr r1, _022478B8 ; =0x021BF6BC
	ldrh r2, [r1, #0x20]
	cmp r2, #0
	beq _02247742
	sub r0, r0, #5
	ldrh r2, [r1, #0x1e]
	ldr r0, [r4, r0]
	sub r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	ldrh r0, [r1, #0x1c]
	sub r0, #0x80
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r5, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r6, r2
	adc r5, r3
	lsl r5, r5, #0x14
	lsr r6, r6, #0xc
	orr r6, r5
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r6, r1
	bl sub_020BCFF0
	mov r1, #3
	lsl r1, r1, #0x10
	cmp r0, r1
	bge _02247742
	mov r0, #0x4b
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _022478BC ; =0x00000627
	bl sub_02005748
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r5, [r4, r0]
	mov r1, #3
	add r0, r5, #0
	bl sub_020E1F6C
	cmp r1, #2
	bne _02247742
	add r0, r5, #0
	mov r1, #3
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	add r0, #0xf8
	add r1, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200A490
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r1, #4
	add r0, r0, #1
	strb r1, [r4, r0]
_02247742:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0xf
	ble _02247760
	add r0, r1, #0
	mov r3, #0
	add r0, #0xc
	strb r3, [r4, r0]
	add r0, r1, #0
	mov r2, #5
	add r0, #0xd
	strb r2, [r4, r0]
	add r1, #0x14
	str r3, [r4, r1]
_02247760:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224777A
	bge _02247770
	add r1, r1, #1
	str r1, [r4, r0]
_02247770:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	neg r1, r1
	str r1, [r4, r0]
_0224777A:
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x80
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0xcc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, r1]
	add r1, sp, #8
	bl sub_02021C50
	b _022479DE
_022477A0:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _022477BA
	sub r0, #0xd
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_020E1F6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_0224733C
_022477BA:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov23_022474D4
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0x14
	bne _022477DA
	mov r1, #3
	add r0, r0, #1
	strb r1, [r4, r0]
_022477DA:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022477F4
	bge _022477EA
	add r1, r1, #1
	str r1, [r4, r0]
_022477EA:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	neg r1, r1
	str r1, [r4, r0]
_022477F4:
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x80
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0xcc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, r1]
	add r1, sp, #8
	bl sub_02021C50
	b _022479DE
_0224781A:
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02247824
	b _02247944
_02247824:
	ldr r0, _022478C0 ; =0x0000062A
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0xf8
	lsl r1, r1, #4
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0200A490
	mov r7, #1
	mov r5, #4
	mov r6, #0x52
_02247840:
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	lsl r0, r6, #0xc
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	lsr r1, r7, #0x1f
	lsl r3, r7, #0x1f
	sub r3, r3, r1
	mov r0, #0x1f
	ror r3, r0
	add r2, #0x27
	add r0, r1, r3
	add r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	add r7, r7, #1
	add r5, r5, #4
	add r6, #0xc
	cmp r7, #9
	blt _02247840
	ldr r0, _022478A8 ; =0x02257760
	b _022478C4
	nop
_022478A4: .word 0x00000125
_022478A8: .word 0x02257760
_022478AC: .word 0x0000065E
_022478B0: .word 0x0000065D
_022478B4: .word 0x00000B3B
_022478B8: .word 0x021BF6BC
_022478BC: .word 0x00000627
_022478C0: .word 0x0000062A
_022478C4:
	ldr r1, [r0, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x19
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r0, #0x15
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x7a
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
_02247944:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	add r1, #0x7b
	lsl r0, r1, #0xc
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, #0xd8
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	ldr r1, _022479F0 ; =0x02257760
	ldr r1, [r1, #4]
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r2, #0x1d
	add r1, r1, #1
	str r1, [r4, r0]
	add r1, r0, #4
	ldrb r1, [r4, r1]
	lsr r5, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r5
	ror r3, r2
	add r2, r5, r3
	beq _022479A2
	ldr r2, _022479F0 ; =0x02257760
	lsr r1, r1, #3
	ldr r2, [r2, #4]
	add r0, #0xd8
	ldr r0, [r2, r0]
	add r1, r1, #3
	bl sub_02021D6C
_022479A2:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0x4b
	bne _022479DE
	mov r1, #6
	add r0, r0, #1
	strb r1, [r4, r0]
	b _022479DE
_022479B4:
	sub r0, #0x11
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022479C8
	bl sub_0207136C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022479C8:
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022479DE:
	ldr r0, _022479F0 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022479F0: .word 0x02257760
	thumb_func_end ov23_02247568

	thumb_func_start ov23_022479F4
ov23_022479F4: ; 0x022479F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r3, _02247A58 ; =0x02256404
	add r2, sp, #0xc
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r1, #4
	sub r4, r0, #1
	mov r0, #0x32
	bl sub_02006C24
	add r6, r0, #0
	cmp r4, #6
	bge _02247A4E
	add r0, r4, #1
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247A5C ; =0x02257760
	lsl r3, r4, #2
	ldr r1, [r0, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	add r2, sp, #0xc
	ldr r0, [r1, r0]
	ldr r2, [r2, r3]
	add r1, r6, #0
	mov r3, #0
	bl sub_02009A4C
	add r1, r4, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xf8
	str r0, [r1, #0]
_02247A4E:
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247A58: .word 0x02256404
_02247A5C: .word 0x02257760
	thumb_func_end ov23_022479F4

	thumb_func_start ov23_02247A60
ov23_02247A60: ; 0x02247A60
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x17
	ldr r6, _02247A88 ; =0x02257760
	mov r4, #1
	add r5, r0, #4
	lsl r7, r7, #4
_02247A6C:
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02247A7E
	ldr r0, [r6, #4]
	ldr r0, [r0, r7]
	bl sub_02009D68
_02247A7E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _02247A6C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247A88: .word 0x02257760
	thumb_func_end ov23_02247A60

	thumb_func_start ov23_02247A8C
ov23_02247A8C: ; 0x02247A8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _02247A9A
	b _02247D12
_02247A9A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247AA6: ; jump table
	.short _02247AC0 - _02247AA6 - 2 ; case 0
	.short _02247B1C - _02247AA6 - 2 ; case 1
	.short _02247B66 - _02247AA6 - 2 ; case 2
	.short _02247B9C - _02247AA6 - 2 ; case 3
	.short _02247BDC - _02247AA6 - 2 ; case 4
	.short _02247C0E - _02247AA6 - 2 ; case 5
	.short _02247C1E - _02247AA6 - 2 ; case 6
	.short _02247C70 - _02247AA6 - 2 ; case 7
	.short _02247CB8 - _02247AA6 - 2 ; case 8
	.short _02247CC4 - _02247AA6 - 2 ; case 9
	.short _02247D12 - _02247AA6 - 2 ; case 10
	.short _02247CD4 - _02247AA6 - 2 ; case 11
	.short _02247CF8 - _02247AA6 - 2 ; case 12
_02247AC0:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r1, _02247D18 ; =0x02257760
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	add r1, #0x48
	bl sub_020095C4
	ldr r1, _02247D18 ; =0x02257760
	ldr r2, [r1, #4]
	str r0, [r2, #0x44]
	ldr r0, [r1, #4]
	mov r2, #6
	add r0, #0x48
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r6, #0
	ldr r7, _02247D18 ; =0x02257760
	add r5, r6, #0
_02247AF6:
	mov r0, #8
	add r1, r6, #0
	mov r2, #4
	bl sub_02009714
	ldr r1, [r7, #4]
	add r6, r6, #1
	add r2, r1, r5
	mov r1, #0x17
	lsl r1, r1, #4
	add r5, r5, #4
	str r0, [r2, r1]
	cmp r6, #4
	blt _02247AF6
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247B1C:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x20
	ldr r1, [r0, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_0200985C
	ldr r2, _02247D18 ; =0x02257760
	mov r1, #0x19
	ldr r3, [r2, #4]
	lsl r1, r1, #4
	str r0, [r3, r1]
	ldr r0, [r2, #4]
	add sp, #0x10
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247B66:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x33
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02247D18 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247B9C:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x1f
	ldr r1, [r0, #4]
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02247D18 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247BDC:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x1e
	ldr r1, [r0, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02247D18 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247C0E:
	add r0, r4, #0
	bl ov23_022471D8
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247C1E:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov23_022479F4
	mov r1, #0x49
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #0x1e
	bls _02247D12
	ldr r0, _02247D18 ; =0x02257760
	ldr r2, [r0, #4]
	ldr r0, _02247D1C ; =0x00000B3B
	ldrb r0, [r2, r0]
	cmp r0, #0x14
	bne _02247C52
	add r0, r4, #0
	add r0, #0xf8
	sub r1, #0x24
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0200A490
_02247C52:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4d
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #7
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247C70:
	ldr r0, _02247D18 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02247568
	cmp r0, #0
	beq _02247C98
	ldr r0, _02247D20 ; =0x00000127
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02247C8E
	mov r0, #0xb
	str r0, [r4, #0]
	b _02247C98
_02247C8E:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02247C98:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x3c
	bge _02247D12
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	bne _02247D12
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02247CB8:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02247CC4:
	bl sub_0203608C
	ldr r1, _02247D20 ; =0x00000127
	ldrb r1, [r4, r1]
	bl ov23_02247DB0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02247CD4:
	ldr r0, _02247D20 ; =0x00000127
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02247D24 ; =0x00000126
	ldrb r0, [r4, r0]
	bl ov23_022448FC
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247CF8:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02247D12
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02247D12:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247D18: .word 0x02257760
_02247D1C: .word 0x00000B3B
_02247D20: .word 0x00000127
_02247D24: .word 0x00000126
	thumb_func_end ov23_02247A8C

	thumb_func_start ov23_02247D28
ov23_02247D28: ; 0x02247D28
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x13
	mov r0, #4
	lsl r1, r1, #4
	add r6, r2, #0
	bl sub_02018184
	mov r2, #0x13
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02247D6C ; =0x00000127
	mov r2, #0x64
	strb r5, [r4, r0]
	sub r0, r0, #1
	strb r6, [r4, r0]
	ldr r0, _02247D70 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02247D74 ; =ov23_02247A8C
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02247D70 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247D6C: .word 0x00000127
_02247D70: .word 0x02257760
_02247D74: .word ov23_02247A8C
	thumb_func_end ov23_02247D28

	thumb_func_start ov23_02247D78
ov23_02247D78: ; 0x02247D78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02247D9E
	ldr r0, _02247DA0 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02247D28
_02247D9E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247DA0: .word 0x02257760
	thumb_func_end ov23_02247D78

	thumb_func_start ov23_02247DA4
ov23_02247DA4: ; 0x02247DA4
	ldr r3, _02247DAC ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02247DAC: .word ov23_0224AD7C
	thumb_func_end ov23_02247DA4

	thumb_func_start ov23_02247DB0
ov23_02247DB0: ; 0x02247DB0
	push {r3, r4, r5, lr}
	ldr r0, _02247E30 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02247E2E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02247DD8
	bl sub_0207136C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02247DD8:
	ldr r0, _02247E34 ; =0x00000127
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02247DEC
	cmp r5, #0
	beq _02247DEC
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	bl ov23_022448FC
_02247DEC:
	add r0, r4, #0
	bl ov23_02247A60
	mov r0, #0xf
	bl ov23_02246370
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02247E30 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02247E30 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02247E2E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247E30: .word 0x02257760
_02247E34: .word 0x00000127
	thumb_func_end ov23_02247DB0

	thumb_func_start ov23_02247E38
ov23_02247E38: ; 0x02247E38
	push {lr}
	sub sp, #0x5c
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02247F48 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x17
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r0, _02247F48 ; =0x02257760
	mov r2, #2
	ldr r1, [r0, #4]
	lsl r2, r2, #0x10
	ldr r0, [r1, #0x44]
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r2, #5
	mov r1, #0
	str r2, [sp, #0x34]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r0, [sp, #0x58]
	lsl r0, r0, #0x11
	str r0, [sp, #0x34]
	mov r0, #0x15
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r1, [sp, #0x50]
	bl sub_02021AA0
	ldr r2, _02247F48 ; =0x02257760
	mov r1, #0x7e
	ldr r3, [r2, #4]
	lsl r1, r1, #2
	str r0, [r3, r1]
	ldr r0, [r2, #4]
	ldr r0, [r0, r1]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {pc}
	nop
_02247F48: .word 0x02257760
	thumb_func_end ov23_02247E38

	thumb_func_start ov23_02247F4C
ov23_02247F4C: ; 0x02247F4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	beq _02247F66
	cmp r0, #1
	beq _02247F86
	cmp r0, #2
	b _02248096
_02247F66:
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022480AC ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x1f
	bne _02247F76
	mov r0, #4
	b _02247F78
_02247F76:
	mov r0, #2
_02247F78:
	str r0, [r5, #0x20]
	mov r0, #0
	str r0, [r5, #0x24]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
_02247F86:
	ldr r1, _022480B0 ; =0x02257760
	ldr r2, _022480B4 ; =ov23_02246624
	mov r0, #2
	mov r3, #0
	bl sub_02004B70
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022480B8 ; =0x00000B3A
	ldrsb r0, [r1, r0]
	bl sub_020D4070
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, r5, r1
	strb r6, [r0, #8]
	mov r1, #0
	b _02247FBE
_02247FB6:
	add r0, r5, r1
	ldrb r0, [r0, #8]
	add r1, r1, #1
	add r4, r4, r0
_02247FBE:
	cmp r1, #0xa
	blt _02247FB6
	mov r0, #0x7d
	lsl r0, r0, #2
	cmp r4, r0
	ble _02247FD8
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	ldr r0, _022480BC ; =0x00000628
	bl sub_02005748
	b _02247FE0
_02247FD8:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
_02247FE0:
	ldr r0, [r5, #0x24]
	mov r1, #0xa
	bl sub_020E1F6C
	cmp r1, #9
	bne _02247FF2
	ldr r0, [r5, #0x20]
	sub r0, r0, #1
	str r0, [r5, #0x20]
_02247FF2:
	ldr r2, [r5, #0x20]
	cmp r2, #0
	bne _02248004
	mov r0, #2
	add r5, #0x28
	strb r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02248004:
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022480AC ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x1f
	bne _02248034
	cmp r2, #2
	beq _02248028
	cmp r2, #3
	beq _02248022
	cmp r2, #4
	bne _0224802E
	mov r4, #1
	lsl r4, r4, #0x1e
	b _02248042
_02248022:
	mov r4, #0xff
	lsl r4, r4, #0x16
	b _02248042
_02248028:
	mov r4, #0xfe
	lsl r4, r4, #0x16
	b _02248042
_0224802E:
	mov r4, #0x3f
	lsl r4, r4, #0x18
	b _02248042
_02248034:
	cmp r2, #2
	bne _0224803E
	mov r4, #1
	lsl r4, r4, #0x1e
	b _02248042
_0224803E:
	mov r4, #0xff
	lsl r4, r4, #0x16
_02248042:
	ldr r0, [r5, #0x24]
	mov r6, #0
	cmp r0, #0
	beq _0224804C
	add r6, r6, #1
_0224804C:
	ldr r0, _022480C0 ; =0x45800000
	add r1, r4, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [sp]
	ldr r0, _022480C0 ; =0x45800000
	add r1, r4, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [sp, #4]
	ldr r0, _022480C0 ; =0x45800000
	add r1, r4, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [sp, #8]
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C70
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_02021DCC
_02248096:
	ldr r0, _022480A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022480A8: .word 0x02257760
_022480AC: .word 0x00000B3B
_022480B0: .word 0x02257760
_022480B4: .word ov23_02246624
_022480B8: .word 0x00000B3A
_022480BC: .word 0x00000628
_022480C0: .word 0x45800000
	thumb_func_end ov23_02247F4C

	thumb_func_start ov23_022480C4
ov23_022480C4: ; 0x022480C4
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _022480D2
	b _02248304
_022480D2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022480DE: ; jump table
	.short _022480F8 - _022480DE - 2 ; case 0
	.short _02248110 - _022480DE - 2 ; case 1
	.short _0224815C - _022480DE - 2 ; case 2
	.short _02248192 - _022480DE - 2 ; case 3
	.short _022481DE - _022480DE - 2 ; case 4
	.short _0224821C - _022480DE - 2 ; case 5
	.short _0224822C - _022480DE - 2 ; case 6
	.short _0224825A - _022480DE - 2 ; case 7
	.short _022482B0 - _022480DE - 2 ; case 8
	.short _022482BC - _022480DE - 2 ; case 9
	.short _02248304 - _022480DE - 2 ; case 10
	.short _022482CC - _022480DE - 2 ; case 11
	.short _022482F0 - _022480DE - 2 ; case 12
_022480F8:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x24]
	bl ov23_02246324
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02248110:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02248308 ; =0x02257760
	ldr r1, _0224830C ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1f
	bne _0224812E
	mov r2, #0x16
	b _02248130
_0224812E:
	mov r2, #0x19
_02248130:
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_0200985C
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224815C:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _02248308 ; =0x02257760
	mov r2, #0x13
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02248192:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02248308 ; =0x02257760
	ldr r1, _0224830C ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1f
	bne _022481B0
	mov r2, #0x15
	b _022481B2
_022481B0:
	mov r2, #0x18
_022481B2:
	mov r3, #0
	str r3, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022481DE:
	ldr r0, _02248308 ; =0x02257760
	ldr r1, _0224830C ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1f
	bne _022481EE
	mov r2, #0x14
	b _022481F0
_022481EE:
	mov r2, #0x17
_022481F0:
	mov r3, #0
	str r3, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224821C:
	add r0, r4, #0
	bl ov23_02247E38
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224822C:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	cmp r0, #0x1e
	ble _02248304
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4c
	add r3, r2, #0
	bl ov23_02253F60
	mov r1, #3
	ldr r0, _02248310 ; =0x0400006C
	mvn r1, r1
	bl sub_020BDEC4
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0224825A:
	mov r0, #7
	str r0, [sp]
	ldr r0, _02248314 ; =0x04000050
	mov r1, #0x10
	mov r2, #1
	mov r3, #0xe
	bl sub_020BF55C
	ldr r0, _02248308 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02247F4C
	cmp r0, #0
	beq _02248296
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224828C
	mov r0, #0xb
	str r0, [r4, #0]
	b _02248296
_0224828C:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02248296:
	ldr r0, [r4, #0x2c]
	cmp r0, #0x3c
	bge _02248304
	add r0, r0, #1
	str r0, [r4, #0x2c]
	cmp r0, #0x3c
	bne _02248304
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022482B0:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022482BC:
	bl sub_0203608C
	add r4, #0x2a
	ldrb r1, [r4]
	bl ov23_0224839C
	add sp, #0x10
	pop {r4, pc}
_022482CC:
	mov r0, #0x10
	bl sub_0205948C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r4, pc}
_022482F0:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	cmp r0, #8
	ble _02248304
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02248304:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02248308: .word 0x02257760
_0224830C: .word 0x00000B3B
_02248310: .word 0x0400006C
_02248314: .word 0x04000050
	thumb_func_end ov23_022480C4

	thumb_func_start ov23_02248318
ov23_02248318: ; 0x02248318
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x2a
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r6, [r0]
	ldr r0, _0224835C ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02248360 ; =ov23_022480C4
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _0224835C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224835C: .word 0x02257760
_02248360: .word ov23_022480C4
	thumb_func_end ov23_02248318

	thumb_func_start ov23_02248364
ov23_02248364: ; 0x02248364
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _0224838A
	ldr r0, _0224838C ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02248318
_0224838A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224838C: .word 0x02257760
	thumb_func_end ov23_02248364

	thumb_func_start ov23_02248390
ov23_02248390: ; 0x02248390
	ldr r3, _02248398 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02248398: .word ov23_0224AD7C
	thumb_func_end ov23_02248390

	thumb_func_start ov23_0224839C
ov23_0224839C: ; 0x0224839C
	push {r4, lr}
	ldr r0, _02248410 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _0224840C
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _022483C4
	cmp r1, #0
	beq _022483C4
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	bl ov23_022448FC
_022483C4:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02248414 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	mov r0, #1
	bl ov23_02246370
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02248410 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02248410 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_0224840C:
	pop {r4, pc}
	nop
_02248410: .word 0x02257760
_02248414: .word 0x04000050
	thumb_func_end ov23_0224839C

	thumb_func_start ov23_02248418
ov23_02248418: ; 0x02248418
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0xc
	bhi _02248524
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248430: ; jump table
	.short _0224844A - _02248430 - 2 ; case 0
	.short _0224845E - _02248430 - 2 ; case 1
	.short _02248476 - _02248430 - 2 ; case 2
	.short _0224847E - _02248430 - 2 ; case 3
	.short _02248496 - _02248430 - 2 ; case 4
	.short _0224849E - _02248430 - 2 ; case 5
	.short _022484A6 - _02248430 - 2 ; case 6
	.short _022484CA - _02248430 - 2 ; case 7
	.short _02248524 - _02248430 - 2 ; case 8
	.short _022484E6 - _02248430 - 2 ; case 9
	.short _02248524 - _02248430 - 2 ; case 10
	.short _022484F4 - _02248430 - 2 ; case 11
	.short _02248510 - _02248430 - 2 ; case 12
_0224844A:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224845E:
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02248476:
	add r0, r1, #1
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224847E:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02248496:
	add r0, r1, #1
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224849E:
	add r0, r1, #1
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484A6:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _02248524
	bl ov23_0224219C
	bl ov23_02254044
	mov r1, #3
	ldr r0, _02248528 ; =0x0400006C
	mvn r1, r1
	bl sub_020BDEC4
	mov r0, #7
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484CA:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _022484D8
	mov r0, #0xb
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484D8:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484E6:
	bl sub_0203608C
	ldrb r1, [r4, #0x11]
	bl ov23_022485A8
	add sp, #4
	pop {r3, r4, pc}
_022484F4:
	mov r0, #0x10
	bl sub_0205948C
	mov r0, #0
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xc
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02248510:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #8
	ble _02248524
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02248524:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02248528: .word 0x0400006C
	thumb_func_end ov23_02248418

	thumb_func_start ov23_0224852C
ov23_0224852C: ; 0x0224852C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	add r6, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	strb r5, [r4, #0x11]
	ldr r0, _02248568 ; =0x02257760
	strb r6, [r4, #0x10]
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _0224856C ; =ov23_02248418
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _02248568 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248568: .word 0x02257760
_0224856C: .word ov23_02248418
	thumb_func_end ov23_0224852C

	thumb_func_start ov23_02248570
ov23_02248570: ; 0x02248570
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02248596
	ldr r0, _02248598 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_0224852C
_02248596:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248598: .word 0x02257760
	thumb_func_end ov23_02248570

	thumb_func_start ov23_0224859C
ov23_0224859C: ; 0x0224859C
	ldr r3, _022485A4 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_022485A4: .word ov23_0224AD7C
	thumb_func_end ov23_0224859C

	thumb_func_start ov23_022485A8
ov23_022485A8: ; 0x022485A8
	push {r4, lr}
	ldr r0, _0224860C ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _0224860A
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _022485C8
	cmp r1, #0
	beq _022485C8
	ldrb r0, [r4, #0x10]
	bl ov23_022448FC
_022485C8:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02248610 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _0224860C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _0224860C ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_0224860A:
	pop {r4, pc}
	; .align 2, 0
_0224860C: .word 0x02257760
_02248610: .word 0x04000050
	thumb_func_end ov23_022485A8

	thumb_func_start ov23_02248614
ov23_02248614: ; 0x02248614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, [r1, #0x28]
	str r1, [sp, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r1, #0
	ldr r0, [r0, #0x2c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	ldr r0, [sp, #0x10]
	mov r1, #0xa
	ldr r0, [r0, #0x30]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x1c
	bl sub_02021C70
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021FE0
	mov r1, #0x10
	ldr r3, [sp, #0x10]
	str r1, [sp]
	ldr r4, [r3, #0x30]
	ldr r0, _02248744 ; =0x04000050
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r3, r3, #1
	mov r2, #1
	sub r3, r1, r3
	bl sub_020BF55C
	mov r0, #0
	ldr r7, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_0224868A:
	ldr r0, [r7, #0x14]
	mov r4, #0
	cmp r0, #0
	ble _0224870A
	ldr r0, [sp, #8]
	add r5, r4, #0
	lsl r0, r0, #2
	str r0, [sp, #4]
_0224869A:
	ldr r0, [r7, #8]
	ldrb r6, [r0, r4]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x20]
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1c
	sub r3, r0, #6
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	add r0, r3, r0
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x14
	ldr r0, [r0, #0x24]
	sub r1, r0, #6
	lsr r0, r6, #4
	add r0, r1, r0
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x24]
	add r0, sp, #0x1c
	add r1, sp, #0x18
	bl sub_020B2B2C
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, [sp, #4]
	add r0, r0, r1
	add r1, r5, r0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	ldr r0, [r7, #0x14]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0224869A
_0224870A:
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0224868A
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x30]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	cmp r1, #0x14
	str r1, [r0, #0x30]
	ble _02248730
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248730:
	ldr r0, _02248740 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248740: .word 0x02257760
_02248744: .word 0x04000050
	thumb_func_end ov23_02248614

	thumb_func_start ov23_02248748
ov23_02248748: ; 0x02248748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r0, _02248880 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02248880 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02248880 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #6
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #6
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r6, _02248880 ; =0x02257760
	mov r4, #0
	ldr r1, [r6, #4]
	mov r7, #0x4b
	ldr r0, [r1, #0x44]
	add r5, r4, #0
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	str r1, [sp, #0x34]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r4, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r4, [sp, #0x50]
	str r0, [sp, #0x58]
	lsl r7, r7, #0xe
_022487E4:
	add r0, sp, #0x2c
	str r7, [sp, #0x34]
	str r7, [sp, #0x38]
	bl sub_02021AA0
	ldr r1, [r6, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	cmp r4, #0
	bne _0224881E
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	b _02248842
_0224881E:
	cmp r4, #9
	ldr r0, [r6, #4]
	bge _02248834
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	b _02248842
_02248834:
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021D6C
_02248842:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x19
	blt _022487E4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02248880: .word 0x02257760
	thumb_func_end ov23_02248748

	thumb_func_start ov23_02248884
ov23_02248884: ; 0x02248884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	cmp r0, #9
	bls _02248894
	b _022489E0
_02248894:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022488A0: ; jump table
	.short _022488B4 - _022488A0 - 2 ; case 0
	.short _022489E0 - _022488A0 - 2 ; case 1
	.short _022489E0 - _022488A0 - 2 ; case 2
	.short _022489E0 - _022488A0 - 2 ; case 3
	.short _022489E0 - _022488A0 - 2 ; case 4
	.short _02248930 - _022488A0 - 2 ; case 5
	.short _022489E0 - _022488A0 - 2 ; case 6
	.short _0224893E - _022488A0 - 2 ; case 7
	.short _022489E0 - _022488A0 - 2 ; case 8
	.short _02248956 - _022488A0 - 2 ; case 9
_022488B4:
	mov r0, #7
	str r0, [sp]
	ldr r0, _022489E4 ; =0x04000050
	mov r1, #0x10
	mov r2, #1
	mov r3, #0xe
	bl sub_020BF55C
	mov r1, #0xef
	ldr r0, _022489E8 ; =0x04000040
	lsl r1, r1, #8
	strh r1, [r0]
	mov r1, #0x10
	add r3, r0, #0
	strh r1, [r0, #4]
	add r3, #8
	ldrh r4, [r3]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r4, r1
	orr r4, r2
	add r0, #0xa
	strh r4, [r3]
	ldrh r3, [r0]
	bic r3, r1
	orr r2, r3
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _022489EC ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3, #0]
	bl sub_020594FC
	ldr r0, _022489F0 ; =0x0000054A
	bl sub_02005748
	ldr r1, _022489F4 ; =0x02257760
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	add r1, #0x48
	bl sub_020095C4
	ldr r1, _022489F4 ; =0x02257760
	ldr r2, [r1, #4]
	str r0, [r2, #0x44]
	ldr r0, [r1, #4]
	mov r2, #6
	add r0, #0x48
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r0, #5
	add sp, #8
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02248930:
	add r0, r7, #0
	bl ov23_02248748
	mov r0, #7
	add sp, #8
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224893E:
	ldr r0, _022489F4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02248614
	cmp r0, #0
	beq _022489E0
	mov r0, #9
	add sp, #8
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02248956:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _022489EC ; =0xFFFF1FFF
	and r1, r2
	add r2, r0, #0
	str r1, [r0, #0]
	mov r1, #0
	add r2, #0x50
	add r0, #0x6c
	strh r1, [r2]
	bl sub_020BDEC4
	ldr r0, _022489F4 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A4E4
	ldr r0, _022489F4 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A6DC
	mov r4, #0
	ldr r6, _022489F4 ; =0x02257760
	add r5, r4, #0
_02248992:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022489A4
	bl sub_02021BD4
_022489A4:
	ldr r0, [r6, #4]
	mov r1, #0
	add r2, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	add r4, r4, #1
	add r5, r5, #4
	str r1, [r2, r0]
	cmp r4, #0x19
	blt _02248992
	ldr r0, _022489F4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_02021964
	ldr r0, [sp, #4]
	bl sub_0200DA58
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, _022489F4 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x29
	lsl r0, r0, #4
	str r2, [r1, r0]
	mov r0, #0x80
	bl sub_0205948C
_022489E0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022489E4: .word 0x04000050
_022489E8: .word 0x04000040
_022489EC: .word 0xFFFF1FFF
_022489F0: .word 0x0000054A
_022489F4: .word 0x02257760
	thumb_func_end ov23_02248884

	thumb_func_start ov23_022489F8
ov23_022489F8: ; 0x022489F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02248A64 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _02248A62
	mov r0, #4
	mov r1, #0x34
	bl sub_02018184
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x30]
	str r5, [r4, #0x20]
	str r6, [r4, #0x24]
	ldr r0, [sp, #0x18]
	str r7, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [sp, #0x24]
	mov r2, #0x64
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x1c]
	ldr r0, _02248A68 ; =ov23_02248884
	bl sub_0200D9E8
	ldr r1, _02248A64 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0x80
	bl sub_02059464
_02248A62:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248A64: .word 0x02257760
_02248A68: .word ov23_02248884
	thumb_func_end ov23_022489F8

	thumb_func_start ov23_02248A6C
ov23_02248A6C: ; 0x02248A6C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02248B38 ; =0x02257760
	add r6, r0, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02248A86
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02248A86:
	ldr r5, [r4, #8]
	add r0, r5, #0
	bl sub_02059444
	add r1, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _02248A9E
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02248AC2
_02248A9E:
	ldr r2, _02248B38 ; =0x02257760
	lsl r1, r5, #2
	ldr r3, [r2, #4]
	mov r0, #0
	str r0, [r3, r1]
	ldr r2, [r2, #4]
	add r1, r2, r1
	str r0, [r1, #0x20]
	add r0, r6, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02058BE8
	pop {r4, r5, r6, pc}
_02248AC2:
	ldr r0, [r4, #0xc]
	cmp r0, #0xe
	bhi _02248AF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248AD4: ; jump table
	.short _02248AF4 - _02248AD4 - 2 ; case 0
	.short _02248AF2 - _02248AD4 - 2 ; case 1
	.short _02248AF2 - _02248AD4 - 2 ; case 2
	.short _02248AF2 - _02248AD4 - 2 ; case 3
	.short _02248AF2 - _02248AD4 - 2 ; case 4
	.short _02248AF2 - _02248AD4 - 2 ; case 5
	.short _02248AF2 - _02248AD4 - 2 ; case 6
	.short _02248AF2 - _02248AD4 - 2 ; case 7
	.short _02248AF2 - _02248AD4 - 2 ; case 8
	.short _02248AF4 - _02248AD4 - 2 ; case 9
	.short _02248AF4 - _02248AD4 - 2 ; case 10
	.short _02248AF4 - _02248AD4 - 2 ; case 11
	.short _02248AF4 - _02248AD4 - 2 ; case 12
	.short _02248AF2 - _02248AD4 - 2 ; case 13
	.short _02248AF2 - _02248AD4 - 2 ; case 14
_02248AF2:
	pop {r4, r5, r6, pc}
_02248AF4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	str r0, [r4, #4]
	sub r2, r2, r3
	mov r0, #0x1d
	ror r2, r0
	add r0, r3, r2
	bne _02248B34
	cmp r1, #3
	bhi _02248B2E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248B18: ; jump table
	.short _02248B20 - _02248B18 - 2 ; case 0
	.short _02248B24 - _02248B18 - 2 ; case 1
	.short _02248B28 - _02248B18 - 2 ; case 2
	.short _02248B2C - _02248B18 - 2 ; case 3
_02248B20:
	mov r1, #3
	b _02248B2E
_02248B24:
	mov r1, #2
	b _02248B2E
_02248B28:
	mov r1, #0
	b _02248B2E
_02248B2C:
	mov r1, #1
_02248B2E:
	add r0, r5, #0
	bl sub_02059424
_02248B34:
	pop {r4, r5, r6, pc}
	nop
_02248B38: .word 0x02257760
	thumb_func_end ov23_02248A6C

	thumb_func_start ov23_02248B3C
ov23_02248B3C: ; 0x02248B3C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02248B8C ; =0x02257760
	add r7, r1, #0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02248B88
	ldr r0, _02248B90 ; =0x00000B46
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02248B88
	lsl r5, r6, #2
	ldr r4, [r1, r5]
	cmp r4, #0
	bne _02248B84
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02248B8C ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #0x64
	str r4, [r0, r5]
	ldr r0, _02248B94 ; =ov23_02248A6C
	bl sub_0200D9E8
	ldr r1, _02248B8C ; =0x02257760
	ldr r1, [r1, #4]
	add r1, r1, r5
	str r0, [r1, #0x20]
_02248B84:
	str r6, [r4, #8]
	str r7, [r4, #0xc]
_02248B88:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248B8C: .word 0x02257760
_02248B90: .word 0x00000B46
_02248B94: .word ov23_02248A6C
	thumb_func_end ov23_02248B3C

	thumb_func_start ov23_02248B98
ov23_02248B98: ; 0x02248B98
	push {r3, r4, r5, lr}
	ldr r1, _02248BCC ; =0x02257760
	add r5, r0, #0
	ldr r1, [r1, #4]
	lsl r4, r5, #2
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _02248BC8
	bl ov23_0224B040
	ldr r0, _02248BCC ; =0x02257760
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r1, [r1, r4]
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	mov r2, #0
	str r2, [r1, r4]
	ldr r0, [r0, #4]
	add r0, r0, r4
	str r2, [r0, #0x20]
	add r0, r5, #0
	bl sub_02058BE8
_02248BC8:
	pop {r3, r4, r5, pc}
	nop
_02248BCC: .word 0x02257760
	thumb_func_end ov23_02248B98

	thumb_func_start ov23_02248BD0
ov23_02248BD0: ; 0x02248BD0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r4, _02248C04 ; =0x02257760
	add r5, r6, #0
	add r7, r6, #0
_02248BDA:
	ldr r0, [r4, #4]
	add r0, r0, r5
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02248BFA
	bl sub_0200DA58
	ldr r0, [r4, #4]
	ldr r0, [r0, r5]
	bl sub_020181C4
	ldr r0, [r4, #4]
	add r0, r0, r5
	str r7, [r0, #0x20]
	ldr r0, [r4, #4]
	str r7, [r0, r5]
_02248BFA:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _02248BDA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248C04: .word 0x02257760
	thumb_func_end ov23_02248BD0

	thumb_func_start ov23_02248C08
ov23_02248C08: ; 0x02248C08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	add r0, r3, #0
	mov r1, #0x24
	str r3, [sp, #8]
	bl sub_02018144
	str r0, [sp, #0xc]
	mov r1, #0
	mov r2, #0x24
	bl sub_020C4CF4
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0xc]
	cmp r1, #0
	str r1, [r0, #0]
	beq _02248C7E
	ldr r1, [sp, #0x2c]
	str r1, [r0, #4]
	ldr r1, [sp, #0x30]
	strb r1, [r0, #0x1e]
	ldr r0, [sp, #8]
	bl sub_020149F0
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x10]
	ldr r1, _02248CA0 ; =0x0008090F
	bl sub_02014A40
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #0xc]
	ldrh r0, [r5, #0x10]
	ldrb r1, [r1, #0x1d]
	bl sub_02013A04
	add r7, r0, #0
	ldrh r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _02248C78
	add r4, r6, #0
_02248C64:
	ldr r1, [r5, #0]
	add r0, r7, #0
	add r1, r1, r4
	bl sub_02013A90
	ldrh r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02248C64
_02248C78:
	ldr r0, [sp, #0xc]
	str r7, [r5, #0]
	str r7, [r0, #8]
_02248C7E:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x20]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_0200112C
	ldr r1, [sp, #0xc]
	str r0, [r1, #0xc]
	add r0, r1, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248CA0: .word 0x0008090F
	thumb_func_end ov23_02248C08

	thumb_func_start ov23_02248CA4
ov23_02248CA4: ; 0x02248CA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x16]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02001504
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r0, [r4, #0x18]
	cmp r0, r5
	bne _02248CD0
	ldrh r0, [r4, #0x1a]
	cmp r0, r7
	beq _02248D1A
_02248CD0:
	strh r5, [r4, #0x18]
	add r0, r5, r1
	strh r7, [r4, #0x1a]
	cmp r0, r6
	blt _02248D1A
	cmp r5, r6
	bhi _02248D1A
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02001504
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #9
	bl sub_02001504
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r4, #0xc]
	mov r1, #8
	bl sub_02001504
	str r0, [sp, #4]
	sub r0, r6, r5
	add r5, r7, #0
	mul r5, r0
	ldr r0, [r4, #0xc]
	mov r1, #0x12
	bl sub_02001504
	ldr r3, [sp, #4]
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [sp]
	add r3, r5, r3
	bl sub_02014A58
_02248D1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02248CA4

	thumb_func_start ov23_02248D20
ov23_02248D20: ; 0x02248D20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02248D6A
	ldr r0, [sp, #4]
	mov r1, #2
	bl sub_02001504
	add r7, r0, #0
	add r1, sp, #0xc
	ldr r0, [sp, #4]
	add r1, #2
	add r2, sp, #0xc
	bl sub_020014DC
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _02248D4E
	b _02248E6C
_02248D4E:
	add r1, sp, #0xc
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	add r2, r5, #0
	bl ov23_02248CA4
	ldr r0, _02248EF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02248D6C
	mov r0, #4
	tst r0, r1
	bne _02248D6C
_02248D6A:
	b _02248EAA
_02248D6C:
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
	add r0, sp, #0xc
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	add r2, r1, r0
	sub r0, r7, #1
	cmp r0, r2
	bne _02248D88
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248D88:
	ldrh r1, [r5, #0x14]
	ldrh r0, [r5, #0x16]
	add r1, r1, r0
	cmp r2, r1
	bne _02248D9A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248D9A:
	ldr r0, [r5, #4]
	ldr r3, [r5, #0]
	blx r3
	ldrb r1, [r5, #0x1d]
	add r0, r7, #0
	bl sub_02013A04
	mov r4, #0
	add r6, r4, #0
	str r0, [sp]
	cmp r7, #0
	ble _02248DF0
_02248DB2:
	ldrh r1, [r5, #0x14]
	ldrh r0, [r5, #0x16]
	add r0, r1, r0
	cmp r6, r0
	bne _02248DBE
	b _02248DCA
_02248DBE:
	ldr r2, [r5, #8]
	lsl r1, r4, #3
	ldr r0, [sp]
	add r1, r2, r1
	bl sub_02013A90
_02248DCA:
	add r0, sp, #0xc
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	add r4, r4, #1
	add r0, r1, r0
	cmp r6, r0
	bne _02248DEA
	ldrh r2, [r5, #0x14]
	ldrh r1, [r5, #0x16]
	ldr r3, [r5, #8]
	ldr r0, [sp]
	add r1, r2, r1
	lsl r1, r1, #3
	add r1, r3, r1
	bl sub_02013A90
_02248DEA:
	add r6, r6, #1
	cmp r6, r7
	blt _02248DB2
_02248DF0:
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _02248E34
	sub r0, r7, #1
	mov r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _02248E26
	ldr r6, [sp]
	add r7, r4, #0
_02248E04:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02248E14
	mov r0, #1
	b _02248E16
_02248E14:
	mov r0, #0
_02248E16:
	add r0, r7, r0
	str r0, [r6, #4]
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r7, r7, #2
	add r6, #8
	cmp r4, r0
	blt _02248E04
_02248E26:
	lsl r0, r4, #1
	add r2, r0, #1
	ldr r0, [sp]
	lsl r1, r4, #3
	add r0, r0, r1
	str r2, [r0, #4]
	b _02248E48
_02248E34:
	sub r0, r7, #1
	mov r2, #0
	cmp r0, #0
	ble _02248E48
	ldr r1, [sp]
_02248E3E:
	str r2, [r1, #4]
	add r2, r2, #1
	add r1, #8
	cmp r2, r0
	blt _02248E3E
_02248E48:
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	bl sub_020015CC
	mov r0, #0
	strb r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	bl sub_020013AC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248E6C:
	ldr r0, _02248EF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #4
	tst r0, r1
	beq _02248EAA
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
	add r0, sp, #0xc
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	sub r2, r7, #1
	add r1, r3, r1
	cmp r2, r1
	bne _02248E92
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248E92:
	strh r3, [r5, #0x14]
	ldrh r1, [r0]
	add sp, #0x10
	strh r1, [r5, #0x16]
	ldrh r1, [r0, #2]
	strh r1, [r5, #0x18]
	ldrh r0, [r0]
	strh r0, [r5, #0x1a]
	mov r0, #1
	strb r0, [r5, #0x1c]
	sub r0, r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02248EAA:
	ldr r0, [sp, #4]
	bl sub_02001288
	add r4, r0, #0
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x20
	ldrh r6, [r5, #0x20]
	bl sub_020014D0
	ldrh r0, [r5, #0x20]
	cmp r6, r0
	beq _02248ECA
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
_02248ECA:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02248EDA
	add r0, r0, #1
	cmp r4, r0
	beq _02248EE8
	b _02248EE2
_02248EDA:
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
	b _02248EE8
_02248EE2:
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
_02248EE8:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248EF0: .word 0x021BF67C
_02248EF4: .word 0x000005DC
	thumb_func_end ov23_02248D20

	thumb_func_start ov23_02248EF8
ov23_02248EF8: ; 0x02248EF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02001384
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02248F14
	ldr r0, [r4, #0x10]
	bl sub_02014A20
	ldr r0, [r4, #8]
	bl sub_020181C4
_02248F14:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov23_02248EF8

	thumb_func_start ov23_02248F1C
ov23_02248F1C: ; 0x02248F1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	str r2, [sp, #0x2c]
	ldr r2, _022491C8 ; =0x02257768
	str r4, [r2, #0]
	ldr r2, [r4, #0]
	cmp r2, #8
	bls _02248F36
	b _022491C4
_02248F36:
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02248F42: ; jump table
	.short _02248F54 - _02248F42 - 2 ; case 0
	.short _02248F7E - _02248F42 - 2 ; case 1
	.short _02249084 - _02248F42 - 2 ; case 2
	.short _0224908C - _02248F42 - 2 ; case 3
	.short _022490BE - _02248F42 - 2 ; case 4
	.short _022490C6 - _02248F42 - 2 ; case 5
	.short _02249130 - _02248F42 - 2 ; case 6
	.short _0224914C - _02248F42 - 2 ; case 7
	.short _022491B8 - _02248F42 - 2 ; case 8
_02248F54:
	mov r1, #0x39
	lsl r1, r1, #4
	ldr r0, [sp, #0x2c]
	add r1, r4, r1
	bl ov23_0224944C
	add r1, r4, #0
	add r0, r4, #4
	add r1, #0x44
	bl ov23_022491CC
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov23_02249724
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02248F7E:
	add r0, r4, #0
	bl ov23_02249584
	mov r1, #0xfa
	lsl r1, r1, #2
	mov r0, #0
	mov r3, #0xba
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r4, r2]
	add r3, #0x20
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	str r0, [sp, #0x30]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x34]
	mov r0, #0x12
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
	lsr r0, r1, #5
	mov r6, #0
	mov r7, #0xcb
	str r1, [sp, #0x38]
	str r6, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x30
	strh r6, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x58]
	mov r0, #4
	str r6, [sp, #0x54]
	str r0, [sp, #0x5c]
	add r5, r4, #0
	lsl r7, r7, #2
_02249002:
	add r0, sp, #0x30
	bl sub_02021AA0
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	cmp r6, #0
	bne _02249030
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021D6C
_02249030:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _02249002
	mov r7, #0xd3
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02249040:
	add r0, sp, #0x30
	bl sub_02021AA0
	mov r1, #0xd3
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, r7]
	mov r1, #2
	bl sub_02021D6C
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x11
	blt _02249040
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02249084:
	add r0, r2, #1
	add sp, #0x60
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224908C:
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022490BE:
	add r0, r2, #1
	add sp, #0x60
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022490C6:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r4, #0
	ldr r0, [r0, #0x3c]
	add r1, r4, #4
	add r2, #0x44
	bl ov23_02249214
	mov r1, #0xcb
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x44
	add r1, r4, r1
	bl ov23_022492C8
	add r0, r4, #0
	add r0, #0xa4
	bl ov23_02249334
	mov r1, #0xd3
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xa4
	add r1, r4, r1
	bl ov23_0224937C
	mov r3, #0xea
	lsl r3, r3, #2
	add r0, r4, r3
	str r0, [sp]
	add r0, r3, #4
	add r0, r4, r0
	str r0, [sp, #4]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r1, r3, #0
	add r2, r3, #0
	sub r1, #0x18
	sub r2, #8
	sub r3, r3, #4
	ldr r0, [r4, r0]
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov23_0224966C
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_02249130:
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _022491C4
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224914C:
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r7, #0xba
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02249168:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02249168
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, [sp, #0x2c]
	mov r1, #7
	bl sub_02019044
	ldr r0, [sp, #0x2c]
	bl ov23_02249438
	mov r0, #0xeb
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov23_02249778
	ldr r0, [r4, #0]
	add sp, #0x60
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022491B8:
	sub r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0
	str r2, [r1, #0x6c]
	bl sub_020067D0
_022491C4:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022491C8: .word 0x02257768
	thumb_func_end ov23_02248F1C

	thumb_func_start ov23_022491CC
ov23_022491CC: ; 0x022491CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02249210 ; =0x0225776C
	add r6, r0, #0
	add r5, r1, #0
	mov r7, #0
_022491D6:
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r6, #4]
	str r0, [r5, #0]
	str r0, [r5, #4]
	str r0, [r5, #8]
	bl sub_0201D2E8
	mov r1, #0x7d
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r1, #0x32
	str r1, [r4, #0]
	bl sub_0201D2E8
	mov r1, #0x7d
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r1, #0x32
	str r1, [r4, #4]
	add r7, r7, #1
	add r6, #8
	add r5, #0xc
	add r4, #8
	cmp r7, #8
	blt _022491D6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249210: .word 0x0225776C
	thumb_func_end ov23_022491CC

	thumb_func_start ov23_02249214
ov23_02249214: ; 0x02249214
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	mov r7, #0
	add r6, r5, #0
_02249220:
	add r0, r7, #0
	bl sub_02058CA0
	str r0, [r6, #0]
	add r0, r7, #0
	bl sub_02058CF4
	str r0, [r6, #4]
	add r7, r7, #1
	add r6, #8
	cmp r7, #8
	blt _02249220
	bl sub_02035E38
	cmp r0, #0
	beq _0224928A
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _0224925E
	ldr r0, [sp]
	bl sub_0205EABC
	str r0, [r5, #0]
	ldr r0, [sp]
	bl sub_0205EAC8
	str r0, [r5, #4]
	b _0224928A
_0224925E:
	ldr r7, [r5, #0]
	ldr r6, [r5, #4]
	bl sub_0203608C
	lsl r0, r0, #3
	ldr r0, [r5, r0]
	str r0, [r5, #0]
	bl sub_0203608C
	lsl r0, r0, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	bl sub_0203608C
	lsl r0, r0, #3
	str r7, [r5, r0]
	bl sub_0203608C
	lsl r0, r0, #3
	add r0, r5, r0
	str r6, [r0, #4]
_0224928A:
	mov r6, #0
	mov r7, #0x3c
_0224928E:
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	bl ov23_02242E58
	cmp r0, #0
	bne _022492AA
	ldr r0, [r5, #0]
	sub r0, #0x20
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	sub r0, #0x40
	str r0, [r4, #4]
	str r7, [r4, #8]
	b _022492BA
_022492AA:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _022492BA
	ldr r0, [r4, #0]
	cmp r0, #0
	blt _022492BA
	sub r0, r1, #1
	str r0, [r4, #8]
_022492BA:
	add r6, r6, #1
	add r5, #8
	add r4, #0xc
	cmp r6, #8
	blt _0224928E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02249214

	thumb_func_start ov23_022492C8
ov23_022492C8: ; 0x022492C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #1
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #0xc
_022492D6:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0224931C
	ldr r1, [r5, #0]
	mov r0, #0x8a
	mul r0, r1
	mov r1, #7
	lsl r1, r1, #6
	bl sub_020E1F6C
	add r0, #0x3c
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x1a
	lsl r0, r0, #7
	lsl r1, r1, #4
	bl sub_020E1F6C
	add r0, #9
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	b _02249324
_0224931C:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
_02249324:
	add r6, r6, #1
	add r5, #0xc
	add r4, r4, #4
	cmp r6, #8
	blt _022492D6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_022492C8

	thumb_func_start ov23_02249334
ov23_02249334: ; 0x02249334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_0224933A:
	add r0, r4, #0
	bl ov23_02242E78
	add r6, r0, #0
	add r0, r4, #0
	bl ov23_02242EE0
	add r7, r0, #0
	add r0, r4, #0
	bl ov23_02242F48
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224936A
	sub r6, #0x20
	str r6, [r5, #0]
	sub r7, #0x40
	str r7, [r5, #4]
	ldr r0, [sp]
	b _02249370
_0224936A:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
_02249370:
	add r4, r4, #1
	str r0, [r5, #8]
	add r5, #0x10
	cmp r4, #0x11
	blt _0224933A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02249334

	thumb_func_start ov23_0224937C
ov23_0224937C: ; 0x0224937C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #1
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #0xc
_0224938A:
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _022493E8
	mov r0, #0x8a
	mul r0, r1
	mov r1, #7
	lsl r1, r1, #6
	bl sub_020E1F6C
	add r0, #0x3c
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x1a
	lsl r0, r0, #7
	lsl r1, r1, #4
	bl sub_020E1F6C
	add r0, #9
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _022493F0
	cmp r1, #0
	ldr r0, [r4, #0]
	beq _022493E0
	bl sub_02021D6C
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	b _022493F0
_022493E0:
	mov r1, #0
	bl sub_02021CAC
	b _022493F0
_022493E8:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
_022493F0:
	ldr r0, [r5, #8]
	add r6, r6, #1
	str r0, [r5, #0xc]
	add r5, #0x10
	add r4, r4, #4
	cmp r6, #0x11
	blt _0224938A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224937C

	thumb_func_start ov23_02249404
ov23_02249404: ; 0x02249404
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x4e
	mov r2, #4
	ldr r0, _02249428 ; =ov23_02248F1C
	lsl r1, r1, #4
	add r3, r2, #0
	bl sub_0200679C
	bl sub_0201CED0
	mov r1, #0x6d
	lsl r1, r1, #2
	str r4, [r0, r1]
	ldr r2, [r4, #8]
	add r1, r1, #4
	str r2, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02249428: .word ov23_02248F1C
	thumb_func_end ov23_02249404

	thumb_func_start ov23_0224942C
ov23_0224942C: ; 0x0224942C
	ldr r1, [r0, #0]
	cmp r1, #5
	bne _02249436
	mov r1, #6
	str r1, [r0, #0]
_02249436:
	bx lr
	thumb_func_end ov23_0224942C

	thumb_func_start ov23_02249438
ov23_02249438: ; 0x02249438
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov23_02249438

	thumb_func_start ov23_0224944C
ov23_0224944C: ; 0x0224944C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x64
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	bl ov23_02249438
	ldr r4, _02249578 ; =0x022567DC
	add r3, sp, #0x48
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r4, _0224957C ; =0x022567C0
	add r3, sp, #0x2c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	ldr r4, _02249580 ; =0x022567A4
	add r3, sp, #0x10
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0x1c
	mov r1, #4
	bl sub_02006C24
	mov r1, #0x40
	str r1, [sp]
	mov r1, #0
	mov r2, #4
	add r3, r1, #0
	add r4, r0, #0
	str r2, [sp, #4]
	bl sub_02007130
	mov r1, #0
	mov r0, #5
	str r1, [sp]
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r3, #4
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp, #0xc]
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r3, #4
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	str r3, [sp, #0xc]
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #4
	mov r1, #0
	bl sub_0205D8CC
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #7
	bl sub_0205D8F4
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #0x80
	str r3, [sp]
	mov r2, #4
	mov r0, #0x32
	mov r1, #0x34
	add r3, #0xc0
	str r2, [sp, #4]
	bl sub_02006E84
	mov r0, #1
	bl sub_0200F338
	add sp, #0x64
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02249578: .word 0x022567DC
_0224957C: .word 0x022567C0
_02249580: .word 0x022567A4
	thumb_func_end ov23_0224944C

	thumb_func_start ov23_02249584
ov23_02249584: ; 0x02249584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #7
	add r6, r0, #0
	lsl r1, r1, #6
	mov r0, #0x19
	add r1, r6, r1
	mov r2, #4
	bl sub_020095C4
	mov r1, #0x6f
	lsl r1, r1, #2
	mov r7, #0xba
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_022495A6:
	mov r0, #1
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022495A6
	mov r0, #0x1c
	mov r1, #4
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #4
	mov r0, #0xba
	str r2, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0xbe
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0xf0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	add r1, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0xec
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl sub_02009BC4
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0xe8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A3DC
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A640
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02249584

	thumb_func_start ov23_0224966C
ov23_0224966C: ; 0x0224966C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x2c]
	str r1, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r6, r3, #0
	ldr r5, [sp, #0x28]
	bl ov23_02242D60
	cmp r0, #0
	beq _022496A2
_02249688:
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov23_02249844
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov23_02242D60
	cmp r0, #0
	bne _02249688
_022496A2:
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _022496B4
	cmp r0, #1
	beq _022496DA
	cmp r0, #2
	beq _022496F4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022496B4:
	add r0, r4, #0
	bl ov23_022498C4
	add r2, r0, #0
	beq _02249720
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r3, #0
	ldr r0, [sp, #0xc]
	str r3, [sp, #8]
	bl sub_0201D738
	str r0, [r7, #0]
	mov r0, #1
	add sp, #0x10
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022496DA:
	ldr r0, [r7, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _02249720
	mov r0, #2
	str r0, [r6, #0]
	mov r0, #0
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022496F4:
	add r0, r4, #0
	bl ov23_02249900
	cmp r0, #0
	bne _02249720
	mov r1, #0
	ldr r0, [sp, #0xc]
	mov r2, #2
	add r3, r1, #0
	bl sub_0201C04C
	ldr r0, [sp, #0xc]
	bl sub_0201A954
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r0, #8
	blt _02249720
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r6, #0]
_02249720:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224966C

	thumb_func_start ov23_02249724
ov23_02249724: ; 0x02249724
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x64
_0224972E:
	add r0, r7, #0
	mov r1, #4
	bl sub_02023790
	add r6, r6, #1
	stmia r4!, {r0}
	cmp r6, #0x20
	blt _0224972E
	add r0, r5, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r4, #0
	mov r6, #0x50
	mov r7, #4
_02249760:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x84
	add r4, r4, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r4, #2
	blt _02249760
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02249724

	thumb_func_start ov23_02249778
ov23_02249778: ; 0x02249778
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_02249780:
	ldr r0, [r4, #0]
	bl sub_020237BC
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x20
	blt _02249780
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020237BC
	mov r4, #0
_0224979A:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224979A
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02249778

	thumb_func_start ov23_022497B0
ov23_022497B0: ; 0x022497B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	add r1, r5, #0
	add r1, #0x94
	mov r2, #0x50
	bl sub_02023DF0
	add r0, r5, #0
	add r0, #0x94
	ldrh r2, [r0]
	mov r4, #0
	ldr r0, _02249840 ; =0x0000FFFF
	add r1, r4, #0
	cmp r2, r0
	beq _022497F6
	add r7, r0, #0
	mov r0, #0xe
	add r2, r5, #0
	lsl r0, r0, #0xc
_022497DA:
	add r3, r2, #0
	add r3, #0x94
	ldrh r3, [r3]
	cmp r3, r0
	bne _022497E8
	add r4, r4, #1
	add r6, r1, #0
_022497E8:
	add r2, r2, #2
	add r3, r2, #0
	add r3, #0x94
	ldrh r3, [r3]
	add r1, r1, #1
	cmp r3, r7
	bne _022497DA
_022497F6:
	cmp r4, #2
	blt _022497FE
	bl sub_02022974
_022497FE:
	cmp r4, #0
	bne _02249810
	add r5, #0x84
	ldr r0, [r5, #0]
	ldr r1, [sp]
	bl sub_02023810
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249810:
	lsl r0, r6, #1
	add r0, r5, r0
	ldr r1, _02249840 ; =0x0000FFFF
	add r0, #0x94
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x94
	bl sub_02023D28
	add r0, r5, #0
	add r0, #0x88
	add r1, r6, #1
	ldr r0, [r0, #0]
	add r5, #0x94
	lsl r1, r1, #1
	add r1, r5, r1
	bl sub_02023D28
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249840: .word 0x0000FFFF
	thumb_func_end ov23_022497B0

	thumb_func_start ov23_02249844
ov23_02249844: ; 0x02249844
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov23_022497B0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #0
	ldr r1, [r0, #0]
	cmp r6, #0
	ble _02249878
	add r0, r5, #0
	add r0, #0x90
	ldr r3, [r0, #0]
	add r0, r2, #0
_02249862:
	add r1, r1, #1
	cmp r1, #0x20
	bne _0224986A
	add r1, r0, #0
_0224986A:
	cmp r1, r3
	bne _02249872
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249872:
	add r2, r2, #1
	cmp r2, r6
	blt _02249862
_02249878:
	mov r0, #0
	str r0, [sp]
	cmp r6, #0
	ble _022498BE
	add r7, r5, #0
	add r4, r5, #0
	add r7, #0x8c
_02249886:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsl r0, r0, #2
	add r1, #0x84
	ldr r0, [r5, r0]
	ldr r1, [r1, #0]
	bl sub_02023810
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0x20
	bne _022498B2
	add r1, r5, #0
	add r1, #0x8c
	mov r0, #0
	str r0, [r1, #0]
_022498B2:
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r6
	blt _02249886
_022498BE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02249844

	thumb_func_start ov23_022498C4
ov23_022498C4: ; 0x022498C4
	add r1, r0, #0
	add r2, r0, #0
	add r1, #0x90
	add r2, #0x8c
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	cmp r2, r1
	beq _022498FA
	add r2, r0, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	add r3, r2, #1
	add r2, r0, #0
	add r2, #0x90
	str r3, [r2, #0]
	add r2, r0, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	cmp r2, #0x20
	bne _022498F4
	add r2, r0, #0
	mov r3, #0
	add r2, #0x90
	str r3, [r2, #0]
_022498F4:
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
_022498FA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022498C4

	thumb_func_start ov23_02249900
ov23_02249900: ; 0x02249900
	add r1, r0, #0
	add r1, #0x8c
	add r0, #0x90
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _02249912
	mov r0, #1
	bx lr
_02249912:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02249900

	thumb_func_start ov23_02249918
ov23_02249918: ; 0x02249918
	mov r0, #0x78
	bx lr
	thumb_func_end ov23_02249918

	thumb_func_start ov23_0224991C
ov23_0224991C: ; 0x0224991C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020361BC
	mov r1, #0
	add r4, #0x18
	add r0, r1, #0
_0224992A:
	strb r0, [r4, #0xa]
	str r0, [r4, #4]
	add r1, r1, #1
	add r4, #0xc
	cmp r1, #8
	blt _0224992A
	pop {r4, pc}
	thumb_func_end ov23_0224991C

	thumb_func_start ov23_02249938
ov23_02249938: ; 0x02249938
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02249938

	thumb_func_start ov23_0224993C
ov23_0224993C: ; 0x0224993C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _0224994A
	bl sub_02022974
_0224994A:
	mov r0, #0xc
	add r5, #0x18
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224993C

	thumb_func_start ov23_02249954
ov23_02249954: ; 0x02249954
	mov r3, #0
	add r0, #0x18
	add r1, r3, #0
_0224995A:
	ldr r2, [r0, #4]
	cmp r2, #0
	ble _02249964
	sub r2, r2, #1
	str r2, [r0, #4]
_02249964:
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0224996C
	strb r1, [r0, #0xa]
_0224996C:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #8
	blt _0224995A
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02249954

	thumb_func_start ov23_02249978
ov23_02249978: ; 0x02249978
	strb r1, [r0, #0xa]
	lsl r2, r1, #2
	ldr r1, _0224998C ; =0x02257580
	ldr r1, [r1, r2]
	str r1, [r0, #4]
	ldr r1, _02249990 ; =0x0225759C
	ldr r1, [r1, r2]
	str r1, [r0, #0]
	bx lr
	nop
_0224998C: .word 0x02257580
_02249990: .word 0x0225759C
	thumb_func_end ov23_02249978

	thumb_func_start ov23_02249994
ov23_02249994: ; 0x02249994
	ldr r3, _02249998 ; =ov23_02249978
	bx r3
	; .align 2, 0
_02249998: .word ov23_02249978
	thumb_func_end ov23_02249994

	thumb_func_start ov23_0224999C
ov23_0224999C: ; 0x0224999C
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _022499A6
	mov r0, #1
	bx lr
_022499A6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224999C

	thumb_func_start ov23_022499AC
ov23_022499AC: ; 0x022499AC
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	bne _022499B6
	mov r0, #0
	bx lr
_022499B6:
	cmp r0, #5
	bne _022499BE
	mov r0, #0
	bx lr
_022499BE:
	cmp r0, #3
	bne _022499C6
	mov r0, #1
	bx lr
_022499C6:
	cmp r0, #1
	bne _022499CE
	mov r0, #1
	bx lr
_022499CE:
	cmp r0, #4
	bne _022499D6
	mov r0, #1
	bx lr
_022499D6:
	cmp r0, #0
	bne _022499DE
	mov r0, #1
	bx lr
_022499DE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022499AC

	thumb_func_start ov23_022499E4
ov23_022499E4: ; 0x022499E4
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022499E4

	thumb_func_start ov23_022499E8
ov23_022499E8: ; 0x022499E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205964C
	cmp r0, #0
	bne _02249A2A
	add r0, r4, #0
	bl sub_0203D174
	bl sub_02036794
	add r0, r4, #0
	bl sub_0205965C
	bl sub_0205964C
	mov r2, #0x3a
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x21
	lsl r2, r2, #0xa
	bl sub_02017FC8
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADDC
	cmp r0, #0
	bne _02249A2A
	bl sub_02036894
_02249A2A:
	pop {r4, pc}
	thumb_func_end ov23_022499E8

	thumb_func_start ov23_02249A2C
ov23_02249A2C: ; 0x02249A2C
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	mov r1, #1
	add r0, #0x41
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x24
	bl sub_0202CFEC
	ldr r0, [r4, #0x18]
	bl ov23_02242BC0
	ldr r0, _02249A58 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
	; .align 2, 0
_02249A58: .word ov23_02249C34
	thumb_func_end ov23_02249A2C

	thumb_func_start ov23_02249A5C
ov23_02249A5C: ; 0x02249A5C
	push {r3, lr}
	bl sub_0205964C
	cmp r0, #0
	beq _02249A6E
	ldr r0, _02249A70 ; =ov23_0224A1A0
	mov r1, #3
	bl ov23_02249C24
_02249A6E:
	pop {r3, pc}
	; .align 2, 0
_02249A70: .word ov23_0224A1A0
	thumb_func_end ov23_02249A5C

	thumb_func_start ov23_02249A74
ov23_02249A74: ; 0x02249A74
	push {r3, lr}
	bl sub_02036884
	ldr r0, _02249A84 ; =ov23_0224A02C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249A84: .word ov23_0224A02C
	thumb_func_end ov23_02249A74

	thumb_func_start ov23_02249A88
ov23_02249A88: ; 0x02249A88
	push {r3, lr}
	bl sub_02033DFC
	cmp r0, #0
	bne _02249A9E
	bl ov23_0224C198
	ldr r0, _02249AA0 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
_02249A9E:
	pop {r3, pc}
	; .align 2, 0
_02249AA0: .word ov23_02249C34
	thumb_func_end ov23_02249A88

	thumb_func_start ov23_02249AA4
ov23_02249AA4: ; 0x02249AA4
	push {r3, lr}
	bl sub_020368A4
	ldr r0, _02249AB4 ; =ov23_02249A88
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249AB4: .word ov23_02249A88
	thumb_func_end ov23_02249AA4

	thumb_func_start ov23_02249AB8
ov23_02249AB8: ; 0x02249AB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	bl sub_0205964C
	add r2, sp, #0
	ldr r5, [r0, #0x34]
	ldr r3, _02249B3C ; =0x022567F8
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _02249B40 ; =ov23_02249E18
	ldr r4, _02249B44 ; =ov23_0224A09C
	ldr r7, _02249B48 ; =ov23_02249CE4
	cmp r5, r0
	bne _02249AE8
	ldr r0, _02249B4C ; =ov23_02249E84
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249AE8:
	cmp r4, r5
	bne _02249AFA
	ldr r0, _02249B50 ; =ov23_0224A0CC
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249AFA:
	cmp r7, r5
	bne _02249B0C
	ldr r0, _02249B54 ; =ov23_0224A138
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B0C:
	ldr r0, _02249B58 ; =ov23_0224A024
	cmp r0, r5
	bne _02249B20
	ldr r0, _02249B5C ; =ov23_0224A16C
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B20:
	mov r1, #0
_02249B22:
	ldr r0, [r6, #0]
	cmp r5, r0
	bne _02249B2E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B2E:
	add r1, r1, #1
	add r6, r6, #4
	cmp r1, #4
	blo _02249B22
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249B3C: .word 0x022567F8
_02249B40: .word ov23_02249E18
_02249B44: .word ov23_0224A09C
_02249B48: .word ov23_02249CE4
_02249B4C: .word ov23_02249E84
_02249B50: .word ov23_0224A0CC
_02249B54: .word ov23_0224A138
_02249B58: .word ov23_0224A024
_02249B5C: .word ov23_0224A16C
	thumb_func_end ov23_02249AB8

	thumb_func_start ov23_02249B60
ov23_02249B60: ; 0x02249B60
	push {r4, lr}
	bl sub_0205964C
	ldr r4, [r0, #0x34]
	ldr r0, _02249BB4 ; =ov23_02249E98
	ldr r3, _02249BB8 ; =ov23_0224A0E0
	ldr r2, _02249BBC ; =ov23_0224A14C
	ldr r1, _02249BC0 ; =ov23_0224A180
	cmp r4, r0
	bne _02249B80
	ldr r0, _02249BC4 ; =ov23_02249EA0
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249B80:
	cmp r3, r4
	bne _02249B90
	ldr r0, _02249BC8 ; =ov23_0224A0E8
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249B90:
	cmp r2, r4
	bne _02249BA0
	ldr r0, _02249BCC ; =ov23_0224A150
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249BA0:
	cmp r1, r4
	bne _02249BB0
	ldr r0, _02249BD0 ; =ov23_0224A184
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249BB0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02249BB4: .word ov23_02249E98
_02249BB8: .word ov23_0224A0E0
_02249BBC: .word ov23_0224A14C
_02249BC0: .word ov23_0224A180
_02249BC4: .word ov23_02249EA0
_02249BC8: .word ov23_0224A0E8
_02249BCC: .word ov23_0224A150
_02249BD0: .word ov23_0224A184
	thumb_func_end ov23_02249B60

	thumb_func_start ov23_02249BD4
ov23_02249BD4: ; 0x02249BD4
	push {r4, r5, lr}
	sub sp, #0x34
	bl sub_0205964C
	ldr r4, _02249C20 ; =0x02256808
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #6
_02249BE4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02249BE4
	ldr r0, [r4, #0]
	cmp r5, #0
	str r0, [r3, #0]
	ldr r1, [r5, #0x34]
	bne _02249BFC
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, pc}
_02249BFC:
	ldr r0, [sp]
	cmp r0, #0
	beq _02249C18
	add r2, sp, #0
_02249C04:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _02249C10
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, pc}
_02249C10:
	add r2, r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _02249C04
_02249C18:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02249C20: .word 0x02256808
	thumb_func_end ov23_02249BD4

	thumb_func_start ov23_02249C24
ov23_02249C24: ; 0x02249C24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205964C
	str r5, [r0, #0x34]
	strh r4, [r0, #0x3c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02249C24

	thumb_func_start ov23_02249C34
ov23_02249C34: ; 0x02249C34
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249C48
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_02249C48:
	bl sub_02035E38
	cmp r0, #0
	beq _02249C8E
	ldr r0, [r4, #0x18]
	bl ov23_02242D44
	bl sub_02032AC0
	mov r0, #0
	bl sub_02057AE4
	bl ov23_02243AF0
	bl ov23_0224C21C
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADDC
	cmp r0, #0
	bne _02249C82
	ldr r0, _02249C90 ; =ov23_02249C98
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
_02249C82:
	bl sub_02059524
	ldr r0, _02249C94 ; =ov23_02249CC4
	mov r1, #0x18
	bl ov23_02249C24
_02249C8E:
	pop {r4, pc}
	; .align 2, 0
_02249C90: .word ov23_02249C98
_02249C94: .word ov23_02249CC4
	thumb_func_end ov23_02249C34

	thumb_func_start ov23_02249C98
ov23_02249C98: ; 0x02249C98
	push {r3, lr}
	bl sub_0205964C
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADDC
	cmp r0, #0
	beq _02249CBE
	bl sub_020367F0
	bl sub_02059524
	ldr r0, _02249CC0 ; =ov23_02249CE4
	mov r1, #0x18
	bl ov23_02249C24
_02249CBE:
	pop {r3, pc}
	; .align 2, 0
_02249CC0: .word ov23_02249CE4
	thumb_func_end ov23_02249C98

	thumb_func_start ov23_02249CC4
ov23_02249CC4: ; 0x02249CC4
	push {r3, lr}
	bl sub_0205964C
	ldrh r1, [r0, #0x3c]
	cmp r1, #0
	beq _02249CD6
	sub r1, r1, #1
	strh r1, [r0, #0x3c]
	pop {r3, pc}
_02249CD6:
	ldr r0, _02249CE0 ; =ov23_02249CE4
	mov r1, #0x18
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249CE0: .word ov23_02249CE4
	thumb_func_end ov23_02249CC4

	thumb_func_start ov23_02249CE4
ov23_02249CE4: ; 0x02249CE4
	push {r3, lr}
	bl ov23_02242B14
	bl sub_02059524
	bl sub_02036834
	cmp r0, #0
	beq _02249D14
	bl sub_0203608C
	cmp r0, #0
	bne _02249D0C
	bl ov23_0224B598
	ldr r0, _02249D18 ; =ov23_02249DBC
	mov r1, #0x3c
	bl ov23_02249C24
	pop {r3, pc}
_02249D0C:
	ldr r0, _02249D1C ; =ov23_02249D20
	mov r1, #0x78
	bl ov23_02249C24
_02249D14:
	pop {r3, pc}
	nop
_02249D18: .word ov23_02249DBC
_02249D1C: .word ov23_02249D20
	thumb_func_end ov23_02249CE4

	thumb_func_start ov23_02249D20
ov23_02249D20: ; 0x02249D20
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249D32
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
_02249D32:
	bl sub_02033E68
	cmp r0, #0
	bne _02249D48
	bl sub_020360F0
	cmp r0, #0
	bne _02249D48
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _02249D56
_02249D48:
	bl sub_020367F0
	ldr r0, _02249DB4 ; =ov23_02249FFC
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
_02249D56:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02249DB2
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249D78
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	bne _02249DB2
_02249D78:
	bl ov23_0224321C
	mov r0, #0
	bl sub_020579BC
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl ov23_0224546C
	mov r0, #0
	mov r1, #1
	bl ov23_02244858
	mov r0, #0
	bl sub_02032D98
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02057DB8
	bl sub_02059570
	ldr r0, _02249DB8 ; =ov23_02249EBC
	mov r1, #0xa
	bl ov23_02249C24
_02249DB2:
	pop {r4, pc}
	; .align 2, 0
_02249DB4: .word ov23_02249FFC
_02249DB8: .word ov23_02249EBC
	thumb_func_end ov23_02249D20

	thumb_func_start ov23_02249DBC
ov23_02249DBC: ; 0x02249DBC
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_02242B14
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249DD2
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
_02249DD2:
	bl sub_020360E8
	cmp r0, #0
	bne _02249DE0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _02249E0C
_02249DE0:
	bl ov23_0224321C
	cmp r0, #0
	beq _02249DEC
	bl sub_02059514
_02249DEC:
	ldr r0, _02249E10 ; =0x022575B8
	bl ov23_022499E4
	mov r0, #0
	bl sub_02057AE4
	bl ov23_0224AAB0
	bl ov23_0224C21C
	bl ov23_02243360
	ldr r0, _02249E14 ; =ov23_02249E18
	mov r1, #0
	bl ov23_02249C24
_02249E0C:
	pop {r4, pc}
	nop
_02249E10: .word 0x022575B8
_02249E14: .word ov23_02249E18
	thumb_func_end ov23_02249DBC

	thumb_func_start ov23_02249E18
ov23_02249E18: ; 0x02249E18
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_02242B14
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02249E7E
	bl sub_020360F0
	cmp r0, #0
	bne _02249E50
	bl sub_02033E48
	cmp r0, #0
	beq _02249E50
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02249E7E
	bl sub_02036180
	cmp r0, #0
	bne _02249E7E
_02249E50:
	mov r0, #0
	bl ov23_0224B5CC
	bl ov23_0224AA84
	bl ov23_0224DA8C
	mov r0, #0x2b
	bl sub_020360DC
	bl sub_0203608C
	mov r1, #1
	bl ov23_02244858
	bl ov23_0224321C
	bl sub_02036824
	ldr r0, _02249E80 ; =ov23_02249FB4
	mov r1, #0
	bl ov23_02249C24
_02249E7E:
	pop {r4, pc}
	; .align 2, 0
_02249E80: .word ov23_02249FB4
	thumb_func_end ov23_02249E18

	thumb_func_start ov23_02249E84
ov23_02249E84: ; 0x02249E84
	push {r3, lr}
	bl sub_0205764C
	ldr r0, _02249E94 ; =ov23_02249E98
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249E94: .word ov23_02249E98
	thumb_func_end ov23_02249E84

	thumb_func_start ov23_02249E98
ov23_02249E98: ; 0x02249E98
	ldr r3, _02249E9C ; =ov23_02242B14
	bx r3
	; .align 2, 0
_02249E9C: .word ov23_02242B14
	thumb_func_end ov23_02249E98

	thumb_func_start ov23_02249EA0
ov23_02249EA0: ; 0x02249EA0
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	ldr r0, _02249EB8 ; =ov23_02249E18
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249EB8: .word ov23_02249E18
	thumb_func_end ov23_02249EA0

	thumb_func_start ov23_02249EBC
ov23_02249EBC: ; 0x02249EBC
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #9
	bne _02249ED2
	bl sub_02032AC0
	bl ov23_02243360
_02249ED2:
	ldrh r0, [r4, #0x3c]
	cmp r0, #1
	bne _02249EDE
	mov r0, #0
	bl sub_02057B14
_02249EDE:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249EEA
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_02249EEA:
	bl sub_02032BDC
	cmp r0, #0
	beq _02249F06
	ldr r0, _02249F0C ; =0x022575C4
	bl ov23_022499E4
	bl ov23_0224AAB0
	ldr r0, _02249F10 ; =ov23_02249F14
	mov r1, #0xc8
	bl ov23_02249C24
	pop {r4, pc}
_02249F06:
	bl ov23_0224A09C
	pop {r4, pc}
	; .align 2, 0
_02249F0C: .word 0x022575C4
_02249F10: .word ov23_02249F14
	thumb_func_end ov23_02249EBC

	thumb_func_start ov23_02249F14
ov23_02249F14: ; 0x02249F14
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_0224AC3C
	cmp r0, #0
	beq _02249F32
	bl ov23_02243AF0
	ldr r0, _02249F48 ; =ov23_02249F4C
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
_02249F32:
	bl ov23_0224A09C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249F42
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_02249F42:
	bl ov23_0224A064
	pop {r4, pc}
	; .align 2, 0
_02249F48: .word ov23_02249F4C
	thumb_func_end ov23_02249F14

	thumb_func_start ov23_02249F4C
ov23_02249F4C: ; 0x02249F4C
	push {r3, lr}
	bl ov23_0224404C
	cmp r0, #0
	beq _02249F6E
	ldr r0, _02249F74 ; =0x022575D8
	bl ov23_022499E4
	bl ov23_02244068
	bl ov23_0224C21C
	ldr r0, _02249F78 ; =ov23_02249F7C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
_02249F6E:
	bl ov23_0224A09C
	pop {r3, pc}
	; .align 2, 0
_02249F74: .word 0x022575D8
_02249F78: .word ov23_02249F7C
	thumb_func_end ov23_02249F4C

	thumb_func_start ov23_02249F7C
ov23_02249F7C: ; 0x02249F7C
	push {r3, lr}
	bl ov23_0224C420
	cmp r0, #0
	beq _02249FA6
	ldr r0, _02249FAC ; =0x022575F4
	bl ov23_022499E4
	bl ov23_0224C434
	mov r0, #1
	bl sub_02057AE4
	mov r0, #0x1f
	bl sub_020360DC
	ldr r0, _02249FB0 ; =ov23_0224A09C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
_02249FA6:
	bl ov23_0224A09C
	pop {r3, pc}
	; .align 2, 0
_02249FAC: .word 0x022575F4
_02249FB0: .word ov23_0224A09C
	thumb_func_end ov23_02249F7C

	thumb_func_start ov23_02249FB4
ov23_02249FB4: ; 0x02249FB4
	push {r3, lr}
	bl sub_02036180
	cmp r0, #0
	beq _02249FCE
	mov r0, #0
	add r1, r0, #0
	bl sub_02059058
	ldr r0, _02249FD0 ; =ov23_02249FD4
	mov r1, #0x1e
	bl ov23_02249C24
_02249FCE:
	pop {r3, pc}
	; .align 2, 0
_02249FD0: .word ov23_02249FD4
	thumb_func_end ov23_02249FB4

	thumb_func_start ov23_02249FD4
ov23_02249FD4: ; 0x02249FD4
	push {r3, lr}
	bl sub_0205964C
	ldrh r1, [r0, #0x3c]
	cmp r1, #0
	beq _02249FE6
	sub r1, r1, #1
	strh r1, [r0, #0x3c]
	pop {r3, pc}
_02249FE6:
	bl sub_0203608C
	cmp r0, #0
	bne _02249FF6
	ldr r0, _02249FF8 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
_02249FF6:
	pop {r3, pc}
	; .align 2, 0
_02249FF8: .word ov23_02249C34
	thumb_func_end ov23_02249FD4

	thumb_func_start ov23_02249FFC
ov23_02249FFC: ; 0x02249FFC
	push {r3, lr}
	bl sub_0205964C
	ldrh r1, [r0, #0x3c]
	cmp r1, #0
	beq _0224A00E
	sub r1, r1, #1
	strh r1, [r0, #0x3c]
	pop {r3, pc}
_0224A00E:
	bl sub_0203608C
	cmp r0, #0
	bne _0224A01E
	ldr r0, _0224A020 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
_0224A01E:
	pop {r3, pc}
	; .align 2, 0
_0224A020: .word ov23_02249C34
	thumb_func_end ov23_02249FFC

	thumb_func_start ov23_0224A024
ov23_0224A024: ; 0x0224A024
	ldr r3, _0224A028 ; =ov23_02242B14
	bx r3
	; .align 2, 0
_0224A028: .word ov23_02242B14
	thumb_func_end ov23_0224A024

	thumb_func_start ov23_0224A02C
ov23_0224A02C: ; 0x0224A02C
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _0224A05C
	ldr r0, [r4, #0x18]
	bl ov23_02242D44
	bl sub_02032AC0
	mov r0, #0
	bl sub_02057AE4
	bl ov23_02243AF0
	bl ov23_0224C21C
	ldr r0, _0224A060 ; =ov23_0224A024
	mov r1, #0
	bl ov23_02249C24
_0224A05C:
	pop {r4, pc}
	nop
_0224A060: .word ov23_0224A024
	thumb_func_end ov23_0224A02C

	thumb_func_start ov23_0224A064
ov23_0224A064: ; 0x0224A064
	push {r3, lr}
	bl sub_0203608C
	mov r1, #1
	bl ov23_02244858
	bl sub_0203608C
	mov r1, #1
	bl ov23_0224D9AC
	bl ov23_0224160C
	bl sub_020578B0
	bl ov23_0224321C
	bl sub_020367F0
	bl ov23_0224AC4C
	ldr r0, _0224A098 ; =ov23_02249FFC
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A098: .word ov23_02249FFC
	thumb_func_end ov23_0224A064

	thumb_func_start ov23_0224A09C
ov23_0224A09C: ; 0x0224A09C
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_02242B14
	bl sub_02059524
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0224A0C8
	bl sub_02033E68
	cmp r0, #0
	bne _0224A0C4
	bl sub_020360F0
	cmp r0, #0
	beq _0224A0C8
_0224A0C4:
	bl ov23_0224A064
_0224A0C8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A09C

	thumb_func_start ov23_0224A0CC
ov23_0224A0CC: ; 0x0224A0CC
	push {r3, lr}
	bl sub_0205764C
	ldr r0, _0224A0DC ; =ov23_0224A0E0
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A0DC: .word ov23_0224A0E0
	thumb_func_end ov23_0224A0CC

	thumb_func_start ov23_0224A0E0
ov23_0224A0E0: ; 0x0224A0E0
	ldr r3, _0224A0E4 ; =ov23_0224DAB4
	bx r3
	; .align 2, 0
_0224A0E4: .word ov23_0224DAB4
	thumb_func_end ov23_0224A0E0

	thumb_func_start ov23_0224A0E8
ov23_0224A0E8: ; 0x0224A0E8
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	bl sub_02033E68
	cmp r0, #0
	bne _0224A106
	bl sub_020360F0
	cmp r0, #0
	beq _0224A124
_0224A106:
	bl ov23_0224B518
	bl sub_020578B0
	bl ov23_0224321C
	bl sub_020367F0
	bl ov23_0224AC4C
	ldr r0, _0224A130 ; =ov23_02249FFC
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
_0224A124:
	ldr r0, _0224A134 ; =ov23_0224A09C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	nop
_0224A130: .word ov23_02249FFC
_0224A134: .word ov23_0224A09C
	thumb_func_end ov23_0224A0E8

	thumb_func_start ov23_0224A138
ov23_0224A138: ; 0x0224A138
	push {r3, lr}
	bl sub_0205764C
	ldr r0, _0224A148 ; =ov23_0224A14C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A148: .word ov23_0224A14C
	thumb_func_end ov23_0224A138

	thumb_func_start ov23_0224A14C
ov23_0224A14C: ; 0x0224A14C
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224A14C

	thumb_func_start ov23_0224A150
ov23_0224A150: ; 0x0224A150
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	ldr r0, _0224A168 ; =ov23_02249CE4
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A168: .word ov23_02249CE4
	thumb_func_end ov23_0224A150

	thumb_func_start ov23_0224A16C
ov23_0224A16C: ; 0x0224A16C
	push {r3, lr}
	bl ov23_0224A1D0
	ldr r0, _0224A17C ; =ov23_0224A180
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A17C: .word ov23_0224A180
	thumb_func_end ov23_0224A16C

	thumb_func_start ov23_0224A180
ov23_0224A180: ; 0x0224A180
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224A180

	thumb_func_start ov23_0224A184
ov23_0224A184: ; 0x0224A184
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	ldr r0, _0224A19C ; =ov23_0224A024
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A19C: .word ov23_0224A024
	thumb_func_end ov23_0224A184

	thumb_func_start ov23_0224A1A0
ov23_0224A1A0: ; 0x0224A1A0
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0224A1B4
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_0224A1B4:
	bl ov23_02242D08
	bl sub_020367D0
	mov r0, #0x21
	bl sub_0201807C
	mov r0, #0
	add r4, #0x41
	strb r0, [r4]
	bl sub_020596BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A1A0

	thumb_func_start ov23_0224A1D0
ov23_0224A1D0: ; 0x0224A1D0
	push {r4, r5, r6, lr}
	bl sub_02057518
	add r6, r0, #0
	beq _0224A1FC
	mov r5, #0
	add r4, r5, #0
_0224A1DE:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	add r2, r4, #0
	bl sub_02057DB8
	add r0, r5, #0
	bl sub_020593B4
	add r5, r5, #1
	cmp r5, #8
	blt _0224A1DE
	ldr r0, _0224A200 ; =0x000002BD
	mov r1, #1
	strb r1, [r6, r0]
_0224A1FC:
	pop {r4, r5, r6, pc}
	nop
_0224A200: .word 0x000002BD
	thumb_func_end ov23_0224A1D0

	thumb_func_start ov23_0224A204
ov23_0224A204: ; 0x0224A204
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	bl sub_0203608C
	cmp r5, r0
	bne _0224A28A
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224A290
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x1c
	bl sub_0202CFEC
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224A240
	bl sub_020181C4
_0224A240:
	mov r0, #0x9e
	add r6, r4, #0
	lsl r0, r0, #2
	mov r3, #4
	add r6, #0x10
	add r1, r0, #4
_0224A24C:
	ldr r2, [r6, r0]
	sub r3, r3, #1
	str r2, [r6, r1]
	sub r6, r6, #4
	cmp r3, #1
	bge _0224A24C
	mov r0, #0x29
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r7, r5, #2
	ldr r1, [r6, r7]
	sub r0, #0x14
	str r1, [r4, r0]
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298B0
	ldr r1, [r6, r7]
	bl sub_02028830
	mov r0, #0
	str r0, [r6, r7]
	mov r0, #0x22
	mul r0, r5
	mov r2, #0xff
	add r1, r4, r0
	add r0, r2, #0
	add r0, #0x6b
	strh r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224A28A:
	add r0, r5, #0
	bl ov23_0224AE60
_0224A290:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A204

	thumb_func_start ov23_0224A294
ov23_0224A294: ; 0x0224A294
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02057518
	mov r7, #0x29
	add r2, r0, #0
	lsl r1, r5, #2
	add r0, r2, r1
	lsl r7, r7, #4
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _0224A2F6
	lsl r0, r4, #2
	add r0, r2, r0
	ldr r3, [r0, r7]
	cmp r3, #0
	beq _0224A2F6
	add r6, r2, r7
	str r3, [r6, r1]
	mov r3, #0
	str r3, [r0, r7]
	add r0, r2, r5
	mov r3, #1
	add r0, #0xfa
	strb r3, [r0]
	add r3, r2, r4
	add r3, #0xfa
	mov r0, #0
	strb r0, [r3]
	mov r0, #0x22
	add r3, r5, #0
	mul r3, r0
	ldr r7, _0224A2FC ; =0x0000016A
	add r0, r2, r3
	strh r5, [r0, r7]
	mov r0, #0x22
	mul r0, r4
	mov r5, #0xff
	add r0, r2, r0
	strh r5, [r0, r7]
	add r5, #0x4b
	ldr r0, [r6, r1]
	add r1, r2, r5
	add r1, r1, r3
	bl sub_02025E80
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224A2F6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A2FC: .word 0x0000016A
	thumb_func_end ov23_0224A294

	thumb_func_start ov23_0224A300
ov23_0224A300: ; 0x0224A300
	ldr r3, _0224A304 ; =sub_02059514
	bx r3
	; .align 2, 0
_0224A304: .word sub_02059514
	thumb_func_end ov23_0224A300

	thumb_func_start ov23_0224A308
ov23_0224A308: ; 0x0224A308
	ldr r3, _0224A30C ; =sub_02059514
	bx r3
	; .align 2, 0
_0224A30C: .word sub_02059514
	thumb_func_end ov23_0224A308

	thumb_func_start ov23_0224A310
ov23_0224A310: ; 0x0224A310
	ldr r3, _0224A318 ; =sub_0205948C
	mov r0, #2
	bx r3
	nop
_0224A318: .word sub_0205948C
	thumb_func_end ov23_0224A310

	thumb_func_start ov23_0224A31C
ov23_0224A31C: ; 0x0224A31C
	ldr r3, _0224A324 ; =sub_0205948C
	mov r0, #0x20
	bx r3
	nop
_0224A324: .word sub_0205948C
	thumb_func_end ov23_0224A31C

	thumb_func_start ov23_0224A328
ov23_0224A328: ; 0x0224A328
	ldr r3, _0224A330 ; =sub_0205948C
	mov r0, #1
	bx r3
	nop
_0224A330: .word sub_0205948C
	thumb_func_end ov23_0224A328

	thumb_func_start ov23_0224A334
ov23_0224A334: ; 0x0224A334
	push {r3, lr}
	bl sub_02057518
	cmp r0, #0
	beq _0224A346
	mov r1, #0xae
	mov r2, #0
	lsl r1, r1, #2
	strb r2, [r0, r1]
_0224A346:
	pop {r3, pc}
	thumb_func_end ov23_0224A334

	thumb_func_start ov23_0224A348
ov23_0224A348: ; 0x0224A348
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02057518
	add r0, r0, r4
	mov r2, #2
	add r1, sp, #0
	strb r2, [r1]
	strb r4, [r1, #1]
	add r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224A384
	add r0, r4, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _0224A384
	add r0, r4, #0
	bl ov23_0224AEA4
	cmp r0, #0
	add r0, sp, #0
	beq _0224A380
	mov r1, #3
	strb r1, [r0]
	b _0224A384
_0224A380:
	mov r1, #1
	strb r1, [r0]
_0224A384:
	mov r0, #0x1d
	add r1, sp, #0
	mov r2, #2
	bl sub_02035AC4
	cmp r0, #0
	beq _0224A3A2
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #2
	beq _0224A3A2
	add r0, r4, #0
	mov r1, #0
	bl sub_02059058
_0224A3A2:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A348

	thumb_func_start ov23_0224A3A8
ov23_0224A3A8: ; 0x0224A3A8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	bl sub_02035EE0
	cmp r0, #0
	beq _0224A408
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A3E2
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A3E2
	mov r0, #0xae
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0224A408
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _0224A40C ; =ov23_0224A334
	ldr r1, [r4, #0x54]
	bl ov23_0224F758
	pop {r3, r4, r5, pc}
_0224A3E2:
	ldrb r0, [r5]
	cmp r0, #3
	bne _0224A408
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A408
	mov r0, #0xae
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0224A408
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _0224A40C ; =ov23_0224A334
	ldr r1, [r4, #0x54]
	bl ov23_02250A50
_0224A408:
	pop {r3, r4, r5, pc}
	nop
_0224A40C: .word ov23_0224A334
	thumb_func_end ov23_0224A3A8

	thumb_func_start ov23_0224A410
ov23_0224A410: ; 0x0224A410
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #8
	blo _0224A42E
	bl sub_02022974
_0224A42E:
	ldrb r0, [r5]
	cmp r0, #4
	bne _0224A450
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A450
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224A564 ; =ov23_0224A300
	mov r1, #0x48
	mov r2, #1
	bl ov23_02253F40
_0224A450:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A45E
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl sub_02058FE4
_0224A45E:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A518
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A518
	ldrb r0, [r5, #2]
	ldr r1, _0224A568 ; =ov23_0224A334
	ldr r2, [r4, #0x54]
	bl ov23_0224DCB8
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	mov r1, #0xf
	ldrb r2, [r5, #1]
	bic r0, r1
	mov r1, #0xf
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	mov r1, #0xf0
	bic r0, r1
	ldrb r1, [r5, #2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x59
	ldrb r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x59
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	ldrb r7, [r5, #2]
	add r0, r4, r7
	add r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224A518
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	add r1, r7, #0
	bl sub_020294F4
	add r0, r6, #0
	bl sub_0206B354
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B364
	add r0, r6, #0
	bl sub_0206B374
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B384
	add r2, r4, #0
	ldrb r1, [r5, #2]
	add r2, #0x5a
	ldrb r0, [r2, r1]
	add r0, r0, #1
	strb r0, [r2, r1]
_0224A518:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A532
	ldrb r6, [r5, #2]
	bl sub_0203608C
	cmp r6, r0
	bne _0224A532
	ldrb r1, [r5, #1]
	ldr r2, [r4, #0x54]
	add r0, r6, #0
	bl ov23_0224F07C
_0224A532:
	ldrb r0, [r5]
	cmp r0, #2
	bne _0224A554
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A554
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224A564 ; =ov23_0224A300
	mov r1, #2
	mov r2, #1
	bl ov23_02253F40
_0224A554:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A562
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl ov23_0224300C
_0224A562:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A564: .word ov23_0224A300
_0224A568: .word ov23_0224A334
	thumb_func_end ov23_0224A410

	thumb_func_start ov23_0224A56C
ov23_0224A56C: ; 0x0224A56C
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224A56C

	thumb_func_start ov23_0224A570
ov23_0224A570: ; 0x0224A570
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, sp, #0
	strb r4, [r0, #1]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0224A588
	cmp r1, #3
	beq _0224A598
	add sp, #4
	pop {r3, r4, pc}
_0224A588:
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	add sp, #4
	pop {r3, r4, pc}
_0224A598:
	mov r1, #3
	strb r1, [r0]
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	add r0, r4, #0
	mov r1, #0
	bl sub_02059058
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov23_0224A570

	thumb_func_start ov23_0224A5B0
ov23_0224A5B0: ; 0x0224A5B0
	push {r3, lr}
	bl sub_0203608C
	bl ov23_0224B040
	bl ov23_022421AC
	bl ov23_02254044
	mov r0, #4
	bl sub_0205948C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A5B0

	thumb_func_start ov23_0224A5CC
ov23_0224A5CC: ; 0x0224A5CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	bl sub_02057518
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	bl sub_02035D78
	cmp r0, #0
	bne _0224A5F8
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_0224A5F8:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r0, #0x3c
	ble _0224A604
	mov r4, #1
_0224A604:
	cmp r4, #0
	beq _0224A61E
	ldr r0, [sp]
	mov r1, #1
	add r0, r0, r7
	add r0, #0xea
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0224A61E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224A5CC

	thumb_func_start ov23_0224A620
ov23_0224A620: ; 0x0224A620
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	str r2, [r1, #0]
	add r0, r4, r5
	str r5, [r1, #4]
	add r0, #0xea
	strb r2, [r0]
	ldr r0, _0224A654 ; =ov23_0224A5CC
	mov r2, #0x64
	bl sub_0200D9E8
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	pop {r3, r4, r5, pc}
	nop
_0224A654: .word ov23_0224A5CC
	thumb_func_end ov23_0224A620

	thumb_func_start ov23_0224A658
ov23_0224A658: ; 0x0224A658
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	tst r1, r2
	beq _0224A66C
	mov r1, #0xb
	add r0, sp, #0
	strb r1, [r0]
	b _0224A69E
_0224A66C:
	bl ov23_0224AEA4
	cmp r0, #0
	beq _0224A67C
	mov r1, #0xb
	add r0, sp, #0
	strb r1, [r0]
	b _0224A69E
_0224A67C:
	cmp r4, #0xff
	bne _0224A684
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A684:
	add r0, r4, #0
	bl ov23_0224AEA4
	cmp r0, #0
	bne _0224A692
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A692:
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	bl ov23_0224A620
_0224A69E:
	add r0, sp, #0
	strb r5, [r0, #1]
	strb r4, [r0, #2]
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224A658

	thumb_func_start ov23_0224A6B8
ov23_0224A6B8: ; 0x0224A6B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_0224AEA4
	cmp r0, #0
	beq _0224A6CE
	mov r1, #0xc
	add r0, sp, #0
	strb r1, [r0]
	b _0224A6D4
_0224A6CE:
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224A6D4:
	strb r4, [r0, #1]
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov23_0224A6B8

	thumb_func_start ov23_0224A6E4
ov23_0224A6E4: ; 0x0224A6E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02057518
	add r6, r0, #0
	bl ov23_0224321C
	mov r0, #0
	bl sub_02057FC4
	mov r0, #4
	bl sub_02059464
	bl ov23_022421AC
	add r7, r0, #0
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r7, #0
	bl ov23_02254068
	cmp r4, #0
	beq _0224A746
	bl sub_0203608C
	add r0, r6, r0
	mov r1, #0
	add r0, #0xfa
	strb r1, [r0]
	bl sub_0203608C
	bl ov23_0224B040
	bl sub_0203608C
	bl ov23_0224B00C
	bl ov23_022421AC
	ldr r3, _0224A770 ; =ov23_0224A5B0
	mov r1, #0xa
	mov r2, #1
	bl ov23_02253F40
	b _0224A754
_0224A746:
	bl ov23_022421AC
	ldr r3, _0224A770 ; =ov23_0224A5B0
	mov r1, #0xb
	mov r2, #1
	bl ov23_02253F40
_0224A754:
	mov r0, #0xff
	str r0, [sp]
	mov r3, #0
	ldr r1, _0224A774 ; =0x00000424
	mov r0, #4
	mov r2, #0x3c
	str r3, [sp, #4]
	bl sub_0200502C
	ldr r0, _0224A778 ; =0x000005F6
	bl sub_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A770: .word ov23_0224A5B0
_0224A774: .word 0x00000424
_0224A778: .word 0x000005F6
	thumb_func_end ov23_0224A6E4

	thumb_func_start ov23_0224A77C
ov23_0224A77C: ; 0x0224A77C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	ldrb r0, [r5]
	cmp r0, #5
	bgt _0224A7AE
	cmp r0, #0
	blt _0224A7E8
	beq _0224A7C4
	cmp r0, #3
	bne _0224A7A6
	b _0224A96A
_0224A7A6:
	cmp r0, #5
	beq _0224A812
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A7AE:
	cmp r0, #0xc
	bgt _0224A7E8
	cmp r0, #0xb
	blt _0224A7E8
	bne _0224A7BA
	b _0224A924
_0224A7BA:
	cmp r0, #0xc
	bne _0224A7C0
	b _0224A948
_0224A7C0:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A7C4:
	ldrb r0, [r5, #1]
	lsl r1, r0, #2
	add r2, r4, r1
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _0224A7E8
	bl ov23_0224AE60
	ldrb r0, [r5, #1]
	bl ov23_0224B040
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _0224A7EA
_0224A7E8:
	b _0224AA52
_0224A7EA:
	bl sub_020594FC
	bl ov23_022421AC
	ldr r3, _0224AA58 ; =ov23_0224A308
	mov r1, #2
	mov r2, #1
	bl ov23_02253F40
	mov r0, #0xff
	str r0, [sp]
	mov r3, #0
	ldr r1, _0224AA5C ; =0x00000424
	mov r0, #4
	mov r2, #0x3c
	str r3, [sp, #4]
	bl sub_0200502C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A812:
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	cmp r0, #0
	ldrb r0, [r5, #2]
	bne _0224A826
	bl ov23_0224AE60
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A826:
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224A848
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _0224A840
	b _0224AA52
_0224A840:
	bl sub_02059514
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A848:
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	ldrb r0, [r5, #2]
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl sub_0202600C
	cmp r0, #1
	bne _0224A8B2
	ldrb r0, [r5, #2]
	bl ov23_0224AE60
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A894
	add r0, r6, #0
	bl sub_020297EC
	bl sub_020594FC
	bl ov23_022421AC
	ldr r3, _0224AA60 ; =ov23_0224A300
	mov r1, #0xd
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _0224AA64 ; =0x00000625
	bl sub_02005748
	b _0224A8A8
_0224A894:
	bl sub_0203608C
	ldrb r1, [r5, #2]
	cmp r1, r0
	bne _0224A8A8
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ov23_0224A6E4
_0224A8A8:
	ldrb r0, [r5, #1]
	bl ov23_0224D530
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A8B2:
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl ov23_0224A294
	cmp r0, #0
	beq _0224A92E
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A904
	add r0, r6, #0
	bl sub_0202955C
	mov r0, #1
	bl sub_02059464
	bl ov23_022421AC
	add r4, r0, #0
	ldrb r0, [r5, #2]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02254068
	bl ov23_022421AC
	ldr r3, _0224AA68 ; =ov23_0224A328
	mov r1, #0xc
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _0224AA6C ; =0x00000425
	bl sub_0200549C
	ldr r0, _0224AA64 ; =0x00000625
	bl sub_02005748
	b _0224A918
_0224A904:
	bl sub_0203608C
	ldrb r1, [r5, #2]
	cmp r1, r0
	bne _0224A918
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ov23_0224A6E4
_0224A918:
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl ov23_0224D518
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A924:
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _0224A930
_0224A92E:
	b _0224AA52
_0224A930:
	mov r0, #2
	bl sub_02059464
	bl ov23_022421AC
	ldr r3, _0224AA70 ; =ov23_0224A310
	mov r1, #6
	mov r2, #1
	bl ov23_02253F40
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A948:
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224AA52
	mov r0, #0x20
	bl sub_02059464
	bl ov23_022421AC
	ldr r3, _0224AA74 ; =ov23_0224A31C
	mov r1, #5
	mov r2, #1
	bl ov23_02253F40
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A96A:
	ldrb r0, [r5, #1]
	mov r1, #0
	add r0, r4, r0
	add r0, #0xfa
	strb r1, [r0]
	ldrb r0, [r5, #1]
	bl ov23_0224B040
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224AA10
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	bl sub_0202958C
	add r1, sp, #8
	strb r0, [r1]
	add r0, r6, #0
	bl sub_020295C0
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AA40
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0224A9CE
	ldr r0, [r4, #0x54]
	bl sub_0206DAB8
	ldr r0, _0224AA78 ; =0x000002B2
	ldr r1, _0224AA7C ; =0x0000FFFF
	ldrh r2, [r4, r0]
	cmp r2, r1
	beq _0224A9CE
	add r1, r2, #1
	strh r1, [r4, r0]
_0224A9CE:
	bl sub_020594FC
	ldr r0, _0224AA80 ; =0x0000062B
	bl sub_02005748
	add r0, r6, #0
	bl sub_0202958C
	add r1, sp, #8
	ldrb r1, [r1]
	cmp r1, r0
	bne _0224A9F6
	bl ov23_022421AC
	ldr r3, _0224AA60 ; =ov23_0224A300
	mov r1, #7
	mov r2, #1
	bl ov23_02253F40
	b _0224A9FE
_0224A9F6:
	mov r0, #0x60
	add r1, sp, #8
	bl sub_020360D0
_0224A9FE:
	mov r0, #0xff
	str r0, [sp]
	mov r3, #0
	ldr r1, _0224AA5C ; =0x00000424
	mov r0, #4
	mov r2, #0x3c
	str r3, [sp, #4]
	bl sub_0200502C
_0224AA10:
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AA4C
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl sub_0202600C
	cmp r0, #1
	bne _0224AA4C
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_0206DAD4
_0224AA4C:
	ldrb r0, [r5, #1]
	bl ov23_0224A204
_0224AA52:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AA58: .word ov23_0224A308
_0224AA5C: .word 0x00000424
_0224AA60: .word ov23_0224A300
_0224AA64: .word 0x00000625
_0224AA68: .word ov23_0224A328
_0224AA6C: .word 0x00000425
_0224AA70: .word ov23_0224A310
_0224AA74: .word ov23_0224A31C
_0224AA78: .word 0x000002B2
_0224AA7C: .word 0x0000FFFF
_0224AA80: .word 0x0000062B
	thumb_func_end ov23_0224A77C

	thumb_func_start ov23_0224AA84
ov23_0224AA84: ; 0x0224AA84
	push {r3, lr}
	bl sub_02057518
	mov r2, #0xff
	add r1, r2, #0
	mov r3, #0
	add r1, #0x6b
_0224AA92:
	add r3, r3, #1
	strh r2, [r0, r1]
	add r0, #0x22
	cmp r3, #8
	blt _0224AA92
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AA84

	thumb_func_start ov23_0224AAA0
ov23_0224AAA0: ; 0x0224AAA0
	push {r3, lr}
	bl sub_02057518
	ldr r1, _0224AAAC ; =0x0000025A
	add r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
_0224AAAC: .word 0x0000025A
	thumb_func_end ov23_0224AAA0

	thumb_func_start ov23_0224AAB0
ov23_0224AAB0: ; 0x0224AAB0
	push {r3, r4, r5, lr}
	bl sub_02057518
	add r4, r0, #0
	ldr r0, _0224AB28 ; =0x000002B9
	mov r1, #0
	strb r1, [r4, r0]
	bl sub_0203608C
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AAE8
	bl sub_0203608C
	add r1, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	mov r0, #0x5b
	bl sub_020360D0
	pop {r3, r4, r5, pc}
_0224AAE8:
	mov r0, #0xf
	bl sub_02025E6C
	add r4, r0, #0
	mov r0, #0x14
	mov r1, #0xf
	bl sub_02023790
	add r5, r0, #0
	cmp r4, #0
	bne _0224AB02
	bl sub_02022974
_0224AB02:
	cmp r5, #0
	bne _0224AB0A
	bl sub_02022974
_0224AB0A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02025EE0
	mov r0, #0x5b
	add r1, r4, #0
	bl sub_020360D0
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AB28: .word 0x000002B9
	thumb_func_end ov23_0224AAB0

	thumb_func_start ov23_0224AB2C
ov23_0224AB2C: ; 0x0224AB2C
	mov r0, #0x20
	bx lr
	thumb_func_end ov23_0224AB2C

	thumb_func_start ov23_0224AB30
ov23_0224AB30: ; 0x0224AB30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r2, #0
	bl sub_02057518
	add r7, r0, #0
	add r0, sp, #4
	strb r4, [r0]
	beq _0224ABB0
	ldr r1, _0224ABB8 ; =0x0000014A
	mov r0, #0x22
	add r5, r4, #0
	mul r5, r0
	add r1, r7, r1
	add r0, r6, #0
	add r1, r1, r5
	bl sub_02025E80
	add r0, r6, #0
	mov r1, #0xf
	bl sub_02025F04
	str r0, [sp]
	bl sub_02023C3C
	cmp r0, #0
	beq _0224AB6E
	ldr r0, _0224ABBC ; =0x0000016A
	add r1, r7, r5
	strh r4, [r1, r0]
_0224AB6E:
	ldr r0, _0224ABB8 ; =0x0000014A
	mov r4, #0
	add r5, r7, #0
	add r6, r7, r0
_0224AB76:
	ldr r0, _0224ABBC ; =0x0000016A
	ldrh r0, [r5, r0]
	cmp r0, #0xff
	beq _0224AB8C
	ldr r0, _0224ABBC ; =0x0000016A
	add r1, r6, #0
	strh r4, [r5, r0]
	mov r0, #0x5c
	mov r2, #0x22
	bl sub_02035A3C
_0224AB8C:
	add r4, r4, #1
	add r5, #0x22
	add r6, #0x22
	cmp r4, #8
	blt _0224AB76
	mov r0, #0x5d
	add r1, sp, #4
	mov r2, #1
	bl sub_02035AC4
	ldr r0, [sp]
	bl sub_020237BC
	ldr r0, _0224ABC0 ; =0x000002C2
	mov r1, #1
	add sp, #8
	strb r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224ABB0:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224ABB8: .word 0x0000014A
_0224ABBC: .word 0x0000016A
_0224ABC0: .word 0x000002C2
	thumb_func_end ov23_0224AB30

	thumb_func_start ov23_0224ABC4
ov23_0224ABC4: ; 0x0224ABC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	bl sub_02057518
	add r4, r0, #0
	beq _0224AC08
	ldrh r5, [r7, #0x20]
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224ABE4
	bl sub_020181C4
_0224ABE4:
	mov r0, #0x29
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r0, r5, #2
	str r0, [sp]
	mov r0, #0xf
	bl sub_02025E6C
	ldr r1, [sp]
	str r0, [r6, r1]
	ldr r1, [r6, r1]
	add r0, r7, #0
	bl sub_02025E80
	add r0, r4, r5
	mov r1, #1
	add r0, #0xfa
	strb r1, [r0]
_0224AC08:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224ABC4

	thumb_func_start ov23_0224AC0C
ov23_0224AC0C: ; 0x0224AC0C
	mov r0, #0x22
	bx lr
	thumb_func_end ov23_0224AC0C

	thumb_func_start ov23_0224AC10
ov23_0224AC10: ; 0x0224AC10
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224AC2A
	ldr r0, _0224AC34 ; =0x000002B9
	mov r1, #1
	strb r1, [r4, r0]
_0224AC2A:
	ldr r0, _0224AC38 ; =0x000002C2
	mov r1, #0
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0224AC34: .word 0x000002B9
_0224AC38: .word 0x000002C2
	thumb_func_end ov23_0224AC10

	thumb_func_start ov23_0224AC3C
ov23_0224AC3C: ; 0x0224AC3C
	push {r3, lr}
	bl sub_02057518
	ldr r1, _0224AC48 ; =0x000002B9
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0224AC48: .word 0x000002B9
	thumb_func_end ov23_0224AC3C

	thumb_func_start ov23_0224AC4C
ov23_0224AC4C: ; 0x0224AC4C
	push {r4, r5, r6, lr}
	mov r6, #0
	bl sub_0203608C
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	lsl r0, r5, #2
	add r2, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _0224AC84
	add r6, r1, #0
	mov r1, #0
	str r1, [r2, r0]
	add r0, r4, r5
	add r0, #0xfa
	strb r1, [r0]
	mov r1, #0x22
	mul r1, r5
	mov r0, #0xff
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x6b
	strh r0, [r2, r1]
_0224AC84:
	mov r5, #0
_0224AC86:
	add r0, r5, #0
	bl ov23_0224AE60
	add r5, r5, #1
	cmp r5, #8
	blt _0224AC86
	cmp r6, #0
	beq _0224ACB4
	mov r0, #0x29
	lsl r0, r0, #4
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfa
	strb r1, [r0]
	ldr r1, _0224ACB8 ; =0x0000014A
	add r0, r6, #0
	add r1, r4, r1
	bl sub_02025E80
	ldr r0, _0224ACBC ; =0x0000016A
	mov r1, #0
	strh r1, [r4, r0]
_0224ACB4:
	pop {r4, r5, r6, pc}
	nop
_0224ACB8: .word 0x0000014A
_0224ACBC: .word 0x0000016A
	thumb_func_end ov23_0224AC4C

	thumb_func_start ov23_0224ACC0
ov23_0224ACC0: ; 0x0224ACC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224ACE4
	add r1, r4, #0
	bl ov23_0224993C
	bl ov23_0224999C
	cmp r0, #0
	bne _0224ACE0
	mov r0, #1
	pop {r4, pc}
_0224ACE0:
	mov r0, #0
	pop {r4, pc}
_0224ACE4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov23_0224ACC0

	thumb_func_start ov23_0224ACE8
ov23_0224ACE8: ; 0x0224ACE8
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x1a
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, pc}
	thumb_func_end ov23_0224ACE8

	thumb_func_start ov23_0224ACF8
ov23_0224ACF8: ; 0x0224ACF8
	ldr r3, _0224AD00 ; =ov23_02243020
	ldrb r0, [r2]
	bx r3
	nop
_0224AD00: .word ov23_02243020
	thumb_func_end ov23_0224ACF8

	thumb_func_start ov23_0224AD04
ov23_0224AD04: ; 0x0224AD04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	bne _0224AD14
	ldr r0, _0224AD3C ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_0224AD14:
	bl sub_0203608C
	cmp r5, r0
	bne _0224AD26
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD26:
	bl sub_02058C40
	cmp r0, #0
	beq _0224AD38
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD38:
	ldr r0, _0224AD3C ; =0x0000FFFF
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AD3C: .word 0x0000FFFF
	thumb_func_end ov23_0224AD04

	thumb_func_start ov23_0224AD40
ov23_0224AD40: ; 0x0224AD40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	bne _0224AD50
	ldr r0, _0224AD78 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_0224AD50:
	bl sub_0203608C
	cmp r5, r0
	bne _0224AD62
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD62:
	bl sub_02058C40
	cmp r0, #0
	beq _0224AD74
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD74:
	ldr r0, _0224AD78 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AD78: .word 0x0000FFFF
	thumb_func_end ov23_0224AD40

	thumb_func_start ov23_0224AD7C
ov23_0224AD7C: ; 0x0224AD7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02057518
	ldr r0, [r0, #4]
	add r1, r5, #0
	bl ov23_0224993C
	add r1, r4, #0
	bl ov23_02249994
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AD7C

	thumb_func_start ov23_0224AD98
ov23_0224AD98: ; 0x0224AD98
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	ldr r0, [r0, #4]
	add r1, r4, #0
	bl ov23_0224993C
	mov r1, #0
	bl ov23_02249994
	pop {r4, pc}
	thumb_func_end ov23_0224AD98

	thumb_func_start ov23_0224ADB0
ov23_0224ADB0: ; 0x0224ADB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r3, #0
	bl sub_02057518
	add r4, r0, #0
	add r4, #0x62
	lsl r7, r5, #3
	add r0, r6, #0
	add r5, r4, r7
	bl sub_0206419C
	ldr r1, [sp]
	add r0, r1, r0
	strh r0, [r4, r7]
	add r0, r6, #0
	bl sub_020641A8
	ldr r1, [sp, #4]
	add r0, r1, r0
	strh r0, [r5, #2]
	strb r6, [r5, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224ADB0

	thumb_func_start ov23_0224ADE8
ov23_0224ADE8: ; 0x0224ADE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02057518
	add r4, r0, #0
	beq _0224AE58
	add r1, r4, #0
	add r1, #0xa2
	lsl r0, r6, #3
	add r5, r1, r0
	ldr r0, _0224AE5C ; =0x000002BD
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224AE18
	ldrh r1, [r5]
	ldrh r3, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r2, #0
	bl ov5_021F5634
_0224AE18:
	ldr r0, [sp]
	strh r7, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #4]
	strb r0, [r5, #4]
	lsl r0, r6, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224AE36
	ldr r2, [sp]
	ldr r3, [sp, #4]
	add r1, r7, #0
	bl sub_0205ECE0
_0224AE36:
	ldr r0, _0224AE5C ; =0x000002BD
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224AE4A
	ldrh r1, [r5]
	ldrh r3, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r2, #0
	bl ov5_021F5634
_0224AE4A:
	ldr r0, _0224AE5C ; =0x000002BD
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224AE58
	add r0, r6, #0
	bl ov23_0224B040
_0224AE58:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AE5C: .word 0x000002BD
	thumb_func_end ov23_0224ADE8

	thumb_func_start ov23_0224AE60
ov23_0224AE60: ; 0x0224AE60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AEA0
	bl sub_020181C4
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, r5
	add r0, #0xfa
	strb r2, [r0]
	mov r0, #0x22
	mul r0, r5
	mov r2, #0xff
	add r1, r4, r0
	add r0, r2, #0
	add r0, #0x6b
	strh r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224AEA0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224AE60

	thumb_func_start ov23_0224AEA4
ov23_0224AEA4: ; 0x0224AEA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	lsl r1, r4, #2
	add r1, r0, r1
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AEBE
	mov r0, #1
	pop {r4, pc}
_0224AEBE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AEA4

	thumb_func_start ov23_0224AEC4
ov23_0224AEC4: ; 0x0224AEC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02057518
	add r4, r0, #0
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224AF42
	add r0, r7, #0
	bl sub_02032EE8
	str r0, [sp]
	cmp r0, #0
	beq _0224AF42
	mov r0, #0x29
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r0, r5, #2
	str r0, [sp, #4]
	mov r0, #0xf
	bl sub_02025E6C
	ldr r1, [sp, #4]
	str r0, [r6, r1]
	ldr r0, [sp]
	ldr r1, [r6, r1]
	bl sub_02025E80
	add r0, r4, r5
	mov r1, #1
	add r0, #0xfa
	strb r1, [r0]
	mov r0, #0x22
	add r1, r5, #0
	mul r1, r0
	ldr r2, _0224AF48 ; =0x0000016A
	add r0, r4, r1
	strh r5, [r0, r2]
	sub r2, #0x20
	add r2, r4, r2
	ldr r0, [sp]
	add r1, r2, r1
	bl sub_02025E80
	bl sub_0203608C
	cmp r7, r0
	bne _0224AF3C
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_020298A0
	bl sub_020297B4
_0224AF3C:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224AF42:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AF48: .word 0x0000016A
	thumb_func_end ov23_0224AEC4

	thumb_func_start ov23_0224AF4C
ov23_0224AF4C: ; 0x0224AF4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02057518
	add r5, r0, #0
	add r5, #0x28
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0224AF78
	bl sub_020714F0
	cmp r0, #0
	beq _0224AF70
	ldr r0, [r5, r4]
	bl sub_0207136C
	b _0224AF74
_0224AF70:
	bl sub_02022974
_0224AF74:
	mov r0, #0
	str r0, [r5, r4]
_0224AF78:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AF4C

	thumb_func_start ov23_0224AF7C
ov23_0224AF7C: ; 0x0224AF7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02057518
	ldr r1, _0224B008 ; =0x000002BD
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _0224B006
	lsl r4, r5, #2
	add r1, r0, r4
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0224B006
	add r7, r0, #0
	add r7, #0xfa
	ldrb r2, [r7, r5]
	cmp r2, #3
	bhi _0224B006
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224AFAC: ; jump table
	.short _0224B000 - _0224AFAC - 2 ; case 0
	.short _0224AFE8 - _0224AFAC - 2 ; case 1
	.short _0224AFD0 - _0224AFAC - 2 ; case 2
	.short _0224AFB4 - _0224AFAC - 2 ; case 3
_0224AFB4:
	add r6, r0, #0
	add r6, #0x28
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0224AFCA
	add r0, r1, #0
	bl sub_0205EB3C
	bl ov5_021F5488
	str r0, [r6, r4]
_0224AFCA:
	mov r0, #0
	strb r0, [r7, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFD0:
	add r5, r0, #0
	add r5, #0x28
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0224B006
	add r0, r1, #0
	bl sub_0205EB3C
	bl ov5_021F52E4
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFE8:
	add r5, r0, #0
	add r5, #0x28
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0224B006
	add r0, r1, #0
	bl sub_0205EB3C
	bl ov5_021F511C
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0224B000:
	add r0, r5, #0
	bl ov23_0224AF4C
_0224B006:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B008: .word 0x000002BD
	thumb_func_end ov23_0224AF7C

	thumb_func_start ov23_0224B00C
ov23_0224B00C: ; 0x0224B00C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	add r0, #0xfa
	ldrb r1, [r0, r4]
	cmp r1, #1
	beq _0224B020
	mov r1, #2
	strb r1, [r0, r4]
_0224B020:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224B00C

	thumb_func_start ov23_0224B024
ov23_0224B024: ; 0x0224B024
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	add r0, #0xfa
	ldrb r1, [r0, r4]
	cmp r1, #1
	beq _0224B038
	mov r1, #3
	strb r1, [r0, r4]
_0224B038:
	add r0, r4, #0
	bl ov23_0224AF4C
	pop {r4, pc}
	thumb_func_end ov23_0224B024

	thumb_func_start ov23_0224B040
ov23_0224B040: ; 0x0224B040
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	add r0, #0xfa
	ldrb r1, [r0, r4]
	cmp r1, #1
	beq _0224B054
	mov r1, #0
	strb r1, [r0, r4]
_0224B054:
	add r0, r4, #0
	bl ov23_0224AF4C
	pop {r4, pc}
	thumb_func_end ov23_0224B040

	thumb_func_start ov23_0224B05C
ov23_0224B05C: ; 0x0224B05C
	push {r4, r5}
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r3, r0, #5
	ldr r4, _0224B090 ; =0x0225760C
	ldr r5, _0224B094 ; =0x02257620
	asr r2, r2, #5
	mov r0, #0
_0224B074:
	ldrb r1, [r4]
	cmp r2, r1
	bne _0224B080
	ldrb r1, [r5]
	cmp r3, r1
	beq _0224B08C
_0224B080:
	add r0, r0, #1
	add r4, r4, #1
	add r5, r5, #1
	cmp r0, #0x11
	blt _0224B074
	mov r0, #0x10
_0224B08C:
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0224B090: .word 0x0225760C
_0224B094: .word 0x02257620
	thumb_func_end ov23_0224B05C

	thumb_func_start ov23_0224B098
ov23_0224B098: ; 0x0224B098
	push {r4, r5}
	sub sp, #8
	ldr r3, _0224B0D8 ; =0x0225683C
	add r2, sp, #0
	ldrh r4, [r3, #0x1c]
	strh r4, [r2]
	ldrh r4, [r3, #0x1e]
	ldrh r3, [r3, #0x20]
	strh r4, [r2, #2]
	strh r3, [r2, #4]
	ldrh r4, [r2]
	ldrh r5, [r2, #2]
	mov r3, #0
_0224B0B2:
	add r2, r4, #0
	add r2, #0x20
	cmp r0, r2
	bne _0224B0C6
	cmp r1, r5
	bne _0224B0C6
	add sp, #8
	mov r0, #1
	pop {r4, r5}
	bx lr
_0224B0C6:
	add r3, r3, #1
	add r4, #0x20
	cmp r3, #8
	blt _0224B0B2
	mov r0, #0
	add sp, #8
	pop {r4, r5}
	bx lr
	nop
_0224B0D8: .word 0x0225683C
	thumb_func_end ov23_0224B098

	thumb_func_start ov23_0224B0DC
ov23_0224B0DC: ; 0x0224B0DC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _0224B124 ; =0x0225683C
	add r5, r0, #0
	ldrh r2, [r1, #0x22]
	add r0, sp, #0
	strh r2, [r0]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	bl sub_02033DFC
	cmp r0, #0
	beq _0224B10A
	add r0, sp, #0
	ldrh r1, [r0]
	add sp, #8
	strh r1, [r4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
_0224B10A:
	cmp r5, #0x10
	bne _0224B110
	mov r5, #0
_0224B110:
	add r0, sp, #0
	ldrh r2, [r0]
	lsl r1, r5, #5
	add r1, r2, r1
	add r1, #0x20
	strh r1, [r4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #2]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B124: .word 0x0225683C
	thumb_func_end ov23_0224B0DC

	thumb_func_start ov23_0224B128
ov23_0224B128: ; 0x0224B128
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02036180
	cmp r0, #0
	beq _0224B138
	mov r5, #0x10
_0224B138:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224B0DC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224B128

	thumb_func_start ov23_0224B144
ov23_0224B144: ; 0x0224B144
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0224B274 ; =0x022577AC
	str r1, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224B154
	b _0224B272
_0224B154:
	bl sub_02028554
	cmp r0, #0x94
	beq _0224B160
	bl sub_02022974
_0224B160:
	ldr r0, _0224B274 ; =0x022577AC
	ldr r2, _0224B278 ; =0x000013E8
	str r4, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _0224B274 ; =0x022577AC
	ldr r1, [sp]
	ldr r2, [r0, #0]
	mov r7, #0xff
	str r1, [r2, #0]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
_0224B17E:
	ldr r4, [r0, #0]
	ldr r5, _0224B27C ; =0x00001284
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	add r5, r5, #2
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	ldr r5, _0224B284 ; =0x000012B4
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	add r5, r5, #2
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	add r2, r2, #6
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B288 ; =0x0000136B
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B28C ; =0x00001373
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B290 ; =0x00001363
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B294 ; =0x0000137B
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B298 ; =0x0000134B
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B29C ; =0x00001353
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B2A0 ; =0x0000135B
	add r1, r1, #1
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	ldr r5, _0224B2A4 ; =0x000013AC
	add r6, r4, r3
	mov r4, #0x48
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	ldr r5, _0224B2A8 ; =0x000001B5
	add r6, r4, r3
	ldr r4, _0224B2AC ; =0x000013BC
	strh r5, [r6, r4]
	ldr r4, [r0, #0]
	mov r5, #1
	add r6, r4, r3
	ldr r4, _0224B2B0 ; =0x000013CC
	add r3, r3, #2
	strh r5, [r6, r4]
	cmp r1, #8
	blt _0224B17E
	mov r5, #0
	ldr r6, _0224B274 ; =0x022577AC
	add r4, r5, #0
	mov r7, #0xff
_0224B20E:
	ldr r0, [r6, #0]
	add r0, #0xa
	add r0, r0, r4
	bl sub_020292C0
	ldr r0, [r6, #0]
	add r4, #0x96
	add r1, r0, r5
	ldr r0, _0224B2B4 ; =0x000012E5
	strb r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B2B8 ; =0x0000133A
	add r5, r5, #1
	strb r7, [r1, r0]
	cmp r5, #0x11
	blt _0224B20E
	ldr r0, _0224B274 ; =0x022577AC
	mov r2, #0x22
	ldr r1, [r0, #0]
	ldr r0, _0224B2BC ; =0x00000A04
	lsl r2, r2, #6
	add r0, r1, r0
	add r1, r7, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	bl ov23_0224B2C8
	ldr r2, _0224B274 ; =0x022577AC
	ldr r0, _0224B2C0 ; =0x000013DC
	ldr r1, [r2, #0]
	mov r3, #0x48
	strh r3, [r1, r0]
	add r1, r0, #2
	ldr r4, _0224B2A8 ; =0x000001B5
	ldr r3, [r2, #0]
	add r0, r0, #4
	strh r4, [r3, r1]
	ldr r1, [r2, #0]
	mov r3, #1
	strb r3, [r1, r0]
	ldr r0, _0224B2C4 ; =ov23_0224C5B4
	mov r1, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _0224B274 ; =0x022577AC
	ldr r1, [r1, #0]
	str r0, [r1, #4]
_0224B272:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B274: .word 0x022577AC
_0224B278: .word 0x000013E8
_0224B27C: .word 0x00001284
_0224B280: .word 0x00000FFF
_0224B284: .word 0x000012B4
_0224B288: .word 0x0000136B
_0224B28C: .word 0x00001373
_0224B290: .word 0x00001363
_0224B294: .word 0x0000137B
_0224B298: .word 0x0000134B
_0224B29C: .word 0x00001353
_0224B2A0: .word 0x0000135B
_0224B2A4: .word 0x000013AC
_0224B2A8: .word 0x000001B5
_0224B2AC: .word 0x000013BC
_0224B2B0: .word 0x000013CC
_0224B2B4: .word 0x000012E5
_0224B2B8: .word 0x0000133A
_0224B2BC: .word 0x00000A04
_0224B2C0: .word 0x000013DC
_0224B2C4: .word ov23_0224C5B4
	thumb_func_end ov23_0224B144

	thumb_func_start ov23_0224B2C8
ov23_0224B2C8: ; 0x0224B2C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02029894
	add r4, r0, #0
	bl sub_020298AC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	bl sub_0202D034
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020294D4
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r2, [r1, #0]
	ldr r1, _0224B330 ; =0x0000096A
	add r1, r2, r1
	mov r2, #0x94
	bl sub_020C4DB0
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r2, [r1, #0]
	ldr r1, _0224B334 ; =0x00001204
	add r1, r2, r1
	bl ov23_0224B39C
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #0x94
	add r1, #0xa
	bl sub_020C4DB0
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r2, [r1, #0]
	ldr r1, _0224B338 ; =0x00000A04
	add r1, r2, r1
	bl ov23_0224B39C
	pop {r4, r5, r6, pc}
	nop
_0224B32C: .word 0x022577AC
_0224B330: .word 0x0000096A
_0224B334: .word 0x00001204
_0224B338: .word 0x00000A04
	thumb_func_end ov23_0224B2C8

	thumb_func_start ov23_0224B33C
ov23_0224B33C: ; 0x0224B33C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	mov ip, r0
	mov lr, r0
	add r0, r1, #0
	lsl r0, r0, #2
	str r1, [sp]
	str r2, [sp, #4]
	add r3, r3, r0
	mov r7, #1
_0224B354:
	ldr r1, [sp]
	mov r0, ip
	add r0, r1, r0
	cmp r0, #0x20
	bge _0224B386
	ldr r1, [sp, #4]
	mov r0, lr
	mov r2, #0
	add r4, r1, r0
_0224B366:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0224B37E
	add r1, r6, r2
	cmp r1, #0x20
	bge _0224B37E
	add r0, r7, #0
	lsl r0, r1
	ldr r5, [r3, #0]
	mvn r0, r0
	and r0, r5
	str r0, [r3, #0]
_0224B37E:
	add r2, r2, #1
	add r4, r4, #1
	cmp r2, #3
	blt _0224B366
_0224B386:
	mov r0, lr
	add r0, r0, #3
	mov lr, r0
	mov r0, ip
	add r0, r0, #1
	add r3, r3, #4
	mov ip, r0
	cmp r0, #3
	blt _0224B354
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224B33C

	thumb_func_start ov23_0224B39C
ov23_0224B39C: ; 0x0224B39C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r2, sp, #0x10
	str r1, [sp]
	ldr r3, _0224B428 ; =0x02256874
	add r5, r0, #0
	add r2, #1
	mov r1, #9
_0224B3AC:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224B3AC
	ldr r3, _0224B42C ; =0x0225687D
	add r2, sp, #8
	mov r1, #9
_0224B3BE:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224B3BE
	ldr r0, [sp]
	mov r1, #0xff
	mov r2, #0x80
	bl sub_020C4CF4
	mov r4, #0
_0224B3D6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293B0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0224B41C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293FC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202942C
	add r6, r0, #0
	cmp r4, #0
	bne _0224B402
	add r2, sp, #0x10
	add r2, #1
	b _0224B412
_0224B402:
	cmp r4, #0x10
	bge _0224B410
	ldr r0, [sp, #4]
	bl sub_0205741C
	add r2, r0, #0
	b _0224B412
_0224B410:
	add r2, sp, #8
_0224B412:
	ldr r3, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl ov23_0224B33C
_0224B41C:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224B3D6
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224B428: .word 0x02256874
_0224B42C: .word 0x0225687D
	thumb_func_end ov23_0224B39C

	thumb_func_start ov23_0224B430
ov23_0224B430: ; 0x0224B430
	push {r3, lr}
	bl ov23_0224C6E8
	ldr r0, _0224B458 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224B44C
	bl sub_0200DA58
	ldr r0, _0224B458 ; =0x022577AC
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
_0224B44C:
	ldr r0, _0224B458 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224B45C ; =0x000013E4
	strb r2, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0224B458: .word 0x022577AC
_0224B45C: .word 0x000013E4
	thumb_func_end ov23_0224B430

	thumb_func_start ov23_0224B460
ov23_0224B460: ; 0x0224B460
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224B4D0 ; =0x022577AC
	ldr r0, _0224B4D4 ; =0x000013E4
	ldr r2, [r1, #0]
	mov r4, #0
	strb r4, [r2, r0]
	ldr r1, [r1, #0]
	add r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224B4B2
_0224B476:
	add r0, r4, #0
	bl ov23_0224C6AC
	add r4, r4, #1
	cmp r4, #8
	blt _0224B476
	mov r5, #0
	ldr r6, _0224B4D0 ; =0x022577AC
	ldr r7, _0224B4D8 ; =0x00000FFF
	add r4, r5, #0
_0224B48A:
	ldr r1, [r6, #0]
	ldr r0, _0224B4DC ; =0x00001284
	add r0, r1, r0
	ldrh r3, [r0, r4]
	add r2, r0, r4
	cmp r3, r7
	beq _0224B4AA
	ldrh r1, [r2, #2]
	ldr r0, _0224B4D8 ; =0x00000FFF
	cmp r1, r0
	beq _0224B4AA
	ldrb r2, [r2, #4]
	add r0, r3, #0
	add r3, r5, #0
	bl ov23_0224C588
_0224B4AA:
	add r5, r5, #1
	add r4, r4, #6
	cmp r5, #8
	blt _0224B48A
_0224B4B2:
	ldr r0, _0224B4D0 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224B4CC
	ldr r0, _0224B4E0 ; =ov23_0224C5B4
	mov r1, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _0224B4D0 ; =0x022577AC
	ldr r1, [r1, #0]
	str r0, [r1, #4]
_0224B4CC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B4D0: .word 0x022577AC
_0224B4D4: .word 0x000013E4
_0224B4D8: .word 0x00000FFF
_0224B4DC: .word 0x00001284
_0224B4E0: .word ov23_0224C5B4
	thumb_func_end ov23_0224B460

	thumb_func_start ov23_0224B4E4
ov23_0224B4E4: ; 0x0224B4E4
	push {r3, lr}
	ldr r0, _0224B514 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224B4FC
	bl sub_0200DA58
	ldr r0, _0224B514 ; =0x022577AC
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
_0224B4FC:
	bl ov23_0224C6E8
	ldr r0, _0224B514 ; =0x022577AC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224B50C
	bl sub_020181C4
_0224B50C:
	ldr r0, _0224B514 ; =0x022577AC
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0224B514: .word 0x022577AC
	thumb_func_end ov23_0224B4E4

	thumb_func_start ov23_0224B518
ov23_0224B518: ; 0x0224B518
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224B57C ; =0x00000FFF
	ldr r6, _0224B580 ; =0x022577AC
	str r4, [sp]
	add r5, r4, #0
_0224B524:
	ldr r0, [r6, #0]
	add r0, #0xa
	add r0, r0, r4
	bl sub_02029300
	ldr r0, [r6, #0]
	add r4, #0x96
	add r1, r0, r5
	ldr r0, _0224B584 ; =0x00001284
	strh r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B588 ; =0x00001286
	strh r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B58C ; =0x000012B4
	strh r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B590 ; =0x000012B6
	add r5, r5, #6
	strh r7, [r1, r0]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _0224B524
	ldr r0, _0224B580 ; =0x022577AC
	mov r2, #0x22
	ldr r1, [r0, #0]
	ldr r0, _0224B594 ; =0x00000A04
	lsl r2, r2, #6
	add r0, r1, r0
	mov r1, #0xff
	bl sub_020C4CF4
	ldr r0, _0224B580 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov23_0224B2C8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B57C: .word 0x00000FFF
_0224B580: .word 0x022577AC
_0224B584: .word 0x00001284
_0224B588: .word 0x00001286
_0224B58C: .word 0x000012B4
_0224B590: .word 0x000012B6
_0224B594: .word 0x00000A04
	thumb_func_end ov23_0224B518

	thumb_func_start ov23_0224B598
ov23_0224B598: ; 0x0224B598
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _0224B5C0 ; =0x022577AC
	add r5, r4, #0
_0224B5A0:
	ldr r0, [r6, #0]
	add r0, #0xa
	add r0, r0, r5
	bl sub_020292C0
	add r4, r4, #1
	add r5, #0x96
	cmp r4, #0x11
	blt _0224B5A0
	ldr r0, _0224B5C0 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov23_0224B2C8
	pop {r4, r5, r6, pc}
	nop
_0224B5C0: .word 0x022577AC
	thumb_func_end ov23_0224B598

	thumb_func_start ov23_0224B5C4
ov23_0224B5C4: ; 0x0224B5C4
	ldr r0, _0224B5C8 ; =0x000013E8
	bx lr
	; .align 2, 0
_0224B5C8: .word 0x000013E8
	thumb_func_end ov23_0224B5C4

	thumb_func_start ov23_0224B5CC
ov23_0224B5CC: ; 0x0224B5CC
	push {r4, r5}
	ldr r2, _0224B610 ; =0x022577AC
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _0224B60A
	add r4, r1, r0
	ldr r1, _0224B614 ; =0x00001363
	mov r3, #0xff
	strb r3, [r4, r1]
	ldr r4, [r2, #0]
	add r5, r4, r0
	add r4, r1, #0
	add r4, #8
	strb r3, [r5, r4]
	ldr r4, [r2, #0]
	add r5, r4, r0
	add r4, r1, #0
	add r4, #0x10
	strb r3, [r5, r4]
	mov r3, #6
	mul r3, r0
	ldr r4, [r2, #0]
	ldr r0, _0224B618 ; =0x00000FFF
	add r5, r4, r3
	add r4, r1, #0
	sub r4, #0xaf
	strh r0, [r5, r4]
	ldr r2, [r2, #0]
	sub r1, #0xad
	add r2, r2, r3
	strh r0, [r2, r1]
_0224B60A:
	pop {r4, r5}
	bx lr
	nop
_0224B610: .word 0x022577AC
_0224B614: .word 0x00001363
_0224B618: .word 0x00000FFF
	thumb_func_end ov23_0224B5CC

	thumb_func_start ov23_0224B61C
ov23_0224B61C: ; 0x0224B61C
	push {r3, r4, r5, lr}
	ldr r1, _0224B648 ; =0x022577AC
	add r4, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224B646
	bl ov23_0224C6AC
	ldr r1, _0224B648 ; =0x022577AC
	mov r0, #6
	add r5, r4, #0
	mul r5, r0
	ldr r0, [r1, #0]
	ldr r3, _0224B64C ; =0x00000FFF
	add r2, r0, r5
	ldr r0, _0224B650 ; =0x00001284
	strh r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, r0, #2
	add r1, r1, r5
	strh r3, [r1, r0]
_0224B646:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B648: .word 0x022577AC
_0224B64C: .word 0x00000FFF
_0224B650: .word 0x00001284
	thumb_func_end ov23_0224B61C

	thumb_func_start ov23_0224B654
ov23_0224B654: ; 0x0224B654
	ldr r3, _0224B658 ; =sub_02059514
	bx r3
	; .align 2, 0
_0224B658: .word sub_02059514
	thumb_func_end ov23_0224B654

	thumb_func_start ov23_0224B65C
ov23_0224B65C: ; 0x0224B65C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r7, r0, #0
	str r1, [sp]
	add r5, r6, #0
_0224B666:
	ldr r0, _0224B6A8 ; =0x022577AC
	ldr r4, [r0, #0]
	add r4, #0xa
	add r0, r4, r5
	bl sub_0202988C
	cmp r0, #0
	beq _0224B69A
	add r0, r6, #0
	bl sub_02058C90
	cmp r0, #0
	beq _0224B69A
	add r0, r4, r5
	bl sub_02029874
	cmp r7, r0
	bne _0224B69A
	add r0, r4, r5
	bl sub_0202987C
	ldr r1, [sp]
	cmp r1, r0
	bne _0224B69A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224B69A:
	add r6, r6, #1
	add r5, #0x96
	cmp r6, #8
	blt _0224B666
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B6A8: .word 0x022577AC
	thumb_func_end ov23_0224B65C

	thumb_func_start ov23_0224B6AC
ov23_0224B6AC: ; 0x0224B6AC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r2, #0
	ldrb r4, [r5, #4]
	bl sub_0203608C
	cmp r4, r0
	bne _0224B6F4
	ldr r0, _0224B6F8 ; =0x022577AC
	ldr r1, _0224B6FC ; =0x000013E4
	ldr r0, [r0, #0]
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _0224B6F4
	ldrb r1, [r5, #7]
	cmp r1, #0
	str r4, [sp]
	beq _0224B6E4
	ldrb r1, [r5, #5]
	mov r3, #0
	str r1, [sp, #4]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldr r0, [r0, #0]
	bl ov23_0224C090
	add sp, #8
	pop {r3, r4, r5, pc}
_0224B6E4:
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldrb r3, [r5, #6]
	ldr r0, [r0, #0]
	bl ov23_0224BC5C
_0224B6F4:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B6F8: .word 0x022577AC
_0224B6FC: .word 0x000013E4
	thumb_func_end ov23_0224B6AC

	thumb_func_start ov23_0224B700
ov23_0224B700: ; 0x0224B700
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224B724
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224B728 ; =ov23_0224B654
	mov r1, #0x58
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224DC24
_0224B724:
	pop {r4, pc}
	nop
_0224B728: .word ov23_0224B654
	thumb_func_end ov23_0224B700

	thumb_func_start ov23_0224B72C
ov23_0224B72C: ; 0x0224B72C
	mov r0, #8
	bx lr
	thumb_func_end ov23_0224B72C

	thumb_func_start ov23_0224B730
ov23_0224B730: ; 0x0224B730
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, sp, #0
	add r4, r2, #0
	strb r5, [r0]
	bl sub_0203608C
	cmp r0, #0
	beq _0224B748
	bl sub_02022974
	pop {r3, r4, r5, pc}
_0224B748:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0224B780
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldrb r0, [r4]
	beq _0224B776
	add r1, r5, #0
	bl ov23_0224B79C
	cmp r0, #0
	bne _0224B78C
	ldr r0, _0224B790 ; =0x022577AC
	mov r2, #0xff
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224B794 ; =0x0000136B
	strb r2, [r1, r0]
	mov r0, #0x3d
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, r4, r5, pc}
_0224B776:
	add r1, r5, #0
	mov r2, #0
	bl ov23_0224B844
	pop {r3, r4, r5, pc}
_0224B780:
	ldr r0, _0224B790 ; =0x022577AC
	mov r2, #0xff
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224B794 ; =0x0000136B
	strb r2, [r1, r0]
_0224B78C:
	pop {r3, r4, r5, pc}
	nop
_0224B790: .word 0x022577AC
_0224B794: .word 0x0000136B
	thumb_func_end ov23_0224B730

	thumb_func_start ov23_0224B798
ov23_0224B798: ; 0x0224B798
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224B798

	thumb_func_start ov23_0224B79C
ov23_0224B79C: ; 0x0224B79C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224B838 ; =0x022577AC
	add r6, r1, #0
	ldr r1, [r0, #0]
	mov r0, #0x96
	add r1, #8
	mul r0, r5
	add r0, r1, r0
	str r0, [sp]
	add r0, r0, #2
	bl sub_0202988C
	cmp r0, #0
	bne _0224B7C2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B7C2:
	mov r0, #0x36
	bl sub_02036254
	cmp r0, #0
	beq _0224B7D2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B7D2:
	ldr r7, _0224B838 ; =0x022577AC
	mov r4, #0
_0224B7D6:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224B7F4
	ldr r0, [r7, #0]
	add r1, r0, r4
	ldr r0, _0224B83C ; =0x00001373
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _0224B7F4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B7F4:
	add r4, r4, #1
	cmp r4, #8
	blt _0224B7D6
	add r0, r5, #0
	add r1, sp, #4
	bl ov23_0224B128
	ldr r0, [sp]
	strb r6, [r0, #1]
	add r0, r5, #0
	bl ov23_0224C23C
	ldr r2, _0224B838 ; =0x022577AC
	lsl r0, r5, #0x18
	ldr r1, [r2, #0]
	lsr r0, r0, #0x18
	add r3, r1, r6
	ldr r1, _0224B840 ; =0x0000136B
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	add r1, #8
	add r2, r2, r6
	strb r0, [r2, r1]
	add r2, sp, #4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	add r0, r6, #0
	mov r3, #0
	bl ov23_0224ADB0
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224B838: .word 0x022577AC
_0224B83C: .word 0x00001373
_0224B840: .word 0x0000136B
	thumb_func_end ov23_0224B79C

	thumb_func_start ov23_0224B844
ov23_0224B844: ; 0x0224B844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, sp, #4
	add r4, r0, #0
	str r2, [sp]
	bl ov23_0224B0DC
	ldr r0, _0224B8D0 ; =0x022577AC
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224B8D4 ; =0x0000136B
	strb r4, [r1, r0]
	bl sub_02036180
	cmp r0, #0
	beq _0224B878
	ldr r0, _0224B8D0 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224B8D8 ; =0x000013DC
	add r1, r0, #2
	ldrh r4, [r2, r0]
	add r0, r0, #4
	ldrh r7, [r2, r1]
	ldrb r6, [r2, r0]
	b _0224B88E
_0224B878:
	ldr r0, _0224B8D0 ; =0x022577AC
	lsl r1, r5, #1
	ldr r0, [r0, #0]
	add r2, r0, r1
	ldr r1, _0224B8DC ; =0x000013AC
	add r0, r1, #0
	ldrh r4, [r2, r1]
	add r0, #0x10
	add r1, #0x20
	ldrh r7, [r2, r0]
	ldrh r6, [r2, r1]
_0224B88E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov23_0224ADB0
	add r0, r6, #0
	bl sub_0206419C
	add r4, r4, r0
	add r0, r6, #0
	bl sub_020641A8
	add r1, sp, #4
	add r0, r7, r0
	strh r4, [r1, #6]
	strh r0, [r1, #8]
	strb r5, [r1, #0xa]
	ldr r0, [sp]
	strb r6, [r1, #0xb]
	strb r0, [r1, #0xc]
	add r1, sp, #8
	mov r0, #0x39
	add r1, #2
	bl sub_02035B48
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224B8D0: .word 0x022577AC
_0224B8D4: .word 0x0000136B
_0224B8D8: .word 0x000013DC
_0224B8DC: .word 0x000013AC
	thumb_func_end ov23_0224B844

	thumb_func_start ov23_0224B8E0
ov23_0224B8E0: ; 0x0224B8E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, _0224BA3C ; =0x022577AC
	add r7, r1, #0
	ldr r0, [r0, #0]
	str r2, [sp]
	cmp r0, #0
	bne _0224B8F8
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B8F8:
	cmp r6, #0
	beq _0224B90E
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0224B90E
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B90E:
	add r0, r6, #0
	bl ov23_0224ACC0
	cmp r0, #0
	beq _0224B91E
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B91E:
	ldr r0, _0224BA3C ; =0x022577AC
	ldr r0, [r0, #0]
	add r1, r0, r6
	ldr r0, _0224BA40 ; =0x0000136B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224B932
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B932:
	ldr r1, [sp]
	add r0, r7, #0
	bl ov23_0224B65C
	cmp r0, #0xff
	beq _0224B976
	ldr r1, _0224BA3C ; =0x022577AC
	lsl r0, r0, #0x18
	ldr r1, [r1, #0]
	lsr r0, r0, #0x18
	add r2, r1, r6
	ldr r1, _0224BA40 ; =0x0000136B
	strb r0, [r2, r1]
	mov r1, #1
	add r2, sp, #4
	strb r1, [r2, #7]
	ldr r1, [sp]
	strh r7, [r2]
	strh r1, [r2, #2]
	mov r1, #0
	strb r1, [r2, #6]
	strb r6, [r2, #4]
	strb r0, [r2, #5]
	mov r0, #0x3a
	add r1, sp, #4
	bl sub_02035B48
	add r0, r6, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B976:
	mov r5, #0
	add r4, r5, #0
_0224B97A:
	ldr r0, _0224BA3C ; =0x022577AC
	ldr r0, [r0, #0]
	add r0, #0xa
	add r0, r0, r4
	bl sub_0202988C
	cmp r0, #0
	beq _0224B9DA
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov23_0224B0DC
	add r0, sp, #4
	ldrh r0, [r0, #8]
	cmp r7, r0
	bne _0224B9DA
	add r0, sp, #4
	ldrh r1, [r0, #0xa]
	ldr r0, [sp]
	cmp r0, r1
	bne _0224B9DA
	ldr r1, _0224BA3C ; =0x022577AC
	lsl r0, r5, #0x18
	ldr r1, [r1, #0]
	lsr r0, r0, #0x18
	add r2, r1, r6
	ldr r1, _0224BA40 ; =0x0000136B
	mov r3, #0
	strb r0, [r2, r1]
	add r2, sp, #4
	strb r3, [r2, #7]
	ldr r1, [sp]
	strh r7, [r2]
	strh r1, [r2, #2]
	strb r3, [r2, #6]
	strb r6, [r2, #4]
	strb r0, [r2, #5]
	mov r0, #0x3a
	add r1, sp, #4
	bl sub_02035B48
	add r0, r6, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B9DA:
	add r5, r5, #1
	add r4, #0x96
	cmp r5, #8
	ble _0224B97A
	ldr r1, [sp]
	add r0, r7, #0
	bl ov23_0224B098
	cmp r0, #0
	beq _0224BA36
	ldr r0, _0224BA3C ; =0x022577AC
	lsl r2, r6, #1
	ldr r1, [r0, #0]
	ldr r4, _0224BA44 ; =0x000013AC
	add r0, r1, r2
	ldrh r2, [r0, r4]
	add r3, sp, #4
	strh r2, [r3, #0xe]
	add r2, r4, #0
	add r2, #0x10
	ldrh r2, [r0, r2]
	strh r2, [r3, #0x10]
	add r2, r4, #0
	strb r6, [r3, #0x12]
	add r2, #0x20
	ldrh r0, [r0, r2]
	mov r2, #0
	sub r4, #0x41
	strb r0, [r3, #0x13]
	strb r2, [r3, #0x14]
	add r0, r1, r6
	strb r2, [r0, r4]
	ldrh r1, [r3, #0xe]
	ldrh r2, [r3, #0x10]
	ldrb r3, [r3, #0x13]
	add r0, r6, #0
	bl ov23_0224ADB0
	add r1, sp, #0x10
	mov r0, #0x39
	add r1, #2
	bl sub_02035B48
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224BA36:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BA3C: .word 0x022577AC
_0224BA40: .word 0x0000136B
_0224BA44: .word 0x000013AC
	thumb_func_end ov23_0224B8E0

	thumb_func_start ov23_0224BA48
ov23_0224BA48: ; 0x0224BA48
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224BA5A
	mov r1, #4
	bl sub_02002154
_0224BA5A:
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224BA48

	thumb_func_start ov23_0224BA6C
ov23_0224BA6C: ; 0x0224BA6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224BA7E
	mov r1, #4
	bl sub_02002154
_0224BA7E:
	add r0, r4, #0
	mov r2, #0
	add r1, sp, #0
	strb r2, [r1, #1]
	add r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1]
	strb r2, [r1, #2]
	mov r0, #0x3b
	add r1, sp, #0
	bl sub_020360D0
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	bl ov23_0224DC24
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224BA6C

	thumb_func_start ov23_0224BAAC
ov23_0224BAAC: ; 0x0224BAAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	mov r5, #0
	ldr r6, [r4, #0]
	cmp r0, #7
	bhi _0224BB0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BACA: ; jump table
	.short _0224BADA - _0224BACA - 2 ; case 0
	.short _0224BAFE - _0224BACA - 2 ; case 1
	.short _0224BB24 - _0224BACA - 2 ; case 2
	.short _0224BB48 - _0224BACA - 2 ; case 3
	.short _0224BB6C - _0224BACA - 2 ; case 4
	.short _0224BB9E - _0224BACA - 2 ; case 5
	.short _0224BBC2 - _0224BACA - 2 ; case 6
	.short _0224BBE6 - _0224BACA - 2 ; case 7
_0224BADA:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224BAE8
	mov r6, #0x2f
	mov r0, #3
	b _0224BAEC
_0224BAE8:
	mov r6, #0x32
	mov r0, #1
_0224BAEC:
	str r0, [r4, #0xc]
	bl ov23_0224219C
	mov r2, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov23_02253F40
	b _0224BC14
_0224BAFE:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224BB0C
_0224BB0A:
	b _0224BC14
_0224BB0C:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224BC54 ; =0x02256864
	ldr r2, _0224BC58 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB24:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BB3A
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #7
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB3A:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BC14
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224BC14
_0224BB48:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BC14
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224BC54 ; =0x02256864
	ldr r2, _0224BC58 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #4
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB6C:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BB90
	add r0, r5, #0
	str r0, [r4, #4]
	bl ov23_0224219C
	add r2, r5, #0
	mov r1, #0x30
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #5
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB90:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BC14
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224BC14
_0224BB9E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BC14
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224BC54 ; =0x02256864
	ldr r2, _0224BC58 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #6
	str r0, [r4, #0xc]
	b _0224BC14
_0224BBC2:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BBD8
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #7
	str r0, [r4, #0xc]
	b _0224BC14
_0224BBD8:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BC14
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224BC14
_0224BBE6:
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #1
	add r1, sp, #4
	strb r0, [r1, #1]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r5, #0
	strb r0, [r1, #2]
	mov r0, #0x3b
	add r1, sp, #4
	bl sub_020360D0
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224BC14:
	bl sub_02033DFC
	cmp r0, #0
	bne _0224BC38
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #8
	bhs _0224BC38
	bl sub_02035D78
	cmp r0, #0
	bne _0224BC38
	bl sub_0203608C
	cmp r0, #0
	beq _0224BC38
	mov r5, #1
_0224BC38:
	cmp r5, #0
	beq _0224BC50
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA6C
	bl sub_02059514
_0224BC50:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BC54: .word 0x02256864
_0224BC58: .word 0x000003D9
	thumb_func_end ov23_0224BAAC

	thumb_func_start ov23_0224BC5C
ov23_0224BC5C: ; 0x0224BC5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov23_0224DC08
	mov r0, #4
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [sp, #0x18]
	str r7, [r4, #0x20]
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #0x24]
	ldr r0, _0224BCBC ; =ov23_0224BAAC
	str r5, [r4, #0]
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	ldr r2, _0224BCC0 ; =ov23_0224BA6C
	add r0, r4, #0
	bl ov23_022431EC
	bl sub_020594FC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BCBC: .word ov23_0224BAAC
_0224BCC0: .word ov23_0224BA6C
	thumb_func_end ov23_0224BC5C

	thumb_func_start ov23_0224BCC4
ov23_0224BCC4: ; 0x0224BCC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	str r3, [sp]
	cmp r0, #0
	bne _0224BD16
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [sp, #0x18]
	str r7, [r4, #0x20]
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	cmp r0, #2
	beq _0224BD0E
	bl sub_02022974
_0224BD0E:
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [sp]
	str r0, [r4, #0x24]
_0224BD16:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224BCC4

	thumb_func_start ov23_0224BD1C
ov23_0224BD1C: ; 0x0224BD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r7, #0
_0224BD28:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224BD80
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0224BD4A
	add r0, r4, #0
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058E4C
	b _0224BD58
_0224BD4A:
	add r0, r4, #0
	bl sub_02058CA0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058CF4
_0224BD58:
	add r5, r0, #0
	ldr r0, _0224BD8C ; =0x0000FFFF
	cmp r6, r0
	bne _0224BD64
	cmp r5, r0
	beq _0224BD80
_0224BD64:
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224BD80
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224B05C
	ldr r1, [sp]
	cmp r0, r1
	bne _0224BD80
	add r7, r7, #1
_0224BD80:
	add r4, r4, #1
	cmp r4, #8
	blt _0224BD28
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BD8C: .word 0x0000FFFF
	thumb_func_end ov23_0224BD1C

	thumb_func_start ov23_0224BD90
ov23_0224BD90: ; 0x0224BD90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r3, [sp, #0xc]
	bl ov23_0224219C
	bl ov23_02253E3C
	add r5, r0, #0
	ldr r1, [sp, #0x30]
	mov r0, #2
	bl sub_02013A04
	add r4, r0, #0
	add r1, r5, #0
	mov r2, #0x26
	mov r3, #0
	bl sub_02013A4C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x27
	mov r3, #1
	bl sub_02013A4C
	ldr r0, [sp, #0x30]
	mov r1, #1
	str r4, [sp, #0x10]
	bl sub_0201A778
	add r1, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0
	add r3, sp, #0x10
	strb r0, [r3, #8]
	mov r0, #1
	strb r0, [r3, #9]
	mov r0, #2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	mov r2, #0xf
	bic r0, r2
	strb r0, [r3, #0xb]
	ldrb r4, [r3, #0xb]
	mov r0, #0x30
	bic r4, r0
	strb r4, [r3, #0xb]
	ldrb r0, [r3, #0xb]
	bic r0, r2
	strb r0, [r3, #0xb]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0201A8D4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r1, #1
	bl sub_0200DC48
	ldr r0, [sp, #0x30]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224BD90

	thumb_func_start ov23_0224BE28
ov23_0224BE28: ; 0x0224BE28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	mov r5, #0
	ldr r6, [r4, #0]
	cmp r0, #0xa
	bhi _0224BEEE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BE46: ; jump table
	.short _0224BE5C - _0224BE46 - 2 ; case 0
	.short _0224BE88 - _0224BE46 - 2 ; case 1
	.short _0224BEAC - _0224BE46 - 2 ; case 2
	.short _0224BED0 - _0224BE46 - 2 ; case 3
	.short _0224BEE2 - _0224BE46 - 2 ; case 4
	.short _0224BF08 - _0224BE46 - 2 ; case 5
	.short _0224BF6C - _0224BE46 - 2 ; case 6
	.short _0224BF90 - _0224BE46 - 2 ; case 7
	.short _0224BFC2 - _0224BE46 - 2 ; case 8
	.short _0224BFE0 - _0224BE46 - 2 ; case 9
	.short _0224C00A - _0224BE46 - 2 ; case 10
_0224BE5C:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r1, r0
	beq _0224BE72
	mov r6, #0x2d
	mov r0, #1
	b _0224BE76
_0224BE72:
	mov r6, #0x29
	mov r0, #4
_0224BE76:
	str r0, [r4, #0xc]
	bl ov23_0224219C
	mov r2, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov23_02253F40
	b _0224C042
_0224BE88:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BEEE
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224C07C ; =0x02256864
	ldr r2, _0224C080 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0xc]
	b _0224C042
_0224BEAC:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BEC2
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224C042
_0224BEC2:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BEEE
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224C042
_0224BED0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BEEE
	mov r0, #0xa
	str r0, [r4, #0xc]
	b _0224C042
_0224BEE2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224BEF0
_0224BEEE:
	b _0224C042
_0224BEF0:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224C07C ; =0x02256864
	ldr r2, _0224C080 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r4, #0xc]
	b _0224C042
_0224BF08:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BF5E
	add r0, r5, #0
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	bl ov23_0224AEA4
	cmp r0, #0
	bne _0224BF36
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r5, #0
	bl ov23_0224BD1C
	cmp r0, #0
	ble _0224BF4A
_0224BF36:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x2c
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224C042
_0224BF4A:
	bl ov23_0224219C
	add r2, r5, #0
	mov r1, #0x25
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #6
	str r0, [r4, #0xc]
	b _0224C042
_0224BF5E:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224C042
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224C042
_0224BF6C:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224C042
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224C084 ; =0x0225686C
	ldr r2, _0224C080 ; =0x000003D9
	mov r3, #0xb
	bl ov23_0224BD90
	str r0, [r4, #4]
	mov r0, #7
	str r0, [r4, #0xc]
	b _0224C042
_0224BF90:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BFA6
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224C042
_0224BFA6:
	cmp r0, #1
	bne _0224BFB4
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #0xc]
	b _0224C042
_0224BFB4:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224C042
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224C042
_0224BFC2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224C042
	bl ov23_0224219C
	bl ov23_02254044
	bl ov23_02249A74
	mov r0, #9
	str r0, [r4, #0xc]
	b _0224C042
_0224BFE0:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224C042
	bl sub_0203608C
	cmp r0, #0
	bne _0224C042
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0x56
	add r1, sp, #4
	bl sub_020360D0
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224C00A:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r4, #0
	mov r2, #1
	add r1, sp, #4
	strb r2, [r1, #2]
	add r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1, #1]
	strb r2, [r1, #3]
	add r1, sp, #4
	mov r0, #0x3b
	add r1, #1
	bl sub_020360D0
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA48
	ldr r0, _0224C088 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224C08C ; =0x000012E4
	add sp, #8
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224C042:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0224C060
	bl sub_02058C90
	cmp r0, #0
	bne _0224C060
	ldr r0, [r4, #0xc]
	cmp r0, #8
	beq _0224C060
	cmp r0, #9
	beq _0224C060
	mov r5, #1
_0224C060:
	cmp r5, #0
	beq _0224C078
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA6C
	bl sub_02059514
_0224C078:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C07C: .word 0x02256864
_0224C080: .word 0x000003D9
_0224C084: .word 0x0225686C
_0224C088: .word 0x022577AC
_0224C08C: .word 0x000012E4
	thumb_func_end ov23_0224BE28

	thumb_func_start ov23_0224C090
ov23_0224C090: ; 0x0224C090
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [sp, #0x18]
	str r7, [r4, #0x20]
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [sp]
	mov r1, #0
	str r0, [r4, #0x24]
	add r0, r4, #0
	str r5, [r4, #0]
	add r0, #0x29
	strb r1, [r0]
	bl ov23_0224DC08
	ldr r0, _0224C0F8 ; =ov23_0224BE28
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	ldr r2, _0224C0FC ; =ov23_0224BA6C
	add r0, r4, #0
	bl ov23_022431EC
	bl sub_020594FC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C0F8: .word ov23_0224BE28
_0224C0FC: .word ov23_0224BA6C
	thumb_func_end ov23_0224C090

	thumb_func_start ov23_0224C100
ov23_0224C100: ; 0x0224C100
	mov r0, #8
	bx lr
	thumb_func_end ov23_0224C100

	thumb_func_start ov23_0224C104
ov23_0224C104: ; 0x0224C104
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, _0224C18C ; =0x022577AC
	add r4, r2, #0
	ldr r1, [r0, #0]
	ldrb r0, [r4, #4]
	mov r2, #0xff
	add r1, r1, r0
	ldr r0, _0224C190 ; =0x00001363
	strb r2, [r1, r0]
	ldrb r5, [r4, #4]
	bl sub_0203608C
	cmp r5, r0
	bne _0224C176
	bl ov23_022535EC
	bl ov23_0224F24C
	bl ov23_0224321C
	bl sub_0203608C
	mov r1, #0
	bl ov23_02244858
	mov r0, #0x2b
	bl sub_020360DC
	ldr r0, _0224C18C ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0224C194 ; =0x000013E6
	strb r2, [r1, r0]
	mov r0, #1
	bl sub_02059638
	ldrb r0, [r4, #4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldr r0, _0224C18C ; =0x022577AC
	ldrh r1, [r4]
	ldr r0, [r0, #0]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #5]
	ldr r0, [r0, #0]
	bl ov23_0224CAF0
	ldr r0, _0224C18C ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xa
	lsl r0, r0, #8
	str r2, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, pc}
_0224C176:
	add r0, r5, #0
	bl ov23_02248B98
	ldrb r0, [r4, #4]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #5]
	bl ov23_0224ADE8
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C18C: .word 0x022577AC
_0224C190: .word 0x00001363
_0224C194: .word 0x000013E6
	thumb_func_end ov23_0224C104

	thumb_func_start ov23_0224C198
ov23_0224C198: ; 0x0224C198
	ldr r3, _0224C1A0 ; =sub_020360DC
	mov r0, #0x38
	bx r3
	nop
_0224C1A0: .word sub_020360DC
	thumb_func_end ov23_0224C198

	thumb_func_start ov23_0224C1A4
ov23_0224C1A4: ; 0x0224C1A4
	push {r3, r4}
	ldr r2, _0224C1C0 ; =0x022577AC
	mov r4, #0xff
	ldr r1, [r2, #0]
	add r3, r1, r0
	ldr r1, _0224C1C4 ; =0x0000136B
	strb r4, [r3, r1]
	ldr r2, [r2, #0]
	add r1, #8
	add r0, r2, r0
	strb r4, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_0224C1C0: .word 0x022577AC
_0224C1C4: .word 0x0000136B
	thumb_func_end ov23_0224C1A4

	thumb_func_start ov23_0224C1C8
ov23_0224C1C8: ; 0x0224C1C8
	ldr r1, _0224C1E4 ; =0x022577AC
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224C1DE
	add r1, r1, r0
	ldr r0, _0224C1E8 ; =0x0000136B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224C1DE
	mov r0, #1
	bx lr
_0224C1DE:
	mov r0, #0
	bx lr
	nop
_0224C1E4: .word 0x022577AC
_0224C1E8: .word 0x0000136B
	thumb_func_end ov23_0224C1C8

	thumb_func_start ov23_0224C1EC
ov23_0224C1EC: ; 0x0224C1EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0224C218 ; =0x022577AC
	add r7, r1, #0
	ldr r1, [r0, #0]
	add r5, r3, #0
	mov r0, #0x96
	add r1, #8
	mul r0, r5
	add r4, r1, r0
	beq _0224C216
	add r0, r2, #0
	bl sub_02059328
	add r3, r0, #0
	add r0, r4, #2
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02029854
	strb r5, [r4]
_0224C216:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C218: .word 0x022577AC
	thumb_func_end ov23_0224C1EC

	thumb_func_start ov23_0224C21C
ov23_0224C21C: ; 0x0224C21C
	push {r3, lr}
	bl sub_0203608C
	ldr r1, _0224C234 ; =0x022577AC
	mov r0, #0x35
	ldr r2, [r1, #0]
	ldr r1, _0224C238 ; =0x00000968
	add r1, r2, r1
	mov r2, #0x96
	bl sub_02035F58
	pop {r3, pc}
	; .align 2, 0
_0224C234: .word 0x022577AC
_0224C238: .word 0x00000968
	thumb_func_end ov23_0224C21C

	thumb_func_start ov23_0224C23C
ov23_0224C23C: ; 0x0224C23C
	push {r4, lr}
	ldr r1, _0224C258 ; =0x022577AC
	add r4, r0, #0
	ldr r3, [r1, #0]
	mov r2, #0x96
	add r1, r4, #0
	add r3, #8
	mul r1, r2
	mov r0, #0x36
	add r1, r3, r1
	bl sub_02035F00
	pop {r4, pc}
	nop
_0224C258: .word 0x022577AC
	thumb_func_end ov23_0224C23C

	thumb_func_start ov23_0224C25C
ov23_0224C25C: ; 0x0224C25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0224C368 ; =0x022577AC
	add r6, r2, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224C362
	bl sub_0203608C
	ldrb r1, [r6, #1]
	cmp r1, r0
	bne _0224C29C
	ldr r0, _0224C368 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224C36C ; =0x000012E4
	ldrb r1, [r2, r0]
	cmp r1, #2
	bne _0224C29C
	mov r1, #0
	strb r1, [r2, r0]
	bl sub_02059514
	mov r0, #0x38
	bl sub_020360DC
	mov r0, #0
	bl sub_02057AE4
	bl ov23_0224DC24
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C29C:
	ldr r0, _0224C368 ; =0x022577AC
	mov r2, #5
	ldr r1, [r0, #0]
	ldr r0, _0224C36C ; =0x000012E4
	strb r2, [r1, r0]
	ldrb r5, [r6]
	cmp r5, #0x11
	blt _0224C2B0
	bl sub_02022974
_0224C2B0:
	ldr r0, _0224C368 ; =0x022577AC
	mov r2, #0x96
	ldr r4, [r0, #0]
	add r7, r5, #0
	add r4, #8
	mul r7, r2
	add r5, r4, r7
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020C4DB0
	ldr r2, _0224C368 ; =0x022577AC
	ldrb r1, [r5, #1]
	ldr r3, [r2, #0]
	ldrb r0, [r4, r7]
	add r3, r3, r1
	ldr r1, _0224C370 ; =0x00001363
	strb r0, [r3, r1]
	ldrb r3, [r4, r7]
	cmp r3, #0x10
	beq _0224C2E4
	ldrb r0, [r5, #1]
	ldr r2, [r2, #0]
	add r1, #0x18
	add r0, r2, r0
	strb r3, [r0, r1]
_0224C2E4:
	ldrb r0, [r5]
	add r1, sp, #8
	bl ov23_0224B128
	ldrb r4, [r5, #1]
	bl sub_0203608C
	cmp r4, r0
	bne _0224C354
	ldr r1, _0224C368 ; =0x022577AC
	ldr r0, _0224C374 ; =0x000013E6
	ldr r2, [r1, #0]
	mov r3, #1
	strb r3, [r2, r0]
	ldrb r0, [r5, #1]
	mov r3, #0
	add r2, sp, #8
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r1, #0]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	ldr r0, [r0, #0]
	sub r2, r2, #1
	bl ov23_0224CAF0
	ldr r0, _0224C368 ; =0x022577AC
	ldr r1, [r0, #0]
	mov r0, #0xa
	lsl r0, r0, #8
	str r5, [r1, r0]
	add r0, r5, #2
	bl sub_02029874
	ldr r1, _0224C368 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224C378 ; =0x000013DC
	strh r0, [r2, r1]
	add r0, r5, #2
	bl sub_0202987C
	ldr r1, _0224C368 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224C37C ; =0x000013DE
	strh r0, [r2, r1]
	add r0, r5, #2
	bl sub_02029884
	ldr r1, _0224C368 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224C380 ; =0x000013E0
	strb r0, [r2, r1]
	bl ov23_02243360
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C354:
	add r2, sp, #8
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	add r0, r4, #0
	mov r3, #0
	bl ov23_0224ADE8
_0224C362:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C368: .word 0x022577AC
_0224C36C: .word 0x000012E4
_0224C370: .word 0x00001363
_0224C374: .word 0x000013E6
_0224C378: .word 0x000013DC
_0224C37C: .word 0x000013DE
_0224C380: .word 0x000013E0
	thumb_func_end ov23_0224C25C

	thumb_func_start ov23_0224C384
ov23_0224C384: ; 0x0224C384
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0224C404 ; =0x022577AC
	ldr r6, [r0, #0]
	cmp r6, #0
	beq _0224C402
	mov r3, #0x96
	add r7, r5, #0
	add r6, #8
	mul r7, r3
	add r4, r6, r7
	add r0, r2, #0
	add r1, r4, #0
	add r2, r3, #0
	bl sub_020C4DB0
	strb r5, [r6, r7]
	ldr r0, _0224C404 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224C408 ; =0x000013E2
	add r6, r5, #0
	strb r2, [r1, r0]
	mov r0, #6
	mul r6, r0
	add r0, r4, #2
	bl sub_02029874
	ldr r1, _0224C404 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r6
	ldr r1, _0224C40C ; =0x000012B4
	strh r0, [r2, r1]
	add r0, r4, #2
	bl sub_0202987C
	ldr r1, _0224C404 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r6
	ldr r1, _0224C410 ; =0x000012B6
	strh r0, [r2, r1]
	add r0, r4, #2
	bl sub_02029884
	ldr r1, _0224C404 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r6
	ldr r1, _0224C414 ; =0x000012B8
	strb r0, [r2, r1]
	bl ov23_0224C448
	ldr r1, _0224C404 ; =0x022577AC
	add r0, r4, #2
	ldr r2, [r1, #0]
	ldr r1, _0224C418 ; =0x00000A04
	add r2, r2, r1
	lsl r1, r5, #7
	add r1, r2, r1
	bl ov23_0224B39C
	add r0, r5, #0
	bl ov23_0224DAD0
_0224C402:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C404: .word 0x022577AC
_0224C408: .word 0x000013E2
_0224C40C: .word 0x000012B4
_0224C410: .word 0x000012B6
_0224C414: .word 0x000012B8
_0224C418: .word 0x00000A04
	thumb_func_end ov23_0224C384

	thumb_func_start ov23_0224C41C
ov23_0224C41C: ; 0x0224C41C
	mov r0, #0x96
	bx lr
	thumb_func_end ov23_0224C41C

	thumb_func_start ov23_0224C420
ov23_0224C420: ; 0x0224C420
	ldr r0, _0224C42C ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224C430 ; =0x000013E3
	ldrb r0, [r1, r0]
	bx lr
	nop
_0224C42C: .word 0x022577AC
_0224C430: .word 0x000013E3
	thumb_func_end ov23_0224C420

	thumb_func_start ov23_0224C434
ov23_0224C434: ; 0x0224C434
	ldr r0, _0224C440 ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0224C444 ; =0x000013E3
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_0224C440: .word 0x022577AC
_0224C444: .word 0x000013E3
	thumb_func_end ov23_0224C434

	thumb_func_start ov23_0224C448
ov23_0224C448: ; 0x0224C448
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224C4B4 ; =0x022577AC
	mov ip, r4
	add r5, r4, #0
_0224C452:
	ldr r0, [r7, #0]
	ldr r1, _0224C4B8 ; =0x000012B4
	add r2, r0, r1
	add r1, r0, r4
	ldrh r6, [r2, r5]
	ldr r0, _0224C4BC ; =0x0000138B
	add r3, r2, r5
	strb r6, [r1, r0]
	ldrh r0, [r2, r5]
	add r5, r5, #6
	asr r1, r0, #8
	mov r0, #0xf
	add r2, r1, #0
	and r2, r0
	ldrh r0, [r3, #2]
	asr r1, r0, #4
	mov r0, #0xf0
	and r0, r1
	add r2, r2, r0
	ldr r0, [r7, #0]
	add r1, r0, r4
	ldr r0, _0224C4C0 ; =0x0000138C
	strb r2, [r1, r0]
	ldr r0, [r7, #0]
	ldrh r2, [r3, #2]
	add r1, r0, r4
	ldr r0, _0224C4C4 ; =0x0000138D
	strb r2, [r1, r0]
	ldr r1, [r7, #0]
	ldrb r0, [r3, #4]
	add r2, r1, r4
	ldr r1, _0224C4C8 ; =0x0000138E
	add r4, r4, #4
	strb r0, [r2, r1]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #8
	blt _0224C452
	ldr r1, _0224C4B4 ; =0x022577AC
	mov r0, #0x37
	ldr r2, [r1, #0]
	ldr r1, _0224C4BC ; =0x0000138B
	add r1, r2, r1
	mov r2, #0x20
	bl sub_02035F00
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C4B4: .word 0x022577AC
_0224C4B8: .word 0x000012B4
_0224C4BC: .word 0x0000138B
_0224C4C0: .word 0x0000138C
_0224C4C4: .word 0x0000138D
_0224C4C8: .word 0x0000138E
	thumb_func_end ov23_0224C448

	thumb_func_start ov23_0224C4CC
ov23_0224C4CC: ; 0x0224C4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _0224C574 ; =0x022577AC
	str r2, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224C56E
	mov r4, #0
_0224C4DC:
	add r0, r4, #0
	bl ov23_0224C6AC
	add r4, r4, #1
	cmp r4, #8
	blt _0224C4DC
	mov r5, #0
	add r7, r5, #0
	add r6, r5, #0
	add r4, sp, #4
_0224C4F0:
	ldr r0, _0224C574 ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224C578 ; =0x00001284
	add r0, r1, r0
	mov ip, r0
	ldr r0, [sp]
	add r2, r0, r5
	ldrb r0, [r0, r5]
	add r5, r5, #4
	strh r0, [r4]
	ldrb r0, [r2, #1]
	ldrh r3, [r4]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r3, r0
	strh r0, [r4]
	ldrb r0, [r2, #1]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldrb r0, [r2, #2]
	add r0, r1, r0
	strh r0, [r4, #2]
	ldrb r0, [r2, #3]
	strb r0, [r4, #4]
	ldrh r1, [r4]
	ldr r0, _0224C57C ; =0x00000FFF
	cmp r1, r0
	beq _0224C55C
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldr r0, _0224C57C ; =0x00000FFF
	cmp r1, r0
	beq _0224C55C
	mov r1, ip
	add r0, sp, #4
	add r1, r1, r6
	mov r2, #6
	bl sub_020C4DB0
	add r0, sp, #4
	add r1, sp, #4
	add r2, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldrb r2, [r2, #4]
	add r3, r7, #0
	bl ov23_0224C588
_0224C55C:
	add r7, r7, #1
	add r6, r6, #6
	cmp r7, #8
	blt _0224C4F0
	ldr r0, _0224C574 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224C580 ; =0x000013E3
	strb r2, [r1, r0]
_0224C56E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224C574: .word 0x022577AC
_0224C578: .word 0x00001284
_0224C57C: .word 0x00000FFF
_0224C580: .word 0x000013E3
	thumb_func_end ov23_0224C4CC

	thumb_func_start ov23_0224C584
ov23_0224C584: ; 0x0224C584
	mov r0, #0x20
	bx lr
	thumb_func_end ov23_0224C584

	thumb_func_start ov23_0224C588
ov23_0224C588: ; 0x0224C588
	push {r3, r4, r5, r6}
	ldr r5, _0224C5AC ; =0x022577AC
	ldr r4, [r5, #0]
	add r6, r4, r3
	ldr r4, _0224C5B0 ; =0x0000133A
	strb r2, [r6, r4]
	lsl r2, r3, #1
	ldr r3, [r5, #0]
	add r6, r3, r2
	add r3, r4, #0
	sub r3, #0x44
	strh r0, [r6, r3]
	ldr r0, [r5, #0]
	sub r4, #0x22
	add r0, r0, r2
	strh r1, [r0, r4]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0224C5AC: .word 0x022577AC
_0224C5B0: .word 0x0000133A
	thumb_func_end ov23_0224C588

	thumb_func_start ov23_0224C5B4
ov23_0224C5B4: ; 0x0224C5B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0224C690 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224C694 ; =0x000013E4
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _0224C68A
	add r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0224C68A
	ldr r0, [r2, #0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0224C68A
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, _0224C690 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224C68A
	mov r5, #0
	add r4, r5, #0
_0224C5F6:
	cmp r5, #8
	bge _0224C610
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _0224C610
	add r0, r5, #0
	bl ov23_0224B61C
	add r0, r5, #0
	bl ov23_0224D87C
_0224C610:
	ldr r0, _0224C690 ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224C698 ; =0x0000133A
	add r2, r1, r5
	ldrb r6, [r2, r0]
	cmp r6, #0xff
	beq _0224C682
	ldr r3, _0224C69C ; =0x000012F6
	add r0, r1, r4
	ldrh r3, [r0, r3]
	str r3, [sp, #8]
	ldr r3, _0224C6A0 ; =0x00001318
	ldrh r7, [r0, r3]
	add r0, r3, #0
	sub r0, #0x33
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	beq _0224C63E
	ldr r1, [r1, #0]
	add r1, #0xa4
	ldr r1, [r1, #0]
	bl ov5_021E1674
_0224C63E:
	ldr r0, [sp, #8]
	ldr r2, _0224C6A4 ; =0x000001AD
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #2
	lsl r1, r7, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, _0224C690 ; =0x022577AC
	add r2, r6, r2
	ldr r0, [r0, #0]
	add r3, sp, #0xc
	ldr r1, [r0, #0]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r1, #0x50]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x30]
	bl ov5_021E19CC
	ldr r1, _0224C690 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _0224C6A8 ; =0x000012E5
	strb r0, [r2, r1]
_0224C682:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0x11
	blt _0224C5F6
_0224C68A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C690: .word 0x022577AC
_0224C694: .word 0x000013E4
_0224C698: .word 0x0000133A
_0224C69C: .word 0x000012F6
_0224C6A0: .word 0x00001318
_0224C6A4: .word 0x000001AD
_0224C6A8: .word 0x000012E5
	thumb_func_end ov23_0224C5B4

	thumb_func_start ov23_0224C6AC
ov23_0224C6AC: ; 0x0224C6AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224C6E0 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224C6E4 ; =0x000012E5
	add r1, r2, r4
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224C6DC
	ldr r1, [r2, #0]
	add r1, #0xa4
	ldr r1, [r1, #0]
	bl ov5_021E1674
	ldr r1, _0224C6E0 ; =0x022577AC
	mov r3, #0xff
	ldr r0, [r1, #0]
	add r2, r0, r4
	ldr r0, _0224C6E4 ; =0x000012E5
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, #0x55
	add r1, r1, r4
	strb r3, [r1, r0]
_0224C6DC:
	pop {r4, pc}
	nop
_0224C6E0: .word 0x022577AC
_0224C6E4: .word 0x000012E5
	thumb_func_end ov23_0224C6AC

	thumb_func_start ov23_0224C6E8
ov23_0224C6E8: ; 0x0224C6E8
	push {r4, lr}
	ldr r0, _0224C704 ; =0x022577AC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224C700
	mov r4, #0
_0224C6F4:
	add r0, r4, #0
	bl ov23_0224C6AC
	add r4, r4, #1
	cmp r4, #0x11
	blt _0224C6F4
_0224C700:
	pop {r4, pc}
	nop
_0224C704: .word 0x022577AC
	thumb_func_end ov23_0224C6E8

	thumb_func_start ov23_0224C708
ov23_0224C708: ; 0x0224C708
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C726
	cmp r0, #1
	beq _0224C734
	b _0224C746
_0224C726:
	add r0, r5, #0
	bl sub_0203CD44
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224C746
_0224C734:
	add r0, r5, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _0224C746
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224C746:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224C708

	thumb_func_start ov23_0224C74C
ov23_0224C74C: ; 0x0224C74C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C76A
	cmp r0, #1
	beq _0224C778
	b _0224C78A
_0224C76A:
	add r0, r5, #0
	bl sub_0203CD00
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224C78A
_0224C778:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0224C78A
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224C78A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224C74C

	thumb_func_start ov23_0224C790
ov23_0224C790: ; 0x0224C790
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0xd
	bhi _0224C882
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C7B6: ; jump table
	.short _0224C7D2 - _0224C7B6 - 2 ; case 0
	.short _0224C7FC - _0224C7B6 - 2 ; case 1
	.short _0224C82C - _0224C7B6 - 2 ; case 2
	.short _0224C842 - _0224C7B6 - 2 ; case 3
	.short _0224C854 - _0224C7B6 - 2 ; case 4
	.short _0224C878 - _0224C7B6 - 2 ; case 5
	.short _0224C88C - _0224C7B6 - 2 ; case 6
	.short _0224C8B6 - _0224C7B6 - 2 ; case 7
	.short _0224CA86 - _0224C7B6 - 2 ; case 8
	.short _0224C956 - _0224C7B6 - 2 ; case 9
	.short _0224C972 - _0224C7B6 - 2 ; case 10
	.short _0224C9AA - _0224C7B6 - 2 ; case 11
	.short _0224C9E0 - _0224C7B6 - 2 ; case 12
	.short _0224CA0A - _0224C7B6 - 2 ; case 13
_0224C7D2:
	mov r0, #0
	bl ov23_0224DBF4
	bl ov23_0224DC08
	bl sub_02035E18
	add r1, r4, #0
	add r1, #0x28
	strb r0, [r1]
	bl sub_02035EC8
	bl ov23_022417CC
	bl ov23_02249AB8
	cmp r0, #0
	beq _0224C882
	mov r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C7FC:
	bl sub_0200F2C0
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
	ldr r0, [r5, #0x6c]
	bl ov23_0224942C
	ldr r0, _0224CAD4 ; =0x00000603
	bl sub_02005748
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C82C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224C882
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _0224C882
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C842:
	add r0, r6, #0
	bl ov23_0224C708
	cmp r0, #0
	beq _0224C882
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C854:
	ldr r0, [r4, #0x14]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_020544F0
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C878:
	add r0, r6, #0
	bl ov23_0224C74C
	cmp r0, #0
	bne _0224C884
_0224C882:
	b _0224CACC
_0224C884:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C88C:
	add r0, r5, #0
	bl ov23_02249404
	str r0, [r5, #0x6c]
	bl sub_0200F2C0
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
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C8B6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224C98A
	bl sub_02033DFC
	cmp r0, #0
	beq _0224C8DC
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov23_02242E58
	cmp r0, #0
	bne _0224C8DC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224C8E4
_0224C8DC:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x2e
	strb r1, [r0]
_0224C8E4:
	bl sub_02035EA8
	bl sub_020594FC
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
	ldr r0, [r5, #8]
	ldr r2, _0224CAD8 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224C936
	bl sub_020594EC
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x33
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #8
	str r0, [r4, #0xc]
	b _0224CACC
_0224C936:
	ldr r0, _0224CADC ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224CAE0 ; =0x000013E6
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224C948
	mov r0, #0xd
	str r0, [r4, #0xc]
	b _0224CACC
_0224C948:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	mov r0, #9
	str r0, [r4, #0xc]
	b _0224CACC
_0224C956:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	mov r0, #0xa
	str r0, [r4, #0xc]
	b _0224CACC
_0224C972:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xa
	bhi _0224C98C
_0224C98A:
	b _0224CACC
_0224C98C:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224C99E
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224C9A4
_0224C99E:
	mov r0, #0xd
	str r0, [r4, #0xc]
	b _0224CACC
_0224C9A4:
	mov r0, #0xb
	str r0, [r4, #0xc]
	b _0224CACC
_0224C9AA:
	bl sub_02059624
	mov r0, #1
	mov r1, #0x24
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	mov r2, #1
	bl sub_02061550
	mov r0, #1
	bl sub_020593F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x44
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _0224CAE4 ; =0x00000604
	bl sub_02005748
	mov r0, #0xc
	str r0, [r4, #0xc]
	b _0224CACC
_0224C9E0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CACC
	ldr r0, _0224CAE8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224CACC
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #0
	bl sub_020593F4
	b _0224CACC
_0224CA0A:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224CA24
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov23_02242E58
	cmp r0, #0
	bne _0224CA24
	bl ov23_02249AA4
	b _0224CA28
_0224CA24:
	bl ov23_02249B60
_0224CA28:
	mov r0, #0
	bl sub_02059638
	bl sub_02059514
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02033DFC
	cmp r0, #0
	beq _0224CA52
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov23_02242E58
	cmp r0, #0
	beq _0224CA52
	bl ov23_02242FA8
	b _0224CA56
_0224CA52:
	bl ov23_02242FBC
_0224CA56:
	ldr r0, _0224CADC ; =0x022577AC
	ldr r2, _0224CAEC ; =0x000012E4
	ldr r0, [r0, #0]
	ldrb r1, [r0, r2]
	cmp r1, #4
	bne _0224CA70
	ldr r1, _0224CAE0 ; =0x000013E6
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0224CA70
	mov r1, #6
	strb r1, [r0, r2]
	b _0224CA76
_0224CA70:
	ldr r1, _0224CAEC ; =0x000012E4
	mov r2, #0
	strb r2, [r0, r1]
_0224CA76:
	bl ov23_0224DC24
	mov r0, #1
	bl ov23_0224DBF4
	add sp, #0x20
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224CA86:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CAAE
	ldr r0, _0224CAE8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224CAAE
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x20
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224CAAE:
	bl sub_02035E18
	cmp r0, #1
	ble _0224CACC
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224CACC
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl ov23_0224219C
	bl ov23_02254044
_0224CACC:
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0224CAD4: .word 0x00000603
_0224CAD8: .word 0x000003D9
_0224CADC: .word 0x022577AC
_0224CAE0: .word 0x000013E6
_0224CAE4: .word 0x00000604
_0224CAE8: .word 0x021BF67C
_0224CAEC: .word 0x000012E4
	thumb_func_end ov23_0224C790

	thumb_func_start ov23_0224CAF0
ov23_0224CAF0: ; 0x0224CAF0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	add r4, r0, #0
	str r5, [sp]
	str r5, [sp, #4]
	bl ov23_0224BCC4
	add r2, r0, #0
	beq _0224CB12
	ldr r1, [sp, #0x1c]
	add r0, #0x2d
	strb r1, [r0]
	ldr r1, _0224CB18 ; =ov23_0224C790
	add r0, r4, #0
	bl sub_02050904
_0224CB12:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0224CB18: .word ov23_0224C790
	thumb_func_end ov23_0224CAF0

	thumb_func_start ov23_0224CB1C
ov23_0224CB1C: ; 0x0224CB1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r7, #0
	ldr r5, [r4, #0]
	cmp r0, #0xa
	bhi _0224CBB0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224CB3A: ; jump table
	.short _0224CB50 - _0224CB3A - 2 ; case 0
	.short _0224CB98 - _0224CB3A - 2 ; case 1
	.short _0224CBB8 - _0224CB3A - 2 ; case 2
	.short _0224CC04 - _0224CB3A - 2 ; case 3
	.short _0224CC4A - _0224CB3A - 2 ; case 4
	.short _0224CC64 - _0224CB3A - 2 ; case 5
	.short _0224CC88 - _0224CB3A - 2 ; case 6
	.short _0224CD04 - _0224CB3A - 2 ; case 7
	.short _0224CD04 - _0224CB3A - 2 ; case 8
	.short _0224CCAC - _0224CB3A - 2 ; case 9
	.short _0224CCC4 - _0224CB3A - 2 ; case 10
_0224CB50:
	ldr r0, [r5, #0xc]
	bl sub_02029894
	bl sub_0202988C
	strb r0, [r4, #0x12]
	bl sub_020594FC
	bl ov23_0224219C
	mov r1, #0x21
	bl ov23_02254098
	ldr r0, _0224CD54 ; =0x0000061E
	bl sub_02005748
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r1, r7, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021F58FC
	bl ov23_0224219C
	add r2, r7, #0
	mov r1, #0x21
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r7, #0
	strb r0, [r4, #0x11]
	b _0224CD04
_0224CB98:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CBB0
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #0x1e
	bhi _0224CBB2
_0224CBB0:
	b _0224CD04
_0224CBB2:
	mov r0, #2
	str r0, [r4, #0xc]
	b _0224CD04
_0224CBB8:
	bl sub_0203608C
	bl sub_02058D88
	add r6, r0, #0
	bl sub_0203608C
	bl sub_02058DC0
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	bl sub_02059328
	str r0, [sp, #0xc]
	bl ov23_0224219C
	add r2, r7, #0
	mov r1, #0x22
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0x10
	bl ov23_0224C588
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov5_021F5634
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224CD04
_0224CC04:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CD04
	bl sub_0203608C
	add r1, r7, #0
	bl ov23_0224BD1C
	cmp r0, #0
	beq _0224CC26
	mov r0, #4
	mov r6, #0x39
	str r0, [r4, #0xc]
	b _0224CC3A
_0224CC26:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _0224CC34
	mov r0, #5
	mov r6, #0x24
	str r0, [r4, #0xc]
	b _0224CC3A
_0224CC34:
	mov r0, #5
	mov r6, #0x23
	str r0, [r4, #0xc]
_0224CC3A:
	bl ov23_0224219C
	mov r2, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov23_02253F40
	b _0224CD04
_0224CC4A:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CD04
	ldr r0, _0224CD58 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _0224CD04
	add r7, r0, #0
	b _0224CD04
_0224CC64:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CD04
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, _0224CD5C ; =0x02256864
	ldr r2, _0224CD60 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #8]
	mov r0, #6
	str r0, [r4, #0xc]
	b _0224CD04
_0224CC88:
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224CC9E
	mov r0, #9
	str r0, [r4, #0xc]
	add r0, r7, #0
	str r0, [r4, #8]
	b _0224CD04
_0224CC9E:
	sub r1, r7, #1
	cmp r0, r1
	beq _0224CD04
	mov r0, #0
	mov r7, #1
	str r0, [r4, #8]
	b _0224CD04
_0224CCAC:
	mov r0, #0x21
	bl ov23_0224FD68
	bl ov23_0224219C
	bl ov23_02254044
	bl ov23_02249A74
	mov r0, #0xa
	str r0, [r4, #0xc]
	b _0224CD04
_0224CCC4:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224CD04
	bl sub_0203608C
	cmp r0, #0
	bne _0224CD04
	mov r1, #2
	add r0, sp, #0x10
	strb r1, [r0]
	ldrb r1, [r4, #0x12]
	cmp r1, #0
	beq _0224CCE4
	mov r1, #3
	strb r1, [r0]
_0224CCE4:
	bl ov23_0224D238
	mov r0, #0x56
	add r1, sp, #0x10
	bl sub_020360D0
	ldr r0, [sp, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0224CD04:
	cmp r7, #0
	beq _0224CD4E
	bl ov23_0224219C
	ldr r3, _0224CD64 ; =ov23_0224B654
	mov r1, #0x38
	mov r2, #1
	bl ov23_02253F40
	mov r0, #0x10
	bl ov23_0224C6AC
	bl sub_0203608C
	bl sub_02058D88
	add r6, r0, #0
	bl sub_0203608C
	bl sub_02058DC0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov5_021F5634
	ldr r0, [sp, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	bl ov23_0224DC24
_0224CD4E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224CD54: .word 0x0000061E
_0224CD58: .word 0x021BF67C
_0224CD5C: .word 0x02256864
_0224CD60: .word 0x000003D9
_0224CD64: .word ov23_0224B654
	thumb_func_end ov23_0224CB1C

	thumb_func_start ov23_0224CD68
ov23_0224CD68: ; 0x0224CD68
	push {r3, lr}
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x56
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224CD68

	thumb_func_start ov23_0224CD7C
ov23_0224CD7C: ; 0x0224CD7C
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224CD7C

	thumb_func_start ov23_0224CD80
ov23_0224CD80: ; 0x0224CD80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r6, r2, #0
	bl sub_02058EE0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02058F18
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02058F80
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02058DF8
	add r0, r7, #0
	bl sub_02058E4C
	sub r0, r5, r0
	beq _0224CDBC
	add r0, r4, #1
	str r0, [sp, #0x10]
	sub r0, r4, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp]
	b _0224CDC8
_0224CDBC:
	add r0, r5, #1
	str r0, [sp, #0xc]
	sub r0, r5, #1
	str r0, [sp]
	str r4, [sp, #0x10]
	str r4, [sp, #8]
_0224CDC8:
	add r0, sp, #0x14
	strb r7, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	bne _0224CDD6
	mov r1, #0
	b _0224CDD8
_0224CDD6:
	mov r1, #5
_0224CDD8:
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224B65C
	ldrb r1, [r6]
	cmp r1, #0
	bne _0224CDEC
	cmp r0, #0xff
	bne _0224CE82
_0224CDEC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224CE00
	mov r1, #6
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE00:
	ldr r0, _0224CE90 ; =0x022577AC
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224CE82
	ldr r0, _0224CE90 ; =0x022577AC
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224CE82
	ldr r0, _0224CE90 ; =0x022577AC
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r2, [sp]
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224CE82
	ldrb r0, [r6]
	cmp r0, #0
	bne _0224CE44
	mov r1, #1
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE44:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0x10
	bl ov23_0224C1EC
	mov r0, #0x10
	add r1, r7, #0
	bl ov23_0224B79C
	cmp r0, #0
	beq _0224CE82
	ldrb r0, [r6]
	cmp r0, #1
	beq _0224CE6C
	cmp r0, #2
	beq _0224CE7C
	cmp r0, #3
	beq _0224CE74
	b _0224CE82
_0224CE6C:
	mov r1, #2
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE74:
	mov r1, #3
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE7C:
	mov r1, #4
	add r0, sp, #0x14
	strb r1, [r0, #1]
_0224CE82:
	mov r0, #0x57
	add r1, sp, #0x14
	bl sub_02035B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CE90: .word 0x022577AC
	thumb_func_end ov23_0224CD80

	thumb_func_start ov23_0224CE94
ov23_0224CE94: ; 0x0224CE94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x10
	bl ov23_0224C6AC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224CEAC
	mov r1, #4
	bl sub_02002154
_0224CEAC:
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	bl sub_02059514
	bl ov23_0224DC24
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224CE94

	thumb_func_start ov23_0224CEC8
ov23_0224CEC8: ; 0x0224CEC8
	push {r4, lr}
	bl ov23_0224DC08
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0xc]
	bl sub_0203608C
	strb r0, [r4, #0x10]
	ldr r0, _0224CF0C ; =0x022577AC
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0x64
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldr r0, _0224CF10 ; =ov23_0224CB1C
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _0224CF14 ; =ov23_0224CE94
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, pc}
	nop
_0224CF0C: .word 0x022577AC
_0224CF10: .word ov23_0224CB1C
_0224CF14: .word ov23_0224CE94
	thumb_func_end ov23_0224CEC8

	thumb_func_start ov23_0224CF18
ov23_0224CF18: ; 0x0224CF18
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0224D018 ; =0x022577AC
	add r5, r2, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298A0
	ldrb r4, [r5]
	add r7, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _0224D016
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0224CF54
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224D01C ; =ov23_0224B654
	mov r1, #0x36
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224DC24
	pop {r3, r4, r5, r6, r7, pc}
_0224CF54:
	cmp r0, #1
	bne _0224CF5E
	bl ov23_0224CEC8
	pop {r3, r4, r5, r6, r7, pc}
_0224CF5E:
	cmp r0, #6
	bne _0224CF7A
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224D01C ; =ov23_0224B654
	mov r1, #0x4a
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224DC24
	pop {r3, r4, r5, r6, r7, pc}
_0224CF7A:
	cmp r0, #5
	bne _0224CF9A
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224D01C ; =ov23_0224B654
	mov r1, #0x58
	mov r2, #1
	bl ov23_02253F40
	bl ov23_02249AA4
	bl ov23_0224DC24
	pop {r3, r4, r5, r6, r7, pc}
_0224CF9A:
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	bhi _0224D016
	add r0, r4, #0
	bl sub_02058D88
	add r4, r0, #0
	ldrb r0, [r5]
	bl sub_02058DC0
	add r6, r0, #0
	ldrb r0, [r5]
	bl sub_02058F50
	str r0, [sp]
	ldrb r3, [r5]
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0224C1EC
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x10
	bl ov23_0224C1EC
	ldrb r0, [r5, #1]
	cmp r0, #3
	bne _0224CFE0
	add r0, r7, #0
	bl sub_02029824
_0224CFE0:
	ldrb r0, [r5, #1]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0224D016
	mov r0, #0xb
	bl sub_0202BE20
	add r1, r0, #0
	ldr r0, _0224D018 ; =0x022577AC
	mov r2, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0202B758
	ldr r0, _0224D018 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x23
	bl sub_0202CFEC
_0224D016:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D018: .word 0x022577AC
_0224D01C: .word ov23_0224B654
	thumb_func_end ov23_0224CF18

	thumb_func_start ov23_0224D020
ov23_0224D020: ; 0x0224D020
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0224D11C ; =0x022577AC
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224D030
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D030:
	mov r5, #0
_0224D032:
	ldr r0, [r4, #0]
	ldr r1, _0224D120 ; =0x0000137B
	add r0, r0, r5
	ldrb r7, [r0, r1]
	cmp r7, #0xff
	beq _0224D068
	mov r2, #0xff
	strb r2, [r0, r1]
	cmp r5, r7
	beq _0224D068
	add r0, r5, #0
	bl sub_02032EE8
	str r0, [sp]
	add r0, r7, #0
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #0x68
	add r3, r6, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _0224D068
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D068:
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D124 ; =0x0000134B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224D0A6
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D124 ; =0x0000134B
	ldrb r0, [r1, r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0xff
	add r3, r0, r5
	ldr r0, _0224D124 ; =0x0000134B
	strb r2, [r3, r0]
	add r0, r7, #0
	mov r2, #0x6c
	add r3, r6, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _0224D0A6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D0A6:
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D128 ; =0x0000135B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224D0D6
	add r0, r5, #0
	bl sub_02032EE8
	ldr r2, _0224D11C ; =0x022577AC
	mov r1, #0xff
	ldr r2, [r2, #0]
	add r3, r2, r5
	ldr r2, _0224D128 ; =0x0000135B
	strb r1, [r3, r2]
	mov r1, #0
	mov r2, #0x6d
	add r3, r6, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _0224D116
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D0D6:
	ldr r0, _0224D12C ; =0x00001353
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224D110
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D12C ; =0x00001353
	ldrb r0, [r1, r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0xff
	add r3, r0, r5
	ldr r0, _0224D12C ; =0x00001353
	strb r2, [r3, r0]
	add r0, r7, #0
	mov r2, #0x6e
	add r3, r6, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _0224D110
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D110:
	add r5, r5, #1
	cmp r5, #8
	blt _0224D032
_0224D116:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D11C: .word 0x022577AC
_0224D120: .word 0x0000137B
_0224D124: .word 0x0000134B
_0224D128: .word 0x0000135B
_0224D12C: .word 0x00001353
	thumb_func_end ov23_0224D020

	thumb_func_start ov23_0224D130
ov23_0224D130: ; 0x0224D130
	ldr r0, _0224D14C ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224D146
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D146
	add r0, r0, #2
	bx lr
_0224D146:
	mov r0, #0
	bx lr
	nop
_0224D14C: .word 0x022577AC
	thumb_func_end ov23_0224D130

	thumb_func_start ov23_0224D150
ov23_0224D150: ; 0x0224D150
	ldr r0, _0224D170 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224D16A
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D16A
	ldrb r1, [r0]
	ldr r0, _0224D174 ; =0x0225760C
	ldrb r0, [r0, r1]
	bx lr
_0224D16A:
	mov r0, #0
	bx lr
	nop
_0224D170: .word 0x022577AC
_0224D174: .word 0x0225760C
	thumb_func_end ov23_0224D150

	thumb_func_start ov23_0224D178
ov23_0224D178: ; 0x0224D178
	ldr r0, _0224D198 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224D192
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D192
	ldrb r1, [r0]
	ldr r0, _0224D19C ; =0x02257620
	ldrb r0, [r0, r1]
	bx lr
_0224D192:
	mov r0, #0
	bx lr
	nop
_0224D198: .word 0x022577AC
_0224D19C: .word 0x02257620
	thumb_func_end ov23_0224D178

	thumb_func_start ov23_0224D1A0
ov23_0224D1A0: ; 0x0224D1A0
	push {r4, r5, r6, r7}
	add r7, r0, #0
	ldr r0, _0224D228 ; =0x022577AC
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov ip, r0
	cmp r0, #0
	bne _0224D1B6
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0224D1B6:
	cmp r5, #0x40
	blt _0224D1C0
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0224D1C0:
	asr r0, r7, #4
	asr r1, r5, #4
	lsr r0, r0, #0x1b
	lsr r1, r1, #0x1b
	add r0, r7, r0
	add r1, r5, r1
	ldr r3, _0224D22C ; =0x0225760C
	ldr r4, _0224D230 ; =0x02257620
	asr r0, r0, #5
	asr r1, r1, #5
	mov r2, #0
_0224D1D6:
	ldrb r6, [r3]
	cmp r0, r6
	bne _0224D216
	ldrb r6, [r4]
	cmp r1, r6
	bne _0224D216
	lsr r4, r7, #0x1f
	lsl r3, r7, #0x1b
	sub r3, r3, r4
	mov r1, #0x1b
	ror r3, r1
	mov r0, #1
	add r4, r4, r3
	add r3, r0, #0
	lsl r3, r4
	lsl r4, r2, #7
	mov r2, ip
	add r2, r2, r4
	lsr r6, r5, #0x1f
	lsl r4, r5, #0x1b
	sub r4, r4, r6
	ror r4, r1
	add r1, r6, r4
	lsl r1, r1, #2
	add r2, r2, r1
	ldr r1, _0224D234 ; =0x00000A04
	ldr r1, [r2, r1]
	tst r1, r3
	bne _0224D222
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0224D216:
	add r2, r2, #1
	add r3, r3, #1
	add r4, r4, #1
	cmp r2, #0x11
	blt _0224D1D6
	mov r0, #1
_0224D222:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0224D228: .word 0x022577AC
_0224D22C: .word 0x0225760C
_0224D230: .word 0x02257620
_0224D234: .word 0x00000A04
	thumb_func_end ov23_0224D1A0

	thumb_func_start ov23_0224D238
ov23_0224D238: ; 0x0224D238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb0
	ldr r0, _0224D38C ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02029894
	str r0, [sp, #0xc]
	ldr r0, _0224D38C ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	mov r0, #0
	bl sub_02058EE0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_02058F18
	str r0, [sp, #4]
	mov r0, #0
	bl sub_02058F80
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #0x28]
	mov r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, _0224D38C ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AA20
	ldr r0, [sp, #0xc]
	bl sub_020292CC
	add r0, r4, #0
	bl sub_02028B34
	add r0, sp, #0x10
	bl sub_020361BC
	mov r4, #0
_0224D2A0:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl sub_020E1F1C
	ldr r2, [sp, #0x20]
	ldr r6, [sp, #0x24]
	add r7, r2, r0
	adc r6, r1
	mov r1, #0
	add r0, r6, #0
	mov r2, #5
	mov r3, #0
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	bl sub_020E1F1C
	cmp r1, #2
	bge _0224D2CE
	lsl r5, r1, #1
	add r5, #0xa
	b _0224D2D4
_0224D2CE:
	sub r0, r1, #3
	lsl r5, r0, #1
	add r5, #0x12
_0224D2D4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, r7, #0
	add r3, r6, #0
	bl sub_020E1F1C
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	add r0, r2, r0
	adc r3, r1
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r3, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_020E1F1C
	lsl r6, r1, #1
	add r6, #0xc
	mov r0, #1
	mov r1, #0
	cmp r4, #0
	blt _0224D31E
	add r2, sp, #0x28
_0224D306:
	ldr r3, [r2, #0]
	cmp r5, r3
	bne _0224D316
	ldr r3, [r2, #4]
	cmp r6, r3
	bne _0224D316
	mov r0, #0
	b _0224D31E
_0224D316:
	add r1, r1, #1
	add r2, #8
	cmp r1, r4
	ble _0224D306
_0224D31E:
	cmp r0, #0
	bne _0224D326
	sub r4, r4, #1
	b _0224D33E
_0224D326:
	add r1, r4, #0
	ldr r0, [sp, #0xc]
	add r1, #0x10
	add r2, r5, #0
	add r3, r6, #0
	bl sub_02029364
	add r1, sp, #0x28
	lsl r0, r4, #3
	add r0, r1, r0
	str r5, [r0, #8]
	str r6, [r0, #0xc]
_0224D33E:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0224D2A0
	ldr r0, _0224D38C ; =0x022577AC
	mov r2, #0x22
	ldr r1, [r0, #0]
	ldr r0, _0224D390 ; =0x00000A04
	lsl r2, r2, #6
	add r0, r1, r0
	mov r1, #0xff
	bl sub_020C4CF4
	ldr r0, [sp]
	bl sub_02059328
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02029854
	ldr r1, _0224D38C ; =0x022577AC
	ldr r0, [sp, #0xc]
	ldr r2, [r1, #0]
	ldr r1, _0224D394 ; =0x0000096A
	add r1, r2, r1
	mov r2, #0x94
	bl sub_020C4DB0
	ldr r1, _0224D38C ; =0x022577AC
	ldr r0, [sp, #0xc]
	ldr r2, [r1, #0]
	ldr r1, _0224D398 ; =0x00001204
	add r1, r2, r1
	bl ov23_0224B39C
	add sp, #0xb0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D38C: .word 0x022577AC
_0224D390: .word 0x00000A04
_0224D394: .word 0x0000096A
_0224D398: .word 0x00001204
	thumb_func_end ov23_0224D238

	thumb_func_start ov23_0224D39C
ov23_0224D39C: ; 0x0224D39C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421CC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	thumb_func_end ov23_0224D39C

	thumb_func_start ov23_0224D3B0
ov23_0224D3B0: ; 0x0224D3B0
	push {r3, lr}
	bl ov23_022421CC
	bl ov23_02254044
	pop {r3, pc}
	thumb_func_end ov23_0224D3B0

	thumb_func_start ov23_0224D3BC
ov23_0224D3BC: ; 0x0224D3BC
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421CC
	mov r1, #0
	add r2, r4, #0
	bl ov23_022541C8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224D3BC

	thumb_func_start ov23_0224D3D0
ov23_0224D3D0: ; 0x0224D3D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421CC
	add r1, r4, #0
	add r2, r5, #0
	bl ov23_02254154
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224D3D0

	thumb_func_start ov23_0224D3E4
ov23_0224D3E4: ; 0x0224D3E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r4, #0
_0224D3F0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293B0
	str r0, [sp, #8]
	cmp r0, #0
	beq _0224D448
	cmp r4, #0
	beq _0224D448
	cmp r4, #0x10
	bge _0224D448
	bl sub_0205741C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293FC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202942C
	ldr r1, [sp]
	ldr r2, [sp, #4]
	sub r1, r1, r7
	sub r2, r2, r0
	cmp r1, #0
	blt _0224D448
	cmp r1, #2
	bgt _0224D448
	cmp r2, #0
	blt _0224D448
	cmp r2, #2
	bgt _0224D448
	lsl r0, r2, #1
	add r2, r2, r0
	add r0, r6, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0224D448
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224D448:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224D3F0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224D3E4

	thumb_func_start ov23_0224D454
ov23_0224D454: ; 0x0224D454
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldrh r4, [r1]
	ldrh r6, [r1, #2]
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0224D1A0
	cmp r0, #0
	bne _0224D4C0
	add r0, sp, #0
	strb r5, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0224B05C
	ldr r1, _0224D4C8 ; =0x022577AC
	mov r3, #0x1b
	ldr r2, [r1, #0]
	mov r1, #0x96
	add r2, #0xa
	mul r1, r0
	add r0, r2, r1
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1b
	sub r1, r1, r2
	ror r1, r3
	add r1, r2, r1
	lsr r4, r6, #0x1f
	lsl r2, r6, #0x1b
	sub r2, r2, r4
	ror r2, r3
	add r2, r4, r2
	bl ov23_0224D3E4
	bl sub_0205746C
	add r1, sp, #0
	strb r0, [r1, #1]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0224D4C0
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	mov r0, #0x3c
	add r1, sp, #0
	bl sub_02035B48
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224D4C0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224D4C8: .word 0x022577AC
	thumb_func_end ov23_0224D454

	thumb_func_start ov23_0224D4CC
ov23_0224D4CC: ; 0x0224D4CC
	push {r3, r4, r5, lr}
	ldr r0, _0224D4F8 ; =0x022577AC
	add r5, r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	add r0, r0, #2
	bl sub_020298AC
	add r4, r0, #0
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224D4F4
	ldrb r1, [r5, #1]
	add r0, r4, #0
	bl ov23_02253A00
_0224D4F4:
	pop {r3, r4, r5, pc}
	nop
_0224D4F8: .word 0x022577AC
	thumb_func_end ov23_0224D4CC

	thumb_func_start ov23_0224D4FC
ov23_0224D4FC: ; 0x0224D4FC
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224D4FC

	thumb_func_start ov23_0224D500
ov23_0224D500: ; 0x0224D500
	ldr r2, _0224D510 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224D50E
	add r2, r2, r0
	ldr r0, _0224D514 ; =0x0000134B
	strb r1, [r2, r0]
_0224D50E:
	bx lr
	; .align 2, 0
_0224D510: .word 0x022577AC
_0224D514: .word 0x0000134B
	thumb_func_end ov23_0224D500

	thumb_func_start ov23_0224D518
ov23_0224D518: ; 0x0224D518
	ldr r2, _0224D528 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224D526
	add r2, r2, r0
	ldr r0, _0224D52C ; =0x00001353
	strb r1, [r2, r0]
_0224D526:
	bx lr
	; .align 2, 0
_0224D528: .word 0x022577AC
_0224D52C: .word 0x00001353
	thumb_func_end ov23_0224D518

	thumb_func_start ov23_0224D530
ov23_0224D530: ; 0x0224D530
	ldr r1, _0224D544 ; =0x022577AC
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224D540
	add r1, r1, r0
	ldr r0, _0224D548 ; =0x0000135B
	mov r2, #1
	strb r2, [r1, r0]
_0224D540:
	bx lr
	nop
_0224D544: .word 0x022577AC
_0224D548: .word 0x0000135B
	thumb_func_end ov23_0224D530

	thumb_func_start ov23_0224D54C
ov23_0224D54C: ; 0x0224D54C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0224D5A0 ; =0x022577AC
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	add r1, r0, #0
	add r0, sp, #8
	bl ov5_021E1894
	ldr r1, _0224D5A0 ; =0x022577AC
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	add r1, #0xa4
	ldr r1, [r1, #0]
	bl ov5_021E1674
	ldr r0, _0224D5A0 ; =0x022577AC
	ldr r2, _0224D5A4 ; =0x0000013D
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r1, #0x50]
	str r0, [sp, #4]
	add r0, r1, #0
	ldrb r3, [r4, #5]
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r2, r3, r2
	ldr r1, [r1, #0x30]
	add r3, sp, #8
	bl ov5_021E19CC
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0224D5A0: .word 0x022577AC
_0224D5A4: .word 0x0000013D
	thumb_func_end ov23_0224D54C

	thumb_func_start ov23_0224D5A8
ov23_0224D5A8: ; 0x0224D5A8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224D5A8

	thumb_func_start ov23_0224D5BC
ov23_0224D5BC: ; 0x0224D5BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _0224D68A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224D5D6: ; jump table
	.short _0224D5E0 - _0224D5D6 - 2 ; case 0
	.short _0224D600 - _0224D5D6 - 2 ; case 1
	.short _0224D62E - _0224D5D6 - 2 ; case 2
	.short _0224D65E - _0224D5D6 - 2 ; case 3
	.short _0224D67A - _0224D5D6 - 2 ; case 4
_0224D5E0:
	bl sub_020594FC
	bl ov23_022421AC
	mov r2, #0
	mov r1, #7
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _0224D690 ; =0x000005E3
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, pc}
_0224D600:
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _0224D68A
	ldr r0, _0224D694 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224D68A
	bl ov23_022421AC
	ldrb r1, [r4, #5]
	mov r2, #0
	add r3, r2, #0
	add r1, #0xe
	bl ov23_02253F40
	mov r0, #2
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, pc}
_0224D62E:
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _0224D68A
	ldr r0, _0224D694 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224D68A
	add r0, r4, #0
	bl ov23_0224D54C
	mov r0, #4
	str r0, [r4, #0]
	bl ov23_022421AC
	bl ov23_02254044
	bl sub_02059514
	add sp, #0xc
	pop {r4, r5, pc}
_0224D65E:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_0224D67A:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	bl ov23_02243204
_0224D68A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0224D690: .word 0x000005E3
_0224D694: .word 0x021BF67C
	thumb_func_end ov23_0224D5BC

	thumb_func_start ov23_0224D698
ov23_0224D698: ; 0x0224D698
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	mov r0, #0x61
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, pc}
	thumb_func_end ov23_0224D698

	thumb_func_start ov23_0224D6AC
ov23_0224D6AC: ; 0x0224D6AC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224D6E8
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #0x64
	strb r0, [r4, #5]
	ldr r0, _0224D6EC ; =ov23_0224D5BC
	bl sub_0200D9E8
	add r1, r0, #0
	ldr r2, _0224D6F0 ; =ov23_0224D5A8
	add r0, r4, #0
	bl ov23_022431EC
_0224D6E8:
	pop {r3, r4, r5, pc}
	nop
_0224D6EC: .word ov23_0224D5BC
_0224D6F0: .word ov23_0224D5A8
	thumb_func_end ov23_0224D6AC

	thumb_func_start ov23_0224D6F4
ov23_0224D6F4: ; 0x0224D6F4
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224D6F4

	thumb_func_start ov23_0224D6F8
ov23_0224D6F8: ; 0x0224D6F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	mov r4, #0
_0224D704:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293B0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0224D744
	cmp r4, #0
	beq _0224D744
	cmp r4, #0x10
	bge _0224D744
	bl sub_0205741C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293FC
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202942C
	ldr r1, [sp]
	sub r2, r7, r6
	sub r0, r1, r0
	cmp r2, #0
	bne _0224D744
	cmp r0, #0
	bne _0224D744
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224D744:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224D704
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224D6F8

	thumb_func_start ov23_0224D750
ov23_0224D750: ; 0x0224D750
	sub r0, #0x38
	cmp r0, #0xf
	bhi _0224D7C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224D762: ; jump table
	.short _0224D782 - _0224D762 - 2 ; case 0
	.short _0224D786 - _0224D762 - 2 ; case 1
	.short _0224D78A - _0224D762 - 2 ; case 2
	.short _0224D78E - _0224D762 - 2 ; case 3
	.short _0224D792 - _0224D762 - 2 ; case 4
	.short _0224D796 - _0224D762 - 2 ; case 5
	.short _0224D79A - _0224D762 - 2 ; case 6
	.short _0224D79E - _0224D762 - 2 ; case 7
	.short _0224D7A2 - _0224D762 - 2 ; case 8
	.short _0224D7A6 - _0224D762 - 2 ; case 9
	.short _0224D7AA - _0224D762 - 2 ; case 10
	.short _0224D7AE - _0224D762 - 2 ; case 11
	.short _0224D7B2 - _0224D762 - 2 ; case 12
	.short _0224D7B6 - _0224D762 - 2 ; case 13
	.short _0224D7BA - _0224D762 - 2 ; case 14
	.short _0224D7BE - _0224D762 - 2 ; case 15
_0224D782:
	mov r0, #0xb
	bx lr
_0224D786:
	mov r0, #0xc
	bx lr
_0224D78A:
	mov r0, #0x12
	bx lr
_0224D78E:
	mov r0, #0x13
	bx lr
_0224D792:
	mov r0, #0x14
	bx lr
_0224D796:
	mov r0, #0x15
	bx lr
_0224D79A:
	mov r0, #0x16
	bx lr
_0224D79E:
	mov r0, #0x17
	bx lr
_0224D7A2:
	mov r0, #0x18
	bx lr
_0224D7A6:
	mov r0, #0x19
	bx lr
_0224D7AA:
	mov r0, #0x1a
	bx lr
_0224D7AE:
	mov r0, #0x1b
	bx lr
_0224D7B2:
	mov r0, #0x1c
	bx lr
_0224D7B6:
	mov r0, #0x1d
	bx lr
_0224D7BA:
	mov r0, #0x1e
	bx lr
_0224D7BE:
	mov r0, #0x1f
	bx lr
_0224D7C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224D750

	thumb_func_start ov23_0224D7C8
ov23_0224D7C8: ; 0x0224D7C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02058E4C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058F80
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224D7F6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224D7F6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224D1A0
	cmp r0, #1
	bne _0224D86E
	ldr r0, _0224D874 ; =0x022577AC
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224D878 ; =0x00001383
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224D86E
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224B05C
	ldr r1, _0224D874 ; =0x022577AC
	lsr r3, r6, #0x1f
	ldr r2, [r1, #0]
	mov r1, #0x96
	add r2, #0xa
	mul r1, r0
	add r0, r2, r1
	lsl r2, r6, #0x1b
	sub r2, r2, r3
	mov r1, #0x1b
	ror r2, r1
	add r1, r3, r2
	lsr r3, r4, #0x1f
	lsl r7, r4, #0x1b
	sub r7, r7, r3
	mov r2, #0x1b
	ror r7, r2
	add r2, r3, r7
	bl ov23_0224D6F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov23_0224D750
	add r2, r0, #0
	beq _0224D86E
	ldr r1, _0224D874 ; =0x022577AC
	mov r0, #1
	ldr r1, [r1, #0]
	add r3, r1, r5
	ldr r1, _0224D878 ; =0x00001383
	strb r0, [r3, r1]
	ldr r0, [sp, #8]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xff
	add r3, r6, #0
	bl ov23_022443CC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224D86E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D874: .word 0x022577AC
_0224D878: .word 0x00001383
	thumb_func_end ov23_0224D7C8

	thumb_func_start ov23_0224D87C
ov23_0224D87C: ; 0x0224D87C
	ldr r1, _0224D890 ; =0x022577AC
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224D88C
	add r1, r1, r0
	ldr r0, _0224D894 ; =0x00001383
	mov r2, #0
	strb r2, [r1, r0]
_0224D88C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224D890: .word 0x022577AC
_0224D894: .word 0x00001383
	thumb_func_end ov23_0224D87C

	thumb_func_start ov23_0224D898
ov23_0224D898: ; 0x0224D898
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r0, sp, #4
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	mov r4, #0
	add r5, sp, #4
_0224D8AA:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224D926
	add r0, r4, #0
	bl sub_02058DF8
	str r0, [sp]
	add r0, r4, #0
	bl sub_02058E4C
	add r7, r0, #0
	ldr r1, [sp]
	ldr r0, _0224D998 ; =0x0000FFFF
	cmp r1, r0
	bne _0224D8D2
	cmp r7, r0
	beq _0224D926
_0224D8D2:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov23_0224B05C
	add r6, r0, #0
	cmp r4, r6
	beq _0224D926
	cmp r6, #0x10
	beq _0224D926
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0224D926
	ldr r0, _0224D99C ; =0x022577AC
	ldr r1, _0224D9A0 ; =0x0000136B
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	bne _0224D926
	ldr r1, _0224D9A4 ; =0x00001373
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _0224D926
	ldr r0, [sp]
	add r1, r7, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224D926
	ldrb r0, [r5]
	cmp r0, #0
	bne _0224D926
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_0224B844
	mov r0, #1
	strb r0, [r5]
_0224D926:
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _0224D8AA
	bl sub_0203608C
	ldr r1, _0224D99C ; =0x022577AC
	add r4, r0, #0
	ldr r2, [r1, #0]
	ldr r1, _0224D9A8 ; =0x000012E4
	ldrb r1, [r2, r1]
	cmp r1, #6
	bne _0224D992
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058E4C
	add r5, r0, #0
	ldr r0, _0224D998 ; =0x0000FFFF
	cmp r6, r0
	bne _0224D958
	cmp r5, r0
	beq _0224D980
_0224D958:
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224D980
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224B05C
	add r5, sp, #4
	ldrb r1, [r5, r4]
	cmp r1, #0
	bne _0224D980
	add r1, r4, #0
	mov r2, #1
	bl ov23_0224B844
	mov r0, #1
	strb r0, [r5, r4]
_0224D980:
	add r0, sp, #4
	ldrb r0, [r0, r4]
	cmp r0, #0
	beq _0224D992
	ldr r0, _0224D99C ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0224D9A8 ; =0x000012E4
	strb r2, [r1, r0]
_0224D992:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224D998: .word 0x0000FFFF
_0224D99C: .word 0x022577AC
_0224D9A0: .word 0x0000136B
_0224D9A4: .word 0x00001373
_0224D9A8: .word 0x000012E4
	thumb_func_end ov23_0224D898

	thumb_func_start ov23_0224D9AC
ov23_0224D9AC: ; 0x0224D9AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0224DA7C ; =0x022577AC
	str r1, [sp, #8]
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224DA80 ; =0x00001363
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	bne _0224D9C8
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D9C8:
	bl sub_0203608C
	bl sub_02058CA0
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058CF4
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224D9F8
	ldr r0, _0224DA7C ; =0x022577AC
	mov r2, #0xff
	ldr r0, [r0, #0]
	add sp, #0x10
	add r1, r0, r5
	ldr r0, _0224DA80 ; =0x00001363
	strb r2, [r1, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D9F8:
	bl ov23_022535EC
	bl ov23_0224F24C
	bl ov23_0224321C
	bl sub_0203608C
	mov r1, #0
	bl ov23_02244858
	ldr r0, _0224DA7C ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224DA84 ; =0x000013DC
	add r1, r0, #2
	ldrh r6, [r2, r0]
	add r0, r0, #4
	ldrh r4, [r2, r1]
	ldrb r7, [r2, r0]
	cmp r6, #0
	beq _0224DA26
	cmp r4, #0
	bne _0224DA2A
_0224DA26:
	bl sub_02022974
_0224DA2A:
	add r0, r7, #0
	bl sub_0206419C
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r0, _0224DA7C ; =0x022577AC
	mov r3, #0
	ldr r1, [r0, #0]
	ldr r0, _0224DA88 ; =0x000013E6
	add r2, r4, r2
	strb r3, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, _0224DA7C ; =0x022577AC
	add r1, r6, r1
	ldr r0, [r0, #0]
	add r3, r7, #0
	ldr r0, [r0, #0]
	bl ov23_0224CAF0
	bl ov23_02249AB8
	ldr r1, _0224DA7C ; =0x022577AC
	mov r0, #0xa
	ldr r2, [r1, #0]
	mov r3, #0
	lsl r0, r0, #8
	str r3, [r2, r0]
	ldr r0, [r1, #0]
	mov r2, #0xff
	add r1, r0, r5
	ldr r0, _0224DA80 ; =0x00001363
	strb r2, [r1, r0]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DA7C: .word 0x022577AC
_0224DA80: .word 0x00001363
_0224DA84: .word 0x000013DC
_0224DA88: .word 0x000013E6
	thumb_func_end ov23_0224D9AC

	thumb_func_start ov23_0224DA8C
ov23_0224DA8C: ; 0x0224DA8C
	push {r3, lr}
	ldr r0, _0224DAAC ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224DAB0 ; =0x000012E4
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _0224DAA8
	mov r1, #2
	strb r1, [r2, r0]
	bl sub_020578DC
	mov r0, #0
	bl ov23_0224B5CC
_0224DAA8:
	pop {r3, pc}
	nop
_0224DAAC: .word 0x022577AC
_0224DAB0: .word 0x000012E4
	thumb_func_end ov23_0224DA8C

	thumb_func_start ov23_0224DAB4
ov23_0224DAB4: ; 0x0224DAB4
	ldr r0, _0224DAC8 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224DACC ; =0x000012E4
	ldrb r1, [r2, r0]
	cmp r1, #5
	bne _0224DAC4
	mov r1, #4
	strb r1, [r2, r0]
_0224DAC4:
	bx lr
	nop
_0224DAC8: .word 0x022577AC
_0224DACC: .word 0x000012E4
	thumb_func_end ov23_0224DAB4

	thumb_func_start ov23_0224DAD0
ov23_0224DAD0: ; 0x0224DAD0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02058EA0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02058EC0
	add r4, r0, #0
	ldr r0, _0224DB40 ; =0x022577AC
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	bne _0224DB00
	cmp r6, #0
	beq _0224DB3E
	bl sub_02033DFC
	cmp r0, #0
	bne _0224DB3E
_0224DB00:
	ldr r0, _0224DB44 ; =0x0000FFFF
	cmp r5, r0
	bne _0224DB16
	cmp r4, r0
	bne _0224DB16
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #1
	bl ov23_0224B844
	pop {r4, r5, r6, pc}
_0224DB16:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224DB34
	ldr r0, _0224DB40 ; =0x022577AC
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224DB3E
_0224DB34:
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #1
	bl ov23_0224B844
_0224DB3E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224DB40: .word 0x022577AC
_0224DB44: .word 0x0000FFFF
	thumb_func_end ov23_0224DAD0

	thumb_func_start ov23_0224DB48
ov23_0224DB48: ; 0x0224DB48
	ldr r0, _0224DB5C ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224DB56
	ldr r0, _0224DB60 ; =0x000013DC
	ldrh r0, [r1, r0]
	bx lr
_0224DB56:
	mov r0, #0x48
	bx lr
	nop
_0224DB5C: .word 0x022577AC
_0224DB60: .word 0x000013DC
	thumb_func_end ov23_0224DB48

	thumb_func_start ov23_0224DB64
ov23_0224DB64: ; 0x0224DB64
	ldr r0, _0224DB78 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224DB72
	ldr r0, _0224DB7C ; =0x000013DE
	ldrh r0, [r1, r0]
	bx lr
_0224DB72:
	ldr r0, _0224DB80 ; =0x000001B5
	bx lr
	nop
_0224DB78: .word 0x022577AC
_0224DB7C: .word 0x000013DE
_0224DB80: .word 0x000001B5
	thumb_func_end ov23_0224DB64

	thumb_func_start ov23_0224DB84
ov23_0224DB84: ; 0x0224DB84
	ldr r0, _0224DB98 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224DB92
	ldr r0, _0224DB9C ; =0x000013E0
	ldrb r0, [r1, r0]
	bx lr
_0224DB92:
	mov r0, #1
	bx lr
	nop
_0224DB98: .word 0x022577AC
_0224DB9C: .word 0x000013E0
	thumb_func_end ov23_0224DB84

	thumb_func_start ov23_0224DBA0
ov23_0224DBA0: ; 0x0224DBA0
	ldr r2, _0224DBB4 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224DBB0
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0224DBB8 ; =0x000013AC
	strh r1, [r2, r0]
_0224DBB0:
	bx lr
	nop
_0224DBB4: .word 0x022577AC
_0224DBB8: .word 0x000013AC
	thumb_func_end ov23_0224DBA0

	thumb_func_start ov23_0224DBBC
ov23_0224DBBC: ; 0x0224DBBC
	ldr r2, _0224DBD0 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224DBCC
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0224DBD4 ; =0x000013BC
	strh r1, [r2, r0]
_0224DBCC:
	bx lr
	nop
_0224DBD0: .word 0x022577AC
_0224DBD4: .word 0x000013BC
	thumb_func_end ov23_0224DBBC

	thumb_func_start ov23_0224DBD8
ov23_0224DBD8: ; 0x0224DBD8
	ldr r2, _0224DBEC ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224DBE8
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0224DBF0 ; =0x000013CC
	strh r1, [r2, r0]
_0224DBE8:
	bx lr
	nop
_0224DBEC: .word 0x022577AC
_0224DBF0: .word 0x000013CC
	thumb_func_end ov23_0224DBD8

	thumb_func_start ov23_0224DBF4
ov23_0224DBF4: ; 0x0224DBF4
	ldr r1, _0224DC00 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224DC04 ; =0x000013E5
	strb r0, [r2, r1]
	bx lr
	nop
_0224DC00: .word 0x022577AC
_0224DC04: .word 0x000013E5
	thumb_func_end ov23_0224DBF4

	thumb_func_start ov23_0224DC08
ov23_0224DC08: ; 0x0224DC08
	push {r3, lr}
	mov r0, #1
	bl sub_02032174
	mov r0, #1
	bl sub_02032138
	mov r0, #1
	bl sub_02036814
	bl sub_020340FC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224DC08

	thumb_func_start ov23_0224DC24
ov23_0224DC24: ; 0x0224DC24
	push {r3, lr}
	mov r0, #0
	bl sub_02032174
	mov r0, #0
	bl sub_02032138
	mov r0, #0
	bl sub_02036814
	bl sub_020340FC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224DC24

	thumb_func_start ov23_0224DC40
ov23_0224DC40: ; 0x0224DC40
	push {r3, lr}
	ldrh r2, [r0, #0x2c]
	add r0, sp, #0
	strb r2, [r0]
	strb r1, [r0, #1]
	mov r0, #0x4a
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	thumb_func_end ov23_0224DC40

	thumb_func_start ov23_0224DC54
ov23_0224DC54: ; 0x0224DC54
	push {r3, lr}
	ldrh r2, [r0, #0x30]
	add r0, sp, #0
	strb r2, [r0]
	strb r1, [r0, #1]
	mov r0, #0x49
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	thumb_func_end ov23_0224DC54

	thumb_func_start ov23_0224DC68
ov23_0224DC68: ; 0x0224DC68
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x88
	blt _0224DC80
	ldrh r0, [r0, #0x30]
	bl sub_02032EE8
	bl sub_02025F30
	cmp r0, #1
	bne _0224DC80
	add r4, #0x13
_0224DC80:
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	thumb_func_end ov23_0224DC68

	thumb_func_start ov23_0224DC90
ov23_0224DC90: ; 0x0224DC90
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x88
	blt _0224DCA8
	ldrh r0, [r0, #0x2c]
	bl sub_02032EE8
	bl sub_02025F30
	cmp r0, #1
	bne _0224DCA8
	add r4, #0x13
_0224DCA8:
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	thumb_func_end ov23_0224DC90

	thumb_func_start ov23_0224DCB8
ov23_0224DCB8: ; 0x0224DCB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x21
	mov r1, #0x3c
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _0224DD1C ; =0x022577B0
	mov r1, #1
	str r4, [r0, #4]
	str r7, [r4, #8]
	str r6, [r4, #0x2c]
	add r0, r4, #0
	strh r5, [r4, #0x30]
	add r0, #0x37
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	ldrh r1, [r4, #0x30]
	add r0, #0x28
	strb r1, [r0]
	ldr r0, _0224DD20 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	bl ov23_0224DC68
	ldr r0, _0224DD24 ; =ov23_0224E2D8
	ldr r2, _0224DD28 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DD1C: .word 0x022577B0
_0224DD20: .word 0x000005DC
_0224DD24: .word ov23_0224E2D8
_0224DD28: .word 0x00002710
	thumb_func_end ov23_0224DCB8

	thumb_func_start ov23_0224DD2C
ov23_0224DD2C: ; 0x0224DD2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224DDD4 ; =0x000001E7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, #0xc
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224DDD8 ; =0x000003D9
	add r0, #0xc
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0224DDDC ; =0x0000027A
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	ldr r4, _0224DDE0 ; =0x022568B4
	add r7, r0, #0
	mov r6, #0
_0224DD7E:
	ldr r0, [r5, #0x1c]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	add r1, r7, #0
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blo _0224DD7E
	add r0, r7, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x14
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xc
	str r0, [sp, #0x20]
	mov r3, #4
	add r0, sp, #0x14
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r1, [r5, #0x3a]
	add r0, sp, #0x14
	add r2, r1, #0
	bl sub_0200112C
	str r0, [r5, #0x20]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0201A954
	bl sub_020594FC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DDD4: .word 0x000001E7
_0224DDD8: .word 0x000003D9
_0224DDDC: .word 0x0000027A
_0224DDE0: .word 0x022568B4
	thumb_func_end ov23_0224DD2C

	thumb_func_start ov23_0224DDE4
ov23_0224DDE4: ; 0x0224DDE4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224DDFA
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x24]
_0224DDFA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224DE0C
	mov r1, #1
	mvn r1, r1
	bl ov23_02251044
	bl ov23_02243204
_0224DE0C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E244
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _0224DE1E
	mov r0, #0
	blx r1
_0224DE1E:
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02059514
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _0224DE38 ; =0x022577B0
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
	nop
_0224DE38: .word 0x022577B0
	thumb_func_end ov23_0224DDE4

	thumb_func_start ov23_0224DE3C
ov23_0224DE3C: ; 0x0224DE3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224DF0C ; =0x000001B7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, #0xc
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224DF10 ; =0x000003D9
	add r0, #0xc
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0224DF14 ; =0x00000279
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #0
	add r7, sp, #0x14
_0224DE8E:
	bl sub_0201D35C
	mov r1, #0xc
	bl sub_020E2178
	add r2, r1, #0
	mov r1, #0
	cmp r4, #0
	ble _0224DEB0
	add r3, r7, #0
_0224DEA2:
	ldrb r0, [r3]
	cmp r0, r2
	beq _0224DEB0
	add r1, r1, #1
	add r3, r3, #1
	cmp r1, r4
	blt _0224DEA2
_0224DEB0:
	cmp r1, r4
	bne _0224DEC2
	strb r2, [r7, r4]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02013A4C
	b _0224DEC4
_0224DEC2:
	sub r4, r4, #1
_0224DEC4:
	add r4, r4, #1
	cmp r4, #4
	blt _0224DE8E
	add r0, r6, #0
	bl sub_0200B190
	ldr r4, _0224DF18 ; =0x02256894
	add r3, sp, #0x18
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc
	str r0, [sp, #0x24]
	add r0, r2, #0
	strh r1, [r5, #0x3a]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x20]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DF0C: .word 0x000001B7
_0224DF10: .word 0x000003D9
_0224DF14: .word 0x00000279
_0224DF18: .word 0x02256894
	thumb_func_end ov23_0224DE3C

	thumb_func_start ov23_0224DF1C
ov23_0224DF1C: ; 0x0224DF1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_0224F270
	bl sub_020360F0
	cmp r0, #0
	beq _0224DF50
	add r0, r5, #0
	mov r1, #3
	add r0, #0x37
	strb r1, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224DF50:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224DF5E
	add r0, r0, #1
	cmp r4, r0
	bne _0224DF64
_0224DF5E:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224DF64:
	ldr r0, _0224DF9C ; =0x000005DC
	bl sub_02005748
	add r0, sp, #0
	strb r4, [r0]
	ldrh r1, [r5, #0x30]
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	mov r0, #0x4f
	add r1, sp, #0
	bl sub_020360D0
	add r0, r5, #0
	add r0, #0x32
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #0x1e
	add r0, #0x37
	strb r1, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224DF9C: .word 0x000005DC
	thumb_func_end ov23_0224DF1C

	thumb_func_start ov23_0224DFA0
ov23_0224DFA0: ; 0x0224DFA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224E050 ; =0x000001B7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, #0xc
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224E054 ; =0x000003D9
	add r0, #0xc
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0x9e
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #0
_0224DFF2:
	add r2, r5, #0
	add r2, #0x32
	ldrb r2, [r2]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	lsl r2, r2, #2
	add r2, r4, r2
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #4
	blt _0224DFF2
	add r0, r6, #0
	bl sub_0200B190
	ldr r4, _0224E058 ; =0x02256894
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xc
	str r0, [sp, #0x20]
	add r0, r2, #0
	strh r1, [r5, #0x3a]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x20]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_0224E050: .word 0x000001B7
_0224E054: .word 0x000003D9
_0224E058: .word 0x02256894
	thumb_func_end ov23_0224DFA0

	thumb_func_start ov23_0224E05C
ov23_0224E05C: ; 0x0224E05C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_0224F270
	bl sub_020360F0
	cmp r0, #0
	beq _0224E08E
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	mov r0, #3
	add r5, #0x37
	strb r0, [r5]
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224E08E:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224E09C
	add r0, r0, #1
	cmp r4, r0
	bne _0224E0A2
_0224E09C:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224E0A2:
	ldr r0, _0224E120 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	add r0, r5, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, sp, #0
	strb r1, [r0]
	ldrh r1, [r5, #0x30]
	strb r1, [r0, #1]
	mov r1, #2
	strb r1, [r0, #2]
	mov r0, #0x4f
	add r1, sp, #0
	bl sub_020360D0
	bl ov23_0224219C
	add r1, sp, #0
	ldrb r1, [r1]
	bl ov23_022540C8
	bl ov23_0224219C
	add r2, r5, #0
	add r2, #0x33
	ldrb r2, [r2]
	mov r1, #6
	bl ov23_022540E0
	add r0, r5, #0
	add r0, #0x33
	ldrb r1, [r0]
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0224E102
	add r0, r5, #0
	mov r1, #0x8d
	bl ov23_0224DC68
	b _0224E10A
_0224E102:
	add r0, r5, #0
	mov r1, #0x8c
	bl ov23_0224DC68
_0224E10A:
	add r0, r5, #0
	mov r1, #0x24
	add r0, #0x37
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x1b
	bl ov23_0224DC54
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224E120: .word 0x000005DC
	thumb_func_end ov23_0224E05C

	thumb_func_start ov23_0224E124
ov23_0224E124: ; 0x0224E124
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov23_0224219C
	add r5, r0, #0
	ldrh r0, [r4, #0x30]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254068
	bl ov23_0224219C
	add r1, r4, #0
	add r1, #0x2a
	ldrb r1, [r1]
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0xe
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, [r4, #8]
	bl sub_0203D174
	bl sub_020298A0
	bl sub_0202952C
	add r4, #0x2a
	ldrb r0, [r4]
	bl ov23_0224F634
	ldr r0, _0224E178 ; =0x000005E3
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_0224E178: .word 0x000005E3
	thumb_func_end ov23_0224E124

	thumb_func_start ov23_0224E17C
ov23_0224E17C: ; 0x0224E17C
	push {r4, lr}
	add r4, r1, #0
	bl ov23_0224219C
	add r1, r4, #0
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E17C

	thumb_func_start ov23_0224E19C
ov23_0224E19C: ; 0x0224E19C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x24]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224E1DE
	cmp r0, #0
	bne _0224E1CA
	ldrh r1, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x28
	strb r1, [r0]
	add r1, r4, #0
	mov r0, #0x4d
	add r1, #0x28
	bl sub_020360D0
	mov r1, #0x15
	b _0224E1D4
_0224E1CA:
	add r0, r4, #0
	mov r1, #0xb
	bl ov23_0224DC68
	mov r1, #0xf
_0224E1D4:
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x24]
_0224E1DE:
	pop {r4, pc}
	thumb_func_end ov23_0224E19C

	thumb_func_start ov23_0224E1E0
ov23_0224E1E0: ; 0x0224E1E0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_0224F270
	bl sub_020360F0
	cmp r0, #0
	beq _0224E200
	mov r4, #1
	mvn r4, r4
_0224E200:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224E212
	add r0, r0, #1
	cmp r4, r0
	bne _0224E228
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224E212:
	ldr r0, _0224E240 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224E8E0
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	b _0224E23A
_0224E228:
	ldr r0, _0224E240 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	blx r4
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
_0224E23A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0224E240: .word 0x000005DC
	thumb_func_end ov23_0224E1E0

	thumb_func_start ov23_0224E244
ov23_0224E244: ; 0x0224E244
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224E27C
	add r0, r4, #0
	add r0, #0xc
	mov r1, #1
	bl sub_0200DC9C
	mov r1, #0
	ldr r0, [r4, #0x20]
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A8FC
	ldr r0, [r4, #0x1c]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x1c]
_0224E27C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E244

	thumb_func_start ov23_0224E280
ov23_0224E280: ; 0x0224E280
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #7
	bl ov23_0224DC68
	mov r0, #5
	add r4, #0x37
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E280

	thumb_func_start ov23_0224E29C
ov23_0224E29C: ; 0x0224E29C
	push {r4, lr}
	mov r1, #0x16
	add r4, r0, #0
	bl ov23_0224DC54
	mov r0, #0x1b
	add r4, #0x37
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E29C

	thumb_func_start ov23_0224E2B0
ov23_0224E2B0: ; 0x0224E2B0
	mov r1, #0x10
	add r0, #0x37
	strb r1, [r0]
	bx lr
	thumb_func_end ov23_0224E2B0

	thumb_func_start ov23_0224E2B8
ov23_0224E2B8: ; 0x0224E2B8
	ldr r1, _0224E2CC ; =0x022577B0
	ldr r2, [r1, #4]
	add r2, #0x2a
	strb r0, [r2]
	ldr r0, [r1, #4]
	mov r2, #0x12
	add r0, #0x37
	strb r2, [r0]
	bx lr
	nop
_0224E2CC: .word 0x022577B0
	thumb_func_end ov23_0224E2B8

	thumb_func_start ov23_0224E2D0
ov23_0224E2D0: ; 0x0224E2D0
	mov r1, #0xb
	add r0, #0x37
	strb r1, [r0]
	bx lr
	thumb_func_end ov23_0224E2D0

	thumb_func_start ov23_0224E2D8
ov23_0224E2D8: ; 0x0224E2D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0224E304
	ldrh r0, [r4, #0x30]
	bl sub_02035D78
	cmp r0, #0
	bne _0224E304
	mov r0, #0
	str r0, [r4, #4]
	bl ov23_022535EC
	add r0, r4, #0
	mov r1, #4
	add r0, #0x37
	strb r1, [r0]
_0224E304:
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0x29
	bhi _0224E3B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E31A: ; jump table
	.short _0224E87A - _0224E31A - 2 ; case 0
	.short _0224E36E - _0224E31A - 2 ; case 1
	.short _0224E390 - _0224E31A - 2 ; case 2
	.short _0224E39A - _0224E31A - 2 ; case 3
	.short _0224E39A - _0224E31A - 2 ; case 4
	.short _0224E3AC - _0224E31A - 2 ; case 5
	.short _0224E3F8 - _0224E31A - 2 ; case 6
	.short _0224E40A - _0224E31A - 2 ; case 7
	.short _0224E3E6 - _0224E31A - 2 ; case 8
	.short _0224E42A - _0224E31A - 2 ; case 9
	.short _0224E87A - _0224E31A - 2 ; case 10
	.short _0224E45C - _0224E31A - 2 ; case 11
	.short _0224E480 - _0224E31A - 2 ; case 12
	.short _0224E49E - _0224E31A - 2 ; case 13
	.short _0224E4B2 - _0224E31A - 2 ; case 14
	.short _0224E4C4 - _0224E31A - 2 ; case 15
	.short _0224E4E6 - _0224E31A - 2 ; case 16
	.short _0224E87A - _0224E31A - 2 ; case 17
	.short _0224E4FA - _0224E31A - 2 ; case 18
	.short _0224E590 - _0224E31A - 2 ; case 19
	.short _0224E5CC - _0224E31A - 2 ; case 20
	.short _0224E5D6 - _0224E31A - 2 ; case 21
	.short _0224E640 - _0224E31A - 2 ; case 22
	.short _0224E61C - _0224E31A - 2 ; case 23
	.short _0224E62E - _0224E31A - 2 ; case 24
	.short _0224E67A - _0224E31A - 2 ; case 25
	.short _0224E684 - _0224E31A - 2 ; case 26
	.short _0224E6A4 - _0224E31A - 2 ; case 27
	.short _0224E6B6 - _0224E31A - 2 ; case 28
	.short _0224E6D2 - _0224E31A - 2 ; case 29
	.short _0224E6DC - _0224E31A - 2 ; case 30
	.short _0224E6FC - _0224E31A - 2 ; case 31
	.short _0224E738 - _0224E31A - 2 ; case 32
	.short _0224E778 - _0224E31A - 2 ; case 33
	.short _0224E7A0 - _0224E31A - 2 ; case 34
	.short _0224E7BC - _0224E31A - 2 ; case 35
	.short _0224E7C6 - _0224E31A - 2 ; case 36
	.short _0224E7F2 - _0224E31A - 2 ; case 37
	.short _0224E812 - _0224E31A - 2 ; case 38
	.short _0224E82E - _0224E31A - 2 ; case 39
	.short _0224E84A - _0224E31A - 2 ; case 40
	.short _0224E868 - _0224E31A - 2 ; case 41
_0224E36E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E3B8
	add r0, r4, #0
	bl ov23_0224DD2C
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E390:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E1E0
	b _0224E87A
_0224E39A:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224DDE4
	b _0224E87A
_0224E3AC:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224E3BA
_0224E3B8:
	b _0224E87A
_0224E3BA:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #9
	bne _0224E3D2
	add r0, r4, #0
	mov r1, #9
	add r0, #0x37
	strb r1, [r0]
	ldrh r0, [r4, #0x30]
	bl ov23_022538FC
_0224E3D2:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #6
	bne _0224E4DA
	add r0, r4, #0
	mov r1, #6
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E3E6:
	add r0, r4, #0
	mov r1, #0xf
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #7
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E3F8:
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #7
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E40A:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E4DA
	ldr r0, _0224E720 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224E4DA
	add r0, r4, #0
	mov r1, #4
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E42A:
	bl ov23_022539D8
	cmp r0, #0
	beq _0224E4DA
	bl ov23_0224219C
	bl ov23_02254044
	ldrh r0, [r4, #0x30]
	bl sub_02032EE8
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r2, _0224E724 ; =ov23_0224E2D0
	ldr r0, [r0, #8]
	add r3, r4, #0
	bl ov23_02253834
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E45C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x20
	bl sub_0202CFEC
	bl ov23_022539E8
	add r0, r4, #0
	mov r1, #9
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E480:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E4DA
	add r0, r4, #0
	mov r1, #0xe
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E49E:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0224E4DA
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4B2:
	add r0, r4, #0
	mov r1, #0xa
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #1
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4C4:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E4DA
	ldr r0, _0224E720 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0224E4DC
_0224E4DA:
	b _0224E87A
_0224E4DC:
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4E6:
	ldr r0, _0224E728 ; =ov23_0224E2B8
	ldr r1, [r4, #8]
	bl ov23_022511B0
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4FA:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, _0224E72C ; =0x022577B0
	ldr r0, [r0, #4]
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224E51C
	add r0, r4, #0
	mov r1, #0xb
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E51C:
	ldrh r0, [r4, #0x30]
	bl sub_02032FC0
	cmp r0, #0
	beq _0224E538
	add r0, r4, #0
	mov r1, #0x57
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E538:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_02028810
	cmp r0, #0
	bne _0224E556
	add r0, r4, #0
	mov r1, #0x57
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E556:
	ldr r0, _0224E72C ; =0x022577B0
	ldr r0, [r0, #4]
	add r0, #0x2a
	ldrb r0, [r0]
	bl sub_0205748C
	cmp r0, #0
	beq _0224E578
	add r0, r4, #0
	mov r1, #0x56
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E578:
	ldr r1, _0224E72C ; =0x022577B0
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r1, #0x2a
	ldrb r1, [r1]
	bl ov23_0224E17C
	add r0, r4, #0
	mov r1, #0x13
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E590:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E610
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, _0224E730 ; =0x0225688C
	ldr r0, [r0, #8]
	ldr r2, _0224E734 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x24]
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x37
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #8
	beq _0224E610
	add r0, r4, #0
	mov r1, #1
	add r0, #0x38
	strb r1, [r0]
	b _0224E87A
_0224E5CC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E19C
	b _0224E87A
_0224E5D6:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E610
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0224E5F4
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x37
	strb r1, [r0]
_0224E5F4:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0224E606
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0x37
	strb r1, [r0]
_0224E606:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0224E612
_0224E610:
	b _0224E87A
_0224E612:
	add r0, r4, #0
	mov r1, #0x17
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E61C:
	add r0, r4, #0
	mov r1, #0x1e
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E62E:
	add r0, r4, #0
	mov r1, #0xd
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E640:
	add r0, r4, #0
	bl ov23_0224E124
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B3EC
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B3FC
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x1f
	bl sub_0202CFEC
	add r0, r4, #0
	mov r1, #0x19
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E67A:
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E684:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E712
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _0224E712
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6A4:
	add r0, r4, #0
	mov r1, #0x88
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1c
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6B6:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E712
	add r0, r4, #0
	bl ov23_0224DE3C
	add r0, r4, #0
	mov r1, #0x1d
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6D2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224DF1C
	b _0224E87A
_0224E6DC:
	bl ov23_0224219C
	add r1, r4, #0
	add r1, #0x32
	ldrb r1, [r1]
	bl ov23_022540B0
	add r0, r4, #0
	mov r1, #0x89
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6FC:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E712
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0224E714
_0224E712:
	b _0224E87A
_0224E714:
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
	nop
_0224E720: .word 0x021BF67C
_0224E724: .word ov23_0224E2D0
_0224E728: .word ov23_0224E2B8
_0224E72C: .word 0x022577B0
_0224E730: .word 0x0225688C
_0224E734: .word 0x000003D9
_0224E738:
	add r0, r4, #0
	add r0, #0x33
	ldrb r6, [r0]
	cmp r6, #0x33
	bne _0224E75C
	add r0, r4, #0
	mov r1, #0x8b
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x21
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E75C:
	bl ov23_0224219C
	add r1, r6, #0
	bl ov23_022540C8
	add r0, r4, #0
	mov r1, #0x8a
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x22
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E778:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x2a
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E7A0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	add r0, r4, #0
	bl ov23_0224DFA0
	add r0, r4, #0
	mov r1, #0x23
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E7BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E05C
	b _0224E87A
_0224E7C6:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x21
	bl sub_0202CFEC
	add r0, r4, #0
	mov r1, #0x8e
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x25
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E7F2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	ldr r0, _0224E8DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224E87A
	add r0, r4, #0
	mov r1, #0x26
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E812:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0x64
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #0x27
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E82E:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x64
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0x96
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x28
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E84A:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0x65
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #0x29
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E868:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x65
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
_0224E87A:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224E8D6
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #4
	beq _0224E8D6
	cmp r0, #7
	beq _0224E8D6
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224E8A2
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x24]
_0224E8A2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224E8C0
	mov r1, #1
	mvn r1, r1
	bl ov23_02251044
	bl ov23_02243204
	bl ov23_022421DC
	bl ov23_02254044
	mov r0, #0
	str r0, [r4, #4]
_0224E8C0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E244
	add r0, r4, #0
	mov r1, #8
	add r0, #0x37
	strb r1, [r0]
	mov r0, #0
	add r4, #0x38
	strb r0, [r4]
_0224E8D6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224E8DC: .word 0x021BF67C
	thumb_func_end ov23_0224E2D8

	thumb_func_start ov23_0224E8E0
ov23_0224E8E0: ; 0x0224E8E0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xf
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC54
	mov r0, #7
	add r4, #0x37
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E8E0

	thumb_func_start ov23_0224E8FC
ov23_0224E8FC: ; 0x0224E8FC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224E93A
	cmp r0, #0
	bne _0224E926
	add r0, r4, #0
	mov r1, #9
	bl ov23_0224DC40
	ldrh r0, [r4, #0x2c]
	bl ov23_022538FC
	mov r1, #0xa
	b _0224E930
_0224E926:
	add r0, r4, #0
	mov r1, #6
	bl ov23_0224DC40
	mov r1, #8
_0224E930:
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x20]
_0224E93A:
	pop {r4, pc}
	thumb_func_end ov23_0224E8FC

	thumb_func_start ov23_0224E93C
ov23_0224E93C: ; 0x0224E93C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224E9BE
	cmp r0, #0
	bne _0224E9A2
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	bl ov23_0224F744
	cmp r0, #0
	beq _0224E988
	ldr r0, [r4, #4]
	bl sub_0203D174
	bl sub_020298A0
	bl sub_0202977C
	ldr r0, _0224E9C0 ; =0x000005E3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x16
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x13
	add r0, #0x34
	strb r1, [r0]
	b _0224E9BA
_0224E988:
	add r0, r4, #0
	mov r1, #0x17
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x15
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x34
	strb r1, [r0]
	b _0224E9BA
_0224E9A2:
	add r0, r4, #0
	mov r1, #0x18
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x1d
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x34
	strb r1, [r0]
_0224E9BA:
	mov r0, #0
	str r0, [r4, #0x20]
_0224E9BE:
	pop {r4, pc}
	; .align 2, 0
_0224E9C0: .word 0x000005E3
	thumb_func_end ov23_0224E93C

	thumb_func_start ov23_0224E9C4
ov23_0224E9C4: ; 0x0224E9C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224E9DA
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x20]
_0224E9DA:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _0224E9E4
	mov r0, #0
	blx r1
_0224E9E4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224EA08
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02059514
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _0224EA04 ; =0x022577B0
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224EA04: .word 0x022577B0
	thumb_func_end ov23_0224E9C4

	thumb_func_start ov23_0224EA08
ov23_0224EA08: ; 0x0224EA08
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224EA40
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	mov r1, #0
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r0, [r4, #0x18]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x18]
_0224EA40:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224EA08

	thumb_func_start ov23_0224EA44
ov23_0224EA44: ; 0x0224EA44
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov23_0224219C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r6, #0
	bl ov23_02254068
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_0224EA44

	thumb_func_start ov23_0224EA70
ov23_0224EA70: ; 0x0224EA70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov23_0224219C
	add r4, r0, #0
	ldrh r0, [r5, #0x2c]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02254068
	bl ov23_0224219C
	add r5, #0x26
	ldrb r1, [r5]
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x1f
	add r3, r2, #0
	bl ov23_02253F40
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224EA70

	thumb_func_start ov23_0224EAA4
ov23_0224EAA4: ; 0x0224EAA4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #5
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x18]
	mov r3, #1
	add r1, r5, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224EB68 ; =0x00000197
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224EB6C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0x9e
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #0
_0224EAF6:
	add r2, r5, #0
	add r2, #0x2e
	ldrb r2, [r2]
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	lsl r2, r2, #2
	add r2, r4, r2
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #4
	blt _0224EAF6
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	mov r2, #0x30
	mov r3, #0x33
	bl sub_02013A4C
	add r0, r6, #0
	bl sub_0200B190
	ldr r4, _0224EB70 ; =0x02256894
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x18]
	mov r1, #5
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	mov r1, #0
	add r0, r2, #0
	strh r1, [r5, #0x36]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x1c]
	add r5, #8
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_0224EB68: .word 0x00000197
_0224EB6C: .word 0x000003D9
_0224EB70: .word 0x02256894
	thumb_func_end ov23_0224EAA4

	thumb_func_start ov23_0224EB74
ov23_0224EB74: ; 0x0224EB74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_02001288
	add r4, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x1c]
	add r1, #0x36
	ldrh r6, [r5, #0x36]
	bl sub_020014D0
	ldrh r0, [r5, #0x36]
	cmp r6, r0
	beq _0224EB9A
	ldr r0, _0224EC44 ; =0x000005DC
	bl sub_02005748
_0224EB9A:
	bl sub_020360F0
	cmp r0, #0
	beq _0224EBA6
	mov r4, #1
	mvn r4, r4
_0224EBA6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224EBB8
	add r0, r0, #1
	cmp r4, r0
	bne _0224EBBA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EBB8:
	mov r4, #0x33
_0224EBBA:
	ldr r0, _0224EC44 ; =0x000005DC
	bl sub_02005748
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0224EA08
	cmp r4, #0x33
	beq _0224EBFC
	add r0, r5, #0
	add r0, #0x2e
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x1a
	add r0, #0x34
	strb r1, [r0]
	bl ov23_0224219C
	add r1, r5, #0
	add r1, #0x2f
	ldrb r1, [r1]
	bl ov23_022540C8
	add r0, r5, #0
	mov r1, #0x92
	bl ov23_0224DC90
	b _0224EC1C
_0224EBFC:
	add r0, r5, #0
	mov r1, #0x33
	add r0, #0x2f
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x10
	add r0, #0x34
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x91
	bl ov23_0224DC90
_0224EC1C:
	add r0, r5, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	ldrh r1, [r5, #0x2c]
	strb r1, [r0, #1]
	mov r1, #1
	strb r1, [r0, #2]
	mov r0, #0x4f
	add r1, sp, #0
	bl sub_020360D0
	add r0, r5, #0
	mov r1, #0x20
	bl ov23_0224DC40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EC44: .word 0x000005DC
	thumb_func_end ov23_0224EB74

	thumb_func_start ov23_0224EC48
ov23_0224EC48: ; 0x0224EC48
	mov r1, #0xc
	add r0, #0x34
	strb r1, [r0]
	bx lr
	thumb_func_end ov23_0224EC48

	thumb_func_start ov23_0224EC50
ov23_0224EC50: ; 0x0224EC50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x2c]
	bl sub_02035D78
	cmp r0, #0
	bne _0224EC6E
	bl ov23_022535EC
	add r0, r4, #0
	mov r1, #4
	add r0, #0x34
	strb r1, [r0]
_0224EC6E:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0x20
	bls _0224EC7A
	b _0224F038
_0224EC7A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224EC86: ; jump table
	.short _0224F038 - _0224EC86 - 2 ; case 0
	.short _0224F038 - _0224EC86 - 2 ; case 1
	.short _0224ECDA - _0224EC86 - 2 ; case 2
	.short _0224F038 - _0224EC86 - 2 ; case 3
	.short _0224ECC8 - _0224EC86 - 2 ; case 4
	.short _0224ED20 - _0224EC86 - 2 ; case 5
	.short _0224ED32 - _0224EC86 - 2 ; case 6
	.short _0224ED5C - _0224EC86 - 2 ; case 7
	.short _0224ED66 - _0224EC86 - 2 ; case 8
	.short _0224ED78 - _0224EC86 - 2 ; case 9
	.short _0224ED98 - _0224EC86 - 2 ; case 10
	.short _0224F038 - _0224EC86 - 2 ; case 11
	.short _0224EDCA - _0224EC86 - 2 ; case 12
	.short _0224EDE2 - _0224EC86 - 2 ; case 13
	.short _0224EE00 - _0224EC86 - 2 ; case 14
	.short _0224EE16 - _0224EC86 - 2 ; case 15
	.short _0224EE28 - _0224EC86 - 2 ; case 16
	.short _0224EE46 - _0224EC86 - 2 ; case 17
	.short _0224EE70 - _0224EC86 - 2 ; case 18
	.short _0224EE7A - _0224EC86 - 2 ; case 19
	.short _0224EE8A - _0224EC86 - 2 ; case 20
	.short _0224EE94 - _0224EC86 - 2 ; case 21
	.short _0224EEBC - _0224EC86 - 2 ; case 22
	.short _0224EED4 - _0224EC86 - 2 ; case 23
	.short _0224EF06 - _0224EC86 - 2 ; case 24
	.short _0224EF24 - _0224EC86 - 2 ; case 25
	.short _0224EF2E - _0224EC86 - 2 ; case 26
	.short _0224EF56 - _0224EC86 - 2 ; case 27
	.short _0224EFA0 - _0224EC86 - 2 ; case 28
	.short _0224EFBE - _0224EC86 - 2 ; case 29
	.short _0224EFE4 - _0224EC86 - 2 ; case 30
	.short _0224F008 - _0224EC86 - 2 ; case 31
	.short _0224F01E - _0224EC86 - 2 ; case 32
_0224ECC8:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E9C4
	b _0224F038
_0224ECDA:
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x2e
	strb r1, [r0]
	ldr r0, _0224EFD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0224ECFE
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #8
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ECFE:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #5
	bne _0224ED12
	add r0, r4, #0
	mov r1, #5
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED12:
	cmp r0, #0x16
	bne _0224EE0A
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED20:
	add r0, r4, #0
	mov r1, #0x18
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #6
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED32:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EE0A
	add r0, r4, #0
	mov r1, #7
	add r0, #0x34
	strb r1, [r0]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _0224EFD8 ; =0x0225688C
	ldr r0, [r0, #8]
	ldr r2, _0224EFDC ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x20]
	b _0224F038
_0224ED5C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E8FC
	b _0224F038
_0224ED66:
	add r0, r4, #0
	mov r1, #0xf
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #9
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED78:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EE0A
	ldr r0, _0224EFD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224EE0A
	add r0, r4, #0
	mov r1, #4
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED98:
	bl ov23_022539D8
	cmp r0, #0
	beq _0224EE0A
	bl ov23_0224219C
	bl ov23_02254044
	ldrh r0, [r4, #0x2c]
	bl sub_02032EE8
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _0224EFE0 ; =ov23_0224EC48
	ldr r0, [r0, #8]
	add r3, r4, #0
	bl ov23_02253834
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EDCA:
	bl ov23_022539E8
	ldrh r1, [r4, #0x2c]
	add r0, r4, #0
	mov r2, #0x1a
	bl ov23_0224EA44
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EDE2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EE0A
	add r0, r4, #0
	mov r1, #0xd
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE00:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0224EE0C
_0224EE0A:
	b _0224F038
_0224EE0C:
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE16:
	add r0, r4, #0
	mov r1, #0x1b
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #2
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE28:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x2a
	bl ov23_0224DC40
	b _0224F038
_0224EE46:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0x34
	strb r1, [r0]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _0224EFD8 ; =0x0225688C
	ldr r0, [r0, #8]
	ldr r2, _0224EFDC ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x20]
	b _0224F038
_0224EE70:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E93C
	b _0224F038
_0224EE7A:
	add r0, r4, #0
	bl ov23_0224EA70
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE8A:
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE94:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	ldr r0, _0224EFD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224EF12
	add r0, r4, #0
	mov r1, #0xf
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EEBC:
	add r0, r4, #0
	mov r1, #0x8f
	bl ov23_0224DC90
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EED4:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	add r0, r4, #0
	add r0, #0x2e
	ldrb r6, [r0]
	cmp r6, #0xc
	beq _0224EF12
	bl ov23_0224219C
	add r1, r6, #0
	bl ov23_022540B0
	add r0, r4, #0
	mov r1, #0x90
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EF06:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224EF14
_0224EF12:
	b _0224F038
_0224EF14:
	add r0, r4, #0
	bl ov23_0224EAA4
	add r0, r4, #0
	mov r1, #0x19
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EF24:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224EB74
	b _0224F038
_0224EF2E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x1b
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x25
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x1b
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EF56:
	bl ov23_0224219C
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	bl ov23_022540C8
	bl ov23_0224219C
	add r2, r4, #0
	add r2, #0x2f
	ldrb r2, [r2]
	mov r1, #6
	bl ov23_022540E0
	add r0, r4, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r1, r0
	bne _0224EF8E
	add r0, r4, #0
	mov r1, #0x94
	bl ov23_0224DC90
	b _0224EF96
_0224EF8E:
	add r0, r4, #0
	mov r1, #0x93
	bl ov23_0224DC90
_0224EF96:
	add r0, r4, #0
	mov r1, #0x1c
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EFA0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x95
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x1d
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EFBE:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
	; .align 2, 0
_0224EFD4: .word 0x021BF67C
_0224EFD8: .word 0x0225688C
_0224EFDC: .word 0x000003D9
_0224EFE0: .word ov23_0224EC48
_0224EFE4:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x64
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x64
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x96
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224F008:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224F01E:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x65
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x65
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
_0224F038:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224F076
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #4
	beq _0224F076
	cmp r0, #9
	beq _0224F076
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224F060
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x20]
_0224F060:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224EA08
	add r0, r4, #0
	mov r1, #8
	add r0, #0x34
	strb r1, [r0]
	mov r0, #0
	add r4, #0x35
	strb r0, [r4]
_0224F076:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_0224EC50

	thumb_func_start ov23_0224F07C
ov23_0224F07C: ; 0x0224F07C
	push {r4, r5, r6, lr}
	ldr r0, _0224F0E4 ; =0x022577B0
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	beq _0224F090
	bl sub_02022974
	pop {r4, r5, r6, pc}
_0224F090:
	mov r0, #0x21
	mov r1, #0x38
	bl sub_02018144
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _0224F0E4 ; =0x022577B0
	mov r1, #2
	str r4, [r0, #0]
	str r6, [r4, #4]
	add r0, r4, #0
	strh r5, [r4, #0x2c]
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x2e
	strb r1, [r0]
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x16
	add r3, r2, #0
	bl ov23_02253F40
	bl sub_02059624
	ldr r0, _0224F0E8 ; =ov23_0224EC50
	ldr r2, _0224F0EC ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_0224F0E4: .word 0x022577B0
_0224F0E8: .word ov23_0224EC50
_0224F0EC: .word 0x00002710
	thumb_func_end ov23_0224F07C

	thumb_func_start ov23_0224F0F0
ov23_0224F0F0: ; 0x0224F0F0
	ldr r3, _0224F0F8 ; =sub_02035B48
	mov r0, #0x4b
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F0F8: .word sub_02035B48
	thumb_func_end ov23_0224F0F0

	thumb_func_start ov23_0224F0FC
ov23_0224F0FC: ; 0x0224F0FC
	ldr r3, _0224F104 ; =sub_02035B48
	mov r0, #0x4c
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F104: .word sub_02035B48
	thumb_func_end ov23_0224F0FC

	thumb_func_start ov23_0224F108
ov23_0224F108: ; 0x0224F108
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224F132
	ldr r0, _0224F134 ; =0x022577B0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224F132
	cmp r5, #2
	beq _0224F128
	bl sub_02022974
_0224F128:
	ldr r0, _0224F134 ; =0x022577B0
	ldrb r1, [r4, #1]
	ldr r0, [r0, #0]
	add r0, #0x35
	strb r1, [r0]
_0224F132:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F134: .word 0x022577B0
	thumb_func_end ov23_0224F108

	thumb_func_start ov23_0224F138
ov23_0224F138: ; 0x0224F138
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224F16E
	ldr r0, _0224F170 ; =0x022577B0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224F16E
	cmp r5, #2
	beq _0224F158
	bl sub_02022974
_0224F158:
	ldr r0, _0224F170 ; =0x022577B0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224F164
	bl sub_02022974
_0224F164:
	ldr r0, _0224F170 ; =0x022577B0
	ldrb r1, [r4, #1]
	ldr r0, [r0, #4]
	add r0, #0x38
	strb r1, [r0]
_0224F16E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F170: .word 0x022577B0
	thumb_func_end ov23_0224F138

	thumb_func_start ov23_0224F174
ov23_0224F174: ; 0x0224F174
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224F174

	thumb_func_start ov23_0224F178
ov23_0224F178: ; 0x0224F178
	ldr r3, _0224F180 ; =sub_02035B48
	mov r0, #0x4e
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F180: .word sub_02035B48
	thumb_func_end ov23_0224F178

	thumb_func_start ov23_0224F184
ov23_0224F184: ; 0x0224F184
	push {r3, r4, r5, lr}
	ldr r0, _0224F1F4 ; =0x022577B0
	add r5, r2, #0
	ldr r4, [r0, #0]
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224F1F2
	ldr r0, _0224F1F4 ; =0x022577B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224F1A2
	bl sub_02022974
_0224F1A2:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #2
	beq _0224F1BC
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC40
	mov r0, #8
	add r4, #0x34
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224F1BC:
	ldrb r1, [r5]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x25
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #2]
	add r0, #0x26
	add r4, #0x34
	strb r1, [r0]
	mov r0, #0x11
	strb r0, [r4]
	bl ov23_0224219C
	ldrb r1, [r5, #2]
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x1c
	add r3, r2, #0
	bl ov23_02253F40
_0224F1F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F1F4: .word 0x022577B0
	thumb_func_end ov23_0224F184

	thumb_func_start ov23_0224F1F8
ov23_0224F1F8: ; 0x0224F1F8
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224F1F8

	thumb_func_start ov23_0224F1FC
ov23_0224F1FC: ; 0x0224F1FC
	ldr r3, _0224F204 ; =sub_02035B48
	mov r0, #0x50
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F204: .word sub_02035B48
	thumb_func_end ov23_0224F1FC

	thumb_func_start ov23_0224F208
ov23_0224F208: ; 0x0224F208
	push {r4, r5, r6, lr}
	ldr r0, _0224F244 ; =0x022577B0
	add r5, r2, #0
	ldr r4, [r0, #0]
	ldr r6, [r0, #4]
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224F242
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0224F22C
	cmp r0, #1
	beq _0224F234
	cmp r0, #2
	beq _0224F23C
	pop {r4, r5, r6, pc}
_0224F22C:
	ldrb r0, [r5]
	add r4, #0x2e
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224F234:
	ldrb r0, [r5]
	add r6, #0x33
	strb r0, [r6]
	pop {r4, r5, r6, pc}
_0224F23C:
	ldrb r0, [r5]
	add r4, #0x30
	strb r0, [r4]
_0224F242:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224F244: .word 0x022577B0
	thumb_func_end ov23_0224F208

	thumb_func_start ov23_0224F248
ov23_0224F248: ; 0x0224F248
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224F248

	thumb_func_start ov23_0224F24C
ov23_0224F24C: ; 0x0224F24C
	push {r3, lr}
	ldr r0, _0224F26C ; =0x022577B0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0224F25C
	ldr r0, [r1, #0]
	bl ov23_0224DDE4
_0224F25C:
	ldr r0, _0224F26C ; =0x022577B0
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224F26A
	ldr r0, [r1, #0]
	bl ov23_0224E9C4
_0224F26A:
	pop {r3, pc}
	; .align 2, 0
_0224F26C: .word 0x022577B0
	thumb_func_end ov23_0224F24C

	thumb_func_start ov23_0224F270
ov23_0224F270: ; 0x0224F270
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x20]
	add r1, #0x3a
	ldrh r4, [r5, #0x3a]
	bl sub_020014D0
	ldrh r0, [r5, #0x3a]
	cmp r4, r0
	beq _0224F28C
	ldr r0, _0224F290 ; =0x000005DC
	bl sub_02005748
_0224F28C:
	pop {r3, r4, r5, pc}
	nop
_0224F290: .word 0x000005DC
	thumb_func_end ov23_0224F270

	thumb_func_start ov23_0224F294
ov23_0224F294: ; 0x0224F294
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	ldr r3, _0224F44C ; =0x022568EC
	str r2, [sp, #0x14]
	add r2, sp, #0x9c
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x42
	mov r1, #0xb
	bl sub_02006C24
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x9c
	add r0, #0x74
	mov r2, #8
	mov r3, #0xb
	bl ov5_021D3190
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, #0x74
	mov r2, #9
	mov r3, #0
	bl ov5_021D32E8
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, #0x74
	mov r2, #1
	mov r3, #0
	bl ov5_021D3374
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, #0x74
	add r1, r4, #0
	add r3, r2, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe3
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, #0x74
	mov r2, #2
	mov r3, #0
	bl ov5_021D3414
	ldr r0, [sp, #0xc]
	ldr r1, _0224F450 ; =0x0225695C
	add r0, #0x74
	bl ov5_021D3584
	mov r2, #0x76
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	add r2, #0x60
	ldrh r1, [r1, r2]
	ldr r0, [r0, #0]
	bl ov23_0224F4D0
	ldr r0, _0224F454 ; =0x000038C1
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #8
	add r0, #0x74
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0224F454 ; =0x000038C1
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #7
	add r0, #0x74
	mov r3, #0
	bl ov5_021D339C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224F454 ; =0x000038C1
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0xa
	add r0, #0x74
	mov r3, #0
	bl ov5_021D3414
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [sp, #0x14]
	mov r4, #0
	cmp r0, #0
	bls _0224F416
	ldr r5, [sp, #0xc]
	ldr r3, _0224F458 ; =0x02256990
	add r7, r4, #0
	add r2, sp, #0x28
	mov r6, #6
_0224F394:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0224F394
	ldr r0, [r3, #0]
	ldr r3, _0224F45C ; =0x022568E0
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, #0x74
	str r0, [sp, #0x18]
_0224F3B4:
	add r6, sp, #0x28
	add r3, sp, #0x68
	mov r2, #6
_0224F3BA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224F3BA
	ldr r0, [r6, #0]
	add r1, sp, #0x68
	str r0, [r3, #0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r0, r7
	add r0, sp, #0x68
	strh r1, [r0, #2]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, r4]
	lsl r0, r1, #1
	add r1, r1, r0
	add r0, sp, #0x68
	strh r1, [r0, #6]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x68
	bl ov5_021D3584
	mov r1, #0x77
	lsl r1, r1, #2
	add r2, sp, #0x5c
	add r3, sp, #0x1c
	str r0, [r5, r1]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #1
	ldr r0, [r0, #0]
	bl sub_02021C80
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r7, #0x18
	add r5, r5, #4
	cmp r4, r0
	blo _0224F3B4
_0224F416:
	mov r1, #0x8e
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	sub r1, #0x60
	add r0, r0, #1
	lsl r2, r0, #2
	ldr r0, [sp, #0xc]
	add r0, r0, r2
	ldr r0, [r0, r1]
	mov r1, #2
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov23_0224F500
	ldr r0, [sp, #0x14]
	mov r1, #0x7e
	add r2, r0, #1
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F44C: .word 0x022568EC
_0224F450: .word 0x0225695C
_0224F454: .word 0x000038C1
_0224F458: .word 0x02256990
_0224F45C: .word 0x022568E0
	thumb_func_end ov23_0224F294

	thumb_func_start ov23_0224F460
ov23_0224F460: ; 0x0224F460
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0224F48E
	mov r7, #0x76
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0224F478:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl sub_0200D0F4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0224F478
_0224F48E:
	add r5, #0x74
	add r0, r5, #0
	bl ov5_021D375C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224F460

	thumb_func_start ov23_0224F498
ov23_0224F498: ; 0x0224F498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0224F4CC
	mov r7, #0x76
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x20
_0224F4B0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0224F4B0
_0224F4CC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F498

	thumb_func_start ov23_0224F4D0
ov23_0224F4D0: ; 0x0224F4D0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #0x18
	mul r0, r4
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov23_0224F4D0

	thumb_func_start ov23_0224F500
ov23_0224F500: ; 0x0224F500
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021E24
	mov r1, #3
	bl sub_020E2178
	add r2, r0, #0
	lsl r1, r2, #1
	add r1, r2, r1
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02021D6C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02021EC4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F500

	thumb_func_start ov23_0224F52C
ov23_0224F52C: ; 0x0224F52C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl ov23_0224F500
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl ov23_0224F500
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224F52C

	thumb_func_start ov23_0224F560
ov23_0224F560: ; 0x0224F560
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021E24
	mov r1, #3
	bl sub_020E2178
	cmp r1, #1
	bne _0224F586
	add r0, r4, #0
	bl sub_02021FD0
	cmp r0, #0
	bne _0224F586
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov23_0224F500
_0224F586:
	pop {r4, pc}
	thumb_func_end ov23_0224F560

	thumb_func_start ov23_0224F588
ov23_0224F588: ; 0x0224F588
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #8
	bl sub_02018144
	ldr r1, _0224F5B4 ; =0x022577B8
	mov r2, #8
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _0224F5B4 ; =0x022577B8
	mov r2, #0
	ldr r1, [r0, #0]
	strb r2, [r1, #4]
	ldr r1, [r0, #0]
	strb r2, [r1, #5]
	ldr r0, [r0, #0]
	str r4, [r0, #0]
	pop {r4, pc}
	nop
_0224F5B4: .word 0x022577B8
	thumb_func_end ov23_0224F588

	thumb_func_start ov23_0224F5B8
ov23_0224F5B8: ; 0x0224F5B8
	ldr r0, _0224F5C0 ; =0x022577B8
	ldr r3, _0224F5C4 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224F5C0: .word 0x022577B8
_0224F5C4: .word sub_020181C4
	thumb_func_end ov23_0224F5B8

	thumb_func_start ov23_0224F5C8
ov23_0224F5C8: ; 0x0224F5C8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028E28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F5C8

	thumb_func_start ov23_0224F5DC
ov23_0224F5DC: ; 0x0224F5DC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_020289A0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F5DC

	thumb_func_start ov23_0224F5F0
ov23_0224F5F0: ; 0x0224F5F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_020289B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F5F0

	thumb_func_start ov23_0224F608
ov23_0224F608: ; 0x0224F608
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028B70
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F608

	thumb_func_start ov23_0224F61C
ov23_0224F61C: ; 0x0224F61C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028B88
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F61C

	thumb_func_start ov23_0224F634
ov23_0224F634: ; 0x0224F634
	push {r3, lr}
	ldr r1, _0224F654 ; =0x022577B8
	ldr r1, [r1, #0]
	ldrb r1, [r1, #5]
	cmp r1, r0
	beq _0224F644
	bl sub_02022974
_0224F644:
	ldr r0, _0224F654 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028B94
	pop {r3, pc}
	nop
_0224F654: .word 0x022577B8
	thumb_func_end ov23_0224F634

	thumb_func_start ov23_0224F658
ov23_0224F658: ; 0x0224F658
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028C3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F658

	thumb_func_start ov23_0224F66C
ov23_0224F66C: ; 0x0224F66C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028E44
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F66C

	thumb_func_start ov23_0224F684
ov23_0224F684: ; 0x0224F684
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028C54
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F684

	thumb_func_start ov23_0224F69C
ov23_0224F69C: ; 0x0224F69C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028C60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F69C

	thumb_func_start ov23_0224F6B4
ov23_0224F6B4: ; 0x0224F6B4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028D58
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F6B4

	thumb_func_start ov23_0224F6C8
ov23_0224F6C8: ; 0x0224F6C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028D74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224F6C8

	thumb_func_start ov23_0224F6E0
ov23_0224F6E0: ; 0x0224F6E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0xb
	blt _0224F6EE
	bl sub_02022974
_0224F6EE:
	cmp r5, #6
	blt _0224F6F4
	sub r5, r5, #5
_0224F6F4:
	cmp r4, #0x63
	ble _0224F6FA
	mov r4, #0x63
_0224F6FA:
	ldr r0, _0224F70C ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02028CB0
	pop {r3, r4, r5, pc}
	nop
_0224F70C: .word 0x022577B8
	thumb_func_end ov23_0224F6E0

	thumb_func_start ov23_0224F710
ov23_0224F710: ; 0x0224F710
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x3c
	blt _0224F71C
	bl sub_02022974
_0224F71C:
	ldr r0, _0224F72C ; =0x022577B8
	add r1, r4, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02028DB4
	pop {r4, pc}
	nop
_0224F72C: .word 0x022577B8
	thumb_func_end ov23_0224F710

	thumb_func_start ov23_0224F730
ov23_0224F730: ; 0x0224F730
	add r1, r0, #0
	ldr r0, _0224F73C ; =0x022577B8
	ldr r3, _0224F740 ; =sub_02028E84
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224F73C: .word 0x022577B8
_0224F740: .word sub_02028E84
	thumb_func_end ov23_0224F730

	thumb_func_start ov23_0224F744
ov23_0224F744: ; 0x0224F744
	add r1, r0, #0
	ldr r0, _0224F750 ; =0x022577B8
	ldr r3, _0224F754 ; =sub_02028BC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224F750: .word 0x022577B8
_0224F754: .word sub_02028BC8
	thumb_func_end ov23_0224F744

	thumb_func_start ov23_0224F758
ov23_0224F758: ; 0x0224F758
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224F7C4 ; =0x000005FD
	add r6, r1, #0
	bl sub_02005748
	mov r0, #2
	bl ov23_022430D0
	mov r1, #0x25
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x7f
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	str r5, [r4, r0]
	mov r1, #0
	add r0, #0x4a
	strb r1, [r4, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	ldr r0, _0224F7C8 ; =ov23_0224F914
	ldr r2, _0224F7CC ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _0224F7D0 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, r5, r6, pc}
	nop
_0224F7C4: .word 0x000005FD
_0224F7C8: .word ov23_0224F914
_0224F7CC: .word 0x00002710
_0224F7D0: .word ov23_02251270
	thumb_func_end ov23_0224F758

	thumb_func_start ov23_0224F7D4
ov23_0224F7D4: ; 0x0224F7D4
	mov r1, #0
	strb r1, [r0]
	mov r1, #1
	strb r1, [r0, #1]
	mov r1, #2
	strb r1, [r0, #2]
	mov r1, #3
	strb r1, [r0, #3]
	mov r1, #4
	strb r1, [r0, #4]
	mov r1, #5
	strb r1, [r0, #5]
	mov r1, #6
	strb r1, [r0, #6]
	mov r0, #7
	bx lr
	thumb_func_end ov23_0224F7D4

	thumb_func_start ov23_0224F7F4
ov23_0224F7F4: ; 0x0224F7F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x18
	bl ov23_0224F7D4
	mov r0, #7
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224F904 ; =0x000002E7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	add r1, #0x10
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x14
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224F908 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r4, _0224F90C ; =0x02256924
	str r0, [sp, #0x14]
	mov r6, #0
_0224F84A:
	cmp r6, #4
	bne _0224F872
	ldr r0, [r5, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	mov r1, #4
	bl sub_02025F04
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #4]
	add r1, r7, #0
	bl sub_02013A6C
	add r0, r7, #0
	bl sub_020237BC
	b _0224F87E
_0224F872:
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
_0224F87E:
	add r6, r6, #1
	add r4, #8
	cmp r6, #7
	blo _0224F84A
	ldr r0, [r5, #0xc]
	mov r3, #0x8e
	add r0, #0x90
	ldr r0, [r0, #0]
	lsl r3, r3, #2
	strh r0, [r5, r3]
	ldr r0, [r5, #0x40]
	mov r1, #1
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	mov r1, #7
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x13]
	mov r1, #0xf
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r0, #0x13]
	ldrb r2, [r0, #0x13]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0x13]
	ldrb r2, [r0, #0x13]
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0x13]
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _0224F910 ; =0x00000402
	mov r1, #0x1c
	str r0, [sp, #4]
	ldrh r3, [r5, r3]
	add r0, sp, #0x20
	mov r2, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02001AF4
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #0x48]
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A9A4
	add r0, r5, #0
	add r1, sp, #0x18
	mov r2, #7
	bl ov23_0224F294
	bl sub_020594FC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F904: .word 0x000002E7
_0224F908: .word 0x000003D9
_0224F90C: .word 0x02256924
_0224F910: .word 0x00000402
	thumb_func_end ov23_0224F7F4

	thumb_func_start ov23_0224F914
ov23_0224F914: ; 0x0224F914
	push {r3, r4, r5, lr}
	ldr r2, _0224FA4C ; =0x00000246
	add r4, r1, #0
	ldrb r2, [r4, r2]
	add r5, r0, #0
	cmp r2, #0x13
	bls _0224F924
	b _0224FA4A
_0224F924:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224F930: ; jump table
	.short _0224F958 - _0224F930 - 2 ; case 0
	.short _0224F968 - _0224F930 - 2 ; case 1
	.short _0224F96E - _0224F930 - 2 ; case 2
	.short _0224F984 - _0224F930 - 2 ; case 3
	.short _0224FA4A - _0224F930 - 2 ; case 4
	.short _0224F99A - _0224F930 - 2 ; case 5
	.short _0224F9A0 - _0224F930 - 2 ; case 6
	.short _0224F9A6 - _0224F930 - 2 ; case 7
	.short _0224F9AC - _0224F930 - 2 ; case 8
	.short _0224F9B2 - _0224F930 - 2 ; case 9
	.short _0224FA4A - _0224F930 - 2 ; case 10
	.short _0224F9B8 - _0224F930 - 2 ; case 11
	.short _0224F9BE - _0224F930 - 2 ; case 12
	.short _0224F9C4 - _0224F930 - 2 ; case 13
	.short _0224F9F2 - _0224F930 - 2 ; case 14
	.short _0224FA18 - _0224F930 - 2 ; case 15
	.short _0224FA3A - _0224F930 - 2 ; case 16
	.short _0224FA40 - _0224F930 - 2 ; case 17
	.short _0224FA34 - _0224F930 - 2 ; case 18
	.short _0224FA46 - _0224F930 - 2 ; case 19
_0224F958:
	add r0, r4, #0
	bl ov23_0224F7F4
	ldr r0, _0224FA4C ; =0x00000246
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0224F968:
	bl ov23_0224FA58
	pop {r3, r4, r5, pc}
_0224F96E:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_02250B34
	pop {r3, r4, r5, pc}
_0224F984:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_02250B34
	pop {r3, r4, r5, pc}
_0224F99A:
	bl ov23_0224FF58
	pop {r3, r4, r5, pc}
_0224F9A0:
	bl ov23_02250378
	pop {r3, r4, r5, pc}
_0224F9A6:
	bl ov23_02250704
	pop {r3, r4, r5, pc}
_0224F9AC:
	bl ov23_02250EAC
	pop {r3, r4, r5, pc}
_0224F9B2:
	bl ov23_022510F0
	pop {r3, r4, r5, pc}
_0224F9B8:
	bl ov23_02250998
	pop {r3, r4, r5, pc}
_0224F9BE:
	bl ov23_022509D4
	pop {r3, r4, r5, pc}
_0224F9C4:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224FA4A
	ldr r0, _0224FA50 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224FA4A
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_02250B34
	bl ov23_02243204
	pop {r3, r4, r5, pc}
_0224F9F2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224FA4A
	ldr r0, _0224FA50 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224FA4A
	ldr r1, [r4, #0]
	add r0, r4, #0
	blx r1
	ldr r0, _0224FA54 ; =0x00000245
	ldrb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0224FA18:
	add r0, r4, #0
	bl ov23_0224FB7C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_02250B34
	bl ov23_02243204
	ldr r0, [r4, #0xc]
	bl sub_02054064
	pop {r3, r4, r5, pc}
_0224FA34:
	bl ov23_02250048
	pop {r3, r4, r5, pc}
_0224FA3A:
	bl ov23_0225044C
	pop {r3, r4, r5, pc}
_0224FA40:
	bl ov23_022507D8
	pop {r3, r4, r5, pc}
_0224FA46:
	bl ov23_02250F8C
_0224FA4A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224FA4C: .word 0x00000246
_0224FA50: .word 0x021BF67C
_0224FA54: .word 0x00000245
	thumb_func_end ov23_0224F914

	thumb_func_start ov23_0224FA58
ov23_0224FA58: ; 0x0224FA58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x54]
	bl sub_02001DC4
	add r5, r0, #0
	mov r1, #0x5e
	ldr r0, [r4, #0x54]
	lsl r1, r1, #4
	bl sub_02001C94
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x54]
	bl sub_02001DC4
	mov r2, #0x8e
	lsl r2, r2, #2
	strh r0, [r4, r2]
	ldrh r1, [r4, r2]
	cmp r5, r1
	beq _0224FAAA
	sub r2, #0x60
	ldr r0, [r4, r2]
	ldr r0, [r0, #0]
	bl ov23_0224F4D0
	mov r2, #0x8e
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224F52C
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	add r0, #0x90
	str r1, [r0, #0]
_0224FAAA:
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	sub r0, #0x60
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	ldr r0, [r0, #0]
	bl ov23_0224F560
	bl sub_020360F0
	cmp r0, #0
	beq _0224FAD2
	mov r1, #1
	mov r0, #0x8f
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224FAD2:
	mov r1, #0x8f
	lsl r1, r1, #2
	mov r2, #1
	ldr r0, [r4, r1]
	mvn r2, r2
	cmp r0, r2
	beq _0224FAF6
	add r1, r2, #1
	cmp r0, r1
	bne _0224FAFE
	add r0, r4, #0
	bl ov23_0224F498
	ldr r0, [r4, #0x74]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224FAF6:
	mov r0, #2
	add r1, #0xa
	strb r0, [r4, r1]
	b _0224FB66
_0224FAFE:
	ldr r1, _0224FB6C ; =ov23_0224FDE0
	cmp r0, r1
	beq _0224FB16
	ldr r1, _0224FB70 ; =ov23_022501BC
	cmp r0, r1
	beq _0224FB16
	ldr r1, _0224FB74 ; =ov23_02250CD4
	cmp r0, r1
	beq _0224FB16
	ldr r1, _0224FB78 ; =ov23_02250598
	cmp r0, r1
	bne _0224FB3C
_0224FB16:
	mov r0, #4
	bl sub_0206A780
	str r0, [r4, #8]
	mov r1, #0xc8
	mov r2, #0x14
	mov r3, #0x7a
	bl sub_0206A8A0
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_0224FB3C:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224FB5C
	add r0, r4, #0
	bl ov23_0224F460
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224FB5C:
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
_0224FB66:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224FB6C: .word ov23_0224FDE0
_0224FB70: .word ov23_022501BC
_0224FB74: .word ov23_02250CD4
_0224FB78: .word ov23_02250598
	thumb_func_end ov23_0224FA58

	thumb_func_start ov23_0224FB7C
ov23_0224FB7C: ; 0x0224FB7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0224FB92
	mov r1, #0
	add r2, r1, #0
	bl ov23_02248EF8
	mov r0, #0
	str r0, [r4, #0x4c]
_0224FB92:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0224FBA6
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0
	str r0, [r4, #0x48]
	b _0224FBC6
_0224FBA6:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224FBC6
	add r0, r4, #0
	bl ov23_0224F460
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224FBC6:
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A7CC
	cmp r0, #0
	beq _0224FBF8
	add r0, r4, #0
	add r0, #0x10
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_0201C3C0
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	ldr r0, [r4, #0x40]
	bl sub_02013A3C
	add r0, r4, #0
	bl ov23_02252DF4
_0224FBF8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224FB7C

	thumb_func_start ov23_0224FBFC
ov23_0224FBFC: ; 0x0224FBFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	mov r0, #6
	str r0, [sp, #0x1c]
	mov r0, #0x19
	mov r7, #0xb
	str r0, [sp, #0x18]
	cmp r1, #1
	beq _0224FC1A
	cmp r1, #2
	beq _0224FC20
	cmp r1, #3
	beq _0224FC28
	b _0224FC32
_0224FC1A:
	mov r6, #3
	ldr r4, _0224FCDC ; =0x02257644
	b _0224FC32
_0224FC20:
	mov r6, #2
	mov r7, #0xd
	ldr r4, _0224FCE0 ; =0x02257634
	b _0224FC32
_0224FC28:
	mov r0, #0x14
	ldr r4, _0224FCE4 ; =0x0225765C
	mov r6, #3
	str r7, [sp, #0x1c]
	str r0, [sp, #0x18]
_0224FC32:
	add r0, r6, #0
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x44]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r6, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FCE8 ; =0x000002E7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r0, #8]
	add r1, #0x20
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224FCEC ; =0x000003D9
	add r0, #0x20
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_0224219C
	bl ov23_02253E3C
	mov r7, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _0224FC9E
_0224FC8A:
	ldr r0, [r5, #0x44]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r7, r7, #1
	add r4, #8
	cmp r7, r6
	blt _0224FC8A
_0224FC9E:
	ldr r4, _0224FCF0 ; =0x02256904
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r6, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x20
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0x44]
	mov r1, #0
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x20
	str r0, [sp, #0x2c]
	add r0, r2, #0
	add r2, r1, #0
	mov r3, #4
	str r5, [sp, #0x3c]
	bl sub_0200112C
	str r0, [r5, #0x50]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224FCDC: .word 0x02257644
_0224FCE0: .word 0x02257634
_0224FCE4: .word 0x0225765C
_0224FCE8: .word 0x000002E7
_0224FCEC: .word 0x000003D9
_0224FCF0: .word 0x02256904
	thumb_func_end ov23_0224FBFC

	thumb_func_start ov23_0224FCF4
ov23_0224FCF4: ; 0x0224FCF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0224FD1C
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	add r1, r4, #0
	add r1, #0x24
	ldrb r1, [r1]
	ldr r0, [r4, #0x20]
	bl sub_0201C3C0
	ldr r0, [r4, #0x44]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x50]
_0224FD1C:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	beq _0224FD3A
	add r0, r4, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200DC9C
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201A8FC
_0224FD3A:
	pop {r4, pc}
	thumb_func_end ov23_0224FCF4

	thumb_func_start ov23_0224FD3C
ov23_0224FD3C: ; 0x0224FD3C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_0224FB7C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224FD52
	bl sub_0206A844
	mov r0, #0
	str r0, [r4, #8]
_0224FD52:
	ldr r0, _0224FD64 ; =0x00000246
	mov r1, #0
	strb r1, [r4, r0]
	bl ov23_022421DC
	bl ov23_02254044
	pop {r4, pc}
	nop
_0224FD64: .word 0x00000246
	thumb_func_end ov23_0224FD3C

	thumb_func_start ov23_0224FD68
ov23_0224FD68: ; 0x0224FD68
	push {r3, lr}
	ldr r1, _0224FD80 ; =0x022577B8
	ldr r2, [r1, #0]
	ldrb r1, [r2, #5]
	cmp r1, r0
	bne _0224FD7C
	ldrb r1, [r2, #4]
	ldr r0, [r2, #0]
	bl sub_02028E50
_0224FD7C:
	pop {r3, pc}
	nop
_0224FD80: .word 0x022577B8
	thumb_func_end ov23_0224FD68

	thumb_func_start ov23_0224FD84
ov23_0224FD84: ; 0x0224FD84
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _0224FDA6
	mov r4, #0x44
	b _0224FDAA
_0224FDA6:
	add r4, r0, #0
	add r4, #0x22
_0224FDAA:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224FD84

	thumb_func_start ov23_0224FDBC
ov23_0224FDBC: ; 0x0224FDBC
	mov r1, #2
	ldr r2, _0224FDD4 ; =ov23_0224F5C8
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _0224FDD8 ; =ov23_0224F66C
	add r1, r1, #4
	str r2, [r0, r1]
	mov r1, #0
	ldr r3, _0224FDDC ; =ov23_0224FE38
	str r1, [r0, #0x64]
	bx r3
	nop
_0224FDD4: .word ov23_0224F5C8
_0224FDD8: .word ov23_0224F66C
_0224FDDC: .word ov23_0224FE38
	thumb_func_end ov23_0224FDBC

	thumb_func_start ov23_0224FDE0
ov23_0224FDE0: ; 0x0224FDE0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #8
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _0224FE28 ; =ov23_0224F5C8
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _0224FE2C ; =ov23_0224F66C
	sub r0, #0x2c
	str r2, [r4, r0]
	ldr r0, _0224FE30 ; =ov23_0224FD84
	str r0, [r4, #0x60]
	mov r0, #0
	str r0, [r4, #0x64]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _0224FE34 ; =0x02028EA9
	add r0, r4, #0
	bl ov23_0224FE38
	pop {r4, pc}
	nop
_0224FE28: .word ov23_0224F5C8
_0224FE2C: .word ov23_0224F66C
_0224FE30: .word ov23_0224FD84
_0224FE34: .word 0x02028EA9
	thumb_func_end ov23_0224FDE0

	thumb_func_start ov23_0224FE38
ov23_0224FE38: ; 0x0224FE38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r7, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	ldr r1, _0224FF40 ; =0x00000276
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FF44 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224FF48 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _0224FEC0
_0224FEA8:
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, r6
	blt _0224FEA8
_0224FEC0:
	mov r2, #0x22
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, #0x24
	bl sub_02013A4C
	ldr r3, _0224FF4C ; =0x02256904
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x1c
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x64]
	str r0, [sp, #0x24]
	str r5, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _0224FF50 ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _0224FF54 ; =0x00000246
	mov r1, #5
	strb r1, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0224FF40: .word 0x00000276
_0224FF44: .word 0x00000257
_0224FF48: .word 0x000003D9
_0224FF4C: .word 0x02256904
_0224FF50: .word 0x022577B8
_0224FF54: .word 0x00000246
	thumb_func_end ov23_0224FE38

	thumb_func_start ov23_0224FF58
ov23_0224FF58: ; 0x0224FF58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #8
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _0224FF8A
	mov r4, #1
	mvn r4, r4
_0224FF8A:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0224FF94
	add r4, r0, #0
_0224FF94:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224FFBE
	add r0, r0, #1
	cmp r4, r0
	bne _0224FFC6
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224FFBE:
	add r0, r5, #0
	bl ov23_0224FD3C
	b _0225003C
_0224FFC6:
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _02250040 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F66C
	ldr r1, _02250040 ; =0x022577B8
	ldr r2, [r1, #0]
	strb r0, [r2, #5]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #5]
	cmp r0, #0x21
	bne _0224FFF6
	bl ov23_0224CD68
	ldr r0, _02250044 ; =0x00000246
	mov r1, #3
	strb r1, [r5, r0]
	b _02250028
_0224FFF6:
	add r0, r5, #0
	bl ov23_0224FB7C
	add r0, r5, #0
	mov r1, #1
	bl ov23_0224FBFC
	ldr r0, _02250044 ; =0x00000246
	mov r1, #0x12
	strb r1, [r5, r0]
	bl ov23_0224219C
	ldr r2, _02250040 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541B4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
_02250028:
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_0225003C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250040: .word 0x022577B8
_02250044: .word 0x00000246
	thumb_func_end ov23_0224FF58

	thumb_func_start ov23_02250048
ov23_02250048: ; 0x02250048
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250072
	ldr r0, _02250110 ; =0x000005DC
	bl sub_02005748
_02250072:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250084
	add r0, r0, #1
	cmp r4, r0
	bne _0225009E
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250084:
	ldr r0, _02250110 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_0224FDE0
	ldr r0, _02250114 ; =0x00000246
	mov r1, #5
	strb r1, [r5, r0]
	b _0225010C
_0225009E:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #1
	bne _022500CA
	ldr r0, _02250118 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl ov23_0224F66C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov23_02243AD4
	ldr r0, _0225011C ; =0x00000631
	bl sub_02005748
	ldr r0, _02250114 ; =0x00000246
	mov r1, #3
	strb r1, [r5, r0]
	b _0225010C
_022500CA:
	cmp r4, #2
	bne _0225010C
	ldr r0, _02250110 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02250118 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bl ov23_0224FD68
	bl ov23_0224219C
	ldr r2, _02250118 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541B4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02250120 ; =ov23_0224FDE0
	mov r1, #5
	str r0, [r5, #0]
	ldr r0, _02250124 ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_0225010C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250110: .word 0x000005DC
_02250114: .word 0x00000246
_02250118: .word 0x022577B8
_0225011C: .word 0x00000631
_02250120: .word ov23_0224FDE0
_02250124: .word 0x00000245
	thumb_func_end ov23_02250048

	thumb_func_start ov23_02250128
ov23_02250128: ; 0x02250128
	push {r3, lr}
	ldr r1, _02250148 ; =0x022577B8
	ldr r1, [r1, #0]
	ldrb r1, [r1, #5]
	cmp r1, r0
	beq _02250138
	bl sub_02022974
_02250138:
	ldr r0, _02250148 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028C6C
	pop {r3, pc}
	nop
_02250148: .word 0x022577B8
	thumb_func_end ov23_02250128

	thumb_func_start ov23_0225014C
ov23_0225014C: ; 0x0225014C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _0225016E
	mov r4, #0x3d
	b _02250172
_0225016E:
	add r4, r0, #0
	add r4, #0x3e
_02250172:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225014C

	thumb_func_start ov23_02250184
ov23_02250184: ; 0x02250184
	mov r2, #2
	ldr r1, _022501A4 ; =ov23_0224F658
	lsl r2, r2, #8
	str r1, [r0, r2]
	add r1, r2, #4
	ldr r3, _022501A8 ; =ov23_0224F684
	add r2, #8
	str r3, [r0, r1]
	ldr r1, _022501AC ; =ov23_0224F69C
	ldr r3, _022501B0 ; =ov23_0225021C
	str r1, [r0, r2]
	ldr r1, _022501B4 ; =ov23_0225014C
	str r1, [r0, #0x60]
	ldr r1, _022501B8 ; =0x02028CD9
	bx r3
	nop
_022501A4: .word ov23_0224F658
_022501A8: .word ov23_0224F684
_022501AC: .word ov23_0224F69C
_022501B0: .word ov23_0225021C
_022501B4: .word ov23_0225014C
_022501B8: .word 0x02028CD9
	thumb_func_end ov23_02250184

	thumb_func_start ov23_022501BC
ov23_022501BC: ; 0x022501BC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #9
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _02250208 ; =ov23_0224F658
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _0225020C ; =ov23_0224F684
	sub r0, #0x2c
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _02250210 ; =ov23_0224F69C
	sub r0, #0x28
	str r2, [r4, r0]
	ldr r0, _02250214 ; =ov23_0225014C
	str r0, [r4, #0x60]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _02250218 ; =0x02028CD9
	add r0, r4, #0
	bl ov23_0225021C
	pop {r4, pc}
	nop
_02250208: .word ov23_0224F658
_0225020C: .word ov23_0224F684
_02250210: .word ov23_0224F69C
_02250214: .word ov23_0225014C
_02250218: .word 0x02028CD9
	thumb_func_end ov23_022501BC

	thumb_func_start ov23_0225021C
ov23_0225021C: ; 0x0225021C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r2, #0x81
	add r5, r0, #0
	lsl r2, r2, #2
	str r1, [sp, #0x14]
	ldr r1, [r5, r2]
	str r1, [sp, #0x1c]
	add r1, r2, #4
	ldr r7, [r5, r1]
	sub r1, r2, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	mov r1, #0x9d
	lsl r1, r1, #2
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02250364 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02250368 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _022502EA
_02250294:
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	blx r2
	add r2, r0, #0
	ldr r0, [r5, #0x70]
	mov r1, #2
	bl sub_0200BA94
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x70]
	mov r1, #6
	mov r3, #2
	bl sub_0200B60C
	bl ov23_0224219C
	bl ov23_02253E3C
	ldr r2, [r5, #0x6c]
	mov r1, #0x80
	bl sub_0200B1B8
	ldr r0, [r5, #0x70]
	ldr r1, [r5, #0x68]
	ldr r2, [r5, #0x6c]
	bl sub_0200C388
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x68]
	add r2, r4, #0
	bl sub_02013A6C
	add r4, r4, #1
	cmp r4, r6
	blt _02250294
_022502EA:
	mov r2, #0x3c
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, #0x3e
	bl sub_02013A4C
	ldr r3, _0225036C ; =0x02256904
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x20
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x24]
	str r5, [sp, #0x3c]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _02250370 ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x20
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _02250374 ; =0x00000246
	mov r1, #6
	strb r1, [r5, r0]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250364: .word 0x00000257
_02250368: .word 0x000003D9
_0225036C: .word 0x02256904
_02250370: .word 0x022577B8
_02250374: .word 0x00000246
	thumb_func_end ov23_0225021C

	thumb_func_start ov23_02250378
ov23_02250378: ; 0x02250378
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #9
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _022503AA
	mov r4, #1
	mvn r4, r4
_022503AA:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022503B4
	add r4, r0, #0
_022503B4:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022503DE
	add r0, r0, #1
	cmp r4, r0
	bne _022503E6
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_022503DE:
	add r0, r5, #0
	bl ov23_0224FD3C
	b _02250440
_022503E6:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, _02250444 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F684
	ldr r1, _02250444 ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	add r0, r5, #0
	mov r1, #1
	bl ov23_0224FBFC
	ldr r0, _02250448 ; =0x00000246
	mov r1, #0x10
	strb r1, [r5, r0]
	bl ov23_0224219C
	ldr r2, _02250444 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_02250440:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250444: .word 0x022577B8
_02250448: .word 0x00000246
	thumb_func_end ov23_02250378

	thumb_func_start ov23_0225044C
ov23_0225044C: ; 0x0225044C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250476
	ldr r0, _0225052C ; =0x000005DC
	bl sub_02005748
_02250476:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250488
	add r0, r0, #1
	cmp r4, r0
	bne _022504A2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250488:
	ldr r0, _0225052C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_022501BC
	ldr r0, _02250530 ; =0x00000246
	mov r1, #6
	strb r1, [r5, r0]
	b _02250528
_022504A2:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #1
	bne _022504E6
	bl sub_0203608C
	add r4, r0, #0
	bl sub_02058D88
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058DC0
	add r4, r0, #0
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _02250534 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	bl ov23_0224F69C
	add r1, r0, #0
	ldr r0, _02250534 ; =0x022577B8
	add r2, r6, #0
	ldr r0, [r0, #0]
	add r3, r4, #0
	ldrb r0, [r0, #5]
	bl ov23_02241AE8
	b _02250518
_022504E6:
	cmp r4, #2
	bne _02250518
	ldr r0, _0225052C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02250534 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bl ov23_02250128
	bl ov23_0224219C
	ldr r2, _02250534 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
_02250518:
	ldr r0, _02250538 ; =ov23_022501BC
	mov r1, #6
	str r0, [r5, #0]
	ldr r0, _0225053C ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_02250528:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225052C: .word 0x000005DC
_02250530: .word 0x00000246
_02250534: .word 0x022577B8
_02250538: .word ov23_022501BC
_0225053C: .word 0x00000245
	thumb_func_end ov23_0225044C

	thumb_func_start ov23_02250540
ov23_02250540: ; 0x02250540
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _02250562
	mov r4, #0x3d
	b _02250566
_02250562:
	add r4, r0, #0
	add r4, #0x3e
_02250566:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02250540

	thumb_func_start ov23_02250578
ov23_02250578: ; 0x02250578
	mov r1, #2
	ldr r2, _0225058C ; =ov23_0224F6B4
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250590 ; =ov23_0224F6C8
	add r1, r1, #4
	str r2, [r0, r1]
	ldr r3, _02250594 ; =ov23_022505EC
	mov r1, #0
	bx r3
	; .align 2, 0
_0225058C: .word ov23_0224F6B4
_02250590: .word ov23_0224F6C8
_02250594: .word ov23_022505EC
	thumb_func_end ov23_02250578

	thumb_func_start ov23_02250598
ov23_02250598: ; 0x02250598
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _022505DC ; =ov23_0224F6B4
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _022505E0 ; =ov23_0224F6C8
	sub r0, #0x2c
	str r2, [r4, r0]
	ldr r0, _022505E4 ; =ov23_02250540
	str r0, [r4, #0x60]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _022505E8 ; =0x02028DD9
	add r0, r4, #0
	bl ov23_022505EC
	pop {r4, pc}
	nop
_022505DC: .word ov23_0224F6B4
_022505E0: .word ov23_0224F6C8
_022505E4: .word ov23_02250540
_022505E8: .word 0x02028DD9
	thumb_func_end ov23_02250598

	thumb_func_start ov23_022505EC
ov23_022505EC: ; 0x022505EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r7, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	mov r1, #0x9d
	lsl r1, r1, #2
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _022506F0 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _022506F4 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _02250676
_0225065E:
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, r6
	blt _0225065E
_02250676:
	mov r2, #0x3c
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, #0x3e
	bl sub_02013A4C
	ldr r3, _022506F8 ; =0x02256904
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x1c
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x20]
	str r5, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _022506FC ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _02250700 ; =0x00000246
	mov r1, #7
	strb r1, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022506F0: .word 0x00000257
_022506F4: .word 0x000003D9
_022506F8: .word 0x02256904
_022506FC: .word 0x022577B8
_02250700: .word 0x00000246
	thumb_func_end ov23_022505EC

	thumb_func_start ov23_02250704
ov23_02250704: ; 0x02250704
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xb
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _02250736
	mov r4, #1
	mvn r4, r4
_02250736:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02250740
	add r4, r0, #0
_02250740:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0225076A
	add r0, r0, #1
	cmp r4, r0
	bne _02250772
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225076A:
	add r0, r5, #0
	bl ov23_0224FD3C
	b _022507CC
_02250772:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, _022507D0 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F6C8
	ldr r1, _022507D0 ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	add r0, r5, #0
	mov r1, #3
	bl ov23_0224FBFC
	bl ov23_0224219C
	ldr r2, _022507D0 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
	ldr r0, _022507D4 ; =0x00000246
	mov r1, #0x11
	strb r1, [r5, r0]
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_022507CC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022507D0: .word 0x022577B8
_022507D4: .word 0x00000246
	thumb_func_end ov23_02250704

	thumb_func_start ov23_022507D8
ov23_022507D8: ; 0x022507D8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250802
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
_02250802:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250814
	add r0, r0, #1
	cmp r4, r0
	bne _0225082E
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250814:
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_02250598
	ldr r0, _02250920 ; =0x00000246
	mov r1, #7
	strb r1, [r5, r0]
	b _02250916
_0225082E:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #3
	bne _022508D2
	ldr r0, _02250924 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bl sub_02028938
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	add r6, r0, #0
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #4
	bl sub_0207D570
	cmp r0, #0
	beq _022508B2
	ldr r0, _02250924 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028D80
	bl ov23_0224219C
	ldr r2, _02250924 ; =0x022577B8
	mov r1, #0
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	ldr r0, _02250924 ; =0x022577B8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	add r0, #0xe3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _022508A2
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x51
	add r3, r2, #0
	bl ov23_02253F40
	b _02250906
_022508A2:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4f
	add r3, r2, #0
	bl ov23_02253F40
	b _02250906
_022508B2:
	bl ov23_0224219C
	ldr r2, _02250924 ; =0x022577B8
	mov r1, #0
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x50
	add r3, r2, #0
	bl ov23_02253F40
	b _02250906
_022508D2:
	cmp r4, #2
	bne _02250906
	ldr r0, _0225091C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02250924 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028D80
	bl ov23_0224219C
	ldr r2, _02250924 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541A0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
_02250906:
	ldr r0, _02250928 ; =ov23_02250598
	mov r1, #7
	str r0, [r5, #0]
	ldr r0, _0225092C ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_02250916:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0225091C: .word 0x000005DC
_02250920: .word 0x00000246
_02250924: .word 0x022577B8
_02250928: .word ov23_02250598
_0225092C: .word 0x00000245
	thumb_func_end ov23_022507D8

	thumb_func_start ov23_02250930
ov23_02250930: ; 0x02250930
	ldr r1, _02250938 ; =0x00000246
	mov r2, #2
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02250938: .word 0x00000246
	thumb_func_end ov23_02250930

	thumb_func_start ov23_0225093C
ov23_0225093C: ; 0x0225093C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov23_0224FB7C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _02250978
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x42
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02250994 ; =0x00000246
	mov r1, #0xd
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_02250978:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x34
	add r3, r2, #0
	bl ov23_02253F40
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xb
	add r1, #0x1e
	strb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250994: .word 0x00000246
	thumb_func_end ov23_0225093C

	thumb_func_start ov23_02250998
ov23_02250998: ; 0x02250998
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _022509C4
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _022509C8 ; =0x022568D8
	ldr r0, [r0, #8]
	ldr r2, _022509CC ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x5c]
	ldr r0, _022509D0 ; =0x00000246
	mov r1, #0xc
	strb r1, [r4, r0]
_022509C4:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022509C8: .word 0x022568D8
_022509CC: .word 0x000003D9
_022509D0: .word 0x00000246
	thumb_func_end ov23_02250998

	thumb_func_start ov23_022509D4
ov23_022509D4: ; 0x022509D4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02250A06
	cmp r0, #0
	bne _022509F4
	ldr r0, _02250A08 ; =0x00000246
	mov r1, #0xf
	strb r1, [r4, r0]
	b _02250A02
_022509F4:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r4, #0
	bl ov23_0224FD3C
_02250A02:
	mov r0, #0
	str r0, [r4, #0x5c]
_02250A06:
	pop {r4, pc}
	; .align 2, 0
_02250A08: .word 0x00000246
	thumb_func_end ov23_022509D4

	thumb_func_start ov23_02250A0C
ov23_02250A0C: ; 0x02250A0C
	ldr r3, _02250A10 ; =ov23_0224FD3C
	bx r3
	; .align 2, 0
_02250A10: .word ov23_0224FD3C
	thumb_func_end ov23_02250A0C

	thumb_func_start ov23_02250A14
ov23_02250A14: ; 0x02250A14
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_0224FB7C
	bl ov23_02253968
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r2, _02250A48 ; =ov23_02250A0C
	ldr r0, [r0, #8]
	add r3, r4, #0
	bl ov23_02253834
	ldr r0, _02250A4C ; =0x00000246
	mov r1, #0xa
	strb r1, [r4, r0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02250A48: .word ov23_02250A0C
_02250A4C: .word 0x00000246
	thumb_func_end ov23_02250A14

	thumb_func_start ov23_02250A50
ov23_02250A50: ; 0x02250A50
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x25
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x7f
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	str r5, [r4, r0]
	mov r1, #0
	add r0, #0x4a
	strb r1, [r4, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	bl sub_020594FC
	bl ov23_022421AC
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov23_02253F40
	ldr r0, _02250AC0 ; =ov23_02250B9C
	ldr r2, _02250AC4 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _02250AC8 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250AC0: .word ov23_02250B9C
_02250AC4: .word 0x00002710
_02250AC8: .word ov23_02251270
	thumb_func_end ov23_02250A50

	thumb_func_start ov23_02250ACC
ov23_02250ACC: ; 0x02250ACC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _02250AF8
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _02250AFC ; =0x022568D8
	ldr r0, [r0, #8]
	ldr r2, _02250B00 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x5c]
	ldr r0, _02250B04 ; =0x00000246
	mov r1, #1
	strb r1, [r4, r0]
_02250AF8:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02250AFC: .word 0x022568D8
_02250B00: .word 0x000003D9
_02250B04: .word 0x00000246
	thumb_func_end ov23_02250ACC

	thumb_func_start ov23_02250B08
ov23_02250B08: ; 0x02250B08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02250B2E
	cmp r0, #0
	bne _02250B24
	mov r1, #3
	b _02250B26
_02250B24:
	mov r1, #2
_02250B26:
	ldr r0, _02250B30 ; =0x00000246
	strb r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x5c]
_02250B2E:
	pop {r4, pc}
	; .align 2, 0
_02250B30: .word 0x00000246
	thumb_func_end ov23_02250B08

	thumb_func_start ov23_02250B34
ov23_02250B34: ; 0x02250B34
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r2, #0
	cmp r0, #0
	beq _02250B48
	mov r1, #4
	bl sub_02002154
_02250B48:
	ldr r0, [r5, #0x68]
	bl sub_020237BC
	ldr r0, [r5, #0x6c]
	bl sub_020237BC
	ldr r0, [r5, #0x70]
	bl sub_0200B3F0
	bl ov23_022421AC
	bl ov23_02254044
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02250B78
	mov r0, #0
	blx r1
_02250B78:
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02250B86
	bl sub_0206A844
_02250B86:
	add r0, r5, #0
	bl sub_020181C4
	cmp r4, #0
	bne _02250B94
	bl sub_02059514
_02250B94:
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov23_02250B34

	thumb_func_start ov23_02250B9C
ov23_02250B9C: ; 0x02250B9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	bl ov23_0224AEA4
	cmp r0, #0
	bne _02250BBA
	ldr r0, _02250C34 ; =0x00000246
	ldrb r1, [r4, r0]
	cmp r1, #1
	bhi _02250BBA
	mov r1, #2
	strb r1, [r4, r0]
_02250BBA:
	ldr r0, _02250C34 ; =0x00000246
	ldrb r0, [r4, r0]
	cmp r0, #4
	bhi _02250C32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250BCE: ; jump table
	.short _02250BD8 - _02250BCE - 2 ; case 0
	.short _02250BE0 - _02250BCE - 2 ; case 1
	.short _02250BE8 - _02250BCE - 2 ; case 2
	.short _02250BF8 - _02250BCE - 2 ; case 3
	.short _02250C16 - _02250BCE - 2 ; case 4
_02250BD8:
	add r0, r4, #0
	bl ov23_02250ACC
	pop {r3, r4, r5, pc}
_02250BE0:
	add r0, r4, #0
	bl ov23_02250B08
	pop {r3, r4, r5, pc}
_02250BE8:
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov23_02250B34
	pop {r3, r4, r5, pc}
_02250BF8:
	bl ov23_02243204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_02250B34
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x54
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, r4, r5, pc}
_02250C16:
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _02250C32
	ldr r0, _02250C38 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02250C32
	ldr r0, _02250C34 ; =0x00000246
	mov r1, #2
	strb r1, [r4, r0]
_02250C32:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02250C34: .word 0x00000246
_02250C38: .word 0x021BF67C
	thumb_func_end ov23_02250B9C

	thumb_func_start ov23_02250C3C
ov23_02250C3C: ; 0x02250C3C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r2, #0x81
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	add r0, r4, #0
	blx r2
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	bne _02250C5E
	mov r4, #0x8b
	b _02250C62
_02250C5E:
	add r4, r0, #0
	add r4, #0x8a
_02250C62:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02250C3C

	thumb_func_start ov23_02250C74
ov23_02250C74: ; 0x02250C74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	ldr r0, [r0, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r4, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02250CA2
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, r4, r5, pc}
_02250CA2:
	mov r1, #2
	add r0, r5, #0
	mov r2, #0xf
	add r3, r1, #0
	bl sub_0200147C
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02250C74

	thumb_func_start ov23_02250CB0
ov23_02250CB0: ; 0x02250CB0
	mov r1, #2
	ldr r2, _02250CC8 ; =ov23_0224F608
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250CCC ; =ov23_0224F61C
	add r1, r1, #4
	str r2, [r0, r1]
	mov r1, #0
	ldr r3, _02250CD0 ; =ov23_02250D90
	str r1, [r0, #0x64]
	bx r3
	nop
_02250CC8: .word ov23_0224F608
_02250CCC: .word ov23_0224F61C
_02250CD0: .word ov23_02250D90
	thumb_func_end ov23_02250CB0

	thumb_func_start ov23_02250CD4
ov23_02250CD4: ; 0x02250CD4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, _02250D1C ; =ov23_0224F608
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _02250D20 ; =ov23_0224F61C
	sub r0, #0x2c
	str r2, [r4, r0]
	ldr r0, _02250D24 ; =ov23_02250C3C
	str r0, [r4, #0x60]
	mov r0, #0
	str r0, [r4, #0x64]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1c
	strh r0, [r4, r1]
	ldr r1, _02250D28 ; =0x02028BE9
	add r0, r4, #0
	bl ov23_02250D90
	pop {r4, pc}
	nop
_02250D1C: .word ov23_0224F608
_02250D20: .word ov23_0224F61C
_02250D24: .word ov23_02250C3C
_02250D28: .word 0x02028BE9
	thumb_func_end ov23_02250CD4

	thumb_func_start ov23_02250D2C
ov23_02250D2C: ; 0x02250D2C
	mov r1, #2
	ldr r2, _02250D48 ; =ov23_0224F608
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250D4C ; =ov23_0224F61C
	add r1, r1, #4
	str r2, [r0, r1]
	ldr r1, _02250D50 ; =ov23_02250C3C
	ldr r3, _02250D54 ; =ov23_02250D90
	str r1, [r0, #0x60]
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r1, _02250D58 ; =0x02028BE9
	bx r3
	; .align 2, 0
_02250D48: .word ov23_0224F608
_02250D4C: .word ov23_0224F61C
_02250D50: .word ov23_02250C3C
_02250D54: .word ov23_02250D90
_02250D58: .word 0x02028BE9
	thumb_func_end ov23_02250D2C

	thumb_func_start ov23_02250D5C
ov23_02250D5C: ; 0x02250D5C
	mov r1, #2
	ldr r2, _02250D78 ; =ov23_0224F5DC
	lsl r1, r1, #8
	str r2, [r0, r1]
	ldr r2, _02250D7C ; =ov23_0224F5F0
	add r1, r1, #4
	str r2, [r0, r1]
	ldr r1, _02250D80 ; =ov23_02250C3C
	ldr r3, _02250D84 ; =ov23_02250D90
	str r1, [r0, #0x60]
	ldr r1, _02250D88 ; =ov23_02250C74
	str r1, [r0, #0x64]
	ldr r1, _02250D8C ; =0x02028A11
	bx r3
	; .align 2, 0
_02250D78: .word ov23_0224F5DC
_02250D7C: .word ov23_0224F5F0
_02250D80: .word ov23_02250C3C
_02250D84: .word ov23_02250D90
_02250D88: .word ov23_02250C74
_02250D8C: .word 0x02028A11
	thumb_func_end ov23_02250D5C

	thumb_func_start ov23_02250D90
ov23_02250D90: ; 0x02250D90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r7, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	blx r1
	add r6, r0, #0
	add r0, r5, #0
	bl ov23_0224FB7C
	bl ov23_022421DC
	ldr r1, _02250E94 ; =0x00000272
	mov r2, #0
	bl ov23_02253DFC
	add r0, r6, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02250E98 ; =0x00000257
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02250E9C ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	bl ov23_022421DC
	bl ov23_02253E3C
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _02250E18
_02250E00:
	add r0, r4, #0
	add r1, r5, #0
	blx r7
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, r6
	blt _02250E00
_02250E18:
	mov r2, #0
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #0x18]
	sub r3, r2, #2
	bl sub_02013A4C
	ldr r3, _02250EA0 ; =0x02256904
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #1
	add r2, sp, #0x1c
	strh r0, [r2, #0x10]
	mov r1, #6
	strh r1, [r2, #0x12]
	ldr r0, [r5, #0x64]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x60]
	str r0, [sp, #0x20]
	str r5, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	ldr r0, [sp, #0x14]
	mov r2, #0x23
	str r0, [sp]
	ldr r0, _02250EA4 ; =0x022577B8
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r3, #4
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov23_02248C08
	str r0, [r5, #0x4c]
	ldr r0, _02250EA8 ; =0x00000246
	mov r1, #8
	strb r1, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02250E94: .word 0x00000272
_02250E98: .word 0x00000257
_02250E9C: .word 0x000003D9
_02250EA0: .word 0x02256904
_02250EA4: .word 0x022577B8
_02250EA8: .word 0x00000246
	thumb_func_end ov23_02250D90

	thumb_func_start ov23_02250EAC
ov23_02250EAC: ; 0x02250EAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xa
	bl ov23_022430E0
	bl sub_020360F0
	cmp r0, #0
	beq _02250EDE
	mov r4, #1
	mvn r4, r4
_02250EDE:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02250EE8
	add r4, r0, #0
_02250EE8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250F12
	add r0, r0, #1
	cmp r4, r0
	bne _02250F20
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02250F12:
	ldr r0, _02250F80 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FD3C
	b _02250F7A
_02250F20:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, _02250F84 ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F61C
	ldr r1, _02250F84 ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	add r0, r5, #0
	mov r1, #2
	bl ov23_0224FBFC
	bl ov23_0224219C
	ldr r2, _02250F84 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541C8
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x81
	add r3, r2, #0
	bl ov23_02253F60
	ldr r0, _02250F88 ; =0x00000246
	mov r1, #0x13
	strb r1, [r5, r0]
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_02250F7A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02250F80: .word 0x000005DC
_02250F84: .word 0x022577B8
_02250F88: .word 0x00000246
	thumb_func_end ov23_02250EAC

	thumb_func_start ov23_02250F8C
ov23_02250F8C: ; 0x02250F8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	bl sub_02001288
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, #0x50]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02250FB6
	ldr r0, _02251030 ; =0x000005DC
	bl sub_02005748
_02250FB6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02250FC8
	add r0, r0, #1
	cmp r4, r0
	bne _02250FE2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02250FC8:
	ldr r0, _02251030 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224FCF4
	add r0, r5, #0
	bl ov23_02250CD4
	ldr r0, _02251034 ; =0x00000246
	mov r1, #8
	strb r1, [r5, r0]
	b _0225102C
_02250FE2:
	add r0, r5, #0
	bl ov23_0224FCF4
	cmp r4, #2
	bne _0225101C
	ldr r0, _02251030 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02251038 ; =0x022577B8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	ldrb r1, [r1, #4]
	bl sub_02028B94
	bl ov23_0224219C
	ldr r2, _02251038 ; =0x022577B8
	mov r1, #2
	ldr r2, [r2, #0]
	ldrb r2, [r2, #5]
	bl ov23_022541C8
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x82
	add r3, r2, #0
	bl ov23_02253F40
_0225101C:
	ldr r0, _0225103C ; =ov23_02250CD4
	mov r1, #8
	str r0, [r5, #0]
	ldr r0, _02251040 ; =0x00000245
	strb r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #1
	strb r1, [r5, r0]
_0225102C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02251030: .word 0x000005DC
_02251034: .word 0x00000246
_02251038: .word 0x022577B8
_0225103C: .word ov23_02250CD4
_02251040: .word 0x00000245
	thumb_func_end ov23_02250F8C

	thumb_func_start ov23_02251044
ov23_02251044: ; 0x02251044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_0224FB7C
	bl ov23_02242FBC
	bl ov23_022535EC
	bl ov23_02245784
	bl ov23_02241364
	bl ov23_02241ED0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02251070
	bl ov23_02253D10
_02251070:
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _0225107C
	mov r1, #4
	bl sub_02002154
_0225107C:
	add r0, r5, #0
	bl ov23_0224FCF4
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0225108C
	bl sub_0206A844
_0225108C:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022510BC
	ldr r0, _022510EC ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F61C
	ldr r1, _022510EC ; =0x022577B8
	ldr r1, [r1, #0]
	strb r0, [r1, #5]
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #0
	blx r1
	mov r0, #0x7f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_022510BC:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _022510C6
	bl sub_020237BC
_022510C6:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _022510D0
	bl sub_020237BC
_022510D0:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _022510DA
	bl sub_0200B3F0
_022510DA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022510E4
	bl sub_0200DA58
_022510E4:
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022510EC: .word 0x022577B8
	thumb_func_end ov23_02251044

	thumb_func_start ov23_022510F0
ov23_022510F0: ; 0x022510F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	bl sub_020360F0
	cmp r0, #0
	beq _02251108
	mov r4, #1
	mvn r4, r4
_02251108:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02251112
	add r4, r0, #0
_02251112:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02251124
	add r0, r0, #1
	cmp r4, r0
	bne _02251162
	mov r0, #0
	pop {r3, r4, r5, pc}
_02251124:
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0225114A
	ldr r0, _022511AC ; =0x022577B8
	mov r3, #0
	ldr r2, [r0, #0]
	strb r4, [r2, #4]
	ldr r2, [r0, #0]
	strb r3, [r2, #5]
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	ldrb r0, [r0, #5]
	blx r1
	mov r0, #0x7f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0225114A:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02251044
	bl ov23_02243204
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251162:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02251194
	ldr r0, _022511AC ; =0x022577B8
	add r1, r5, #0
	ldr r0, [r0, #0]
	strb r4, [r0, #4]
	add r0, r4, #0
	bl ov23_0224F61C
	ldr r1, _022511AC ; =0x022577B8
	ldr r2, [r1, #0]
	strb r0, [r2, #5]
	ldr r0, [r1, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	ldrb r0, [r0, #5]
	ldr r1, [r5, r1]
	blx r1
	mov r0, #0x7f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02251194:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02251044
	bl ov23_02243204
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022511AC: .word 0x022577B8
	thumb_func_end ov23_022510F0

	thumb_func_start ov23_022511B0
ov23_022511B0: ; 0x022511B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x25
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x7f
	lsl r0, r0, #2
	str r6, [r4, #0xc]
	add r1, r0, #0
	str r5, [r4, r0]
	mov r2, #0
	add r1, #0x4a
	strb r2, [r4, r1]
	sub r0, r0, #4
	str r2, [r4, r0]
	str r2, [r4, #0x48]
	str r2, [r4, #0x60]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	add r0, r4, #0
	bl ov23_02250CD4
	ldr r0, _02251228 ; =0x00000246
	mov r1, #9
	strb r1, [r4, r0]
	ldr r0, _0225122C ; =ov23_0224F914
	ldr r2, _02251230 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _02251234 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02251228: .word 0x00000246
_0225122C: .word ov23_0224F914
_02251230: .word 0x00002710
_02251234: .word ov23_02251270
	thumb_func_end ov23_022511B0

	thumb_func_start ov23_02251238
ov23_02251238: ; 0x02251238
	push {r3, r4}
	mov r3, #0x23
	lsl r3, r3, #4
	ldr r4, [r0, r3]
	add r4, r4, r1
	cmp r4, r2
	blt _02251254
	sub r1, r2, r1
	str r1, [r0, r3]
	ldr r1, [r0, r3]
	cmp r1, #0
	bge _02251254
	mov r1, #0
	str r1, [r0, r3]
_02251254:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	sub r2, r2, #1
	cmp r3, r2
	blt _0225126C
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	cmp r2, #0
	bge _0225126C
	mov r2, #0
	str r2, [r0, r1]
_0225126C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov23_02251238

	thumb_func_start ov23_02251270
ov23_02251270: ; 0x02251270
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	mov r1, #1
	add r0, r4, #0
	mvn r1, r1
	bl ov23_02251044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02251270

	thumb_func_start ov23_0225128C
ov23_0225128C: ; 0x0225128C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, r7
	ble _022512D2
	cmp r4, #0
	ldr r0, [r5, #8]
	beq _022512AA
	mov r1, #0
	mov r2, #1
	bl sub_0206A8C4
	b _022512B2
_022512AA:
	mov r1, #0
	add r2, r1, #0
	bl sub_0206A8C4
_022512B2:
	add r0, r4, r7
	cmp r6, r0
	ldr r0, [r5, #8]
	beq _022512C4
	mov r1, #1
	add r2, r1, #0
	bl sub_0206A8C4
	b _022512CC
_022512C4:
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_022512CC:
	ldr r0, [r5, #8]
	bl sub_0206A870
_022512D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0225128C

	thumb_func_start ov23_022512D4
ov23_022512D4: ; 0x022512D4
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _022512E8
	cmp r1, #0
	beq _022512E8
	mov r0, #0xff
	bx lr
_022512E8:
	cmp r3, #0xc
	bne _022512F0
	mov r3, #0
	b _022512FC
_022512F0:
	cmp r3, #0x2c
	bne _022512F8
	mov r3, #8
	b _022512FC
_022512F8:
	mov r0, #0xff
	bx lr
_022512FC:
	add r0, r2, #0
	sub r0, #0xf
	cmp r0, #1
	bhi _02251308
	mov r0, #0
	bx lr
_02251308:
	mov r1, #0
_0225130A:
	add r0, r2, #0
	sub r0, #0x2f
	cmp r0, #1
	bhi _02251316
	add r0, r1, r3
	bx lr
_02251316:
	add r1, r1, #1
	sub r2, #0x20
	cmp r1, #8
	blt _0225130A
	mov r0, #0xff
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022512D4

	thumb_func_start ov23_02251324
ov23_02251324: ; 0x02251324
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02058F80
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_022512D4
	add r4, r0, #0
	bl sub_02058F50
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02251346
	mov r4, #0xff
_02251346:
	cmp r4, #0xff
	beq _022513A0
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add r0, sp, #0
	strb r4, [r0, #2]
	strb r5, [r0, #1]
	mov r1, #0
	strb r1, [r0, #3]
	cmp r4, r5
	beq _02251372
	add r0, r5, #0
	bl ov23_0224AEA4
	cmp r0, #0
	bne _02251392
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #3]
	b _02251392
_02251372:
	add r0, r5, #0
	bl ov23_0224AEA4
	cmp r0, #0
	beq _02251392
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r2, sp, #0
	mov r3, #0
	bl ov23_0224A570
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251392:
	add r1, sp, #0
	mov r0, #0x53
	add r1, #1
	bl sub_02035B48
	mov r0, #1
	pop {r3, r4, r5, pc}
_022513A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02251324

	thumb_func_start ov23_022513A4
ov23_022513A4: ; 0x022513A4
	ldr r3, _022513AC ; =sub_0205948C
	mov r0, #0x40
	bx r3
	nop
_022513AC: .word sub_0205948C
	thumb_func_end ov23_022513A4

	thumb_func_start ov23_022513B0
ov23_022513B0: ; 0x022513B0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02035EE0
	cmp r0, #0
	beq _02251408
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _02251408
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _022513E4
	ldr r0, _0225140C ; =0x0000060C
	bl sub_02005748
	bl sub_020594FC
	add r0, r4, #0
	bl ov23_02251F94
	pop {r3, r4, r5, pc}
_022513E4:
	mov r0, #0x40
	bl sub_02059464
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _022513FA
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_022520E8
	pop {r3, r4, r5, pc}
_022513FA:
	bl ov23_022421AC
	ldr r3, _02251410 ; =ov23_022513A4
	mov r1, #9
	mov r2, #1
	bl ov23_02253F40
_02251408:
	pop {r3, r4, r5, pc}
	nop
_0225140C: .word 0x0000060C
_02251410: .word ov23_022513A4
	thumb_func_end ov23_022513B0

	thumb_func_start ov23_02251414
ov23_02251414: ; 0x02251414
	mov r0, #3
	bx lr
	thumb_func_end ov23_02251414

	thumb_func_start ov23_02251418
ov23_02251418: ; 0x02251418
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	add r1, r5, #0
	bl sub_02028B88
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202895C
	cmp r0, #0
	beq _02251446
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02028B94
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251446:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02251418

	thumb_func_start ov23_0225144C
ov23_0225144C: ; 0x0225144C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02028AFC
	cmp r0, #0
	beq _0225146C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0225146C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020289B8
	bl ov23_0224F744
	cmp r0, #0
	beq _02251488
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020289C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02251488:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0225144C

	thumb_func_start ov23_0225148C
ov23_0225148C: ; 0x0225148C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022514A0
	mov r4, #5
_022514A0:
	bl ov23_022421BC
	mov r2, #0
	add r1, r4, #6
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	thumb_func_end ov23_0225148C

	thumb_func_start ov23_022514B0
ov23_022514B0: ; 0x022514B0
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x13
	bl sub_02001504
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022514C4
	mov r4, #3
_022514C4:
	bl ov23_022421BC
	add r4, #0x2c
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_022514B0

	thumb_func_start ov23_022514D8
ov23_022514D8: ; 0x022514D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x48]
	bl sub_02001288
	add r5, r0, #0
	add r1, sp, #0
	ldr r0, [r4, #0x48]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0x17
	bl ov23_022430E0
	add r0, r4, #0
	bl ov23_022521C8
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _02251526
	bhs _02251532
	cmp r5, #4
	bhi _022515C6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225151C: ; jump table
	.short _02251540 - _0225151C - 2 ; case 0
	.short _022515AC - _0225151C - 2 ; case 1
	.short _022515BA - _0225151C - 2 ; case 2
	.short _0225159E - _0225151C - 2 ; case 3
	.short _02251590 - _0225151C - 2 ; case 4
_02251526:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _022515C6
	mov r0, #0
	pop {r3, r4, r5, pc}
_02251532:
	ldr r0, _022515CC ; =0x0000060E
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #2
	strb r1, [r4, r0]
	b _022515C6
_02251540:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	bl sub_020289A0
	cmp r0, #0
	bne _02251566
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x17
	strb r1, [r4, r0]
	b _022515C6
_02251566:
	bl sub_02033DFC
	cmp r0, #0
	beq _0225157A
	bl ov23_02243204
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #3
	strb r1, [r4, r0]
	b _022515C6
_0225157A:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x38
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x17
	strb r1, [r4, r0]
	b _022515C6
_02251590:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #8
	strb r1, [r4, r0]
	b _022515C6
_0225159E:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #6
	strb r1, [r4, r0]
	b _022515C6
_022515AC:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x11
	strb r1, [r4, r0]
	b _022515C6
_022515BA:
	ldr r0, _022515D4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _022515D0 ; =0x00000246
	mov r1, #0x14
	strb r1, [r4, r0]
_022515C6:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022515CC: .word 0x0000060E
_022515D0: .word 0x00000246
_022515D4: .word 0x000005DC
	thumb_func_end ov23_022514D8

	thumb_func_start ov23_022515D8
ov23_022515D8: ; 0x022515D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r0, r2, #1
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	ldr r0, [r0, #0xc]
	str r3, [sp, #0x14]
	bl sub_020298A0
	bl sub_0202958C
	cmp r0, #3
	bge _022515FC
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
_022515FC:
	add r0, r5, #0
	bl ov23_0224FB7C
	ldr r0, [sp, #0x18]
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r1, #0x10
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x11
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _022516E0 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _022516E4 ; =0x0000027F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _02251682
	sub r0, r0, #1
	str r0, [sp, #0x1c]
_0225165A:
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	ldr r0, [r5, #0x40]
	bne _02251670
	mov r3, #1
	add r1, r7, #0
	add r2, r6, #5
	mvn r3, r3
	bl sub_02013A4C
	b _0225167A
_02251670:
	add r1, r7, #0
	add r2, r6, r4
	add r3, r4, #0
	bl sub_02013A4C
_0225167A:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0225165A
_02251682:
	add r0, r7, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x20
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x20
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022516B2
	str r0, [sp, #0x24]
_022516B2:
	str r5, [sp, #0x3c]
	add r2, sp, #0x20
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x20
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022516E0: .word 0x000003D9
_022516E4: .word 0x0000027F
	thumb_func_end ov23_022515D8

	thumb_func_start ov23_022516E8
ov23_022516E8: ; 0x022516E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r1, r2, #0
	add r1, r1, #1
	str r1, [sp, #0x1c]
	add r5, r0, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl ov23_0224FB7C
	ldr r0, [sp, #0x1c]
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, #0x10
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xe2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x11
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _022517D8 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _022517DC ; =0x0000027F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _0225177A
_02251752:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	ldr r0, [r5, #0x40]
	bne _02251768
	mov r3, #1
	add r1, r7, #0
	add r2, r6, r4
	mvn r3, r3
	bl sub_02013A4C
	b _02251772
_02251768:
	add r1, r7, #0
	add r2, r6, r4
	add r3, r4, #0
	bl sub_02013A4C
_02251772:
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _02251752
_0225177A:
	add r0, r7, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x20
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, [sp, #0x14]
	add r1, sp, #0x20
	add r0, r0, #1
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	strh r0, [r1, #0x12]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022517AA
	str r0, [sp, #0x24]
_022517AA:
	str r5, [sp, #0x3c]
	add r2, sp, #0x20
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x20
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022517D8: .word 0x000003D9
_022517DC: .word 0x0000027F
	thumb_func_end ov23_022516E8

	thumb_func_start ov23_022517E0
ov23_022517E0: ; 0x022517E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x48]
	bl sub_02001288
	add r4, r0, #0
	add r1, sp, #0
	ldr r0, [r5, #0x48]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0x16
	bl ov23_022430E0
	add r0, r5, #0
	bl ov23_022521C8
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bhi _02251826
	bhs _02251830
	cmp r4, #2
	bhi _02251880
	cmp r4, #0
	beq _0225183E
	cmp r4, #1
	beq _02251854
	cmp r4, #2
	beq _0225186A
	b _02251880
_02251826:
	add r0, r0, #1
	cmp r4, r0
	bne _02251880
	mov r0, #0
	pop {r3, r4, r5, pc}
_02251830:
	ldr r0, _0225188C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02251890 ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
	b _02251886
_0225183E:
	bl sub_02033DFC
	cmp r0, #0
	ldr r0, _02251890 ; =0x00000246
	beq _0225184E
	mov r1, #0xb
	strb r1, [r5, r0]
	b _02251886
_0225184E:
	mov r1, #0xa
	strb r1, [r5, r0]
	b _02251886
_02251854:
	bl sub_02033DFC
	cmp r0, #0
	ldr r0, _02251890 ; =0x00000246
	beq _02251864
	mov r1, #0xd
	strb r1, [r5, r0]
	b _02251886
_02251864:
	mov r1, #0xc
	strb r1, [r5, r0]
	b _02251886
_0225186A:
	bl sub_02033DFC
	cmp r0, #0
	ldr r0, _02251890 ; =0x00000246
	beq _0225187A
	mov r1, #0xf
	strb r1, [r5, r0]
	b _02251886
_0225187A:
	mov r1, #0xe
	strb r1, [r5, r0]
	b _02251886
_02251880:
	ldr r0, _02251890 ; =0x00000246
	mov r1, #2
	strb r1, [r5, r0]
_02251886:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0225188C: .word 0x000005DC
_02251890: .word 0x00000246
	thumb_func_end ov23_022517E0

	thumb_func_start ov23_02251894
ov23_02251894: ; 0x02251894
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #2
	bl ov23_022430E0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _022518C6
	add r4, r0, #0
_022518C6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022518F2
	add r0, r0, #1
	cmp r4, r0
	bne _02251902
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022518F2:
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _0225195C ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
	b _02251954
_02251902:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224F61C
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_02251418
	cmp r0, #0
	beq _0225193A
	bl ov23_022421BC
	add r1, r6, #0
	bl ov23_022540F4
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x25
	add r3, r2, #0
	bl ov23_02253F40
	b _02251948
_0225193A:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x26
	add r3, r2, #0
	bl ov23_02253F40
_02251948:
	ldr r0, _0225195C ; =0x00000246
	mov r1, #0x13
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov23_0224FB7C
_02251954:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225195C: .word 0x00000246
	thumb_func_end ov23_02251894

	thumb_func_start ov23_02251960
ov23_02251960: ; 0x02251960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r0, [r5, #0x4c]
	bl ov23_02248D20
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r2, sp, #0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #6
	bl ov23_022430E0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02251992
	add r4, r0, #0
_02251992:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022519BE
	add r0, r0, #1
	cmp r4, r0
	bne _022519CE
	ldr r0, [r5, #0x4c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r1, sp, #0
	add r2, r0, #0
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #6
	bl ov23_0225128C
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022519BE:
	bl ov23_022421DC
	bl ov23_02254044
	ldr r0, _02251A54 ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
	b _02251A38
_022519CE:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224F5F0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0225144C
	cmp r0, #1
	bne _02251A06
	bl ov23_022421BC
	add r1, r6, #0
	bl ov23_022540F4
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x24
	add r3, r2, #0
	bl ov23_02253F40
	b _02251A2C
_02251A06:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02251A1E
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x37
	add r3, r2, #0
	bl ov23_02253F40
	b _02251A2C
_02251A1E:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x27
	add r3, r2, #0
	bl ov23_02253F40
_02251A2C:
	ldr r0, _02251A54 ; =0x00000246
	mov r1, #0x16
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov23_0224FB7C
_02251A38:
	mov r1, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02251A54: .word 0x00000246
	thumb_func_end ov23_02251960

	thumb_func_start ov23_02251A58
ov23_02251A58: ; 0x02251A58
	push {r3, lr}
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02251A7C
	ldr r0, _02251A80 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02251A7C
	bl ov23_022421BC
	bl ov23_02254044
	mov r0, #1
	pop {r3, pc}
_02251A7C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02251A80: .word 0x021BF67C
	thumb_func_end ov23_02251A58

	thumb_func_start ov23_02251A84
ov23_02251A84: ; 0x02251A84
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	lsl r1, r0, #0x10
	mov r0, #0xf
	lsl r0, r0, #0x10
	sub r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	lsl r1, r0, #0x10
	mov r0, #0x11
	lsl r0, r0, #0x10
	sub r1, r0, r1
	str r1, [sp, #8]
	cmp r5, #0
	bne _02251ABE
	ldr r0, [sp]
	neg r0, r0
	str r0, [sp]
	neg r0, r1
	str r0, [sp, #8]
_02251ABE:
	ldr r1, [r4, #0x24]
	add r0, sp, #0
	bl sub_02020990
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02251A84

	thumb_func_start ov23_02251ACC
ov23_02251ACC: ; 0x02251ACC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #5
	bhi _02251BAA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02251AF2: ; jump table
	.short _02251AFE - _02251AF2 - 2 ; case 0
	.short _02251B22 - _02251AF2 - 2 ; case 1
	.short _02251B40 - _02251AF2 - 2 ; case 2
	.short _02251B4E - _02251AF2 - 2 ; case 3
	.short _02251B54 - _02251AF2 - 2 ; case 4
	.short _02251B80 - _02251AF2 - 2 ; case 5
_02251AFE:
	ldr r0, _02251BB0 ; =0x0000060D
	bl sub_02005748
	mov r1, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r5, #0]
	b _02251BAA
_02251B22:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02251BAA
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0205EB18
	mov r0, #1
	add r1, r4, #0
	bl ov23_02251A84
	mov r0, #2
	str r0, [r5, #0]
	b _02251BAA
_02251B40:
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_02254D98
	mov r0, #3
	str r0, [r5, #0]
	b _02251BAA
_02251B4E:
	mov r0, #4
	str r0, [r5, #0]
	b _02251BAA
_02251B54:
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0205EB18
	mov r0, #0
	add r1, r4, #0
	bl ov23_02251A84
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r5, #0]
	b _02251BAA
_02251B80:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02251BAA
	add r0, r4, #0
	bl ov23_0224B2C8
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AA30
	add r0, r4, #0
	bl ov23_02251F94
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02251BAA:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02251BB0: .word 0x0000060D
	thumb_func_end ov23_02251ACC

	thumb_func_start ov23_02251BB4
ov23_02251BB4: ; 0x02251BB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl sub_0200B3F0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02251BDA
	mov r0, #0
	blx r1
_02251BDA:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02251BE8
	bl sub_0206A844
	mov r0, #0
	str r0, [r4, #8]
_02251BE8:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_022421BC
	bl ov23_02254044
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02251BB4

	thumb_func_start ov23_02251C04
ov23_02251C04: ; 0x02251C04
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _02251F80 ; =0x00000246
	add r4, r1, #0
	ldrb r3, [r4, r2]
	add r6, r0, #0
	cmp r3, #0x17
	bhi _02251CF8
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02251C20: ; jump table
	.short _02251C50 - _02251C20 - 2 ; case 0
	.short _02251C8E - _02251C20 - 2 ; case 1
	.short _02251C96 - _02251C20 - 2 ; case 2
	.short _02251E9E - _02251C20 - 2 ; case 3
	.short _02251F7C - _02251C20 - 2 ; case 4
	.short _02251F7C - _02251C20 - 2 ; case 5
	.short _02251CAA - _02251C20 - 2 ; case 6
	.short _02251CEE - _02251C20 - 2 ; case 7
	.short _02251D12 - _02251C20 - 2 ; case 8
	.short _02251D54 - _02251C20 - 2 ; case 9
	.short _02251D5C - _02251C20 - 2 ; case 10
	.short _02251D90 - _02251C20 - 2 ; case 11
	.short _02251DA8 - _02251C20 - 2 ; case 12
	.short _02251DDC - _02251C20 - 2 ; case 13
	.short _02251DF4 - _02251C20 - 2 ; case 14
	.short _02251E28 - _02251C20 - 2 ; case 15
	.short _02251E40 - _02251C20 - 2 ; case 16
	.short _02251ED4 - _02251C20 - 2 ; case 17
	.short _02251F04 - _02251C20 - 2 ; case 18
	.short _02251F0C - _02251C20 - 2 ; case 19
	.short _02251F20 - _02251C20 - 2 ; case 20
	.short _02251F50 - _02251C20 - 2 ; case 21
	.short _02251F58 - _02251C20 - 2 ; case 22
	.short _02251F6C - _02251C20 - 2 ; case 23
_02251C50:
	add r0, r4, #0
	bl ov23_02252E18
	mov r0, #0x17
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x17
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1a
	strh r0, [r4, r1]
	mov r1, #0
	ldr r3, _02251F84 ; =ov23_0225148C
	add r0, r4, #0
	mov r2, #5
	str r1, [sp]
	bl ov23_022515D8
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #1
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251C8E:
	bl ov23_022514D8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251C96:
	bl sub_02059514
	bl ov23_02243204
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02251BB4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251CAA:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_022421BC
	bl ov23_02254044
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	mov r3, #0
	str r3, [sp]
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #8]
	bl ov23_02253C64
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #7
	add r1, #0x3a
	add sp, #4
	strb r0, [r4, r1]
	pop {r3, r4, r5, r6, pc}
_02251CEE:
	ldr r0, _02251F88 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02251CFA
_02251CF8:
	b _02251F7C
_02251CFA:
	sub r2, #0x3a
	ldr r0, [r4, r2]
	bl ov23_02253D10
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x3a
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251D12:
	bl ov23_022421BC
	bl ov23_02254044
	mov r0, #0x16
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x16
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r1, #0x1a
	strh r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	ldr r3, _02251F8C ; =ov23_022514B0
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #3
	bl ov23_022516E8
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #9
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251D54:
	bl ov23_022517E0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251D5C:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02242FF8
	bl ov23_022412F0
	mov r0, #1
	sub r1, r0, #7
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x30
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251D90:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x39
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251DA8:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02242FD0
	bl ov23_02241E6C
	mov r0, #1
	sub r1, r0, #7
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x31
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251DDC:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x3a
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251DF4:
	add r0, r4, #0
	bl ov23_0224FB7C
	bl ov23_02242FE4
	bl ov23_02245728
	mov r0, #1
	sub r1, r0, #7
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x32
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251E28:
	bl ov23_022421BC
	mov r2, #0
	mov r1, #0x3b
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x10
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251E40:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02251E56
	ldr r0, _02251F88 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02251E58
_02251E56:
	b _02251F7C
_02251E58:
	bl sub_02033DFC
	cmp r0, #0
	bne _02251E6E
	mov r0, #1
	mov r1, #0
	sub r2, r1, #6
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
_02251E6E:
	bl ov23_022421BC
	bl ov23_02254044
	bl sub_02033DFC
	cmp r0, #0
	beq _02251E84
	bl ov23_02242FA8
	b _02251E88
_02251E84:
	bl ov23_02242FBC
_02251E88:
	bl ov23_02245784
	bl ov23_02241364
	bl ov23_02241ED0
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #8
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251E9E:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02251EC8
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	mov r1, #0
	mov r2, #0xc
	add r5, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	ldr r1, _02251F90 ; =ov23_02251ACC
	add r2, r5, #0
	bl sub_02050904
_02251EC8:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02251BB4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251ED4:
	mov r0, #2
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov23_02250D2C
	add r0, r4, #0
	mov r1, #0x1c
	bl ov23_02252D74
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x12
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F04:
	bl ov23_02251894
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251F0C:
	add r0, r4, #0
	bl ov23_02251A58
	cmp r0, #0
	beq _02251F7C
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x11
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F20:
	mov r0, #6
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #6
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov23_02250D5C
	add r0, r4, #0
	mov r1, #0x20
	bl ov23_02252D74
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x15
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F50:
	bl ov23_02251960
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02251F58:
	add r0, r4, #0
	bl ov23_02251A58
	cmp r0, #0
	beq _02251F7C
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0x14
	add sp, #4
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_02251F6C:
	add r0, r4, #0
	bl ov23_02251A58
	cmp r0, #0
	beq _02251F7C
	ldr r0, _02251F80 ; =0x00000246
	mov r1, #0
	strb r1, [r4, r0]
_02251F7C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02251F80: .word 0x00000246
_02251F84: .word ov23_0225148C
_02251F88: .word 0x021BF67C
_02251F8C: .word ov23_022514B0
_02251F90: .word ov23_02251ACC
	thumb_func_end ov23_02251C04

	thumb_func_start ov23_02251F94
ov23_02251F94: ; 0x02251F94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	bl ov23_022430D0
	mov r1, #0x25
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	str r5, [r4, #0xc]
	bl ov23_022421BC
	ldr r1, _02252024 ; =0x0000027F
	mov r2, #1
	bl ov23_02253DFC
	ldr r0, _02252028 ; =0x00000246
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x70]
	mov r0, #4
	bl sub_0206A780
	str r0, [r4, #8]
	mov r1, #0xc8
	mov r2, #0x14
	mov r3, #0x7a
	bl sub_0206A8A0
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	ldr r0, _0225202C ; =ov23_02251C04
	ldr r2, _02252030 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _02252034 ; =ov23_02251270
	add r0, r4, #0
	bl ov23_022431EC
	pop {r3, r4, r5, pc}
	nop
_02252024: .word 0x0000027F
_02252028: .word 0x00000246
_0225202C: .word ov23_02251C04
_02252030: .word 0x00002710
_02252034: .word ov23_02251270
	thumb_func_end ov23_02251F94

	thumb_func_start ov23_02252038
ov23_02252038: ; 0x02252038
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0225204E
	cmp r0, #1
	beq _02252074
	cmp r0, #2
	beq _022520AC
	pop {r3, r4, r5, pc}
_0225204E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _022520BC
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _022520C0 ; =0x022569C8
	ldr r0, [r0, #8]
	ldr r2, _022520C4 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02252074:
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022520BC
	cmp r0, #0
	bne _02252094
	add r1, r4, #0
	mov r0, #0x59
	add r1, #0xc
	bl sub_020360D0
	b _022520A2
_02252094:
	mov r0, #0x40
	bl sub_0205948C
	bl ov23_0224219C
	bl ov23_02254044
_022520A2:
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_022520AC:
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	add r0, r5, #0
	bl sub_0200DA58
_022520BC:
	pop {r3, r4, r5, pc}
	nop
_022520C0: .word 0x022569C8
_022520C4: .word 0x000003D9
	thumb_func_end ov23_02252038

	thumb_func_start ov23_022520C8
ov23_022520C8: ; 0x022520C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _022520DA
	mov r1, #4
	bl sub_02002154
_022520DA:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_022520C8

	thumb_func_start ov23_022520E8
ov23_022520E8: ; 0x022520E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x25
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, _02252150 ; =ov23_02252038
	ldr r2, _02252154 ; =0x00002710
	str r6, [r4, #4]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	bl ov23_0224219C
	add r6, r0, #0
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r6, #0
	bl ov23_02254068
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x43
	add r3, r2, #0
	bl ov23_02253F40
	ldrb r0, [r5]
	ldr r2, _02252158 ; =ov23_022520C8
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0xe]
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, r5, r6, pc}
	nop
_02252150: .word ov23_02252038
_02252154: .word 0x00002710
_02252158: .word ov23_022520C8
	thumb_func_end ov23_022520E8

	thumb_func_start ov23_0225215C
ov23_0225215C: ; 0x0225215C
	push {r4, lr}
	add r4, r2, #0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ov23_0224AEC4
	cmp r0, #0
	beq _02252174
	mov r0, #0x5a
	add r1, r4, #0
	bl sub_02035B48
_02252174:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225215C

	thumb_func_start ov23_02252178
ov23_02252178: ; 0x02252178
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _022521AE
	bl ov23_022421AC
	add r5, r0, #0
	ldrb r0, [r4, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254068
	bl ov23_022421AC
	ldr r3, _022521C0 ; =ov23_022513A4
	mov r1, #8
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _022521C4 ; =0x00000425
	bl sub_0200549C
_022521AE:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ov23_0224AEC4
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ov23_0224D500
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022521C0: .word ov23_022513A4
_022521C4: .word 0x00000425
	thumb_func_end ov23_02252178

	thumb_func_start ov23_022521C8
ov23_022521C8: ; 0x022521C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, _022521E8 ; =0x0000024A
	ldr r0, [r5, #0x48]
	ldrh r4, [r5, r1]
	add r1, r5, r1
	bl sub_020014D0
	ldr r0, _022521E8 ; =0x0000024A
	ldrh r0, [r5, r0]
	cmp r4, r0
	beq _022521E6
	ldr r0, _022521EC ; =0x000005DC
	bl sub_02005748
_022521E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022521E8: .word 0x0000024A
_022521EC: .word 0x000005DC
	thumb_func_end ov23_022521C8

	thumb_func_start ov23_022521F0
ov23_022521F0: ; 0x022521F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r4, r1, #0
	bl sub_0203D174
	bl sub_020298B0
	bl sub_02028930
	add r7, r4, r0
	mov r4, #0
_0225220A:
	cmp r4, #0
	bne _02252212
	mov r5, #0x21
	b _0225222A
_02252212:
	ldr r0, _022522E0 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022522E4 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #5
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_0225222A:
	mov r0, #0
	cmp r4, #0
	ble _02252246
	mov r1, #0x21
	add r3, r0, #0
	lsl r1, r1, #4
_02252236:
	add r2, r6, r0
	ldrb r2, [r2, r1]
	cmp r5, r2
	bne _02252240
	add r5, r3, #0
_02252240:
	add r0, r0, #1
	cmp r0, r4
	blt _02252236
_02252246:
	cmp r5, #0
	bne _0225224E
	sub r4, r4, #1
	b _022522D6
_0225224E:
	add r0, r5, #0
	bl ov23_022542AC
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov23_022542BC
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0225226E
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225226E
	sub r4, r4, #1
	b _022522D6
_0225226E:
	mov r1, #0x21
	add r0, r6, r4
	lsl r1, r1, #4
	str r0, [sp]
	strb r5, [r0, r1]
	add r0, r5, #0
	bl ov23_0225429C
	ldr r1, _022522E8 ; =0x00000215
	ldr r2, [sp]
	strb r0, [r2, r1]
	add r0, r2, #0
	ldrb r0, [r0, r1]
	cmp r0, #6
	bne _022522A8
	ldr r0, _022522E0 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r0
	ldr r0, _022522E4 ; =0x00269EC3
	add r7, r2, r0
	lsr r2, r7, #0x10
	lsl r0, r2, #2
	add r0, r2, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r2, r0, #1
	ldr r0, [sp]
	strb r2, [r0, r1]
_022522A8:
	ldr r0, _022522E0 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022522E4 ; =0x00269EC3
	add r7, r1, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	bne _022522C2
	lsr r0, r7, #0x10
	b _022522C8
_022522C2:
	lsr r0, r7, #0x10
	mul r1, r0
	lsr r0, r1, #0x10
_022522C8:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	add r2, r0, r1
	ldr r1, _022522EC ; =0x0000021A
	ldr r0, [sp]
	strb r2, [r0, r1]
_022522D6:
	add r4, r4, #1
	cmp r4, #5
	blt _0225220A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022522E0: .word 0x5D588B65
_022522E4: .word 0x00269EC3
_022522E8: .word 0x00000215
_022522EC: .word 0x0000021A
	thumb_func_end ov23_022521F0

	thumb_func_start ov23_022522F0
ov23_022522F0: ; 0x022522F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r4, r1, #0
	bl sub_0203D174
	add r5, r0, #0
	bl sub_020298B0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02027560
	bl sub_02027474
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02028930
	add r7, r4, r0
	mov r4, #0
_0225231C:
	ldr r0, _022523F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022523F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	mov r0, #0x8a
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
	mov r0, #0
	cmp r4, #0
	ble _02252350
	mov r1, #0x21
	add r3, r0, #0
	lsl r1, r1, #4
_02252340:
	add r2, r6, r0
	ldrb r2, [r2, r1]
	cmp r5, r2
	bne _0225234A
	add r5, r3, #0
_0225234A:
	add r0, r0, #1
	cmp r0, r4
	blt _02252340
_02252350:
	cmp r5, #0
	bne _02252358
	sub r4, r4, #1
	b _022523EA
_02252358:
	mov r1, #0x21
	add r0, r6, r4
	lsl r1, r1, #4
	str r0, [sp]
	strb r5, [r0, r1]
	add r0, r5, #0
	bl sub_0205742C
	ldr r2, _022523FC ; =0x00000215
	ldr r1, [sp]
	strb r0, [r1, r2]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02252382
	add r0, r5, #0
	bl sub_0205747C
	cmp r0, #1
	bne _02252382
	sub r4, r4, #1
	b _022523EA
_02252382:
	ldr r0, _022523FC ; =0x00000215
	ldr r1, [sp]
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02252390
	sub r4, r4, #1
	b _022523EA
_02252390:
	cmp r1, #6
	bne _022523B0
	ldr r1, _022523F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022523F8 ; =0x00269EC3
	add r7, r2, r1
	lsr r2, r7, #0x10
	lsl r1, r2, #2
	add r1, r2, r1
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r1, #1
	ldr r1, [sp]
	strb r2, [r1, r0]
_022523B0:
	add r0, r5, #0
	bl sub_0205743C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205744C
	ldr r1, _022523F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022523F8 ; =0x00269EC3
	add r7, r2, r1
	ldr r1, [sp, #8]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	bne _022523D6
	lsr r0, r7, #0x10
	b _022523DC
_022523D6:
	lsr r0, r7, #0x10
	mul r1, r0
	lsr r0, r1, #0x10
_022523DC:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #8]
	add r2, r0, r1
	ldr r1, _02252400 ; =0x0000021A
	ldr r0, [sp]
	strb r2, [r0, r1]
_022523EA:
	add r4, r4, #1
	cmp r4, #5
	blt _0225231C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022523F4: .word 0x5D588B65
_022523F8: .word 0x00269EC3
_022523FC: .word 0x00000215
_02252400: .word 0x0000021A
	thumb_func_end ov23_022522F0

	thumb_func_start ov23_02252404
ov23_02252404: ; 0x02252404
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r7, r2, #0
	add r4, r1, #0
	bl sub_0203D174
	bl sub_020298B0
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0224F684
	ldr r1, _022524A4 ; =0x00000215
	add r2, r5, r4
	ldrb r1, [r2, r1]
	cmp r1, r0
	beq _02252432
	ldr r0, _022524A8 ; =0x0000FFFD
	pop {r3, r4, r5, r6, r7, pc}
_02252432:
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0224F69C
	ldr r1, _022524AC ; =0x0000021A
	add r2, r5, r4
	add r3, r0, #0
	ldrb r0, [r2, r1]
	cmp r0, r3
	ble _0225244A
	ldr r0, _022524B0 ; =0x0000FFFB
	pop {r3, r4, r5, r6, r7, pc}
_0225244A:
	add r0, r1, #0
	add r0, #0x2e
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _02252462
	sub r1, #0xa
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02028E84
	str r0, [sp]
	b _02252484
_02252462:
	cmp r0, #0
	bne _02252474
	sub r1, #0xa
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02028BC8
	str r0, [sp]
	b _02252484
_02252474:
	cmp r0, #2
	bne _02252484
	sub r1, #0xa
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02028DB4
	str r0, [sp]
_02252484:
	ldr r0, [sp]
	cmp r0, #0
	beq _02252494
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02028C6C
	b _02252498
_02252494:
	ldr r0, _022524B4 ; =0x0000FFFC
	pop {r3, r4, r5, r6, r7, pc}
_02252498:
	mov r0, #0x21
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022524A4: .word 0x00000215
_022524A8: .word 0x0000FFFD
_022524AC: .word 0x0000021A
_022524B0: .word 0x0000FFFB
_022524B4: .word 0x0000FFFC
	thumb_func_end ov23_02252404

	thumb_func_start ov23_022524B8
ov23_022524B8: ; 0x022524B8
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #3
	cmp r0, #2
	bne _022524CC
	mov r4, #2
_022524CC:
	add r0, r5, #0
	bl ov23_0224FB7C
	add r0, r4, #0
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02252654 ; =0x000001EF
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02252658 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #1
	bne _02252562
	sub r1, #0x24
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov23_022521F0
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0xd
	mov r3, #0
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0xe
	mov r3, #1
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	mov r2, #0xf
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	sub r3, #0x11
	bl sub_02013A4C
	b _022525DA
_02252562:
	cmp r0, #0
	bne _022525B0
	sub r1, #0x24
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov23_022522F0
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0x10
	mov r3, #0
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0x11
	mov r3, #1
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	mov r2, #0x12
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	sub r3, #0x14
	bl sub_02013A4C
	b _022525DA
_022525B0:
	bl ov23_022421BC
	bl ov23_02253E3C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	mov r2, #0x1c
	mov r3, #0
	bl sub_02013A4C
	bl ov23_022421BC
	bl ov23_02253E3C
	mov r2, #0x16
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [r5, #0x40]
	sub r3, #0x18
	bl sub_02013A4C
_022525DA:
	bl ov23_02253D40
	add r1, sp, #0x14
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x20]
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	mov r0, #0x13
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x13
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r2, sp, #0x14
	ldrh r1, [r2, #0x12]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x14
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r0, #0x1e
	strh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A954
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02252654: .word 0x000001EF
_02252658: .word 0x000003D9
	thumb_func_end ov23_022524B8

	thumb_func_start ov23_0225265C
ov23_0225265C: ; 0x0225265C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0x13
	add r6, r0, #0
	add r7, r2, #0
	bl sub_02001504
	add r4, r0, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r1, _02252748 ; =0x00000247
	ldr r2, [r4, #0x68]
	ldrb r1, [r4, r1]
	add r1, #0x17
	bl sub_0200B1B8
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x68]
	add r0, #0x20
	bl sub_0201D738
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _022526FE
	ldr r2, _0225274C ; =0x00000215
	add r3, r4, r5
	ldrb r2, [r3, r2]
	ldr r0, [r4, #0x70]
	mov r1, #2
	bl sub_0200BA94
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _02252750 ; =0x0000021A
	add r3, r4, r5
	ldrb r2, [r3, r2]
	ldr r0, [r4, #0x70]
	mov r1, #6
	mov r3, #2
	bl sub_0200B60C
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r4, #0x68]
	mov r1, #0x19
	bl sub_0200B1B8
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	bl sub_0200C388
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x20
	mov r3, #1
	bl sub_0201D738
_022526FE:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02252710
	add r5, r0, #0
_02252710:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02252728
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov23_0224FD84
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02252728:
	cmp r0, #0
	bne _0225273A
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov23_02250C3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225273A:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov23_02250540
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02252748: .word 0x00000247
_0225274C: .word 0x00000215
_02252750: .word 0x0000021A
	thumb_func_end ov23_0225265C

	thumb_func_start ov23_02252754
ov23_02252754: ; 0x02252754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r1, #0
	mov r1, #0x13
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	bl sub_02001504
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r5, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	sub r0, r5, #2
	cmp r6, r0
	bne _02252786
	b _022528FA
_02252786:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225280A
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224F66C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	bl sub_02028930
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x24]
	add r7, r0, r1
	bl ov23_0225429C
	add r5, r0, #0
	cmp r5, #6
	bne _022527CE
	ldr r0, _022529F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022529F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_022527CE:
	ldr r0, [sp, #0x24]
	bl ov23_022542AC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	bl ov23_022542BC
	ldr r1, _022529F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022529F8 ; =0x00269EC3
	add r1, r2, r1
	ldr r2, [sp, #0x28]
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _022527F2
	b _022527F8
_022527F2:
	lsr r0, r1, #0x10
	add r1, r0, #0
	mul r1, r2
_022527F8:
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r7, r0, #1
	b _022528FA
_0225280A:
	cmp r0, #0
	bne _02252888
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224F61C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	bl sub_02028930
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x20]
	add r7, r0, r1
	bl sub_0205742C
	add r5, r0, #0
	cmp r5, #6
	bne _0225284C
	ldr r0, _022529F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022529F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_0225284C:
	ldr r0, [sp, #0x20]
	bl sub_0205743C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	bl sub_0205744C
	ldr r1, _022529F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022529F8 ; =0x00269EC3
	add r1, r2, r1
	ldr r2, [sp, #0x14]
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _02252870
	b _02252876
_02252870:
	lsr r0, r1, #0x10
	add r1, r0, #0
	mul r1, r2
_02252876:
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r7, r0, #1
	b _022528FA
_02252888:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224F6C8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	bl sub_02028930
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r0
	ldr r0, [sp, #0x1c]
	add r7, r0, r1
	bl ov23_0225426C
	add r5, r0, #0
	cmp r5, #6
	bne _022528C6
	ldr r0, _022529F4 ; =0x5D588B65
	add r1, r7, #0
	mul r1, r0
	ldr r0, _022529F8 ; =0x00269EC3
	add r7, r1, r0
	lsr r1, r7, #0x10
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r0, #1
_022528C6:
	ldr r0, [sp, #0x1c]
	bl ov23_0225427C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl ov23_0225428C
	ldr r1, _022529F4 ; =0x5D588B65
	add r2, r7, #0
	mul r2, r1
	ldr r1, _022529F8 ; =0x00269EC3
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _022528EA
	b _022528F0
_022528EA:
	lsr r0, r1, #0x10
	add r1, r0, #0
	mul r1, r2
_022528F0:
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x18]
	add r7, r0, r1
_022528FA:
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r1, _022529FC ; =0x00000247
	ldr r2, [r4, #0x68]
	ldrb r1, [r4, r1]
	add r1, #0x17
	bl sub_0200B1B8
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x68]
	add r0, #0x20
	bl sub_0201D738
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _022529B4
	cmp r5, #0
	beq _02252988
	ldr r0, [r4, #0x70]
	mov r1, #2
	add r2, r5, #0
	bl sub_0200BA94
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	mov r1, #6
	add r2, r7, #0
	mov r3, #2
	bl sub_0200B60C
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r4, #0x68]
	mov r1, #0x19
	bl sub_0200B1B8
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	bl sub_0200C388
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x20
	mov r3, #1
	bl sub_0201D738
	ldr r0, _02252A00 ; =0x00000215
	strb r5, [r4, r0]
	add r0, r0, #5
	strb r7, [r4, r0]
	b _022529B4
_02252988:
	ldr r0, _02252A00 ; =0x00000215
	strb r5, [r4, r0]
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r4, #0x68]
	mov r1, #0x1a
	bl sub_0200B1B8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x68]
	add r0, #0x20
	mov r3, #1
	bl sub_0201D738
_022529B4:
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _022529D4
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov23_0224FD84
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_022529D4:
	cmp r0, #0
	bne _022529E6
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov23_02250C3C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_022529E6:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov23_02250540
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022529F4: .word 0x5D588B65
_022529F8: .word 0x00269EC3
_022529FC: .word 0x00000247
_02252A00: .word 0x00000215
	thumb_func_end ov23_02252754

	thumb_func_start ov23_02252A04
ov23_02252A04: ; 0x02252A04
	cmp r0, #5
	blt _02252A0C
	mov r0, #0
	bx lr
_02252A0C:
	add r1, r1, r0
	mov r0, #0x21
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02252A04

	thumb_func_start ov23_02252A18
ov23_02252A18: ; 0x02252A18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl ov23_0224FB7C
	mov r0, #6
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x40]
	mov r2, #3
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02252B78 ; =0x0000015F
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02252B7C ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0x92
	lsl r2, r2, #2
	ldrb r0, [r5, r2]
	cmp r0, #1
	bne _02252A80
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2e
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	bl ov23_022421DC
	ldr r1, _02252B80 ; =0x00000276
	mov r2, #0
	bl ov23_02253DFC
	b _02252ABC
_02252A80:
	cmp r0, #0
	bne _02252AA0
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2a
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	bl ov23_022421DC
	ldr r1, _02252B84 ; =0x00000272
	mov r2, #0
	bl ov23_02253DFC
	b _02252ABC
_02252AA0:
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2c
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	bl ov23_022421DC
	mov r1, #0x9d
	lsl r1, r1, #2
	mov r2, #0
	bl ov23_02253DFC
_02252ABC:
	mov r7, #0x21
	mov r4, #0
	lsl r7, r7, #4
_02252AC2:
	add r2, r5, r4
	ldrb r2, [r2, r7]
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #5
	blt _02252AC2
	mov r2, #0
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	sub r3, r2, #2
	bl sub_02013A4C
	add r0, r6, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x14
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, [r5, #0x40]
	mov r1, #6
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, _02252B88 ; =ov23_0225265C
	ldr r1, _02252B8C ; =ov23_02252A04
	str r0, [sp, #0x18]
	mov r0, #0x81
	str r5, [sp, #0x30]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x44
	ldrb r0, [r5, r0]
	add r0, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0x18
	ldrb r0, [r5, r1]
	add r0, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r1, #0x1e
	strh r0, [r5, r1]
	add r2, sp, #0x14
	ldrh r1, [r2, #0x12]
	ldrh r2, [r2, #0x10]
	add r0, r5, #0
	bl ov23_02251238
	mov r2, #0x23
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0x14
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x48]
	add r5, #0x10
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02252B78: .word 0x0000015F
_02252B7C: .word 0x000003D9
_02252B80: .word 0x00000276
_02252B84: .word 0x00000272
_02252B88: .word ov23_0225265C
_02252B8C: .word ov23_02252A04
	thumb_func_end ov23_02252A18

	thumb_func_start ov23_02252B90
ov23_02252B90: ; 0x02252B90
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	beq _02252BB0
	add r0, r4, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A8FC
_02252BB0:
	add r0, r4, #0
	bl ov23_0224FB7C
	pop {r4, pc}
	thumb_func_end ov23_02252B90

	thumb_func_start ov23_02252BB8
ov23_02252BB8: ; 0x02252BB8
	push {r4, lr}
	mov r2, #0x92
	add r4, r1, #0
	lsl r2, r2, #2
	ldrb r2, [r4, r2]
	cmp r2, #1
	bne _02252BD4
	bl ov23_0224F66C
	add r1, r0, #0
	mov r0, #2
	bl ov23_02252CF4
	b _02252BF2
_02252BD4:
	cmp r2, #0
	bne _02252BE6
	bl ov23_0224F61C
	add r1, r0, #0
	mov r0, #2
	bl ov23_02252D08
	b _02252BF2
_02252BE6:
	bl ov23_0224F6C8
	add r1, r0, #0
	mov r0, #2
	bl ov23_02252CE0
_02252BF2:
	ldr r1, _02252C04 ; =0x00000215
	mov r0, #4
	ldrb r1, [r4, r1]
	bl ov23_02252CE0
	mov r0, #0xa
	bl ov23_02252C9C
	pop {r4, pc}
	; .align 2, 0
_02252C04: .word 0x00000215
	thumb_func_end ov23_02252BB8

	thumb_func_start ov23_02252C08
ov23_02252C08: ; 0x02252C08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203D174
	bl sub_020298B0
	ldr r1, _02252C68 ; =0x00000215
	add r4, r0, #0
	ldrb r0, [r5, r1]
	add r1, r1, #5
	ldrb r1, [r5, r1]
	bl ov23_0224F6E0
	cmp r0, #0
	beq _02252C62
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #1
	bne _02252C3E
	sub r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl sub_02028E50
	b _02252C5C
_02252C3E:
	cmp r0, #0
	bne _02252C4E
	sub r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl sub_02028B94
	b _02252C5C
_02252C4E:
	cmp r0, #2
	bne _02252C5C
	sub r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl sub_02028D80
_02252C5C:
	ldr r0, _02252C68 ; =0x00000215
	ldrb r0, [r5, r0]
	pop {r3, r4, r5, pc}
_02252C62:
	ldr r0, _02252C6C ; =0x0000FFFC
	pop {r3, r4, r5, pc}
	nop
_02252C68: .word 0x00000215
_02252C6C: .word 0x0000FFFC
	thumb_func_end ov23_02252C08

	thumb_func_start ov23_02252C70
ov23_02252C70: ; 0x02252C70
	ldr r0, _02252C74 ; =0x0000FFFE
	bx lr
	; .align 2, 0
_02252C74: .word 0x0000FFFE
	thumb_func_end ov23_02252C70

	thumb_func_start ov23_02252C78
ov23_02252C78: ; 0x02252C78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02252C78

	thumb_func_start ov23_02252C98
ov23_02252C98: ; 0x02252C98
	mov r0, #0
	bx lr
	thumb_func_end ov23_02252C98

	thumb_func_start ov23_02252C9C
ov23_02252C9C: ; 0x02252C9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov23_022421BC
	mov r1, #0x9f
	lsl r1, r1, #2
	mov r2, #1
	bl ov23_02253DFC
	bl ov23_022421BC
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02254068
	bl ov23_022421BC
	mov r2, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252C9C

	thumb_func_start ov23_02252CD4
ov23_02252CD4: ; 0x02252CD4
	push {r3, lr}
	bl ov23_022421BC
	bl ov23_02254044
	pop {r3, pc}
	thumb_func_end ov23_02252CD4

	thumb_func_start ov23_02252CE0
ov23_02252CE0: ; 0x02252CE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov23_022541A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252CE0

	thumb_func_start ov23_02252CF4
ov23_02252CF4: ; 0x02252CF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov23_022541B4
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252CF4

	thumb_func_start ov23_02252D08
ov23_02252D08: ; 0x02252D08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov23_022541C8
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02252D08

	thumb_func_start ov23_02252D1C
ov23_02252D1C: ; 0x02252D1C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	bne _02252D5A
	mov r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r1, #0x20
	mov r2, #3
	bl sub_0201A7E8
	add r0, r4, #0
	ldr r2, _02252D70 ; =0x000003D9
	add r0, #0x20
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
_02252D5A:
	add r0, r4, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02252D70: .word 0x000003D9
	thumb_func_end ov23_02252D1C

	thumb_func_start ov23_02252D74
ov23_02252D74: ; 0x02252D74
	push {r4, r5, lr}
	sub sp, #0x14
	mov r3, #1
	add r5, r0, #0
	str r3, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x33
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r1, r5, #0
	ldr r0, [r0, #8]
	add r1, #0x30
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02252DF0 ; =0x000003D9
	add r0, #0x30
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x30
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A954
	bl ov23_022421BC
	bl ov23_02253E3C
	ldr r2, [r5, #0x68]
	add r1, r4, #0
	bl sub_0200B1B8
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x68]
	add r0, #0x30
	bl sub_0201D738
	add r5, #0x30
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02252DF0: .word 0x000003D9
	thumb_func_end ov23_02252D74

	thumb_func_start ov23_02252DF4
ov23_02252DF4: ; 0x02252DF4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl sub_0201A7CC
	cmp r0, #0
	beq _02252E14
	add r0, r4, #0
	add r0, #0x30
	mov r1, #1
	bl sub_0200DC9C
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201A8FC
_02252E14:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02252DF4

	thumb_func_start ov23_02252E18
ov23_02252E18: ; 0x02252E18
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl sub_0201A7CC
	cmp r0, #0
	beq _02252E38
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0
	bl sub_0200DC9C
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201A8FC
_02252E38:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02252E18

	thumb_func_start ov23_02252E3C
ov23_02252E3C: ; 0x02252E3C
	push {r3, r4, r5, lr}
	ldr r5, _02252E6C ; =0x02257674
	mov r3, #0
_02252E42:
	ldrh r4, [r5, #2]
	cmp r0, r4
	bne _02252E5C
	ldrh r4, [r5, #4]
	cmp r1, r4
	bne _02252E5C
	mov r0, #6
	add r1, r3, #0
	mul r1, r0
	ldr r0, _02252E6C ; =0x02257674
	str r3, [r2, #0]
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02252E5C:
	add r3, r3, #1
	add r5, r5, #6
	cmp r3, #0x14
	blt _02252E42
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02252E6C: .word 0x02257674
	thumb_func_end ov23_02252E3C

	thumb_func_start ov23_02252E70
ov23_02252E70: ; 0x02252E70
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _022531A8 ; =0x00000246
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0x12
	bhi _02252F40
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252E8C: ; jump table
	.short _02252EB2 - _02252E8C - 2 ; case 0
	.short _02252ED2 - _02252E8C - 2 ; case 1
	.short _02252EE8 - _02252E8C - 2 ; case 2
	.short _02252EF8 - _02252E8C - 2 ; case 3
	.short _02252F9C - _02252E8C - 2 ; case 4
	.short _02252FB2 - _02252E8C - 2 ; case 5
	.short _0225307E - _02252E8C - 2 ; case 6
	.short _0225309E - _02252E8C - 2 ; case 7
	.short _02253104 - _02252E8C - 2 ; case 8
	.short _02253200 - _02252E8C - 2 ; case 9
	.short _02253252 - _02252E8C - 2 ; case 10
	.short _022531F0 - _02252E8C - 2 ; case 11
	.short _02253278 - _02252E8C - 2 ; case 12
	.short _022532F0 - _02252E8C - 2 ; case 13
	.short _02253384 - _02252E8C - 2 ; case 14
	.short _022533AE - _02252E8C - 2 ; case 15
	.short _022533F8 - _02252E8C - 2 ; case 16
	.short _0225343A - _02252E8C - 2 ; case 17
	.short _0225344A - _02252E8C - 2 ; case 18
_02252EB2:
	add r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _02252EC2
	mov r0, #0x1b
	bl ov23_02252C9C
	b _02252EC8
_02252EC2:
	mov r0, #0
	bl ov23_02252C9C
_02252EC8:
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #1
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252ED2:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02252F40
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252EE8:
	add r0, r4, #0
	bl ov23_022524B8
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #3
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252EF8:
	ldr r0, [r4, #0x48]
	bl sub_02001288
	add r5, r0, #0
	add r1, sp, #4
	ldr r0, [r4, #0x48]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	add r2, sp, #4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0x13
	bl ov23_022430E0
	ldr r1, _022531AC ; =0x0000024A
	ldr r0, [r4, #0x48]
	ldrh r6, [r4, r1]
	add r1, r4, r1
	bl sub_020014D0
	ldr r0, _022531AC ; =0x0000024A
	ldrh r0, [r4, r0]
	cmp r6, r0
	beq _02252F32
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
_02252F32:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02252F44
	add r0, r0, #1
	cmp r5, r0
	bne _02252F42
_02252F40:
	b _02253478
_02252F42:
	b _02252F5C
_02252F44:
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	bl ov23_02252B90
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #0x11
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F5C:
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #2
	bne _02252F76
	mov r2, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r2, #0xc
	sub r0, r1, #2
	add sp, #8
	strb r2, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F76:
	sub r0, r1, #1
	strb r5, [r4, r0]
	cmp r5, #0
	ldr r0, _022531B0 ; =0x000005DC
	bne _02252F8E
	bl sub_02005748
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #4
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F8E:
	bl sub_02005748
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #0xc
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252F9C:
	add r0, r4, #0
	bl ov23_02252D1C
	add r0, r4, #0
	bl ov23_02252A18
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #5
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02252FB2:
	ldr r0, [r4, #0x48]
	bl sub_02001288
	add r5, r0, #0
	add r1, sp, #4
	ldr r0, [r4, #0x48]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r2, sp, #4
	ldrh r1, [r2]
	add r0, #0xd
	lsl r0, r0, #0x10
	ldrh r2, [r2, #2]
	lsr r0, r0, #0x10
	bl ov23_022430E0
	ldr r1, _022531AC ; =0x0000024A
	ldr r0, [r4, #0x48]
	ldrh r6, [r4, r1]
	add r1, r4, r1
	bl sub_020014D0
	ldr r0, _022531AC ; =0x0000024A
	ldrh r0, [r4, r0]
	cmp r6, r0
	beq _02252FF6
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
_02252FF6:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _02253000
	add r5, r0, #0
_02253000:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02253010
	bl ov23_022421DC
	bl ov23_02254044
_02253010:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02253020
	add r0, r0, #1
	cmp r5, r0
	beq _02253110
	b _02253038
_02253020:
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253038:
	ldr r0, _022531B0 ; =0x000005DC
	bl sub_02005748
	mov r1, #0x91
	lsl r1, r1, #2
	strb r5, [r4, r1]
	add r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225305C
	ldrb r2, [r4, r1]
	sub r1, #0x34
	mov r0, #2
	add r2, r4, r2
	ldrb r1, [r2, r1]
	bl ov23_02252CF4
	b _0225306E
_0225305C:
	cmp r0, #0
	bne _0225306E
	ldrb r2, [r4, r1]
	sub r1, #0x34
	mov r0, #2
	add r2, r4, r2
	ldrb r1, [r2, r1]
	bl ov23_02252D08
_0225306E:
	mov r0, #1
	bl ov23_02252C9C
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #6
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225307E:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253110
	ldr r0, _022531B4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253110
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #7
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225309E:
	add r0, r4, #0
	bl ov23_0224FB7C
	mov r0, #0xc
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov23_02250184
	add r0, r4, #0
	mov r1, #0x13
	bl ov23_02252D74
	mov r2, #0x92
	lsl r2, r2, #2
	ldrb r0, [r4, r2]
	cmp r0, #1
	bne _022530E6
	sub r1, r2, #4
	ldrb r1, [r4, r1]
	sub r2, #0x38
	mov r0, #2
	add r1, r4, r1
	ldrb r1, [r1, r2]
	bl ov23_02252CF4
	b _022530FA
_022530E6:
	cmp r0, #0
	bne _022530FA
	sub r1, r2, #4
	ldrb r1, [r4, r1]
	sub r2, #0x38
	mov r0, #2
	add r1, r4, r1
	ldrb r1, [r1, r2]
	bl ov23_02252D08
_022530FA:
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #8
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253104:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	beq _02253112
_02253110:
	b _02253478
_02253112:
	ldr r0, [r4, #0x4c]
	bl ov23_02248D20
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, sp, #4
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	add r2, sp, #4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xc
	bl ov23_022430E0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02253144
	bl ov23_022421DC
	bl ov23_02254044
_02253144:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02253154
	add r0, r0, #1
	cmp r5, r0
	beq _02253216
	b _02253164
_02253154:
	add r0, r4, #0
	bl ov23_02252DF4
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #4
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253164:
	mov r1, #0x91
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r4, #0
	add r2, r5, #0
	bl ov23_02252404
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	add r0, r4, #0
	bl ov23_02252DF4
	ldr r1, _022531B8 ; =0x0000FFFC
	cmp r5, r1
	bne _02253198
	mov r0, #3
	bl ov23_02252C9C
	ldr r0, _022531A8 ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253198:
	add r0, r1, #1
	cmp r5, r0
	bne _022531C4
	mov r0, #4
	bl ov23_02252C9C
	ldr r0, _022531A8 ; =0x00000246
	b _022531BC
	; .align 2, 0
_022531A8: .word 0x00000246
_022531AC: .word 0x0000024A
_022531B0: .word 0x000005DC
_022531B4: .word 0x021BF67C
_022531B8: .word 0x0000FFFC
_022531BC:
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022531C4:
	sub r0, r1, #1
	cmp r5, r0
	bne _022531DA
	mov r0, #5
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022531DA:
	mov r0, #0x91
	lsl r0, r0, #2
	strb r5, [r4, r0]
	mov r0, #2
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #9
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022531F0:
	mov r0, #3
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253200:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253216
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02253218
_02253216:
	b _02253478
_02253218:
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _0225322E
	sub r1, r1, #4
	ldrb r1, [r4, r1]
	mov r0, #2
	bl ov23_02252CF4
	b _0225323C
_0225322E:
	cmp r0, #0
	bne _0225323C
	sub r1, r1, #4
	ldrb r1, [r4, r1]
	mov r0, #2
	bl ov23_02252D08
_0225323C:
	mov r0, #6
	bl ov23_02252C9C
	ldr r0, _02253484 ; =0x000005E3
	bl sub_02005748
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253252:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253354
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253354
	mov r0, #8
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253278:
	add r0, r4, #0
	bl ov23_02252D1C
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_0224318C
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0x1c
	ldrb r0, [r4, r1]
	add r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_02243154
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _02253488 ; =ov23_02252754
	add r1, #0x18
	str r0, [r4, #0x60]
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _022532C4
	add r0, r4, #0
	bl ov23_0224FDBC
	add r0, r4, #0
	mov r1, #0x14
	bl ov23_02252D74
	b _022532E6
_022532C4:
	cmp r0, #0
	bne _022532D8
	add r0, r4, #0
	bl ov23_02250CB0
	add r0, r4, #0
	mov r1, #0x15
	bl ov23_02252D74
	b _022532E6
_022532D8:
	add r0, r4, #0
	bl ov23_02250578
	add r0, r4, #0
	mov r1, #0x1d
	bl ov23_02252D74
_022532E6:
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xd
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022532F0:
	ldr r0, [r4, #0x4c]
	bl ov23_02248D20
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, sp, #4
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #4
	bl sub_020014DC
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r2, sp, #4
	ldrh r1, [r2]
	add r0, #0x10
	lsl r0, r0, #0x10
	ldrh r2, [r2, #2]
	lsr r0, r0, #0x10
	bl ov23_022430E0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0225332C
	add r0, r0, #1
	cmp r5, r0
	beq _02253354
	b _0225334C
_0225332C:
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	add r0, r4, #0
	bl ov23_02252DF4
	ldr r0, _0225347C ; =0x00000246
	mov r1, #2
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225334C:
	ldr r0, _0225348C ; =0x00000215
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02253356
_02253354:
	b _02253478
_02253356:
	bl ov23_022421DC
	bl ov23_02254044
	mov r0, #0x91
	lsl r0, r0, #2
	strb r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov23_02252B90
	add r0, r4, #0
	bl ov23_02252DF4
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02252BB8
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xe
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02253384:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253478
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _02253490 ; =0x022569D8
	ldr r0, [r0, #8]
	ldr r2, _02253494 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x5c]
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xf
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022533AE:
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02253478
	cmp r0, #0
	bne _022533EA
	add r0, r4, #0
	bl ov23_02252C08
	ldr r1, _02253498 ; =0x0000FFFC
	cmp r0, r1
	bne _022533DC
	mov r0, #3
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	strb r1, [r4, r0]
	b _022533F0
_022533DC:
	mov r0, #0xb
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0x10
	strb r1, [r4, r0]
	b _022533F0
_022533EA:
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0x11
	strb r1, [r4, r0]
_022533F0:
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x5c]
	pop {r4, r5, r6, pc}
_022533F8:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253478
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253478
	bl ov23_022421BC
	ldr r1, _0225349C ; =0x0000021A
	ldrb r1, [r4, r1]
	bl ov23_0225412C
	ldr r1, _0225348C ; =0x00000215
	mov r0, #2
	ldrb r1, [r4, r1]
	bl ov23_02252CE0
	mov r0, #7
	bl ov23_02252C9C
	ldr r0, _02253484 ; =0x000005E3
	bl sub_02005748
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0xa
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225343A:
	mov r0, #9
	bl ov23_02252C9C
	ldr r0, _0225347C ; =0x00000246
	mov r1, #0x12
	add sp, #8
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0225344A:
	bl ov23_022421BC
	bl ov23_02254238
	cmp r0, #0
	bne _02253478
	ldr r0, _02253480 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02253478
	bl ov23_02252CD4
	add r0, r4, #0
	bl ov23_02252C78
	bl ov23_02243204
	add r0, r5, #0
	bl sub_0200DA58
	bl sub_02059514
_02253478:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225347C: .word 0x00000246
_02253480: .word 0x021BF67C
_02253484: .word 0x000005E3
_02253488: .word ov23_02252754
_0225348C: .word 0x00000215
_02253490: .word 0x022569D8
_02253494: .word 0x000003D9
_02253498: .word 0x0000FFFC
_0225349C: .word 0x0000021A
	thumb_func_end ov23_02252E70

	thumb_func_start ov23_022534A0
ov23_022534A0: ; 0x022534A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058D88
	str r0, [sp, #8]
	bl sub_0203608C
	bl sub_02058DC0
	str r0, [sp, #4]
	bl sub_0203608C
	bl sub_02058F50
	bl sub_02059328
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0xc
	bl ov23_02252E3C
	add r5, r0, #0
	add r0, r5, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov23_022430D0
	mov r1, #0x25
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x25
	mov r1, #0
	lsl r2, r2, #4
	add r6, r0, #0
	bl sub_020C4CF4
	mov r0, #0x92
	str r4, [r6, #0xc]
	lsl r0, r0, #2
	strb r5, [r6, r0]
	ldr r1, [sp, #0xc]
	sub r0, #0x24
	str r1, [r6, r0]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r6, #0x68]
	mov r0, #0x64
	mov r1, #4
	bl sub_02023790
	str r0, [r6, #0x6c]
	mov r0, #4
	bl sub_0200B358
	str r0, [r6, #0x70]
	ldr r0, _02253584 ; =0x00000246
	mov r1, #0
	strb r1, [r6, r0]
	ldr r0, _02253588 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0225358C ; =ov23_02252E70
	ldr r2, _02253590 ; =0x00002710
	add r1, r6, #0
	bl sub_0200D9E8
	str r0, [r6, #4]
	ldr r1, [r6, #4]
	ldr r2, _02253594 ; =ov23_02251270
	add r0, r6, #0
	bl ov23_022431EC
	ldr r0, [r6, #0xc]
	bl sub_0203A4B4
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0203A4BC
	add r5, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0225357E
_02253556:
	ldrh r1, [r5, #0x18]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _02253576
	ldrh r1, [r5, #0x1a]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02253576
	ldr r0, [r6, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	ldr r1, [sp]
	bl sub_02062974
_02253576:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, r7
	blt _02253556
_0225357E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253584: .word 0x00000246
_02253588: .word 0x000005DC
_0225358C: .word ov23_02252E70
_02253590: .word 0x00002710
_02253594: .word ov23_02251270
	thumb_func_end ov23_022534A0

	thumb_func_start ov23_02253598
ov23_02253598: ; 0x02253598
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x30
	add r5, r0, #0
	bl sub_020C4CF4
	ldr r0, _022535C8 ; =0x022577BC
	str r5, [r0, #0]
	str r6, [r5, #8]
	ldr r0, [r0, #0]
	str r4, [r0, #0xc]
	mov r0, #0xf
	bl sub_0202855C
	ldr r1, _022535C8 ; =0x022577BC
	ldr r2, [r1, #0]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0]
	add r0, #0x14
	bl sub_020361BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022535C8: .word 0x022577BC
	thumb_func_end ov23_02253598

	thumb_func_start ov23_022535CC
ov23_022535CC: ; 0x022535CC
	push {r3, lr}
	ldr r0, _022535E8 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_020181C4
	ldr r0, _022535E8 ; =0x022577BC
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _022535E8 ; =0x022577BC
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_022535E8: .word 0x022577BC
	thumb_func_end ov23_022535CC

	thumb_func_start ov23_022535EC
ov23_022535EC: ; 0x022535EC
	push {r3, lr}
	ldr r0, _02253600 ; =0x022577BC
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _022535FE
	ldr r1, [r1, #0]
	bl ov23_022537D4
_022535FE:
	pop {r3, pc}
	; .align 2, 0
_02253600: .word 0x022577BC
	thumb_func_end ov23_022535EC

	thumb_func_start ov23_02253604
ov23_02253604: ; 0x02253604
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02253604

	thumb_func_start ov23_02253608
ov23_02253608: ; 0x02253608
	mov r0, #0x30
	bx lr
	thumb_func_end ov23_02253608

	thumb_func_start ov23_0225360C
ov23_0225360C: ; 0x0225360C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	mov r0, #4
	str r1, [sp, #0xc]
	add r5, r2, #0
	str r3, [sp, #0x10]
	bl sub_0200B358
	str r0, [sp, #0x1c]
	mov r0, #0x1e
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x1e
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0xc]
	mov r1, #2
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x84
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #6
	mov r3, #5
	bl sub_0200B60C
	ldr r0, [sp, #0xc]
	mov r1, #5
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r3, #0x94
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x1c]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B498
	ldr r0, [sp, #0xc]
	mov r1, #4
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r3, #0x39
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	bl sub_0202958C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r1, #0x14
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x39
	str r1, [sp, #8]
	bl sub_0201D738
	mov r5, #0
	mov r6, #0x27
_02253738:
	ldr r0, [sp, #0xc]
	add r1, r5, #6
	add r2, r4, #0
	bl sub_0200B1B8
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0201D738
	add r5, r5, #1
	add r6, #0x10
	cmp r5, #7
	blt _02253738
	mov r0, #0
	ldr r6, _022537D0 ; =0x022576EC
	str r0, [sp, #0x14]
	mov r5, #0x27
_02253768:
	ldr r0, [sp, #0x10]
	ldr r1, [r6, #0]
	blx r1
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [sp, #0xc]
	mov r1, #0xd
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0x94
	bl sub_0201D738
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #7
	blt _02253768
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022537D0: .word 0x022576EC
	thumb_func_end ov23_0225360C

	thumb_func_start ov23_022537D4
ov23_022537D4: ; 0x022537D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _022537FE
	ldr r0, [r4, #4]
	blx r1
_022537FE:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _02253818 ; =0x022577BC
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #4]
	ldr r0, [r0, #0]
	str r2, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02253818: .word 0x022577BC
	thumb_func_end ov23_022537D4

	thumb_func_start ov23_0225381C
ov23_0225381C: ; 0x0225381C
	push {r3, lr}
	ldr r2, _02253830 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #3
	tst r2, r3
	beq _0225382C
	bl ov23_022537D4
_0225382C:
	pop {r3, pc}
	nop
_02253830: .word 0x021BF67C
	thumb_func_end ov23_0225381C

	thumb_func_start ov23_02253834
ov23_02253834: ; 0x02253834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x14]
	mov r0, #4
	mov r1, #0x2c
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2c
	bl sub_020C4CF4
	str r5, [r4, #0]
	add r1, r4, #0
	str r6, [r4, #4]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, #8
	mov r2, #3
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, #0
	ldr r2, _022538EC ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0xa
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #6
	mov r3, #4
	bl sub_0200B144
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022538AE
	ldr r0, _022538F0 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r3, [r0, #0xc]
	b _022538B4
_022538AE:
	ldr r0, _022538F0 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r3, [r0, #0x10]
_022538B4:
	add r0, r4, #0
	ldr r2, [sp, #0x14]
	add r0, #8
	add r1, r5, #0
	bl ov23_0225360C
	add r0, r4, #0
	add r0, #8
	bl sub_0201A9A4
	ldr r0, _022538F4 ; =0x000005FD
	bl sub_02005748
	ldr r0, _022538F8 ; =ov23_0225381C
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200D9E8
	ldr r1, _022538F0 ; =0x022577BC
	ldr r2, [r1, #0]
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	str r4, [r0, #0]
	add r0, r5, #0
	bl sub_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022538EC: .word 0x000003D9
_022538F0: .word 0x022577BC
_022538F4: .word 0x000005FD
_022538F8: .word ov23_0225381C
	thumb_func_end ov23_02253834

	thumb_func_start ov23_022538FC
ov23_022538FC: ; 0x022538FC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02028558
	add r4, r0, #0
	ldr r0, _02253960 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202CD88
	bl sub_0202D034
	add r6, r0, #0
	mov r0, #4
	add r1, r4, #1
	bl sub_02018144
	mov r1, #0
	add r2, r4, #1
	add r5, r0, #0
	bl sub_020C4CF4
	ldr r0, _02253964 ; =0x000F423F
	strb r7, [r5]
	cmp r6, r0
	blt _02253932
	add r6, r0, #0
_02253932:
	ldr r0, _02253960 ; =0x022577BC
	add r1, r6, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020294D4
	ldr r0, _02253960 ; =0x022577BC
	add r1, r5, #1
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_020C4DB0
	mov r0, #0x51
	add r1, r5, #0
	add r2, r4, #1
	bl sub_020359DC
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253960: .word 0x022577BC
_02253964: .word 0x000F423F
	thumb_func_end ov23_022538FC

	thumb_func_start ov23_02253968
ov23_02253968: ; 0x02253968
	push {r3, lr}
	ldr r0, _02253990 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202CD88
	bl sub_0202D034
	add r1, r0, #0
	ldr r0, _02253994 ; =0x000F423F
	cmp r1, r0
	blt _02253982
	add r1, r0, #0
_02253982:
	ldr r0, _02253990 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020294D4
	pop {r3, pc}
	nop
_02253990: .word 0x022577BC
_02253994: .word 0x000F423F
	thumb_func_end ov23_02253968

	thumb_func_start ov23_02253998
ov23_02253998: ; 0x02253998
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _022539A4 ; =sub_02035AC4
	mov r0, #0x52
	bx r3
	; .align 2, 0
_022539A4: .word sub_02035AC4
	thumb_func_end ov23_02253998

	thumb_func_start ov23_022539A8
ov23_022539A8: ; 0x022539A8
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _022539D0
	ldr r1, _022539D4 ; =0x022577BC
	add r0, r4, #1
	ldr r1, [r1, #0]
	sub r2, r5, #1
	ldr r1, [r1, #0x10]
	bl sub_020C4DB0
	ldr r0, _022539D4 ; =0x022577BC
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x2c
	strb r1, [r0]
_022539D0:
	pop {r3, r4, r5, pc}
	nop
_022539D4: .word 0x022577BC
	thumb_func_end ov23_022539A8

	thumb_func_start ov23_022539D8
ov23_022539D8: ; 0x022539D8
	ldr r0, _022539E4 ; =0x022577BC
	ldr r0, [r0, #0]
	add r0, #0x2c
	ldrb r0, [r0]
	bx lr
	nop
_022539E4: .word 0x022577BC
	thumb_func_end ov23_022539D8

	thumb_func_start ov23_022539E8
ov23_022539E8: ; 0x022539E8
	ldr r0, _022539F4 ; =0x022577BC
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x2c
	strb r1, [r0]
	bx lr
	; .align 2, 0
_022539F4: .word 0x022577BC
	thumb_func_end ov23_022539E8

	thumb_func_start ov23_022539F8
ov23_022539F8: ; 0x022539F8
	ldr r3, _022539FC ; =sub_02059514
	bx r3
	; .align 2, 0
_022539FC: .word sub_02059514
	thumb_func_end ov23_022539F8

	thumb_func_start ov23_02253A00
ov23_02253A00: ; 0x02253A00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	sub r0, #0x20
	lsl r1, r0, #2
	ldr r0, _02253A70 ; =0x022576EC
	cmp r5, #0x20
	ldr r4, [r0, r1]
	bge _02253A18
	bl sub_02022974
_02253A18:
	cmp r5, #0x2d
	ble _02253A20
	bl sub_02022974
_02253A20:
	bl sub_020594FC
	bl ov23_022421BC
	mov r1, #0xa
	lsl r1, r1, #6
	mov r2, #1
	bl ov23_02253DFC
	mov r0, #4
	bl sub_0202855C
	add r6, r0, #0
	bl sub_02028558
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020C4DB0
	add r0, r6, #0
	blx r4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020181C4
	bl ov23_022421BC
	add r1, r4, #0
	bl ov23_02254178
	bl ov23_022421BC
	ldr r3, _02253A74 ; =ov23_022539F8
	add r1, r5, #0
	mov r2, #1
	bl ov23_02253F40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253A70: .word 0x022576EC
_02253A74: .word ov23_022539F8
	thumb_func_end ov23_02253A00

	thumb_func_start ov23_02253A78
ov23_02253A78: ; 0x02253A78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x40]
	mov r0, #4
	add r5, r2, #0
	str r3, [sp, #0x14]
	bl sub_0200B358
	add r7, r0, #0
	mov r0, #0x28
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x28
	mov r1, #4
	bl sub_02023790
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_0200B498
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	mov r1, #0xd
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x14]
	bl sub_020295B8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	mov r1, #0xe
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r3, #0x66
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	mov r1, #0xf
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x34
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	mov r5, #0
	str r5, [sp, #0x20]
_02253B5E:
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x20]
	mov r1, #4
	bl sub_020288C8
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02253BF8
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B498
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x45
	str r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r6, #0
	mov r3, #2
	bl sub_0201D738
	ldr r0, [sp, #0x24]
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #5
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	mov r1, #0x11
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r3, #0x66
	bl sub_0201D738
	ldr r0, [sp, #0x24]
	bl sub_020181C4
	b _02253C42
_02253BF8:
	ldr r0, [sp, #0x10]
	mov r1, #0x33
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x45
	str r0, [sp, #0x18]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	mov r1, #0x34
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	mov r3, #0x66
	bl sub_0201D738
_02253C42:
	ldr r0, [sp, #0x20]
	add r5, #0x11
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _02253B5E
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02253A78

	thumb_func_start ov23_02253C64
ov23_02253C64: ; 0x02253C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x14]
	mov r0, #4
	mov r1, #0x2c
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x2c
	add r5, r0, #0
	bl sub_020C4CF4
	add r1, r5, #0
	ldr r0, [sp, #0x30]
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, #8
	mov r2, #3
	mov r3, #4
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02253D00 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _02253D04 ; =0x0000027F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r4, r0, #0
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	ldr r3, _02253D08 ; =0x022577BC
	str r6, [sp]
	ldr r3, [r3, #0]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0xc]
	add r0, #8
	add r1, r4, #0
	bl ov23_02253A78
	ldr r0, _02253D0C ; =0x000005FD
	bl sub_02005748
	add r0, r5, #0
	add r0, #8
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253D00: .word 0x000003D9
_02253D04: .word 0x0000027F
_02253D08: .word 0x022577BC
_02253D0C: .word 0x000005FD
	thumb_func_end ov23_02253C64

	thumb_func_start ov23_02253D10
ov23_02253D10: ; 0x02253D10
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02253D36
	ldr r0, [r4, #4]
	blx r1
_02253D36:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02253D10

	thumb_func_start ov23_02253D40
ov23_02253D40: ; 0x02253D40
	ldr r0, _02253D44 ; =0x022569E0
	bx lr
	; .align 2, 0
_02253D44: .word 0x022569E0
	thumb_func_end ov23_02253D40

	thumb_func_start ov23_02253D48
ov23_02253D48: ; 0x02253D48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x48
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02253D70
	mov r6, #0xe6
_02253D70:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0200B358
	str r0, [r4, #0x28]
	ldr r0, [sp]
	ldr r2, [sp]
	str r0, [r4, #0x2c]
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	str r0, [r4, #0x24]
	str r5, [r4, #0x34]
	add r0, r4, #0
	str r7, [r4, #0x18]
	add r0, #8
	bl sub_0201A7A0
	ldr r1, [r4, #0x44]
	mov r0, #1
	bic r1, r0
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0x44]
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [sp, #4]
	ldr r1, _02253DD4 ; =0x0000032D
	str r0, [r4, #0x38]
	add r0, r4, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	add r1, #0xb5
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02253DD4: .word 0x0000032D
	thumb_func_end ov23_02253D48

	thumb_func_start ov23_02253DD8
ov23_02253DD8: ; 0x02253DD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020237BC
	ldr r0, [r4, #4]
	bl sub_020237BC
	ldr r0, [r4, #0x28]
	bl sub_0200B3F0
	ldr r0, [r4, #0x24]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov23_02253DD8

	thumb_func_start ov23_02253DFC
ov23_02253DFC: ; 0x02253DFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	beq _02253E28
	str r4, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	bl sub_0200B190
	ldr r3, [r5, #0x34]
	add r0, r6, #0
	mov r1, #0x1a
	add r2, r4, #0
	bl sub_0200B144
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _02253E28
	bl sub_02022974
_02253E28:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253DFC

	thumb_func_start ov23_02253E2C
ov23_02253E2C: ; 0x02253E2C
	str r1, [r0, #0x18]
	add r1, r0, #0
	add r1, #0x42
	strh r2, [r1]
	add r0, #0x40
	strh r3, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02253E2C

	thumb_func_start ov23_02253E3C
ov23_02253E3C: ; 0x02253E3C
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov23_02253E3C

	thumb_func_start ov23_02253E40
ov23_02253E40: ; 0x02253E40
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bge _02253E56
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02253E66
_02253E56:
	ldr r0, _02253E68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02253E66
	add r0, r4, #0
	bl ov23_02254044
_02253E66:
	pop {r4, pc}
	; .align 2, 0
_02253E68: .word 0x021BF67C
	thumb_func_end ov23_02253E40

	thumb_func_start ov23_02253E6C
ov23_02253E6C: ; 0x02253E6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _02253E8C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #4]
	bl sub_0200C388
	ldr r1, [r4, #0x44]
	mov r0, #2
	ldr r2, [r4, #4]
	bic r1, r0
	str r1, [r4, #0x44]
_02253E8C:
	add r0, r2, #0
	pop {r4, pc}
	thumb_func_end ov23_02253E6C

	thumb_func_start ov23_02253E90
ov23_02253E90: ; 0x02253E90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov23_02253FA4
	bl ov23_022421EC
	add r0, r5, #0
	add r0, #8
	bl sub_0201A7CC
	cmp r0, #0
	bne _02253ED8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r1, r5, #0
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
_02253ED8:
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	add r2, r5, #0
	add r2, #0x42
	add r0, r5, #0
	ldrh r2, [r2]
	add r0, #8
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
	cmp r4, #0
	beq _02253F04
	ldr r0, _02253F3C ; =ov23_02253E40
	add r1, r5, #0
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r5, #0x20]
_02253F04:
	ldr r1, [r5, #0x44]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r1, r0
	mov r0, #4
	bic r1, r0
	add r0, r5, #0
	str r1, [r5, #0x44]
	bl ov23_02253E6C
	mov r3, #0
	str r3, [sp]
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #1
	str r0, [sp, #4]
	add r0, r5, #0
	str r3, [sp, #8]
	add r0, #8
	bl sub_0201D738
	str r0, [r5, #0x30]
	str r6, [r5, #0x1c]
	str r7, [r5, #0x3c]
	ldr r0, [r5, #0x30]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02253F3C: .word ov23_02253E40
	thumb_func_end ov23_02253E90

	thumb_func_start ov23_02253F40
ov23_02253F40: ; 0x02253F40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0]
	add r6, r3, #0
	bl sub_0200B1B8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov23_02253E90
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253F40

	thumb_func_start ov23_02253F60
ov23_02253F60: ; 0x02253F60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x38]
	mov r6, #0
	str r6, [r5, #0x38]
	bl ov23_02253F40
	mov r1, #8
	str r1, [r5, #0x30]
	str r4, [r5, #0x38]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253F60

	thumb_func_start ov23_02253F78
ov23_02253F78: ; 0x02253F78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0]
	add r6, r3, #0
	bl sub_0200B1B8
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov23_02253E90
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02253F78

	thumb_func_start ov23_02253F98
ov23_02253F98: ; 0x02253F98
	ldr r2, [r0, #0x44]
	mov r1, #4
	orr r1, r2
	str r1, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02253F98

	thumb_func_start ov23_02253FA4
ov23_02253FA4: ; 0x02253FA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x44]
	lsl r0, r1, #0x1f
	asr r0, r0, #0x1f
	beq _02254040
	mov r0, #1
	bic r1, r0
	str r1, [r5, #0x44]
	ldr r0, [r5, #0x30]
	cmp r0, #8
	bge _02253FD4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02253FD4
	ldr r0, [r5, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_02253FD4:
	cmp r4, #0
	beq _02253FE2
	cmp r4, #1
	beq _02253FEE
	cmp r4, #2
	beq _0225400A
	b _02254024
_02253FE2:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	b _02254024
_02253FEE:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #8
	bl sub_0201A8FC
	b _02254024
_0225400A:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #8
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #8
	bl sub_0201A8FC
_02254024:
	mov r0, #8
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02254036
	bl sub_0200DA58
	mov r0, #0
	str r0, [r5, #0x20]
_02254036:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _02254040
	ldr r0, [r5, #0x3c]
	blx r1
_02254040:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02253FA4

	thumb_func_start ov23_02254044
ov23_02254044: ; 0x02254044
	ldr r3, _0225404C ; =ov23_02253FA4
	mov r1, #2
	bx r3
	nop
_0225404C: .word ov23_02253FA4
	thumb_func_end ov23_02254044

	thumb_func_start ov23_02254050
ov23_02254050: ; 0x02254050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #1
	bl sub_0200B498
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254050

	thumb_func_start ov23_02254068
ov23_02254068: ; 0x02254068
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #0
	bl sub_0200B498
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254068

	thumb_func_start ov23_02254080
ov23_02254080: ; 0x02254080
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #2
	bl sub_0200BACC
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254080

	thumb_func_start ov23_02254098
ov23_02254098: ; 0x02254098
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #3
	bl sub_0200BB04
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_02254098

	thumb_func_start ov23_022540B0
ov23_022540B0: ; 0x022540B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #5
	bl sub_0200BC10
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540B0

	thumb_func_start ov23_022540C8
ov23_022540C8: ; 0x022540C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #5
	bl sub_0200BC48
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540C8

	thumb_func_start ov23_022540E0
ov23_022540E0: ; 0x022540E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BC48
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540E0

	thumb_func_start ov23_022540F4
ov23_022540F4: ; 0x022540F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	mov r1, #2
	bl sub_0200BC80
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022540F4

	thumb_func_start ov23_0225410C
ov23_0225410C: ; 0x0225410C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r4, #0x28]
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov23_0225410C

	thumb_func_start ov23_0225412C
ov23_0225412C: ; 0x0225412C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r1, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	mov r3, #2
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225412C

	thumb_func_start ov23_02254154
ov23_02254154: ; 0x02254154
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r3, #2
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02254154

	thumb_func_start ov23_02254178
ov23_02254178: ; 0x02254178
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r2, r1, #0
	str r0, [sp, #4]
	mov r1, #6
	ldr r0, [r4, #0x28]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02254178

	thumb_func_start ov23_022541A0
ov23_022541A0: ; 0x022541A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BA94
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541A0

	thumb_func_start ov23_022541B4
ov23_022541B4: ; 0x022541B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BB04
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541B4

	thumb_func_start ov23_022541C8
ov23_022541C8: ; 0x022541C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BC80
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541C8

	thumb_func_start ov23_022541DC
ov23_022541DC: ; 0x022541DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BACC
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541DC

	thumb_func_start ov23_022541F0
ov23_022541F0: ; 0x022541F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200BB3C
	ldr r1, [r4, #0x44]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ov23_022541F0

	thumb_func_start ov23_02254204
ov23_02254204: ; 0x02254204
	ldr r3, _0225420C ; =sub_0200C324
	ldr r0, [r0, #0x28]
	bx r3
	nop
_0225420C: .word sub_0200C324
	thumb_func_end ov23_02254204

	thumb_func_start ov23_02254210
ov23_02254210: ; 0x02254210
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bge _02254234
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02254234
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
	mov r0, #8
	str r0, [r4, #0x30]
_02254234:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02254210

	thumb_func_start ov23_02254238
ov23_02254238: ; 0x02254238
	push {r3, lr}
	ldr r0, [r0, #0x30]
	cmp r0, #8
	bne _02254244
	mov r0, #0
	pop {r3, pc}
_02254244:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02254238

	thumb_func_start ov23_02254250
ov23_02254250: ; 0x02254250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bge _0225426A
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0225426A
	mov r0, #8
	str r0, [r4, #0x30]
_0225426A:
	pop {r4, pc}
	thumb_func_end ov23_02254250

	thumb_func_start ov23_0225426C
ov23_0225426C: ; 0x0225426C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _02254278 ; =0x02256A00
	ldrb r0, [r0, r1]
	bx lr
	nop
_02254278: .word 0x02256A00
	thumb_func_end ov23_0225426C

	thumb_func_start ov23_0225427C
ov23_0225427C: ; 0x0225427C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _02254288 ; =0x02256A01
	ldrb r0, [r0, r1]
	bx lr
	nop
_02254288: .word 0x02256A01
	thumb_func_end ov23_0225427C

	thumb_func_start ov23_0225428C
ov23_0225428C: ; 0x0225428C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _02254298 ; =0x02256A02
	ldrb r0, [r0, r1]
	bx lr
	nop
_02254298: .word 0x02256A02
	thumb_func_end ov23_0225428C

	thumb_func_start ov23_0225429C
ov23_0225429C: ; 0x0225429C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _022542A8 ; =0x02256AB4
	ldrb r0, [r0, r1]
	bx lr
	nop
_022542A8: .word 0x02256AB4
	thumb_func_end ov23_0225429C

	thumb_func_start ov23_022542AC
ov23_022542AC: ; 0x022542AC
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _022542B8 ; =0x02256AB5
	ldrb r0, [r0, r1]
	bx lr
	nop
_022542B8: .word 0x02256AB5
	thumb_func_end ov23_022542AC

	thumb_func_start ov23_022542BC
ov23_022542BC: ; 0x022542BC
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _022542C8 ; =0x02256AB6
	ldrb r0, [r0, r1]
	bx lr
	nop
_022542C8: .word 0x02256AB6
	thumb_func_end ov23_022542BC

	thumb_func_start ov23_022542CC
ov23_022542CC: ; 0x022542CC
	ldr r3, _022542D4 ; =sub_02018144
	mov r0, #4
	mov r1, #0x44
	bx r3
	; .align 2, 0
_022542D4: .word sub_02018144
	thumb_func_end ov23_022542CC

	thumb_func_start ov23_022542D8
ov23_022542D8: ; 0x022542D8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [r0, #0]
	mov r5, #0
	add r4, #0x38
	strb r5, [r4]
	str r2, [r0, #0x30]
	str r3, [r0, #0x34]
	add r0, #0x40
	strh r5, [r0]
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	ldr r2, _02254308 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02254308: .word 0x000003D9
	thumb_func_end ov23_022542D8

	thumb_func_start ov23_0225430C
ov23_0225430C: ; 0x0225430C
	ldr r3, _02254310 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02254310: .word sub_020181C4
	thumb_func_end ov23_0225430C

	thumb_func_start ov23_02254314
ov23_02254314: ; 0x02254314
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end ov23_02254314

	thumb_func_start ov23_02254318
ov23_02254318: ; 0x02254318
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x38
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225432E
	cmp r1, #1
	beq _02254334
	cmp r1, #2
	beq _0225433A
	b _0225434A
_0225432E:
	bl ov23_0225437C
	b _0225434A
_02254334:
	bl ov23_022544C0
	b _0225434A
_0225433A:
	add r1, r0, #0
	mov r2, #0
	add r1, #0x38
	strb r2, [r1]
	bl ov23_0225451C
	mov r0, #1
	pop {r3, pc}
_0225434A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_02254318

	thumb_func_start ov23_02254350
ov23_02254350: ; 0x02254350
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _02254378 ; =0x02256B1C
	add r2, sp, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl ov23_022421CC
	lsl r2, r4, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	mov r2, #0
	add r3, r2, #0
	bl ov23_02253F60
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02254378: .word 0x02256B1C
	thumb_func_end ov23_02254350

	thumb_func_start ov23_0225437C
ov23_0225437C: ; 0x0225437C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x24]
	mov r2, #3
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _022544A4 ; =0x000001D7
	add r1, r5, #4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r3, #1
	add r1, r5, #0
	str r3, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _022544A8 ; =0x000001C9
	add r1, #0x14
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	ldr r2, _022544AC ; =0x000003D9
	add r0, r5, #4
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	ldr r2, _022544AC ; =0x000003D9
	add r0, #0x14
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r3, _022544B0 ; =0x02256B2C
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, _022544B4 ; =0x0000027D
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	mov r6, #0
	add r4, sp, #0x14
_02254436:
	ldr r0, [r5, #0x24]
	ldr r2, [r4, #0]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02013A4C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02254436
	add r0, r7, #0
	bl sub_0200B190
	ldr r4, _022544B8 ; =0x02256B3C
	add r3, sp, #0x24
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r3, #4
	add r0, sp, #0x14
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, r5, #4
	str r0, [sp, #0x30]
	ldr r0, _022544BC ; =ov23_02254350
	str r0, [sp, #0x28]
	add r0, r2, #0
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x34]
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_0200112C
	str r0, [r5, #0x28]
	add r0, r5, #4
	bl sub_0201A954
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A954
	mov r0, #1
	add r5, #0x38
	strb r0, [r5]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022544A4: .word 0x000001D7
_022544A8: .word 0x000001C9
_022544AC: .word 0x000003D9
_022544B0: .word 0x02256B2C
_022544B4: .word 0x0000027D
_022544B8: .word 0x02256B3C
_022544BC: .word ov23_02254350
	thumb_func_end ov23_0225437C

	thumb_func_start ov23_022544C0
ov23_022544C0: ; 0x022544C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_022549EC
	cmp r4, #3
	bne _022544DA
	mov r4, #1
	mvn r4, r4
_022544DA:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022544EA
	add r0, r0, #1
	cmp r4, r0
	bne _02254500
	pop {r3, r4, r5, pc}
_022544EA:
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	str r4, [r5, #0x3c]
	mov r0, #2
	add r5, #0x38
	strb r0, [r5]
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, pc}
_02254500:
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	str r4, [r5, #0x3c]
	mov r0, #2
	add r5, #0x38
	strb r0, [r5]
	ldr r0, _02254518 ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02254518: .word 0x000005DC
	thumb_func_end ov23_022544C0

	thumb_func_start ov23_0225451C
ov23_0225451C: ; 0x0225451C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421CC
	bl ov23_02254044
	add r0, r4, #0
	add r0, #0x14
	mov r1, #1
	bl sub_0200DC9C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	bl sub_02001384
	add r0, r4, #4
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0201C3C0
	add r0, r4, #4
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A8FC
	ldr r0, [r4, #0x24]
	bl sub_02013A3C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225451C

	thumb_func_start ov23_02254564
ov23_02254564: ; 0x02254564
	push {r3, lr}
	mov r2, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _0225457C
	add r1, r2, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, pc}
_0225457C:
	mov r1, #2
	mov r2, #0xf
	add r3, r1, #0
	bl sub_0200147C
	pop {r3, pc}
	thumb_func_end ov23_02254564

	thumb_func_start ov23_02254588
ov23_02254588: ; 0x02254588
	ldr r3, _02254590 ; =sub_02018144
	mov r0, #4
	mov r1, #0x4c
	bx r3
	; .align 2, 0
_02254590: .word sub_02018144
	thumb_func_end ov23_02254588

	thumb_func_start ov23_02254594
ov23_02254594: ; 0x02254594
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [r0, #0]
	mov r5, #0
	add r4, #0x42
	strb r5, [r4]
	str r5, [r0, #4]
	str r2, [r0, #0x38]
	str r3, [r0, #0x3c]
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	ldr r2, _022545C0 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022545C0: .word 0x000003D9
	thumb_func_end ov23_02254594

	thumb_func_start ov23_022545C4
ov23_022545C4: ; 0x022545C4
	add r3, r0, #0
	add r3, #0x40
	strb r1, [r3]
	add r0, #0x41
	strb r2, [r0]
	bx lr
	thumb_func_end ov23_022545C4

	thumb_func_start ov23_022545D0
ov23_022545D0: ; 0x022545D0
	ldr r3, _022545D4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_022545D4: .word sub_020181C4
	thumb_func_end ov23_022545D0

	thumb_func_start ov23_022545D8
ov23_022545D8: ; 0x022545D8
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end ov23_022545D8

	thumb_func_start ov23_022545DC
ov23_022545DC: ; 0x022545DC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x42
	ldrb r1, [r1]
	cmp r1, #0
	beq _022545F4
	cmp r1, #1
	beq _022545FA
	cmp r1, #2
	beq _02254600
	b _0225460E
_022545F4:
	bl ov23_022546E0
	b _0225460E
_022545FA:
	bl ov23_0225461C
	b _0225460E
_02254600:
	mov r1, #0
	add r4, #0x42
	strb r1, [r4]
	bl ov23_02254958
	mov r0, #1
	pop {r4, pc}
_0225460E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02254618
	bl sub_0206A870
_02254618:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov23_022545DC

	thumb_func_start ov23_0225461C
ov23_0225461C: ; 0x0225461C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl ov23_02248D20
	add r6, r0, #0
	ldr r0, [r5, #0x48]
	lsr r4, r6, #1
	cmp r0, r4
	bne _02254634
	mov r4, #1
	mvn r4, r4
_02254634:
	ldr r0, [r5, #0x2c]
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	ldr r0, [r5, #0x2c]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r7, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #3
	ldr r0, [r0, #0xc]
	bl sub_02001504
	add r3, r0, #0
	add r1, sp, #0
	lsl r2, r7, #0x10
	lsl r3, r3, #0x10
	ldrh r1, [r1, #2]
	ldr r0, [r5, #4]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov23_022549A8
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _0225467C
	add r0, r0, #1
	cmp r6, r0
	bne _0225468C
	pop {r3, r4, r5, r6, r7, pc}
_0225467C:
	str r0, [r5, #0x44]
	mov r0, #2
	add r5, #0x42
	strb r0, [r5]
	ldr r0, _0225469C ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_0225468C:
	str r4, [r5, #0x44]
	mov r0, #2
	add r5, #0x42
	strb r0, [r5]
	ldr r0, _0225469C ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225469C: .word 0x000005DC
	thumb_func_end ov23_0225461C

	thumb_func_start ov23_022546A0
ov23_022546A0: ; 0x022546A0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x13
	bl sub_02001504
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_02001504
	lsr r1, r4, #1
	sub r0, r0, #1
	cmp r1, r0
	bne _022546C2
	ldr r4, _022546DC ; =0x00000116
	b _022546CC
_022546C2:
	add r0, r6, #0
	bl sub_020289B8
	add r4, r0, #0
	add r4, #0x8a
_022546CC:
	bl ov23_022421DC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F60
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022546DC: .word 0x00000116
	thumb_func_end ov23_022546A0

	thumb_func_start ov23_022546E0
ov23_022546E0: ; 0x022546E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r7, r0, #0
	bl sub_020289A0
	str r0, [sp, #0x20]
	str r0, [r5, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #7
	ble _02254704
	mov r0, #7
	str r0, [sp, #0x1c]
_02254704:
	ldr r0, [sp, #0x20]
	mov r1, #4
	add r0, r0, #1
	bl sub_02013A04
	str r0, [r5, #0x28]
	mov r2, #3
	str r2, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02254930 ; =0x0000018F
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r3, #0x13
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r3, #1
	add r1, r5, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02254934 ; =0x0000016F
	add r1, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02254938 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	ldr r2, _02254938 ; =0x000003D9
	add r0, #0x18
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0225493C ; =0x00000272
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x18]
	ldr r2, _02254940 ; =0x0000027D
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x24]
	mov r1, #9
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	mov r1, #0xa
	bl sub_0200B1EC
	str r0, [sp, #0x2c]
	mov r0, #6
	mov r1, #4
	bl sub_02023790
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [sp, #0x28]
	add r0, #0x18
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	mov r0, #4
	bl sub_0200B358
	mov r1, #1
	str r1, [sp]
	add r2, r5, #0
	str r1, [sp, #4]
	add r2, #0x40
	ldrb r2, [r2]
	mov r1, #0
	mov r3, #2
	add r6, r0, #0
	bl sub_0200B60C
	mov r1, #1
	str r1, [sp]
	add r2, r5, #0
	str r1, [sp, #4]
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r6, #0
	mov r3, #2
	bl sub_0200B60C
	ldr r2, [sp, #0x2c]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C388
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r0, #0x18
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_0200B190
	ldr r0, [sp, #0x20]
	mov r4, #0
	cmp r0, #0
	ble _0225487E
	add r6, r4, #0
_02254848:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020289B8
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02254862
	mov r3, #1
	b _02254864
_02254862:
	mov r3, #0
_02254864:
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r3, r6, r3
	bl sub_02013A4C
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _02254848
_0225487E:
	lsl r3, r4, #1
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x18]
	ldr r2, _02254944 ; =0x00000115
	add r3, r3, #1
	bl sub_02013A4C
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	bl ov23_022421DC
	ldr r1, _0225493C ; =0x00000272
	mov r2, #0
	bl ov23_02253DFC
	ldr r4, _02254948 ; =0x02256B3C
	add r3, sp, #0x30
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _0225494C ; =ov23_02254564
	add r1, sp, #0x30
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	mov r3, #4
	add r0, r0, #1
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	strh r0, [r1, #0x12]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x3c]
	ldr r0, _02254950 ; =ov23_022546A0
	str r7, [sp, #0x4c]
	str r0, [sp, #0x34]
	ldr r0, _02254954 ; =0x02028A11
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r2, #0
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl ov23_02248C08
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #8
	bl sub_0201A954
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201A954
	mov r0, #4
	bl sub_0206A780
	str r0, [r5, #4]
	mov r1, #0xc8
	mov r2, #0x1a
	mov r3, #0x86
	bl sub_0206A8A0
	mov r1, #0
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl sub_0206A8C4
	ldr r0, [r5, #4]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	mov r0, #1
	add r5, #0x42
	strb r0, [r5]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02254930: .word 0x0000018F
_02254934: .word 0x0000016F
_02254938: .word 0x000003D9
_0225493C: .word 0x00000272
_02254940: .word 0x0000027D
_02254944: .word 0x00000115
_02254948: .word 0x02256B3C
_0225494C: .word ov23_02254564
_02254950: .word ov23_022546A0
_02254954: .word 0x02028A11
	thumb_func_end ov23_022546E0

	thumb_func_start ov23_02254958
ov23_02254958: ; 0x02254958
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421DC
	bl ov23_02254044
	add r0, r4, #0
	add r0, #0x18
	mov r1, #1
	bl sub_0200DC9C
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x3c]
	bl ov23_02248EF8
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_0201C3C0
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	ldr r0, [r4, #0x28]
	bl sub_02013A3C
	ldr r0, [r4, #4]
	bl sub_0206A844
	pop {r4, pc}
	thumb_func_end ov23_02254958

	thumb_func_start ov23_022549A8
ov23_022549A8: ; 0x022549A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r3, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, r7
	bls _022549E8
	cmp r5, #0
	beq _022549C4
	mov r1, #0
	mov r2, #1
	bl sub_0206A8C4
	b _022549CC
_022549C4:
	mov r1, #0
	add r2, r1, #0
	bl sub_0206A8C4
_022549CC:
	add r0, r5, r7
	cmp r4, r0
	beq _022549DE
	mov r1, #1
	add r0, r6, #0
	add r2, r1, #0
	bl sub_0206A8C4
	pop {r3, r4, r5, r6, r7, pc}
_022549DE:
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
_022549E8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_022549A8

	thumb_func_start ov23_022549EC
ov23_022549EC: ; 0x022549EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x40
	ldrh r4, [r0]
	add r1, r5, #0
	ldr r0, [r5, #0x28]
	add r1, #0x40
	bl sub_020014D0
	add r5, #0x40
	ldrh r0, [r5]
	cmp r4, r0
	beq _02254A0C
	ldr r0, _02254A10 ; =0x000005DC
	bl sub_02005748
_02254A0C:
	pop {r3, r4, r5, pc}
	nop
_02254A10: .word 0x000005DC
	thumb_func_end ov23_022549EC

	thumb_func_start ov23_02254A14
ov23_02254A14: ; 0x02254A14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0
	bne _02254A26
	bl sub_02022974
_02254A26:
	add r4, r7, #0
	add r4, #0x3c
	add r0, r5, #0
	bl sub_020573FC
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0205740C
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	lsl r1, r0, #0xf
	mov r0, #1
	lsl r0, r0, #0x14
	add r1, r1, r0
	lsr r0, r0, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	lsl r1, r0, #0xf
	mov r0, #0xd
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_02255E14
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #8
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl ov5_021E19CC
	str r0, [r4, #0x10]
	mov r0, #0x10
	str r0, [r7, #0x3c]
	mov r0, #0xd
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	add r0, #0xf
	str r0, [r4, #8]
	ldr r0, [r4, #0x1c]
	add r0, #0xc
	str r0, [r4, #0xc]
	str r5, [r4, #0x14]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02254A14

	thumb_func_start ov23_02254A94
ov23_02254A94: ; 0x02254A94
	add r2, r0, #0
	ldr r3, _02254AA0 ; =ov5_021E1674
	add r2, #0xa4
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	; .align 2, 0
_02254AA0: .word ov5_021E1674
	thumb_func_end ov23_02254A94

	thumb_func_start ov23_02254AA4
ov23_02254AA4: ; 0x02254AA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x24
	add r4, r0, #0
	mul r4, r1
	add r0, r5, r4
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _02254ABA
	bl sub_02022974
_02254ABA:
	add r2, r5, r4
	add r2, #0x60
	add r5, #0x3c
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02254AA4

	thumb_func_start ov23_02254AD4
ov23_02254AD4: ; 0x02254AD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bls _02254AF0
	b _02254C5A
_02254AF0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02254AFC: ; jump table
	.short _02254B12 - _02254AFC - 2 ; case 0
	.short _02254B6E - _02254AFC - 2 ; case 1
	.short _02254B8E - _02254AFC - 2 ; case 2
	.short _02254BA0 - _02254AFC - 2 ; case 3
	.short _02254BAC - _02254AFC - 2 ; case 4
	.short _02254BB8 - _02254AFC - 2 ; case 5
	.short _02254BC4 - _02254AFC - 2 ; case 6
	.short _02254BD0 - _02254AFC - 2 ; case 7
	.short _02254BDC - _02254AFC - 2 ; case 8
	.short _02254C06 - _02254AFC - 2 ; case 9
	.short _02254C2E - _02254AFC - 2 ; case 10
_02254B12:
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov23_022542CC
	ldr r3, _02254C60 ; =0x00000504
	add r1, r6, #0
	add r2, r3, #0
	str r0, [r4, r3]
	ldr r0, [r4, r3]
	add r2, #0x14
	add r3, #0x18
	add r2, r4, r2
	add r3, r4, r3
	bl ov23_022542D8
	bl ov23_02254588
	ldr r3, _02254C64 ; =0x00000508
	add r1, r6, #0
	add r2, r3, #0
	str r0, [r4, r3]
	ldr r0, [r4, r3]
	add r2, #0x12
	add r3, #0x16
	add r2, r4, r2
	add r3, r4, r3
	bl ov23_02254594
	add r2, r4, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, #0x5c
	bl ov23_02255C78
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x5c
	bl ov23_02255D78
	mov r0, #1
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254B6E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x29
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #2
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254B8E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02254C5A
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254BA0:
	ldr r1, _02254C68 ; =ov23_02254C84
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BAC:
	ldr r1, _02254C6C ; =ov23_02254DF8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BB8:
	ldr r1, _02254C70 ; =ov23_02255100
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BC4:
	ldr r1, _02254C74 ; =ov23_02255580
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BD0:
	ldr r1, _02254C78 ; =ov23_02255850
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	b _02254C5A
_02254BDC:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02254C5A
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02254C5A
	bl ov23_0224D3B0
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254C06:
	ldr r0, _02254C7C ; =0x0000060E
	bl sub_02005748
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x28
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #0xa
	add r1, r4, #0
	bl ov23_02255EBC
	b _02254C5A
_02254C2E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02254C5A
	ldr r0, _02254C64 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545D0
	ldr r0, _02254C60 ; =0x00000504
	ldr r0, [r4, r0]
	bl ov23_0225430C
	ldr r0, _02254C80 ; =0x0000050C
	ldr r0, [r4, r0]
	bl ov5_021D1BEC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02254C5A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02254C60: .word 0x00000504
_02254C64: .word 0x00000508
_02254C68: .word ov23_02254C84
_02254C6C: .word ov23_02254DF8
_02254C70: .word ov23_02255100
_02254C74: .word ov23_02255580
_02254C78: .word ov23_02255850
_02254C7C: .word 0x0000060E
_02254C80: .word 0x0000050C
	thumb_func_end ov23_02254AD4

	thumb_func_start ov23_02254C84
ov23_02254C84: ; 0x02254C84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, _02254D8C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov23_02254318
	cmp r0, #0
	beq _02254D86
	ldr r0, _02254D8C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov23_02254314
	cmp r0, #0
	beq _02254CB8
	cmp r0, #1
	beq _02254D40
	cmp r0, #2
	beq _02254D58
	b _02254D70
_02254CB8:
	ldr r0, [r5, #0xc]
	bl sub_020298B0
	bl sub_020289A0
	cmp r0, #0
	bne _02254CE2
	mov r0, #0x13
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254CE2:
	ldr r3, _02254D90 ; =0x00000521
	ldrb r1, [r4, r3]
	cmp r1, #0xf
	bls _02254D06
	mov r0, #0x14
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D06:
	add r0, r3, #3
	ldrb r2, [r4, r0]
	add r0, r1, #1
	cmp r0, r2
	ble _02254D2C
	mov r0, #0x14
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #8
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D2C:
	sub r3, #0x19
	ldr r0, [r4, r3]
	bl ov23_022545C4
	mov r0, #4
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D40:
	ldr r2, _02254D94 ; =0x000004FC
	mov r0, #0x10
	ldr r2, [r4, r2]
	mov r1, #0xd
	bl ov23_02255F04
	mov r0, #5
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D58:
	ldr r2, _02254D94 ; =0x000004FC
	mov r0, #0x10
	ldr r2, [r4, r2]
	mov r1, #0xd
	bl ov23_02255F04
	mov r0, #6
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D70:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x5c
	bl ov23_02255DDC
	mov r0, #9
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02254D86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02254D8C: .word 0x00000504
_02254D90: .word 0x00000521
_02254D94: .word 0x000004FC
	thumb_func_end ov23_02254C84

	thumb_func_start ov23_02254D98
ov23_02254D98: ; 0x02254D98
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02254DE4 ; =0x00000528
	mov r0, #0xb
	bl sub_02018184
	ldr r2, _02254DE4 ; =0x00000528
	add r4, r0, #0
	mov r1, #0
	bl sub_020C4CF4
	mov r0, #0
	add r1, r4, #0
	bl ov23_02255EBC
	mov r0, #5
	lsl r0, r0, #8
	str r5, [r4, r0]
	ldr r0, [r5, #4]
	ldr r1, _02254DE8 ; =0x02256B88
	ldr r0, [r0, #4]
	bl ov5_021D1B6C
	ldr r1, _02254DEC ; =0x0000050C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl ov5_021D1C2C
	ldr r1, _02254DF0 ; =0x000004FC
	add r2, r4, #0
	str r0, [r4, r1]
	ldr r1, _02254DF4 ; =ov23_02254AD4
	add r0, r6, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_02254DE4: .word 0x00000528
_02254DE8: .word 0x02256B88
_02254DEC: .word 0x0000050C
_02254DF0: .word 0x000004FC
_02254DF4: .word ov23_02254AD4
	thumb_func_end ov23_02254D98

	thumb_func_start ov23_02254DF8
ov23_02254DF8: ; 0x02254DF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bhi _02254E36
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02254E1E: ; jump table
	.short _02254E2A - _02254E1E - 2 ; case 0
	.short _02254EAC - _02254E1E - 2 ; case 1
	.short _02254EC6 - _02254E1E - 2 ; case 2
	.short _02255066 - _02254E1E - 2 ; case 3
	.short _0225508C - _02254E1E - 2 ; case 4
	.short _022550BA - _02254E1E - 2 ; case 5
_02254E2A:
	ldr r0, _022550E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545DC
	cmp r0, #0
	bne _02254E38
_02254E36:
	b _022550DE
_02254E38:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	ldr r0, _022550E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545D8
	add r7, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r7, r0
	bne _02254E66
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02254E66:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020289B8
	str r0, [sp, #4]
	cmp r0, #0
	beq _02254EA6
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02254E90
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ov23_02254A14
	mov r0, #1
	str r0, [r4, #4]
	b _022550DE
_02254E90:
	mov r0, #0x15
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #4]
	b _022550DE
_02254EA6:
	bl sub_02022974
	b _022550DE
_02254EAC:
	ldr r0, _022550E8 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
	ldr r2, _022550E8 ; =0x000004DC
	ldr r0, [r4, #0x4c]
	mov r1, #4
	add r2, r4, r2
	bl ov23_0225623C
	mov r0, #2
	str r0, [r4, #4]
	b _022550DE
_02254EC6:
	ldr r1, _022550E8 ; =0x000004DC
	add r0, r5, #0
	add r1, r4, r1
	bl ov23_0225624C
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #8
	bl ov23_02256098
	cmp r0, #0
	bne _02254FD2
	add r3, r4, #0
	add r3, #0x3c
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _022550EC ; =0x021BF67C
	mov r1, #0x20
	ldr r0, [r0, #0x4c]
	mov r6, #1
	tst r1, r0
	beq _02254F0C
	ldr r0, _022550F0 ; =0xFFFF0000
	mov r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _02254F5E
_02254F0C:
	mov r1, #0x10
	add r2, r0, #0
	tst r2, r1
	beq _02254F28
	lsl r0, r1, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r7, #0
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _02254F5E
_02254F28:
	mov r1, #0x40
	tst r1, r0
	beq _02254F42
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r7, _022550F0 ; =0xFFFF0000
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	b _02254F5E
_02254F42:
	mov r1, #0x80
	tst r0, r1
	beq _02254F5C
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	lsl r7, r1, #9
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	b _02254F5E
_02254F5C:
	mov r6, #0
_02254F5E:
	cmp r6, #0
	beq _02254FAC
	add r0, sp, #0x18
	bl ov23_02255B58
	cmp r0, #0
	bne _02254FAC
	add r2, r4, #0
	add r3, sp, #0x18
	add r2, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x4c]
	bl ov5_021E18E0
	add r6, r0, #0
	add r0, sp, #0xc
	add r1, r6, #0
	bl ov5_021E1894
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r1, sp, #0xc
	add r0, r0, r7
	str r0, [sp, #0x14]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov5_021E18A4
_02254FAC:
	ldr r0, _022550EC ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #1
	add r1, r2, #0
	tst r1, r0
	beq _02254FBC
	str r0, [sp, #8]
	b _02254FD2
_02254FBC:
	mov r0, #2
	tst r0, r2
	beq _02254FD2
	ldr r1, [r4, #0x4c]
	add r0, r5, #0
	bl ov23_02254A94
	mov r0, #0
	add sp, #0x28
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02254FD2:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02254FDA
	b _022550DE
_02254FDA:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x5c
	bl ov23_02255A98
	cmp r0, #0
	beq _0225504A
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x5c
	bl ov23_02255B78
	add r7, r0, #0
	ldr r0, _022550E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl ov23_022545D8
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02028ACC
	ldr r0, _022550F4 ; =0x000005FE
	bl sub_02005748
	ldr r0, [r4, #0x50]
	bl ov23_0224D3BC
	mov r0, #0xb
	bl ov23_0224D39C
	ldr r1, _022550E8 ; =0x000004DC
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r4, r1
	bl ov23_0225628C
	ldr r0, _022550F8 ; =0x00000521
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _022550DE
_0225504A:
	ldr r0, _022550FC ; =0x00000602
	bl sub_02005748
	mov r0, #0xc
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #4]
	b _022550DE
_02255066:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022550DE
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _022550DE
	bl ov23_0224D3B0
	mov r0, #2
	str r0, [r4, #4]
	b _022550DE
_0225508C:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022550DE
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _022550DE
	bl ov23_0224D3B0
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022550BA:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022550DE
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _022550DE
	bl ov23_0224D3B0
	mov r0, #0
	str r0, [r4, #4]
_022550DE:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022550E4: .word 0x00000508
_022550E8: .word 0x000004DC
_022550EC: .word 0x021BF67C
_022550F0: .word 0xFFFF0000
_022550F4: .word 0x000005FE
_022550F8: .word 0x00000521
_022550FC: .word 0x00000602
	thumb_func_end ov23_02254DF8

	thumb_func_start ov23_02255100
ov23_02255100: ; 0x02255100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bls _0225511C
	b _02255576
_0225511C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02255128: ; jump table
	.short _02255136 - _02255128 - 2 ; case 0
	.short _02255176 - _02255128 - 2 ; case 1
	.short _02255464 - _02255128 - 2 ; case 2
	.short _022554B6 - _02255128 - 2 ; case 3
	.short _022554E0 - _02255128 - 2 ; case 4
	.short _02255506 - _02255128 - 2 ; case 5
	.short _02255548 - _02255128 - 2 ; case 6
_02255136:
	ldr r0, _02255448 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	bl ov23_02255EFC
	ldr r0, _0225544C ; =0x000004FC
	add r2, r4, #0
	ldr r1, [r4, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #0xc
	bl ov23_02255B14
	cmp r0, #0
	beq _02255170
	ldr r1, [sp, #0xc]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r2, _02255448 ; =0x000004DC
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r4, r2
	bl ov23_0225623C
_02255170:
	mov r0, #1
	str r0, [r4, #4]
	b _02255576
_02255176:
	ldr r1, _02255448 ; =0x000004DC
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225624C
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl ov23_02256104
	ldr r1, _0225544C ; =0x000004FC
	cmp r0, #0
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x14]
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x1c]
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x18]
	ldr r2, [r4, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x20]
	ldr r2, [r4, r1]
	ldr r6, [r2, #0x58]
	ldr r5, [r2, #0x60]
	bne _02255278
	ldr r0, _02255450 ; =0x021BF67C
	mov r2, #0x20
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022551D8
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r6, r6, r0
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _02255242
_022551D8:
	mov r2, #0x10
	tst r2, r0
	beq _022551FA
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r6, r6, r0
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _02255242
_022551FA:
	mov r2, #0x40
	tst r2, r0
	beq _0225521C
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r5, r5, r0
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _02255242
_0225521C:
	mov r2, #0x80
	tst r0, r2
	beq _0225523E
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r5, r5, r0
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _02255242
_0225523E:
	mov r0, #0
	str r0, [sp]
_02255242:
	ldr r0, _02255450 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r2, r0, #0
	tst r2, r1
	beq _02255252
	str r1, [sp, #0x10]
	b _02255278
_02255252:
	mov r1, #2
	tst r0, r1
	beq _02255278
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	bl ov23_02255F20
	ldr r1, _02255448 ; =0x000004DC
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225628C
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255278:
	ldr r0, [sp]
	cmp r0, #0
	beq _022552FA
	add r0, sp, #0x14
	bl ov23_02255B58
	cmp r0, #0
	bne _022552FA
	ldr r0, _0225544C ; =0x000004FC
	add r3, sp, #8
	ldr r1, [r4, r0]
	str r6, [r1, #0x58]
	ldr r1, [r4, r0]
	str r5, [r1, #0x60]
	ldr r2, [sp, #0x14]
	ldr r1, [r4, r0]
	str r2, [r1, #0x64]
	ldr r2, [sp, #0x18]
	ldr r1, [r4, r0]
	str r2, [r1, #0x68]
	ldr r1, [r4, r0]
	add r2, r4, #0
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r2, #0x5c
	bl ov23_02255B14
	cmp r0, #0
	beq _022552E8
	ldr r0, _02255448 ; =0x000004DC
	add r0, r4, r0
	bl ov23_022562A8
	ldr r2, [sp, #8]
	mov r1, #0x24
	mul r1, r2
	add r1, r4, r1
	ldr r1, [r1, #0x70]
	cmp r0, r1
	beq _022552FA
	ldr r1, _02255448 ; =0x000004DC
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225628C
	ldr r2, _02255448 ; =0x000004DC
	ldr r1, [sp, #8]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r4, r2
	bl ov23_0225623C
	b _022552FA
_022552E8:
	ldr r1, _02255448 ; =0x000004DC
	add r0, r7, #0
	add r1, r4, r1
	bl ov23_0225628C
	ldr r0, _02255448 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
_022552FA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02255332
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x64]
	cmp r0, #0x20
	blt _0225530E
	bl sub_02022974
_0225530E:
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x68]
	cmp r0, #0x20
	blt _0225531C
	bl sub_02022974
_0225531C:
	ldr r0, _0225544C ; =0x000004FC
	add r2, r4, #0
	ldr r1, [r4, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #4
	bl ov23_02255B14
	cmp r0, #0
	bne _02255334
_02255332:
	b _02255576
_02255334:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _02255430
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x74]
	bl ov23_0224D3BC
	ldr r1, [sp, #4]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x74]
	cmp r0, #6
	bne _022553C2
	ldr r0, _02255454 ; =0x00000523
	ldrb r1, [r4, r0]
	cmp r1, #0x10
	bne _02255372
	mov r0, #0xf
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _02255576
_02255372:
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	sub r0, r0, #1
	cmp r0, r1
	bge _02255392
	mov r0, #0x12
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _02255576
_02255392:
	mov r0, #0x19
	lsl r0, r0, #6
	bl sub_02005748
	mov r0, #0xe
	bl ov23_0224D39C
	str r0, [r4, #8]
	ldr r0, _02255458 ; =0x00000522
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022553AE
	bl sub_02022974
_022553AE:
	ldr r0, _02255458 ; =0x00000522
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	sub r0, r0, #2
	strb r1, [r4, r0]
	mov r0, #2
	str r0, [r4, #4]
	b _02255404
_022553C2:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r5, r0, #0
	ldr r0, _0225545C ; =0x000005EB
	bl sub_02005748
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02028B20
	mov r0, #0xd
	bl ov23_0224D39C
	str r0, [r4, #8]
	ldr r0, _02255460 ; =0x00000521
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022553F2
	bl sub_02022974
_022553F2:
	ldr r0, _02255460 ; =0x00000521
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #4]
_02255404:
	ldr r2, [sp, #4]
	mov r1, #0x24
	mul r1, r2
	add r1, r4, r1
	ldr r1, [r1, #0x70]
	add r0, r7, #0
	bl ov23_02254A94
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x5c
	bl ov23_02255BF4
	ldr r0, _0225544C ; =0x000004FC
	ldr r0, [r4, r0]
	bl ov23_02255F20
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	b _02255576
_02255430:
	mov r0, #0x16
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #4]
	b _02255576
	nop
_02255448: .word 0x000004DC
_0225544C: .word 0x000004FC
_02255450: .word 0x021BF67C
_02255454: .word 0x00000523
_02255458: .word 0x00000522
_0225545C: .word 0x000005EB
_02255460: .word 0x00000521
_02255464:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02255474
	b _02255576
_02255474:
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	ldr r0, _0225557C ; =0x00000522
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	sub r5, r1, r0
	bpl _02255496
	bl sub_02022974
_02255496:
	cmp r5, #0
	bne _022554A8
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022554A8:
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #4]
	b _02255576
_022554B6:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255576
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	mov r0, #0
	str r0, [r4, #4]
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022554E0:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255576
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	mov r0, #1
	str r0, [r4, #4]
	b _02255576
_02255506:
	mov r1, #0x52
	lsl r1, r1, #4
	ldrb r2, [r4, r1]
	add r0, r2, #1
	strb r0, [r4, r1]
	cmp r2, #0xa
	blo _02255576
	add r0, r1, #2
	ldrb r2, [r4, r0]
	add r0, r1, #3
	ldrb r0, [r4, r0]
	mov r1, #0
	sub r5, r2, r0
	add r0, r5, #0
	bl ov23_0224D3D0
	cmp r5, #1
	bne _02255532
	mov r0, #0x11
	bl ov23_0224D39C
	b _02255538
_02255532:
	mov r0, #0x19
	bl ov23_0224D39C
_02255538:
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #6
	str r0, [r4, #4]
	b _02255576
_02255548:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255576
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255576
	bl ov23_0224D3B0
	mov r0, #3
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255576:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225557C: .word 0x00000522
	thumb_func_end ov23_02255100

	thumb_func_start ov23_02255580
ov23_02255580: ; 0x02255580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022555A6
	cmp r0, #1
	beq _022555E6
	cmp r0, #2
	bne _022555A4
	b _02255814
_022555A4:
	b _02255838
_022555A6:
	ldr r0, _02255840 ; =0x000004DC
	add r0, r5, r0
	bl ov23_02256228
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	bl ov23_02255EFC
	ldr r0, _02255844 ; =0x000004FC
	add r2, r5, #0
	ldr r1, [r5, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #0xc
	bl ov23_02255B14
	cmp r0, #0
	beq _022555E0
	ldr r1, [sp, #0xc]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	ldr r2, _02255840 ; =0x000004DC
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r5, r2
	bl ov23_0225623C
_022555E0:
	mov r0, #1
	str r0, [r5, #4]
	b _02255838
_022555E6:
	ldr r1, _02255840 ; =0x000004DC
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225624C
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl ov23_02256174
	ldr r1, _02255844 ; =0x000004FC
	cmp r0, #0
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x14]
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x64]
	str r2, [sp, #0x1c]
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x18]
	ldr r2, [r5, r1]
	ldr r2, [r2, #0x68]
	str r2, [sp, #0x20]
	ldr r2, [r5, r1]
	ldr r6, [r2, #0x58]
	ldr r4, [r2, #0x60]
	bne _022556E8
	ldr r0, _02255848 ; =0x021BF67C
	mov r2, #0x20
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _02255648
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r6, r6, r0
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _022556B2
_02255648:
	mov r2, #0x10
	tst r2, r0
	beq _0225566A
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r6, r6, r0
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _022556B2
_0225566A:
	mov r2, #0x40
	tst r2, r0
	beq _0225568C
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	sub r4, r4, r0
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _022556B2
_0225568C:
	mov r2, #0x80
	tst r0, r2
	beq _022556AE
	add r1, #0xe9
	add r0, r1, #0
	bl sub_02005748
	mov r0, #1
	lsl r0, r0, #0x10
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _022556B2
_022556AE:
	mov r0, #0
	str r0, [sp]
_022556B2:
	ldr r0, _02255848 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r2, r0, #0
	tst r2, r1
	beq _022556C2
	str r1, [sp, #0x10]
	b _022556E8
_022556C2:
	mov r1, #2
	tst r0, r1
	beq _022556E8
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	bl ov23_02255F20
	ldr r1, _02255840 ; =0x000004DC
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225628C
	mov r0, #3
	add r1, r5, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022556E8:
	ldr r0, [sp]
	cmp r0, #0
	beq _0225576A
	add r0, sp, #0x14
	bl ov23_02255B58
	cmp r0, #0
	bne _0225576A
	ldr r0, _02255844 ; =0x000004FC
	add r3, sp, #8
	ldr r1, [r5, r0]
	str r6, [r1, #0x58]
	ldr r1, [r5, r0]
	str r4, [r1, #0x60]
	ldr r2, [sp, #0x14]
	ldr r1, [r5, r0]
	str r2, [r1, #0x64]
	ldr r2, [sp, #0x18]
	ldr r1, [r5, r0]
	str r2, [r1, #0x68]
	ldr r1, [r5, r0]
	add r2, r5, #0
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r2, #0x5c
	bl ov23_02255B14
	cmp r0, #0
	beq _02255758
	ldr r0, _02255840 ; =0x000004DC
	add r0, r5, r0
	bl ov23_022562A8
	ldr r2, [sp, #8]
	mov r1, #0x24
	mul r1, r2
	add r1, r5, r1
	ldr r1, [r1, #0x70]
	cmp r0, r1
	beq _0225576A
	ldr r1, _02255840 ; =0x000004DC
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225628C
	ldr r2, _02255840 ; =0x000004DC
	ldr r1, [sp, #8]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x70]
	mov r1, #8
	add r2, r5, r2
	bl ov23_0225623C
	b _0225576A
_02255758:
	ldr r1, _02255840 ; =0x000004DC
	add r0, r7, #0
	add r1, r5, r1
	bl ov23_0225628C
	ldr r0, _02255840 ; =0x000004DC
	add r0, r5, r0
	bl ov23_02256228
_0225576A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02255838
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x64]
	cmp r0, #0x20
	blt _0225577E
	bl sub_02022974
_0225577E:
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x68]
	cmp r0, #0x20
	blt _0225578C
	bl sub_02022974
_0225578C:
	ldr r0, _02255844 ; =0x000004FC
	add r2, r5, #0
	ldr r1, [r5, r0]
	add r2, #0x5c
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x68]
	add r3, sp, #4
	bl ov23_02255B14
	cmp r0, #0
	beq _02255838
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022557FE
	mov r1, #0x24
	mul r1, r0
	add r1, r5, r1
	ldr r1, [r1, #0x74]
	cmp r1, #6
	bne _022557CA
	mov r0, #0x10
	bl ov23_0224D39C
	str r0, [r5, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	mov r0, #2
	str r0, [r5, #4]
	b _02255838
_022557CA:
	add r1, r5, #0
	bl ov23_02254AA4
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov23_02255E2C
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x5c
	bl ov23_02255BF4
	ldr r0, _0225584C ; =0x000005EB
	bl sub_02005748
	ldr r0, _02255844 ; =0x000004FC
	ldr r0, [r5, r0]
	bl ov23_02255F20
	mov r0, #7
	add r1, r5, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022557FE:
	mov r0, #0x17
	bl ov23_0224D39C
	str r0, [r5, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	mov r0, #2
	str r0, [r5, #4]
	b _02255838
_02255814:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255838
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r5, r0]
	add r1, r2, #1
	strb r1, [r5, r0]
	cmp r2, #0x1e
	blo _02255838
	bl ov23_0224D3B0
	mov r0, #1
	str r0, [r5, #4]
_02255838:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02255840: .word 0x000004DC
_02255844: .word 0x000004FC
_02255848: .word 0x021BF67C
_0225584C: .word 0x000005EB
	thumb_func_end ov23_02255580

	thumb_func_start ov23_02255850
ov23_02255850: ; 0x02255850
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _0225586C
	b _02255A78
_0225586C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02255878: ; jump table
	.short _02255880 - _02255878 - 2 ; case 0
	.short _0225589A - _02255878 - 2 ; case 1
	.short _02255A24 - _02255878 - 2 ; case 2
	.short _02255A4A - _02255878 - 2 ; case 3
_02255880:
	ldr r0, _02255A80 ; =0x000004DC
	add r0, r4, r0
	bl ov23_02256228
	ldr r2, _02255A80 ; =0x000004DC
	ldr r0, [r4, #0x4c]
	mov r1, #4
	add r2, r4, r2
	bl ov23_0225623C
	mov r0, #1
	str r0, [r4, #4]
	b _02255A78
_0225589A:
	ldr r1, _02255A80 ; =0x000004DC
	ldr r0, [sp]
	add r1, r4, r1
	bl ov23_0225624C
	ldr r1, [sp]
	add r0, r4, #0
	add r2, sp, #4
	bl ov23_022561BC
	cmp r0, #0
	beq _022558B4
	b _022559BA
_022558B4:
	add r3, r4, #0
	add r3, #0x3c
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _02255A84 ; =0x021BF67C
	mov r1, #0x20
	ldr r0, [r0, #0x4c]
	mov r6, #1
	tst r1, r0
	beq _022558E0
	ldr r0, [sp, #0x14]
	ldr r7, _02255A88 ; =0xFFFF0000
	sub r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r5, #0
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	b _0225592C
_022558E0:
	mov r1, #0x10
	add r2, r0, #0
	tst r2, r1
	beq _022558FA
	ldr r0, [sp, #0x14]
	lsl r7, r1, #0xc
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r5, #0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _0225592C
_022558FA:
	mov r1, #0x40
	tst r1, r0
	beq _02255912
	ldr r0, [sp, #0x18]
	mov r7, #0
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldr r5, _02255A88 ; =0xFFFF0000
	sub r0, r0, #1
	str r0, [sp, #0x20]
	b _0225592C
_02255912:
	mov r1, #0x80
	tst r0, r1
	beq _0225592A
	ldr r0, [sp, #0x18]
	mov r7, #0
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	lsl r5, r1, #9
	add r0, r0, #1
	str r0, [sp, #0x20]
	b _0225592C
_0225592A:
	mov r6, #0
_0225592C:
	cmp r6, #0
	beq _02255978
	add r0, sp, #0x14
	bl ov23_02255B58
	cmp r0, #0
	bne _02255978
	add r2, r4, #0
	add r3, sp, #0x14
	add r2, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r4, #0x4c]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r6, r0, #0
	add r0, sp, #8
	add r1, r6, #0
	bl ov5_021E1894
	ldr r0, [sp, #8]
	add r1, sp, #8
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov5_021E18A4
_02255978:
	ldr r0, _02255A84 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #1
	add r1, r2, #0
	tst r1, r0
	beq _02255988
	str r0, [sp, #4]
	b _022559BA
_02255988:
	mov r0, #2
	tst r0, r2
	beq _022559BA
	add r0, r4, #0
	add r2, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x1c
	add r2, #0x5c
	bl ov23_02255BB8
	add r0, r4, #0
	bl ov23_02255E8C
	ldr r1, _02255A80 ; =0x000004DC
	ldr r0, [sp]
	add r1, r4, r1
	bl ov23_0225628C
	mov r0, #6
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022559BA:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02255A78
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x5c
	bl ov23_02255A98
	cmp r0, #0
	beq _02255A08
	add r0, r4, #0
	add r2, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x3c
	add r2, #0x5c
	bl ov23_02255BB8
	ldr r0, _02255A8C ; =0x000005FE
	bl sub_02005748
	ldr r2, _02255A90 ; =0x000004FC
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, r2]
	bl ov23_02255F04
	ldr r1, _02255A80 ; =0x000004DC
	ldr r0, [sp]
	add r1, r4, r1
	bl ov23_0225628C
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #4]
	b _02255A78
_02255A08:
	ldr r0, _02255A94 ; =0x00000602
	bl sub_02005748
	mov r0, #0xc
	bl ov23_0224D39C
	str r0, [r4, #8]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #2
	str r0, [r4, #4]
	b _02255A78
_02255A24:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255A78
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255A78
	bl ov23_0224D3B0
	mov r0, #1
	str r0, [r4, #4]
	b _02255A78
_02255A4A:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255A78
	mov r0, #0x52
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	add r1, r2, #1
	strb r1, [r4, r0]
	cmp r2, #0x1e
	blo _02255A78
	bl ov23_0224D3B0
	mov r0, #6
	add r1, r4, #0
	bl ov23_02255EBC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02255A78:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02255A80: .word 0x000004DC
_02255A84: .word 0x021BF67C
_02255A88: .word 0xFFFF0000
_02255A8C: .word 0x000005FE
_02255A90: .word 0x000004FC
_02255A94: .word 0x00000602
	thumb_func_end ov23_02255850

	thumb_func_start ov23_02255A98
ov23_02255A98: ; 0x02255A98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
_02255AA4:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02255ABC
	add r0, r4, #4
	add r1, r7, #0
	bl ov23_02255C30
	cmp r0, #0
	beq _02255ABC
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02255ABC:
	add r6, r6, #1
	add r5, #0x24
	add r4, #0x24
	cmp r6, #0x20
	blt _02255AA4
	ldr r4, _02255B0C ; =0x02256B78
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	add r1, r2, #0
	bl ov23_02255C30
	cmp r0, #0
	beq _02255AE6
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02255AE6:
	ldr r4, _02255B10 ; =0x02256B68
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	add r1, r2, #0
	bl ov23_02255C30
	cmp r0, #0
	bne _02255B06
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02255B06:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255B0C: .word 0x02256B78
_02255B10: .word 0x02256B68
	thumb_func_end ov23_02255A98

	thumb_func_start ov23_02255B14
ov23_02255B14: ; 0x02255B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	add r7, r0, #0
	str r1, [sp]
	str r3, [sp, #4]
	mov r6, #0
	add r4, r5, #0
_02255B24:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02255B42
	ldr r2, [sp]
	add r0, r4, #4
	add r1, r7, #0
	bl ov23_02255C58
	cmp r0, #0
	beq _02255B42
	ldr r0, [sp, #4]
	add sp, #8
	str r6, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02255B42:
	add r6, r6, #1
	add r5, #0x24
	add r4, #0x24
	cmp r6, #0x20
	blt _02255B24
	ldr r0, [sp, #4]
	mov r1, #0x20
	str r1, [r0, #0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02255B14

	thumb_func_start ov23_02255B58
ov23_02255B58: ; 0x02255B58
	ldr r1, [r0, #0]
	cmp r1, #0xa
	blt _02255B74
	ldr r1, [r0, #8]
	cmp r1, #0x15
	bgt _02255B74
	ldr r1, [r0, #4]
	cmp r1, #0xc
	blt _02255B74
	ldr r0, [r0, #0xc]
	cmp r0, #0x17
	bgt _02255B74
	mov r0, #0
	bx lr
_02255B74:
	mov r0, #1
	bx lr
	thumb_func_end ov23_02255B58

	thumb_func_start ov23_02255B78
ov23_02255B78: ; 0x02255B78
	push {r4, lr}
	add r3, r0, #0
	mov r2, #0
	add r4, r1, #0
_02255B80:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02255BA8
	mov r0, #0x24
	add r4, r2, #0
	mul r4, r0
	mov r0, #1
	str r0, [r1, r4]
	add r0, r1, r4
	add r4, r0, #4
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r2, #0
	pop {r4, pc}
_02255BA8:
	add r2, r2, #1
	add r4, #0x24
	cmp r2, #0x20
	blt _02255B80
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov23_02255B78

	thumb_func_start ov23_02255BB8
ov23_02255BB8: ; 0x02255BB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r7, #0x20
	blt _02255BC8
	bl sub_02022974
_02255BC8:
	mov r0, #0x24
	add r6, r7, #0
	mul r6, r0
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _02255BD8
	bl sub_02022974
_02255BD8:
	mov r0, #1
	str r0, [r4, r6]
	add r0, r4, r6
	add r2, r0, #4
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02255BB8

	thumb_func_start ov23_02255BF4
ov23_02255BF4: ; 0x02255BF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x20
	blt _02255C02
	bl sub_02022974
_02255C02:
	cmp r5, #0
	bne _02255C0A
	bl sub_02022974
_02255C0A:
	mov r0, #0x24
	add r6, r5, #0
	mul r6, r0
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _02255C1A
	bl sub_02022974
_02255C1A:
	mov r1, #0
	add r0, r4, r6
	str r1, [r0, #0x14]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r4, r6]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02255BF4

	thumb_func_start ov23_02255C30
ov23_02255C30: ; 0x02255C30
	ldr r3, [r0, #0]
	ldr r2, [r1, #8]
	cmp r3, r2
	bgt _02255C54
	ldr r3, [r1, #0]
	ldr r2, [r0, #8]
	cmp r3, r2
	bgt _02255C54
	ldr r3, [r0, #4]
	ldr r2, [r1, #0xc]
	cmp r3, r2
	bgt _02255C54
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bgt _02255C54
	mov r0, #1
	bx lr
_02255C54:
	mov r0, #0
	bx lr
	thumb_func_end ov23_02255C30

	thumb_func_start ov23_02255C58
ov23_02255C58: ; 0x02255C58
	ldr r3, [r0, #0]
	cmp r3, r1
	bgt _02255C74
	ldr r3, [r0, #8]
	cmp r1, r3
	bgt _02255C74
	ldr r1, [r0, #4]
	cmp r1, r2
	bgt _02255C74
	ldr r0, [r0, #0xc]
	cmp r2, r0
	bgt _02255C74
	mov r0, #1
	bx lr
_02255C74:
	mov r0, #0
	bx lr
	thumb_func_end ov23_02255C58

	thumb_func_start ov23_02255C78
ov23_02255C78: ; 0x02255C78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r6, r1, #0
	str r2, [sp, #4]
	bl sub_02029894
	ldr r1, _02255D0C ; =0x00000521
	mov r2, #0
	strb r2, [r6, r1]
	add r1, r1, #1
	add r7, r0, #0
	strb r2, [r6, r1]
	bl sub_02029460
	ldr r1, _02255D10 ; =0x00000523
	strb r0, [r6, r1]
	add r0, r7, #0
	bl sub_0202948C
	ldr r1, _02255D14 ; =0x00000524
	mov r4, #0
	strb r0, [r6, r1]
_02255CA6:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020293B0
	add r5, r0, #0
	beq _02255D02
	cmp r5, #6
	bne _02255CC2
	ldr r0, _02255D18 ; =0x00000522
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02255D18 ; =0x00000522
	strb r1, [r6, r0]
	b _02255CE0
_02255CC2:
	cmp r5, #1
	beq _02255CE0
	cmp r5, #2
	beq _02255CE0
	cmp r5, #3
	beq _02255CE0
	cmp r5, #4
	beq _02255CE0
	cmp r5, #5
	beq _02255CE0
	ldr r0, _02255D0C ; =0x00000521
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02255D0C ; =0x00000521
	strb r1, [r6, r0]
_02255CE0:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020293FC
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202942C
	add r3, r0, #0
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_02255D1C
_02255D02:
	add r4, r4, #1
	cmp r4, #0x20
	blt _02255CA6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02255D0C: .word 0x00000521
_02255D10: .word 0x00000523
_02255D14: .word 0x00000524
_02255D18: .word 0x00000522
	thumb_func_end ov23_02255C78

	thumb_func_start ov23_02255D1C
ov23_02255D1C: ; 0x02255D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	mov r0, #0
	add r5, r2, #0
	add r6, r3, #0
	str r0, [sp, #0x14]
	add r0, r1, #0
	str r1, [sp]
	ldr r4, [sp, #0x38]
	str r0, [sp, #0x18]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl sub_020573FC
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	bl sub_0205740C
	str r0, [sp, #0x20]
	sub r0, r0, #1
	add r0, r6, r0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	sub r1, r1, #1
	add r1, r5, r1
	mov r0, #0x24
	add r2, r7, #0
	mul r2, r0
	add r0, r4, r2
	add r5, sp, #4
	add r3, r0, #4
	str r1, [sp, #0xc]
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	str r0, [r4, r2]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02255D1C

	thumb_func_start ov23_02255D78
ov23_02255D78: ; 0x02255D78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl ov5_021E1610
	mov r7, #1
	mov r6, #0
	lsl r7, r7, #0xc
_02255D8E:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02255DD0
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl ov23_02255E14
	add r2, r0, #0
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsl r0, r0, #0x10
	lsl r3, r3, #0xf
	add r0, r0, r3
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	lsl r1, r1, #0xf
	lsl r0, r0, #0x10
	add r0, r0, r1
	str r0, [sp, #0x10]
	str r7, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	add r3, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x30]
	bl ov5_021E19CC
	str r0, [r4, #0x14]
_02255DD0:
	add r6, r6, #1
	add r4, #0x24
	cmp r6, #0x20
	blt _02255D8E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov23_02255D78

	thumb_func_start ov23_02255DDC
ov23_02255DDC: ; 0x02255DDC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02029894
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_02255DEC:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02255DFA
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	b _02255E00
_02255DFA:
	add r2, r7, #0
	add r3, r7, #0
	add r0, r7, #0
_02255E00:
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029308
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x20
	blt _02255DEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02255DDC

	thumb_func_start ov23_02255E14
ov23_02255E14: ; 0x02255E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02255E20
	bl sub_02022974
_02255E20:
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	bl ov5_021EFAE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_02255E14

	thumb_func_start ov23_02255E2C
ov23_02255E2C: ; 0x02255E2C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #0x24
	add r4, r6, #0
	add r5, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _02255E46
	bl sub_02022974
_02255E46:
	add r0, r5, #0
	add r0, #0x60
	add r4, r0, r4
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r1, r0, #0
	add r0, sp, #0
	bl ov5_021E1894
	add r3, sp, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r6, [r5, #0xc]
	add r5, #0x1c
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02255E2C

	thumb_func_start ov23_02255E8C
ov23_02255E8C: ; 0x02255E8C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	mov r0, #0x24
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _02255EA2
	bl sub_02022974
_02255EA2:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x2c]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r4, #0x10
	add r1, r4, #0
	bl ov5_021E18A4
	pop {r4, pc}
	thumb_func_end ov23_02255E8C

	thumb_func_start ov23_02255EBC
ov23_02255EBC: ; 0x02255EBC
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #4]
	bx lr
	thumb_func_end ov23_02255EBC

	thumb_func_start ov23_02255EC4
ov23_02255EC4: ; 0x02255EC4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x54
	str r0, [sp]
	ldr r1, _02255EEC ; =0x02257724
	mov r0, #4
	add r2, r4, #0
	add r3, sp, #4
	bl sub_0201CA24
	mov r0, #0
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02255EEC: .word 0x02257724
	thumb_func_end ov23_02255EC4

	thumb_func_start ov23_02255EF0
ov23_02255EF0: ; 0x02255EF0
	ldr r3, _02255EF8 ; =sub_020181C4
	ldr r0, [r0, #0x54]
	bx r3
	nop
_02255EF8: .word sub_020181C4
	thumb_func_end ov23_02255EF0

	thumb_func_start ov23_02255EFC
ov23_02255EFC: ; 0x02255EFC
	mov r1, #1
	str r1, [r0, #0x6c]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02255EFC

	thumb_func_start ov23_02255F04
ov23_02255F04: ; 0x02255F04
	str r0, [r2, #0x64]
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	str r1, [r2, #0x68]
	add r3, r3, r0
	str r3, [r2, #0x58]
	lsr r3, r0, #3
	lsl r1, r1, #0x10
	str r3, [r2, #0x5c]
	add r0, r1, r0
	str r0, [r2, #0x60]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02255F04

	thumb_func_start ov23_02255F20
ov23_02255F20: ; 0x02255F20
	mov r1, #0
	str r1, [r0, #0x6c]
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02255F20

	thumb_func_start ov23_02255F28
ov23_02255F28: ; 0x02255F28
	ldr r3, _02255F3C ; =0x0000FFFF
	cmp r0, r3
	beq _02255F30
	str r0, [r2, #0]
_02255F30:
	ldr r0, _02255F3C ; =0x0000FFFF
	cmp r1, r0
	beq _02255F38
	str r1, [r2, #4]
_02255F38:
	bx lr
	nop
_02255F3C: .word 0x0000FFFF
	thumb_func_end ov23_02255F28

	thumb_func_start ov23_02255F40
ov23_02255F40: ; 0x02255F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp]
	add r0, #0x8c
	ldr r1, _02255FFC ; =0x021BF6BC
	ldr r6, [r0, #0]
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	add r4, r2, #0
	bl ov23_02255F28
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #8
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ov5_021EAFA4
	ldr r1, [sp, #8]
	mov r3, #0x1b
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	ldr r1, [sp, #0x10]
	str r0, [sp, #4]
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r7, r0, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	lsr r0, r0, #0x1f
	lsl r1, r1, #0x1b
	sub r1, r1, r0
	ror r1, r3
	add r2, r0, r1
	lsr r1, r7, #0x1f
	lsl r0, r7, #0x1b
	sub r0, r0, r1
	ror r0, r3
	ldr r6, [r5, #0x18]
	ldr r4, [r5, #0x1c]
	add r0, r1, r0
	sub r1, r6, #1
	add r1, r2, r1
	str r1, [sp, #0x1c]
	sub r1, r4, #1
	str r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	str r2, [sp, #0x14]
	bl ov23_02255B58
	cmp r0, #0
	bne _02255FF6
	add r3, sp, #0x14
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	lsl r1, r7, #0x10
	lsl r2, r0, #0x10
	lsl r0, r6, #0xf
	str r2, [sp, #8]
	add r0, r2, r0
	str r0, [sp, #8]
	lsl r0, r4, #0xf
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r5, #0x10]
	add r0, #0xa4
	str r0, [sp]
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	add r1, sp, #8
	bl ov5_021E18A4
_02255FF6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02255FFC: .word 0x021BF6BC
	thumb_func_end ov23_02255F40

	thumb_func_start ov23_02256000
ov23_02256000: ; 0x02256000
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r0, #0x8c
	ldr r1, _02256094 ; =0x021BF6BC
	ldr r5, [r0, #0]
	ldrh r0, [r1, #0x1c]
	add r6, r2, #0
	ldrh r1, [r1, #0x1e]
	add r2, r4, #0
	bl ov23_02255F28
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, sp, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r5, #0
	bl ov5_021EAFA4
	ldr r1, [sp]
	mov r2, #0x1b
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	ldr r1, [sp, #8]
	asr r4, r0, #0x10
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r5, r0, #0x10
	lsr r1, r4, #0x1f
	lsl r0, r4, #0x1b
	sub r0, r0, r1
	ror r0, r2
	add r0, r1, r0
	lsr r3, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r3
	ror r1, r2
	add r1, r3, r1
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	str r1, [sp, #0x10]
	str r1, [sp, #0x18]
	bl ov23_02255B58
	cmp r0, #0
	bne _0225608E
	mov r0, #2
	lsl r1, r4, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp]
	lsl r1, r5, #0x10
	add r1, r1, r0
	lsr r0, r0, #3
	add r2, r6, #0
	add r3, sp, #0
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldmia r3!, {r0, r1}
	add r2, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r4, [r6, #0x64]
	str r5, [r6, #0x68]
_0225608E:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02256094: .word 0x021BF6BC
	thumb_func_end ov23_02256000

	thumb_func_start ov23_02256098
ov23_02256098: ; 0x02256098
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _022560F8 ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r5, [r4, #0x20]
	cmp r5, #0
	beq _022560C8
	ldr r0, _022560FC ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022560C4
	ldr r2, _02256100 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r2]
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_022560C4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022560C8:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	beq _022560E8
	ldr r2, _02256100 ; =0x000004F8
	ldr r0, [r3, r2]
	cmp r0, #0
	beq _022560E4
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_022560E4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022560E8:
	ldr r1, _02256100 ; =0x000004F8
	ldr r4, [r3, r1]
	cmp r4, #0
	beq _022560F6
	str r0, [r3, r1]
	mov r1, #1
	str r1, [r2, #0]
_022560F6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022560F8: .word 0x021BF6BC
_022560FC: .word 0x021BF67C
_02256100: .word 0x000004F8
	thumb_func_end ov23_02256098

	thumb_func_start ov23_02256104
ov23_02256104: ; 0x02256104
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _02256168 ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r5, [r4, #0x20]
	cmp r5, #0
	beq _02256136
	ldr r0, _0225616C ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _02256132
	ldr r2, _02256170 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r2]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r2, #4
	sub r1, #8
	ldr r2, [r3, r2]
	add r1, r3, r1
	bl ov23_02256000
_02256132:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256136:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	beq _02256158
	ldr r2, _02256170 ; =0x000004F8
	ldr r0, [r3, r2]
	cmp r0, #0
	beq _02256154
	add r0, r1, #0
	add r1, r2, #0
	add r2, r2, #4
	sub r1, #8
	ldr r2, [r3, r2]
	add r1, r3, r1
	bl ov23_02256000
_02256154:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256158:
	ldr r1, _02256170 ; =0x000004F8
	ldr r4, [r3, r1]
	cmp r4, #0
	beq _02256166
	str r0, [r3, r1]
	mov r1, #1
	str r1, [r2, #0]
_02256166:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256168: .word 0x021BF6BC
_0225616C: .word 0x021BF67C
_02256170: .word 0x000004F8
	thumb_func_end ov23_02256104

	thumb_func_start ov23_02256174
ov23_02256174: ; 0x02256174
	push {r4, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _022561B0 ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r4, [r4, #0x20]
	cmp r4, #0
	beq _022561A8
	ldr r0, _022561B4 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022561A4
	ldr r4, _022561B8 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r4]
	str r0, [r2, #0]
	add r0, r1, #0
	add r1, r4, #0
	add r2, r4, #4
	sub r1, #8
	ldr r2, [r3, r2]
	add r1, r3, r1
	bl ov23_02256000
_022561A4:
	mov r0, #1
	pop {r4, pc}
_022561A8:
	ldr r1, _022561B8 ; =0x000004F8
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_022561B0: .word 0x021BF6BC
_022561B4: .word 0x021BF67C
_022561B8: .word 0x000004F8
	thumb_func_end ov23_02256174

	thumb_func_start ov23_022561BC
ov23_022561BC: ; 0x022561BC
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0
	ldr r4, _0225621C ; =0x021BF6BC
	str r0, [r2, #0]
	ldrh r5, [r4, #0x20]
	cmp r5, #0
	beq _022561EC
	ldr r0, _02256220 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022561E8
	ldr r2, _02256224 ; =0x000004F8
	mov r0, #1
	str r0, [r3, r2]
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_022561E8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022561EC:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	beq _0225620C
	ldr r2, _02256224 ; =0x000004F8
	ldr r0, [r3, r2]
	cmp r0, #0
	beq _02256208
	add r0, r1, #0
	add r1, r3, #0
	sub r2, #8
	add r1, #0x3c
	add r2, r3, r2
	bl ov23_02255F40
_02256208:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225620C:
	ldr r1, _02256224 ; =0x000004F8
	ldr r4, [r3, r1]
	cmp r4, #0
	beq _0225621A
	str r0, [r3, r1]
	mov r1, #1
	str r1, [r2, #0]
_0225621A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225621C: .word 0x021BF6BC
_02256220: .word 0x021BF67C
_02256224: .word 0x000004F8
	thumb_func_end ov23_022561BC

	thumb_func_start ov23_02256228
ov23_02256228: ; 0x02256228
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, _02256238 ; =0x0000FFFF
	str r2, [r0, #8]
	str r1, [r0, #0]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	; .align 2, 0
_02256238: .word 0x0000FFFF
	thumb_func_end ov23_02256228

	thumb_func_start ov23_0225623C
ov23_0225623C: ; 0x0225623C
	mov r3, #0
	str r3, [r2, #4]
	str r1, [r2, #8]
	str r0, [r2, #0]
	str r3, [r2, #0xc]
	mov r0, #1
	str r0, [r2, #0x10]
	bx lr
	thumb_func_end ov23_0225623C

	thumb_func_start ov23_0225624C
ov23_0225624C: ; 0x0225624C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02256288
	ldr r1, [r4, #4]
	add r2, r1, #1
	str r2, [r4, #4]
	ldr r1, [r4, #8]
	cmp r2, r1
	blt _02256288
	mov r1, #0
	str r1, [r4, #4]
	ldr r1, [r4, #0xc]
	add r0, #0xa4
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	str r1, [r4, #0xc]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl ov5_021E18E0
	ldr r1, [r4, #0xc]
	bl ov5_021E18B4
_02256288:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0225624C

	thumb_func_start ov23_0225628C
ov23_0225628C: ; 0x0225628C
	push {r3, lr}
	ldr r2, [r1, #0x10]
	cmp r2, #0
	beq _022562A4
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov5_021E18E0
	mov r1, #0
	bl ov5_021E18B4
_022562A4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0225628C

	thumb_func_start ov23_022562A8
ov23_022562A8: ; 0x022562A8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov23_022562A8

	thumb_func_start ov23_022562AC
ov23_022562AC: ; 0x022562AC
	ldr r3, _022562B4 ; =ov23_02255EC4
	add r0, r2, #0
	bx r3
	nop
_022562B4: .word ov23_02255EC4
	thumb_func_end ov23_022562AC

	thumb_func_start ov23_022562B8
ov23_022562B8: ; 0x022562B8
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022562B8

	thumb_func_start ov23_022562BC
ov23_022562BC: ; 0x022562BC
	ldr r3, _022562C4 ; =ov23_02255EF0
	add r0, r2, #0
	bx r3
	nop
_022562C4: .word ov23_02255EF0
	thumb_func_end ov23_022562BC

	thumb_func_start ov23_022562C8
ov23_022562C8: ; 0x022562C8
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r0, [r2, #0x6c]
	cmp r0, #0
	beq _022562FE
	ldr r5, _02256304 ; =0x02256BA0
	add r4, sp, #0xc
	mov r3, #4
_022562D8:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _022562D8
	ldr r0, [r5, #0]
	ldr r5, _02256308 ; =0x02256B5C
	str r0, [r4, #0]
	add r4, sp, #0
	ldmia r5!, {r0, r1}
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	add r0, r2, #0
	add r2, #0x58
	add r1, r2, #0
	add r2, sp, #0xc
	bl sub_0201CA74
_022562FE:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	nop
_02256304: .word 0x02256BA0
_02256308: .word 0x02256B5C
	thumb_func_end ov23_022562C8
	; 0x0225630C


	.rodata
	.incbin "incbin/overlay23_rodata.bin"

	.data
	.incbin "incbin/overlay23_data.bin"