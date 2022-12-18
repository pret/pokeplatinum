	.include "macros/function.inc"
	.include "include/ov12_0221FC20.inc"

	

	.text


	thumb_func_start ov12_0221FC20
ov12_0221FC20: ; 0x0221FC20
	add r1, r0, #0
	add r1, #0x8d
	ldrb r1, [r1]
	cmp r1, #0
	bne _0221FC32
	ldr r1, _0221FC40 ; =ov12_0221FC44
	add r0, #0xbc
	str r1, [r0, #0]
	bx lr
_0221FC32:
	add r1, r0, #0
	add r1, #0x8d
	ldrb r1, [r1]
	add r0, #0x8d
	sub r1, r1, #1
	strb r1, [r0]
	bx lr
	; .align 2, 0
_0221FC40: .word ov12_0221FC44
	thumb_func_end ov12_0221FC20

	thumb_func_start ov12_0221FC44
ov12_0221FC44: ; 0x0221FC44
	push {r4, lr}
	add r4, r0, #0
_0221FC48:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0]
	bl ov12_02223164
	add r1, r0, #0
	add r0, r4, #0
	blx r1
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0221FC66
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _0221FC48
_0221FC66:
	pop {r4, pc}
	thumb_func_end ov12_0221FC44

	thumb_func_start ov12_0221FC68
ov12_0221FC68: ; 0x0221FC68
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #1
	beq _0221FC78
	cmp r0, #2
	beq _0221FC86
	b _0221FC94
_0221FC78:
	add r0, r1, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r1, #0x8e
	add r0, r0, #1
	strh r0, [r1]
	b _0221FC98
_0221FC86:
	add r0, r1, #0
	add r0, #0x90
	ldrh r0, [r0]
	add r1, #0x90
	add r0, r0, #1
	strh r0, [r1]
	b _0221FC98
_0221FC94:
	bl sub_02022974
_0221FC98:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0221FC68

	thumb_func_start ov12_0221FCA4
ov12_0221FCA4: ; 0x0221FCA4
	push {r4, lr}
	add r4, r2, #0
	cmp r0, #1
	beq _0221FCB2
	cmp r0, #2
	beq _0221FCC0
	b _0221FCCE
_0221FCB2:
	add r0, r1, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r1, #0x8e
	sub r0, r0, #1
	strh r0, [r1]
	b _0221FCD2
_0221FCC0:
	add r0, r1, #0
	add r0, #0x90
	ldrh r0, [r0]
	add r1, #0x90
	sub r0, r0, #1
	strh r0, [r1]
	b _0221FCD2
_0221FCCE:
	bl sub_02022974
_0221FCD2:
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0221FCA4

	thumb_func_start ov12_0221FCDC
ov12_0221FCDC: ; 0x0221FCDC
	push {r3, r4, r5, lr}
	mov r1, #0x6f
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _0221FCF8
	cmp r4, #0
	bne _0221FCF4
	bl sub_02022974
_0221FCF4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0221FCF8:
	mov r2, #0x6f
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	mov r1, #0x47
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1, #0]
	mov r0, #7
	add r1, r5, #0
	bl sub_02006C24
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x1b
	add r1, r5, #0
	bl sub_02006C24
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x15
	add r1, r5, #0
	bl sub_02006C24
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x16
	add r1, r5, #0
	bl sub_02006C24
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x17
	add r1, r5, #0
	bl sub_02006C24
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x18
	add r1, r5, #0
	bl sub_02006C24
	mov r2, #0x6e
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0221FD80
	bne _0221FD7C
	bl sub_02022974
_0221FD7C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0221FD80:
	mov r1, #0
	sub r2, #0x9c
	bl sub_020D5124
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x18]
	add r2, r4, #0
	add r3, r1, #0
