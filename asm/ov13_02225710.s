	.include "macros/function.inc"
	.include "include/ov13_02225710.inc"

	

	.text


	thumb_func_start ov13_02225710
ov13_02225710: ; 0x02225710
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x7b
	lsl r0, r0, #2
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xab
	lsl r0, r0, #2
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0xdb
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0xc
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259D0 ; =0x0000042C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x12
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259D4 ; =0x000004EC
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0
	bl ov13_02225AF0
	ldr r0, _022259D8 ; =0x000005AC
	mov r2, #0x10
	str r2, [sp]
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	str r3, [sp, #4]
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259DC ; =0x0000066C
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0xc
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _022259E0 ; =0x0000072C
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x12
	bl ov13_02225AF0
	mov r0, #0xd
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022259E4 ; =0x000007EC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x27
	bl ov13_02225AF0
	mov r0, #0xd
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022259E8 ; =0x0000086E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x2c
	bl ov13_02225AF0
	mov r2, #0xd
	str r2, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x8f
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x27
	bl ov13_02225AF0
	mov r2, #0xd
	str r2, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _022259EC ; =0x00000972
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x2c
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022259F0 ; =0x000009F4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x31
	bl ov13_02225AF0
	ldr r0, _022259F4 ; =0x00000A26
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x31
	str r2, [sp, #4]
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022259F8 ; =0x00000A58
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x31
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022259FC ; =0x00000A8A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x31
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A00 ; =0x00000ABC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x36
	bl ov13_02225AF0
	ldr r0, _02225A04 ; =0x00000AEE
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x36
	str r2, [sp, #4]
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xb2
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0xa
	mov r3, #0x36
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A08 ; =0x00000B52
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x36
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A0C ; =0x00000B84
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x18
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A10 ; =0x00000BB6
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x1d
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A14 ; =0x00000BE8
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x22
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02225A18 ; =0x00000C1A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x27
	bl ov13_02225AF0
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x6d
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x18
	bl ov13_02225AF0
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _02225A1C ; =0x00001C44
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x1d
	bl ov13_02225AF0
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _02225A20 ; =0x00001D48
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x22
	bl ov13_02225AF0
	mov r0, #9
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02225A24 ; =0x00001E4C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x31
	bl ov13_02225AF0
	mov r0, #9
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02225A28 ; =0x00001E94
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x35
	bl ov13_02225AF0
	mov r0, #9
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02225A2C ; =0x00001EDC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x39
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02225A30 ; =0x00001F24
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x3b
	bl ov13_02225AF0
	mov r2, #5
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02225A34 ; =0x00001F38
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x3b
	bl ov13_02225AF0
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02225A38 ; =0x00001F4C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x3b
	bl ov13_02225AF0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022259D0: .word 0x0000042C
_022259D4: .word 0x000004EC
_022259D8: .word 0x000005AC
_022259DC: .word 0x0000066C
_022259E0: .word 0x0000072C
_022259E4: .word 0x000007EC
_022259E8: .word 0x0000086E
_022259EC: .word 0x00000972
_022259F0: .word 0x000009F4
_022259F4: .word 0x00000A26
_022259F8: .word 0x00000A58
_022259FC: .word 0x00000A8A
_02225A00: .word 0x00000ABC
_02225A04: .word 0x00000AEE
_02225A08: .word 0x00000B52
_02225A0C: .word 0x00000B84
_02225A10: .word 0x00000BB6
_02225A14: .word 0x00000BE8
_02225A18: .word 0x00000C1A
_02225A1C: .word 0x00001C44
_02225A20: .word 0x00001D48
_02225A24: .word 0x00001E4C
_02225A28: .word 0x00001E94
_02225A2C: .word 0x00001EDC
_02225A30: .word 0x00001F24
_02225A34: .word 0x00001F38
_02225A38: .word 0x00001F4C
	thumb_func_end ov13_02225710

	thumb_func_start ov13_02225A3C
ov13_02225A3C: ; 0x02225A3C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldr r0, _02225AE4 ; =0x00000C4C
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov13_02225AF0
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _02225AE8 ; =0x00001048
	mov r3, #0x11
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov13_02225AF0
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldr r0, _02225AEC ; =0x00001444
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x22
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x61
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x33
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x19
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x33
	bl ov13_02225AF0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x67
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x39
	bl ov13_02225AF0
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x6a
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x39
	bl ov13_02225AF0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02225AE4: .word 0x00000C4C
_02225AE8: .word 0x00001048
_02225AEC: .word 0x00001444
	thumb_func_end ov13_02225A3C

	thumb_func_start ov13_02225AF0
ov13_02225AF0: ; 0x02225AF0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, sp, #8
	mov lr, r3
	ldrb r3, [r0, #0x14]
	mov r6, #0
	mov ip, r3
	cmp r3, #0
	ble _02225B3C
	ldrb r3, [r0, #0x10]
	lsl r2, r2, #1
	add r7, r1, r2
_02225B08:
	mov r2, #0
	cmp r3, #0
	ble _02225B30
	mov r0, lr
	add r0, r0, r6
	lsl r0, r0, #6
	add r5, r7, r0
	add r0, r6, #0
	mul r0, r3
	lsl r1, r0, #1
	ldr r0, [sp]
	add r4, r0, r1
_02225B20:
	lsl r1, r2, #1
	ldrh r0, [r5, r1]
	strh r0, [r4, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r3
	blt _02225B20
_02225B30:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, ip
	cmp r6, r0
	blt _02225B08
_02225B3C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02225AF0

	thumb_func_start ov13_02225B40
ov13_02225B40: ; 0x02225B40
	cmp r1, #0x21
	bhi _02225C26
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225B50: ; jump table
	.short _02225B94 - _02225B50 - 2 ; case 0
	.short _02225B94 - _02225B50 - 2 ; case 1
	.short _02225B94 - _02225B50 - 2 ; case 2
	.short _02225B94 - _02225B50 - 2 ; case 3
	.short _02225B94 - _02225B50 - 2 ; case 4
	.short _02225B94 - _02225B50 - 2 ; case 5
	.short _02225BB2 - _02225B50 - 2 ; case 6
	.short _02225BBE - _02225B50 - 2 ; case 7
	.short _02225BCC - _02225B50 - 2 ; case 8
	.short _02225BCC - _02225B50 - 2 ; case 9
	.short _02225BCC - _02225B50 - 2 ; case 10
	.short _02225BCC - _02225B50 - 2 ; case 11
	.short _02225BD8 - _02225B50 - 2 ; case 12
	.short _02225BE4 - _02225B50 - 2 ; case 13
	.short _02225BF0 - _02225B50 - 2 ; case 14
	.short _02225BF0 - _02225B50 - 2 ; case 15
	.short _02225BF0 - _02225B50 - 2 ; case 16
	.short _02225BF0 - _02225B50 - 2 ; case 17
	.short _02225C0E - _02225B50 - 2 ; case 18
	.short _02225BF0 - _02225B50 - 2 ; case 19
	.short _02225BF0 - _02225B50 - 2 ; case 20
	.short _02225BF0 - _02225B50 - 2 ; case 21
	.short _02225BF0 - _02225B50 - 2 ; case 22
	.short _02225BF0 - _02225B50 - 2 ; case 23
	.short _02225BF0 - _02225B50 - 2 ; case 24
	.short _02225BF0 - _02225B50 - 2 ; case 25
	.short _02225BF0 - _02225B50 - 2 ; case 26
	.short _02225BF0 - _02225B50 - 2 ; case 27
	.short _02225BFE - _02225B50 - 2 ; case 28
	.short _02225BFE - _02225B50 - 2 ; case 29
	.short _02225C1A - _02225B50 - 2 ; case 30
	.short _02225C1A - _02225B50 - 2 ; case 31
	.short _02225C1A - _02225B50 - 2 ; case 32
	.short _02225C1A - _02225B50 - 2 ; case 33
_02225B94:
	cmp r3, #0
	bne _02225BA6
	mov r1, #0x7b
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BA6:
	ldr r1, _02225C2C ; =0x000004EC
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BB2:
	ldr r1, _02225C30 ; =0x00000B84
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BBE:
	ldr r1, _02225C34 ; =0x00000C4C
	add r1, r0, r1
	mov r0, #0xff
	lsl r0, r0, #2
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BCC:
	ldr r1, _02225C38 ; =0x000007EC
	add r1, r0, r1
	mov r0, #0x82
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BD8:
	ldr r1, _02225C3C ; =0x000009F4
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BE4:
	ldr r1, _02225C40 ; =0x00000ABC
	add r1, r0, r1
	mov r0, #0x32
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BF0:
	mov r1, #0x61
	lsl r1, r1, #6
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225BFE:
	mov r1, #0x6d
	lsl r1, r1, #6
	add r1, r0, r1
	lsl r0, r2, #6
	add r0, r2, r0
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
_02225C0E:
	ldr r1, _02225C44 ; =0x00001E4C
	add r1, r0, r1
	mov r0, #0x48
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225C1A:
	ldr r1, _02225C48 ; =0x00001F24
	add r1, r0, r1
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
_02225C26:
	mov r0, #0
	bx lr
	nop
_02225C2C: .word 0x000004EC
_02225C30: .word 0x00000B84
_02225C34: .word 0x00000C4C
_02225C38: .word 0x000007EC
_02225C3C: .word 0x000009F4
_02225C40: .word 0x00000ABC
_02225C44: .word 0x00001E4C
_02225C48: .word 0x00001F24
	thumb_func_end ov13_02225B40

	thumb_func_start ov13_02225C4C
ov13_02225C4C: ; 0x02225C4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x10
	add r4, r1, #0
	ldrb r3, [r3, #0x10]
	add r1, r7, #0
	str r0, [sp]
	bl ov13_02225B40
	add r1, r0, #0
	ldr r2, _02225D80 ; =0x02229926
	lsl r0, r7, #2
	ldrb r6, [r2, r0]
	ldr r2, _02225D84 ; =0x02229927
	ldrb r0, [r2, r0]
	add r5, r6, #0
	mul r5, r0
	add r0, r4, #0
	lsl r2, r5, #1
	bl memcpy
	cmp r7, #5
	bgt _02225C9A
	cmp r7, #0
	blt _02225D7C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225C8E: ; jump table
	.short _02225CA2 - _02225C8E - 2 ; case 0
	.short _02225CA2 - _02225C8E - 2 ; case 1
	.short _02225CA2 - _02225C8E - 2 ; case 2
	.short _02225CA2 - _02225C8E - 2 ; case 3
	.short _02225CA2 - _02225C8E - 2 ; case 4
	.short _02225CA2 - _02225C8E - 2 ; case 5
_02225C9A:
	cmp r7, #0x1b
	beq _02225D5C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225CA2:
	mov r0, #0x50
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _02225D7C
	ldrb r1, [r0, #0x1b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _02225D02
	lsl r2, r6, #1
	add r0, r2, #5
	lsl r0, r0, #1
	ldrh r1, [r4, r0]
	add r0, sp, #4
	strh r1, [r0]
	add r1, r6, r2
	add r1, r1, #5
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	strh r1, [r0, #2]
	mov r1, #0
	add r0, sp, #4
_02225CD4:
	add r5, r1, #2
	lsl r3, r1, #1
	add r7, r5, #0
	mul r7, r6
	lsl r5, r7, #1
	ldrh r3, [r0, r3]
	mov r2, #0
	add r5, r4, r5
_02225CE4:
	lsl r7, r2, #1
	add r2, r2, #1
	lsl r2, r2, #0x18
	add r7, r5, r7
	lsr r2, r2, #0x18
	strh r3, [r7, #0xc]
	cmp r2, #9
	blo _02225CE4
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #2
	blo _02225CD4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225D02:
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	bne _02225D2C
	mov r1, #0
	cmp r5, #0
	ble _02225D7C
	mov r3, #2
	ldr r2, _02225D88 ; =0x00000FFF
	lsl r3, r3, #0xc
_02225D14:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02225D14
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225D2C:
	lsl r1, r7, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov13_022219AC
	cmp r0, #1
	bne _02225D7C
	mov r1, #0
	cmp r5, #0
	ble _02225D7C
	ldr r2, _02225D88 ; =0x00000FFF
	add r3, r2, #1
_02225D44:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02225D44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02225D5C:
	mov r1, #0
	cmp r5, #0
	ble _02225D7C
	mov r3, #0xa
	ldr r2, _02225D88 ; =0x00000FFF
	lsl r3, r3, #0xc
_02225D68:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02225D68
_02225D7C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225D80: .word 0x02229926
_02225D84: .word 0x02229927
_02225D88: .word 0x00000FFF
	thumb_func_end ov13_02225C4C

	thumb_func_start ov13_02225D8C
ov13_02225D8C: ; 0x02225D8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	lsl r4, r0, #2
	ldr r0, _02225DF8 ; =0x02229927
	ldrb r7, [r0, r4]
	ldr r0, _02225DFC ; =0x02229926
	ldrb r6, [r0, r4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	mul r1, r7
	ldr r0, [r0, #0xc]
	lsl r1, r1, #1
	bl sub_02018144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	bl ov13_02225C4C
	ldr r0, _02225E00 ; =0x02229925
	ldr r3, _02225E04 ; =0x02229924
	ldrb r0, [r0, r4]
	ldrb r3, [r3, r4]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0x79
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_020198C0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02225DF8: .word 0x02229927
_02225DFC: .word 0x02229926
_02225E00: .word 0x02229925
_02225E04: .word 0x02229924
	thumb_func_end ov13_02225D8C

	thumb_func_start ov13_02225E08
ov13_02225E08: ; 0x02225E08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02225EA8 ; =0x0222989C
	lsl r3, r1, #2
	ldr r6, [r0, r3]
	cmp r6, #0
	beq _02225EA6
	cmp r1, #5
	bhi _02225E22
	ldr r0, _02225EAC ; =0x0222988C
	ldrb r0, [r0, r2]
	str r0, [sp]
	b _02225E28
_02225E22:
	ldr r0, _02225EB0 ; =0x0222987C
	ldrb r0, [r0, r2]
	str r0, [sp]
_02225E28:
	cmp r2, #0
	beq _02225E36
	cmp r2, #1
	beq _02225E3A
	cmp r2, #2
	beq _02225E3E
	b _02225E40
_02225E36:
	mov r7, #1
	b _02225E40
_02225E3A:
	mov r7, #0
	b _02225E40
_02225E3E:
	mov r7, #1
_02225E40:
	cmp r1, #0xe
	blo _02225E74
	cmp r1, #0x11
	bhi _02225E74
	ldr r1, _02225EB4 ; =0x00002070
	ldr r2, [sp]
	ldr r0, [r5, r1]
	add r1, r1, #5
	ldrb r1, [r5, r1]
	mov r3, #0
	ldrb r1, [r6, r1]
	lsl r1, r1, #4
	add r0, r0, r1
	add r1, r7, #0
	bl sub_0201C04C
	ldr r1, _02225EB4 ; =0x00002070
	ldr r0, [r5, r1]
	add r1, r1, #5
	ldrb r1, [r5, r1]
	ldrb r1, [r6, r1]
	lsl r1, r1, #4
	add r0, r0, r1
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
_02225E74:
	mov r4, #0
_02225E76:
	ldrb r2, [r6, r4]
	cmp r2, #0xff
	beq _02225EA6
	ldr r0, _02225EB4 ; =0x00002070
	mov r3, #0
	ldr r1, [r5, r0]
	lsl r0, r2, #4
	add r0, r1, r0
	ldr r2, [sp]
	add r1, r7, #0
	bl sub_0201C04C
	ldr r0, _02225EB4 ; =0x00002070
	ldr r1, [r5, r0]
	ldrb r0, [r6, r4]
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _02225E76
_02225EA6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225EA8: .word 0x0222989C
_02225EAC: .word 0x0222988C
_02225EB0: .word 0x0222987C
_02225EB4: .word 0x00002070
	thumb_func_end ov13_02225E08

	thumb_func_start ov13_02225EB8
ov13_02225EB8: ; 0x02225EB8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x1b
	bhi _02225FBC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225ECE: ; jump table
	.short _02225F06 - _02225ECE - 2 ; case 0
	.short _02225F06 - _02225ECE - 2 ; case 1
	.short _02225F06 - _02225ECE - 2 ; case 2
	.short _02225F06 - _02225ECE - 2 ; case 3
	.short _02225F06 - _02225ECE - 2 ; case 4
	.short _02225F06 - _02225ECE - 2 ; case 5
	.short _02225FBC - _02225ECE - 2 ; case 6
	.short _02225F44 - _02225ECE - 2 ; case 7
	.short _02225FBC - _02225ECE - 2 ; case 8
	.short _02225FBC - _02225ECE - 2 ; case 9
	.short _02225FBC - _02225ECE - 2 ; case 10
	.short _02225FBC - _02225ECE - 2 ; case 11
	.short _02225FBC - _02225ECE - 2 ; case 12
	.short _02225FBC - _02225ECE - 2 ; case 13
	.short _02225F76 - _02225ECE - 2 ; case 14
	.short _02225F76 - _02225ECE - 2 ; case 15
	.short _02225F76 - _02225ECE - 2 ; case 16
	.short _02225F76 - _02225ECE - 2 ; case 17
	.short _02225FBC - _02225ECE - 2 ; case 18
	.short _02225F8E - _02225ECE - 2 ; case 19
	.short _02225F8E - _02225ECE - 2 ; case 20
	.short _02225F8E - _02225ECE - 2 ; case 21
	.short _02225F8E - _02225ECE - 2 ; case 22
	.short _02225FA6 - _02225ECE - 2 ; case 23
	.short _02225FA6 - _02225ECE - 2 ; case 24
	.short _02225FA6 - _02225ECE - 2 ; case 25
	.short _02225FA6 - _02225ECE - 2 ; case 26
	.short _02225FA6 - _02225ECE - 2 ; case 27
_02225F06:
	ldr r0, _02225FC0 ; =0x02229896
	lsl r1, r2, #1
	ldrsh r6, [r0, r1]
	add r0, r5, #0
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	add r2, r6, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	add r2, r6, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	add r0, r5, #7
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	add r2, r6, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225F44:
	ldr r0, _02225FC8 ; =0x02229890
	lsl r1, r2, #1
	ldrsh r5, [r0, r1]
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0x11]
	add r2, r5, #0
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	ldr r0, [r4, #0]
	add r2, r5, #0
	ldrb r0, [r0, #0x11]
	add r0, r0, #7
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225F76:
	add r0, r5, #7
	lsl r0, r0, #2
	lsl r3, r2, #1
	ldr r2, _02225FC8 ; =0x02229890
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldrsh r2, [r2, r3]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225F8E:
	add r0, r5, #2
	lsl r0, r0, #2
	lsl r3, r2, #1
	ldr r2, _02225FC8 ; =0x02229890
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldrsh r2, [r2, r3]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
	pop {r4, r5, r6, pc}
_02225FA6:
	sub r0, r5, #2
	lsl r0, r0, #2
	lsl r3, r2, #1
	ldr r2, _02225FC8 ; =0x02229890
	add r1, r4, r0
	ldr r0, _02225FC4 ; =0x00001FB8
	ldrsh r2, [r2, r3]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D5DC
_02225FBC:
	pop {r4, r5, r6, pc}
	nop
_02225FC0: .word 0x02229896
_02225FC4: .word 0x00001FB8
_02225FC8: .word 0x02229890
	thumb_func_end ov13_02225EB8

	thumb_func_start ov13_02225FCC
ov13_02225FCC: ; 0x02225FCC
	push {r4, r5, r6, lr}
	ldr r3, _02226014 ; =0x00001FA3
	add r5, r0, #0
	ldrb r6, [r5, r3]
	mov r2, #0x70
	add r4, r1, #0
	bic r6, r2
	strb r6, [r5, r3]
	cmp r4, #5
	bhi _02225FF6
	bl ov13_022213F0
	cmp r0, #2
	bne _02225FF6
	ldr r1, _02226014 ; =0x00001FA3
	mov r0, #0x70
	ldrb r2, [r5, r1]
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	strb r0, [r5, r1]
_02225FF6:
	ldr r0, _02226018 ; =0x00001FA0
	mov r2, #0
	strb r2, [r5, r0]
	add r1, r0, #1
	strb r2, [r5, r1]
	add r1, r0, #2
	strb r4, [r5, r1]
	add r1, r0, #3
	ldrb r2, [r5, r1]
	mov r1, #0x80
	add r0, r0, #3
	orr r1, r2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02226014: .word 0x00001FA3
_02226018: .word 0x00001FA0
	thumb_func_end ov13_02225FCC

	thumb_func_start ov13_0222601C
ov13_0222601C: ; 0x0222601C
	push {r4, lr}
	ldr r2, _022260E0 ; =0x00001FA3
	add r4, r0, #0
	ldrb r3, [r4, r2]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1f
	beq _022260DC
	sub r1, r2, #3
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0222603C
	cmp r1, #1
	beq _02226070
	cmp r1, #2
	beq _022260A4
	pop {r4, pc}
_0222603C:
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	lsl r3, r3, #0x19
	mov r2, #1
	lsr r3, r3, #0x1d
	bl ov13_02225D8C
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #1
	bl ov13_02225E08
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #1
	bl ov13_02225EB8
	ldr r0, _022260E8 ; =0x00001FA1
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_02226070:
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	lsl r3, r3, #0x19
	mov r2, #2
	lsr r3, r3, #0x1d
	bl ov13_02225D8C
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #2
	bl ov13_02225E08
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #2
	bl ov13_02225EB8
	ldr r0, _022260E8 ; =0x00001FA1
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_022260A4:
	sub r1, r2, #1
	ldrb r1, [r4, r1]
	lsl r3, r3, #0x19
	mov r2, #0
	lsr r3, r3, #0x1d
	bl ov13_02225D8C
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0
	bl ov13_02225E08
	ldr r1, _022260E4 ; =0x00001FA2
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0
	bl ov13_02225EB8
	ldr r0, _022260E8 ; =0x00001FA1
	mov r1, #0
	strb r1, [r4, r0]
	add r1, r0, #2
	ldrb r2, [r4, r1]
	mov r1, #0x80
	add r0, r0, #2
	bic r2, r1
	strb r2, [r4, r0]
_022260DC:
	pop {r4, pc}
	nop
_022260E0: .word 0x00001FA3
_022260E4: .word 0x00001FA2
_022260E8: .word 0x00001FA1
	thumb_func_end ov13_0222601C

	thumb_func_start ov13_022260EC
ov13_022260EC: ; 0x022260EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #9
	bls _022260F6
	b _0222643E
_022260F6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02226102: ; jump table
	.short _02226116 - _02226102 - 2 ; case 0
	.short _0222618E - _02226102 - 2 ; case 1
	.short _022261EA - _02226102 - 2 ; case 2
	.short _0222623E - _02226102 - 2 ; case 3
	.short _022262DC - _02226102 - 2 ; case 4
	.short _02226328 - _02226102 - 2 ; case 5
	.short _02226380 - _02226102 - 2 ; case 6
	.short _022263E0 - _02226102 - 2 ; case 7
	.short _02226380 - _02226102 - 2 ; case 8
	.short _02226410 - _02226102 - 2 ; case 9
_02226116:
	mov r5, #0
	mov r6, #3
	mov r7, #1
_0222611C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_022213F0
	cmp r0, #0
	bne _02226138
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl ov13_02225D8C
	b _0222615E
_02226138:
	cmp r0, #1
	bne _0222614C
	lsl r1, r5, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	b _0222615E
_0222614C:
	cmp r0, #2
	bne _0222615E
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0
	mov r3, #1
	bl ov13_02225D8C
_0222615E:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _0222611C
	ldr r0, [r4, #0]
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	bne _02226180
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_02226180:
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_0222618E:
	mov r2, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mul r0, r1
	add r0, r4, r0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _022261D0
	add r0, r4, #0
	mov r1, #8
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022261D0:
	mov r2, #0
	add r0, r4, #0
	mov r1, #8
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xa
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022261EA:
	bl ov13_02226484
	cmp r0, #1
	bne _0222620C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xc
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xd
	add r3, r2, #0
	bl ov13_02225D8C
	b _02226224
_0222620C:
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
_02226224:
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xb
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_0222623E:
	bl ov13_02226484
	cmp r0, #1
	bne _02226260
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xc
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xd
	add r3, r2, #0
	bl ov13_02225D8C
	b _02226278
_02226260:
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #3
	mov r3, #0
	bl ov13_02225D8C
_02226278:
	mov r5, #0
	mov r7, #3
	mov r6, #0x50
_0222627E:
	ldr r0, [r4, #0]
	lsl r1, r5, #3
	ldrb r0, [r0, #0x11]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _022262A6
	add r1, r5, #0
	add r1, #0xe
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	b _022262B8
_022262A6:
	add r1, r5, #0
	add r1, #0xe
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl ov13_02225D8C
_022262B8:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _0222627E
	mov r2, #0
	add r0, r4, #0
	mov r1, #9
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022262DC:
	mov r2, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	mov r5, #0
	mov r6, #2
	add r7, r5, #0
_022262EC:
	ldr r0, [r4, #0]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, r5
	bne _0222630A
	add r1, r5, #0
	add r1, #0x1e
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl ov13_02225D8C
	b _0222631C
_0222630A:
	add r1, r5, #0
	add r1, #0x1e
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
_0222631C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _022262EC
	pop {r3, r4, r5, r6, r7, pc}
_02226328:
	mov r5, #0
	mov r7, #3
	mov r6, #0x50
_0222632E:
	ldr r0, [r4, #0]
	lsl r1, r5, #3
	ldrb r0, [r0, #0x11]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _02226356
	add r1, r5, #0
	add r1, #0x13
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	b _02226368
_02226356:
	add r1, r5, #0
	add r1, #0x13
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl ov13_02225D8C
_02226368:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _0222632E
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_02226380:
	mov r2, #0
	mov r1, #0x17
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x18
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x19
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x1a
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x1b
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, _02226440 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0222643E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x12
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_022263E0:
	mov r2, #0
	mov r1, #0x1c
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, _02226440 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0222643E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x12
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r3, r4, r5, r6, r7, pc}
_02226410:
	mov r2, #0
	mov r1, #0x1d
	add r3, r2, #0
	bl ov13_02225D8C
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl ov13_02225D8C
	ldr r0, _02226440 ; =0x00002077
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0222643E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x12
	add r3, r2, #0
	bl ov13_02225D8C
_0222643E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226440: .word 0x00002077
	thumb_func_end ov13_022260EC

	thumb_func_start ov13_02226444
ov13_02226444: ; 0x02226444
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #3
	bne _02226466
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	mov r1, #0x7e
	lsl r1, r1, #6
	ldr r0, [r2, r0]
	add r1, r2, r1
	mov r2, #1
	mov r3, #0xc0
	bl sub_02002FBC
	pop {r3, pc}
_02226466:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, _02226480 ; =0x00001F60
	ldr r0, [r2, r0]
	add r1, r2, r1
	mov r2, #1
	mov r3, #0xc0
	bl sub_02002FBC
	pop {r3, pc}
	nop
_02226480: .word 0x00001F60
	thumb_func_end ov13_02226444

	thumb_func_start ov13_02226484
ov13_02226484: ; 0x02226484
	push {r4, r5}
	mov r2, #0
	add r1, r2, #0
	mov r3, #0x50
_0222648C:
	add r4, r1, #0
	mul r4, r3
	add r5, r0, r4
	ldrh r4, [r5, #8]
	cmp r4, #0
	beq _022264A6
	ldrb r4, [r5, #0x1b]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x1f
	bne _022264A6
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
_022264A6:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #6
	blo _0222648C
	cmp r2, #2
	blo _022264B8
	mov r0, #1
	b _022264BA
_022264B8:
	mov r0, #0
_022264BA:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov13_02226484

	thumb_func_start ov13_022264C4
ov13_022264C4: ; 0x022264C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldrb r1, [r1, #0x11]
	bl ov13_022213F0
	cmp r0, #2
	bne _022264E4
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	mov r2, #0
	mov r3, #1
	bl ov13_02225D8C
	pop {r4, pc}
_022264E4:
	ldr r1, [r4, #0]
	mov r2, #0
	ldrb r1, [r1, #0x11]
	add r0, r4, #0
	add r3, r2, #0
	bl ov13_02225D8C
	pop {r4, pc}
	thumb_func_end ov13_022264C4

	.rodata


	.global Unk_ov13_02229820
Unk_ov13_02229820: ; 0x02229820
	.incbin "incbin/overlay13_rodata.bin", 0xB24, 0xB28 - 0xB24

	.global Unk_ov13_02229824
Unk_ov13_02229824: ; 0x02229824
	.incbin "incbin/overlay13_rodata.bin", 0xB28, 0xB2C - 0xB28

	.global Unk_ov13_02229828
Unk_ov13_02229828: ; 0x02229828
	.incbin "incbin/overlay13_rodata.bin", 0xB2C, 0xB30 - 0xB2C

	.global Unk_ov13_0222982C
Unk_ov13_0222982C: ; 0x0222982C
	.incbin "incbin/overlay13_rodata.bin", 0xB30, 0xB34 - 0xB30

	.global Unk_ov13_02229830
Unk_ov13_02229830: ; 0x02229830
	.incbin "incbin/overlay13_rodata.bin", 0xB34, 0xB38 - 0xB34

	.global Unk_ov13_02229834
Unk_ov13_02229834: ; 0x02229834
	.incbin "incbin/overlay13_rodata.bin", 0xB38, 0xB3C - 0xB38

	.global Unk_ov13_02229838
Unk_ov13_02229838: ; 0x02229838
	.incbin "incbin/overlay13_rodata.bin", 0xB3C, 0xB40 - 0xB3C

	.global Unk_ov13_0222983C
Unk_ov13_0222983C: ; 0x0222983C
	.incbin "incbin/overlay13_rodata.bin", 0xB40, 0xB44 - 0xB40

	.global Unk_ov13_02229840
Unk_ov13_02229840: ; 0x02229840
	.incbin "incbin/overlay13_rodata.bin", 0xB44, 0xB48 - 0xB44

	.global Unk_ov13_02229844
Unk_ov13_02229844: ; 0x02229844
	.incbin "incbin/overlay13_rodata.bin", 0xB48, 0xB4C - 0xB48

	.global Unk_ov13_02229848
Unk_ov13_02229848: ; 0x02229848
	.incbin "incbin/overlay13_rodata.bin", 0xB4C, 0xB50 - 0xB4C

	.global Unk_ov13_0222984C
Unk_ov13_0222984C: ; 0x0222984C
	.incbin "incbin/overlay13_rodata.bin", 0xB50, 0xB54 - 0xB50

	.global Unk_ov13_02229850
Unk_ov13_02229850: ; 0x02229850
	.incbin "incbin/overlay13_rodata.bin", 0xB54, 0xB58 - 0xB54

	.global Unk_ov13_02229854
Unk_ov13_02229854: ; 0x02229854
	.incbin "incbin/overlay13_rodata.bin", 0xB58, 0xB5C - 0xB58

	.global Unk_ov13_02229858
Unk_ov13_02229858: ; 0x02229858
	.incbin "incbin/overlay13_rodata.bin", 0xB5C, 0xB60 - 0xB5C

	.global Unk_ov13_0222985C
Unk_ov13_0222985C: ; 0x0222985C
	.incbin "incbin/overlay13_rodata.bin", 0xB60, 0xB64 - 0xB60

	.global Unk_ov13_02229860
Unk_ov13_02229860: ; 0x02229860
	.incbin "incbin/overlay13_rodata.bin", 0xB64, 0xB68 - 0xB64

	.global Unk_ov13_02229864
Unk_ov13_02229864: ; 0x02229864
	.incbin "incbin/overlay13_rodata.bin", 0xB68, 0xB6C - 0xB68

	.global Unk_ov13_02229868
Unk_ov13_02229868: ; 0x02229868
	.incbin "incbin/overlay13_rodata.bin", 0xB6C, 0xB70 - 0xB6C

	.global Unk_ov13_0222986C
Unk_ov13_0222986C: ; 0x0222986C
	.incbin "incbin/overlay13_rodata.bin", 0xB70, 0xB74 - 0xB70

	.global Unk_ov13_02229870
Unk_ov13_02229870: ; 0x02229870
	.incbin "incbin/overlay13_rodata.bin", 0xB74, 0xB78 - 0xB74

	.global Unk_ov13_02229874
Unk_ov13_02229874: ; 0x02229874
	.incbin "incbin/overlay13_rodata.bin", 0xB78, 0xB7C - 0xB78

	.global Unk_ov13_02229878
Unk_ov13_02229878: ; 0x02229878
	.incbin "incbin/overlay13_rodata.bin", 0xB7C, 0xB80 - 0xB7C

	.global Unk_ov13_0222987C
Unk_ov13_0222987C: ; 0x0222987C
	.incbin "incbin/overlay13_rodata.bin", 0xB80, 0xB84 - 0xB80

	.global Unk_ov13_02229880
Unk_ov13_02229880: ; 0x02229880
	.incbin "incbin/overlay13_rodata.bin", 0xB84, 0xB88 - 0xB84

	.global Unk_ov13_02229884
Unk_ov13_02229884: ; 0x02229884
	.incbin "incbin/overlay13_rodata.bin", 0xB88, 0xB8C - 0xB88

	.global Unk_ov13_02229888
Unk_ov13_02229888: ; 0x02229888
	.incbin "incbin/overlay13_rodata.bin", 0xB8C, 0xB90 - 0xB8C

	.global Unk_ov13_0222988C
Unk_ov13_0222988C: ; 0x0222988C
	.incbin "incbin/overlay13_rodata.bin", 0xB90, 0xB94 - 0xB90

	.global Unk_ov13_02229890
Unk_ov13_02229890: ; 0x02229890
	.incbin "incbin/overlay13_rodata.bin", 0xB94, 0xB9A - 0xB94

	.global Unk_ov13_02229896
Unk_ov13_02229896: ; 0x02229896
	.incbin "incbin/overlay13_rodata.bin", 0xB9A, 0xBA0 - 0xB9A

	.global Unk_ov13_0222989C
Unk_ov13_0222989C: ; 0x0222989C
	.incbin "incbin/overlay13_rodata.bin", 0xBA0, 0xC28 - 0xBA0

	.global Unk_ov13_02229924
Unk_ov13_02229924: ; 0x02229924
	.incbin "incbin/overlay13_rodata.bin", 0xC28, 0x88

