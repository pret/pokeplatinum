	.include "macros/function.inc"
	.include "include/ov7_02249960.inc"

	

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
	bl MI_CpuFill8
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

	.rodata


	.global Unk_ov7_0224ED0C
Unk_ov7_0224ED0C: ; 0x0224ED0C
	.incbin "incbin/overlay7_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov7_0224ED14
Unk_ov7_0224ED14: ; 0x0224ED14
	.incbin "incbin/overlay7_rodata.bin", 0x8, 0x28 - 0x8

	.global Unk_ov7_0224ED34
Unk_ov7_0224ED34: ; 0x0224ED34
	.incbin "incbin/overlay7_rodata.bin", 0x28, 0x48 - 0x28

	.global Unk_ov7_0224ED54
Unk_ov7_0224ED54: ; 0x0224ED54
	.incbin "incbin/overlay7_rodata.bin", 0x48, 0xCC - 0x48

	.global Unk_ov7_0224EDD8
Unk_ov7_0224EDD8: ; 0x0224EDD8
	.incbin "incbin/overlay7_rodata.bin", 0xCC, 0x150 - 0xCC

	.global Unk_ov7_0224EE5C
Unk_ov7_0224EE5C: ; 0x0224EE5C
	.incbin "incbin/overlay7_rodata.bin", 0x150, 0x1D4 - 0x150

	.global Unk_ov7_0224EEE0
Unk_ov7_0224EEE0: ; 0x0224EEE0
	.incbin "incbin/overlay7_rodata.bin", 0x1D4, 0x258 - 0x1D4

	.global Unk_ov7_0224EF64
Unk_ov7_0224EF64: ; 0x0224EF64
	.incbin "incbin/overlay7_rodata.bin", 0x258, 0x2DC - 0x258

	.global Unk_ov7_0224EFE8
Unk_ov7_0224EFE8: ; 0x0224EFE8
	.incbin "incbin/overlay7_rodata.bin", 0x2DC, 0x360 - 0x2DC

	.global Unk_ov7_0224F06C
Unk_ov7_0224F06C: ; 0x0224F06C
	.incbin "incbin/overlay7_rodata.bin", 0x360, 0x3E4 - 0x360

	.global Unk_ov7_0224F0F0
Unk_ov7_0224F0F0: ; 0x0224F0F0
	.incbin "incbin/overlay7_rodata.bin", 0x3E4, 0x84


	.bss


	.global Unk_ov7_0224F5A0
Unk_ov7_0224F5A0: ; 0x0224F5A0
	.space 0x4