_0221FD92:
	add r0, r2, #0
	add r0, #0xcc
	add r1, r1, #1
	add r2, r2, #4
	str r3, [r0, #0]
	cmp r1, #4
	blt _0221FD92
	mov r0, #0x59
	add r2, r4, #0
	mov r1, #0
	lsl r0, r0, #2
_0221FDA8:
	add r3, r3, #1
	str r1, [r2, r0]
	add r2, r2, #4
	cmp r3, #5
	blt _0221FDA8
	mov r0, #0x5e
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0221FCDC

	thumb_func_start ov12_0221FDC0
ov12_0221FDC0: ; 0x0221FDC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0221FDCE
	bl sub_02022974
_0221FDCE:
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0221FDC0

	thumb_func_start ov12_0221FDD4
ov12_0221FDD4: ; 0x0221FDD4
	push {r4, lr}
	add r4, r0, #0
	bne _0221FDDE
	bl sub_02022974
_0221FDDE:
	ldr r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0221FDD4

	thumb_func_start ov12_0221FDE4
ov12_0221FDE4: ; 0x0221FDE4
	push {r4, lr}
	add r4, r0, #0
	bne _0221FDEE
	bl sub_02022974
_0221FDEE:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0221FDE4

	thumb_func_start ov12_0221FDF4
ov12_0221FDF4: ; 0x0221FDF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov12_022201B4
	cmp r0, #0
	bne _0221FE04
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0221FE04:
	mov r6, #0x69
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0221FE0C:
	ldr r0, [r5, r6]
	bl sub_02006CA8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0221FE0C
	add r0, r7, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0221FDF4

	thumb_func_start ov12_0221FE30
ov12_0221FE30: ; 0x0221FE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl ov12_02220474
	add r0, r4, #0
	bl ov12_022201B4
	cmp r0, #0
	bne _0221FE50
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FE50:
	mov r3, #0
	mov r2, #1
	add r1, r3, #0
_0221FE56:
	add r0, r4, r3
	add r0, #0x6c
	strb r2, [r0]
	add r0, r4, r3
	add r0, #0x7c
	add r3, r3, #1
	strb r1, [r0]
	cmp r3, #0x10
	blt _0221FE56
	add r3, r4, #0
	mov r0, #0
_0221FE6C:
	add r2, r3, #0
	add r2, #0x94
	add r1, r1, #1
	add r3, r3, #4
	str r0, [r2, #0]
	cmp r1, #0xa
	blt _0221FE6C
	add r3, r4, #0
	mov r2, #0
_0221FE7E:
	str r2, [r3, #0x30]
	add r1, r3, #0
	str r2, [r3, #0x28]
	add r1, #0x2c
	strb r2, [r1]
	add r1, r3, #0
	add r1, #0x2d
	add r0, r0, #1
	add r3, #0xc
	strb r2, [r1]
	cmp r0, #3
	blt _0221FE7E
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r5]
	ldr r0, [r0, #0]
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r5, #1]
	ldr r0, [r0, #0]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #2]
	ldr r0, [r0, #0]
	strh r1, [r0, #2]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r5, #4]
	ldr r0, [r0, #0]
	str r1, [r0, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #8]
	ldr r0, [r0, #0]
	strh r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0xc]
	ldr r0, [r0, #0]
	strh r1, [r0, #0xa]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0]
	str r1, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0xa]
	ldr r0, [r0, #0]
	strh r1, [r0, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r5, #0x54]
	ldr r0, [r0, #0]
	strh r1, [r0, #0x12]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0x14]
	ldr r0, [r0, #0]
	strh r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0x16]
	ldr r0, [r0, #0]
	strh r1, [r0, #0x16]
	ldrh r0, [r5, #0xe]
	lsl r0, r0, #0x1e
	lsr r2, r0, #0x1f
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	mov r0, #0x46
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0221FF30
	bl sub_02022974
_0221FF30:
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r1, [r0, #4]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r7, r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x30]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xd4
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r1, r2, #0
	add r3, r0, #0
	mov ip, r3
_0221FF5E:
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5, #0]
	ldr r3, [r0, #0xc]
	add r5, r5, r1
	add r5, #0xb0
	str r3, [r5, #0]
	ldr r3, [sp, #4]
	add r5, r4, #0
	add r5, #0xc0
	add r6, r3, r2
	ldr r5, [r5, #0]
	ldrb r3, [r6, #0x1c]
	add r5, r5, r2
	add r5, #0xc0
	strb r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5, #0]
	ldr r3, [r0, #0x20]
	add r5, r5, r1
	add r5, #0xc4
	str r3, [r5, #0]
	add r5, r4, #0
	add r5, #0xc0
	mov r3, ip
	ldr r5, [r5, #0]
	ldrh r3, [r3, #0x34]
	add r5, r5, r7
	add r5, #0xd8
	strh r3, [r5]
	add r5, r4, #0
	add r3, r6, #0
	add r5, #0xc0
	add r3, #0x3c
	ldr r5, [r5, #0]
	ldrb r3, [r3]
	add r5, r5, r2
	add r5, #0xe0
	strb r3, [r5]
	add r3, r6, #0
	add r5, r4, #0
	add r5, #0xc0
	add r3, #0x40
	ldr r5, [r5, #0]
	ldrb r3, [r3]
	add r5, r5, r2
	add r5, #0xe4
	strb r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	add r6, #0x44
	ldr r5, [r5, #0]
	ldrb r3, [r6]
	add r5, r5, r2
	add r5, #0xe8
	strb r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5, #0]
	ldr r3, [r0, #0x48]
	add r5, r5, r1
	add r5, #0xec
	str r3, [r5, #0]
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5, #0]
	ldr r3, [r0, #0x58]
	add r5, r5, r1
	add r5, #0xfc
	str r3, [r5, #0]
	mov r3, ip
	add r3, r3, #2
	add r2, r2, #1
	add r0, r0, #4
	add r1, r1, #4
	add r7, r7, #2
	mov ip, r3
	cmp r2, #4
	blt _0221FF5E
	ldr r5, [sp, #4]
	mov r2, #0x61
	lsl r2, r2, #2
	add r5, #0x6c
	add r3, r4, r2
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #4]
	add r0, #0x84
	ldr r3, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r2, #0
	sub r0, #0x78
	str r3, [r1, r0]
	ldr r0, [sp, #4]
	add r0, #0x8c
	ldr r3, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r2, #0
	sub r0, #0x70
	str r3, [r1, r0]
	ldr r0, [sp, #4]
	add r0, #0x88
	ldr r3, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r2, #0
	sub r0, #0x74
	str r3, [r1, r0]
	ldr r0, [sp]
	sub r2, #0x62
	cmp r0, r2
	bne _0222007E
	ldr r5, _02220154 ; =0x02238680
	add r3, sp, #8
	mov r2, #6
_02220058:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02220058
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x12]
	cmp r0, #0x18
	blo _02220076
	mov r0, #0xa1
	str r0, [sp]
	b _0222007E
_02220076:
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	str r0, [sp]
_0222007E:
	ldr r0, [sp]
	cmp r0, #0
	beq _0222008A
	ldr r1, _02220158 ; =0x000001D3
	cmp r0, r1
	ble _0222008E
_0222008A:
	mov r0, #1
	str r0, [sp]
_0222008E:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x68]
	str r0, [r4, #4]
	ldr r1, [sp]
	ldr r2, [r4, #0]
	bl sub_02006AC0
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _022200AE
	bne _022200A8
	bl sub_02022974
_022200A8:
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022200AE:
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0201A008
	mov r1, #0x1a
	lsl r1, r1, #4
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0201A008
	ldr r1, _0222015C ; =0x000001A1
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0201A008
	ldr r1, _02220160 ; =0x000001A2
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0201A008
	ldr r1, _02220164 ; =0x000001A3
	mov r3, #0
	strb r0, [r4, r1]
	add r2, r4, #0
	add r1, r3, #0
_022200F8:
	add r0, r2, #0
	add r0, #0xdc
	add r3, r3, #1
	add r2, r2, #4
	str r1, [r0, #0]
	cmp r3, #0xa
	blt _022200F8
	mov r2, #0x4f
	lsl r2, r2, #2
	add r3, r2, #0
	add r5, r4, #0
	mov r0, #0
	add r3, #0x14
_02220112:
	str r0, [r5, r2]
	str r0, [r5, r3]
	add r1, r1, #1
	add r5, r5, #4
	cmp r1, #5
	blt _02220112
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r1, r4, #0
	ldr r2, _02220168 ; =ov12_0221FC44
	add r1, #0xbc
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r4, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02220144
	mov r0, #0x67
	mov r1, #7
	lsl r0, r0, #2
	b _0222014A
_02220144:
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x9d
_0222014A:
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r4, #0x10]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02220154: .word 0x02238680
_02220158: .word 0x000001D3
_0222015C: .word 0x000001A1
_02220160: .word 0x000001A2
_02220164: .word 0x000001A3
_02220168: .word ov12_0221FC44
	thumb_func_end ov12_0221FE30

	thumb_func_start ov12_0222016C
ov12_0222016C: ; 0x0222016C
	push {r4, lr}
	add r4, r0, #0
	bl ov12_022201B4
	cmp r0, #0
	bne _0222017C
	mov r0, #0
	pop {r4, pc}
_0222017C:
	add r0, r4, #0
	add r4, #0xbc
	ldr r1, [r4, #0]
	blx r1
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_0222016C

	thumb_func_start ov12_02220188
ov12_02220188: ; 0x02220188
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _02220192
	mov r0, #1
	bx lr
_02220192:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220188

	thumb_func_start ov12_02220198
ov12_02220198: ; 0x02220198
	push {r3, lr}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022201AA
	bne _022201A6
	bl sub_02022974
_022201A6:
	mov r0, #0
	pop {r3, pc}
_022201AA:
	bl sub_020181C4
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02220198

	thumb_func_start ov12_022201B4
ov12_022201B4: ; 0x022201B4
	cmp r0, #0
	bne _022201BC
	mov r0, #0
	bx lr
_022201BC:
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _022201C6
	mov r0, #1
	bx lr
_022201C6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022201B4

	thumb_func_start ov12_022201CC
ov12_022201CC: ; 0x022201CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r0, #1
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ov12_0221FC68
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_022201CC

	thumb_func_start ov12_022201E8
ov12_022201E8: ; 0x022201E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02220200 ; =0x0000044C
	add r4, r1, #0
	add r3, r2, #0
	str r0, [sp]
	mov r0, #1
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0221FC68
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02220200: .word 0x0000044C
	thumb_func_end ov12_022201E8

	thumb_func_start ov12_02220204
ov12_02220204: ; 0x02220204
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r0, #2
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ov12_0221FC68
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_02220204

	thumb_func_start ov12_02220220
ov12_02220220: ; 0x02220220
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _0222022C ; =ov12_0221FCA4
	mov r0, #1
	bx r3
	; .align 2, 0
_0222022C: .word ov12_0221FCA4
	thumb_func_end ov12_02220220

	thumb_func_start ov12_02220230
ov12_02220230: ; 0x02220230
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _0222023C ; =ov12_0221FCA4
	mov r0, #2
	bx r3
	; .align 2, 0
_0222023C: .word ov12_0221FCA4
	thumb_func_end ov12_02220230

	thumb_func_start ov12_02220240
ov12_02220240: ; 0x02220240
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x14]
	bx lr
	thumb_func_end ov12_02220240

	thumb_func_start ov12_02220248
ov12_02220248: ; 0x02220248
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x16]
	bx lr
	thumb_func_end ov12_02220248

	thumb_func_start ov12_02220250
ov12_02220250: ; 0x02220250
	add r0, #0xc0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x18]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220250

	thumb_func_start ov12_02220260
ov12_02220260: ; 0x02220260
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end ov12_02220260

	thumb_func_start ov12_0222026C
ov12_0222026C: ; 0x0222026C
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov12_0222026C

	thumb_func_start ov12_02220278
ov12_02220278: ; 0x02220278
	add r0, #0xc4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220278

	thumb_func_start ov12_02220280
ov12_02220280: ; 0x02220280
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xa
	blt _0222028E
	bl sub_02022974
_0222028E:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x94
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02220280

	thumb_func_start ov12_02220298
ov12_02220298: ; 0x02220298
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _022202A6
	bl sub_02022974
_022202A6:
	cmp r5, #0
	bne _022202AE
	bl sub_02022974
_022202AE:
	add r5, #0xdc
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _022202BC
	bl sub_02022974
_022202BC:
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02220298

	thumb_func_start ov12_022202C0
ov12_022202C0: ; 0x022202C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #5
	blt _022202CE
	bl sub_02022974
_022202CE:
	cmp r5, #0
	bne _022202D6
	bl sub_02022974
_022202D6:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r5, r5, r0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _022202E8
	bl sub_02022974
_022202E8:
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022202C0

	thumb_func_start ov12_022202EC
ov12_022202EC: ; 0x022202EC
	push {r4, lr}
	add r4, r0, #0
	bne _022202F6
	bl sub_02022974
_022202F6:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022202EC

	thumb_func_start ov12_02220300
ov12_02220300: ; 0x02220300
	add r0, #0xcc
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220300

	thumb_func_start ov12_02220308
ov12_02220308: ; 0x02220308
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220308

	thumb_func_start ov12_02220314
ov12_02220314: ; 0x02220314
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	bne _0222032C
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222032C:
	mov r1, #0
	mov r2, #0x3c
	bl sub_020D5124
	add r0, r5, #0
	add r0, #0x90
	ldrh r0, [r0]
	add r5, #0x90
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02220314

	thumb_func_start ov12_02220344
ov12_02220344: ; 0x02220344
	ldr r3, _02220350 ; =sub_0200D9E8
	str r0, [r1, #0x38]
	ldr r0, _02220354 ; =ov12_0222035C
	ldr r2, _02220358 ; =0x0000044C
	bx r3
	nop
_02220350: .word sub_0200D9E8
_02220354: .word ov12_0222035C
_02220358: .word 0x0000044C
	thumb_func_end ov12_02220344

	thumb_func_start ov12_0222035C
ov12_0222035C: ; 0x0222035C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02220398 ; =0x0223862C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _02220396
	ldr r0, [r4, #0x38]
	add r1, r0, #0
	add r1, #0x90
	ldrh r1, [r1]
	cmp r1, #0
	beq _0222038A
	add r1, r0, #0
	add r1, #0x90
	ldrh r1, [r1]
	add r0, #0x90
	sub r1, r1, #1
	strh r1, [r0]
_0222038A:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02220396:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02220398: .word 0x0223862C
	thumb_func_end ov12_0222035C

	thumb_func_start ov12_0222039C
ov12_0222039C: ; 0x0222039C
	mov r0, #0
	bx lr
	thumb_func_end ov12_0222039C

	thumb_func_start ov12_022203A0
ov12_022203A0: ; 0x022203A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r1, [r5, #4]
	add r0, r1, #1
	strb r0, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r1, r0
	bhs _022203B4
	mov r0, #1
	pop {r3, r4, r5, pc}
_022203B4:
	mov r0, #0
	strb r0, [r5, #4]
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x10]
	mov r4, #1
	add r1, r2, r1
	str r1, [r5, #0x14]
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bne _022203CC
	add r4, r0, #0
	b _022203E4
_022203CC:
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #8]
	cmp r1, r2
	ldr r1, [r5, #0x14]
	bge _022203DE
	cmp r1, r2
	blt _022203E4
	add r4, r0, #0
	b _022203E4
_022203DE:
	cmp r1, r2
	bgt _022203E4
	add r4, r0, #0
_022203E4:
	ldr r0, [r5, #0x14]
	bl sub_02005818
	ldrh r0, [r5, #0x1a]
	bl sub_020057D4
	cmp r0, #0
	bne _022203F6
	mov r4, #0
_022203F6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022203A0

	thumb_func_start ov12_022203FC
ov12_022203FC: ; 0x022203FC
	ldr r3, _02220400 ; =ov12_022203A0
	bx r3
	; .align 2, 0
_02220400: .word ov12_022203A0
	thumb_func_end ov12_022203FC

	thumb_func_start ov12_02220404
ov12_02220404: ; 0x02220404
	ldr r3, _02220408 ; =ov12_022203A0
	bx r3
	; .align 2, 0
_02220408: .word ov12_022203A0
	thumb_func_end ov12_02220404

	thumb_func_start ov12_0222040C
ov12_0222040C: ; 0x0222040C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r1, [r5, #4]
	add r0, r1, #1
	strb r0, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r1, r0
	bhs _02220420
	mov r0, #1
	pop {r3, r4, r5, pc}
_02220420:
	mov r0, #0
	strb r0, [r5, #4]
	ldrb r0, [r5, #0x18]
	mov r4, #1
	sub r0, r0, #1
	strb r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	bl sub_02005748
	ldrh r0, [r5, #0x1a]
	ldr r1, _02220448 ; =0x0000FFFF
	ldr r2, [r5, #0x14]
	bl sub_020057FC
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _02220444
	mov r4, #0
_02220444:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02220448: .word 0x0000FFFF
	thumb_func_end ov12_0222040C

	thumb_func_start ov12_0222044C
ov12_0222044C: ; 0x0222044C
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4, #3]
	mov r0, #1
	sub r1, r2, #1
	strb r1, [r4, #3]
	cmp r2, #0
	bne _0222046E
	ldrh r0, [r4, #0x1a]
	bl sub_02005748
	ldrh r0, [r4, #0x1a]
	ldr r1, _02220470 ; =0x0000FFFF
	ldr r2, [r4, #0x14]
	bl sub_020057FC
	mov r0, #0
_0222046E:
	pop {r4, pc}
	; .align 2, 0
_02220470: .word 0x0000FFFF
	thumb_func_end ov12_0222044C

	thumb_func_start ov12_02220474
ov12_02220474: ; 0x02220474
	push {r3, lr}
	ldr r0, _02220488 ; =0x04000050
	mov r3, #8
	mov r1, #0
	mov r2, #0x3f
	str r3, [sp]
	bl sub_020BF55C
	pop {r3, pc}
	nop
_02220488: .word 0x04000050
	thumb_func_end ov12_02220474

	thumb_func_start ov12_0222048C
ov12_0222048C: ; 0x0222048C
	push {r3, r4}
	add r2, r0, #0
	mov r1, #1
	add r2, #0x8d
	strb r1, [r2]
	ldr r3, _022204C0 ; =0x021BF67C
	lsl r2, r1, #9
	ldr r4, [r3, #0x44]
	tst r2, r4
	beq _022204BC
	add r2, r1, #0
	add r2, #0xff
	tst r2, r4
	beq _022204BC
	ldr r2, [r3, #0x48]
	lsl r1, r1, #0xa
	tst r1, r2
	beq _022204BC
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0
	add r0, #0x8d
	strb r1, [r0]
_022204BC:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022204C0: .word 0x021BF67C
	thumb_func_end ov12_0222048C

	thumb_func_start ov12_022204C4
ov12_022204C4: ; 0x022204C4
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x8d
	strb r2, [r1]
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r1, _022204E0 ; =ov12_0221FC20
	add r0, #0xbc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_022204E0: .word ov12_0221FC20
	thumb_func_end ov12_022204C4

	thumb_func_start ov12_022204E4
ov12_022204E4: ; 0x022204E4
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	cmp r1, #0
	bne _022204FC
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0
	add r0, #0x8d
	strb r1, [r0]
	bx lr
_022204FC:
	mov r1, #1
	add r0, #0x8d
	strb r1, [r0]
	bx lr
	thumb_func_end ov12_022204E4

	thumb_func_start ov12_02220504
ov12_02220504: ; 0x02220504
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	cmp r3, #0xa
	bhs _02220522
	lsl r1, r3, #2
	add r0, r0, r1
	add r0, #0x94
	str r2, [r0, #0]
_02220522:
	bx lr
	thumb_func_end ov12_02220504

	thumb_func_start ov12_02220524
ov12_02220524: ; 0x02220524
	ldr r1, [r0, #0x18]
	mov r3, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r2, r3, #0
_0222052E:
	add r1, r0, #0
	add r1, #0x94
	add r3, r3, #1
	add r0, r0, #4
	str r2, [r1, #0]
	cmp r3, #0xa
	blt _0222052E
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220524

	thumb_func_start ov12_02220540
ov12_02220540: ; 0x02220540
	cmp r1, #5
	bhi _0222058C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02220550: ; jump table
	.short _0222055C - _02220550 - 2 ; case 0
	.short _02220564 - _02220550 - 2 ; case 1
	.short _0222056C - _02220550 - 2 ; case 2
	.short _02220574 - _02220550 - 2 ; case 3
	.short _0222057C - _02220550 - 2 ; case 4
	.short _02220584 - _02220550 - 2 ; case 5
_0222055C:
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bx lr
_02220564:
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #8]
	bx lr
_0222056C:
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xa]
	bx lr
_02220574:
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bx lr
_0222057C:
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	bx lr
_02220584:
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x12]
	bx lr
_0222058C:
	mov r0, #0
	bx lr
	thumb_func_end ov12_02220540

	thumb_func_start ov12_02220590
ov12_02220590: ; 0x02220590
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	mov r0, #0
	str r2, [sp]
	add r6, r0, #0
	add r5, r1, #0
	mov ip, r0
	add r7, r1, #0
_022205A0:
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, r2, r6
	add r2, #0xb0
	ldr r2, [r2, #0]
	str r2, [r5, #8]
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, r2, r6
	add r2, #0xc4
	ldr r2, [r2, #0]
	str r2, [r5, #0x18]
	add r2, r3, #0
	add r2, #0xc0
	ldr r4, [r2, #0]
	mov r2, ip
	add r2, r4, r2
	add r2, #0xd8
	ldrh r2, [r2]
	strh r2, [r7, #0x28]
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r7, r7, #2
	add r2, r2, r0
	add r2, #0xe0
	ldrb r4, [r2]
	add r2, r1, r0
	add r2, #0x30
	strb r4, [r2]
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, r2, r0
	add r2, #0xe4
	ldrb r4, [r2]
	add r2, r1, r0
	add r2, #0x34
	strb r4, [r2]
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, r2, r0
	add r2, #0xe8
	ldrb r4, [r2]
	add r2, r1, r0
	add r2, #0x38
	strb r4, [r2]
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, r2, r6
	add r2, #0xec
	ldr r2, [r2, #0]
	add r6, r6, #4
	str r2, [r5, #0x3c]
	add r2, r3, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r5, r5, #4
	add r2, r2, r0
	add r2, #0xc0
	ldrb r4, [r2]
	add r2, r1, r0
	add r2, #0x4c
	strb r4, [r2]
	mov r2, ip
	add r2, r2, #2
	add r0, r0, #1
	mov ip, r2
	cmp r0, #4
	blt _022205A0
	ldr r0, [sp]
	cmp r0, #3
	bhi _0222069E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02220646: ; jump table
	.short _0222064E - _02220646 - 2 ; case 0
	.short _02220662 - _02220646 - 2 ; case 1
	.short _02220676 - _02220646 - 2 ; case 2
	.short _0222068A - _02220646 - 2 ; case 3
_0222064E:
	add r0, r3, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r3, #0xc0
	ldrh r0, [r0, #0x14]
	str r0, [r1, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x16]
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02220662:
	add r0, r3, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r3, #0xc0
	ldrh r0, [r0, #0x14]
	str r0, [r1, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x14]
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02220676:
	add r0, r3, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r3, #0xc0
	ldrh r0, [r0, #0x14]
	str r0, [r1, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x14]
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0222068A:
	add r0, r3, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r3, #0xc0
	ldrh r0, [r0, #0x14]
	str r0, [r1, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x14]
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0222069E:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02220590

	thumb_func_start ov12_022206A4
ov12_022206A4: ; 0x022206A4
	push {r3, r4, r5, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	add r1, sp, #0
	add r2, r4, #0
	bl ov12_02220590
	cmp r4, #2
	add r0, sp, #0
	bne _022206CE
	ldr r1, [r5, #0]
	bl ov12_02238390
	add sp, #0x50
	pop {r3, r4, r5, pc}
_022206CE:
	cmp r4, #3
	bne _022206DC
	ldr r1, [r5, #0]
	bl ov12_022380CC
	add sp, #0x50
	pop {r3, r4, r5, pc}
_022206DC:
	ldr r1, [r5, #0]
	bl ov12_022380BC
	add sp, #0x50
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022206A4

	thumb_func_start ov12_022206E8
ov12_022206E8: ; 0x022206E8
	push {r4, lr}
	sub sp, #0x50
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r1, r1, #4
	str r1, [r4, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r4, #0x18]
	add r1, sp, #0
	bl ov12_02220590
	ldr r1, [r4, #0]
	add r0, sp, #0
	bl ov12_022382BC
	add sp, #0x50
	pop {r4, pc}
	thumb_func_end ov12_022206E8

	thumb_func_start ov12_0222070C
ov12_0222070C: ; 0x0222070C
	ldr r1, [r0, #0x18]
	mov r2, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r3, r0, #0
_02220716:
	ldr r1, [r3, #0x30]
	cmp r1, #1
	beq _02220742
	mov r1, #0xc
	mul r1, r2
	mov r2, #1
	add r1, r0, r1
	str r2, [r1, #0x30]
	add r2, r1, #0
	mov r3, #0
	add r2, #0x2c
	strb r3, [r2]
	ldr r2, [r0, #0x18]
	ldr r3, [r2, #0]
	add r2, r1, #0
	add r2, #0x2d
	strb r3, [r2]
	ldr r2, [r0, #0x18]
	add r2, r2, #4
	str r2, [r0, #0x18]
	str r2, [r1, #0x28]
	bx lr
_02220742:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #3
	blt _02220716
	bx lr
	thumb_func_end ov12_0222070C

	thumb_func_start ov12_0222074C
ov12_0222074C: ; 0x0222074C
	push {r3, r4}
	ldr r1, [r0, #0x18]
	add r3, r0, #0
	add r1, r1, #4
	add r3, #0x18
	str r1, [r0, #0x18]
	mov r2, #2
_0222075A:
	ldr r1, [r3, #0x30]
	cmp r1, #0
	beq _0222078E
	add r4, r2, #0
	mov r1, #0xc
	add r2, r0, #0
	mul r4, r1
	add r2, #0x2c
	ldrb r1, [r2, r4]
	add r1, r1, #1
	strb r1, [r2, r4]
	ldrb r3, [r2, r4]
	add r2, r0, r4
	add r1, r2, #0
	add r1, #0x2d
	ldrb r1, [r1]
	cmp r3, r1
	bne _02220786
	mov r0, #0
	str r0, [r2, #0x30]
	pop {r3, r4}
	bx lr
_02220786:
	ldr r1, [r2, #0x28]
	str r1, [r0, #0x18]
	pop {r3, r4}
	bx lr
_0222078E:
	sub r3, #0xc
	sub r2, r2, #1
	bpl _0222075A
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_0222074C

	thumb_func_start ov12_02220798
ov12_02220798: ; 0x02220798
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02220994 ; =0x0000017E
	add r5, r0, #0
	ldrb r0, [r5, r1]
	mov r6, #0
	cmp r0, #1
	bhs _022207B6
	add r0, r5, #0
	mov r2, #1
	add r0, #0x8d
	strb r2, [r0]
	ldrb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_022207B6:
	add r7, r6, #0
	add r4, r6, #0
_022207BA:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _022207CE
	bl sub_02014710
	add r6, r6, r0
_022207CE:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0x10
	blt _022207BA
	cmp r6, #0
	bne _022207EE
	add r0, r5, #0
	add r0, #0x8e
	ldrh r0, [r0]
	cmp r0, #0
	bne _022207EE
	add r0, r5, #0
	add r0, #0x90
	ldrh r0, [r0]
	cmp r0, #0
	beq _022207FE
_022207EE:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _02220998 ; =0x0000017D
	mov r1, #0
	strb r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022207FE:
	bl sub_020057E0
	cmp r0, #0
	beq _02220828
	ldr r0, _02220998 ; =0x0000017D
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	cmp r1, #0x5a
	bls _02220820
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x8d
	strb r1, [r0]
	b _02220828
_02220820:
	mov r0, #1
	add r5, #0x8d
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02220828:
	ldr r0, _02220998 ; =0x0000017D
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	add r0, r5, #0
	add r2, r1, #0
_02220836:
	add r1, r1, #1
	str r2, [r0, #0x1c]
	add r0, r0, #4
	cmp r1, #3
	blt _02220836
	add r1, r5, #0
	mov r4, #0
_02220844:
	add r0, r1, #0
	str r4, [r1, #0x28]
	add r0, #0x2c
	strb r4, [r0]
	add r0, r1, #0
	add r0, #0x2d
	strb r4, [r0]
	str r4, [r1, #0x30]
	add r2, r2, #1
	add r1, #0xc
	cmp r2, #3
	blt _02220844
	add r7, r5, #0
	mov r6, #0
_02220860:
	add r0, r7, #0
	add r0, #0xcc
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02220878
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200D0B0
_02220878:
	add r0, r7, #0
	add r0, #0xcc
	add r4, r4, #1
	add r7, r7, #4
	str r6, [r0, #0]
	cmp r4, #4
	blt _02220860
_02220886:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02221238
	add r6, r6, #1
	cmp r6, #5
	blt _02220886
	mov r6, #0
	add r4, r6, #0
	add r7, r6, #0
_0222089A:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _022208B6
	bl ov12_02223894
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r4
	str r7, [r0, #0x1c]
_022208B6:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _0222089A
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _022208CC
	mov r1, #0
	str r1, [r5, r0]
_022208CC:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #0
	bne _02220920
	bl ov16_0223F9F0
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233B0
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r4, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	add r0, r5, #0
	bl ov12_02220278
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	b _02220924
_02220920:
	bl ov17_022413D8
_02220924:
	mov r1, #0x1a
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	mov r0, #0
	bl sub_02019060
	ldr r1, _0222099C ; =0x000001A1
	mov r0, #1
	ldrb r1, [r5, r1]
	bl sub_02019060
	ldr r1, _022209A0 ; =0x000001A2
	mov r0, #2
	ldrb r1, [r5, r1]
	bl sub_02019060
	ldr r1, _022209A4 ; =0x000001A3
	mov r0, #3
	ldrb r1, [r5, r1]
	bl sub_02019060
	add r0, r5, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #3
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r0, #0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220994: .word 0x0000017E
_02220998: .word 0x0000017D
_0222099C: .word 0x000001A1
_022209A0: .word 0x000001A2
_022209A4: .word 0x000001A3
	thumb_func_end ov12_02220798

	thumb_func_start ov12_022209A8
ov12_022209A8: ; 0x022209A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r4, [r0, #0]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1, #0]
	str r0, [sp]
	add r0, r1, #4
	str r0, [r5, #0x18]
	ldr r7, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	str r4, [r0, #0x18]
	add r0, r5, r4
	add r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02220A06
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	add r1, sp, #4
	bl sub_02014734
	mov r0, #0
	ldr r1, [sp, #8]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	bl sub_02014744
_02220A06:
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, r4
	add r1, #0x6c
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldrb r1, [r1]
	ldr r0, [r0, #0x1c]
	bl sub_02014788
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [sp]
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	add r2, r7, #0
	add r3, r5, #0
	bl ov12_02223880
	add r5, #0xc0
	ldr r1, [r5, #0]
	str r0, [r1, #0x5c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022209A8

	thumb_func_start ov12_02220A3C
ov12_02220A3C: ; 0x02220A3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r4, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r7, [r0, #0]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	str r0, [sp]
	add r0, r1, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	str r4, [r0, #0x18]
	add r0, r5, r4
	add r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02220AA2
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	add r1, sp, #8
	bl sub_02014734
	mov r0, #0
	ldr r1, [sp, #0xc]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	bl sub_02014744
_02220AA2:
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, r4
	add r1, #0x6c
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldrb r1, [r1]
	ldr r0, [r0, #0x1c]
	bl sub_02014788
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	ldr r2, [sp]
	add r3, r5, #0
	bl ov12_02223880
	add r5, #0xc0
	ldr r2, [r5, #0]
	lsl r1, r7, #2
	add r1, r2, r1
	str r0, [r1, #0x5c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02220A3C

	thumb_func_start ov12_02220ADC
ov12_02220ADC: ; 0x02220ADC
	push {r4, r5, r6, lr}
	sub sp, #0x90
	ldr r5, _02220B30 ; =0x022386B4
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0x12
_02220AE8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02220AE8
	add r0, r4, #0
	bl ov12_02220240
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02235254
	mov r1, #0x18
	add r3, r5, #0
	mul r3, r1
	add r2, sp, #0
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r4, [r1, r0]
	cmp r4, #0xff
	bne _02220B28
	bl sub_02022974
_02220B28:
	sub r0, r4, #1
	add sp, #0x90
	pop {r4, r5, r6, pc}
	nop
_02220B30: .word 0x022386B4
	thumb_func_end ov12_02220ADC

	thumb_func_start ov12_02220B34
ov12_02220B34: ; 0x02220B34
	push {r4, r5, r6, lr}
	sub sp, #0x90
	ldr r5, _02220B88 ; =0x02238744
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0x12
_02220B40:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02220B40
	add r0, r4, #0
	bl ov12_02220240
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02235254
	mov r1, #0x18
	add r3, r5, #0
	mul r3, r1
	add r2, sp, #0
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r4, [r1, r0]
	cmp r4, #0xff
	bne _02220B80
	bl sub_02022974
_02220B80:
	add r0, r4, #0
	add sp, #0x90
	pop {r4, r5, r6, pc}
	nop
_02220B88: .word 0x02238744
	thumb_func_end ov12_02220B34

	thumb_func_start ov12_02220B8C
ov12_02220B8C: ; 0x02220B8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r0, #0x18
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	mov r1, #0
	add r2, sp, #0x10
_02220BA4:
	ldr r3, [r5, #0x18]
	add r1, r1, #1
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r3, [r0, #0]
	add r2, r2, #4
	add r3, r3, #4
	str r3, [r0, #0]
	cmp r1, #6
	blt _02220BA4
	ldr r1, [r5, #0x18]
	ldr r1, [r1, #0]
	str r1, [sp]
	ldr r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	str r4, [r0, #0x18]
	add r0, r5, r4
	add r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02220C02
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	add r1, sp, #4
	bl sub_02014734
	mov r0, #0
	ldr r1, [sp, #8]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	bl sub_02014744
_02220C02:
	add r0, r5, #0
	bl ov12_02220ADC
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, r4
	add r1, #0x6c
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldrb r1, [r1]
	ldr r0, [r0, #0x1c]
	bl sub_02014788
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r2, r7, #2
	add r0, r0, r6
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r0, [r0, #0x1c]
	ldr r2, [sp]
	add r3, r5, #0
	bl ov12_02223880
	add r5, #0xc0
	ldr r1, [r5, #0]
	str r0, [r1, #0x5c]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02220B8C

	thumb_func_start ov12_02220C44
ov12_02220C44: ; 0x02220C44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r0, #0x18
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	mov r1, #0
	add r2, sp, #0x10
_02220C5C:
	ldr r3, [r5, #0x18]
	add r1, r1, #1
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r3, [r0, #0]
	add r2, r2, #4
	add r3, r3, #4
	str r3, [r0, #0]
	cmp r1, #4
	blt _02220C5C
	ldr r1, [r5, #0x18]
	ldr r1, [r1, #0]
	str r1, [sp]
	ldr r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	str r4, [r0, #0x18]
	add r0, r5, r4
	add r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02220CBA
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	add r1, sp, #4
	bl sub_02014734
	mov r0, #0
	ldr r1, [sp, #8]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r0, r0, r6
	ldr r0, [r0, #0x1c]
	bl sub_02014744
_02220CBA:
	add r0, r5, #0
	bl ov12_02220B34
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	add r1, r5, r4
	add r1, #0x6c
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldrb r1, [r1]
	ldr r0, [r0, #0x1c]
	bl sub_02014788
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r2, r7, #2
	add r0, r0, r6
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r0, [r0, #0x1c]
	ldr r2, [sp]
	add r3, r5, #0
	bl ov12_02223880
	add r5, #0xc0
	ldr r1, [r5, #0]
	str r0, [r1, #0x5c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02220C44

	thumb_func_start ov12_02220CFC
ov12_02220CFC: ; 0x02220CFC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
	add r4, r6, #0
_02220D06:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _02220D1A
	bl sub_02014710
	add r6, r6, r0
_02220D1A:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0x10
	blt _02220D06
	cmp r6, #0
	bne _02220D34
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	mov r0, #0
	add r5, #0x8d
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02220D34:
	mov r0, #1
	add r5, #0x8d
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02220CFC

	thumb_func_start ov12_02220D3C
ov12_02220D3C: ; 0x02220D3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r4, r1, #2
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _02220D60
	bl sub_02022974
_02220D60:
	ldr r0, [r5, #0x18]
	mov r2, #0
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5, #0]
	bl ov12_022237F0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r1, r1, r4
	str r0, [r1, #0x1c]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _02220D8C ; =ov12_0221FC20
	add r5, #0xbc
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_02220D8C: .word ov12_0221FC20
	thumb_func_end ov12_02220D3C

	thumb_func_start ov12_02220D90
ov12_02220D90: ; 0x02220D90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r4, r1, #2
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _02220DB6
	bl sub_02022974
_02220DB6:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	ldr r2, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5, #0]
	mov r3, #0
	bl ov12_02223818
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r1, r1, r4
	str r0, [r1, #0x1c]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _02220DE4 ; =ov12_0221FC20
	add r5, #0xbc
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_02220DE4: .word ov12_0221FC20
	thumb_func_end ov12_02220D90

	thumb_func_start ov12_02220DE8
ov12_02220DE8: ; 0x02220DE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r4, r1, #2
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	bl ov12_02223894
	add r5, #0xc0
	ldr r0, [r5, #0]
	mov r1, #0
	add r0, r0, r4
	str r1, [r0, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02220DE8

	thumb_func_start ov12_02220E14
ov12_02220E14: ; 0x02220E14
	ldr r1, [r0, #0x18]
	mov r3, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r2, r0, #0
_02220E1E:
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	bne _02220E3A
	ldr r1, [r0, #0x18]
	add r2, r1, #4
	lsl r1, r3, #2
	add r1, r0, r1
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	ldr r1, [r2, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r0, #0x18]
	bx lr
_02220E3A:
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #3
	blt _02220E1E
	bx lr
	thumb_func_end ov12_02220E14

	thumb_func_start ov12_02220E44
ov12_02220E44: ; 0x02220E44
	ldr r1, [r0, #0x18]
	add r3, r0, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r2, #2
	add r3, #8
_02220E50:
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	beq _02220E66
	add r3, r0, #0
	add r3, #0x1c
	lsl r2, r2, #2
	ldr r1, [r3, r2]
	str r1, [r0, #0x18]
	mov r0, #0
	str r0, [r3, r2]
	bx lr
_02220E66:
	sub r3, r3, #4
	sub r2, r2, #1
	bpl _02220E50
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220E44

	thumb_func_start ov12_02220E70
ov12_02220E70: ; 0x02220E70
	push {r3, r4}
	ldr r2, [r0, #0x18]
	add r1, r0, #0
	add r2, r2, #4
	str r2, [r0, #0x18]
	ldr r4, [r2, #0]
	add r2, r2, #4
	str r2, [r0, #0x18]
	ldr r3, [r2, #0]
	add r2, r2, #4
	str r2, [r0, #0x18]
	lsl r2, r4, #2
	add r2, r0, r2
	add r2, #0x94
	ldr r2, [r2, #0]
	add r1, #0x18
	cmp r3, r2
	bne _02220E9E
	ldr r1, [r0, #0x18]
	ldr r1, [r1, #0]
	str r1, [r0, #0x18]
	pop {r3, r4}
	bx lr
_02220E9E:
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_02220E70

	thumb_func_start ov12_02220EA8
ov12_02220EA8: ; 0x02220EA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl ov12_02223178
	cmp r0, #0
	ldr r0, [r4, #0x18]
	beq _02220EC8
	ldr r0, [r0, #0]
	str r0, [r4, #0x18]
	pop {r4, pc}
_02220EC8:
	add r0, r0, #4
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02220EA8

	thumb_func_start ov12_02220ED0
ov12_02220ED0: ; 0x02220ED0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r0, #4
	str r1, [r4, #0x18]
	ldr r0, [r1, #0]
	add r1, r1, #4
	str r1, [r4, #0x18]
	bl ov12_02226998
	add r7, r0, #0
	ldr r0, [r4, #0x18]
	add r2, r4, #0
	ldr r5, [r0, #0]
	add r0, r0, #4
	add r2, #0x18
	mov r3, #0
	str r0, [r4, #0x18]
	cmp r5, #0
	bls _02220F12
	add r6, r4, #0
_02220EFA:
	ldr r0, [r4, #0x18]
	add r3, r3, #1
	ldr r1, [r0, #0]
	add r0, r6, #0
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [r2, #0]
	cmp r3, r5
	blo _02220EFA
_02220F12:
	cmp r3, #0xa
	bge _02220F2A
	lsl r0, r3, #2
	add r2, r4, r0
	mov r1, #0
_02220F1C:
	add r0, r2, #0
	add r0, #0x94
	add r3, r3, #1
	add r2, r2, #4
	str r1, [r0, #0]
	cmp r3, #0xa
	blt _02220F1C
_02220F2A:
	add r0, r4, #0
	blx r7
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02220ED0

	thumb_func_start ov12_02220F30
ov12_02220F30: ; 0x02220F30
	ldr r2, [r0, #0x18]
	add r1, r0, #0
	add r2, r2, #4
	str r2, [r0, #0x18]
	add r2, r0, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r1, #0x18
	ldrh r3, [r2, #0x10]
	mov r2, #1
	tst r2, r3
	beq _02220F4E
	ldr r2, [r1, #0]
	add r2, r2, #4
	str r2, [r1, #0]
_02220F4E:
	ldr r2, [r0, #0x18]
	ldr r1, [r2, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02220F30

	thumb_func_start ov12_02220F5C
ov12_02220F5C: ; 0x02220F5C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r1, r1, #4
	str r1, [r4, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r4, #0x18]
	cmp r2, #0
	bne _02220F7E
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	ldrh r1, [r1, #0x14]
	bl ov12_0223525C
	b _02220F8A
_02220F7E:
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	ldrh r1, [r1, #0x16]
	bl ov12_0223525C
_02220F8A:
	cmp r0, #4
	bne _02220F94
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
_02220F94:
	ldr r1, [r4, #0x18]
	ldr r0, [r1, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov12_02220F5C

	thumb_func_start ov12_02220FA0
ov12_02220FA0: ; 0x02220FA0
	push {r4, r5}
	sub sp, #0x10
	ldr r5, _02220FF8 ; =0x022385A4
	add r2, sp, #0
	add r4, r0, #0
	add r3, r2, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	add r1, r1, #4
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r0, #0x18
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _02220FE6
	ldr r2, [r0, #0]
	add r2, r2, #4
	str r2, [r0, #0]
	mov r2, #0
_02220FD2:
	ldr r5, [r3, #0]
	tst r5, r1
	bne _02220FE6
	ldr r5, [r0, #0]
	add r2, r2, #1
	add r5, r5, #4
	add r3, r3, #4
	str r5, [r0, #0]
	cmp r2, #4
	blo _02220FD2
_02220FE6:
	ldr r1, [r4, #0x18]
	ldr r0, [r1, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x18]
	add sp, #0x10
	pop {r4, r5}
	bx lr
	nop
_02220FF8: .word 0x022385A4
	thumb_func_end ov12_02220FA0

	thumb_func_start ov12_02220FFC
ov12_02220FFC: ; 0x02220FFC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r1, r1, #4
	str r1, [r4, #0x18]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222101A
	ldr r1, [r4, #0x18]
	ldr r0, [r1, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x18]
	pop {r4, pc}
_0222101A:
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02220FFC

	thumb_func_start ov12_02221024
ov12_02221024: ; 0x02221024
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	ldrh r1, [r1, #0x14]
	bl ov12_0223525C
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r4, r0, #0
	ldrh r1, [r1, #0x16]
	add r0, r5, #0
	bl ov12_0223525C
	cmp r4, r0
	bne _0222105A
	ldr r1, [r5, #0x18]
	ldr r0, [r1, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
_0222105A:
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02221024

	thumb_func_start ov12_02221064
ov12_02221064: ; 0x02221064
	ldr r2, [r0, #0x18]
	add r1, r0, #0
	add r2, r2, #4
	str r2, [r0, #0x18]
	ldr r3, [r2, #0]
	add r2, r2, #4
	str r2, [r0, #0x18]
	add r2, r0, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r1, #0x18
	ldrh r2, [r2, #0x10]
	cmp r3, r2
	bne _0222108E
	ldr r0, [r0, #0x18]
	ldr r2, [r1, #0]
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r2, r0
	str r0, [r1, #0]
	bx lr
_0222108E:
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221064

	thumb_func_start ov12_02221098
ov12_02221098: ; 0x02221098
	ldr r1, [r0, #0x18]
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov12_02221098

	thumb_func_start ov12_022210A8
ov12_022210A8: ; 0x022210A8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	cmp r1, #7
	bhi _02221186
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022210BC: ; jump table
	.short _022210CC - _022210BC - 2 ; case 0
	.short _022210D4 - _022210BC - 2 ; case 1
	.short _022210DC - _022210BC - 2 ; case 2
	.short _022210EA - _022210BC - 2 ; case 3
	.short _022210F8 - _022210BC - 2 ; case 4
	.short _0222111E - _022210BC - 2 ; case 5
	.short _02221144 - _022210BC - 2 ; case 6
	.short _02221166 - _022210BC - 2 ; case 7
_022210CC:
	add r4, #0xc0
	ldr r0, [r4, #0]
	ldrh r6, [r0, #0x14]
	b _02221186
_022210D4:
	add r4, #0xc0
	ldr r0, [r4, #0]
	ldrh r6, [r0, #0x16]
	b _02221186
_022210DC:
	add r4, #0xc0
	ldr r1, [r4, #0]
	ldrh r1, [r1, #0x14]
	bl ov12_022352AC
	add r6, r0, #0
	b _02221186
_022210EA:
	add r4, #0xc0
	ldr r1, [r4, #0]
	ldrh r1, [r1, #0x16]
	bl ov12_022352AC
	add r6, r0, #0
	b _02221186
_022210F8:
	mov r6, #0xff
	mov r5, #0
_022210FC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #0
	beq _0222110C
	cmp r0, #2
	bne _02221110
_0222110C:
	add r6, r5, #0
	b _02221116
_02221110:
	add r5, r5, #1
	cmp r5, #4
	blt _022210FC
_02221116:
	cmp r6, #0xff
	bne _02221186
	mov r6, #0
	b _02221186
_0222111E:
	mov r6, #0xff
	mov r5, #0
_02221122:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #1
	beq _02221132
	cmp r0, #3
	bne _02221136
_02221132:
	add r6, r5, #0
	b _0222113C
_02221136:
	add r5, r5, #1
	cmp r5, #4
	blt _02221122
_0222113C:
	cmp r6, #0xff
	bne _02221186
	mov r6, #0
	b _02221186
_02221144:
	mov r6, #0xff
	mov r5, #0
_02221148:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _02221158
	add r6, r5, #0
	b _0222115E
_02221158:
	add r5, r5, #1
	cmp r5, #4
	blt _02221148
_0222115E:
	cmp r6, #0xff
	bne _02221186
	mov r6, #0
	b _02221186
_02221166:
	mov r6, #0xff
	mov r5, #0
_0222116A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _0222117A
	add r6, r5, #0
	b _02221180
_0222117A:
	add r5, r5, #1
	cmp r5, #4
	blt _0222116A
_02221180:
	cmp r6, #0xff
	bne _02221186
	mov r6, #0
_02221186:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022210A8

	thumb_func_start ov12_0222118C
ov12_0222118C: ; 0x0222118C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _022211A8
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	cmp r1, r0
	bne _022211D6
	mov r0, #0
	strb r0, [r5, #4]
_022211A8:
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [r5, #8]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D4C4
_022211D6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0222118C

	thumb_func_start ov12_022211D8
ov12_022211D8: ; 0x022211D8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _022211F4
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	cmp r1, r0
	bne _02221236
	mov r0, #0
	strb r0, [r5, #4]
_022211F4:
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [r5, #8]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	sub r6, #0x28
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #0
	neg r3, r6
	bl sub_02019184
	sub r4, #0x28
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #3
	neg r3, r4
	bl sub_02019184
_02221236:
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022211D8

	thumb_func_start ov12_02221238
ov12_02221238: ; 0x02221238
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #4
	bne _02221264
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02221282
	ldr r0, [r0, #0xc]
	bl sub_0200DA58
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x5e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02221264:
	mov r0, #0x59
	lsl r0, r0, #2
	lsl r5, r1, #2
	add r4, r4, r0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _02221282
	ldr r0, [r0, #0xc]
	bl sub_0200DA58
	ldr r0, [r4, r5]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, r5]
_02221282:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02221238

	thumb_func_start ov12_02221284
ov12_02221284: ; 0x02221284
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221284

	thumb_func_start ov12_02221288
ov12_02221288: ; 0x02221288
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221288

	thumb_func_start ov12_0222128C
ov12_0222128C: ; 0x0222128C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r2, r1, #4
	str r2, [r5, #0x18]
	ldr r1, [r2, #0]
	add r2, r2, #4
	str r2, [r5, #0x18]
	ldr r6, [r2, #0]
	add r2, r2, #4
	str r2, [r5, #0x18]
	bl ov12_022210A8
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r4, #2
	add r1, r0, r1
	add r1, #0xb0
	ldr r2, [r1, #0]
	add r0, r0, r4
	ldr r1, [r2, #4]
	add r0, #0xe8
	str r1, [sp, #0x14]
	ldr r1, [r2, #8]
	ldrb r7, [r0]
	str r1, [sp, #0x10]
	ldr r1, [r2, #0]
	add r0, r5, #0
	str r1, [sp, #0x18]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022212EA
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022232D0
	add r1, r7, #0
	bl ov12_022384F0
	cmp r0, #1
	bne _022212EA
	ldr r7, _02221418 ; =0x00000109
	b _022212EE
_022212EA:
	mov r7, #0x42
	lsl r7, r7, #2
_022212EE:
	mov r0, #2
	bl sub_02019F28
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020C4CF4
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc4
	mov r3, #0x32
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x18]
	mov r1, #2
	lsl r3, r3, #6
	bl sub_0201958C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [r5, #0]
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x69
	lsl r0, r0, #2
	add r2, #0xc4
	ldr r0, [r5, r0]
	ldr r2, [r2, #0]
	add r1, r7, #0
	mov r3, #2
	bl sub_0200710C
	cmp r6, #1
	bne _0222139E
	ldr r0, [r5, #0]
	mov r1, #0x10
	bl sub_02018144
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	ldr r0, [r5, r1]
	add r1, r4, #0
	str r2, [r0, #0]
	add r0, r5, #0
	bl ov12_022232FC
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	str r0, [r2, #8]
	ldr r0, [r5, r1]
	mov r2, #0
	strb r2, [r0, #4]
	ldr r0, [r5, r1]
	strb r2, [r0, #5]
	ldr r0, _0222141C ; =ov12_022211D8
	ldr r1, [r5, r1]
	ldr r2, _02221420 ; =0x00001001
	bl sub_0200D9E8
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	str r0, [r1, #0xc]
_0222139E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022232FC
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022232FC
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022232FC
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	add r0, #0xc4
	sub r7, #0x28
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #0
	neg r3, r7
	bl sub_02019184
	add r0, r5, #0
	add r0, #0xc4
	sub r6, #0x28
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #3
	neg r3, r6
	bl sub_02019184
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_02019060
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02221418: .word 0x00000109
_0222141C: .word ov12_022211D8
_02221420: .word 0x00001001
	thumb_func_end ov12_0222128C

	thumb_func_start ov12_02221424
ov12_02221424: ; 0x02221424
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	add r0, r0, #4
	str r0, [r4, #0x18]
	mov r0, #2
	bl sub_02019F28
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #4
	bl ov12_02221238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02221424

	thumb_func_start ov12_0222144C
ov12_0222144C: ; 0x0222144C
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _022214C0 ; =0x022385E4
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C704
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r2, #5
	bl sub_0200C7C0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #0x4e
	add r0, #0xac
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, sp, #0
	bl sub_0200CB30
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_022214C0: .word 0x022385E4
	thumb_func_end ov12_0222144C

	thumb_func_start ov12_022214C4
ov12_022214C4: ; 0x022214C4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r1, _0222157C ; =0x00004E21
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r2, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r4, r2, r1
	ldrh r3, [r0, #0x14]
	lsr r2, r1, #2
	add r0, #0xac
	mul r2, r3
	add r4, r4, r2
	mov r2, #0
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #0x6a
	str r4, [sp, #8]
	lsr r1, r1, #6
	lsl r2, r2, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0x4c
	bl sub_0200CC3C
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r5, #0
	str r0, [sp]
	mov r3, #0x4b
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r4, [sp, #0x14]
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r0, #0xc8
	add r2, #0xac
	add r3, #0xed
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r3, [r5, r3]
	mov r1, #2
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #0x4e
	str r4, [sp, #4]
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r2, r2, #2
	add r0, #0xac
	ldr r1, [r5, r2]
	add r2, #0x70
	ldr r0, [r0, #0]
	ldr r2, [r5, r2]
	mov r3, #0x4d
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #0x4e
	str r4, [sp, #4]
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r2, r2, #2
	add r0, #0xac
	ldr r1, [r5, r2]
	add r2, #0x70
	ldr r0, [r0, #0]
	ldr r2, [r5, r2]
	mov r3, #0x4e
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222157C: .word 0x00004E21
	thumb_func_end ov12_022214C4

	thumb_func_start ov12_02221580
ov12_02221580: ; 0x02221580
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r7, [r1, #0]
	add r2, r1, #4
	str r2, [r5, #0x18]
	ldr r1, [r2, #0]
	add r2, r2, #4
	str r2, [r5, #0x18]
	str r1, [sp, #0x10]
	ldr r1, [r2, #0]
	str r1, [sp, #0xc]
	add r1, r2, #4
	str r1, [r5, #0x18]
	ldr r3, [r1, #0]
	add r1, r1, #4
	ldr r2, _022217A8 ; =0x00004E21
	str r1, [r5, #0x18]
	add r1, r3, r2
	add r3, r5, #0
	add r3, #0xc0
	ldr r3, [r3, #0]
	ldrh r6, [r3, #0x14]
	lsr r3, r2, #2
	mul r3, r6
	add r3, r1, r3
	str r3, [sp, #0x60]
	add r3, r5, #0
	add r3, #0xc0
	ldr r3, [r3, #0]
	ldrh r6, [r3, #0x14]
	lsr r3, r2, #2
	mul r3, r6
	add r3, r1, r3
	str r3, [sp, #0x64]
	add r3, r5, #0
	add r3, #0xc0
	ldr r3, [r3, #0]
	ldrh r6, [r3, #0x14]
	lsr r3, r2, #2
	lsr r2, r2, #2
	mul r3, r6
	add r3, r1, r3
	str r3, [sp, #0x68]
	add r3, r5, #0
	add r3, #0xc0
	ldr r3, [r3, #0]
	ldrh r3, [r3, #0x14]
	mul r2, r3
	add r1, r1, r2
	str r1, [sp, #0x6c]
	mov r1, #0
	str r1, [sp, #0x70]
	str r1, [sp, #0x74]
	add r1, r7, #0
	bl ov12_022210A8
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r7, #2
	add r1, r0, r1
	add r1, #0xb0
	ldr r2, [r1, #0]
	add r0, r0, r7
	ldr r1, [r2, #4]
	add r0, #0xe8
	str r1, [sp, #0x20]
	ldr r1, [r2, #8]
	ldrb r0, [r0]
	str r1, [sp, #0x1c]
	ldr r1, [r2, #0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x28]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022232FC
	add r6, r0, #0
	beq _0222164E
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r6, #0
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0222164E:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x2c
	strh r0, [r1]
	strh r4, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r1, #0x64
	str r1, [sp, #0x34]
	mov r1, #1
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	add r2, sp, #0x60
	add r3, sp, #0x2c
_0222166E:
	ldr r1, [r2, #0]
	add r0, r0, #1
	str r1, [r3, #0x14]
	add r2, r2, #4
	add r3, r3, #4
	cmp r0, #6
	blt _0222166E
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #0x4e
	add r0, #0xac
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, sp, #0x2c
	bl sub_0200CE6C
	str r0, [sp, #0x24]
	cmp r6, #0
	bne _022216A0
	mov r1, #0
	bl sub_0200D3F4
	b _022216B4
_022216A0:
	add r0, r6, #0
	mov r1, #6
	bl sub_020080C0
	cmp r0, #1
	bne _022216B4
	ldr r0, [sp, #0x24]
	mov r1, #0
	bl sub_0200D3F4
_022216B4:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022216D8
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022232D0
	ldr r1, [sp, #0x18]
	bl ov12_022384F0
	cmp r0, #1
	bne _022216D8
	ldr r0, [sp, #0x24]
	mov r1, #1
	bl sub_0200D7D4
_022216D8:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022232FC
	cmp r0, #0
	beq _022216FC
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r1, r0, #0
	mov r3, #0x32
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x28]
	mov r0, #0x13
	lsl r3, r3, #6
	bl sub_0201DC68
_022216FC:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022232FC
	cmp r0, #0
	beq _02221734
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	mov r1, #2
	str r1, [sp]
	mov r1, #0x20
	lsl r0, r0, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [r5, #0]
	bl sub_02003050
_02221734:
	ldr r0, [sp, #0xc]
	lsl r4, r0, #2
	mov r0, #0x4f
	lsl r0, r0, #2
	add r6, r5, r0
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _02221748
	bl sub_02022974
_02221748:
	ldr r0, [sp, #0x24]
	mov r2, #1
	str r0, [r6, r4]
	mov r0, #0x15
	add r1, r5, r4
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _022217A2
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022232FC
	cmp r0, #0
	beq _022217A2
	mov r0, #0x59
	lsl r0, r0, #2
	add r6, r5, r0
	ldr r0, [r5, #0]
	mov r1, #0x10
	bl sub_02018144
	str r0, [r6, r4]
	ldr r1, [r6, r4]
	ldr r0, [sp, #0x24]
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022232FC
	ldr r1, [r6, r4]
	ldr r2, _022217AC ; =0x00001001
	str r0, [r1, #8]
	ldr r0, [r6, r4]
	mov r1, #0
	strb r1, [r0, #4]
	ldr r0, [r6, r4]
	strb r1, [r0, #5]
	ldr r0, _022217B0 ; =ov12_0222118C
	ldr r1, [r6, r4]
	bl sub_0200D9E8
	ldr r1, [r6, r4]
	str r0, [r1, #0xc]
_022217A2:
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022217A8: .word 0x00004E21
_022217AC: .word 0x00001001
_022217B0: .word ov12_0222118C
	thumb_func_end ov12_02221580

	thumb_func_start ov12_022217B4
ov12_022217B4: ; 0x022217B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022217D6
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200D0B0
_022217D6:
	mov r0, #0x4e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov12_022217B4

	thumb_func_start ov12_022217E0
ov12_022217E0: ; 0x022217E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	mov r0, #0x4f
	lsl r0, r0, #2
	lsl r4, r1, #2
	add r6, r5, r0
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _02221802
	bl sub_0200D0F4
_02221802:
	mov r0, #0x15
	mov r2, #0
	add r1, r5, r4
	lsl r0, r0, #4
	str r2, [r1, r0]
	str r2, [r6, r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022217E0

	thumb_func_start ov12_02221810
ov12_02221810: ; 0x02221810
	push {r3, lr}
	ldr r2, [r1, #0xc]
	cmp r2, #0
	bne _0222181E
	bl sub_0200DA58
	pop {r3, pc}
_0222181E:
	mov r0, #0x4e
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02221830
	ldr r0, [r1, #4]
	bl sub_0200C7EC
_02221830:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02221810

	thumb_func_start ov12_02221834
ov12_02221834: ; 0x02221834
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r5, #0
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1, #0]
	add r6, #0x54
	str r0, [sp]
	add r0, r1, #4
	str r0, [r5, #0x18]
	ldr r2, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	lsl r4, r2, #4
	str r0, [sp, #8]
	add r0, #0x4c
	lsl r1, r1, #2
	str r0, [sp, #8]
	str r5, [r0, r4]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	add r2, r5, r4
	str r3, [r2, #0x50]
	add r1, r5, r1
	add r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	str r0, [r6, r4]
	mov r0, #1
	str r0, [r2, #0x58]
	ldr r0, [r6, r4]
	bl sub_0200D3F4
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	beq _02221890
	b _022219DE
_02221890:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02235254
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02235254
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_022210A8
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022232FC
	cmp r0, #0
	beq _022218CC
	mov r1, #6
	bl sub_020080C0
	b _022218CE
_022218CC:
	mov r0, #0
_022218CE:
	cmp r0, #1
	ldr r0, [r6, r4]
	bne _022218DC
	mov r1, #0
	bl sub_0200D3F4
	b _022218E2
_022218DC:
	mov r1, #1
	bl sub_0200D3F4
_022218E2:
	ldr r0, [sp]
	cmp r0, #3
	bhi _022219D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022218F4: ; jump table
	.short _022218FC - _022218F4 - 2 ; case 0
	.short _0222194A - _022218F4 - 2 ; case 1
	.short _02221922 - _022218F4 - 2 ; case 2
	.short _0222198E - _022218F4 - 2 ; case 3
_022218FC:
	ldr r0, [sp, #4]
	sub r0, r0, #3
	cmp r0, #1
	bhi _0222190E
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0200D474
	b _022219D0
_0222190E:
	add r5, #0x54
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, r4]
	mov r1, #0xff
	bl sub_0200D474
	b _022219D0
_02221922:
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _0222192C
	cmp r0, #2
	bne _02221936
_0222192C:
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0200D474
	b _022219D0
_02221936:
	add r5, #0x54
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, r4]
	mov r1, #0xff
	bl sub_0200D474
	b _022219D0
_0222194A:
	cmp r7, #5
	bhi _022219D0
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222195A: ; jump table
	.short _022219D0 - _0222195A - 2 ; case 0
	.short _022219D0 - _0222195A - 2 ; case 1
	.short _02221966 - _0222195A - 2 ; case 2
	.short _02221970 - _0222195A - 2 ; case 3
	.short _0222197A - _0222195A - 2 ; case 4
	.short _02221984 - _0222195A - 2 ; case 5
_02221966:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl sub_0200D474
	b _022219D0
_02221970:
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0200D474
	b _022219D0
_0222197A:
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0200D474
	b _022219D0
_02221984:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl sub_0200D474
	b _022219D0
_0222198E:
	cmp r7, #5
	bhi _022219D0
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222199E: ; jump table
	.short _022219D0 - _0222199E - 2 ; case 0
	.short _022219D0 - _0222199E - 2 ; case 1
	.short _022219AA - _0222199E - 2 ; case 2
	.short _022219B4 - _0222199E - 2 ; case 3
	.short _022219BE - _0222199E - 2 ; case 4
	.short _022219C8 - _0222199E - 2 ; case 5
_022219AA:
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0200D474
	b _022219D0
_022219B4:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl sub_0200D474
	b _022219D0
_022219BE:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl sub_0200D474
	b _022219D0
_022219C8:
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0200D474
_022219D0:
	ldr r1, [sp, #8]
	mov r2, #1
	ldr r0, _022219E4 ; =ov12_02221810
	add r1, r1, r4
	lsl r2, r2, #0xc
	bl sub_0200D9E8
_022219DE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022219E4: .word ov12_02221810
	thumb_func_end ov12_02221834

	thumb_func_start ov12_022219E8
ov12_022219E8: ; 0x022219E8
	ldr r1, [r0, #0x18]
	mov r2, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r1, r3, #4
	add r0, r0, r1
	str r2, [r0, #0x58]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022219E8

	thumb_func_start ov12_02221A00
ov12_02221A00: ; 0x02221A00
	ldr r1, [r0, #0x18]
	ldr r3, _02221A10 ; =ov12_02221238
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2, #0]
	add r2, r2, #4
	str r2, [r0, #0x18]
	bx r3
	; .align 2, 0
_02221A10: .word ov12_02221238
	thumb_func_end ov12_02221A00

	thumb_func_start ov12_02221A14
ov12_02221A14: ; 0x02221A14
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r0, r0, r3
	add r0, #0x6c
	strb r2, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221A14

	thumb_func_start ov12_02221A30
ov12_02221A30: ; 0x02221A30
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r0, r0, r3
	add r0, #0x7c
	strb r2, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221A30

	thumb_func_start ov12_02221A4C
ov12_02221A4C: ; 0x02221A4C
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221A4C

	thumb_func_start ov12_02221A50
ov12_02221A50: ; 0x02221A50
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02221A50

	thumb_func_start ov12_02221A54
ov12_02221A54: ; 0x02221A54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r5, r0, #0
	ldrh r1, [r1, #0x14]
	add r0, r4, #0
	add r6, r2, #0
	bl ov12_0223525C
	add r7, r0, #0
	add r0, r4, #0
	add r4, #0xc0
	ldr r1, [r4, #0]
	ldrh r1, [r1, #0x16]
	bl ov12_0223525C
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x1c]
	cmp r1, #2
	bne _02221A98
	cmp r7, r0
	bne _02221A90
	cmp r0, #3
	beq _02221A8C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02221A8C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221A90:
	cmp r0, #3
	bne _02221AA4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02221A98:
	cmp r1, #0
	beq _02221AA4
	cmp r0, #3
	bne _02221AA4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02221AA4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02221A54

	thumb_func_start ov12_02221AA8
ov12_02221AA8: ; 0x02221AA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0
	add r4, r2, #0
	str r3, [sp, #0x10]
	bl ov12_022234E4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r2, r5, #0
	str r0, [sp, #0xc]
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #7
	add r3, r4, #0
	bl sub_02006E3C
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl ov12_022234E4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r3, [r5, #0]
	mov r1, #7
	bl sub_02003050
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r0, r5, #0
	mov r6, #2
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02221B1C
	mov r6, #4
	b _02221B2C
_02221B1C:
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #7
	bl ov12_02221A54
	cmp r0, #1
	bne _02221B2C
	mov r6, #3
_02221B2C:
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	bl ov12_022234E4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r5, #0xc4
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r0, #7
	add r3, r4, #0
	bl sub_02006E60
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02221AA8

	thumb_func_start ov12_02221B54
ov12_02221B54: ; 0x02221B54
	lsl r0, r0, #0x10
	and r0, r1
	cmp r1, r0
	bne _02221B60
	mov r0, #1
	bx lr
_02221B60:
	mov r0, #0
	bx lr
	thumb_func_end ov12_02221B54

	thumb_func_start ov12_02221B64
ov12_02221B64: ; 0x02221B64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _02221BB4 ; =0x02238594
	add r2, sp, #0
	add r5, r0, #0
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r7, _02221BB8 ; =0x02238644
	mov r6, #0
_02221B7C:
	ldr r0, [r5, #0x18]
	ldr r1, [r4, #0]
	bl ov12_02221B54
	cmp r0, #0
	beq _02221BA6
	ldr r0, [r4, #0]
	mov r1, #0
	lsr r2, r0, #0x10
	cmp r2, #2
	blt _02221B9E
_02221B92:
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	add r1, r1, #1
	cmp r2, #2
	bge _02221B92
_02221B9E:
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	add r0, r5, #0
	blx r1
_02221BA6:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blo _02221B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221BB4: .word 0x02238594
_02221BB8: .word 0x02238644
	thumb_func_end ov12_02221B64

	thumb_func_start ov12_02221BBC
ov12_02221BBC: ; 0x02221BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x4c
	bl sub_02018144
	add r4, r0, #0
	bne _02221BD4
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02221BD4:
	mov r1, #0
	mov r2, #0x4c
	bl sub_020D5124
	mov r0, #0
	str r0, [r4, #0]
	strb r0, [r4, #5]
	str r5, [r4, #0x48]
	strb r0, [r4, #9]
	mov r0, #0x1f
	strb r0, [r4, #0xa]
	mov r0, #0x1d
	strb r0, [r4, #0xb]
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	cmp r0, #1
	bne _02221C0E
	mov r0, #0
	strb r0, [r4, #9]
	mov r0, #0x1f
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #0xb]
	mov r0, #7
	strb r0, [r4, #0xc]
_02221C0E:
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	cmp r0, #2
	bne _02221C2A
	mov r0, #7
	strb r0, [r4, #9]
	mov r0, #0xf
	strb r0, [r4, #0xa]
	mov r0, #0x1d
	strb r0, [r4, #0xb]
	mov r0, #2
	strb r0, [r4, #0xc]
_02221C2A:
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
_02221C30:
	add r0, r2, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r1, #1
	str r0, [r3, #0x1c]
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #0xa
	blt _02221C30
	mov r0, #0x5f
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02221BBC

	thumb_func_start ov12_02221C50
ov12_02221C50: ; 0x02221C50
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _02221C64
	cmp r0, #1
	beq _02221CA2
	cmp r0, #2
	beq _02221CF4
	b _02221D3E
_02221C64:
	ldr r0, [r5, #0x48]
	mov r1, #2
	bl ov12_02222590
	ldr r0, [r5, #0x48]
	mov r1, #2
	bl ov12_02223428
	add r4, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl ov12_02223428
	lsl r1, r4, #0x18
	mov r0, #3
	lsr r1, r1, #0x18
	bl sub_02019060
	lsl r1, r4, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r5, #5]
	add r0, r0, #1
	strb r0, [r5, #5]
	b _02221D42
_02221CA2:
	ldr r0, [r5, #0x48]
	mov r1, #3
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r2, #2
	add r3, r1, #0
	bl sub_02018898
	ldr r0, [r5, #0x48]
	bl ov12_0221FDD4
	cmp r0, #1
	beq _02221CCC
	ldr r0, [r5, #0x48]
	mov r2, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02018898
_02221CCC:
	ldr r1, [r5, #0x48]
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	mov r2, #3
	bl ov12_02221AA8
	ldrb r0, [r5, #9]
	mov r1, #4
	mov r2, #8
	str r0, [sp]
	ldrb r3, [r5, #0xa]
	ldr r0, _02221D48 ; =0x04000050
	bl sub_020BF55C
	add r0, r5, #0
	bl ov12_02221B64
	ldrb r0, [r5, #5]
	add r0, r0, #1
	strb r0, [r5, #5]
_02221CF4:
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xb]
	mov r2, #0
	cmp r1, r0
	bhs _02221D04
	add r0, r1, #2
	strb r0, [r5, #9]
	b _02221D06
_02221D04:
	add r2, r2, #1
_02221D06:
	ldrb r1, [r5, #0xa]
	ldrb r0, [r5, #0xc]
	cmp r1, r0
	bls _02221D14
	sub r0, r1, #2
	strb r0, [r5, #0xa]
	b _02221D16
_02221D14:
	add r2, r2, #1
_02221D16:
	cmp r2, #2
	bne _02221D28
	ldrb r0, [r5, #0xb]
	strb r0, [r5, #9]
	ldrb r0, [r5, #0xc]
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #5]
	add r0, r0, #1
	strb r0, [r5, #5]
_02221D28:
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #0xa]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02221D4C ; =0x04000052
	strh r1, [r0]
	ldrb r0, [r5, #5]
	cmp r0, #2
	beq _02221D42
	mov r0, #0
	pop {r3, r4, r5, pc}
_02221D3E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02221D42:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02221D48: .word 0x04000050
_02221D4C: .word 0x04000052
	thumb_func_end ov12_02221C50

	thumb_func_start ov12_02221D50
ov12_02221D50: ; 0x02221D50
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldrb r0, [r4, #5]
	cmp r0, #4
	bls _02221D5E
	b _02221F30
_02221D5E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221D6A: ; jump table
	.short _02221D74 - _02221D6A - 2 ; case 0
	.short _02221D82 - _02221D6A - 2 ; case 1
	.short _02221DC4 - _02221D6A - 2 ; case 2
	.short _02221E0A - _02221D6A - 2 ; case 3
	.short _02221F0C - _02221D6A - 2 ; case 4
_02221D74:
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02221D82:
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov12_02223428
	add r5, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl ov12_02223428
	lsl r1, r5, #0x18
	mov r0, #3
	lsr r1, r1, #0x18
	bl sub_02019060
	lsl r1, r5, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_02019060
	ldrb r0, [r4, #0xa]
	mov r1, #4
	mov r2, #8
	str r0, [sp]
	ldrb r3, [r4, #9]
	ldr r0, _02221F3C ; =0x04000050
	bl sub_020BF55C
	add r0, r4, #0
	bl ov12_02221B64
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02221DC4:
	ldrb r1, [r4, #9]
	ldrb r0, [r4, #0xb]
	mov r2, #0
	cmp r1, r0
	bhs _02221DD4
	add r0, r1, #2
	strb r0, [r4, #9]
	b _02221DD6
_02221DD4:
	add r2, r2, #1
_02221DD6:
	ldrb r1, [r4, #0xa]
	ldrb r0, [r4, #0xc]
	cmp r1, r0
	bls _02221DE4
	sub r0, r1, #2
	strb r0, [r4, #0xa]
	b _02221DE6
_02221DE4:
	add r2, r2, #1
_02221DE6:
	cmp r2, #2
	bne _02221DFC
	ldrb r0, [r4, #0xb]
	add r0, r0, #2
	strb r0, [r4, #9]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02221DFC:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02221F40 ; =0x04000052
	strh r1, [r0]
	b _02221F36
_02221E0A:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02221E1E
	ldr r0, [r4, #0x48]
	bl ov12_02222338
_02221E1E:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02221E32
	ldr r0, [r4, #0x48]
	bl ov12_02222338
_02221E32:
	ldr r0, [r4, #0x48]
	mov r2, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0x48]
	mov r1, #3
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x48]
	mov r1, #3
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r2, #2
	mov r3, #4
	bl sub_02018898
	ldr r0, [r4, #0x48]
	bl ov12_0221FDD4
	cmp r0, #0
	bne _02221E8C
	ldr r0, [r4, #0x48]
	mov r1, #3
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r2, #0
	mov r3, #1
	bl sub_02018898
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl ov12_02223460
	ldr r0, [r4, #0x48]
	bl ov12_02223488
	b _02221EE0
_02221E8C:
	ldr r2, [r4, #0x48]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r3, #3
	bl sub_02006E3C
	mov r2, #0x66
	lsl r2, r2, #2
	add r1, r2, #0
	ldr r3, [r4, #0x48]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r3, r2]
	sub r1, #0x14
	lsl r0, r0, #5
	str r0, [sp, #4]
	sub r0, r2, #4
	ldr r0, [r3, r0]
	sub r2, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	ldr r3, [r3, #0]
	bl sub_02003050
_02221EE0:
	ldr r2, [r4, #0x48]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r2, r1]
	add r1, #0xc
	ldr r1, [r2, r1]
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r3, #3
	bl sub_02006E60
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02221F36
_02221F0C:
	ldr r0, [r4, #0x48]
	bl ov12_0221FDD4
	cmp r0, #0
	bne _02221F1C
	bl ov16_0223F9F0
	b _02221F20
_02221F1C:
	bl ov17_022413D8
_02221F20:
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ov12_02222664
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02221F36
_02221F30:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_02221F36:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221F3C: .word 0x04000050
_02221F40: .word 0x04000052
	thumb_func_end ov12_02221D50

	thumb_func_start ov12_02221F44
ov12_02221F44: ; 0x02221F44
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02221F56
	cmp r0, #1
	beq _02221FD2
	b _0222204E
_02221F56:
	ldrb r0, [r4, #0xd]
	ldr r2, [r4, #0x48]
	cmp r0, #0
	bne _02221F94
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r5, #0x67
	add r0, r2, #0
	str r3, [sp, #8]
	lsl r5, r5, #2
	ldr r2, [r2, r5]
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x48]
	add r2, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	add r2, #0x64
	mov r3, #0x10
	bl sub_02003A2C
	b _02221FCC
_02221F94:
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02222068 ; =0x0000FFFF
	mov r5, #0x67
	str r0, [sp, #8]
	add r0, r2, #0
	lsl r5, r5, #2
	ldr r2, [r2, r5]
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_02003178
	ldr r0, _02222068 ; =0x0000FFFF
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [r4, #0x48]
	mov r1, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	add r2, #0x64
	mov r3, #0x10
	bl sub_02003A2C
_02221FCC:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02221FD2:
	ldr r0, [r4, #0x48]
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02222062
	ldr r0, [r4, #0x48]
	mov r2, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02018898
	ldr r1, [r4, #0x48]
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	mov r2, #3
	bl ov12_02221AA8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0222201C
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r1, #1
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	bl sub_02003178
	b _02222036
_0222201C:
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r0, _02222068 ; =0x0000FFFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r1, #1
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	bl sub_02003178
_02222036:
	add r0, r4, #0
	bl ov12_02221B64
	mov r0, #0x5f
	ldr r1, [r4, #0x48]
	mov r2, #2
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02222062
_0222204E:
	ldr r0, [r4, #0x48]
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02222062
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02222062:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02222068: .word 0x0000FFFF
	thumb_func_end ov12_02221F44

	thumb_func_start ov12_0222206C
ov12_0222206C: ; 0x0222206C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldrb r0, [r4, #5]
	cmp r0, #3
	bls _0222207A
	b _02222276
_0222207A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222086: ; jump table
	.short _0222208E - _02222086 - 2 ; case 0
	.short _0222209A - _02222086 - 2 ; case 1
	.short _02222114 - _02222086 - 2 ; case 2
	.short _02222204 - _02222086 - 2 ; case 3
_0222208E:
	add r0, r4, #0
	bl ov12_02221B64
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_0222209A:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _022220D6
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r1, #1
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	bl sub_02003178
	ldr r3, [r4, #0x48]
	mov r1, #0
	mov r2, #0x67
	add r0, r3, #0
	str r1, [sp]
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02003A2C
	b _0222210E
_022220D6:
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _022222A0 ; =0x0000FFFF
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	lsl r2, r1, #9
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_02003178
	mov r2, #0x67
	ldr r3, [r4, #0x48]
	ldr r0, _022222A0 ; =0x0000FFFF
	lsl r2, r2, #2
	str r0, [sp]
	add r0, r3, #0
	ldr r2, [r3, r2]
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02003A2C
_0222210E:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02222114:
	ldr r0, [r4, #0x48]
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	beq _02222124
	b _0222229A
_02222124:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02222138
	ldr r0, [r4, #0x48]
	bl ov12_02222338
_02222138:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222214C
	ldr r0, [r4, #0x48]
	bl ov12_02222338
_0222214C:
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x48]
	bl ov12_0221FDD4
	cmp r0, #0
	bne _0222217E
	ldr r0, [r4, #0x48]
	mov r1, #3
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r2, #0
	mov r3, #1
	bl sub_02018898
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl ov12_02223460
	ldr r0, [r4, #0x48]
	bl ov12_02223488
	b _022221D2
_0222217E:
	ldr r2, [r4, #0x48]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r3, #3
	bl sub_02006E3C
	mov r2, #0x66
	lsl r2, r2, #2
	add r1, r2, #0
	ldr r3, [r4, #0x48]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r3, r2]
	sub r1, #0x14
	lsl r0, r0, #5
	str r0, [sp, #4]
	sub r0, r2, #4
	ldr r0, [r3, r0]
	sub r2, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	ldr r3, [r3, #0]
	bl sub_02003050
_022221D2:
	ldr r2, [r4, #0x48]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r2, r1]
	add r1, #0xc
	ldr r1, [r2, r1]
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r3, #3
	bl sub_02006E60
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02222204:
	ldr r0, [r4, #0x48]
	mov r2, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0x48]
	mov r1, #3
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldrb r0, [r4, #0xd]
	ldr r2, [r4, #0x48]
	cmp r0, #0
	bne _0222224E
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r5, #0x67
	add r0, r2, #0
	str r3, [sp, #8]
	lsl r5, r5, #2
	ldr r2, [r2, r5]
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_02003178
	b _02222270
_0222224E:
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	mov r5, #0x67
	ldr r0, _022222A0 ; =0x0000FFFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0
	lsl r5, r5, #2
	ldr r2, [r2, r5]
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_02003178
_02222270:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02222276:
	ldr r0, [r4, #0x48]
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0222229A
	mov r0, #0x5f
	ldr r1, [r4, #0x48]
	mov r2, #2
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldrb r0, [r4, #5]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222229A:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022222A0: .word 0x0000FFFF
	thumb_func_end ov12_0222206C

	thumb_func_start ov12_022222A4
ov12_022222A4: ; 0x022222A4
	push {r3, lr}
	add r0, r1, #0
	bl ov12_02221B64
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov12_022222A4

	thumb_func_start ov12_022222B0
ov12_022222B0: ; 0x022222B0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov12_02221B64
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022222CE
	ldr r0, [r4, #0x48]
	bl ov12_02222338
_022222CE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022222B0

	thumb_func_start ov12_022222D4
ov12_022222D4: ; 0x022222D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _022222EE
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_022222EE:
	mov r3, #4
	mov r1, #8
	ldrsh r2, [r4, r3]
	ldrsh r0, [r4, r1]
	add r0, r2, r0
	strh r0, [r4, #4]
	mov r0, #6
	ldrsh r2, [r4, r0]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	strh r0, [r4, #6]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0222231C
	ldr r1, [r4, #0xc]
	ldrsh r3, [r4, r3]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
_0222231C:
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _02222336
	ldr r1, [r4, #0xc]
	mov r3, #6
	lsl r1, r1, #0x18
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
_02222336:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022222D4

	thumb_func_start ov12_02222338
ov12_02222338: ; 0x02222338
	push {r4, lr}
	add r4, r0, #0
	bne _02222342
	bl sub_02022974
_02222342:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02222350
	mov r0, #1
	str r0, [r1, #0x18]
_02222350:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02222338

	thumb_func_start ov12_02222354
ov12_02222354: ; 0x02222354
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_02222354

	thumb_func_start ov12_0222235C
ov12_0222235C: ; 0x0222235C
	mov r0, #0
	bx lr
	thumb_func_end ov12_0222235C

	thumb_func_start ov12_02222360
ov12_02222360: ; 0x02222360
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0x20
	ldr r0, [r0, #0]
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0x48]
	mov r2, #6
	add r0, #0xc4
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #0x48]
	add r0, #0x9c
	ldr r0, [r0, #0]
	strh r0, [r4, #4]
	ldr r0, [r5, #0x48]
	add r0, #0xa0
	ldr r0, [r0, #0]
	strh r0, [r4, #6]
	ldr r0, [r5, #0x48]
	add r0, #0x94
	ldr r0, [r0, #0]
	strh r0, [r4, #8]
	ldr r0, [r5, #0x48]
	add r0, #0x98
	ldr r0, [r0, #0]
	strh r0, [r4, #0xa]
	mov r0, #3
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov12_02221A54
	cmp r0, #1
	bne _022223D4
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r0, #9
	mul r0, r1
	strh r0, [r4, #8]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r0, #0xb
	mul r0, r1
	strh r0, [r4, #0xa]
	mov r0, #4
	ldrsh r1, [r4, r0]
	sub r0, r0, #5
	mul r0, r1
	strh r0, [r4, #4]
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r0, #7
	mul r0, r1
	strh r0, [r4, #6]
_022223D4:
	mov r0, #1
	str r0, [r4, #0x14]
	mov r1, #0
	str r1, [r4, #0x18]
	mov r1, #6
	ldr r2, [r5, #0x48]
	lsl r1, r1, #6
	str r4, [r2, r1]
	add r1, r5, #0
	add r1, #0x44
	ldrh r2, [r1]
	mov r1, #1
	add r5, #0x44
	bic r2, r1
	orr r0, r2
	strh r0, [r5]
	ldr r0, _02222404 ; =ov12_022222D4
	ldr r2, _02222408 ; =0x00001001
	add r1, r4, #0
	bl sub_0200D9E8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02222404: .word ov12_022222D4
_02222408: .word 0x00001001
	thumb_func_end ov12_02222360

	thumb_func_start ov12_0222240C
ov12_0222240C: ; 0x0222240C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [r0, #0x48]
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x20
	bl sub_02018144
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0xc4
	bl sub_02018144
	str r0, [r6, #0x1c]
	mov r0, #6
	lsl r0, r0, #6
	str r6, [r4, r0]
	ldr r0, [sp]
	mov r1, #2
	add r0, #0x44
	ldrh r0, [r0]
	add r2, r0, #0
	ldr r0, [sp]
	orr r2, r1
	add r0, #0x44
	strh r2, [r0]
	mov r0, #0
	str r0, [r6, #0x18]
	add r0, r4, #0
	bl ov12_022233EC
	bl ov12_022266F0
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov12_022266E8
	add r1, r0, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl ov12_02226544
	mov r4, #0
	ldr r1, [r6, #0x1c]
	ldr r7, _022224DC ; =0x02238660
	add r1, #0xc0
	str r0, [r1, #0]
	str r4, [sp, #4]
	add r5, r4, #0
_02222470:
	ldr r0, [r6, #0x1c]
	strh r4, [r0, r5]
	ldr r0, [r6, #0x1c]
	add r1, r0, r5
	ldrsh r0, [r0, r5]
	add r0, #8
	strh r0, [r1, #2]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r6, #0x1c]
	add r0, r0, r5
	strh r1, [r0, #4]
	ldr r0, [r6, #0x1c]
	add r1, r0, r5
	mov r0, #0
	strh r0, [r1, #6]
	add r1, r0, #0
	bl ov12_022266E8
	ldr r1, [r6, #0x1c]
	mov r2, #6
	add r1, r1, r5
	str r0, [r1, #8]
	ldr r0, [sp]
	add r1, r0, #0
	ldr r1, [r1, #0x48]
	bl ov12_02221A54
	cmp r0, #1
	bne _022224BA
	ldr r0, [r6, #0x1c]
	mov r1, #4
	add r0, r0, r5
	ldrsh r2, [r0, r1]
	sub r1, r1, #5
	mul r1, r2
	strh r1, [r0, #4]
_022224BA:
	ldr r0, [sp, #4]
	add r4, #8
	add r0, r0, #1
	add r5, #0xc
	add r7, r7, #2
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _02222470
	mov r2, #1
	ldr r0, _022224E0 ; =ov12_022224F8
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022224DC: .word 0x02238660
_022224E0: .word ov12_022224F8
	thumb_func_end ov12_0222240C

	thumb_func_start ov12_022224E4
ov12_022224E4: ; 0x022224E4
	add r1, r0, #0
	add r1, #0x44
	ldrh r2, [r1]
	mov r1, #2
	add r0, #0x44
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022224E4

	thumb_func_start ov12_022224F8
ov12_022224F8: ; 0x022224F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	ldr r4, [r5, #0x1c]
	cmp r0, #1
	bne _02222526
	add r4, #0xc0
	ldr r0, [r4, #0]
	bl ov12_022265C0
	ldr r0, [r5, #0x1c]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02222526:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl ov12_022265E4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
_02222536:
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #6]
	mov r0, #0
	ldrsh r6, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	bge _0222257E
	ldr r0, [sp]
	lsl r1, r6, #2
	add r5, r0, r1
	mov r7, #2
_02222556:
	ldr r1, [r4, #8]
	mov r2, #6
	lsl r0, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	ldrsh r2, [r4, r2]
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	add r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov12_022266E8
	stmia r5!, {r0}
	ldrsh r0, [r4, r7]
	add r6, r6, #1
	cmp r6, r0
	blt _02222556
_0222257E:
	ldr r0, [sp, #4]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _02222536
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022224F8

	thumb_func_start ov12_02222590
ov12_02222590: ; 0x02222590
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_02019120
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022225D4
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #4
	bl sub_02018898
	b _022225F8
_022225D4:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	mov r2, #0
	mov r3, #1
	bl sub_02018898
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #4
	bl sub_02018898
_022225F8:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02222636
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #0x61
	add r2, r5, #0
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	add r2, #0xc4
	ldr r1, [r5, r1]
	ldr r2, [r2, #0]
	add r3, r4, #0
	bl sub_02006E3C
	b _0222263E
_02222636:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02223460
_0222263E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	add r5, #0xc4
	ldr r2, [r5, #0]
	add r3, r4, #0
	bl sub_02006E60
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02222590

	thumb_func_start ov12_02222664
ov12_02222664: ; 0x02222664
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222269C
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #3
	bl sub_02018898
	b _022226C0
_0222269C:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	mov r2, #0
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02018898
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #3
	bl sub_02018898
_022226C0:
	add r5, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r5, #0]
	lsr r1, r1, #0x18
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02222664

	thumb_func_start ov12_022226D0
ov12_022226D0: ; 0x022226D0
	add r1, r0, #0
	add r1, #0x44
	ldrh r2, [r1]
	mov r1, #1
	add r0, #0x44
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022226D0

	thumb_func_start ov12_022226E8
ov12_022226E8: ; 0x022226E8
	push {r3, lr}
	ldr r0, [r0, #0x48]
	bl ov12_02222338
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov12_022226E8

	thumb_func_start ov12_022226F4
ov12_022226F4: ; 0x022226F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	lsl r3, r2, #2
	ldr r2, _02222720 ; =0x022385CC
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	bne _0222271E
	mov r0, #0x5f
	ldr r1, [r4, #0x48]
	mov r2, #0
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0222271E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222720: .word 0x022385CC
	thumb_func_end ov12_022226F4

	thumb_func_start ov12_02222724
ov12_02222724: ; 0x02222724
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02221BBC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x18]
	ldr r2, _02222768 ; =0x0000044C
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x14]
	ldr r0, _0222276C ; =0xFFFF0000
	and r0, r1
	lsr r0, r0, #0x10
	str r0, [r4, #0x18]
	ldr r0, _02222770 ; =ov12_022226F4
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222768: .word 0x0000044C
_0222276C: .word 0xFFFF0000
_02222770: .word ov12_022226F4
	thumb_func_end ov12_02222724

	thumb_func_start ov12_02222774
ov12_02222774: ; 0x02222774
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2, #0]
	add r2, r2, #4
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r2, [r0, #0x18]
	cmp r3, #3
	bhi _022227C8
	add r2, r3, r3
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222279A: ; jump table
	.short _022227A2 - _0222279A - 2 ; case 0
	.short _022227AC - _0222279A - 2 ; case 1
	.short _022227B6 - _0222279A - 2 ; case 2
	.short _022227C0 - _0222279A - 2 ; case 3
_022227A2:
	mov r2, #6
	lsl r2, r2, #6
	ldr r0, [r0, r2]
	strh r1, [r0, #8]
	bx lr
_022227AC:
	mov r2, #6
	lsl r2, r2, #6
	ldr r0, [r0, r2]
	strh r1, [r0, #0xa]
	bx lr
_022227B6:
	mov r2, #6
	lsl r2, r2, #6
	ldr r0, [r0, r2]
	strh r1, [r0, #4]
	bx lr
_022227C0:
	mov r2, #6
	lsl r2, r2, #6
	ldr r0, [r0, r2]
	strh r1, [r0, #4]
_022227C8:
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02222774

	thumb_func_start ov12_022227CC
ov12_022227CC: ; 0x022227CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02221BBC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x18]
	ldr r2, _02222814 ; =0x0000044C
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	add r1, r1, #3
	str r1, [r4, #0x14]
	ldr r1, _02222818 ; =0xFFFF0000
	and r0, r1
	lsr r0, r0, #0x10
	str r0, [r4, #0x18]
	ldr r0, _0222281C ; =ov12_022226F4
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_02222814: .word 0x0000044C
_02222818: .word 0xFFFF0000
_0222281C: .word ov12_022226F4
	thumb_func_end ov12_022227CC

	thumb_func_start ov12_02222820
ov12_02222820: ; 0x02222820
	mov r1, #0x5f
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #2
	bne _02222838
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0
	add r0, #0x8d
	strb r1, [r0]
	bx lr
_02222838:
	mov r1, #1
	add r0, #0x8d
	strb r1, [r0]
	bx lr
	thumb_func_end ov12_02222820

	thumb_func_start ov12_02222840
ov12_02222840: ; 0x02222840
	mov r1, #0x5f
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _02222858
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0
	add r0, #0x8d
	strb r1, [r0]
	bx lr
_02222858:
	mov r1, #1
	add r0, #0x8d
	strb r1, [r0]
	bx lr
	thumb_func_end ov12_02222840

	thumb_func_start ov12_02222860
ov12_02222860: ; 0x02222860
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r4, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl ov12_022234E4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r2, r5, #0
	str r0, [sp, #0xc]
	add r2, #0xc4
	ldr r2, [r2, #0]
	mov r0, #7
	mov r3, #3
	bl sub_02006E3C
	add r0, r4, #0
	mov r1, #1
	bl ov12_022234E4
	mov r2, #0
	str r2, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0]
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #7
	bl sub_02006E84
	add r0, r4, #0
	mov r1, #2
	bl ov12_022234E4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r5, #0xc4
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r0, #7
	mov r3, #3
	bl sub_02006E60
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02222860

	thumb_func_start ov12_022228DC
ov12_022228DC: ; 0x022228DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov12_02221BBC
	add r4, r0, #0
	ldr r0, [r5, #0x18]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1, #0]
	str r0, [sp]
	add r0, r1, #4
	str r0, [r5, #0x18]
	ldr r7, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r6, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222290E
	str r6, [r4, #0x10]
	b _02222926
_0222290E:
	add r0, r5, #0
	add r5, #0xc0
	ldr r1, [r5, #0]
	ldrh r1, [r1, #0x16]
	bl ov12_0223525C
	cmp r0, #3
	bne _02222922
	str r7, [r4, #0x10]
	b _02222926
_02222922:
	ldr r0, [sp]
	str r0, [r4, #0x10]
_02222926:
	ldr r0, _02222934 ; =ov12_022226F4
	ldr r2, _02222938 ; =0x0000044C
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222934: .word ov12_022226F4
_02222938: .word 0x0000044C
	thumb_func_end ov12_022228DC

	thumb_func_start ov12_0222293C
ov12_0222293C: ; 0x0222293C
	bx lr
	; .align 2, 0
	thumb_func_end ov12_0222293C

	thumb_func_start ov12_02222940
ov12_02222940: ; 0x02222940
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02222940

	thumb_func_start ov12_02222944
ov12_02222944: ; 0x02222944
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02222944

	thumb_func_start ov12_02222948
ov12_02222948: ; 0x02222948
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02222948

	thumb_func_start ov12_0222294C
ov12_0222294C: ; 0x0222294C
	bx lr
	; .align 2, 0
	thumb_func_end ov12_0222294C

	thumb_func_start ov12_02222950
ov12_02222950: ; 0x02222950
	ldr r1, [r0, #0x18]
	ldr r3, _02222964 ; =sub_02005748
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	bx r3
	; .align 2, 0
_02222964: .word sub_02005748
	thumb_func_end ov12_02222950

	thumb_func_start ov12_02222968
ov12_02222968: ; 0x02222968
	ldr r1, [r0, #0x18]
	ldr r3, _02222980 ; =sub_020057A4
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bx r3
	nop
_02222980: .word sub_020057A4
	thumb_func_end ov12_02222968

	thumb_func_start ov12_02222984
ov12_02222984: ; 0x02222984
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0x18]
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2, #0]
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r2, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r1, r2, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02005748
	ldr r1, _022229B8 ; =0x0000FFFF
	add r0, r4, #0
	add r2, r5, #0
	bl sub_020057FC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022229B8: .word 0x0000FFFF
	thumb_func_end ov12_02222984

	thumb_func_start ov12_022229BC
ov12_022229BC: ; 0x022229BC
	push {r3, lr}
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r1, r2, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	bl sub_02005818
	pop {r3, pc}
	thumb_func_end ov12_022229BC

	thumb_func_start ov12_022229D8
ov12_022229D8: ; 0x022229D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02220314
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #1
	strb r0, [r4]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strh r0, [r4, #0x1a]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r4, #8]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	asr r0, r0, #0x18
	asr r1, r1, #0x18
	asr r2, r2, #0x18
	bl ov12_02223234
	str r0, [r4, #0x10]
	ldrh r0, [r4, #0x1a]
	bl sub_02005748
	ldrh r0, [r4, #0x1a]
	ldr r1, _02222A74 ; =0x0000FFFF
	ldr r2, [r4, #8]
	bl sub_020057FC
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02220344
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222A74: .word 0x0000FFFF
	thumb_func_end ov12_022229D8

	thumb_func_start ov12_02222A78
ov12_02222A78: ; 0x02222A78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02220314
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strh r0, [r4, #0x1a]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldrh r0, [r4, #0x1a]
	bl sub_02005748
	ldrh r0, [r4, #0x1a]
	ldr r1, _02222AEC ; =0x0000FFFF
	ldr r2, [r4, #8]
	bl sub_020057FC
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02220344
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222AEC: .word 0x0000FFFF
	thumb_func_end ov12_02222A78

	thumb_func_start ov12_02222AF0
ov12_02222AF0: ; 0x02222AF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02220314
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #1
	strb r0, [r4]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strh r0, [r4, #0x1a]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r4, #8]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #0x10]
	ldrh r0, [r4, #0x1a]
	bl sub_02005748
	ldrh r0, [r4, #0x1a]
	ldr r1, _02222B90 ; =0x0000FFFF
	ldr r2, [r4, #8]
	bl sub_020057FC
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02220344
	pop {r3, r4, r5, pc}
	nop
_02222B90: .word 0x0000FFFF
	thumb_func_end ov12_02222AF0

	thumb_func_start ov12_02222B94
ov12_02222B94: ; 0x02222B94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02220314
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #4
	strb r0, [r4]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strh r0, [r4, #0x1a]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strb r0, [r4, #0x18]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldrb r0, [r4, #3]
	strb r0, [r4, #4]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02220344
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02222B94

	thumb_func_start ov12_02222BF8
ov12_02222BF8: ; 0x02222BF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_02220314
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #5
	strb r0, [r4]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strh r0, [r4, #0x1a]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02220344
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02222BF8

	thumb_func_start ov12_02222C50
ov12_02222C50: ; 0x02222C50
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02222C50

	thumb_func_start ov12_02222C54
ov12_02222C54: ; 0x02222C54
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	ldrh r0, [r0]
	cmp r0, #0
	beq _02222C70
	add r0, r4, #0
	mov r1, #1
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _02222CA8 ; =0x0000017D
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
_02222C70:
	bl sub_020057E0
	cmp r0, #0
	beq _02222C94
	ldr r0, _02222CA8 ; =0x0000017D
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #0x5a
	bls _02222C8C
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
_02222C8C:
	mov r0, #1
	add r4, #0x8d
	strb r0, [r4]
	pop {r4, pc}
_02222C94:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _02222CA8 ; =0x0000017D
	strb r1, [r4, r0]
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
_02222CA8: .word 0x0000017D
	thumb_func_end ov12_02222C54

	thumb_func_start ov12_02222CAC
ov12_02222CAC: ; 0x02222CAC
	push {r3, lr}
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r0, _02222CD8 ; =0x04001050
	mov r1, #1
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_020BF55C
	pop {r3, pc}
	nop
_02222CD8: .word 0x04001050
	thumb_func_end ov12_02222CAC

	thumb_func_start ov12_02222CDC
ov12_02222CDC: ; 0x02222CDC
	ldr r3, _02222CE0 ; =ov12_02220474
	bx r3
	; .align 2, 0
_02222CE0: .word ov12_02220474
	thumb_func_end ov12_02222CDC

	thumb_func_start ov12_02222CE4
ov12_02222CE4: ; 0x02222CE4
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02222CE4

	thumb_func_start ov12_02222CE8
ov12_02222CE8: ; 0x02222CE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r5, #0
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r7, [r0, #0]
	add r0, r0, #4
	lsl r4, r1, #2
	add r6, #0xcc
	str r0, [r5, #0x18]
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _02222D10
	bl sub_02022974
_02222D10:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C704
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _02222D2A
	bl sub_02022974
_02222D2A:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [r6, r4]
	add r0, #0xac
	ldr r0, [r0, #0]
	add r2, r7, #0
	bl sub_0200C7C0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	add r0, r5, #0
	mov r1, #0
	add r2, sp, #0
	add r0, #0x18
_02222D5C:
	ldr r3, [r5, #0x18]
	add r1, r1, #1
	ldr r3, [r3, #0]
	str r3, [r2, #0]
	ldr r3, [r0, #0]
	add r2, r2, #4
	add r3, r3, #4
	str r3, [r0, #0]
	cmp r1, #6
	blt _02222D5C
	add r5, #0xc0
	ldr r0, [r5, #0]
	ldr r1, [r6, r4]
	add r0, #0xac
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_0200CB30
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02222CE8

	thumb_func_start ov12_02222D84
ov12_02222D84: ; 0x02222D84
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r4, #0x6b
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r3, [r0, #0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02222DC8 ; =0x00001388
	lsl r1, r1, #2
	add r0, r3, r0
	str r0, [sp, #8]
	add r0, r2, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, r2, r1
	add r0, #0xac
	add r1, #0xcc
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, r4]
	bl sub_0200CC3C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02222DC8: .word 0x00001388
	thumb_func_end ov12_02222D84

	thumb_func_start ov12_02222DCC
ov12_02222DCC: ; 0x02222DCC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	ldr r3, [r0, #0]
	add r0, r0, #4
	str r0, [r4, #0x18]
	ldr r1, [r0, #0]
	add r2, r0, #4
	str r2, [r4, #0x18]
	ldr r0, [r2, #0]
	add r2, r2, #4
	str r2, [r4, #0x18]
	mov r2, #0x1b
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	str r2, [sp]
	str r1, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02222E28 ; =0x00001388
	add r2, r4, #0
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r3, r4, r3
	add r0, #0xc8
	add r2, #0xac
	add r3, #0xcc
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	mov r1, #2
	bl sub_0200CDC4
	add sp, #0x18
	pop {r4, pc}
	nop
_02222E28: .word 0x00001388
	thumb_func_end ov12_02222DCC

	thumb_func_start ov12_02222E2C
ov12_02222E2C: ; 0x02222E2C
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r4, #0x6d
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r3, [r0, #0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, _02222E70 ; =0x00001388
	lsl r1, r1, #2
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r2, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, r2, r1
	add r0, #0xac
	add r1, #0xcc
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, r4]
	bl sub_0200CE24
	add sp, #8
	pop {r4, pc}
	nop
_02222E70: .word 0x00001388
	thumb_func_end ov12_02222E2C

	thumb_func_start ov12_02222E74
ov12_02222E74: ; 0x02222E74
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r4, #0x6e
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r1, [r0, #0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r3, [r0, #0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, _02222EB8 ; =0x00001388
	lsl r1, r1, #2
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r2, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, r2, r1
	add r0, #0xac
	add r1, #0xcc
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, r4]
	bl sub_0200CE54
	add sp, #8
	pop {r4, pc}
	nop
_02222EB8: .word 0x00001388
	thumb_func_end ov12_02222E74

	thumb_func_start ov12_02222EBC
ov12_02222EBC: ; 0x02222EBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r1, r1, #4
	str r1, [r4, #0x18]
	ldr r5, [r1, #0]
	add r2, r1, #4
	str r2, [r4, #0x18]
	ldr r1, [r2, #0]
	str r1, [sp]
	add r1, r2, #4
	str r1, [r4, #0x18]
	bl ov12_02220248
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, sp, #0xc
	strh r0, [r1]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_022258E0
	add r2, sp, #0xc
	strh r0, [r2, #2]
	mov r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r0, #0x64
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x38]
	add r0, r4, #0
	ldr r3, _02222FC4 ; =0x00001388
	str r1, [sp, #0x18]
	str r1, [sp, #0x3c]
	add r2, sp, #0xc
	add r0, #0x18
_02222F14:
	ldr r6, [r4, #0x18]
	add r1, r1, #1
	ldr r6, [r6, #0]
	add r6, r6, r3
	str r6, [r2, #0x14]
	ldr r6, [r0, #0]
	add r2, r2, #4
	add r6, r6, #4
	str r6, [r0, #0]
	cmp r1, #6
	blt _02222F14
	mov r0, #0x41
	lsl r0, r0, #2
	add r3, sp, #0xc
	add r2, r4, r0
	mov r6, #6
_02222F34:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _02222F34
	ldr r0, [r3, #0]
	lsl r7, r5, #2
	str r0, [r2, #0]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0xcc
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, r7]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r2, r4, #0
	ldr r3, [r0, #0]
	add r0, r0, #4
	add r2, #0x18
	mov r6, #0
	str r0, [r4, #0x18]
	cmp r3, #0
	ble _02222F8C
	add r5, r4, #0
_02222F74:
	ldr r0, [r4, #0x18]
	add r6, r6, #1
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [r2, #0]
	cmp r6, r3
	blt _02222F74
_02222F8C:
	cmp r6, #0xa
	bge _02222FA4
	lsl r0, r6, #2
	add r2, r4, r0
	mov r1, #0
_02222F96:
	add r0, r2, #0
	add r0, #0x94
	add r6, r6, #1
	add r2, r2, #4
	str r1, [r0, #0]
	cmp r6, #0xa
	blt _02222F96
_02222FA4:
	ldr r0, [sp]
	bl ov12_022269AC
	add r5, r0, #0
	add r0, r4, #0
	add r4, #0xc0
	ldr r1, [r4, #0]
	ldr r2, [sp, #8]
	add r1, #0xac
	ldr r1, [r1, #0]
	ldr r2, [r2, r7]
	ldr r3, [sp, #4]
	blx r5
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222FC4: .word 0x00001388
	thumb_func_end ov12_02222EBC

	thumb_func_start ov12_02222FC8
ov12_02222FC8: ; 0x02222FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r7, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	bl ov12_02220248
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_022258E0
	add r2, sp, #0
	strh r0, [r2, #2]
	mov r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	ldr r3, _02223078 ; =0x00001388
	str r1, [sp, #0xc]
	str r1, [sp, #0x30]
	add r2, sp, #0
	add r0, #0x18
_0222301E:
	ldr r6, [r5, #0x18]
	add r1, r1, #1
	ldr r6, [r6, #0]
	add r6, r6, r3
	str r6, [r2, #0x14]
	ldr r6, [r0, #0]
	add r2, r2, #4
	add r6, r6, #4
	str r6, [r0, #0]
	cmp r1, #6
	blt _0222301E
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, sp, #0
	add r3, r5, r0
	mov r2, #6
_0222303E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222303E
	ldr r0, [r6, #0]
	lsl r1, r4, #2
	str r0, [r3, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r1, r5, r1
	add r0, #0xac
	add r1, #0xcc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0
	bl sub_0200CE6C
	add r5, #0xdc
	lsl r4, r7, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02223072
	bl sub_02022974
_02223072:
	str r6, [r5, r4]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02223078: .word 0x00001388
	thumb_func_end ov12_02222FC8

	thumb_func_start ov12_0222307C
ov12_0222307C: ; 0x0222307C
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0x18]
	add r5, r0, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1, #0]
	add r1, r1, #4
	add r5, #0xcc
	lsl r4, r2, #2
	str r1, [r0, #0x18]
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _022230A2
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200D0B0
_022230A2:
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222307C

	thumb_func_start ov12_022230A8
ov12_022230A8: ; 0x022230A8
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1, #0]
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2, #0]
	add r2, r2, #4
	str r2, [r0, #0x18]
	lsl r2, r3, #2
	add r2, r0, r2
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r3, _022230C8 ; =sub_0200D3F4
	ldr r0, [r2, r0]
	bx r3
	; .align 2, 0
_022230C8: .word sub_0200D3F4
	thumb_func_end ov12_022230A8

	thumb_func_start ov12_022230CC
ov12_022230CC: ; 0x022230CC
	ldr r3, _022230D0 ; =sub_02022974
	bx r3
	; .align 2, 0
_022230D0: .word sub_02022974
	thumb_func_end ov12_022230CC

	thumb_func_start ov12_022230D4
ov12_022230D4: ; 0x022230D4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1, #0]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r1, [r1, #0]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov12_0222317C
	ldr r1, [r5, #0x18]
	add r2, r1, #4
	str r2, [r5, #0x18]
	ldr r1, [r2, #0]
	add r2, r2, #4
	str r2, [r5, #0x18]
	add r2, r5, #0
	add r2, #0xc0
	ldr r6, [r2, #0]
	ldrh r3, [r6, #0x14]
	str r0, [sp]
	lsl r2, r3, #1
	mov r0, #0x46
	add r2, r6, r2
	add r3, r6, r3
	lsl r0, r0, #2
	str r1, [sp, #4]
	ldr r1, [r6, r0]
	add r2, #0xd8
	str r1, [sp, #8]
	ldr r1, [r5, #0]
	add r3, #0xe8
	str r1, [sp, #0xc]
	sub r0, #0xc
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_02077D3C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022230D4

	thumb_func_start ov12_02223134
ov12_02223134: ; 0x02223134
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200598C
	cmp r0, #0
	bne _02223158
	ldr r0, [r4, #0x18]
	add r1, r0, #4
	str r1, [r4, #0x18]
	ldr r0, [r1, #0]
	add r1, r1, #4
	str r1, [r4, #0x18]
	mov r1, #0
	add r4, #0x8d
	strb r1, [r4]
	bl sub_0200592C
	pop {r4, pc}
_02223158:
	mov r0, #1
	add r4, #0x8d
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end ov12_02223134

	thumb_func_start ov12_02223160
ov12_02223160: ; 0x02223160
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02223160

	thumb_func_start ov12_02223164
ov12_02223164: ; 0x02223164
	cmp r0, #0x55
	bls _0222316C
	mov r0, #0
	bx lr
_0222316C:
	lsl r1, r0, #2
	ldr r0, _02223174 ; =0x022387D4
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02223174: .word 0x022387D4
	thumb_func_end ov12_02223164

	thumb_func_start ov12_02223178
ov12_02223178: ; 0x02223178
	ldrb r0, [r0, #1]
	bx lr
	thumb_func_end ov12_02223178

	thumb_func_start ov12_0222317C
ov12_0222317C: ; 0x0222317C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02220240
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223525C
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _022231B8
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #4
	beq _0222321E
_022231B8:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _022231D8
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _022231D8
	mov r0, #0
	mvn r0, r0
	mul r4, r0
	b _0222321E
_022231D8:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _022231FC
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _022231FC
	cmp r4, #0
	ble _0222321E
	mov r0, #0
	mvn r0, r0
	mul r4, r0
	b _0222321E
_022231FC:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222321E
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222321E
	cmp r4, #0
	bge _0222321E
	mov r0, #0
	mvn r0, r0
	mul r4, r0
_0222321E:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222322E
	mov r0, #0
	mvn r0, r0
	mul r4, r0
_0222322E:
	lsl r0, r4, #0x18
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222317C

	thumb_func_start ov12_02223234
ov12_02223234: ; 0x02223234
	push {r3, lr}
	cmp r0, r1
	bge _02223246
	add r0, r2, #0
	bl sub_020D4070
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	pop {r3, pc}
_02223246:
	cmp r0, r1
	ble _02223258
	add r0, r2, #0
	bl sub_020D4070
	neg r0, r0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	pop {r3, pc}
_02223258:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov12_02223234

	thumb_func_start ov12_0222325C
ov12_0222325C: ; 0x0222325C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x18]
	add r3, r0, #0
	add r4, r4, #4
	str r4, [r0, #0x18]
	ldr r5, [r4, #0]
	add r4, r4, #4
	add r3, #0x18
	str r4, [r0, #0x18]
	cmp r5, r2
	beq _0222327E
	cmp r5, r2
	beq _0222327A
	bl sub_02022974
_0222327A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222327E:
	mov r4, #0
	cmp r2, #0
	ble _02223298
_02223284:
	ldr r5, [r0, #0x18]
	add r4, r4, #1
	ldr r5, [r5, #0]
	str r5, [r1, #0]
	ldr r5, [r3, #0]
	add r1, r1, #4
	add r5, r5, #4
	str r5, [r3, #0]
	cmp r4, r2
	blt _02223284
_02223298:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222325C

	thumb_func_start ov12_0222329C
ov12_0222329C: ; 0x0222329C
	push {r3, r4}
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	add r3, r1, r0
	mov r2, #6
_022232A8:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _022232A8
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_0222329C

	thumb_func_start ov12_022232B8
ov12_022232B8: ; 0x022232B8
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r1
	add r0, #0xc0
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov12_022232B8

	thumb_func_start ov12_022232C4
ov12_022232C4: ; 0x022232C4
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r1
	add r0, #0xe0
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov12_022232C4

	thumb_func_start ov12_022232D0
ov12_022232D0: ; 0x022232D0
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #1
	add r0, r2, r0
	add r0, #0xd8
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022232D0

	thumb_func_start ov12_022232E0
ov12_022232E0: ; 0x022232E0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r1
	add r0, #0xe8
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov12_022232E0

	thumb_func_start ov12_022232EC
ov12_022232EC: ; 0x022232EC
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xec
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022232EC

	thumb_func_start ov12_022232FC
ov12_022232FC: ; 0x022232FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r4, r1, #2
	add r0, r0, r4
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02223314
	mov r0, #0
	pop {r3, r4, r5, pc}
_02223314:
	bl sub_02008B38
	cmp r0, #0
	beq _02223328
	add r5, #0xc0
	ldr r0, [r5, #0]
	add r0, r0, r4
	add r0, #0xc4
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
_02223328:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022232FC

	thumb_func_start ov12_0222332C
ov12_0222332C: ; 0x0222332C
	add r0, #0xc8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_0222332C

	thumb_func_start ov12_02223334
ov12_02223334: ; 0x02223334
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov12_02223334

	thumb_func_start ov12_02223344
ov12_02223344: ; 0x02223344
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov12_02223344

	thumb_func_start ov12_02223354
ov12_02223354: ; 0x02223354
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov12_02223354

	thumb_func_start ov12_02223364
ov12_02223364: ; 0x02223364
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, #0xd4
	ldr r1, [r0, #0]
	mov r0, #2
	tst r0, r1
	beq _02223376
	mov r0, #1
	bx lr
_02223376:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02223364

	thumb_func_start ov12_0222337C
ov12_0222337C: ; 0x0222337C
	add r0, #0xc0
	ldr r2, [r0, #0]
	lsl r0, r1, #2
	add r0, r2, r0
	add r0, #0xfc
	ldr r1, [r0, #0]
	ldr r0, _02223398 ; =0x200400C0
	tst r0, r1
	beq _02223392
	mov r0, #1
	bx lr
_02223392:
	mov r0, #0
	bx lr
	nop
_02223398: .word 0x200400C0
	thumb_func_end ov12_0222337C

	thumb_func_start ov12_0222339C
ov12_0222339C: ; 0x0222339C
	push {r3, lr}
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022233AA
	mov r0, #2
	pop {r3, pc}
_022233AA:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_0222339C

	thumb_func_start ov12_022233B0
ov12_022233B0: ; 0x022233B0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _022233E8 ; =0x02238614
	add r2, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022233DC
	add r0, sp, #0xc
	lsl r1, r4, #2
	add sp, #0x18
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_022233DC:
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022233E8: .word 0x02238614
	thumb_func_end ov12_022233B0

	thumb_func_start ov12_022233EC
ov12_022233EC: ; 0x022233EC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02223424 ; =0x022385FC
	add r2, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02223418
	add r0, sp, #0xc
	lsl r1, r4, #2
	add sp, #0x18
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02223418:
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02223424: .word 0x022385FC
	thumb_func_end ov12_022233EC

	thumb_func_start ov12_02223428
ov12_02223428: ; 0x02223428
	push {r3, lr}
	cmp r1, #3
	bhi _0222345E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222343A: ; jump table
	.short _02223442 - _0222343A - 2 ; case 0
	.short _0222344A - _0222343A - 2 ; case 1
	.short _02223452 - _0222343A - 2 ; case 2
	.short _0222345A - _0222343A - 2 ; case 3
_02223442:
	bl ov12_0221FDD4
	mov r0, #0
	pop {r3, pc}
_0222344A:
	bl ov12_0221FDD4
	mov r0, #1
	pop {r3, pc}
_02223452:
	bl ov12_0221FDD4
	mov r0, #3
	pop {r3, pc}
_0222345A:
	bl ov12_0222339C
_0222345E:
	pop {r3, pc}
	thumb_func_end ov12_02223428

	thumb_func_start ov12_02223460
ov12_02223460: ; 0x02223460
	push {r3, lr}
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r2, #0
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x11
	add r0, #0xc4
	lsl r2, r2, #4
	lsl r1, r1, #0x18
	ldr r2, [r3, r2]
	mov r3, #1
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	lsl r3, r3, #0x10
	bl sub_0201958C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02223460

	thumb_func_start ov12_02223488
ov12_02223488: ; 0x02223488
	push {r3, lr}
	mov r2, #2
	add r1, r0, #0
	lsl r2, r2, #8
	str r2, [sp]
	add r1, #0xc0
	add r0, #0xc8
	ldr r1, [r1, #0]
	sub r2, #0xec
	ldr r1, [r1, r2]
	mov r2, #0
	ldr r0, [r0, #0]
	add r3, r2, #0
	bl sub_02002FBC
	pop {r3, pc}
	thumb_func_end ov12_02223488

	thumb_func_start ov12_022234A8
ov12_022234A8: ; 0x022234A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov12_022210A8
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xe8
	ldrb r6, [r0]
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022234DE
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022232D0
	add r1, r6, #0
	bl ov12_022384F0
	cmp r0, #1
	bne _022234DE
	mov r0, #1
	pop {r4, r5, r6, pc}
_022234DE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022234A8

	thumb_func_start ov12_022234E4
ov12_022234E4: ; 0x022234E4
	mov r2, #0x14
	mul r2, r0
	ldr r0, _022234F4 ; =0x02238928
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	bx lr
	nop
_022234F4: .word 0x02238928
	thumb_func_end ov12_022234E4

	thumb_func_start ov12_022234F8
ov12_022234F8: ; 0x022234F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	ldr r3, _02223758 ; =0x022385B4
	add r5, r2, #0
	add r2, sp, #0x80
	add r7, r0, #0
	str r1, [sp, #0x18]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x18]
	mov r1, #0x58
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r4, #0]
	str r5, [r4, #4]
	add r0, r7, #0
	bl ov16_0223E010
	str r0, [r4, #8]
	add r0, r7, #0
	bl ov16_0223E018
	str r0, [r4, #0xc]
	add r0, r7, #0
	bl ov16_0223E064
	str r0, [r4, #0x10]
	mov r6, #0
	add r5, r4, #0
_0222353E:
	mov r0, #0
	str r0, [r5, #0x24]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0223F2AC
	str r0, [r5, #0x34]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0222353E
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x44
	bl ov16_0223F87C
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x48
	bl ov16_0223F8AC
	ldr r1, [sp, #0x18]
	mov r0, #0x1b
	bl sub_02006C24
	add r6, r0, #0
	mov r7, #0
	str r4, [sp, #0x1c]
_02223576:
	ldr r0, [r4, #4]
	cmp r7, r0
	beq _02223580
	cmp r0, #0xff
	bne _022235EA
_02223580:
	ldr r1, [sp, #0x1c]
	ldr r1, [r1, #0x48]
	cmp r1, #0
	beq _022235EA
	ldr r1, _0222375C ; =0x0000D903
	mov r3, #0x4c
	add r2, r7, r1
	ldr r1, _02223760 ; =0x00001388
	mul r1, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r5, r2, r1
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	bl sub_0200CC3C
	str r6, [sp]
	mov r0, #0x4b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	mov r1, #2
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	mov r3, #0x4d
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	mov r3, #0x4e
	bl sub_0200CE54
_022235EA:
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp, #0x1c]
	cmp r7, #4
	blt _02223576
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #0
	str r0, [sp, #0x2c]
	add r7, r4, #0
_02223602:
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	beq _02223610
	cmp r1, #0xff
	beq _02223610
	b _02223744
_02223610:
	ldr r2, _0222375C ; =0x0000D903
	ldr r0, [sp, #0x2c]
	add r3, r1, #0
	add r0, r0, r2
	ldr r2, _02223760 ; =0x00001388
	mul r3, r2
	add r1, r0, r3
	str r1, [r7, #0x14]
	ldr r1, [r4, #4]
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	str r1, [sp, #0x68]
	ldr r1, [r4, #4]
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	str r1, [sp, #0x6c]
	ldr r1, [r4, #4]
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	str r1, [sp, #0x70]
	ldr r1, [r4, #4]
	mul r2, r1
	mov r1, #0
	add r0, r0, r2
	str r0, [sp, #0x74]
	str r1, [sp, #0x78]
	str r1, [sp, #0x7c]
	ldr r2, [r7, #0x34]
	ldr r5, [r7, #0x48]
	ldr r0, [r2, #4]
	cmp r5, #0
	str r0, [sp, #0x28]
	ldr r0, [r2, #8]
	str r0, [sp, #0x24]
	ldr r0, [r2, #0]
	str r0, [sp, #0x20]
	beq _02223744
	add r0, r5, #0
	bl sub_020080C0
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x29
	bl sub_020080C0
	sub r2, r6, r0
	ldr r0, [sp, #0x30]
	add r1, sp, #0x34
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x2c]
	add r3, sp, #0x34
	add r1, r4, r1
	add r1, #0x44
	ldrb r1, [r1]
	lsl r2, r1, #2
	add r1, sp, #0x80
	ldr r1, [r1, r2]
	str r0, [sp, #0x40]
	str r1, [sp, #0x3c]
	mov r1, #1
	str r1, [sp, #0x44]
	str r1, [sp, #0x60]
	str r0, [sp, #0x64]
	add r2, sp, #0x68
_022236AA:
	ldr r1, [r2, #0]
	add r0, r0, #1
	str r1, [r3, #0x14]
	add r2, r2, #4
	add r3, r3, #4
	cmp r0, #6
	blt _022236AA
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0x34
	bl sub_0200CE6C
	add r6, r0, #0
	bl sub_0200D330
	str r6, [r7, #0x24]
	cmp r5, #0
	bne _022236D8
	add r0, r6, #0
	mov r1, #0
	bl sub_0200D3F4
	b _02223700
_022236D8:
	add r0, r5, #0
	bl sub_02008B38
	cmp r0, #0
	bne _022236EC
	add r0, r6, #0
	mov r1, #0
	bl sub_0200D3F4
	b _02223700
_022236EC:
	add r0, r5, #0
	mov r1, #6
	bl sub_020080C0
	cmp r0, #1
	bne _02223700
	add r0, r6, #0
	mov r1, #0
	bl sub_0200D3F4
_02223700:
	cmp r5, #0
	beq _0222371A
	ldr r0, [r6, #0]
	bl sub_02021F98
	add r1, r0, #0
	mov r3, #0x32
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x20]
	mov r0, #0x13
	lsl r3, r3, #6
	bl sub_0201DC68
_0222371A:
	cmp r5, #0
	beq _02223744
	ldr r0, [r6, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	mov r1, #2
	str r1, [sp]
	mov r1, #0x20
	lsl r0, r0, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	ldr r3, [r4, #0]
	bl sub_02003050
_02223744:
	ldr r0, [sp, #0x2c]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	bge _02223752
	b _02223602
_02223752:
	add r0, r4, #0
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223758: .word 0x022385B4
_0222375C: .word 0x0000D903
_02223760: .word 0x00001388
	thumb_func_end ov12_022234F8

	thumb_func_start ov12_02223764
ov12_02223764: ; 0x02223764
	ldr r3, _0222376C ; =ov12_022234F8
	mov r2, #0xff
	bx r3
	nop
_0222376C: .word ov12_022234F8
	thumb_func_end ov12_02223764

	thumb_func_start ov12_02223770
ov12_02223770: ; 0x02223770
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_02223778:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02223794
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_0200D070
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_0200D080
	ldr r0, [r4, #0x24]
	bl sub_0200D0F4
_02223794:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02223778
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02223770

	thumb_func_start ov12_022237A4
ov12_022237A4: ; 0x022237A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_022237AC:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _022237C8
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_0200D070
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_0200D080
	ldr r0, [r4, #0x24]
	bl sub_0200D0F4
_022237C8:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _022237AC
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022237A4

	thumb_func_start ov12_022237D8
ov12_022237D8: ; 0x022237D8
	push {r4, lr}
	add r4, r0, #0
	bne _022237E2
	bl sub_02022974
_022237E2:
	ldr r0, [r4, #4]
	add r0, r4, r0
	add r0, #0x44
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov12_022237D8

	.rodata


	.global Unk_ov12_02238594
Unk_ov12_02238594: ; 0x02238594
	.incbin "incbin/overlay12_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov12_022385A4
Unk_ov12_022385A4: ; 0x022385A4
	.incbin "incbin/overlay12_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov12_022385B4
Unk_ov12_022385B4: ; 0x022385B4
	.incbin "incbin/overlay12_rodata.bin", 0x20, 0x38 - 0x20

	.global Unk_ov12_022385CC
Unk_ov12_022385CC: ; 0x022385CC
	.incbin "incbin/overlay12_rodata.bin", 0x38, 0x50 - 0x38

	.global Unk_ov12_022385E4
Unk_ov12_022385E4: ; 0x022385E4
	.incbin "incbin/overlay12_rodata.bin", 0x50, 0x68 - 0x50

	.global Unk_ov12_022385FC
Unk_ov12_022385FC: ; 0x022385FC
	.incbin "incbin/overlay12_rodata.bin", 0x68, 0x80 - 0x68

	.global Unk_ov12_02238614
Unk_ov12_02238614: ; 0x02238614
	.incbin "incbin/overlay12_rodata.bin", 0x80, 0x98 - 0x80

	.global Unk_ov12_0223862C
Unk_ov12_0223862C: ; 0x0223862C
	.incbin "incbin/overlay12_rodata.bin", 0x98, 0xB0 - 0x98

	.global Unk_ov12_02238644
Unk_ov12_02238644: ; 0x02238644
	.incbin "incbin/overlay12_rodata.bin", 0xB0, 0xCC - 0xB0

	.global Unk_ov12_02238660
Unk_ov12_02238660: ; 0x02238660
	.incbin "incbin/overlay12_rodata.bin", 0xCC, 0xEC - 0xCC

	.global Unk_ov12_02238680
Unk_ov12_02238680: ; 0x02238680
	.incbin "incbin/overlay12_rodata.bin", 0xEC, 0x120 - 0xEC

	.global Unk_ov12_022386B4
Unk_ov12_022386B4: ; 0x022386B4
	.incbin "incbin/overlay12_rodata.bin", 0x120, 0x1B0 - 0x120

	.global Unk_ov12_02238744
Unk_ov12_02238744: ; 0x02238744
	.incbin "incbin/overlay12_rodata.bin", 0x1B0, 0x240 - 0x1B0

	.global Unk_ov12_022387D4
Unk_ov12_022387D4: ; 0x022387D4
	.incbin "incbin/overlay12_rodata.bin", 0x240, 0x394 - 0x240

	.global Unk_ov12_02238928
Unk_ov12_02238928: ; 0x02238928
	.incbin "incbin/overlay12_rodata.bin", 0x394, 0x488

