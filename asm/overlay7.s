	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov7_02249960
ov7_02249960: ; 0x02249960
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02249A0C ; =0x0224F5A0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _02249982
	ldr r0, _02249A0C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0201D730
_02249982:
	cmp r4, #0
	beq _022499A4
	ldr r0, _02249A0C ; =0x0224F5A0
	add r1, r5, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0x10]
	bl sub_0200B1B8
	ldr r0, _02249A0C ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x58]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl sub_0200C388
	b _022499B2
_022499A4:
	ldr r0, _02249A0C ; =0x0224F5A0
	add r1, r5, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0x14]
	bl sub_0200B1B8
_022499B2:
	ldr r0, _02249A0C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x40
	bl sub_0201A7CC
	cmp r0, #0
	bne _022499D0
	ldr r0, _02249A0C ; =0x0224F5A0
	mov r2, #3
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x68]
	add r1, #0x40
	ldr r0, [r0, #8]
	bl sub_0205D8F4
_022499D0:
	ldr r0, _02249A0C ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x68]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	ldr r0, _02249A0C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x40
	bl sub_0205D944
	ldr r0, _02249A0C ; =0x0224F5A0
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x68]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x40
	mov r3, #1
	bl sub_0205D994
	ldr r1, _02249A0C ; =0x0224F5A0
	ldr r1, [r1, #0]
	add r1, #0x94
	strb r0, [r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249A0C: .word 0x0224F5A0
	thumb_func_end ov7_02249960

	thumb_func_start ov7_02249A10
ov7_02249A10: ; 0x02249A10
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0x34
	ldr r0, _02249AAC ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x20
	bl sub_0201A7CC
	cmp r0, #0
	bne _02249A54
	ldr r0, _02249AAC ; =0x0224F5A0
	add r3, sp, #0x60
	ldr r1, [r0, #0]
	add r0, sp, #0x64
	ldrb r0, [r0]
	ldrb r3, [r3]
	mov r2, #3
	str r0, [sp]
	add r0, sp, #0x68
	ldrb r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #0x6c
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, sp, #0x40
	ldrh r0, [r0, #0x30]
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x68]
	add r1, #0x20
	ldr r0, [r0, #8]
	bl sub_0201A7E8
_02249A54:
	ldr r0, _02249AAC ; =0x0224F5A0
	ldr r2, _02249AB0 ; =0x000003D9
	ldr r0, [r0, #0]
	mov r1, #1
	add r0, #0x20
	mov r3, #0xb
	bl sub_0200DC48
	add r4, sp, #0x40
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
	ldr r0, _02249AAC ; =0x0224F5A0
	mov r3, #4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x64]
	add r1, #0x20
	str r1, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r1, #0
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0200112C
	ldr r1, _02249AAC ; =0x0224F5A0
	ldr r2, [r1, #0]
	str r0, [r2, #0x5c]
	ldr r0, [r1, #0]
	add r0, #0x20
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02249AAC: .word 0x0224F5A0
_02249AB0: .word 0x000003D9
	thumb_func_end ov7_02249A10

	thumb_func_start ov7_02249AB4
ov7_02249AB4: ; 0x02249AB4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02249B90 ; =0x0224F5A0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249AC4
	bl sub_02022974
_02249AC4:
	mov r0, #4
	mov r1, #0x9c
	bl sub_02018144
	ldr r1, _02249B90 ; =0x0224F5A0
	mov r2, #0x9c
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02249B90 ; =0x0224F5A0
	mov r2, #0
	ldr r1, [r0, #0]
	mov r3, #4
	add r1, #0x88
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	str r4, [r1, #0x68]
	ldr r0, [r0, #0]
	mov r1, #0x1a
	add r0, #0x97
	strb r2, [r0]
	ldr r2, _02249B94 ; =0x00000161
	mov r0, #1
	bl sub_0200B144
	ldr r1, _02249B90 ; =0x0224F5A0
	ldr r2, [r1, #0]
	str r0, [r2, #0x74]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x68]
	bl sub_0203D174
	bl sub_02025E38
	ldr r1, _02249B90 ; =0x0224F5A0
	ldr r1, [r1, #0]
	str r0, [r1, #0x78]
	mov r0, #4
	bl sub_02025E6C
	ldr r1, _02249B90 ; =0x0224F5A0
	ldr r2, [r1, #0]
	str r0, [r2, #0x7c]
	ldr r0, [r1, #0]
	add r0, #0x20
	bl sub_0201A7A0
	ldr r0, _02249B90 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201A7A0
	ldr r0, _02249B90 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x40
	bl sub_0201A7A0
	mov r0, #4
	bl sub_0200B358
	ldr r1, _02249B90 ; =0x0224F5A0
	ldr r1, [r1, #0]
	str r0, [r1, #0x50]
	mov r0, #4
	bl sub_0200B358
	ldr r1, _02249B90 ; =0x0224F5A0
	ldr r1, [r1, #0]
	str r0, [r1, #0x54]
	mov r0, #4
	bl sub_0200B358
	ldr r1, _02249B90 ; =0x0224F5A0
	ldr r2, [r1, #0]
	str r0, [r2, #0x58]
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, #0x98
	strb r2, [r0]
	add r5, r2, #0
_02249B66:
	ldr r0, [r1, #0]
	add r0, r0, r2
	add r0, #0x80
	add r2, r2, #1
	strb r5, [r0]
	cmp r2, #8
	blt _02249B66
	ldr r6, _02249B90 ; =0x0224F5A0
	add r4, r5, #0
	mov r7, #0x8c
_02249B7A:
	add r0, r7, #0
	mov r1, #4
	bl sub_02023790
	ldr r1, [r6, #0]
	add r5, r5, #1
	str r0, [r1, r4]
	add r4, r4, #4
	cmp r5, #8
	blt _02249B7A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249B90: .word 0x0224F5A0
_02249B94: .word 0x00000161
	thumb_func_end ov7_02249AB4

	thumb_func_start ov7_02249B98
ov7_02249B98: ; 0x02249B98
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _02249C28 ; =0x0224F5A0
	add r5, r4, #0
_02249BA0:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _02249BA0
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_020181C4
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _02249BD0
	bl sub_0200B3F0
	ldr r0, _02249C28 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x50]
_02249BD0:
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _02249BE6
	bl sub_0200B3F0
	ldr r0, _02249C28 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x54]
_02249BE6:
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _02249BFC
	bl sub_0200B3F0
	ldr r0, _02249C28 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x58]
_02249BFC:
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x74]
	bl sub_0200B190
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _02249C16
	add r0, #0x40
	bl sub_0201A8FC
_02249C16:
	ldr r0, _02249C28 ; =0x0224F5A0
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02249C28 ; =0x0224F5A0
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	nop
_02249C28: .word 0x0224F5A0
	thumb_func_end ov7_02249B98

	thumb_func_start ov7_02249C2C
ov7_02249C2C: ; 0x02249C2C
	push {r4, lr}
	add r4, r0, #0
	bl ov7_0224B3FC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	add r4, #0x91
	ldrb r1, [r4]
	bl sub_02059748
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_02249C2C

	thumb_func_start ov7_02249C44
ov7_02249C44: ; 0x02249C44
	push {r3, lr}
	ldr r0, _02249C5C ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x98
	strb r1, [r0]
	cmp r2, #0
	bne _02249C5A
	ldr r0, _02249C60 ; =0x000005DC
	bl sub_02005748
_02249C5A:
	pop {r3, pc}
	; .align 2, 0
_02249C5C: .word 0x0224F5A0
_02249C60: .word 0x000005DC
	thumb_func_end ov7_02249C44

	thumb_func_start ov7_02249C64
ov7_02249C64: ; 0x02249C64
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #3
	add r5, r0, #0
	mov r4, #0
	bl sub_02001504
	cmp r0, #0
	bls _02249C92
	add r6, r4, #0
	mov r7, #3
_02249C78:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov7_02249C94
	add r0, r5, #0
	add r1, r7, #0
	add r4, r4, #1
	bl sub_02001504
	cmp r4, r0
	blo _02249C78
_02249C92:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_02249C64

	thumb_func_start ov7_02249C94
ov7_02249C94: ; 0x02249C94
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r2, #0
	bl sub_02033808
	add r4, r0, #0
	mov r2, #0
	add r0, sp, #0xc
	strh r2, [r0]
	ldr r0, _02249E08 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _02249CB6
	add r1, sp, #0xc
	bl sub_020014DC
_02249CB6:
	add r0, sp, #0xc
	ldrh r1, [r0]
	add r1, r1, r5
	strh r1, [r0]
	ldr r0, _02249E08 ; =0x0224F5A0
	lsl r5, r5, #4
	ldr r0, [r0, #0]
	add r0, #0x20
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02249E08 ; =0x0224F5A0
	lsl r3, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #0xf
	add r0, #0x20
	mov r2, #8
	lsr r3, r3, #0x10
	bl sub_0201AE78
	add r0, sp, #0xc
	ldrh r2, [r0]
	cmp r2, r4
	bge _02249DB8
	ldr r1, _02249E08 ; =0x0224F5A0
	add r0, r2, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x7c]
	bl sub_020339AC
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02249E08 ; =0x0224F5A0
	add r2, sp, #0xc
	ldr r0, [r0, #0]
	ldrh r2, [r2]
	ldr r0, [r0, #0x50]
	mov r1, #0
	add r2, r2, #1
	bl sub_0200B60C
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #1
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x50]
	ldr r2, [r2, #0x7c]
	bl sub_0200B498
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0x3f
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #4]
	bl sub_0200B1B8
	ldr r0, _02249E08 ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x50]
	ldmia r2!, {r1, r2}
	bl sub_0200C388
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0
	ldr r2, [r0, #0]
	mov r0, #0xff
	str r5, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	str r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0x20
	mov r3, #8
	bl sub_0201D738
	ldr r0, _02249E08 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_02025F20
	add r2, r0, #0
	mov r1, #2
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02249E08 ; =0x0224F5A0
	lsr r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r3, #5
	ldr r0, [r0, #0x50]
	bl sub_0200B60C
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0x41
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0xc]
	bl sub_0200B1B8
	ldr r0, _02249E08 ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x50]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_0200C388
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0
	ldr r2, [r0, #0]
	mov r0, #0xff
	str r5, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	ldr r2, [r2, #8]
	add r0, #0x20
	mov r3, #0x58
	bl sub_0201D738
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02249DB8:
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r2, #1
	ldr r0, [r0, #0x50]
	bl sub_0200B60C
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0x40
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #4]
	bl sub_0200B1B8
	ldr r0, _02249E08 ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x50]
	ldmia r2!, {r1, r2}
	bl sub_0200C388
	ldr r0, _02249E08 ; =0x0224F5A0
	mov r1, #0
	ldr r2, [r0, #0]
	mov r0, #0xff
	str r5, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	str r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0x20
	mov r3, #8
	bl sub_0201D738
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02249E08: .word 0x0224F5A0
	thumb_func_end ov7_02249C94

	thumb_func_start ov7_02249E0C
ov7_02249E0C: ; 0x02249E0C
	push {r4, lr}
	sub sp, #0x98
	add r4, r0, #0
	ldr r0, _02249ECC ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201A7CC
	cmp r0, #0
	bne _02249E46
	ldr r0, _02249ECC ; =0x0224F5A0
	mov r2, #3
	ldr r1, [r0, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xc9
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x68]
	add r1, #0x30
	ldr r0, [r0, #8]
	mov r3, #0x17
	bl sub_0201A7E8
_02249E46:
	ldr r0, _02249ECC ; =0x0224F5A0
	ldr r2, _02249ED0 ; =0x000003D9
	ldr r0, [r0, #0]
	mov r1, #1
	add r0, #0x30
	mov r3, #0xb
	bl sub_0200DC48
	ldr r0, _02249ECC ; =0x0224F5A0
	mov r1, #0xf
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02249ECC ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201A954
	add r0, r4, #0
	mov r1, #1
	add r0, #0x97
	strb r1, [r0]
	ldr r0, _02249ED4 ; =ov7_0224A718
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	ldr r0, _02249ECC ; =0x0224F5A0
	ldr r0, [r0, #0]
	bl ov7_02249EE0
	ldr r4, _02249ED8 ; =0x0224EF64
	add r3, sp, #0x14
	mov r2, #0x10
_02249E8C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02249E8C
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, _02249ECC ; =0x0224F5A0
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #8
	bne _02249EB4
	add r1, #0x92
	ldrb r0, [r1]
	mov r1, #0
	add r0, #0x67
	bl ov7_02249960
	b _02249EC0
_02249EB4:
	lsl r1, r0, #2
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
_02249EC0:
	ldr r0, _02249EDC ; =ov7_02249F54
	bl ov7_0224A530
	add sp, #0x98
	pop {r4, pc}
	nop
_02249ECC: .word 0x0224F5A0
_02249ED0: .word 0x000003D9
_02249ED4: .word ov7_0224A718
_02249ED8: .word 0x0224EF64
_02249EDC: .word ov7_02249F54
	thumb_func_end ov7_02249E0C

	thumb_func_start ov7_02249EE0
ov7_02249EE0: ; 0x02249EE0
	push {lr}
	sub sp, #0xc
	ldr r0, _02249F50 ; =0x0224F5A0
	mov r1, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x54]
	ldr r2, [r2, #0x78]
	bl sub_0200B498
	ldr r0, _02249F50 ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x78]
	bl sub_02025F20
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	lsl r2, r2, #0x10
	ldr r0, _02249F50 ; =0x0224F5A0
	str r1, [sp, #4]
	ldr r0, [r0, #0]
	lsr r2, r2, #0x10
	ldr r0, [r0, #0x54]
	mov r3, #5
	bl sub_0200B60C
	ldr r0, _02249F50 ; =0x0224F5A0
	mov r1, #0x3e
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0x18]
	bl sub_0200B1B8
	ldr r0, _02249F50 ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x54]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x18]
	bl sub_0200C388
	ldr r0, _02249F50 ; =0x0224F5A0
	mov r3, #2
	ldr r2, [r0, #0]
	mov r1, #0
	str r3, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	str r1, [sp, #8]
	ldr r2, [r2, #0x1c]
	add r0, #0x30
	bl sub_0201D738
	add sp, #0xc
	pop {pc}
	nop
_02249F50: .word 0x0224F5A0
	thumb_func_end ov7_02249EE0

	thumb_func_start ov7_02249F54
ov7_02249F54: ; 0x02249F54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r0, _02249FF0 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _02249FEC
	mov r0, #0x10
	mov r1, #4
	bl sub_02013A04
	ldr r4, _02249FF0 ; =0x0224F5A0
	mov r5, #0
	ldr r1, [r4, #0]
	mov r6, #2
	str r0, [r1, #0x64]
	mov r7, #1
_02249F7C:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x50]
	add r2, r5, #1
	add r3, r6, #0
	bl sub_0200B60C
	ldr r2, [r4, #0]
	mov r1, #0x40
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #4]
	bl sub_0200B1B8
	ldr r2, [r4, #0]
	ldr r0, [r2, #0x50]
	ldmia r2!, {r1, r2}
	bl sub_0200C388
	ldr r1, [r4, #0]
	mov r2, #0
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0]
	bl sub_02013A6C
	add r5, r5, #1
	cmp r5, #0x10
	blt _02249F7C
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #0x14
	str r0, [sp, #0x18]
	mov r0, #0xa
	mov r4, sp
	str r0, [sp, #0x1c]
	sub r4, #0x10
	ldr r3, _02249FF4 ; =0x0224ED34
	str r1, [sp, #0x20]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1, r2, r3}
	bl ov7_02249A10
	ldr r0, _02249FF8 ; =ov7_02249FFC
	bl ov7_0224A530
_02249FEC:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02249FF0: .word 0x0224F5A0
_02249FF4: .word 0x0224ED34
_02249FF8: .word ov7_02249FFC
	thumb_func_end ov7_02249F54

	thumb_func_start ov7_02249FFC
ov7_02249FFC: ; 0x02249FFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov7_02249EE0
	bl sub_020360F0
	cmp r0, #0
	beq _0224A028
	ldr r0, _0224A0BC ; =0x0224F5A0
	mov r1, #3
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
	bl ov7_0224A528
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	pop {r3, r4, r5, pc}
_0224A028:
	bl sub_02033870
	cmp r0, #0
	beq _0224A036
	mov r0, #0
	mvn r0, r0
	b _0224A040
_0224A036:
	ldr r0, _0224A0BC ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x5c]
	bl sub_02001288
_0224A040:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224A056
	add r1, r1, #1
	cmp r0, r1
	bne _0224A074
	add r0, r4, #0
	bl ov7_0224A0C8
	pop {r3, r4, r5, pc}
_0224A056:
	ldr r0, _0224A0C0 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0224A0BC ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
	bl ov7_0224A528
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	pop {r3, r4, r5, pc}
_0224A074:
	ldr r0, _0224A0C0 ; =0x000005DC
	bl sub_02005748
	add r1, r4, #0
	ldr r0, [r4, #0x5c]
	add r1, #0x8e
	bl sub_020014D0
	bl sub_02033808
	add r1, r4, #0
	add r1, #0x8e
	ldrh r1, [r1]
	cmp r0, r1
	ble _0224A0BA
	add r0, r4, #0
	bl ov7_0224A0C8
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	bl sub_0203383C
	add r1, r4, #0
	add r1, #0x8e
	add r4, #0x8e
	strh r0, [r1]
	ldrh r0, [r4]
	bl sub_02059788
	bl sub_020365D0
	ldr r0, _0224A0C4 ; =ov7_0224A128
	bl ov7_0224A530
_0224A0BA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224A0BC: .word 0x0224F5A0
_0224A0C0: .word 0x000005DC
_0224A0C4: .word ov7_0224A128
	thumb_func_end ov7_02249FFC

	thumb_func_start ov7_0224A0C8
ov7_0224A0C8: ; 0x0224A0C8
	push {r3, lr}
	sub sp, #8
	bl sub_02033870
	cmp r0, #0
	bne _0224A0E0
	ldr r0, _0224A124 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224A11E
_0224A0E0:
	ldr r0, _0224A124 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x98
	strb r1, [r0]
	bl sub_02033884
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	ldr r0, _0224A124 ; =0x0224F5A0
	mov r1, #0xf
	ldr r0, [r0, #0]
	mov r2, #8
	add r0, #0x20
	mov r3, #0
	bl sub_0201AE78
	ldr r0, _0224A124 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	ldr r0, [r0, #0x5c]
	bl ov7_02249C64
	ldr r0, _0224A124 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x20
	bl sub_0201A954
_0224A11E:
	add sp, #8
	pop {r3, pc}
	nop
_0224A124: .word 0x0224F5A0
	thumb_func_end ov7_0224A0C8

	thumb_func_start ov7_0224A128
ov7_0224A128: ; 0x0224A128
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020360F0
	cmp r0, #0
	beq _0224A152
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	mov r0, #0
	add r1, r0, #0
	bl ov7_02249960
	add r0, r4, #0
	bl ov7_0224B348
	add sp, #0xc
	pop {r4, r5, pc}
_0224A152:
	bl sub_0203608C
	bl sub_02032EE8
	cmp r0, #0
	beq _0224A238
	bl sub_020365D0
	ldr r1, _0224A23C ; =0x0224F5A0
	add r0, r4, #0
	add r0, #0x8e
	ldr r1, [r1, #0]
	ldrh r0, [r0]
	ldr r1, [r1, #0x7c]
	bl sub_020339AC
	ldr r2, _0224A23C ; =0x0224F5A0
	ldr r0, [r4, #0x58]
	ldr r2, [r2, #0]
	mov r1, #1
	ldr r2, [r2, #0x7c]
	bl sub_0200B498
	bl ov7_0224B3D4
	cmp r0, #2
	bgt _0224A192
	mov r0, #1
	add r1, r0, #0
	bl ov7_02249960
	b _0224A232
_0224A192:
	ldr r0, _0224A23C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224A1AE
	ldr r0, _0224A23C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0201D730
_0224A1AE:
	ldr r0, _0224A23C ; =0x0224F5A0
	mov r1, #2
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0x10]
	bl sub_0200B1B8
	ldr r0, _0224A23C ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x58]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl sub_0200C388
	ldr r0, _0224A23C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x40
	bl sub_0201A7CC
	cmp r0, #0
	bne _0224A1E8
	ldr r0, _0224A23C ; =0x0224F5A0
	mov r2, #3
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x68]
	add r1, #0x40
	ldr r0, [r0, #8]
	bl sub_0205D8F4
_0224A1E8:
	ldr r0, _0224A23C ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x68]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	ldr r0, _0224A23C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x40
	bl sub_0205D944
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, _0224A23C ; =0x0224F5A0
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #1
	str r3, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	str r3, [sp, #8]
	ldr r2, [r2, #0x14]
	add r0, #0x40
	bl sub_0201D738
	ldr r1, _0224A23C ; =0x0224F5A0
	ldr r1, [r1, #0]
	add r1, #0x94
	strb r0, [r1]
_0224A232:
	ldr r0, _0224A240 ; =ov7_0224A34C
	bl ov7_0224A530
_0224A238:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224A23C: .word 0x0224F5A0
_0224A240: .word ov7_0224A34C
	thumb_func_end ov7_0224A128

	thumb_func_start ov7_0224A244
ov7_0224A244: ; 0x0224A244
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r1, #0
	bl sub_020360F0
	cmp r0, #0
	beq _0224A26A
	add r0, r6, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	mov r0, #0
	add r1, r0, #0
	bl ov7_02249960
	add r0, r4, #0
	bl ov7_0224B348
	b _0224A33E
_0224A26A:
	mov r0, #0
	mov r1, #3
	bl sub_020365A8
	add r5, r0, #0
	bl sub_0203608C
	cmp r5, r0
	bne _0224A290
	bl sub_020365D0
	add r0, r6, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	add r0, r4, #0
	bl ov7_0224B2DC
	b _0224A33E
_0224A290:
	mov r0, #0
	mov r1, #5
	bl sub_020365A8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224A2B4
	bl sub_020365D0
	add r0, r6, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	add r0, r4, #0
	bl ov7_0224B2DC
	b _0224A33E
_0224A2B4:
	mov r0, #0
	mov r1, #4
	bl sub_020365A8
	add r5, r0, #0
	bl sub_0203608C
	cmp r5, r0
	bne _0224A2D6
	mov r0, #0x61
	mov r1, #0
	bl ov7_02249960
	ldr r0, _0224A344 ; =ov7_0224AB64
	bl ov7_0224A530
	b _0224A33E
_0224A2D6:
	mov r0, #0
	mov r1, #2
	bl sub_020365A8
	add r5, r0, #0
	bl sub_0203608C
	cmp r5, r0
	bne _0224A322
	bl sub_020365D0
	bl sub_02032E64
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r1]
	ldr r0, _0224A348 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224A312
	ldr r0, _0224A348 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0201D730
_0224A312:
	add r0, r6, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	add r0, r4, #0
	bl ov7_0224B08C
	b _0224A33E
_0224A322:
	bl ov7_0224B4E4
	cmp r0, #0
	beq _0224A33A
	add r0, r6, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	add r0, r4, #0
	bl ov7_0224B2DC
	b _0224A33E
_0224A33A:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224A33E:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0224A344: .word ov7_0224AB64
_0224A348: .word 0x0224F5A0
	thumb_func_end ov7_0224A244

	thumb_func_start ov7_0224A34C
ov7_0224A34C: ; 0x0224A34C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224A388 ; =0x0224F5A0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224A386
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224A244
	cmp r0, #0
	bne _0224A386
	ldr r0, _0224A38C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0224A386
	mov r0, #3
	mov r1, #0
	bl ov7_02249960
	ldr r0, _0224A390 ; =ov7_0224A394
	bl ov7_0224A530
_0224A386:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224A388: .word 0x0224F5A0
_0224A38C: .word 0x021BF67C
_0224A390: .word ov7_0224A394
	thumb_func_end ov7_0224A34C

	thumb_func_start ov7_0224A394
ov7_0224A394: ; 0x0224A394
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl ov7_0224A244
	cmp r0, #0
	bne _0224A3D0
	ldr r0, _0224A3D4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224A3D0
	mov r0, #4
	str r0, [sp]
	ldr r0, _0224A3D4 ; =0x0224F5A0
	ldr r1, _0224A3D8 ; =0x0224ED0C
	ldr r0, [r0, #0]
	ldr r2, _0224A3DC ; =0x000003D9
	ldr r0, [r0, #0x68]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_02002100
	str r0, [r4, #0x60]
	ldr r0, _0224A3E0 ; =ov7_0224A3E4
	bl ov7_0224A530
_0224A3D0:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0224A3D4: .word 0x0224F5A0
_0224A3D8: .word 0x0224ED0C
_0224A3DC: .word 0x000003D9
_0224A3E0: .word ov7_0224A3E4
	thumb_func_end ov7_0224A394

	thumb_func_start ov7_0224A3E4
ov7_0224A3E4: ; 0x0224A3E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov7_0224A244
	cmp r0, #0
	ldr r0, [r4, #0x60]
	beq _0224A400
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0224A400:
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224A422
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	mov r0, #6
	mov r1, #0
	bl ov7_02249960
	add r0, r4, #0
	bl ov7_0224B348
	pop {r3, r4, r5, pc}
_0224A422:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224A430
	ldr r0, _0224A434 ; =ov7_0224A128
	bl ov7_0224A530
_0224A430:
	pop {r3, r4, r5, pc}
	nop
_0224A434: .word ov7_0224A128
	thumb_func_end ov7_0224A3E4

	thumb_func_start ov7_0224A438
ov7_0224A438: ; 0x0224A438
	push {r4, lr}
	sub sp, #0x10
	add r4, r2, #0
	mov r2, #0
	add r0, sp, #0xc
	strh r2, [r0]
	ldr r0, _0224A50C ; =0x0224F5A0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _0224A454
	add r1, sp, #0xc
	bl sub_020014DC
_0224A454:
	add r0, sp, #0xc
	ldrh r1, [r0]
	add r1, r1, r4
	strh r1, [r0]
	ldrh r0, [r0]
	bl sub_02032EE8
	cmp r0, #0
	beq _0224A506
	add r0, sp, #0xc
	ldrh r0, [r0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, _0224A50C ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	bl sub_0200B498
	ldr r0, _0224A50C ; =0x0224F5A0
	mov r1, #0x42
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #4]
	bl sub_0200B1B8
	ldr r0, _0224A50C ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x50]
	ldmia r2!, {r1, r2}
	bl sub_0200C388
	ldr r0, _0224A50C ; =0x0224F5A0
	lsl r4, r4, #4
	ldr r2, [r0, #0]
	mov r1, #0
	str r4, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	str r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0x20
	mov r3, #8
	bl sub_0201D738
	add r0, sp, #0xc
	ldrh r0, [r0]
	bl sub_02032EE8
	bl sub_02025F24
	mov r1, #2
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0224A50C ; =0x0224F5A0
	mov r3, #5
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	bl sub_0200B60C
	ldr r0, _0224A50C ; =0x0224F5A0
	mov r1, #0x41
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0xc]
	bl sub_0200B1B8
	ldr r0, _0224A50C ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x50]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_0200C388
	ldr r0, _0224A50C ; =0x0224F5A0
	mov r1, #0
	ldr r2, [r0, #0]
	mov r3, #0x48
	str r4, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	str r1, [sp, #8]
	ldr r2, [r2, #8]
	add r0, #0x20
	bl sub_0201D738
_0224A506:
	add sp, #0x10
	pop {r4, pc}
	nop
_0224A50C: .word 0x0224F5A0
	thumb_func_end ov7_0224A438

	thumb_func_start ov7_0224A510
ov7_0224A510: ; 0x0224A510
	push {r4, lr}
	add r4, r0, #0
	bl ov7_0224B3FC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	add r4, #0x91
	ldrb r1, [r4]
	bl sub_02059708
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224A510

	thumb_func_start ov7_0224A528
ov7_0224A528: ; 0x0224A528
	ldr r3, _0224A52C ; =sub_0205987C
	bx r3
	; .align 2, 0
_0224A52C: .word sub_0205987C
	thumb_func_end ov7_0224A528

	thumb_func_start ov7_0224A530
ov7_0224A530: ; 0x0224A530
	ldr r1, _0224A538 ; =0x0224F5A0
	ldr r1, [r1, #0]
	str r0, [r1, #0x6c]
	bx lr
	; .align 2, 0
_0224A538: .word 0x0224F5A0
	thumb_func_end ov7_0224A530

	thumb_func_start ov7_0224A53C
ov7_0224A53C: ; 0x0224A53C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0224A5C0 ; =ov7_0224A718
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	bl ov7_0224A5D0
	ldr r0, _0224A5C4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201A7CC
	cmp r0, #0
	bne _0224A584
	ldr r0, _0224A5C4 ; =0x0224F5A0
	mov r2, #3
	ldr r1, [r0, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xcd
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x68]
	add r1, #0x30
	ldr r0, [r0, #8]
	mov r3, #0x16
	bl sub_0201A7E8
_0224A584:
	ldr r0, _0224A5C4 ; =0x0224F5A0
	ldr r2, _0224A5C8 ; =0x000003D9
	ldr r0, [r0, #0]
	mov r1, #1
	add r0, #0x30
	mov r3, #0xb
	bl sub_0200DC48
	ldr r0, _0224A5C4 ; =0x0224F5A0
	mov r1, #0xf
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _0224A5C4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201A954
	mov r0, #1
	add r4, #0x97
	strb r0, [r4]
	mov r0, #0
	bl sub_02032E1C
	ldr r0, _0224A5CC ; =ov7_0224A72C
	bl ov7_0224A530
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0224A5C0: .word ov7_0224A718
_0224A5C4: .word 0x0224F5A0
_0224A5C8: .word 0x000003D9
_0224A5CC: .word ov7_0224A72C
	thumb_func_end ov7_0224A53C

	thumb_func_start ov7_0224A5D0
ov7_0224A5D0: ; 0x0224A5D0
	push {r3, r4, lr}
	sub sp, #0x84
	ldr r4, _0224A644 ; =0x0224EDD8
	add r3, sp, #0
	mov r2, #0x10
_0224A5DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224A5DA
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, _0224A648 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #0x21
	blo _0224A5F6
	bl sub_02022974
_0224A5F6:
	ldr r0, _0224A648 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224A632
	bl sub_02032E64
	cmp r0, #1
	ble _0224A61E
	ldr r0, _0224A648 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x92
	ldrb r0, [r0]
	add r0, #0x6c
	bl ov7_02249960
	add sp, #0x84
	pop {r3, r4, pc}
_0224A61E:
	ldr r0, _0224A648 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x92
	ldrb r0, [r0]
	add r0, #0x62
	bl ov7_02249960
	add sp, #0x84
	pop {r3, r4, pc}
_0224A632:
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
	add sp, #0x84
	pop {r3, r4, pc}
	nop
_0224A644: .word 0x0224EDD8
_0224A648: .word 0x0224F5A0
	thumb_func_end ov7_0224A5D0

	thumb_func_start ov7_0224A64C
ov7_0224A64C: ; 0x0224A64C
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_02032E64
	add r4, r0, #0
	bl ov7_0224B3D4
	cmp r4, r0
	blt _0224A668
	bl sub_02032E64
	add r2, r0, #0
	mov r4, #0x44
	b _0224A676
_0224A668:
	bl ov7_0224B3D4
	add r4, r0, #0
	bl sub_02032E64
	sub r2, r4, r0
	mov r4, #0x43
_0224A676:
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0224A6D0 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	mov r3, #2
	ldr r0, [r0, #0x54]
	bl sub_0200B60C
	ldr r0, _0224A6D0 ; =0x0224F5A0
	mov r1, #0xf
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _0224A6D0 ; =0x0224F5A0
	add r1, r4, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x74]
	ldr r2, [r2, #0x1c]
	bl sub_0200B1B8
	ldr r0, _0224A6D0 ; =0x0224F5A0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x54]
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	bl sub_0200C388
	ldr r0, _0224A6D0 ; =0x0224F5A0
	mov r3, #2
	ldr r2, [r0, #0]
	mov r1, #0
	str r3, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	str r1, [sp, #8]
	ldr r2, [r2, #0x18]
	add r0, #0x30
	bl sub_0201D738
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224A6D0: .word 0x0224F5A0
	thumb_func_end ov7_0224A64C

	thumb_func_start ov7_0224A6D4
ov7_0224A6D4: ; 0x0224A6D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x84
	ldr r6, _0224A714 ; =0x0224ED54
	add r2, r0, #0
	add r4, r1, #0
	add r5, sp, #0
	mov r3, #0x10
_0224A6E2:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0224A6E2
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r2, #0
	bl sub_02032EE8
	add r2, r0, #0
	beq _0224A700
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_0200B498
_0224A700:
	add r4, #0x91
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov7_02249960
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224A714: .word 0x0224ED54
	thumb_func_end ov7_0224A6D4

	thumb_func_start ov7_0224A718
ov7_0224A718: ; 0x0224A718
	push {r3, lr}
	ldr r2, _0224A728 ; =0x0224F5A0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x6c]
	cmp r2, #0
	beq _0224A726
	blx r2
_0224A726:
	pop {r3, pc}
	; .align 2, 0
_0224A728: .word 0x0224F5A0
	thumb_func_end ov7_0224A718

	thumb_func_start ov7_0224A72C
ov7_0224A72C: ; 0x0224A72C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r0, r1, #0
	bl ov7_0224A64C
	ldr r0, _0224A7C4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224A7C0
	mov r0, #5
	mov r1, #4
	bl sub_02013A04
	ldr r4, _0224A7C4 ; =0x0224F5A0
	mov r5, #0
	ldr r1, [r4, #0]
	mov r6, #0x45
	str r0, [r1, #0x64]
	add r7, r5, #0
_0224A75A:
	ldr r1, [r4, #0]
	add r2, r6, #0
	ldr r0, [r1, #0x64]
	ldr r1, [r1, #0x74]
	add r3, r7, #0
	bl sub_02013A4C
	add r5, r5, #1
	cmp r5, #5
	blt _0224A75A
	ldr r1, _0224A7C4 ; =0x0224F5A0
	mov r2, #1
	ldr r0, [r1, #0]
	mov r3, #0
	add r0, #0x98
	strb r2, [r0]
	add r2, r3, #0
_0224A77C:
	ldr r0, [r1, #0]
	add r0, r0, r3
	add r0, #0x80
	add r3, r3, #1
	strb r2, [r0]
	cmp r3, #8
	blt _0224A77C
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #0x11
	str r0, [sp, #0x18]
	mov r0, #0xc
	mov r4, sp
	str r0, [sp, #0x1c]
	sub r4, #0x10
	ldr r3, _0224A7C8 ; =0x0224ED14
	str r1, [sp, #0x20]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1, r2, r3}
	bl ov7_02249A10
	ldr r0, _0224A7CC ; =ov7_0224A7D0
	bl ov7_0224A530
_0224A7C0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A7C4: .word 0x0224F5A0
_0224A7C8: .word 0x0224ED14
_0224A7CC: .word ov7_0224A7D0
	thumb_func_end ov7_0224A72C

	thumb_func_start ov7_0224A7D0
ov7_0224A7D0: ; 0x0224A7D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl ov7_0224A64C
	mov r7, #1
	ldr r4, _0224A964 ; =0x0224F5A0
	mov r5, #0
	add r6, r7, #0
_0224A7E6:
	add r0, r5, #0
	bl sub_02032DC4
	cmp r0, #0
	beq _0224A804
	cmp r5, #0
	beq _0224A804
	ldr r0, [r4, #0]
	add r0, r0, r5
	add r0, #0x80
	strb r6, [r0]
	ldr r0, [r4, #0]
	add r0, #0x98
	strb r6, [r0]
	b _0224A84E
_0224A804:
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _0224A828
	ldr r1, [r4, #0]
	add r0, r1, r5
	add r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224A828
	add r0, r1, r5
	add r0, #0x80
	strb r7, [r0]
	ldr r0, [r4, #0]
	add r0, #0x98
	strb r7, [r0]
	b _0224A84E
_0224A828:
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _0224A84E
	ldr r1, [r4, #0]
	add r0, r1, r5
	add r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224A84E
	add r1, r1, r5
	add r1, #0x80
	mov r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0]
	mov r0, #1
	add r1, #0x98
	strb r0, [r1]
_0224A84E:
	add r5, r5, #1
	cmp r5, #8
	blt _0224A7E6
	ldr r1, _0224A964 ; =0x0224F5A0
	ldr r2, [r1, #0]
	add r0, r2, #0
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224A8A6
	mov r0, #0
	add r2, #0x98
	strb r0, [r2]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x5c]
	bl sub_020013AC
	ldr r0, _0224A964 ; =0x0224F5A0
	mov r1, #3
	ldr r0, [r0, #0]
	mov r5, #0
	ldr r0, [r0, #0x5c]
	bl sub_02001504
	cmp r0, #0
	bls _0224A8A6
	ldr r4, _0224A964 ; =0x0224F5A0
	add r6, r5, #0
	mov r7, #3
_0224A888:
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0x5c]
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov7_0224A438
	ldr r0, [r4, #0]
	add r1, r7, #0
	ldr r0, [r0, #0x5c]
	add r5, r5, #1
	bl sub_02001504
	cmp r5, r0
	blo _0224A888
_0224A8A6:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x5c]
	bl sub_02001288
	add r4, r0, #0
	bl sub_02032E44
	cmp r0, #0xff
	beq _0224A8DE
	bl sub_02032E44
	ldr r1, [sp, #4]
	add r1, #0x95
	strb r0, [r1]
	ldr r0, _0224A968 ; =0x0000060D
	bl sub_02005748
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, #0x95
	ldrb r0, [r0]
	bl ov7_0224A6D4
	ldr r0, _0224A96C ; =ov7_0224AF84
	bl ov7_0224A530
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
_0224A8DE:
	bl sub_020360F0
	cmp r0, #0
	beq _0224A900
	bl ov7_0224A528
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov7_0224AFD8
	ldr r0, _0224A964 ; =0x0224F5A0
	mov r1, #3
	ldr r0, [r0, #0]
	add sp, #0x8c
	add r0, #0x88
	str r1, [r0, #0]
	pop {r4, r5, r6, r7, pc}
_0224A900:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224A910
	add r0, r0, #1
	cmp r4, r0
	beq _0224A95E
	b _0224A91A
_0224A910:
	ldr r0, _0224A970 ; =ov7_0224AE10
	bl ov7_0224A530
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
_0224A91A:
	bl ov7_0224B3D4
	add r4, r0, #0
	bl sub_02032E64
	cmp r4, r0
	bgt _0224A95E
	ldr r4, _0224A974 ; =0x0224EEE0
	add r3, sp, #8
	mov r2, #0x10
_0224A92E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224A92E
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	bl sub_02032E64
	ldr r1, [sp, #4]
	add r1, #0x90
	strb r0, [r1]
	ldr r0, [sp, #4]
	add r0, #0x91
	str r0, [sp, #4]
	ldrb r0, [r0]
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
	ldr r0, _0224A978 ; =ov7_0224AC48
	bl ov7_0224A530
_0224A95E:
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0224A964: .word 0x0224F5A0
_0224A968: .word 0x0000060D
_0224A96C: .word ov7_0224AF84
_0224A970: .word ov7_0224AE10
_0224A974: .word 0x0224EEE0
_0224A978: .word ov7_0224AC48
	thumb_func_end ov7_0224A7D0

	thumb_func_start ov7_0224A97C
ov7_0224A97C: ; 0x0224A97C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl ov7_0224A64C
	ldr r0, [r4, #0x5c]
	bl sub_02001288
	ldr r0, [r4, #0x60]
	mov r1, #4
	bl sub_02002114
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x95
	ldrb r0, [r0]
	bl sub_02035D78
	cmp r0, #0
	bne _0224AA1A
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0224A9B6
	ldr r0, [r4, #0x60]
	mov r1, #4
	bl sub_02002154
_0224A9B6:
	add r0, r4, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224AA02
	mov r5, #1
	bl ov7_0224B3E8
	cmp r0, #1
	ble _0224A9F2
	mov r4, #5
_0224A9CC:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224A9E8
	add r0, r5, #0
	bl sub_02032D98
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02036594
_0224A9E8:
	add r5, r5, #1
	bl ov7_0224B3E8
	cmp r5, r0
	blt _0224A9CC
_0224A9F2:
	mov r0, #0
	add r1, r0, #0
	bl ov7_02249960
	ldr r0, _0224AB54 ; =ov7_0224ABA4
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AA02:
	add r4, #0x95
	ldrb r0, [r4]
	bl sub_02032D98
	mov r0, #0
	add r1, r0, #0
	bl ov7_02249960
	ldr r0, _0224AB54 ; =ov7_0224ABA4
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AA1A:
	bl sub_020360F0
	cmp r0, #0
	bne _0224AA2A
	bl ov7_0224B4E4
	cmp r0, #0
	beq _0224AA52
_0224AA2A:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0224AA3A
	ldr r0, [r4, #0x60]
	mov r1, #4
	bl sub_02002154
_0224AA3A:
	add r4, #0x95
	ldrb r0, [r4]
	bl sub_02032D98
	mov r0, #0
	add r1, r0, #0
	bl ov7_02249960
	ldr r0, _0224AB54 ; =ov7_0224ABA4
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AA52:
	cmp r5, #0
	bne _0224AAE2
	add r0, r4, #0
	add r0, #0x91
	ldrb r0, [r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0224AA88
	bl sub_02032FE4
	cmp r0, #0
	bne _0224AA88
	mov r0, #0x61
	mov r1, #0
	bl ov7_02249960
	ldr r0, _0224AB58 ; =ov7_0224AB64
	bl ov7_0224A530
	add r4, #0x95
	ldrb r1, [r4]
	mov r0, #4
	bl sub_02036594
	pop {r4, r5, r6, pc}
_0224AA88:
	add r0, r4, #0
	add r0, #0x95
	ldrb r0, [r0]
	bl sub_02032E1C
	add r1, r4, #0
	add r1, #0x95
	ldrb r1, [r1]
	mov r0, #2
	bl sub_02036594
	bl ov7_0224B3E8
	add r5, r0, #0
	bl sub_02032E64
	cmp r5, r0
	bne _0224AAD6
	bl sub_02032E64
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r1]
	bl ov7_0224B3E8
	cmp r0, #2
	ble _0224AAC6
	ldr r0, _0224AB5C ; =ov7_0224AC08
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AAC6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	add r0, r4, #0
	bl ov7_0224B054
	pop {r4, r5, r6, pc}
_0224AAD6:
	bl ov7_0224A5D0
	ldr r0, _0224AB60 ; =ov7_0224ABE0
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AAE2:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0224AB50
	add r0, r4, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224AB32
	mov r5, #1
	bl ov7_0224B3E8
	cmp r0, #1
	ble _0224AB26
	mov r4, #5
_0224AB00:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224AB1C
	add r0, r5, #0
	bl sub_02032D98
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02036594
_0224AB1C:
	add r5, r5, #1
	bl ov7_0224B3E8
	cmp r5, r0
	blt _0224AB00
_0224AB26:
	bl ov7_0224A5D0
	ldr r0, _0224AB60 ; =ov7_0224ABE0
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AB32:
	add r0, r4, #0
	add r0, #0x95
	ldrb r0, [r0]
	bl sub_02032D98
	add r4, #0x95
	ldrb r1, [r4]
	mov r0, #3
	bl sub_02036594
	bl ov7_0224A5D0
	ldr r0, _0224AB60 ; =ov7_0224ABE0
	bl ov7_0224A530
_0224AB50:
	pop {r4, r5, r6, pc}
	nop
_0224AB54: .word ov7_0224ABA4
_0224AB58: .word ov7_0224AB64
_0224AB5C: .word ov7_0224AC08
_0224AB60: .word ov7_0224ABE0
	thumb_func_end ov7_0224A97C

	thumb_func_start ov7_0224AB64
ov7_0224AB64: ; 0x0224AB64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224AB9C ; =0x0224F5A0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224AB9A
	ldr r0, _0224ABA0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224AB9A
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	bl ov7_0224A528
	ldr r0, _0224AB9C ; =0x0224F5A0
	mov r1, #4
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
_0224AB9A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AB9C: .word 0x0224F5A0
_0224ABA0: .word 0x021BF67C
	thumb_func_end ov7_0224AB64

	thumb_func_start ov7_0224ABA4
ov7_0224ABA4: ; 0x0224ABA4
	push {r3, lr}
	add r0, r1, #0
	bl ov7_0224A64C
	ldr r0, _0224ABD4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224ABD0
	ldr r0, _0224ABD8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224ABD0
	bl ov7_0224A5D0
	ldr r0, _0224ABDC ; =ov7_0224ABE0
	bl ov7_0224A530
_0224ABD0:
	pop {r3, pc}
	nop
_0224ABD4: .word 0x0224F5A0
_0224ABD8: .word 0x021BF67C
_0224ABDC: .word ov7_0224ABE0
	thumb_func_end ov7_0224ABA4

	thumb_func_start ov7_0224ABE0
ov7_0224ABE0: ; 0x0224ABE0
	push {r3, lr}
	add r0, r1, #0
	bl ov7_0224A64C
	ldr r0, _0224AC00 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224ABFE
	ldr r0, _0224AC04 ; =ov7_0224A7D0
	bl ov7_0224A530
_0224ABFE:
	pop {r3, pc}
	; .align 2, 0
_0224AC00: .word 0x0224F5A0
_0224AC04: .word ov7_0224A7D0
	thumb_func_end ov7_0224ABE0

	thumb_func_start ov7_0224AC08
ov7_0224AC08: ; 0x0224AC08
	push {r4, r5, lr}
	sub sp, #0x84
	ldr r5, _0224AC40 ; =0x0224EFE8
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #0x10
_0224AC14:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224AC14
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	bl ov7_0224A64C
	add r4, #0x91
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
	ldr r0, _0224AC44 ; =ov7_0224AC48
	bl ov7_0224A530
	add sp, #0x84
	pop {r4, r5, pc}
	; .align 2, 0
_0224AC40: .word 0x0224EFE8
_0224AC44: .word ov7_0224AC48
	thumb_func_end ov7_0224AC08

	thumb_func_start ov7_0224AC48
ov7_0224AC48: ; 0x0224AC48
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r0, r4, #0
	bl ov7_0224A64C
	mov r0, #0
	bl sub_02036994
	ldr r0, [r4, #0x5c]
	bl sub_02001288
	ldr r0, _0224AC94 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224AC8E
	mov r0, #4
	str r0, [sp]
	ldr r0, _0224AC94 ; =0x0224F5A0
	ldr r1, _0224AC98 ; =0x0224ED0C
	ldr r0, [r0, #0]
	ldr r2, _0224AC9C ; =0x000003D9
	ldr r0, [r0, #0x68]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_02002100
	str r0, [r4, #0x60]
	ldr r0, _0224ACA0 ; =ov7_0224ACA4
	bl ov7_0224A530
_0224AC8E:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224AC94: .word 0x0224F5A0
_0224AC98: .word 0x0224ED0C
_0224AC9C: .word 0x000003D9
_0224ACA0: .word ov7_0224ACA4
	thumb_func_end ov7_0224AC48

	thumb_func_start ov7_0224ACA4
ov7_0224ACA4: ; 0x0224ACA4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl ov7_0224A64C
	ldr r0, [r5, #0x5c]
	bl sub_02001288
	ldr r0, [r5, #0x60]
	mov r1, #4
	bl sub_02002114
	add r4, r0, #0
	bl sub_020360F0
	cmp r0, #0
	bne _0224ACD6
	bl sub_02035E18
	add r1, r5, #0
	add r1, #0x90
	ldrb r1, [r1]
	cmp r1, r0
	beq _0224ACF2
_0224ACD6:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0224ACE6
	ldr r0, [r5, #0x60]
	mov r1, #4
	bl sub_02002154
_0224ACE6:
	mov r0, #0
	str r0, [r5, #0x60]
	ldr r0, _0224AD5C ; =ov7_0224AD68
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224ACF2:
	cmp r4, #0
	bne _0224AD34
	add r5, #0x91
	ldrb r0, [r5]
	cmp r0, #8
	bne _0224AD26
	mov r4, #1
	bl sub_02035E18
	cmp r0, #1
	ble _0224AD26
_0224AD08:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0224AD1C
	ldr r0, _0224AD5C ; =ov7_0224AD68
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AD1C:
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _0224AD08
_0224AD26:
	mov r0, #0xa
	bl sub_020364F0
	ldr r0, _0224AD60 ; =ov7_0224AF2C
	bl ov7_0224A530
	pop {r4, r5, r6, pc}
_0224AD34:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0224AD58
	mov r0, #1
	bl sub_02036994
	bl ov7_0224A528
	add r0, r6, #0
	add r1, r5, #0
	bl ov7_0224AFD8
	ldr r0, _0224AD64 ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
_0224AD58:
	pop {r4, r5, r6, pc}
	nop
_0224AD5C: .word ov7_0224AD68
_0224AD60: .word ov7_0224AF2C
_0224AD64: .word 0x0224F5A0
	thumb_func_end ov7_0224ACA4

	thumb_func_start ov7_0224AD68
ov7_0224AD68: ; 0x0224AD68
	push {r3, r4, r5, r6, lr}
	sub sp, #0x84
	ldr r6, _0224ADCC ; =0x0224EE5C
	add r2, r0, #0
	add r4, r1, #0
	add r5, sp, #0
	mov r3, #0x10
_0224AD76:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0224AD76
	ldr r0, [r6, #0]
	add r1, r4, #0
	str r0, [r5, #0]
	add r0, r2, #0
	bl ov7_0224AFD8
	ldr r0, _0224ADD0 ; =0x0224F5A0
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224ADA6
	add r1, #0x92
	ldrb r0, [r1]
	mov r1, #0
	add r0, #0x76
	bl ov7_02249960
	b _0224ADB8
_0224ADA6:
	add r0, r4, #0
	add r0, #0x91
	ldrb r0, [r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
_0224ADB8:
	bl sub_0205987C
	ldr r0, _0224ADD4 ; =ov7_0224ADD8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
	nop
_0224ADCC: .word 0x0224EE5C
_0224ADD0: .word 0x0224F5A0
_0224ADD4: .word ov7_0224ADD8
	thumb_func_end ov7_0224AD68

	thumb_func_start ov7_0224ADD8
ov7_0224ADD8: ; 0x0224ADD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224AE08 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224AE06
	ldr r0, _0224AE0C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224AE06
	ldr r0, _0224AE08 ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_0200DA58
_0224AE06:
	pop {r4, pc}
	; .align 2, 0
_0224AE08: .word 0x0224F5A0
_0224AE0C: .word 0x021BF67C
	thumb_func_end ov7_0224ADD8

	thumb_func_start ov7_0224AE10
ov7_0224AE10: ; 0x0224AE10
	push {r3, r4, r5, r6, lr}
	sub sp, #0x84
	ldr r6, _0224AE6C ; =0x0224F06C
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #0x10
_0224AE1E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224AE1E
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	bl ov7_0224A64C
	bl sub_02032E64
	cmp r0, #1
	ble _0224AE52
	add r4, #0x91
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
	ldr r0, _0224AE70 ; =ov7_0224AE78
	bl ov7_0224A530
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
_0224AE52:
	bl ov7_0224A528
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	ldr r0, _0224AE74 ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224AE6C: .word 0x0224F06C
_0224AE70: .word ov7_0224AE78
_0224AE74: .word 0x0224F5A0
	thumb_func_end ov7_0224AE10

	thumb_func_start ov7_0224AE78
ov7_0224AE78: ; 0x0224AE78
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r0, r4, #0
	bl ov7_0224A64C
	ldr r0, [r4, #0x5c]
	bl sub_02001288
	ldr r0, _0224AEBC ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224AEB8
	mov r0, #4
	str r0, [sp]
	ldr r0, _0224AEBC ; =0x0224F5A0
	ldr r1, _0224AEC0 ; =0x0224ED0C
	ldr r0, [r0, #0]
	ldr r2, _0224AEC4 ; =0x000003D9
	ldr r0, [r0, #0x68]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_02002100
	str r0, [r4, #0x60]
	ldr r0, _0224AEC8 ; =ov7_0224AECC
	bl ov7_0224A530
_0224AEB8:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0224AEBC: .word 0x0224F5A0
_0224AEC0: .word 0x0224ED0C
_0224AEC4: .word 0x000003D9
_0224AEC8: .word ov7_0224AECC
	thumb_func_end ov7_0224AE78

	thumb_func_start ov7_0224AECC
ov7_0224AECC: ; 0x0224AECC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl ov7_0224A64C
	ldr r0, [r5, #0x5c]
	bl sub_02001288
	ldr r0, [r5, #0x60]
	mov r1, #4
	bl sub_02002114
	add r4, r0, #0
	bl sub_020360F0
	cmp r0, #0
	beq _0224AEF4
	mov r4, #1
	mvn r4, r4
_0224AEF4:
	cmp r4, #0
	bne _0224AF10
	bl ov7_0224A528
	add r0, r6, #0
	add r1, r5, #0
	bl ov7_0224AFD8
	ldr r0, _0224AF24 ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_0224AF10:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0224AF22
	bl ov7_0224A5D0
	ldr r0, _0224AF28 ; =ov7_0224ABE0
	bl ov7_0224A530
_0224AF22:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224AF24: .word 0x0224F5A0
_0224AF28: .word ov7_0224ABE0
	thumb_func_end ov7_0224AECC

	thumb_func_start ov7_0224AF2C
ov7_0224AF2C: ; 0x0224AF2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020360F0
	cmp r0, #0
	bne _0224AF48
	bl sub_02035E18
	add r1, r4, #0
	add r1, #0x90
	ldrb r1, [r1]
	cmp r1, r0
	beq _0224AF50
_0224AF48:
	ldr r0, _0224AF80 ; =ov7_0224AD68
	bl ov7_0224A530
	pop {r3, r4, r5, pc}
_0224AF50:
	add r0, r4, #0
	bl ov7_0224A64C
	ldr r0, [r4, #0x5c]
	bl sub_02001288
	mov r0, #0xa
	bl sub_02036540
	cmp r0, #0
	beq _0224AF7C
	bl sub_02036450
	cmp r0, #0
	beq _0224AF7C
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224AFD8
	add r0, r4, #0
	bl ov7_0224B3A8
_0224AF7C:
	pop {r3, r4, r5, pc}
	nop
_0224AF80: .word ov7_0224AD68
	thumb_func_end ov7_0224AF2C

	thumb_func_start ov7_0224AF84
ov7_0224AF84: ; 0x0224AF84
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r0, r4, #0
	bl ov7_0224A64C
	ldr r0, [r4, #0x5c]
	bl sub_02001288
	ldr r0, _0224AFC8 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224AFC4
	mov r0, #4
	str r0, [sp]
	ldr r0, _0224AFC8 ; =0x0224F5A0
	ldr r1, _0224AFCC ; =0x0224ED0C
	ldr r0, [r0, #0]
	ldr r2, _0224AFD0 ; =0x000003D9
	ldr r0, [r0, #0x68]
	mov r3, #0xb
	ldr r0, [r0, #8]
	bl sub_02002100
	str r0, [r4, #0x60]
	ldr r0, _0224AFD4 ; =ov7_0224A97C
	bl ov7_0224A530
_0224AFC4:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0224AFC8: .word 0x0224F5A0
_0224AFCC: .word 0x0224ED0C
_0224AFD0: .word 0x000003D9
_0224AFD4: .word ov7_0224A97C
	thumb_func_end ov7_0224AF84

	thumb_func_start ov7_0224AFD8
ov7_0224AFD8: ; 0x0224AFD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224B050 ; =0x0224F5A0
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xf
	add r0, #0x40
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x20
	mov r1, #0
	bl sub_0200DC9C
	ldr r0, [r4, #0x64]
	bl sub_02013A3C
	mov r1, #0
	ldr r0, [r4, #0x5c]
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224B044
	ldr r0, _0224B050 ; =0x0224F5A0
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0200DC9C
	ldr r0, _0224B050 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201ACF4
	ldr r0, _0224B050 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x30
	bl sub_0201A8FC
	mov r0, #0
	add r4, #0x97
	strb r0, [r4]
_0224B044:
	cmp r5, #0
	beq _0224B04E
	add r0, r5, #0
	bl sub_0200DA58
_0224B04E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B050: .word 0x0224F5A0
	thumb_func_end ov7_0224AFD8

	thumb_func_start ov7_0224B054
ov7_0224B054: ; 0x0224B054
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_0200B498
	mov r0, #0x39
	mov r1, #1
	bl ov7_02249960
	ldr r0, _0224B084 ; =ov7_0224A718
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	ldr r0, _0224B088 ; =ov7_0224B0E8
	bl ov7_0224A530
	pop {r4, pc}
	nop
_0224B084: .word ov7_0224A718
_0224B088: .word ov7_0224B0E8
	thumb_func_end ov7_0224B054

	thumb_func_start ov7_0224B08C
ov7_0224B08C: ; 0x0224B08C
	push {r4, lr}
	ldr r1, _0224B0DC ; =0x0224F5A0
	add r4, r0, #0
	add r0, #0x8e
	ldr r1, [r1, #0]
	ldrh r0, [r0]
	ldr r1, [r1, #0x7c]
	bl sub_020339AC
	ldr r2, _0224B0DC ; =0x0224F5A0
	ldr r0, [r4, #0x58]
	ldr r2, [r2, #0]
	mov r1, #1
	ldr r2, [r2, #0x7c]
	bl sub_0200B498
	mov r0, #4
	mov r1, #1
	bl ov7_02249960
	bl sub_02035E18
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r1]
	ldr r0, _0224B0E0 ; =ov7_0224A718
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	ldr r0, _0224B0E4 ; =ov7_0224B0E8
	bl ov7_0224A530
	ldr r0, _0224B0DC ; =0x0224F5A0
	mov r1, #0x5a
	ldr r0, [r0, #0]
	add r0, #0x96
	strb r1, [r0]
	pop {r4, pc}
	nop
_0224B0DC: .word 0x0224F5A0
_0224B0E0: .word ov7_0224A718
_0224B0E4: .word ov7_0224B0E8
	thumb_func_end ov7_0224B08C

	thumb_func_start ov7_0224B0E8
ov7_0224B0E8: ; 0x0224B0E8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _0224B108
	bl sub_02035E18
	add r4, #0x90
	ldrb r1, [r4]
	cmp r1, r0
	beq _0224B108
	ldr r0, _0224B140 ; =ov7_0224B274
	bl ov7_0224A530
	pop {r4, pc}
_0224B108:
	bl ov7_0224B4E4
	cmp r0, #0
	bne _0224B118
	bl sub_020360F0
	cmp r0, #0
	beq _0224B120
_0224B118:
	ldr r0, _0224B140 ; =ov7_0224B274
	bl ov7_0224A530
	pop {r4, pc}
_0224B120:
	ldr r0, _0224B144 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224B13C
	mov r0, #0xa
	bl sub_020364F0
	ldr r0, _0224B148 ; =ov7_0224B14C
	bl ov7_0224A530
_0224B13C:
	pop {r4, pc}
	nop
_0224B140: .word ov7_0224B274
_0224B144: .word 0x0224F5A0
_0224B148: .word ov7_0224B14C
	thumb_func_end ov7_0224B0E8

	thumb_func_start ov7_0224B14C
ov7_0224B14C: ; 0x0224B14C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x84
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _0224B172
	bl sub_02035E18
	add r1, r4, #0
	add r1, #0x90
	ldrb r1, [r1]
	cmp r1, r0
	beq _0224B172
	ldr r0, _0224B268 ; =ov7_0224B274
	bl ov7_0224A530
	b _0224B202
_0224B172:
	bl ov7_0224B4E4
	cmp r0, #0
	bne _0224B182
	bl sub_020360F0
	cmp r0, #0
	beq _0224B18C
_0224B182:
	ldr r0, _0224B268 ; =ov7_0224B274
	bl ov7_0224A530
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
_0224B18C:
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _0224B1A0
	ldr r0, _0224B268 ; =ov7_0224B274
	bl ov7_0224A530
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
_0224B1A0:
	mov r0, #0
	mov r1, #5
	bl sub_020365A8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224B1BA
	ldr r0, _0224B268 ; =ov7_0224B274
	bl ov7_0224A530
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
_0224B1BA:
	mov r0, #0xa
	bl sub_02036540
	cmp r0, #0
	beq _0224B202
	bl sub_02036450
	cmp r0, #0
	beq _0224B202
	ldr r0, _0224B26C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224B1E8
	ldr r0, _0224B26C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0201D730
_0224B1E8:
	bl sub_02035E18
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r1]
	add r0, r4, #0
	bl ov7_0224B3A8
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
_0224B202:
	ldr r2, _0224B26C ; =0x0224F5A0
	ldr r0, [r2, #0]
	add r1, r0, #0
	add r1, #0x96
	ldrb r1, [r1]
	cmp r1, #0
	beq _0224B264
	add r1, r0, #0
	add r1, #0x96
	ldrb r1, [r1]
	add r0, #0x96
	sub r1, r1, #1
	strb r1, [r0]
	ldr r2, [r2, #0]
	add r0, r2, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224B264
	ldr r6, _0224B270 ; =0x0224F0F0
	add r5, sp, #0
	mov r3, #0x10
_0224B22E:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0224B22E
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r2, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224B254
	add r2, #0x92
	ldrb r0, [r2]
	mov r1, #0
	add r0, #0x71
	bl ov7_02249960
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
_0224B254:
	add r4, #0x91
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov7_02249960
_0224B264:
	add sp, #0x84
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224B268: .word ov7_0224B274
_0224B26C: .word 0x0224F5A0
_0224B270: .word 0x0224F0F0
	thumb_func_end ov7_0224B14C

	thumb_func_start ov7_0224B274
ov7_0224B274: ; 0x0224B274
	push {r3, lr}
	ldr r0, _0224B298 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224B294
	mov r0, #0
	add r1, r0, #0
	bl ov7_02249960
	ldr r0, _0224B29C ; =ov7_0224B2A0
	bl ov7_0224A530
_0224B294:
	pop {r3, pc}
	nop
_0224B298: .word 0x0224F5A0
_0224B29C: .word ov7_0224B2A0
	thumb_func_end ov7_0224B274

	thumb_func_start ov7_0224B2A0
ov7_0224B2A0: ; 0x0224B2A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224B2D4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224B2D2
	ldr r0, _0224B2D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224B2D2
	add r0, r4, #0
	bl sub_0200DA58
	bl ov7_0224A528
	ldr r0, _0224B2D4 ; =0x0224F5A0
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
_0224B2D2:
	pop {r4, pc}
	; .align 2, 0
_0224B2D4: .word 0x0224F5A0
_0224B2D8: .word 0x021BF67C
	thumb_func_end ov7_0224B2A0

	thumb_func_start ov7_0224B2DC
ov7_0224B2DC: ; 0x0224B2DC
	push {r4, lr}
	ldr r1, _0224B314 ; =0x0224F5A0
	add r4, r0, #0
	add r0, #0x8e
	ldr r1, [r1, #0]
	ldrh r0, [r0]
	ldr r1, [r1, #0x7c]
	bl sub_020339AC
	ldr r2, _0224B314 ; =0x0224F5A0
	ldr r0, [r4, #0x58]
	ldr r2, [r2, #0]
	mov r1, #1
	ldr r2, [r2, #0x7c]
	bl sub_0200B498
	mov r0, #5
	mov r1, #1
	bl ov7_02249960
	bl sub_020597A4
	ldr r0, _0224B318 ; =ov7_0224B31C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_0224B314: .word 0x0224F5A0
_0224B318: .word ov7_0224B31C
	thumb_func_end ov7_0224B2DC

	thumb_func_start ov7_0224B31C
ov7_0224B31C: ; 0x0224B31C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224B344 ; =0x0224F5A0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224B342
	bl sub_020597A4
	add r0, r4, #0
	bl ov7_02249E0C
	add r0, r5, #0
	bl sub_0200DA58
_0224B342:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B344: .word 0x0224F5A0
	thumb_func_end ov7_0224B31C

	thumb_func_start ov7_0224B348
ov7_0224B348: ; 0x0224B348
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020597A4
	mov r4, #0
_0224B352:
	add r0, r4, #0
	bl sub_02032D98
	add r4, r4, #1
	cmp r4, #8
	blt _0224B352
	ldr r0, _0224B36C ; =ov7_0224B370
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_0224B36C: .word ov7_0224B370
	thumb_func_end ov7_0224B348

	thumb_func_start ov7_0224B370
ov7_0224B370: ; 0x0224B370
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224B3A0 ; =0x0224F5A0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r0, #0x94
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #0
	beq _0224B39C
	ldr r0, _0224B3A4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224B39C
	add r0, r4, #0
	bl ov7_02249E0C
	add r0, r5, #0
	bl sub_0200DA58
_0224B39C:
	pop {r3, r4, r5, pc}
	nop
_0224B3A0: .word 0x0224F5A0
_0224B3A4: .word 0x021BF67C
	thumb_func_end ov7_0224B370

	thumb_func_start ov7_0224B3A8
ov7_0224B3A8: ; 0x0224B3A8
	push {r3, lr}
	mov r0, #0
	bl sub_02036994
	ldr r0, _0224B3D0 ; =0x0224F5A0
	mov r1, #2
	ldr r0, [r0, #0]
	add r0, #0x88
	str r1, [r0, #0]
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	bl sub_02032AC0
	mov r0, #1
	bl sub_02033EA8
	pop {r3, pc}
	nop
_0224B3D0: .word 0x0224F5A0
	thumb_func_end ov7_0224B3A8

	thumb_func_start ov7_0224B3D4
ov7_0224B3D4: ; 0x0224B3D4
	ldr r0, _0224B3E0 ; =0x0224F5A0
	ldr r3, _0224B3E4 ; =sub_02036158
	ldr r0, [r0, #0]
	add r0, #0x91
	ldrb r0, [r0]
	bx r3
	; .align 2, 0
_0224B3E0: .word 0x0224F5A0
_0224B3E4: .word sub_02036158
	thumb_func_end ov7_0224B3D4

	thumb_func_start ov7_0224B3E8
ov7_0224B3E8: ; 0x0224B3E8
	ldr r0, _0224B3F4 ; =0x0224F5A0
	ldr r3, _0224B3F8 ; =sub_02036148
	ldr r0, [r0, #0]
	add r0, #0x91
	ldrb r0, [r0]
	bx r3
	; .align 2, 0
_0224B3F4: .word 0x0224F5A0
_0224B3F8: .word sub_02036148
	thumb_func_end ov7_0224B3E8

	thumb_func_start ov7_0224B3FC
ov7_0224B3FC: ; 0x0224B3FC
	ldr r0, _0224B410 ; =0x0224F5A0
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x92
	add r2, #0x93
	ldrb r1, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
	; .align 2, 0
_0224B410: .word 0x0224F5A0
	thumb_func_end ov7_0224B3FC

	thumb_func_start ov7_0224B414
ov7_0224B414: ; 0x0224B414
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov7_02249AB4
	ldr r0, _0224B44C ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x91
	strb r4, [r0]
	sub r0, r4, #3
	cmp r0, #1
	bhi _0224B436
	mov r0, #0
	add r5, #0xb0
	str r0, [r5, #0]
_0224B436:
	ldr r0, _0224B44C ; =0x0224F5A0
	ldr r1, [r0, #0]
	add r1, #0x92
	strb r6, [r1]
	ldr r1, [r0, #0]
	add r1, #0x93
	strb r7, [r1]
	ldr r0, [r0, #0]
	bl ov7_02249C2C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B44C: .word 0x0224F5A0
	thumb_func_end ov7_0224B414

	thumb_func_start ov7_0224B450
ov7_0224B450: ; 0x0224B450
	ldr r0, _0224B458 ; =0x0224F5A0
	ldr r3, _0224B45C ; =ov7_02249E0C
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224B458: .word 0x0224F5A0
_0224B45C: .word ov7_02249E0C
	thumb_func_end ov7_0224B450

	thumb_func_start ov7_0224B460
ov7_0224B460: ; 0x0224B460
	push {r4, lr}
	ldr r0, _0224B478 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x88
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _0224B472
	bl ov7_02249B98
_0224B472:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0224B478: .word 0x0224F5A0
	thumb_func_end ov7_0224B460

	thumb_func_start ov7_0224B47C
ov7_0224B47C: ; 0x0224B47C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov7_02249AB4
	ldr r0, _0224B4B4 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x91
	strb r4, [r0]
	sub r0, r4, #3
	cmp r0, #1
	bhi _0224B49E
	mov r0, #0
	add r5, #0xb0
	str r0, [r5, #0]
_0224B49E:
	ldr r0, _0224B4B4 ; =0x0224F5A0
	ldr r1, [r0, #0]
	add r1, #0x92
	strb r6, [r1]
	ldr r1, [r0, #0]
	add r1, #0x93
	strb r7, [r1]
	ldr r0, [r0, #0]
	bl ov7_0224A510
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B4B4: .word 0x0224F5A0
	thumb_func_end ov7_0224B47C

	thumb_func_start ov7_0224B4B8
ov7_0224B4B8: ; 0x0224B4B8
	ldr r0, _0224B4C0 ; =0x0224F5A0
	ldr r3, _0224B4C4 ; =ov7_0224A53C
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0224B4C0: .word 0x0224F5A0
_0224B4C4: .word ov7_0224A53C
	thumb_func_end ov7_0224B4B8

	thumb_func_start ov7_0224B4C8
ov7_0224B4C8: ; 0x0224B4C8
	push {r4, lr}
	ldr r0, _0224B4E0 ; =0x0224F5A0
	ldr r0, [r0, #0]
	add r0, #0x88
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _0224B4DA
	bl ov7_02249B98
_0224B4DA:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0224B4E0: .word 0x0224F5A0
	thumb_func_end ov7_0224B4C8

	thumb_func_start ov7_0224B4E4
ov7_0224B4E4: ; 0x0224B4E4
	mov r0, #0
	bx lr
	thumb_func_end ov7_0224B4E4

	thumb_func_start ov7_0224B4E8
ov7_0224B4E8: ; 0x0224B4E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x54
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0224B522
	add r0, r5, #0
	add r0, #0x54
	bl sub_0201A7A0
	ldr r0, [r5, #0x10]
	add r1, r5, #0
	ldr r0, [r0, #8]
	add r1, #0x54
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x54
	bl sub_0205D944
	b _0224B52A
_0224B522:
	add r0, r5, #0
	add r0, #0x54
	bl sub_0205D988
_0224B52A:
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	bl sub_0200C388
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x18]
	add r0, #0x54
	mov r3, #1
	bl sub_0205D994
	str r0, [r5, #0x74]
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224B4E8

	thumb_func_start ov7_0224B558
ov7_0224B558: ; 0x0224B558
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0224B570
	add r0, #0x54
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x54
	bl sub_0201ACF4
_0224B570:
	add r4, #0x54
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224B558

	thumb_func_start ov7_0224B57C
ov7_0224B57C: ; 0x0224B57C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	mov r3, #4
	bl sub_0202616C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x1c]
	add r3, r1, #0
	bl sub_0200B48C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224B57C

	thumb_func_start ov7_0224B5A8
ov7_0224B5A8: ; 0x0224B5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r5, #0
	ldr r0, [r0, #0xc]
	mov r1, #0
	add r4, #0x34
	bl sub_0202610C
	mov r6, #5
	cmp r0, #0
	beq _0224B5C4
	add r6, r6, #1
_0224B5C4:
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0224B656
	add r0, r6, #2
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #8]
	mov r3, #1
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #2
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224B6A4 ; =0x000003D9
	add r0, #0x34
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x68]
	mov r2, #0x7b
	mov r3, #0xc
	bl sub_02013A4C
	mov r4, #0
	cmp r6, #0
	ble _0224B648
	mov r7, #0x71
_0224B61C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224B57C
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x1c]
	add r1, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x1c]
	bl sub_0200C388
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl sub_02013A6C
	add r4, r4, #1
	cmp r4, r6
	blt _0224B61C
_0224B648:
	mov r2, #0x72
	add r3, r2, #0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x68]
	sub r3, #0x74
	bl sub_02013A4C
_0224B656:
	ldr r4, _0224B6A8 ; =0x0224F188
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
	add r0, r6, #2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #8]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x34
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r2, r5, #0
	str r5, [sp, #0x30]
	add r2, #0x78
	ldrh r2, [r2]
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0]
	add r5, #0x34
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0224B6A4: .word 0x000003D9
_0224B6A8: .word 0x0224F188
	thumb_func_end ov7_0224B5A8

	thumb_func_start ov7_0224B6AC
ov7_0224B6AC: ; 0x0224B6AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224B6E6
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #0x34
	mov r1, #1
	bl sub_0200DC9C
	add r1, r4, #0
	add r1, #0x38
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	bl sub_0201C3C0
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201A8FC
	ldr r0, [r4, #8]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0]
_0224B6E6:
	pop {r4, pc}
	thumb_func_end ov7_0224B6AC

	thumb_func_start ov7_0224B6E8
ov7_0224B6E8: ; 0x0224B6E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02001288
	add r4, r0, #0
	add r2, r5, #0
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, #0x78
	bl sub_020014DC
	add r0, r5, #0
	add r0, #0x80
	ldrh r6, [r0]
	add r1, r5, #0
	ldr r0, [r5, #0]
	add r1, #0x80
	bl sub_020014D0
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r6, r0
	beq _0224B720
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
_0224B720:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224B750
	add r0, r0, #1
	cmp r4, r0
	beq _0224B734
	cmp r4, #0xc
	beq _0224B738
	b _0224B76A
_0224B734:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224B738:
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov7_0224B6AC
	mov r0, #2
	pop {r4, r5, r6, pc}
_0224B750:
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov7_0224B6AC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0224B76A:
	ldr r0, _0224B784 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_02026150
	ldr r1, [r5, #0x10]
	add r1, #0xb0
	str r0, [r1, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B784: .word 0x000005DC
	thumb_func_end ov7_0224B6E8

	thumb_func_start ov7_0224B788
ov7_0224B788: ; 0x0224B788
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #3
	mov r1, #4
	ldr r4, _0224B82C ; =0x0224F4D8
	bl sub_02013A04
	str r0, [r5, #0xc]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224B830 ; =0x00000201
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, #0x44
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x16
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224B834 ; =0x000003D9
	add r0, #0x44
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r6, #0
_0224B7CE:
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x68]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #3
	blt _0224B7CE
	ldr r4, _0224B838 ; =0x0224F188
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
	mov r1, #3
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x44
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r2, r5, #0
	str r5, [sp, #0x30]
	add r2, #0x7a
	ldrh r2, [r2]
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #4]
	add r5, #0x44
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_0224B82C: .word 0x0224F4D8
_0224B830: .word 0x00000201
_0224B834: .word 0x000003D9
_0224B838: .word 0x0224F188
	thumb_func_end ov7_0224B788

	thumb_func_start ov7_0224B83C
ov7_0224B83C: ; 0x0224B83C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02001288
	add r4, r0, #0
	add r2, r5, #0
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, #0x7a
	bl sub_020014DC
	add r0, r5, #0
	add r0, #0x82
	ldrh r6, [r0]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0x82
	bl sub_020014D0
	add r0, r5, #0
	add r0, #0x82
	ldrh r0, [r0]
	cmp r6, r0
	beq _0224B874
	ldr r0, _0224B8D8 ; =0x000005DC
	bl sub_02005748
_0224B874:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224B886
	add r0, r0, #1
	cmp r4, r0
	bne _0224B892
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224B886:
	ldr r0, _0224B8D8 ; =0x000005DC
	bl sub_02005748
	mov r4, #0
	mvn r4, r4
	b _0224B89E
_0224B892:
	ldr r0, _0224B8D8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov7_0224B6AC
_0224B89E:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0224B8D4
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
	add r0, r5, #0
	add r0, #0x44
	mov r1, #1
	bl sub_0200DC9C
	add r1, r5, #0
	add r1, #0x48
	ldrb r1, [r1]
	ldr r0, [r5, #0x44]
	bl sub_0201C3C0
	add r0, r5, #0
	add r0, #0x44
	bl sub_0201A8FC
	ldr r0, [r5, #0xc]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r5, #4]
_0224B8D4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224B8D8: .word 0x000005DC
	thumb_func_end ov7_0224B83C

	thumb_func_start ov7_0224B8DC
ov7_0224B8DC: ; 0x0224B8DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r2, _0224BB80 ; =0x00000161
	str r0, [sp, #0x14]
	ldr r5, [r0, #0x64]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0x30]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x2c]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #0x24]
	add r0, #0x24
	str r0, [sp, #0x24]
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
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	mov r3, #4
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	ldr r0, [sp, #0x24]
	ldr r2, _0224BB84 ; =0x000003D9
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r0, [sp, #0x24]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	sub r1, r1, #1
	bl ov7_0224B57C
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	mov r1, #0x5f
	bl sub_0200B1B8
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r3, #0x39
	str r1, [sp, #8]
	bl sub_0201D738
	mov r6, #0
	mov r4, #0x10
	mov r7, #0xff
_0224B982:
	add r1, r6, #0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	add r1, #0x4b
	bl sub_0200B1B8
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x2c]
	mov r1, #0
	mov r3, #2
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0xf
	cmp r6, #9
	blt _0224B982
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0224BB88 ; =0x0224F4CC
	ldr r7, _0224BB8C ; =0x0224F4C0
	str r0, [sp, #0x20]
	mov r0, #0x10
	str r0, [sp, #0x1c]
_0224B9B8:
	ldr r0, [sp, #0x14]
	ldrb r1, [r7]
	ldr r0, [r0, #0x10]
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02026074
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	ldrb r4, [r0]
	ldrb r0, [r7]
	cmp r0, #0xb
	bls _0224B9D4
	b _0224BB10
_0224B9D4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224B9E0: ; jump table
	.short _0224BB10 - _0224B9E0 - 2 ; case 0
	.short _0224B9F8 - _0224B9E0 - 2 ; case 1
	.short _0224BA0A - _0224B9E0 - 2 ; case 2
	.short _0224BA1E - _0224B9E0 - 2 ; case 3
	.short _0224BB0A - _0224B9E0 - 2 ; case 4
	.short _0224BA3A - _0224B9E0 - 2 ; case 5
	.short _0224BB10 - _0224B9E0 - 2 ; case 6
	.short _0224BAB8 - _0224B9E0 - 2 ; case 7
	.short _0224BB10 - _0224B9E0 - 2 ; case 8
	.short _0224BB0A - _0224B9E0 - 2 ; case 9
	.short _0224BB0A - _0224B9E0 - 2 ; case 10
	.short _0224BB0A - _0224B9E0 - 2 ; case 11
_0224B9F8:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #1
	bl sub_0200B60C
	b _0224BB10
_0224BA0A:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	b _0224BB10
_0224BA1E:
	cmp r2, #0
	bne _0224BA26
	mov r4, #0x60
	b _0224BB10
_0224BA26:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	b _0224BB10
_0224BA3A:
	cmp r2, #0
	ldr r0, _0224BB90 ; =0x00002710
	blt _0224BA54
	mul r0, r2
	mov r1, #0xfe
	bl sub_020E1F6C
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E1F6C
	add r6, r0, #0
	b _0224BA68
_0224BA54:
	neg r1, r2
	mul r0, r1
	mov r1, #0xfe
	bl sub_020E1F6C
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E1F6C
	neg r6, r0
_0224BA68:
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020E1F6C
	bl sub_020D4070
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #2
	bl sub_0200B60C
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020E1F6C
	add r0, r1, #0
	bl sub_020D4070
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r3, #2
	bl sub_0200B60C
	cmp r6, #0
	bne _0224BAB2
	mov r4, #0x60
	b _0224BB10
_0224BAB2:
	ble _0224BB10
	add r4, r4, #1
	b _0224BB10
_0224BAB8:
	cmp r2, #0
	ldr r0, _0224BB94 ; =0x00035D2E
	blt _0224BAD0
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0224BB98 ; =0x0000C350
	add r0, r1, r0
	ldr r1, _0224BB9C ; =0x000186A0
	bl sub_020E1F6C
	add r6, r0, #0
	b _0224BAE2
_0224BAD0:
	neg r1, r2
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0224BB98 ; =0x0000C350
	ldr r1, _0224BB9C ; =0x000186A0
	add r0, r2, r0
	bl sub_020E1F6C
	neg r6, r0
_0224BAE2:
	add r0, r6, #0
	bl sub_020D4070
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	cmp r6, #0
	bne _0224BB04
	mov r4, #0x60
	b _0224BB10
_0224BB04:
	ble _0224BB10
	add r4, r4, #1
	b _0224BB10
_0224BB0A:
	cmp r2, #0
	bne _0224BB10
	add r4, r4, #1
_0224BB10:
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	mov r3, #0xbf
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r1, #0
	sub r3, r3, r4
	bl sub_0201D738
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0xf
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #9
	bge _0224BB64
	b _0224B9B8
_0224BB64:
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_0200B190
	ldr r0, [sp, #0x24]
	bl sub_0201A954
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BB80: .word 0x00000161
_0224BB84: .word 0x000003D9
_0224BB88: .word 0x0224F4CC
_0224BB8C: .word 0x0224F4C0
_0224BB90: .word 0x00002710
_0224BB94: .word 0x00035D2E
_0224BB98: .word 0x0000C350
_0224BB9C: .word 0x000186A0
	thumb_func_end ov7_0224B8DC

	thumb_func_start ov7_0224BBA0
ov7_0224BBA0: ; 0x0224BBA0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x24
	mov r1, #1
	bl sub_0200DC9C
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r4, #0x24]
	bl sub_0201C3C0
	add r4, #0x24
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BBA0

	thumb_func_start ov7_0224BBC4
ov7_0224BBC4: ; 0x0224BBC4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x6c]
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0207A594
	cmp r0, #0
	beq _0224BBEE
	cmp r0, #1
	beq _0224BC2E
	cmp r0, #4
	beq _0224BBF4
	b _0224BC2E
_0224BBEE:
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0224BBF4:
	ldr r0, _0224BC70 ; =0x000005F3
	bl sub_02005748
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov7_0224B57C
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02026074
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	add r2, r0, #0
	ldr r0, [r4, #0x64]
	add r3, r1, #0
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0x6b
	bl ov7_0224B4E8
	b _0224BC68
_0224BC2E:
	ldr r0, _0224BC70 ; =0x000005F3
	bl sub_02005748
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov7_0224B57C
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_02026074
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r4, #0x64]
	mov r3, #3
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0x79
	bl ov7_0224B4E8
_0224BC68:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0224BC70: .word 0x000005F3
	thumb_func_end ov7_0224BBC4

	thumb_func_start ov7_0224BC74
ov7_0224BC74: ; 0x0224BC74
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0x7c]
	cmp r1, #0xb
	bls _0224BC8C
	b _0224BE02
_0224BC8C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224BC98: ; jump table
	.short _0224BCB0 - _0224BC98 - 2 ; case 0
	.short _0224BCBE - _0224BC98 - 2 ; case 1
	.short _0224BCDC - _0224BC98 - 2 ; case 2
	.short _0224BD0E - _0224BC98 - 2 ; case 3
	.short _0224BD1A - _0224BC98 - 2 ; case 4
	.short _0224BD40 - _0224BC98 - 2 ; case 5
	.short _0224BD5A - _0224BC98 - 2 ; case 6
	.short _0224BD78 - _0224BC98 - 2 ; case 7
	.short _0224BD8C - _0224BC98 - 2 ; case 8
	.short _0224BDAE - _0224BC98 - 2 ; case 9
	.short _0224BE06 - _0224BC98 - 2 ; case 10
	.short _0224BDC2 - _0224BC98 - 2 ; case 11
_0224BCB0:
	mov r1, #0x6a
	bl ov7_0224B4E8
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BCBE:
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	bne _0224BCCE
	b _0224BE06
_0224BCCE:
	add r0, r4, #0
	bl ov7_0224B5A8
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BCDC:
	bl ov7_0224B6E8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0224BCF4
	ldr r0, [r4, #0x70]
	mov r1, #2
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BCF4:
	cmp r0, #2
	bne _0224BD04
	ldr r0, [r4, #0x70]
	mov r1, #3
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD04:
	cmp r0, #1
	bne _0224BE06
	mov r0, #3
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD0E:
	bl ov7_0224B788
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD1A:
	bl ov7_0224B83C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0224BD2C
	mov r0, #2
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD2C:
	cmp r0, #1
	bne _0224BD36
	mov r0, #5
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD36:
	cmp r0, #2
	bne _0224BE06
	mov r0, #7
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD40:
	bl ov7_0224BBC4
	cmp r0, #0
	beq _0224BD54
	ldr r0, [r4, #0x70]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD54:
	mov r0, #6
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD5A:
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0224BE06
	ldr r0, _0224BE0C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224BE06
	mov r0, #0
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD78:
	mov r1, #1
	bl ov7_0224B558
	add r0, r4, #0
	bl ov7_0224B8DC
	ldr r0, [r4, #0x7c]
	add r0, r0, #1
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BD8C:
	ldr r1, _0224BE0C ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0224BE06
	bl ov7_0224BBA0
	add r0, r4, #0
	mov r1, #0x6a
	bl ov7_0224B4E8
	add r0, r4, #0
	bl ov7_0224B5A8
	mov r0, #9
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BDAE:
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #0
	beq _0224BE06
	mov r0, #3
	str r0, [r4, #0x7c]
	b _0224BE06
_0224BDC2:
	bl ov7_0224B6AC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224B558
	ldr r0, [r4, #0x64]
	bl sub_0200B3F0
	ldr r0, [r4, #0x68]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	ldr r0, [r4, #0x1c]
	bl sub_020237BC
	ldr r0, [r4, #0x20]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_0207A2C0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0224BE02:
	mov r0, #1
	pop {r4, pc}
_0224BE06:
	mov r0, #0
	pop {r4, pc}
	nop
_0224BE0C: .word 0x021BF67C
	thumb_func_end ov7_0224BC74

	thumb_func_start ov7_0224BE10
ov7_0224BE10: ; 0x0224BE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x84
	bl sub_02018184
	mov r1, #0
	mov r2, #0x84
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0x7c]
	str r5, [r4, #0x10]
	add r5, #0xb0
	str r0, [r5, #0]
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x64]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xdd
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x68]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x14]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x18]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x1c]
	mov r0, #0xb4
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x20]
	mov r0, #0xb
	bl sub_0207A2A8
	str r0, [r4, #0x6c]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BE10

	thumb_func_start ov7_0224BE7C
ov7_0224BE7C: ; 0x0224BE7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02050A60
	bl ov7_0224BE10
	add r2, r0, #0
	ldr r1, _0224BE98 ; =ov7_0224BC74
	add r0, r5, #0
	str r4, [r2, #0x70]
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BE98: .word ov7_0224BC74
	thumb_func_end ov7_0224BE7C

	thumb_func_start ov7_0224BE9C
ov7_0224BE9C: ; 0x0224BE9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xc1
	lsl r1, r1, #2
	add r5, r0, #0
	add r7, r2, #0
	bl sub_02018144
	mov r2, #0xc1
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	str r5, [r4, #0x18]
	str r7, [r4, #0x14]
	str r6, [r4, #8]
	add r0, r6, #0
	bl sub_0202A750
	bl sub_02029D04
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_0207D990
	str r0, [r4, #0x10]
	mov r2, #0x8f
	ldr r3, [r4, #0x18]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov7_0224C338
	add r0, r4, #0
	bl ov7_0224C35C
	add r0, r4, #0
	bl ov7_0224C3CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_0224BE9C

	thumb_func_start ov7_0224BEFC
ov7_0224BEFC: ; 0x0224BEFC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	add r0, r4, #0
	bl ov7_0224C3B8
	add r0, r4, #0
	bl ov7_0224C3E0
	mov r2, #0xc1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BEFC

	thumb_func_start ov7_0224BF2C
ov7_0224BF2C: ; 0x0224BF2C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _0224BF3A
	b _0224C32A
_0224BF3A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BF46: ; jump table
	.short _0224BF60 - _0224BF46 - 2 ; case 0
	.short _0224BF9E - _0224BF46 - 2 ; case 1
	.short _0224BFDE - _0224BF46 - 2 ; case 2
	.short _0224C036 - _0224BF46 - 2 ; case 3
	.short _0224C06C - _0224BF46 - 2 ; case 4
	.short _0224C10E - _0224BF46 - 2 ; case 5
	.short _0224C122 - _0224BF46 - 2 ; case 6
	.short _0224C212 - _0224BF46 - 2 ; case 7
	.short _0224C262 - _0224BF46 - 2 ; case 8
	.short _0224C28E - _0224BF46 - 2 ; case 9
	.short _0224C2BA - _0224BF46 - 2 ; case 10
	.short _0224C2CE - _0224BF46 - 2 ; case 11
	.short _0224C2FC - _0224BF46 - 2 ; case 12
_0224BF60:
	mov r3, #0x55
	lsl r3, r3, #2
	add r0, r4, r3
	sub r3, r3, #4
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, r3]
	bl ov7_0224C3EC
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
	b _0224C32A
_0224BF9E:
	ldr r0, [r4, #0xc]
	ldr r1, _0224C2EC ; =0x0224F1B4
	mov r2, #0x16
	bl ov7_0224CC88
	cmp r0, #0
	beq _0224BFD8
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r4, #4]
	b _0224C32A
_0224BFD8:
	mov r0, #2
	str r0, [r4, #0]
	b _0224C32A
_0224BFDE:
	mov r2, #0x5a
	lsl r2, r2, #2
	add r0, r4, r2
	sub r2, #0x20
	ldr r1, [r4, #0x14]
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	bl ov7_0224C620
	ldr r0, [r4, #0x18]
	mov r1, #0x5a
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r1, r1, #2
	str r0, [sp, #4]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r2, _0224C2EC ; =0x0224F1B4
	ldr r3, [r4, #0x10]
	add r0, r4, r0
	add r1, r4, r1
	bl ov7_0224CBD0
	mov r1, #0x52
	mov r0, #0x16
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r4, r1]
	add r1, #0x3c
	str r0, [sp, #4]
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, _0224C2F0 ; =ov7_0224CBE4
	ldr r3, _0224C2EC ; =0x0224F1B4
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	add r0, r4, r1
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl ov7_0224C768
_0224C036:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CA0C
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #4
	str r0, [r4, #4]
	b _0224C32A
_0224C06C:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C9A4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224C0D2
	sub r1, r1, #1
	cmp r0, r1
	beq _0224C0D2
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CA34
	mov r0, #0x2b
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	sub r1, #0xc
	ldr r1, [r4, r1]
	ldr r2, [r4, #0x18]
	ldr r3, _0224C2EC ; =0x0224F1B4
	bl ov7_0224C4E0
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #5
	str r0, [r4, #4]
	ldr r0, _0224C2F4 ; =0x000005DC
	bl sub_02005748
	b _0224C32A
_0224C0D2:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224C0DC
	b _0224C32A
_0224C0DC:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r4, #4]
	ldr r0, _0224C2F4 ; =0x000005DC
	bl sub_02005748
	b _0224C32A
_0224C10E:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	bl ov7_0224CC44
	mov r0, #6
	str r0, [r4, #0]
	b _0224C32A
_0224C122:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC78
	cmp r0, #0
	bne _0224C1F8
	mov r2, #0x2b
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r1, _0224C2EC ; =0x0224F1B4
	ldr r3, [r4, #0x18]
	bl ov7_0224CCB8
	cmp r0, #0
	bne _0224C17A
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	b _0224C32A
_0224C17A:
	mov r2, #0x2b
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r1, _0224C2EC ; =0x0224F1B4
	bl ov7_0224CCE4
	cmp r0, #0
	bne _0224C1C2
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	b _0224C32A
_0224C1C2:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #7
	str r0, [r4, #4]
	b _0224C32A
_0224C1F8:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224C202
	b _0224C32A
_0224C202:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	mov r0, #3
	str r0, [r4, #0]
	b _0224C32A
_0224C212:
	ldr r0, [r4, #0x18]
	mov r3, #0x2b
	str r0, [sp]
	lsl r3, r3, #4
	ldrh r3, [r4, r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, _0224C2EC ; =0x0224F1B4
	bl ov7_0224CCF4
	mov r0, #0x2b
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	sub r1, #0xc
	ldr r1, [r4, r1]
	ldr r2, [r4, #0x18]
	ldr r3, _0224C2EC ; =0x0224F1B4
	bl ov7_0224C580
	ldr r0, [r4, #0xc]
	ldr r1, _0224C2EC ; =0x0224F1B4
	mov r2, #0x16
	bl ov7_0224CC88
	cmp r0, #0
	beq _0224C258
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #8
	str r0, [r4, #4]
	b _0224C32A
_0224C258:
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	b _0224C32A
_0224C262:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #9
	str r0, [r4, #4]
	b _0224C32A
_0224C28E:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r2, [r4, #0x18]
	add r0, r4, r0
	add r1, r5, #0
	bl ov7_0224C468
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0xc
	str r0, [r4, #4]
	b _0224C32A
_0224C2BA:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C4B8
	cmp r0, #0
	beq _0224C32A
	ldr r0, [r4, #4]
	str r0, [r4, #0]
	b _0224C32A
_0224C2CE:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C4B8
	cmp r0, #0
	beq _0224C32A
	ldr r0, _0224C2F8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224C32A
	ldr r0, [r4, #4]
	str r0, [r4, #0]
	b _0224C32A
	; .align 2, 0
_0224C2EC: .word 0x0224F1B4
_0224C2F0: .word ov7_0224CBE4
_0224C2F4: .word 0x000005DC
_0224C2F8: .word 0x021BF67C
_0224C2FC:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C444
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C698
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224C934
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov7_0224CC6C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_0224C32A:
	ldr r0, [r4, #0x1c]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224BF2C

	thumb_func_start ov7_0224C338
ov7_0224C338: ; 0x0224C338
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_02025E44
	add r4, r0, #0
	bl sub_02027B50
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02027AC0
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224C338

	thumb_func_start ov7_0224C35C
ov7_0224C35C: ; 0x0224C35C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #6
	ldr r2, [r4, #0x18]
	mov r0, #0
	lsl r1, r1, #6
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0x1a
	ldr r2, [r4, #0x18]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl sub_02019EBC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C35C

	thumb_func_start ov7_0224C3B8
ov7_0224C3B8: ; 0x0224C3B8
	push {r3, lr}
	ldr r0, [r0, #0x14]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #0
	mov r1, #1
	bl sub_0205D8CC
	pop {r3, pc}
	thumb_func_end ov7_0224C3B8

	thumb_func_start ov7_0224C3CC
ov7_0224C3CC: ; 0x0224C3CC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r2, [r4, #0x18]
	mov r0, #2
	add r1, #0x20
	bl sub_020095C4
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov7_0224C3CC

	thumb_func_start ov7_0224C3E0
ov7_0224C3E0: ; 0x0224C3E0
	ldr r3, _0224C3E8 ; =sub_02021964
	ldr r0, [r0, #0x1c]
	bx r3
	nop
_0224C3E8: .word sub_02021964
	thumb_func_end ov7_0224C3E0

	thumb_func_start ov7_0224C3EC
ov7_0224C3EC: ; 0x0224C3EC
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #1
	beq _0224C43E
	str r3, [r5, #8]
	add r0, r2, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #4]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r5, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r0, #1
	str r0, [r5, #0]
_0224C43E:
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C3EC

	thumb_func_start ov7_0224C444
ov7_0224C444: ; 0x0224C444
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224C466
	ldr r0, [r4, #4]
	bl sub_0201ACF4
	ldr r0, [r4, #4]
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201A928
	mov r0, #0
	str r0, [r4, #0]
_0224C466:
	pop {r4, pc}
	thumb_func_end ov7_0224C444

	thumb_func_start ov7_0224C468
ov7_0224C468: ; 0x0224C468
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0224C47C
	bl sub_02022974
_0224C47C:
	ldr r0, [r5, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02023868
	str r0, [r5, #0x10]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #8]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0224C4B4 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x10]
	bl sub_0201D78C
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	bl sub_0201A954
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0224C4B4: .word 0x0001020F
	thumb_func_end ov7_0224C468

	thumb_func_start ov7_0224C4B8
ov7_0224C4B8: ; 0x0224C4B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224C4DC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C4D8
	bl sub_020237BC
	mov r0, #0
	str r0, [r4, #0x10]
_0224C4D8:
	mov r0, #1
	pop {r4, pc}
_0224C4DC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov7_0224C4B8

	thumb_func_start ov7_0224C4E0
ov7_0224C4E0: ; 0x0224C4E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r2, #0
	add r4, r1, #0
	add r5, r3, #0
	bl sub_0200B358
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	mov r0, #0xc8
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #7
	bl sub_0200B1EC
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x14]
	add r7, r5, #0
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	add r7, #8
	ldr r0, [r7, r4]
	cmp r0, #1
	bne _0224C52A
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B70C
	b _0224C538
_0224C52A:
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B77C
_0224C538:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r7, r4]
	add r0, r6, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r2, [r5, r4]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200BFAC
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov7_0224C468
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C4E0

	thumb_func_start ov7_0224C580
ov7_0224C580: ; 0x0224C580
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r2, #0
	add r4, r1, #0
	add r5, r3, #0
	bl sub_0200B358
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	mov r0, #0xc8
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_0200B1EC
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x14]
	add r7, r5, #0
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	add r7, #8
	ldr r0, [r7, r4]
	cmp r0, #1
	bne _0224C5CA
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B70C
	b _0224C5D8
_0224C5CA:
	add r2, r5, r4
	ldr r2, [r2, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, #0x95
	bl sub_0200B77C
_0224C5D8:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r7, r4]
	add r0, r6, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r2, [r5, r4]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200BFAC
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov7_0224C468
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C580

	thumb_func_start ov7_0224C620
ov7_0224C620: ; 0x0224C620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [r6, #0]
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	cmp r0, #1
	beq _0224C692
	add r0, r3, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r6, #4]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldr r1, [r6, #4]
	add r0, r4, #0
	mov r2, #3
	mov r3, #1
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	bl sub_0200B358
	str r0, [r6, #8]
	mov r4, #0
	add r5, r6, #0
_0224C668:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x10
	bl sub_0200B1EC
	str r0, [r5, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224C668
	ldr r1, [sp, #0x14]
	mov r0, #0x20
	bl sub_02023790
	str r0, [r6, #0xc]
	ldr r0, [r6, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #1
	str r0, [r6, #0]
_0224C692:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C620

	thumb_func_start ov7_0224C698
ov7_0224C698: ; 0x0224C698
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0224C6D8
	mov r4, #0
	add r5, r6, #0
_0224C6A6:
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0224C6A6
	ldr r0, [r6, #0xc]
	bl sub_020237BC
	ldr r0, [r6, #8]
	bl sub_0200B3F0
	ldr r0, [r6, #4]
	bl sub_0201ACF4
	ldr r0, [r6, #4]
	bl sub_0201A8FC
	ldr r0, [r6, #4]
	mov r1, #1
	bl sub_0201A928
	mov r0, #0
	str r0, [r6, #0]
_0224C6D8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov7_0224C698

	thumb_func_start ov7_0224C6DC
ov7_0224C6DC: ; 0x0224C6DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r6, #0x95
	add r4, r2, #0
	mov r1, #0
	add r2, r6, #0
	add r7, r3, #0
	bl sub_0200B70C
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #8]
	add r2, r4, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	mov r1, #2
	add r2, r7, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r5, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r7, #0
	add r6, r5, #0
	add r4, r7, #0
_0224C724:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r6, #0x10]
	bl sub_0200C388
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224C764 ; =0x0001020F
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0xc]
	bl sub_0201D78C
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x10
	cmp r7, #3
	blt _0224C724
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C764: .word 0x0001020F
	thumb_func_end ov7_0224C6DC

	thumb_func_start ov7_0224C768
ov7_0224C768: ; 0x0224C768
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	ldr r0, [sp, #0x78]
	add r4, r1, #0
	str r0, [sp, #0x78]
	ldr r0, [r5, #0]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	cmp r0, #1
	bne _0224C780
	b _0224C924
_0224C780:
	ldr r0, [sp, #0x78]
	mov r1, #1
	mov r2, #0x12
	str r1, [r5, #0]
	add r0, r0, #1
	lsl r2, r2, #4
	str r0, [r5, r2]
	add r0, r2, #0
	ldr r3, [sp, #0x80]
	add r0, #0x10
	str r3, [r5, r0]
	ldr r0, [sp, #0x84]
	add r2, #0x14
	str r0, [r5, r2]
	ldr r0, [sp, #0x14]
	bl sub_0201A778
	str r0, [r5, #4]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xe8
	str r0, [sp, #0x10]
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0x11
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	bl sub_0200B358
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r0, #0x20
	bl sub_02023790
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x7c]
	mov r1, #0x10
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x78]
	mov r7, #0
	cmp r0, #0
	bls _0224C844
	add r6, r5, #0
	add r4, r5, #0
_0224C7F4:
	mov r0, #0x49
	ldr r2, [sp, #0x18]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200BFAC
	mov r0, #0x49
	mov r1, #0x4a
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x1c]
	bl sub_0200C388
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x14]
	bl sub_02023868
	add r1, r6, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r6, r6, #4
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x78]
	add r4, #8
	cmp r7, r0
	blo _0224C7F4
_0224C844:
	ldr r0, [sp, #0x78]
	add r4, r5, #0
	lsl r6, r0, #2
	ldr r0, [sp, #0x7c]
	add r4, #0xc4
	mov r1, #0x13
	bl sub_0200B1EC
	str r0, [r4, r6]
	ldr r0, [sp, #0x78]
	lsl r1, r0, #3
	ldr r0, [r4, r6]
	add r1, r5, r1
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x78]
	str r0, [r1, #0x10]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r3, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _0224C928 ; =0x0224F4F0
	lsl r3, r3, #0x18
	str r0, [r1, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsr r3, r3, #0x18
	strh r0, [r1, #0x10]
	add r0, r5, #0
	add r0, #0xc
	str r0, [r1, #0]
	mov r1, #0
	ldr r0, _0224C92C ; =0x0224F4F0
	add r2, r1, #0
	bl sub_0200112C
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r7, #0x4e
	mov r4, #0
	add r6, r5, #0
	lsl r7, r7, #2
_0224C8B8:
	ldr r2, [sp, #0x14]
	mov r0, #1
	add r1, r4, #0
	bl sub_02009714
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _0224C8B8
	ldr r2, [sp, #0x14]
	add r0, sp, #0x40
	add r1, r5, #0
	bl ov7_0224CA54
	ldr r0, [sp, #0x88]
	mov r6, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x40
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	mov r7, #0x56
	str r0, [sp, #0x3c]
	mov r0, #3
	lsl r0, r0, #0x12
	ldr r4, _0224C930 ; =0x0224F1A8
	str r6, [sp, #0x34]
	str r0, [sp, #0x28]
	lsl r7, r7, #2
_0224C8F6:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	add r0, sp, #0x20
	bl sub_02021B90
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_02021CC8
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0224C8F6
_0224C924:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C928: .word 0x0224F4F0
_0224C92C: .word 0x0224F4F0
_0224C930: .word 0x0224F1A8
	thumb_func_end ov7_0224C768

	thumb_func_start ov7_0224C934
ov7_0224C934: ; 0x0224C934
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0224C9A2
	mov r7, #0x56
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0224C946:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224C946
	add r0, r6, #0
	bl ov7_0224CB40
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r5, #0
	cmp r0, #0
	ble _0224C980
	mov r7, #0x12
	add r4, r6, #0
	lsl r7, r7, #4
_0224C96C:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_020237BC
	ldr r0, [r6, r7]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0224C96C
_0224C980:
	mov r1, #0
	ldr r0, [r6, #8]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, [r6, #4]
	bl sub_0201ACF4
	ldr r0, [r6, #4]
	bl sub_0201A8FC
	ldr r0, [r6, #4]
	mov r1, #1
	bl sub_0201A928
	mov r0, #1
	str r0, [r6, #0]
_0224C9A2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_0224C934

	thumb_func_start ov7_0224C9A4
ov7_0224C9A4: ; 0x0224C9A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_02001288
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	cmp r4, r1
	bne _0224C9EA
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl sub_020014D0
	mov r2, #0x4b
	add r0, sp, #0
	lsl r2, r2, #2
	ldrh r1, [r0]
	ldrh r0, [r5, r2]
	cmp r0, r1
	beq _0224CA02
	strh r1, [r5, r2]
	add r0, r2, #4
	ldrh r1, [r5, r2]
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	blx r2
	ldr r0, _0224CA08 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov7_0224CB70
	b _0224CA02
_0224C9EA:
	sub r0, r1, #1
	cmp r4, r0
	beq _0224CA02
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrh r2, [r5, r0]
	sub r0, #0xc
	ldr r0, [r5, r0]
	sub r0, r0, #1
	cmp r2, r0
	bne _0224CA02
	sub r4, r1, #1
_0224CA02:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0224CA08: .word 0x000005DC
	thumb_func_end ov7_0224C9A4

	thumb_func_start ov7_0224CA0C
ov7_0224CA0C: ; 0x0224CA0C
	push {r4, lr}
	mov r2, #0x13
	lsl r2, r2, #4
	add r4, r0, #0
	sub r1, r2, #4
	ldr r0, [r4, r2]
	add r2, r2, #4
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	blx r2
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	bl ov7_0224CB70
	pop {r4, pc}
	thumb_func_end ov7_0224CA0C

	thumb_func_start ov7_0224CA34
ov7_0224CA34: ; 0x0224CA34
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CA34

	thumb_func_start ov7_0224CA54
ov7_0224CA54: ; 0x0224CA54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x3e
	add r1, r4, #0
	bl sub_02006C24
	ldr r1, _0224CB3C ; =0x00001388
	add r6, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsr r0, r1, #4
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #4
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, _0224CB3C ; =0x00001388
	sub r1, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_02009B04
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, _0224CB3C ; =0x00001388
	sub r1, #0xc
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, _0224CB3C ; =0x00001388
	sub r1, #0xc
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A3DC
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A640
	ldr r1, _0224CB3C ; =0x00001388
	mov r0, #0
	mov r3, #0x4f
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsr r2, r1, #4
	ldr r2, [r5, r2]
	lsl r3, r3, #2
	str r2, [sp, #0x14]
	ldr r2, [r5, r3]
	str r2, [sp, #0x18]
	add r2, r3, #4
	ldr r2, [r5, r2]
	add r3, #8
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_020093B4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0224CB3C: .word 0x00001388
	thumb_func_end ov7_0224CA54

	thumb_func_start ov7_0224CB40
ov7_0224CB40: ; 0x0224CB40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r6, #0x4e
	mov r4, #0
	lsl r6, r6, #2
_0224CB5E:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0224CB5E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CB40

	thumb_func_start ov7_0224CB70
ov7_0224CB70: ; 0x0224CB70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, sp, #0
	mov r2, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0224CB96
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0224CBA2
_0224CB96:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_0224CBA2:
	add r0, sp, #0
	ldrh r2, [r0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #7
	cmp r2, r1
	blt _0224CBC0
	add r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0224CBC0:
	add r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CB70

	thumb_func_start ov7_0224CBD0
ov7_0224CBD0: ; 0x0224CBD0
	push {r3, r4}
	ldr r4, [sp, #0xc]
	str r4, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	ldr r1, [sp, #8]
	str r3, [r0, #0x10]
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov7_0224CBD0

	thumb_func_start ov7_0224CBE4
ov7_0224CBE4: ; 0x0224CBE4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	cmp r1, #0x16
	bhs _0224CC1C
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r1, r1, r4
	ldr r1, [r1, #4]
	ldr r2, [r5, #0]
	add r1, #0x95
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207D730
	ldr r1, [r5, #0xc]
	add r3, r0, #0
	add r2, r1, r4
	ldr r1, [r2, #4]
	ldr r0, [r5, #8]
	ldr r2, [r2, #8]
	bl ov7_0224C6DC
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0224CC1C:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r5, #4]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224CBE4

	thumb_func_start ov7_0224CC44
ov7_0224CC44: ; 0x0224CC44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	cmp r0, #1
	beq _0224CC66
	add r0, r1, #0
	ldr r1, _0224CC68 ; =0x0224F1AC
	mov r2, #0x1f
	mov r3, #0xb
	str r4, [sp]
	bl sub_02002100
	str r0, [r5, #4]
	str r4, [r5, #8]
	mov r0, #1
	str r0, [r5, #0]
_0224CC66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224CC68: .word 0x0224F1AC
	thumb_func_end ov7_0224CC44

	thumb_func_start ov7_0224CC6C
ov7_0224CC6C: ; 0x0224CC6C
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224CC76
	mov r1, #0
	str r1, [r0, #0]
_0224CC76:
	bx lr
	thumb_func_end ov7_0224CC6C

	thumb_func_start ov7_0224CC78
ov7_0224CC78: ; 0x0224CC78
	ldr r3, _0224CC84 ; =sub_02002114
	add r1, r0, #0
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bx r3
	nop
_0224CC84: .word sub_02002114
	thumb_func_end ov7_0224CC78

	thumb_func_start ov7_0224CC88
ov7_0224CC88: ; 0x0224CC88
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, _0224CCB4 ; =0x00000000
	beq _0224CCAE
_0224CC94:
	ldr r1, [r5, #0]
	add r0, r7, #0
	mov r2, #1
	bl sub_02029D50
	cmp r0, #1
	bne _0224CCA6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224CCA6:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r6
	blo _0224CC94
_0224CCAE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CCB4: .word 0x00000000
	thumb_func_end ov7_0224CC88

	thumb_func_start ov7_0224CCB8
ov7_0224CCB8: ; 0x0224CCB8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #0xc
	mul r4, r1
	add r1, r5, r4
	ldr r1, [r1, #4]
	add r2, r3, #0
	add r1, #0x95
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207D730
	add r1, r5, r4
	ldr r1, [r1, #8]
	cmp r0, r1
	blo _0224CCDE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224CCDE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CCB8

	thumb_func_start ov7_0224CCE4
ov7_0224CCE4: ; 0x0224CCE4
	mov r3, #0xc
	mul r3, r2
	ldr r1, [r1, r3]
	ldr r3, _0224CCF0 ; =sub_02029D50
	mov r2, #1
	bx r3
	; .align 2, 0
_0224CCF0: .word sub_02029D50
	thumb_func_end ov7_0224CCE4

	thumb_func_start ov7_0224CCF4
ov7_0224CCF4: ; 0x0224CCF4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xc
	mul r1, r3
	add r3, r2, r1
	ldr r4, [r3, #4]
	ldr r1, [r2, r1]
	ldr r5, [r3, #8]
	add r4, #0x95
	mov r2, #1
	bl sub_02029E2C
	lsl r1, r4, #0x10
	lsl r2, r5, #0x10
	ldr r3, [sp, #0x10]
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0207D60C
	cmp r0, #1
	beq _0224CD24
	bl sub_02022974
_0224CD24:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov7_0224CCF4

	thumb_func_start ov7_0224CD28
ov7_0224CD28: ; 0x0224CD28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	ldr r2, _0224CD84 ; =0x0000FFFF
	mov r0, #0
	lsl r1, r1, #8
_0224CD36:
	lsl r3, r0, #1
	ldrh r3, [r4, r3]
	cmp r3, r2
	beq _0224CD48
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	blo _0224CD36
_0224CD48:
	mov r1, #0x23
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldrb r1, [r5, r1]
	mov r0, #0xb
	lsl r1, r1, #1
	bl sub_02018144
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	mov r0, #0
	cmp r1, #0
	ble _0224CD82
	mov r1, #0x8b
	lsl r1, r1, #2
	add r2, r1, #4
_0224CD6E:
	lsl r7, r0, #1
	ldrh r6, [r4, r7]
	ldr r3, [r5, r1]
	add r0, r0, #1
	strh r6, [r3, r7]
	lsl r0, r0, #0x10
	ldrb r3, [r5, r2]
	lsr r0, r0, #0x10
	cmp r0, r3
	blt _0224CD6E
_0224CD82:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CD84: .word 0x0000FFFF
	thumb_func_end ov7_0224CD28

	thumb_func_start ov7_0224CD88
ov7_0224CD88: ; 0x0224CD88
	push {r4, lr}
	mov r1, #0x95
	mov r0, #0xb
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x95
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov7_0224CD88

	thumb_func_start ov7_0224CDA4
ov7_0224CDA4: ; 0x0224CDA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov7_0224CD88
	add r4, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0xb
	str r0, [r4, #0]
	mov r0, #0x60
	bl sub_02023790
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [sp, #0x18]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r5, #0
	bl ov7_0224CE90
	ldr r1, _0224CE88 ; =0x00000242
	mov r3, #0xb
	strb r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #0x2a
	str r2, [r4, r0]
	add r0, r1, #3
	strb r6, [r4, r0]
	ldr r0, [r5, #0xc]
	sub r1, #0x22
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_0200C440
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0xb
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0224CE44
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _0224CE72
_0224CE44:
	cmp r0, #3
	bne _0224CE56
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _0224CE72
_0224CE56:
	cmp r0, #1
	ldr r0, [r5, #0xc]
	bne _0224CE68
	bl sub_020298B0
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _0224CE72
_0224CE68:
	bl sub_0202CA1C
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
_0224CE72:
	ldr r1, [sp]
	add r0, r4, #0
	bl ov7_0224CD28
	ldr r1, _0224CE8C ; =ov7_0224CEAC
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CE88: .word 0x00000242
_0224CE8C: .word ov7_0224CEAC
	thumb_func_end ov7_0224CDA4

	thumb_func_start ov7_0224CE90
ov7_0224CE90: ; 0x0224CE90
	push {r3, lr}
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	cmp r0, #0
	beq _0224CEA4
	cmp r0, #1
	beq _0224CEA4
	cmp r0, #3
	bne _0224CEA8
_0224CEA4:
	mov r0, #0xa
	pop {r3, pc}
_0224CEA8:
	mov r0, #8
	pop {r3, pc}
	thumb_func_end ov7_0224CE90

	thumb_func_start ov7_0224CEAC
ov7_0224CEAC: ; 0x0224CEAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	ldr r1, _0224D004 ; =0x00000233
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0x14
	bls _0224CEC8
	b _0224CFD0
_0224CEC8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224CED4: ; jump table
	.short _0224CEFE - _0224CED4 - 2 ; case 0
	.short _0224CF0A - _0224CED4 - 2 ; case 1
	.short _0224CF14 - _0224CED4 - 2 ; case 2
	.short _0224CF24 - _0224CED4 - 2 ; case 3
	.short _0224CF2E - _0224CED4 - 2 ; case 4
	.short _0224CF38 - _0224CED4 - 2 ; case 5
	.short _0224CF42 - _0224CED4 - 2 ; case 6
	.short _0224CF4C - _0224CED4 - 2 ; case 7
	.short _0224CF56 - _0224CED4 - 2 ; case 8
	.short _0224CF60 - _0224CED4 - 2 ; case 9
	.short _0224CF6A - _0224CED4 - 2 ; case 10
	.short _0224CF74 - _0224CED4 - 2 ; case 11
	.short _0224CF7E - _0224CED4 - 2 ; case 12
	.short _0224CF8C - _0224CED4 - 2 ; case 13
	.short _0224CF96 - _0224CED4 - 2 ; case 14
	.short _0224CFA0 - _0224CED4 - 2 ; case 15
	.short _0224CFD0 - _0224CED4 - 2 ; case 16
	.short _0224CFD0 - _0224CED4 - 2 ; case 17
	.short _0224CFA8 - _0224CED4 - 2 ; case 18
	.short _0224CFB6 - _0224CED4 - 2 ; case 19
	.short _0224CFC6 - _0224CED4 - 2 ; case 20
_0224CEFE:
	bl ov7_0224D008
	ldr r0, _0224D004 ; =0x00000233
	mov r1, #1
	strb r1, [r4, r0]
	b _0224CFD0
_0224CF0A:
	bl ov7_0224D1EC
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF14:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224D388
	ldr r0, _0224D004 ; =0x00000233
	mov r1, #3
	strb r1, [r4, r0]
	b _0224CFD0
_0224CF24:
	bl ov7_0224D620
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF2E:
	bl ov7_0224DC84
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF38:
	bl ov7_0224DE94
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF42:
	bl ov7_0224DFB0
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF4C:
	bl ov7_0224E3A0
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF56:
	bl ov7_0224E3D8
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF60:
	bl ov7_0224E5B0
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF6A:
	bl ov7_0224E6B8
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF74:
	bl ov7_0224E7C8
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF7E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224E950
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF8C:
	bl ov7_0224EA2C
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF96:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224EC20
	b _0224CFD0
_0224CFA0:
	add r0, r6, #0
	bl ov7_0224EC38
	b _0224CFD0
_0224CFA8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224EC9C
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CFB6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224EA54
	ldr r0, _0224D004 ; =0x00000233
	mov r1, #0x14
	strb r1, [r4, r0]
	b _0224CFD0
_0224CFC6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224D250
	pop {r4, r5, r6, pc}
_0224CFD0:
	ldr r0, _0224D004 ; =0x00000233
	ldrb r1, [r4, r0]
	cmp r1, #4
	blo _0224CFFE
	cmp r1, #0xb
	bhi _0224CFFE
	sub r0, #0x3b
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x7f
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_020219F8
_0224CFFE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224D004: .word 0x00000233
	thumb_func_end ov7_0224CEAC

	thumb_func_start ov7_0224D008
ov7_0224D008: ; 0x0224D008
	push {r4, lr}
	add r4, r0, #0
	bl ov7_0224D018
	add r0, r4, #0
	bl ov7_0224D040
	pop {r4, pc}
	thumb_func_end ov7_0224D008

	thumb_func_start ov7_0224D018
ov7_0224D018: ; 0x0224D018
	push {r4, lr}
	ldr r2, _0224D03C ; =0x0000021F
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0200B358
	add r4, #0x8c
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_0224D03C: .word 0x0000021F
	thumb_func_end ov7_0224D018

	thumb_func_start ov7_0224D040
ov7_0224D040: ; 0x0224D040
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _0224D1E0 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0224D0BC
	mov r4, #3
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0xf
	mov r3, #2
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	mov r3, #0xe
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	mov r2, #0x11
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r3, #0x13
	bl sub_02013A4C
	mov r3, #1
	str r3, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0224D1E4 ; =0x000001E9
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #8
	add r2, r4, #0
	bl sub_0201A7E8
	b _0224D174
_0224D0BC:
	cmp r0, #3
	bne _0224D11C
	mov r4, #2
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x1d
	add r3, r4, #0
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	mov r2, #0x1e
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r3, #0x20
	bl sub_02013A4C
	mov r1, #0xd
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0224D1E4 ; =0x000001E9
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #8
	mov r2, #3
	mov r3, #0x17
	bl sub_0201A7E8
	b _0224D174
_0224D11C:
	mov r4, #2
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0xf
	add r3, r4, #0
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	mov r2, #0x11
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r3, #0x13
	bl sub_02013A4C
	mov r3, #1
	str r3, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0224D1E4 ; =0x000001E9
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
_0224D174:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r2, sp, #0x14
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x18]
	mov r0, #0
	strb r0, [r2, #8]
	mov r1, #1
	strb r1, [r2, #9]
	strb r4, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	strb r3, [r2, #0xb]
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _0224D1E8 ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _0224D1E8 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0xb
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	add r5, #0x80
	str r0, [r5, #0]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224D1E0: .word 0x00000245
_0224D1E4: .word 0x000001E9
_0224D1E8: .word 0x000003D9
	thumb_func_end ov7_0224D040

	thumb_func_start ov7_0224D1EC
ov7_0224D1EC: ; 0x0224D1EC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224D208
	add r1, r1, #1
	cmp r0, r1
	beq _0224D218
	b _0224D212
_0224D208:
	add r0, r4, #0
	bl ov7_0224D21C
	mov r0, #0x13
	pop {r4, pc}
_0224D212:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
_0224D218:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov7_0224D1EC

	thumb_func_start ov7_0224D21C
ov7_0224D21C: ; 0x0224D21C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r4, #8
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov7_0224D21C

	thumb_func_start ov7_0224D250
ov7_0224D250: ; 0x0224D250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	add r4, r1, #0
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224D268
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224D268:
	ldr r0, _0224D37C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0224D274
	b _0224D378
_0224D274:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0224D380 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224D35A
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	cmp r0, #0x65
	beq _0224D35A
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	cmp r0, #0x51
	beq _0224D35A
	ldr r1, _0224D384 ; =0x000001BE
	cmp r0, r1
	beq _0224D35A
	add r0, r1, #0
	add r0, #0x85
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _0224D2EE
	add r1, #0x86
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0224D2EE
	mov r0, #0xb
	bl sub_0202BD38
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D2EE:
	cmp r2, #1
	bls _0224D308
	mov r0, #0xb
	bl sub_0202BD14
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D308:
	mov r0, #0x91
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bls _0224D328
	mov r0, #0xb
	bl sub_0202BD2C
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D328:
	cmp r2, #0
	beq _0224D342
	mov r0, #0xb
	bl sub_0202BD08
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D342:
	cmp r0, #0
	beq _0224D35A
	mov r0, #0xb
	bl sub_0202BD20
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
_0224D35A:
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200C560
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224D378:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224D37C: .word 0x021BF67C
_0224D380: .word 0x00000245
_0224D384: .word 0x000001BE
	thumb_func_end ov7_0224D250

	thumb_func_start ov7_0224D388
ov7_0224D388: ; 0x0224D388
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	mov r2, #0
	str r0, [sp, #8]
	add r4, r1, #0
	str r2, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r4, #0
	bl ov7_0224D21C
	add r0, r4, #0
	bl ov7_0224D3E8
	mov r0, #0xb
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0x90
	ldr r0, [r5, #0x24]
	ldr r1, [r1, #0]
	bl sub_020203C0
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020203D4
	ldr r0, _0224D3E4 ; =0x00000241
	mov r1, #0
	strb r1, [r4, r0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224D3E4: .word 0x00000241
	thumb_func_end ov7_0224D388

	thumb_func_start ov7_0224D3E8
ov7_0224D3E8: ; 0x0224D3E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	ldr r7, _0224D43C ; =0x0224F328
	mov r6, #0
	add r4, #8
_0224D3F4:
	ldr r0, _0224D440 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224D410
	cmp r0, #3
	beq _0224D410
	cmp r6, #1
	bne _0224D410
	ldr r0, [r5, #0]
	ldr r2, _0224D444 ; =0x0224F2BC
	add r1, r4, #0
	bl sub_0201A8D4
	b _0224D42E
_0224D410:
	cmp r0, #3
	bne _0224D424
	cmp r6, #2
	bne _0224D424
	ldr r0, [r5, #0]
	ldr r2, _0224D448 ; =0x0224F2C4
	add r1, r4, #0
	bl sub_0201A8D4
	b _0224D42E
_0224D424:
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0201A8D4
_0224D42E:
	add r6, r6, #1
	add r4, #0x10
	add r7, #8
	cmp r6, #6
	blo _0224D3F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D43C: .word 0x0224F328
_0224D440: .word 0x00000245
_0224D444: .word 0x0224F2BC
_0224D448: .word 0x0224F2C4
	thumb_func_end ov7_0224D3E8

	thumb_func_start ov7_0224D44C
ov7_0224D44C: ; 0x0224D44C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x28
	mov r1, #1
	bl sub_0200DC9C
	mov r4, #0
	add r5, #8
_0224D45C:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blo _0224D45C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224D44C

	thumb_func_start ov7_0224D474
ov7_0224D474: ; 0x0224D474
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x3e
	mov r1, #0xb
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r2, #0xb
	str r2, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r3, #1
	add r4, r0, #0
	bl sub_020070E8
	ldr r0, _0224D544 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224D4A4
	cmp r0, #3
	bne _0224D4BE
_0224D4A4:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #2
	mov r3, #1
	bl sub_0200710C
	b _0224D4D6
_0224D4BE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #3
	mov r3, #1
	bl sub_0200710C
_0224D4D6:
	ldr r0, _0224D544 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224D4F2
	mov r0, #0x20
	mov r2, #0
	str r0, [sp]
	mov r1, #0xb
	add r0, r4, #0
	add r3, r2, #0
	str r1, [sp, #4]
	bl sub_02007130
	b _0224D506
_0224D4F2:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xb
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02007130
_0224D506:
	mov r0, #0
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	mov r2, #0x1f
	bl sub_0200DAA4
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224D544: .word 0x00000245
	thumb_func_end ov7_0224D474

	thumb_func_start ov7_0224D548
ov7_0224D548: ; 0x0224D548
	push {r4, lr}
	add r4, r0, #0
	bl sub_02020014
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201A008
	mov r1, #0x8e
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0201A008
	ldr r1, _0224D5CC ; =0x00000239
	strb r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0201A008
	ldr r1, _0224D5D0 ; =0x0000023A
	strb r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0201A008
	ldr r1, _0224D5D4 ; =0x0000023B
	strb r0, [r4, r1]
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
	pop {r4, pc}
	nop
_0224D5CC: .word 0x00000239
_0224D5D0: .word 0x0000023A
_0224D5D4: .word 0x0000023B
	thumb_func_end ov7_0224D548

	thumb_func_start ov7_0224D5D8
ov7_0224D5D8: ; 0x0224D5D8
	push {r4, lr}
	mov r1, #0x8e
	add r4, r0, #0
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	mov r0, #0
	bl sub_02019060
	ldr r1, _0224D614 ; =0x00000239
	mov r0, #1
	ldrb r1, [r4, r1]
	bl sub_02019060
	ldr r1, _0224D618 ; =0x0000023A
	mov r0, #2
	ldrb r1, [r4, r1]
	bl sub_02019060
	ldr r1, _0224D61C ; =0x0000023B
	mov r0, #3
	ldrb r1, [r4, r1]
	bl sub_02019060
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201FF48
	pop {r4, pc}
	nop
_0224D614: .word 0x00000239
_0224D618: .word 0x0000023A
_0224D61C: .word 0x0000023B
	thumb_func_end ov7_0224D5D8

	thumb_func_start ov7_0224D620
ov7_0224D620: ; 0x0224D620
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0224D690 ; =0x00000241
	add r4, r0, #0
	add r0, r1, #1
	ldrb r2, [r4, r1]
	ldrb r0, [r4, r0]
	cmp r2, r0
	beq _0224D65A
	ldr r5, _0224D694 ; =0x0224F2D4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, r2, #0
	bl sub_02020990
	ldr r0, _0224D690 ; =0x00000241
	add sp, #0xc
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, r5, pc}
_0224D65A:
	mov r0, #0
	strb r0, [r4, r1]
	mov r1, #6
	mov r2, #2
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	add r0, r4, #0
	bl ov7_0224EAD0
	add r0, r4, #0
	bl ov7_0224D474
	add r0, r4, #0
	bl ov7_0224D548
	add r0, r4, #0
	bl ov7_0224D6BC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224DAF8
	mov r0, #4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224D690: .word 0x00000241
_0224D694: .word 0x0224F2D4
	thumb_func_end ov7_0224D620

	thumb_func_start ov7_0224D698
ov7_0224D698: ; 0x0224D698
	push {r3, lr}
	ldr r2, _0224D6B8 ; =0x00000245
	ldrb r0, [r0, r2]
	cmp r0, #1
	bne _0224D6A6
	add r0, r1, #0
	pop {r3, pc}
_0224D6A6:
	cmp r0, #2
	bne _0224D6B4
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r1, r0, #0
_0224D6B4:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
_0224D6B8: .word 0x00000245
	thumb_func_end ov7_0224D698

	thumb_func_start ov7_0224D6BC
ov7_0224D6BC: ; 0x0224D6BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r2, _0224D850 ; =0x00000245
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r5, r2]
	cmp r0, #0
	beq _0224D6D2
	cmp r0, #3
	bne _0224D6F2
_0224D6D2:
	mov r2, #0x62
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0xc]
	ldr r2, _0224D854 ; =0x00000287
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #4]
	b _0224D714
_0224D6F2:
	cmp r0, #1
	bne _0224D706
	ldr r0, [sp]
	mov r1, #0x1a
	add r2, #0x2d
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0xc]
	b _0224D714
_0224D706:
	ldr r0, [sp]
	mov r1, #0x1a
	mov r2, #0xc
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0xc]
_0224D714:
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	mov r1, #0xb
	add r0, r0, #1
	bl sub_02013A04
	str r0, [r5, #0x7c]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _0224D7B4
	ldr r4, [sp, #8]
_0224D734:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, r4]
	bl ov7_0224D698
	add r6, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	cmp r6, r0
	bhi _0224D780
	sub r0, #0x5c
	cmp r6, r0
	blo _0224D780
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D268
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0200B1EC
	add r7, r0, #0
	mov r2, #0x8b
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, #0x7c]
	ldrh r2, [r2, r4]
	add r1, r7, #0
	bl sub_02013A6C
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #1
	str r0, [sp]
	b _0224D7A0
_0224D780:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_0200B1EC
	mov r2, #0x8b
	add r7, r0, #0
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, #0x7c]
	ldrh r2, [r2, r4]
	add r1, r7, #0
	bl sub_02013A6C
	add r0, r7, #0
	bl sub_020237BC
_0224D7A0:
	ldr r0, [sp, #8]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _0224D734
_0224D7B4:
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5, #0x7c]
	beq _0224D7CE
	add r1, r5, #0
	add r1, #0x88
	mov r2, #0x1a
	add r3, r2, #0
	ldr r1, [r1, #0]
	sub r3, #0x1c
	bl sub_02013A4C
	b _0224D7DE
_0224D7CE:
	add r1, r5, #0
	add r1, #0x88
	mov r2, #8
	add r3, r2, #0
	ldr r1, [r1, #0]
	sub r3, #0xa
	bl sub_02013A4C
_0224D7DE:
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	ldr r0, _0224D850 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224D7F0
	cmp r0, #3
	bne _0224D7F6
_0224D7F0:
	ldr r0, [sp, #4]
	bl sub_0200B190
_0224D7F6:
	ldr r3, _0224D858 ; =0x0224F308
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x69
	lsl r0, r0, #2
	cmp r6, r0
	bhi _0224D820
	sub r0, #0x5c
	cmp r6, r0
	blo _0224D820
	mov r1, #0x23
	add r0, sp, #0x10
	strb r1, [r0, #0x15]
	b _0224D826
_0224D820:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #0x15]
_0224D826:
	ldr r0, [r5, #0x7c]
	mov r3, #0xb
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x1c]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, sp, #0x10
	strh r1, [r0, #0x10]
	mov r1, #0
	add r0, sp, #0x10
	add r2, r1, #0
	str r5, [sp, #0x2c]
	bl sub_0200112C
	str r0, [r5, #0x78]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D850: .word 0x00000245
_0224D854: .word 0x00000287
_0224D858: .word 0x0224F308
	thumb_func_end ov7_0224D6BC

	thumb_func_start ov7_0224D85C
ov7_0224D85C: ; 0x0224D85C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0x13
	str r0, [sp, #0x10]
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #1
	beq _0224D878
	ldr r0, _0224D9AC ; =0x00000638
	bl sub_02005748
_0224D878:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	mvn r1, r1
	cmp r5, r1
	beq _0224D938
	ldr r2, _0224D9B0 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224D8A8
	mov r0, #0x82
	mov r1, #0xb
	bl sub_02023790
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xb
	add r6, r0, #0
	bl sub_0207CFC8
	b _0224D90C
_0224D8A8:
	cmp r0, #3
	bne _0224D8C2
	mov r0, #0x82
	mov r1, #0xb
	bl sub_02023790
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xb
	add r6, r0, #0
	bl sub_0207CFC8
	b _0224D90C
_0224D8C2:
	cmp r0, #1
	bne _0224D8E6
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2d
	mov r3, #0xb
	bl sub_0200B144
	add r1, r5, #0
	add r7, r0, #0
	add r1, #0x8a
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0200B190
	b _0224D90C
_0224D8E6:
	mov r0, #0
	mov r1, #0x1a
	sub r2, #0x27
	mov r3, #0xb
	bl sub_0200B144
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_020981F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0200B190
_0224D90C:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224D9B4 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x18
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov7_0224EB7C
	b _0224D940
_0224D938:
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov7_0224EB7C
_0224D940:
	add r1, sp, #0x14
	ldr r0, [sp, #0x10]
	add r1, #2
	add r2, sp, #0x14
	bl sub_020014DC
	add r0, sp, #0x14
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0224D962
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0224D96E
_0224D962:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_0224D96E:
	ldr r0, [sp, #0x10]
	mov r1, #2
	bl sub_02001504
	cmp r0, #7
	bls _0224D992
	add r1, sp, #0x14
	ldrh r1, [r1, #2]
	add r1, r1, #7
	cmp r0, r1
	bls _0224D992
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	b _0224D99E
_0224D992:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0224D99E:
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D9AC: .word 0x00000638
_0224D9B0: .word 0x00000245
_0224D9B4: .word 0x000F0E00
	thumb_func_end ov7_0224D85C

	thumb_func_start ov7_0224D9B8
ov7_0224D9B8: ; 0x0224D9B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	mov r1, #0x13
	add r7, r2, #0
	bl sub_02001504
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0224DAA0
	lsl r0, r5, #0x10
	lsr r2, r0, #0x10
	mov r0, #0x69
	lsl r0, r0, #2
	cmp r2, r0
	bhi _0224DA0A
	add r1, r0, #0
	sub r1, #0x5c
	cmp r2, r1
	blo _0224DA0A
	add r1, r0, #0
	sub r1, #0x5d
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r1, #2
	add r3, r4, #0
	str r1, [sp]
	add r3, #8
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	add r3, r7, #4
	str r3, [sp, #0xc]
	add r0, #0xac
	ldr r0, [r4, r0]
	add r3, r1, #0
	bl sub_0200C648
_0224DA0A:
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov7_0224E890
	str r0, [sp, #0x14]
	mov r0, #0xc
	mov r1, #0xb
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, _0224DAF0 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224DA38
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x20
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _0224DA46
_0224DA38:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #9
	bl sub_0200B1EC
	str r0, [sp, #0x10]
_0224DA46:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x14]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224DAF4 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r6, ip
	mov r3, #0x98
	add r0, #8
	sub r3, r3, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
_0224DAA0:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0224DAEC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x98
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #8
	mov r1, #0xf
	mov r2, #0
	add r3, r7, #0
	bl sub_0201AE78
	mov r1, #0
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224DAF4 ; =0x00010200
	add r4, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_0224DAEC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DAF0: .word 0x00000245
_0224DAF4: .word 0x00010200
	thumb_func_end ov7_0224D9B8

	thumb_func_start ov7_0224DAF8
ov7_0224DAF8: ; 0x0224DAF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224DC80 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224DBA2
	cmp r1, #0
	bne _0224DB24
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x28
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	b _0224DB3A
_0224DB24:
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r0, #0x28
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
_0224DB3A:
	mov r0, #0x10
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl ov7_0224E8F4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0
	add r7, r0, #0
	mov r3, #0x40
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x28
	add r2, r4, #0
	sub r3, r3, r7
	str r1, [sp, #8]
	bl sub_0201D738
	b _0224DC66
_0224DBA2:
	cmp r1, #0
	bne _0224DBEA
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x28
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x12
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x28
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	b _0224DBFE
_0224DBEA:
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0x10
	add r0, #0x28
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl sub_0201AE78
_0224DBFE:
	mov r0, #0x10
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl ov7_0224E8F4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0x48
	mov r1, #0
	add r0, #0x28
	add r2, r4, #0
	sub r3, r3, r7
	str r1, [sp, #8]
	bl sub_0201D738
_0224DC66:
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r5, #0x28
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224DC80: .word 0x00000245
	thumb_func_end ov7_0224DAF8

	thumb_func_start ov7_0224DC84
ov7_0224DC84: ; 0x0224DC84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, sp, #0
	ldr r0, [r5, #0x78]
	mov r1, #0
	add r2, #2
	bl sub_020014DC
	ldr r0, [r5, #0x78]
	bl sub_02001288
	add r4, r0, #0
	ldr r0, [r5, #0x78]
	mov r1, #0
	add r2, sp, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r2, [r0]
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _0224DCC4
	mov r0, #2
	lsl r2, r2, #4
	lsl r0, r0, #8
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0xac
	asr r2, r2, #0x10
	bl sub_0200D494
_0224DCC4:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224DCD6
	add r0, r0, #1
	cmp r4, r0
	bne _0224DCD4
	b _0224DE7C
_0224DCD4:
	b _0224DD04
_0224DCD6:
	mov r1, #0
	ldr r0, [r5, #0x78]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, [r5, #0x7c]
	bl sub_02013A3C
	add r0, r5, #0
	bl ov7_0224D44C
	add r0, r5, #0
	bl ov7_0224D5D8
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019EBC
	ldr r0, _0224DE80 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_0224DD04:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D34
	mov r1, #0x82
	lsl r1, r1, #2
	strh r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_02021D34
	ldr r1, _0224DE84 ; =0x0000020A
	strh r0, [r5, r1]
	sub r1, #0x12
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r5, #0
	mov r1, #1
	bl ov7_0224EC10
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	ldr r1, _0224DE88 ; =0x00000246
	mov r2, #1
	strh r4, [r5, r1]
	add r0, r1, #2
	strh r2, [r5, r0]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ov7_0224E890
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov7_0224E8F4
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	cmp r0, r1
	bhs _0224DDE0
	sub r0, r2, #7
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224DD9C
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x25
	bl sub_0200B1EC
	b _0224DDA8
_0224DD9C:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200B1EC
_0224DDA8:
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0224DDE0:
	sub r2, r2, #7
	ldrb r2, [r5, r2]
	cmp r2, #1
	bne _0224DDF6
	ldr r0, _0224DE80 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov7_0224E098
	pop {r3, r4, r5, pc}
_0224DDF6:
	bl sub_020E2178
	ldr r1, _0224DE8C ; =0x0000024A
	strh r0, [r5, r1]
	ldrh r0, [r5, r1]
	cmp r0, #0x63
	bls _0224DE08
	mov r0, #0x63
	strh r0, [r5, r1]
_0224DE08:
	ldr r1, _0224DE88 ; =0x00000246
	add r0, r5, #0
	ldrh r1, [r5, r1]
	mov r2, #0
	bl ov7_0224E834
	ldr r0, _0224DE90 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224DE2A
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x21
	bl sub_0200B1EC
	b _0224DE36
_0224DE2A:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0200B1EC
_0224DE36:
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ov7_0224EB38
	ldr r0, _0224DE80 ; =0x000005DC
	bl sub_02005748
	mov r0, #5
	pop {r3, r4, r5, pc}
_0224DE7C:
	mov r0, #4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224DE80: .word 0x000005DC
_0224DE84: .word 0x0000020A
_0224DE88: .word 0x00000246
_0224DE8C: .word 0x0000024A
_0224DE90: .word 0x00000245
	thumb_func_end ov7_0224DC84

	thumb_func_start ov7_0224DE94
ov7_0224DE94: ; 0x0224DE94
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224DEAA
	mov r0, #5
	pop {r4, pc}
_0224DEAA:
	add r0, r4, #0
	bl ov7_0224DED4
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224E28C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ov7_0224DE94

	thumb_func_start ov7_0224DED4
ov7_0224DED4: ; 0x0224DED4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0224DFAC ; =0x00000245
	add r5, r0, #0
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _0224DEF6
	add r0, r1, #0
	add r1, r1, #1
	sub r0, #0x35
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #0xb
	bl sub_0207D730
	add r4, r0, #0
	b _0224DF28
_0224DEF6:
	cmp r0, #3
	bne _0224DF0E
	add r0, r1, #0
	add r1, r1, #1
	sub r0, #0x35
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #0xb
	bl sub_0207D730
	add r4, r0, #0
	b _0224DF28
_0224DF0E:
	cmp r0, #2
	bne _0224DF26
	add r0, r1, #0
	add r1, r1, #1
	sub r0, #0x35
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	bl sub_0202CBC8
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0224DF28
_0224DF26:
	mov r4, #0
_0224DF28:
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x48
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x18
	mov r1, #0xb
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	add r2, r4, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x48
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r5, #0x48
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224DFAC: .word 0x00000245
	thumb_func_end ov7_0224DED4

	thumb_func_start ov7_0224DFB0
ov7_0224DFB0: ; 0x0224DFB0
	push {r4, lr}
	mov r1, #0x92
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	bl sub_0208C15C
	cmp r0, #0
	beq _0224DFD8
	ldr r0, _0224E08C ; =0x00000638
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov7_0224E28C
	mov r0, #6
	pop {r4, pc}
_0224DFD8:
	ldr r0, _0224E090 ; =0x021BF67C
	mov r1, #1
	ldr r2, [r0, #0x48]
	add r0, r2, #0
	tst r0, r1
	beq _0224E028
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	add r0, #0x48
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x38
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, _0224E094 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov7_0224E098
	pop {r4, pc}
_0224E028:
	mov r0, #2
	tst r0, r2
	beq _0224E088
	add r0, r4, #0
	add r0, #0x48
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x38
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xe
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EC10
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, _0224E094 ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	pop {r4, pc}
_0224E088:
	mov r0, #6
	pop {r4, pc}
	; .align 2, 0
_0224E08C: .word 0x00000638
_0224E090: .word 0x021BF67C
_0224E094: .word 0x000005DC
	thumb_func_end ov7_0224DFB0

	thumb_func_start ov7_0224E098
ov7_0224E098: ; 0x0224E098
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _0224E284 ; =0x00000245
	add r4, r0, #0
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224E0BC
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D55C
	b _0224E100
_0224E0BC:
	cmp r0, #3
	bne _0224E0D6
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D55C
	b _0224E100
_0224E0D6:
	cmp r0, #1
	bne _0224E0EE
	sub r2, #0x35
	ldr r0, [r4, r2]
	bl sub_020289A0
	cmp r0, #0xc8
	bne _0224E0EA
	mov r0, #0
	b _0224E100
_0224E0EA:
	mov r0, #1
	b _0224E100
_0224E0EE:
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0202CB70
_0224E100:
	cmp r0, #0
	bne _0224E192
	mov r0, #0x92
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224E124
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E15A
_0224E124:
	cmp r0, #3
	bne _0224E138
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E15A
_0224E138:
	cmp r0, #1
	bne _0224E14C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E15A
_0224E14C:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xe
	bl sub_0200B1EC
	add r5, r0, #0
_0224E15A:
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	add sp, #8
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0224E192:
	ldr r1, _0224E288 ; =0x00000246
	add r0, r4, #0
	ldrh r1, [r4, r1]
	mov r2, #0
	bl ov7_0224E834
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r2, #0x92
	add r0, r4, #0
	str r1, [sp, #4]
	lsl r2, r2, #2
	add r0, #0x8c
	ldrsh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r3, #2
	bl sub_0200B60C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r2, #0x93
	str r0, [sp, #4]
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	sub r2, r2, #4
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	add r0, #0x8c
	ldr r0, [r0, #0]
	mul r2, r3
	mov r1, #2
	mov r3, #6
	bl sub_0200B60C
	ldr r1, _0224E288 ; =0x00000246
	add r2, r1, #0
	ldrh r0, [r4, r1]
	sub r2, #0xa2
	cmp r0, r2
	bhi _0224E226
	sub r1, #0xfe
	cmp r0, r1
	blo _0224E226
	bl sub_0207D268
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200B630
	ldr r0, _0224E284 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224E216
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x24
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E24C
_0224E216:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x1b
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E24C
_0224E226:
	ldr r0, _0224E284 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224E23E
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x23
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E24C
_0224E23E:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
_0224E24C:
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	mov r0, #7
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E284: .word 0x00000245
_0224E288: .word 0x00000246
	thumb_func_end ov7_0224E098

	thumb_func_start ov7_0224E28C
ov7_0224E28C: ; 0x0224E28C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x38
	mov r1, #0xf
	bl sub_0201ADA4
	cmp r4, #0
	bne _0224E2AE
	add r0, r5, #0
	add r0, #0x38
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
_0224E2AE:
	mov r0, #0x18
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x15
	bl sub_0200B1EC
	mov r3, #2
	add r6, r0, #0
	mov r2, #0x92
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r2, r2, #2
	add r0, #0x8c
	ldrsh r2, [r5, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r0, #0x38
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0224E39C ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224E322
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x22
	bl sub_0200B1EC
	b _0224E32E
_0224E322:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x16
	bl sub_0200B1EC
_0224E32E:
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r2, #0x93
	str r0, [sp, #4]
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	sub r2, r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #0x8c
	ldr r0, [r0, #0]
	mul r2, r3
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r6, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0x60
	mov r1, #0
	add r0, #0x38
	add r2, r4, #0
	sub r3, r3, r6
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r5, #0x38
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E39C: .word 0x00000245
	thumb_func_end ov7_0224E28C

	thumb_func_start ov7_0224E3A0
ov7_0224E3A0: ; 0x0224E3A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E3BA
	add sp, #4
	mov r0, #7
	pop {r3, r4, pc}
_0224E3BA:
	mov r3, #0xb
	str r3, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0224E3D4 ; =0x0224F2CC
	mov r2, #0x1f
	bl sub_02002100
	add r4, #0x80
	str r0, [r4, #0]
	mov r0, #8
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224E3D4: .word 0x0224F2CC
	thumb_func_end ov7_0224E3A0

	thumb_func_start ov7_0224E3D8
ov7_0224E3D8: ; 0x0224E3D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_02002114
	cmp r0, #0
	beq _0224E3F6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0224E3F4
	b _0224E55E
_0224E3F4:
	b _0224E5A0
_0224E3F6:
	ldr r2, _0224E5A4 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224E454
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	mov r2, #0x92
	lsl r2, r2, #2
	add r5, r0, #0
	ldrsh r0, [r4, r2]
	cmp r0, #1
	bne _0224E428
	add r0, r4, #0
	sub r2, r2, #2
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B70C
	b _0224E438
_0224E428:
	add r0, r4, #0
	sub r2, r2, #2
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B77C
_0224E438:
	ldr r0, _0224E5A8 ; =0x00000246
	mov r1, #5
	ldrh r0, [r4, r0]
	mov r2, #0xb
	bl sub_0207CFF0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B7B4
	b _0224E518
_0224E454:
	cmp r0, #3
	bne _0224E4AC
	add r0, r2, #3
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _0224E472
	add r0, r4, #0
	add r2, r2, #1
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B70C
	b _0224E482
_0224E472:
	add r0, r4, #0
	add r2, r2, #1
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B77C
_0224E482:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _0224E5A8 ; =0x00000246
	mov r1, #5
	ldrh r0, [r4, r0]
	mov r2, #0xb
	bl sub_0207CFF0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B7B4
	b _0224E518
_0224E4AC:
	cmp r0, #1
	bne _0224E4CC
	add r1, r2, #1
	ldrh r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov7_0224E834
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E518
_0224E4CC:
	add r0, r2, #3
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _0224E4F0
	add r0, r2, #1
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200BE64
	b _0224E50A
_0224E4F0:
	add r0, r2, #1
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200BE98
_0224E50A:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xd
	bl sub_0200B1EC
	add r5, r0, #0
_0224E518:
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	ldr r0, _0224E5AC ; =0x00000644
	bl sub_02005748
	mov r0, #9
	pop {r3, r4, r5, pc}
_0224E55E:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xe
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EC10
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #4
	pop {r3, r4, r5, pc}
_0224E5A0:
	mov r0, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E5A4: .word 0x00000245
_0224E5A8: .word 0x00000246
_0224E5AC: .word 0x00000644
	thumb_func_end ov7_0224E3D8

	thumb_func_start ov7_0224E5B0
ov7_0224E5B0: ; 0x0224E5B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E5C6
	mov r0, #9
	pop {r4, pc}
_0224E5C6:
	ldr r2, _0224E6B4 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224E5FC
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D570
	mov r2, #0x22
	lsl r2, r2, #4
	add r1, r2, #0
	ldr r0, [r4, r2]
	add r2, #0x28
	ldrsh r2, [r4, r2]
	add r1, #0x26
	ldrh r1, [r4, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0206D504
	b _0224E63C
_0224E5FC:
	cmp r0, #3
	bne _0224E616
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D570
	b _0224E63C
_0224E616:
	cmp r0, #1
	bne _0224E62A
	add r0, r2, #0
	add r1, r2, #1
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_0202895C
	b _0224E63C
_0224E62A:
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0202CAE0
_0224E63C:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	sub r1, r1, #4
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	mul r1, r2
	bl ov7_0224E920
	ldr r2, _0224E6B4 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #3
	bne _0224E66E
	add r0, r2, #0
	add r3, r2, #7
	add r2, r2, #3
	sub r0, #0x29
	ldrsh r2, [r4, r2]
	ldr r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #0x45
	mul r2, r3
	bl sub_0202CF70
	b _0224E684
_0224E66E:
	add r0, r2, #0
	add r3, r2, #7
	add r2, r2, #3
	sub r0, #0x29
	ldrsh r2, [r4, r2]
	ldr r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #0x23
	mul r2, r3
	bl sub_0202CF70
_0224E684:
	add r0, r4, #0
	mov r1, #1
	bl ov7_0224DAF8
	mov r1, #0x92
	lsl r1, r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #1
	ble _0224E69E
	mov r2, #2
	sub r0, r1, #5
	strb r2, [r4, r0]
	b _0224E6B0
_0224E69E:
	sub r0, r1, #5
	ldrb r0, [r4, r0]
	cmp r0, #0xff
	beq _0224E6B0
	sub r0, r1, #5
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #5
	strb r2, [r4, r0]
_0224E6B0:
	mov r0, #0xa
	pop {r4, pc}
	; .align 2, 0
_0224E6B4: .word 0x00000245
	thumb_func_end ov7_0224E5B0

	thumb_func_start ov7_0224E6B8
ov7_0224E6B8: ; 0x0224E6B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E6CE
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0224E6CE:
	ldr r0, _0224E7BC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224E7B6
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _0224E6EA
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0206B3B4
_0224E6EA:
	ldr r0, _0224E7C0 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224E6F6
	cmp r0, #3
	bne _0224E774
_0224E6F6:
	ldr r1, _0224E7C4 ; =0x00000246
	ldrh r0, [r5, r1]
	cmp r0, #4
	bne _0224E774
	add r0, r1, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0xa
	blt _0224E774
	sub r1, #0x36
	ldr r0, [r5, r1]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D570
	cmp r0, #1
	bne _0224E774
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	bl sub_0202CD88
	mov r1, #0x32
	bl sub_0202CF28
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0224E774:
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0x10
	ldrh r1, [r5, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0xe
	ldrh r1, [r5, r1]
	bl sub_02021CAC
	add r0, r5, #0
	mov r1, #0
	bl ov7_0224EC10
	add r5, #0x18
	add r0, r5, #0
	bl sub_0201A9A4
	mov r0, #4
	pop {r3, r4, r5, pc}
_0224E7B6:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
	nop
_0224E7BC: .word 0x021BF67C
_0224E7C0: .word 0x00000245
_0224E7C4: .word 0x00000246
	thumb_func_end ov7_0224E6B8

	thumb_func_start ov7_0224E7C8
ov7_0224E7C8: ; 0x0224E7C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E7DE
	mov r0, #0xb
	pop {r4, pc}
_0224E7DE:
	ldr r0, _0224E830 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224E82A
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xe
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EC10
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #4
	pop {r4, pc}
_0224E82A:
	mov r0, #0xb
	pop {r4, pc}
	nop
_0224E830: .word 0x021BF67C
	thumb_func_end ov7_0224E7C8

	thumb_func_start ov7_0224E834
ov7_0224E834: ; 0x0224E834
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0224E88C ; =0x00000245
	add r3, r1, #0
	ldrb r0, [r4, r0]
	add r5, r2, #0
	cmp r0, #0
	bne _0224E852
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_0200B70C
	pop {r3, r4, r5, pc}
_0224E852:
	cmp r0, #3
	bne _0224E864
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_0200B70C
	pop {r3, r4, r5, pc}
_0224E864:
	cmp r0, #1
	bne _0224E876
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_0200BC80
	pop {r3, r4, r5, pc}
_0224E876:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r4, #0x8c
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0200BE64
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E88C: .word 0x00000245
	thumb_func_end ov7_0224E834

	thumb_func_start ov7_0224E890
ov7_0224E890: ; 0x0224E890
	push {r3, lr}
	ldr r2, _0224E8C8 ; =0x00000245
	ldrb r2, [r0, r2]
	cmp r2, #0
	bne _0224E8A6
	add r0, r1, #0
	mov r1, #0
	mov r2, #0xb
	bl sub_0207CFF0
	pop {r3, pc}
_0224E8A6:
	cmp r2, #3
	bne _0224E8B0
	bl ov7_0224E8CC
	pop {r3, pc}
_0224E8B0:
	cmp r2, #1
	bne _0224E8BC
	add r0, r1, #0
	bl sub_0205745C
	pop {r3, pc}
_0224E8BC:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_020981D0
	pop {r3, pc}
	nop
_0224E8C8: .word 0x00000245
	thumb_func_end ov7_0224E890

	thumb_func_start ov7_0224E8CC
ov7_0224E8CC: ; 0x0224E8CC
	ldr r3, _0224E8EC ; =0x0224F3F8
	mov r2, #0
_0224E8D0:
	ldrh r0, [r3]
	cmp r1, r0
	bne _0224E8DE
	ldr r0, _0224E8F0 ; =0x0224F3FA
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_0224E8DE:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x29
	blo _0224E8D0
	mov r0, #0
	bx lr
	nop
_0224E8EC: .word 0x0224F3F8
_0224E8F0: .word 0x0224F3FA
	thumb_func_end ov7_0224E8CC

	thumb_func_start ov7_0224E8F4
ov7_0224E8F4: ; 0x0224E8F4
	push {r3, lr}
	ldr r1, _0224E91C ; =0x00000245
	ldrb r2, [r0, r1]
	cmp r2, #3
	bne _0224E910
	sub r1, #0x25
	ldr r0, [r0, r1]
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	pop {r3, pc}
_0224E910:
	sub r1, #0x39
	ldr r0, [r0, r1]
	bl sub_02025F74
	pop {r3, pc}
	nop
_0224E91C: .word 0x00000245
	thumb_func_end ov7_0224E8F4

	thumb_func_start ov7_0224E920
ov7_0224E920: ; 0x0224E920
	push {r4, lr}
	ldr r2, _0224E94C ; =0x00000245
	add r4, r1, #0
	ldrb r3, [r0, r2]
	cmp r3, #3
	bne _0224E940
	sub r2, #0x25
	ldr r0, [r0, r2]
	bl sub_0202D750
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	mov r2, #6
	bl sub_0202D230
	pop {r4, pc}
_0224E940:
	sub r2, #0x39
	ldr r0, [r0, r2]
	bl sub_02025FB8
	pop {r4, pc}
	nop
_0224E94C: .word 0x00000245
	thumb_func_end ov7_0224E920

	thumb_func_start ov7_0224E950
ov7_0224E950: ; 0x0224E950
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0224EA20 ; =0x00000241
	add r5, r1, #0
	add r1, r0, #1
	ldrb r2, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r2, r1
	beq _0224E98C
	ldr r4, _0224EA24 ; =0x0224F2E0
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [r3, #0]
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, r2, #0
	bl sub_02020990
	ldr r0, _0224EA20 ; =0x00000241
	add sp, #0xc
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #0xc
	pop {r4, r5, pc}
_0224E98C:
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x24]
	bl sub_020203C0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020203B8
	ldr r0, [r4, #0x24]
	bl sub_020203D4
	add r0, r5, #0
	bl ov7_0224EB14
	ldr r0, _0224EA28 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224E9C0
	add sp, #0xc
	mov r0, #0x13
	pop {r4, r5, pc}
_0224E9C0:
	add r1, r5, #0
	ldr r0, [r4, #8]
	add r1, #0x18
	mov r2, #3
	bl sub_0205D8F4
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x18
	bl sub_0205D944
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x18
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	mov r0, #0xd
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224EA20: .word 0x00000241
_0224EA24: .word 0x0224F2E0
_0224EA28: .word 0x00000245
	thumb_func_end ov7_0224E950

	thumb_func_start ov7_0224EA2C
ov7_0224EA2C: ; 0x0224EA2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224EA42
	mov r0, #0xd
	pop {r4, pc}
_0224EA42:
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	bl ov7_0224D040
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov7_0224EA2C

	thumb_func_start ov7_0224EA54
ov7_0224EA54: ; 0x0224EA54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224EACC ; =0x00000245
	add r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224EA70
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x1f
	bl sub_0200B1EC
	b _0224EA7C
_0224EA70:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B1EC
_0224EA7C:
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x18
	mov r2, #3
	bl sub_0205D8F4
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x18
	bl sub_0205D944
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x18
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224EACC: .word 0x00000245
	thumb_func_end ov7_0224EA54

	thumb_func_start ov7_0224EAD0
ov7_0224EAD0: ; 0x0224EAD0
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224EB0C ; =0x0224F2EC
	add r5, r0, #0
	add r0, #0x94
	mov r2, #4
	mov r3, #0xb
	bl ov5_021D2F14
	add r7, r5, #0
	ldr r4, _0224EB10 ; =0x0224F358
	mov r6, #0
	add r7, #0x94
_0224EAE8:
	add r0, r7, #0
	add r1, r4, #0
	bl ov5_021D3104
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r6, #4
	blo _0224EAE8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EB0C: .word 0x0224F2EC
_0224EB10: .word 0x0224F358
	thumb_func_end ov7_0224EAD0

	thumb_func_start ov7_0224EB14
ov7_0224EB14: ; 0x0224EB14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x7e
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0224EB20:
	ldr r0, [r5, r6]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _0224EB20
	add r7, #0x94
	add r0, r7, #0
	bl ov5_021D30A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_0224EB14

	thumb_func_start ov7_0224EB38
ov7_0224EB38: ; 0x0224EB38
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0224EB5E
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb1
	mov r2, #8
	bl sub_0200D494
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb1
	mov r2, #0x84
	bl sub_0200D494
	pop {r4, pc}
_0224EB5E:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x6c
	bl sub_0200D494
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x84
	bl sub_0200D494
	pop {r4, pc}
	thumb_func_end ov7_0224EB38

	thumb_func_start ov7_0224EB7C
ov7_0224EB7C: ; 0x0224EB7C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0224EC0C ; =0x00000245
	add r6, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0224EB9E
	cmp r1, #3
	beq _0224EB9E
	sub r0, #0x41
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224EB9E:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02009DC8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	mov r2, #0x10
	bl sub_02009968
	add r0, r5, #0
	bl sub_0200A4C0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02009DC8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	mov r2, #0x10
	bl sub_020099D4
	add r0, r5, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0224EC0C: .word 0x00000245
	thumb_func_end ov7_0224EB7C

	thumb_func_start ov7_0224EC10
ov7_0224EC10: ; 0x0224EC10
	mov r2, #2
	lsl r2, r2, #8
	ldr r3, _0224EC1C ; =sub_0200D414
	ldr r0, [r0, r2]
	bx r3
	nop
_0224EC1C: .word sub_0200D414
	thumb_func_end ov7_0224EC10

	thumb_func_start ov7_0224EC20
ov7_0224EC20: ; 0x0224EC20
	push {r4, lr}
	mov r0, #0
	add r4, r1, #0
	bl ov5_021D1744
	ldr r0, _0224EC34 ; =0x00000233
	mov r1, #0xf
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_0224EC34: .word 0x00000233
	thumb_func_end ov7_0224EC20

	thumb_func_start ov7_0224EC38
ov7_0224EC38: ; 0x0224EC38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224EC8E
	add r0, r6, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	bl ov7_0224D21C
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	ldr r1, _0224EC90 ; =0x0224F49C
	mov r2, #0xb
	bl sub_0207D824
	add r3, r5, #0
	str r0, [r4, #4]
	add r3, #0x98
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	mov r2, #2
	bl sub_0207CB2C
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_0203D1E4
	ldr r1, _0224EC94 ; =0x0209AC15
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050924
	ldr r0, _0224EC98 ; =0x00000233
	mov r1, #0x10
	strb r1, [r4, r0]
_0224EC8E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224EC90: .word 0x0224F49C
_0224EC94: .word 0x0209AC15
_0224EC98: .word 0x00000233
	thumb_func_end ov7_0224EC38

	thumb_func_start ov7_0224EC9C
ov7_0224EC9C: ; 0x0224EC9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _0224ECAE
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0224ECAE:
	add r1, r5, #0
	ldr r0, [r4, #8]
	add r1, #0x18
	mov r2, #3
	bl sub_0205D8F4
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x18
	bl sub_0205D944
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x18
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224EC9C
	; 0x0224ED0C

	.incbin "data/overlay7.bin"
