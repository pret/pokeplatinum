	.include "macros/function.inc"
	.include "global.inc"

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

	thumb_func_start ov12_022237EC
ov12_022237EC: ; 0x022237EC
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022237EC

	thumb_func_start ov12_022237F0
ov12_022237F0: ; 0x022237F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov11_0221F840
	add r4, r0, #0
	mov r0, #0x1d
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020144C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xa
	add r3, r7, #0
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022237F0

	thumb_func_start ov12_02223818
ov12_02223818: ; 0x02223818
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov11_0221F840
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020144C4
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r4, #0
	mov r2, #0xa
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223818

	thumb_func_start ov12_02223844
ov12_02223844: ; 0x02223844
	ldr r3, _02223848 ; =sub_02006CB8
	bx r3
	; .align 2, 0
_02223848: .word sub_02006CB8
	thumb_func_end ov12_02223844

	thumb_func_start ov12_0222384C
ov12_0222384C: ; 0x0222384C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov11_0221F888
	add r4, r0, #0
	bne _02223864
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223864:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov12_02223844
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r4, #0
	mov r2, #0xa
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222384C

	thumb_func_start ov12_02223880
ov12_02223880: ; 0x02223880
	push {r4, lr}
	lsl r4, r2, #2
	ldr r2, _02223890 ; =0x02238DB0
	ldr r2, [r2, r4]
	bl sub_020146F4
	pop {r4, pc}
	nop
_02223890: .word 0x02238DB0
	thumb_func_end ov12_02223880

	thumb_func_start ov12_02223894
ov12_02223894: ; 0x02223894
	ldr r3, _02223898 ; =ov11_0221F8D8
	bx r3
	; .align 2, 0
_02223898: .word ov11_0221F8D8
	thumb_func_end ov12_02223894

	thumb_func_start ov12_0222389C
ov12_0222389C: ; 0x0222389C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r2, #0
	mov r4, #1
	bl ov12_02235254
	add r5, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02235254
	cmp r5, #5
	bhi _022238D8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022238C2: ; jump table
	.short _022238D8 - _022238C2 - 2 ; case 0
	.short _022238CE - _022238C2 - 2 ; case 1
	.short _022238D8 - _022238C2 - 2 ; case 2
	.short _022238D2 - _022238C2 - 2 ; case 3
	.short _022238D8 - _022238C2 - 2 ; case 4
	.short _022238D6 - _022238C2 - 2 ; case 5
_022238CE:
	sub r4, r4, #2
	b _022238D8
_022238D2:
	sub r4, r4, #2
	b _022238D8
_022238D6:
	sub r4, r4, #2
_022238D8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222389C

	thumb_func_start ov12_022238DC
ov12_022238DC: ; 0x022238DC
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022238DC

	thumb_func_start ov12_022238E0
ov12_022238E0: ; 0x022238E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r0, r4, #0
	bl ov12_02220248
	add r0, r4, #0
	bl ov12_02220250
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_0223525C
	cmp r0, #3
	bne _02223916
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x28
	bl ov12_02235508
	b _0222394E
_02223916:
	add r0, r4, #0
	mov r1, #1
	bl ov12_02235254
	str r0, [sp]
	bl ov12_02235310
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, sp, #0x28
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02235448
	ldr r0, [sp]
	add r1, sp, #0x1c
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02235448
_0222394E:
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	mov r0, #1
	add r1, sp, #0x10
	bl ov12_02235760
	add r0, r6, #0
	bl sub_02014784
	add r4, r0, #0
	add r0, sp, #8
	add r1, r4, #0
	bl sub_02020A94
	add r0, sp, #8
	add r1, r4, #0
	bl sub_020209D4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022238E0

	thumb_func_start ov12_02223998
ov12_02223998: ; 0x02223998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220248
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220250
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0xc
	bl ov12_02235508
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add r0, r6, #0
	add r1, sp, #0
	bl ov12_02235760
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02014744
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02223998

	thumb_func_start ov12_022239F4
ov12_022239F4: ; 0x022239F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02014764
	add r5, r0, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0
	bl ov12_02235508
	ldr r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022239F4

	thumb_func_start ov12_02223A38
ov12_02223A38: ; 0x02223A38
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02014764
	add r5, r0, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0
	bl ov12_02235508
	ldr r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02223A38

	thumb_func_start ov12_02223A7C
ov12_02223A7C: ; 0x02223A7C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov12_02235508
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02223A7C

	thumb_func_start ov12_02223AC8
ov12_02223AC8: ; 0x02223AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r6, r0, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _02223AF4
	mov r4, #1
	b _02223AF6
_02223AF4:
	mov r4, #0
_02223AF6:
	add r0, r6, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	add r3, r7, #0
	bl ov12_02235448
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02223AC8

	thumb_func_start ov12_02223B30
ov12_02223B30: ; 0x02223B30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r6, r0, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _02223B5C
	mov r4, #1
	b _02223B5E
_02223B5C:
	mov r4, #0
_02223B5E:
	add r0, r6, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	add r3, r7, #0
	bl ov12_02235448
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02223B30

	thumb_func_start ov12_02223B98
ov12_02223B98: ; 0x02223B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r3, _02223C38 ; =0x02238E0C
	add r2, sp, #0x54
	mov r1, #0x24
_02223BB4:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02223BB4
	ldr r3, _02223C3C ; =0x02238E54
	add r2, sp, #0xc
	mov r1, #0x24
_02223BC6:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02223BC6
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02235254
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02235254
	lsl r2, r0, #1
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	add r0, sp, #0x54
	add r0, r0, r1
	ldrsh r4, [r2, r0]
	mov r3, #0xac
	add r0, r4, #0
	ldr r4, [r5, #0x20]
	mul r0, r3
	ldr r4, [r4, #0]
	ldr r4, [r4, #4]
	add r0, r0, r4
	str r0, [r5, #0x28]
	add r0, sp, #0xc
	add r0, r0, r1
	ldrsh r0, [r2, r0]
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	mul r1, r3
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0x30]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_02223C38: .word 0x02238E0C
_02223C3C: .word 0x02238E54
	thumb_func_end ov12_02223B98

	thumb_func_start ov12_02223C40
ov12_02223C40: ; 0x02223C40
	push {r3, r4}
	add r3, r2, #0
	add r3, #8
	cmp r0, #7
	bhi _02223CD0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02223C56: ; jump table
	.short _02223CD0 - _02223C56 - 2 ; case 0
	.short _02223C66 - _02223C56 - 2 ; case 1
	.short _02223C70 - _02223C56 - 2 ; case 2
	.short _02223C7A - _02223C56 - 2 ; case 3
	.short _02223C84 - _02223C56 - 2 ; case 4
	.short _02223C96 - _02223C56 - 2 ; case 5
	.short _02223CA8 - _02223C56 - 2 ; case 6
	.short _02223CBA - _02223C56 - 2 ; case 7
_02223C66:
	ldr r0, [r2, #0]
	mul r1, r0
	str r1, [r2, #0]
	pop {r3, r4}
	bx lr
_02223C70:
	ldr r0, [r2, #4]
	mul r1, r0
	str r1, [r2, #4]
	pop {r3, r4}
	bx lr
_02223C7A:
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
	pop {r3, r4}
	bx lr
_02223C84:
	ldr r0, [r2, #0]
	add r3, r0, #0
	mul r3, r1
	str r3, [r2, #0]
	ldr r0, [r2, #4]
	mul r1, r0
	str r1, [r2, #4]
	pop {r3, r4}
	bx lr
_02223C96:
	ldr r0, [r2, #0]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #0]
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
	pop {r3, r4}
	bx lr
_02223CA8:
	ldr r0, [r2, #4]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #4]
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
	pop {r3, r4}
	bx lr
_02223CBA:
	ldr r0, [r2, #0]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #0]
	ldr r0, [r2, #4]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #4]
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
_02223CD0:
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_02223C40

	thumb_func_start ov12_02223CD4
ov12_02223CD4: ; 0x02223CD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r1, #0
	add r1, r3, #0
	add r7, sp, #0x10
	mov r2, #0
	str r2, [r7, #0]
	ldr r3, [sp, #0x30]
	str r2, [r7, #4]
	ldr r4, [sp, #0x38]
	str r2, [r7, #8]
	cmp r3, #5
	bhi _02223D7E
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02223CFC: ; jump table
	.short _02223D7E - _02223CFC - 2 ; case 0
	.short _02223D08 - _02223CFC - 2 ; case 1
	.short _02223D2E - _02223CFC - 2 ; case 2
	.short _02223D42 - _02223CFC - 2 ; case 3
	.short _02223D4A - _02223CFC - 2 ; case 4
	.short _02223D54 - _02223CFC - 2 ; case 5
_02223D08:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02014988
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x14]
	mul r0, r1
	str r0, [sp, #0x18]
	b _02223D7E
_02223D2E:
	str r2, [sp, #0x10]
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r1, [r1, r0]
	mov r0, #0x32
	lsl r0, r0, #6
	mul r0, r1
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	b _02223D7E
_02223D42:
	add r2, r7, #0
	bl ov12_02235508
	b _02223D7E
_02223D4A:
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_02235508
	b _02223D7E
_02223D54:
	add r1, sp, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	mov r2, #4
	bl ov12_0222325C
	ldr r0, [sp]
	add r2, sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	ldrsb r1, [r2, r1]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	bl ov12_02223C40
_02223D7E:
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02014970
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223CD4

	thumb_func_start ov12_02223DA4
ov12_02223DA4: ; 0x02223DA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r1, #0
	add r1, r3, #0
	add r7, sp, #0x10
	mov r2, #0
	str r2, [r7, #0]
	ldr r3, [sp, #0x30]
	str r2, [r7, #4]
	ldr r4, [sp, #0x38]
	str r2, [r7, #8]
	cmp r3, #5
	bhi _02223E4E
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02223DCC: ; jump table
	.short _02223E4E - _02223DCC - 2 ; case 0
	.short _02223DD8 - _02223DCC - 2 ; case 1
	.short _02223DFE - _02223DCC - 2 ; case 2
	.short _02223E12 - _02223DCC - 2 ; case 3
	.short _02223E1A - _02223DCC - 2 ; case 4
	.short _02223E24 - _02223DCC - 2 ; case 5
_02223DD8:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020148A8
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x14]
	mul r0, r1
	str r0, [sp, #0x18]
	b _02223E4E
_02223DFE:
	str r2, [sp, #0x10]
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r1, [r1, r0]
	mov r0, #0x32
	lsl r0, r0, #6
	mul r0, r1
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	b _02223E4E
_02223E12:
	add r2, r7, #0
	bl ov12_02235508
	b _02223E4E
_02223E1A:
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_02235508
	b _02223E4E
_02223E24:
	add r1, sp, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	mov r2, #4
	bl ov12_0222325C
	ldr r0, [sp]
	add r2, sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	ldrsb r1, [r2, r1]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	bl ov12_02223C40
_02223E4E:
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02014890
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223DA4

	thumb_func_start ov12_02223E74
ov12_02223E74: ; 0x02223E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r6, r0, #0
	add r7, r2, #0
	add r4, r1, #0
	str r3, [sp, #0xc]
	bl ov12_02220250
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02235254
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r6, #0
	add r1, sp, #0x7c
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x70
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x58
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x64
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x40
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x34
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x4c
	mov r2, #3
	bl ov12_0222325C
	ldr r0, [sp, #0x10]
	cmp r0, #5
	bhi _02223EFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02223EF0: ; jump table
	.short _02223EFC - _02223EF0 - 2 ; case 0
	.short _02223F0C - _02223EF0 - 2 ; case 1
	.short _02223F22 - _02223EF0 - 2 ; case 2
	.short _02223F56 - _02223EF0 - 2 ; case 3
	.short _02223FA0 - _02223EF0 - 2 ; case 4
	.short _02223FD4 - _02223EF0 - 2 ; case 5
_02223EFC:
	ldr r1, [sp, #0x7c]
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x84]
	strh r1, [r0, #4]
	b _0222401C
_02223F0C:
	ldr r0, [sp, #0x7c]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x80]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x84]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223F22:
	cmp r5, #3
	add r0, sp, #0x14
	bne _02223F36
	ldr r1, [sp, #0x70]
	strh r1, [r0]
	ldr r1, [sp, #0x74]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x78]
	strh r1, [r0, #4]
	b _0222401C
_02223F36:
	cmp r5, #5
	bne _02223F48
	ldr r1, [sp, #0x58]
	strh r1, [r0]
	ldr r1, [sp, #0x5c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x60]
	strh r1, [r0, #4]
	b _0222401C
_02223F48:
	ldr r1, [sp, #0x64]
	strh r1, [r0]
	ldr r1, [sp, #0x68]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #4]
	b _0222401C
_02223F56:
	cmp r5, #2
	bne _02223F70
	ldr r0, [sp, #0x70]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x74]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x78]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223F70:
	cmp r5, #5
	bne _02223F8A
	ldr r0, [sp, #0x64]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x68]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x6c]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223F8A:
	ldr r0, [sp, #0x40]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x44]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x48]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223FA0:
	cmp r5, #3
	add r0, sp, #0x14
	bne _02223FB4
	ldr r1, [sp, #0x40]
	strh r1, [r0]
	ldr r1, [sp, #0x44]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x48]
	strh r1, [r0, #4]
	b _0222401C
_02223FB4:
	cmp r5, #5
	bne _02223FC6
	ldr r1, [sp, #0x34]
	strh r1, [r0]
	ldr r1, [sp, #0x38]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x3c]
	strh r1, [r0, #4]
	b _0222401C
_02223FC6:
	ldr r1, [sp, #0x4c]
	strh r1, [r0]
	ldr r1, [sp, #0x50]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x54]
	strh r1, [r0, #4]
	b _0222401C
_02223FD4:
	cmp r5, #3
	bne _02223FEE
	ldr r0, [sp, #0x4c]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x50]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x54]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223FEE:
	cmp r5, #2
	bne _02224008
	ldr r0, [sp, #0x58]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x5c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x60]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02224008:
	ldr r0, [sp, #0x34]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x38]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x3c]
	neg r1, r1
	strh r1, [r0, #4]
_0222401C:
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_0222389C
	add r5, r0, #0
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r6, #0
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x1c
	bl ov12_02235508
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _02224088
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02224088
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _02224088
	add r3, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x88
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x30]
	b _022240DC
_02224088:
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x88]
	str r1, [sp, #0x8c]
	str r0, [sp, #0x90]
	cmp r2, #0
	bne _022240A2
	mov r0, #0x32
	lsl r0, r0, #6
	cmp r1, r0
	bne _022240A2
	mov r5, #1
_022240A2:
	ldr r1, [sp, #0x88]
	add r0, r1, #0
	ldr r1, [sp, #0x8c]
	mul r0, r5
	add r2, r1, #0
	mul r2, r5
	ldr r1, [sp, #0x24]
	str r2, [sp, #0x8c]
	add r2, r1, #0
	mul r2, r5
	str r0, [sp, #0x88]
	str r2, [sp, #0x90]
	ldr r1, [r4, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x8c]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x90]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x30]
_022240DC:
	ldr r0, [sp, #0xa8]
	cmp r0, #0
	beq _0222411A
	cmp r0, #1
	beq _022240EC
	cmp r0, #2
	beq _02224104
	b _0222411A
_022240EC:
	ldr r0, [sp, #0xac]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, sp, #0x88
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_02223CD4
	b _0222411A
_02224104:
	ldr r0, [sp, #0xac]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, sp, #0x88
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_02223DA4
_0222411A:
	add r1, sp, #0x14
	ldrh r2, [r1]
	add r0, r4, #0
	add r0, #0x50
	strh r2, [r0]
	add r0, r4, #0
	ldrh r2, [r1, #2]
	add r0, #0x52
	add r4, #0x54
	strh r2, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223E74

	thumb_func_start ov12_02224138
ov12_02224138: ; 0x02224138
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02014764
	add r6, r0, #0
	bl ov12_02220240
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov12_02220248
	add r3, r0, #0
	str r5, [sp]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #4]
	bl ov12_02223E74
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02224138

	thumb_func_start ov12_02224168
ov12_02224168: ; 0x02224168
	ldr r3, _02224170 ; =ov12_02224138
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02224170: .word ov12_02224138
	thumb_func_end ov12_02224168

	thumb_func_start ov12_02224174
ov12_02224174: ; 0x02224174
	ldr r3, _0222417C ; =ov12_02224138
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0222417C: .word ov12_02224138
	thumb_func_end ov12_02224174

	thumb_func_start ov12_02224180
ov12_02224180: ; 0x02224180
	ldr r3, _02224188 ; =ov12_02224138
	mov r1, #1
	mov r2, #2
	bx r3
	; .align 2, 0
_02224188: .word ov12_02224138
	thumb_func_end ov12_02224180

	thumb_func_start ov12_0222418C
ov12_0222418C: ; 0x0222418C
	ldr r3, _02224194 ; =ov12_02224138
	mov r1, #1
	mov r2, #3
	bx r3
	; .align 2, 0
_02224194: .word ov12_02224138
	thumb_func_end ov12_0222418C

	thumb_func_start ov12_02224198
ov12_02224198: ; 0x02224198
	ldr r3, _022241A0 ; =ov12_02224138
	mov r1, #1
	mov r2, #4
	bx r3
	; .align 2, 0
_022241A0: .word ov12_02224138
	thumb_func_end ov12_02224198

	thumb_func_start ov12_022241A4
ov12_022241A4: ; 0x022241A4
	ldr r3, _022241AC ; =ov12_02224138
	mov r1, #1
	mov r2, #5
	bx r3
	; .align 2, 0
_022241AC: .word ov12_02224138
	thumb_func_end ov12_022241A4

	thumb_func_start ov12_022241B0
ov12_022241B0: ; 0x022241B0
	ldr r3, _022241B8 ; =ov12_02224138
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_022241B8: .word ov12_02224138
	thumb_func_end ov12_022241B0

	thumb_func_start ov12_022241BC
ov12_022241BC: ; 0x022241BC
	ldr r3, _022241C4 ; =ov12_02224138
	mov r1, #2
	add r2, r1, #0
	bx r3
	; .align 2, 0
_022241C4: .word ov12_02224138
	thumb_func_end ov12_022241BC

	thumb_func_start ov12_022241C8
ov12_022241C8: ; 0x022241C8
	ldr r3, _022241D0 ; =ov12_02224138
	mov r1, #2
	mov r2, #3
	bx r3
	; .align 2, 0
_022241D0: .word ov12_02224138
	thumb_func_end ov12_022241C8

	thumb_func_start ov12_022241D4
ov12_022241D4: ; 0x022241D4
	ldr r3, _022241DC ; =ov12_02224138
	mov r1, #2
	mov r2, #4
	bx r3
	; .align 2, 0
_022241DC: .word ov12_02224138
	thumb_func_end ov12_022241D4

	thumb_func_start ov12_022241E0
ov12_022241E0: ; 0x022241E0
	ldr r3, _022241E8 ; =ov12_02224138
	mov r1, #2
	mov r2, #5
	bx r3
	; .align 2, 0
_022241E8: .word ov12_02224138
	thumb_func_end ov12_022241E0

	thumb_func_start ov12_022241EC
ov12_022241EC: ; 0x022241EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r3, r6, #0
	bl ov12_02223E74
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022241EC

	thumb_func_start ov12_0222421C
ov12_0222421C: ; 0x0222421C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	cmp r2, #0
	beq _0222422C
	bl ov12_022242E0
_0222422C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0222423A
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224614
_0222423A:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02224248
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224E74
_02224248:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224EA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0222425E
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224EB8
_0222425E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222421C

	thumb_func_start ov12_02224260
ov12_02224260: ; 0x02224260
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0]
	add r6, r2, #0
	add r0, r4, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _02224288
	mov r5, #1
	b _0222428A
_02224288:
	mov r5, #0
_0222428A:
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235448
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02224260

	thumb_func_start ov12_022242A0
ov12_022242A0: ; 0x022242A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0]
	add r6, r2, #0
	add r0, r4, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _022242C8
	mov r5, #1
	b _022242CA
_022242C8:
	mov r5, #0
_022242CA:
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235448
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022242A0

	thumb_func_start ov12_022242E0
ov12_022242E0: ; 0x022242E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xbc
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	cmp r2, #0x64
	bgt _02224348
	blt _022242F2
	b _022244BC
_022242F2:
	cmp r2, #0x22
	bhi _0222434E
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02224302: ; jump table
	.short _022245C6 - _02224302 - 2 ; case 0
	.short _02224350 - _02224302 - 2 ; case 1
	.short _0222435C - _02224302 - 2 ; case 2
	.short _02224458 - _02224302 - 2 ; case 3
	.short _02224494 - _02224302 - 2 ; case 4
	.short _022244A8 - _02224302 - 2 ; case 5
	.short _02224368 - _02224302 - 2 ; case 6
	.short _02224374 - _02224302 - 2 ; case 7
	.short _02224440 - _02224302 - 2 ; case 8
	.short _0222444C - _02224302 - 2 ; case 9
	.short _02224380 - _02224302 - 2 ; case 10
	.short _0222438C - _02224302 - 2 ; case 11
	.short _022244E8 - _02224302 - 2 ; case 12
	.short _022244F8 - _02224302 - 2 ; case 13
	.short _02224398 - _02224302 - 2 ; case 14
	.short _022243A4 - _02224302 - 2 ; case 15
	.short _022243B0 - _02224302 - 2 ; case 16
	.short _022243BC - _02224302 - 2 ; case 17
	.short _022243C8 - _02224302 - 2 ; case 18
	.short _022243D4 - _02224302 - 2 ; case 19
	.short _022243E0 - _02224302 - 2 ; case 20
	.short _022243EC - _02224302 - 2 ; case 21
	.short _022243F8 - _02224302 - 2 ; case 22
	.short _02224404 - _02224302 - 2 ; case 23
	.short _02224410 - _02224302 - 2 ; case 24
	.short _0222441C - _02224302 - 2 ; case 25
	.short _02224428 - _02224302 - 2 ; case 26
	.short _02224434 - _02224302 - 2 ; case 27
	.short _02224508 - _02224302 - 2 ; case 28
	.short _022245C6 - _02224302 - 2 ; case 29
	.short _02224558 - _02224302 - 2 ; case 30
	.short _0222452E - _02224302 - 2 ; case 31
	.short _02224590 - _02224302 - 2 ; case 32
	.short _02224514 - _02224302 - 2 ; case 33
	.short _02224522 - _02224302 - 2 ; case 34
_02224348:
	cmp r2, #0x65
	bne _0222434E
	b _022244D2
_0222434E:
	b _022245C6
_02224350:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	b _022245C6
_0222435C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235508
	b _022245C6
_02224368:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235538
	b _022245C6
_02224374:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235538
	b _022245C6
_02224380:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235568
	b _022245C6
_0222438C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235568
	b _022245C6
_02224398:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235598
	b _022245C6
_022243A4:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235598
	b _022245C6
_022243B0:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_022355C8
	b _022245C6
_022243BC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_022355C8
	b _022245C6
_022243C8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_022355F8
	b _022245C6
_022243D4:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_022355F8
	b _022245C6
_022243E0:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235628
	b _022245C6
_022243EC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235628
	b _022245C6
_022243F8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235658
	b _022245C6
_02224404:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235658
	b _022245C6
_02224410:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235688
	b _022245C6
_0222441C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235688
	b _022245C6
_02224428:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_022356B8
	b _022245C6
_02224434:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_022356B8
	b _022245C6
_02224440:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235718
	b _022245C6
_0222444C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235718
	b _022245C6
_02224458:
	ldr r0, [r4, #0]
	add r1, sp, #0xa0
	mov r2, #4
	bl ov12_0222325C
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0xb0]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0xb4]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0xa0]
	cmp r0, #1
	bne _02224480
	mov r0, #1
	strb r0, [r4, #8]
_02224480:
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #0xb0]
	mul r1, r2
	str r1, [sp, #0xb0]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #0xb4]
	mul r0, r1
	str r0, [sp, #0xb4]
	b _022245C6
_02224494:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_022244A8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235508
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_022244BC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	add r2, sp, #0xb0
	bl ov12_02225008
	b _022245C6
_022244D2:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235508
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	add r2, sp, #0xb0
	bl ov12_02225008
	b _022245C6
_022244E8:
	add r2, sp, #0xb0
	bl ov12_022242A0
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_022244F8:
	add r2, sp, #0xb0
	bl ov12_02224260
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_02224508:
	ldr r0, _022245FC ; =0x00002CE0
	str r0, [sp, #0xb0]
	mov r0, #0
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb8]
	b _022245C6
_02224514:
	ldr r0, _02224600 ; =0xFFFFEC78
	str r0, [sp, #0xb0]
	ldr r0, _02224604 ; =0xFFFFE890
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _022245C6
_02224522:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	b _022245C6
_0222452E:
	ldr r6, _02224608 ; =0x02238EAC
	add r3, sp, #0x70
	mov r2, #6
_02224534:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224534
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	bl ov12_02235254
	lsl r1, r0, #3
	add r0, sp, #0x70
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #0x74
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _022245C6
_02224558:
	ldr r6, _0222460C ; =0x02238F44
	add r3, sp, #0x38
	mov r2, #7
_0222455E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222455E
	ldr r0, [r4, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224574
	mov r0, #6
	b _0222457C
_02224574:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	bl ov12_02235254
_0222457C:
	lsl r1, r0, #3
	add r0, sp, #0x38
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #0x3c
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _022245C6
_02224590:
	ldr r6, _02224610 ; =0x02238F0C
	add r3, sp, #0
	mov r2, #7
_02224596:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224596
	ldr r0, [r4, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022245AC
	mov r0, #6
	b _022245B4
_022245AC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	bl ov12_02235254
_022245B4:
	lsl r1, r0, #3
	add r0, sp, #0
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #4
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
_022245C6:
	add r2, sp, #0xb0
	ldmia r2!, {r0, r1}
	add r4, #0x2c
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xbc
	pop {r3, r4, r5, r6, pc}
	nop
_022245FC: .word 0x00002CE0
_02224600: .word 0xFFFFEC78
_02224604: .word 0xFFFFE890
_02224608: .word 0x02238EAC
_0222460C: .word 0x02238F44
_02224610: .word 0x02238F0C
	thumb_func_end ov12_022242E0

	thumb_func_start ov12_02224614
ov12_02224614: ; 0x02224614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x148
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x24]
	bl ov12_02235254
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x28]
	bl ov12_02235254
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1a
	bls _0222463E
	b _02224E38
_0222463E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222464A: ; jump table
	.short _02224680 - _0222464A - 2 ; case 0
	.short _0222468C - _0222464A - 2 ; case 1
	.short _0222468C - _0222464A - 2 ; case 2
	.short _02224DA2 - _0222464A - 2 ; case 3
	.short _022246F4 - _0222464A - 2 ; case 4
	.short _022247AE - _0222464A - 2 ; case 5
	.short _02224AE0 - _0222464A - 2 ; case 6
	.short _02224AE0 - _0222464A - 2 ; case 7
	.short _02224868 - _0222464A - 2 ; case 8
	.short _02224868 - _0222464A - 2 ; case 9
	.short _022248D0 - _0222464A - 2 ; case 10
	.short _022248D0 - _0222464A - 2 ; case 11
	.short _0222491E - _0222464A - 2 ; case 12
	.short _0222491E - _0222464A - 2 ; case 13
	.short _02224966 - _0222464A - 2 ; case 14
	.short _02224966 - _0222464A - 2 ; case 15
	.short _022249AE - _0222464A - 2 ; case 16
	.short _022249AE - _0222464A - 2 ; case 17
	.short _02224A50 - _0222464A - 2 ; case 18
	.short _02224A50 - _0222464A - 2 ; case 19
	.short _02224A98 - _0222464A - 2 ; case 20
	.short _02224A98 - _0222464A - 2 ; case 21
	.short _02224DB6 - _0222464A - 2 ; case 22
	.short _02224E38 - _0222464A - 2 ; case 23
	.short _02224E0A - _0222464A - 2 ; case 24
	.short _02224DC6 - _0222464A - 2 ; case 25
	.short _02224DD8 - _0222464A - 2 ; case 26
_02224680:
	mov r1, #0
	add r0, sp, #0x20
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	b _02224E38
_0222468C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022246C6
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	add r0, sp, #0x20
	bne _022246B4
	ldr r1, _022249E8 ; =0xFFFFF2F8
	strh r1, [r0]
	mov r1, #0x73
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022246B4:
	mov r1, #0x92
	lsl r1, r1, #4
	strh r1, [r0]
	ldr r1, _022249EC ; =0xFFFFFA60
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022246C6:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_022246F4:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224730
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r2, [r1, r2]
	neg r3, r2
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_02224730:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x28]
	bl ov12_0223525C
	cmp r4, r0
	bne _0222477C
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_0222477C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	cmp r0, #3
	add r0, sp, #0x20
	bne _022247A0
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_022247A0:
	ldr r1, _02224A00 ; =0xFFFFEF7C
	strh r1, [r0]
	ldr r1, _02224A04 ; =0xFFFFF558
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_022247AE:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022247EA
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r2, [r1, r2]
	neg r3, r2
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_022247EA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x28]
	bl ov12_0223525C
	cmp r4, r0
	bne _02224836
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_02224836:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	cmp r0, #3
	add r0, sp, #0x20
	bne _0222485A
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_0222485A:
	ldr r1, _02224A00 ; =0xFFFFEF7C
	strh r1, [r0]
	ldr r1, _02224A04 ; =0xFFFFF558
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_02224868:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022248A2
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	add r0, sp, #0x20
	bne _02224890
	ldr r1, _02224A08 ; =0xFFFFF6E0
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224890:
	mov r1, #0x92
	lsl r1, r1, #4
	strh r1, [r0]
	ldr r1, _022249EC ; =0xFFFFFA60
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022248A2:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A0C ; =0x02238FEC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A10 ; =0x02238FF0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A14 ; =0x02238FF4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_022248D0:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022248F0
	ldr r1, _02224A08 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022248F0:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A18 ; =0x0223919C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A10 ; =0x02238FF0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A14 ; =0x02238FF4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_0222491E:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222493E
	ldr r1, _02224A1C ; =0xFFFFF488
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_0222493E:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A20 ; =0x022394FC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A24 ; =0x02239500
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A28 ; =0x02239504
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224966:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224986
	ldr r1, _02224A08 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224986:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A2C ; =0x0223985C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A30 ; =0x02239860
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A34 ; =0x02239864
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_022249AE:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022249CE
	ldr r1, _02224A08 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022249CE:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A38 ; =0x0223934C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A3C ; =0x02239350
	b _02224A40
	; .align 2, 0
_022249E8: .word 0xFFFFF2F8
_022249EC: .word 0xFFFFFA60
_022249F0: .word 0x022396AC
_022249F4: .word 0x022396B0
_022249F8: .word 0x022396B4
_022249FC: .word 0x000005FC
_02224A00: .word 0xFFFFEF7C
_02224A04: .word 0xFFFFF558
_02224A08: .word 0xFFFFF6E0
_02224A0C: .word 0x02238FEC
_02224A10: .word 0x02238FF0
_02224A14: .word 0x02238FF4
_02224A18: .word 0x0223919C
_02224A1C: .word 0xFFFFF488
_02224A20: .word 0x022394FC
_02224A24: .word 0x02239500
_02224A28: .word 0x02239504
_02224A2C: .word 0x0223985C
_02224A30: .word 0x02239860
_02224A34: .word 0x02239864
_02224A38: .word 0x0223934C
_02224A3C: .word 0x02239350
_02224A40:
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224D60 ; =0x02239354
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224A50:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224A70
	ldr r1, _02224D64 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224A70:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224D68 ; =0x02239A0C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224D6C ; =0x02239A10
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224D70 ; =0x02239A14
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224A98:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224AB8
	ldr r1, _02224D74 ; =0xFFFFEF10
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224AB8:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224D78 ; =0x02239BBC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224D7C ; =0x02239BC0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224D80 ; =0x02239BC4
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224AE0:
	ldr r4, _02224D84 ; =0x02238F7C
	add r3, sp, #0xd8
	mov r2, #0xe
_02224AE6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224AE6
	ldr r3, _02224D88 ; =0x02238E9C
	add r2, sp, #0x58
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, sp, #0xc8
	mov r0, #0
	str r1, [sp, #0xc]
	add r1, sp, #0xb8
	mov ip, r0
	str r1, [sp, #0x1c]
	add r0, sp, #0xd8
	add r7, sp, #0xa8
	add r6, sp, #0x98
	add r5, sp, #0x88
	add r1, sp, #0x78
	add r2, sp, #0x68
_02224B12:
	ldr r4, [r0, #0]
	ldr r3, [sp, #0xc]
	str r4, [r3, #0]
	ldr r4, [r0, #0x10]
	ldr r3, [sp, #0x1c]
	str r4, [r3, #0]
	ldr r3, [r0, #0x20]
	stmia r7!, {r3}
	ldr r3, [r0, #0x30]
	stmia r6!, {r3}
	ldr r3, [r0, #0x40]
	stmia r5!, {r3}
	ldr r3, [r0, #0x50]
	stmia r1!, {r3}
	ldr r3, [r0, #0x60]
	add r0, r0, #4
	stmia r2!, {r3}
	ldr r3, [sp, #0xc]
	add r3, r3, #4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r3, r3, #4
	str r3, [sp, #0x1c]
	mov r3, ip
	add r3, r3, #1
	mov ip, r3
	cmp r3, #4
	blt _02224B12
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224B8E
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x58
	str r0, [sp, #0x10]
	add r7, sp, #0xc8
	add r6, sp, #0xb8
	add r0, sp, #0xa8
	add r1, sp, #0x98
	add r2, sp, #0x88
	add r3, sp, #0x78
	add r4, sp, #0x68
_02224B6C:
	ldr r5, [sp, #0x10]
	ldr r5, [r5, #0]
	stmia r7!, {r5}
	stmia r6!, {r5}
	stmia r0!, {r5}
	stmia r1!, {r5}
	stmia r2!, {r5}
	stmia r3!, {r5}
	stmia r4!, {r5}
	ldr r5, [sp, #0x10]
	add r5, r5, #4
	str r5, [sp, #0x10]
	ldr r5, [sp, #8]
	add r5, r5, #1
	str r5, [sp, #8]
	cmp r5, #4
	blt _02224B6C
_02224B8E:
	ldr r0, [sp, #0x18]
	cmp r0, #5
	bhi _02224BAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224BA0: ; jump table
	.short _02224BAC - _02224BA0 - 2 ; case 0
	.short _02224BBC - _02224BA0 - 2 ; case 1
	.short _02224BE8 - _02224BA0 - 2 ; case 2
	.short _02224C20 - _02224BA0 - 2 ; case 3
	.short _02224CAE - _02224BA0 - 2 ; case 4
	.short _02224CE6 - _02224BA0 - 2 ; case 5
_02224BAC:
	ldr r1, [sp, #0xc8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	strh r1, [r0, #4]
	b _02224E38
_02224BBC:
	ldr r0, [sp, #0xd4]
	cmp r0, #1
	bne _02224BD2
	ldr r1, [sp, #0xc8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	strh r1, [r0, #4]
	b _02224E38
_02224BD2:
	ldr r0, [sp, #0xc8]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224BE8:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02224BFE
	ldr r1, [sp, #0xb8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	strh r1, [r0, #4]
	b _02224E38
_02224BFE:
	cmp r0, #5
	add r0, sp, #0x20
	bne _02224C12
	ldr r1, [sp, #0x98]
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	strh r1, [r0, #4]
	b _02224E38
_02224C12:
	ldr r1, [sp, #0xa8]
	strh r1, [r0]
	ldr r1, [sp, #0xac]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xb0]
	strh r1, [r0, #4]
	b _02224E38
_02224C20:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _02224C52
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224C3C
	ldr r1, [sp, #0xb8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	strh r1, [r0, #4]
	b _02224E38
_02224C3C:
	ldr r0, [sp, #0xb8]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224C52:
	cmp r0, #5
	bne _02224C82
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _02224C72
	ldr r0, [sp, #0x88]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224C72:
	ldr r1, [sp, #0x88]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _02224E38
_02224C82:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _02224C98
	ldr r1, [sp, #0x78]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #4]
	b _02224E38
_02224C98:
	ldr r0, [sp, #0x78]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224CAE:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02224CC4
	ldr r1, [sp, #0x78]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #4]
	b _02224E38
_02224CC4:
	cmp r0, #5
	add r0, sp, #0x20
	bne _02224CD8
	ldr r1, [sp, #0x68]
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	strh r1, [r0, #4]
	b _02224E38
_02224CD8:
	ldr r1, [sp, #0x88]
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _02224E38
_02224CE6:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02224D18
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224D02
	ldr r1, [sp, #0x88]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _02224E38
_02224D02:
	ldr r0, [sp, #0x88]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224D18:
	cmp r0, #2
	bne _02224D48
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224D32
	ldr r1, [sp, #0x98]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	strh r1, [r0, #4]
	b _02224E38
_02224D32:
	ldr r0, [sp, #0x98]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224D48:
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224D8C
	ldr r1, [sp, #0x68]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	strh r1, [r0, #4]
	b _02224E38
	nop
_02224D60: .word 0x02239354
_02224D64: .word 0xFFFFF6E0
_02224D68: .word 0x02239A0C
_02224D6C: .word 0x02239A10
_02224D70: .word 0x02239A14
_02224D74: .word 0xFFFFEF10
_02224D78: .word 0x02239BBC
_02224D7C: .word 0x02239BC0
_02224D80: .word 0x02239BC4
_02224D84: .word 0x02238F7C
_02224D88: .word 0x02238E9C
_02224D8C:
	ldr r0, [sp, #0x68]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224DA2:
	ldr r1, _02224E58 ; =0xFFFFFCE0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x4b
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x7d
	lsl r1, r1, #2
	strh r1, [r0, #4]
	b _02224E38
_02224DB6:
	ldr r1, _02224E5C ; =0xFFFFF2AE
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, _02224E60 ; =0xFFFFF5AC
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224DC6:
	ldr r1, _02224E64 ; =0xFFFFF290
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x7a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224DD8:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	cmp r0, #3
	add r0, sp, #0x20
	bne _02224DFC
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224DFC:
	ldr r1, _02224E68 ; =0xFFFFE890
	strh r1, [r0]
	ldr r1, _02224E6C ; =0xFFFFF768
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224E0A:
	ldr r4, _02224E70 ; =0x02238EDC
	add r3, sp, #0x28
	mov r2, #6
_02224E10:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224E10
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_02235254
	lsl r2, r0, #3
	add r0, sp, #0x28
	ldr r1, [r0, r2]
	add r0, sp, #0x20
	strh r1, [r0]
	add r1, sp, #0x2c
	ldr r1, [r1, r2]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
_02224E38:
	add r1, sp, #0x20
	ldr r0, [sp]
	ldrh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	ldr r0, [sp]
	ldrh r2, [r1, #2]
	add r0, #0x52
	strh r2, [r0]
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	add r0, #0x54
	str r0, [sp]
	strh r1, [r0]
	add sp, #0x148
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224E58: .word 0xFFFFFCE0
_02224E5C: .word 0xFFFFF2AE
_02224E60: .word 0xFFFFF5AC
_02224E64: .word 0xFFFFF290
_02224E68: .word 0xFFFFE890
_02224E6C: .word 0xFFFFF768
_02224E70: .word 0x02238EDC
	thumb_func_end ov12_02224614

	thumb_func_start ov12_02224E74
ov12_02224E74: ; 0x02224E74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl ov12_02225614
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02224EA4
_02224E86:
	add r0, r4, #0
	bl ov12_022255EC
	ldr r1, [r5, #0x1c]
	and r1, r0
	cmp r0, r1
	bne _02224E9E
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov12_022255D4
_02224E9E:
	add r4, r4, #1
	cmp r4, r6
	blt _02224E86
_02224EA4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02224E74

	thumb_func_start ov12_02224EA8
ov12_02224EA8: ; 0x02224EA8
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _02224EB4 ; =ov12_0222584C
	ldr r0, [r2, #0x20]
	bx r3
	; .align 2, 0
_02224EB4: .word ov12_0222584C
	thumb_func_end ov12_02224EA8

	thumb_func_start ov12_02224EB8
ov12_02224EB8: ; 0x02224EB8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x24]
	bl ov12_02235254
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x28]
	bl ov12_02235254
	ldr r1, [r6, #0xc]
	cmp r1, #3
	bhi _02224F00
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02224EE0: ; jump table
	.short _02224F00 - _02224EE0 - 2 ; case 0
	.short _02224EE8 - _02224EE0 - 2 ; case 1
	.short _02224EF6 - _02224EE0 - 2 ; case 2
	.short _02224F00 - _02224EE0 - 2 ; case 3
_02224EE8:
	cmp r0, #0
	bne _02224EF2
	mov r4, #1
	lsl r4, r4, #8
	b _02224F00
_02224EF2:
	ldr r4, _02224F0C ; =0xFFFFEC00
	b _02224F00
_02224EF6:
	cmp r0, #0
	bne _02224EFE
	mov r4, #0
	b _02224F00
_02224EFE:
	ldr r4, _02224F10 ; =0xFFFFEB00
_02224F00:
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r4, r0
	str r0, [r5, #0x30]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02224F0C: .word 0xFFFFEC00
_02224F10: .word 0xFFFFEB00
	thumb_func_end ov12_02224EB8

	thumb_func_start ov12_02224F14
ov12_02224F14: ; 0x02224F14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02014764
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220250
	str r0, [r4, #4]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0xc
	mov r2, #6
	bl ov12_0222325C
	ldr r0, [r4, #0x10]
	cmp r0, #4
	bhi _02224F5C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224F52: ; jump table
	.short _02224F5C - _02224F52 - 2 ; case 0
	.short _02224F6E - _02224F52 - 2 ; case 1
	.short _02224F80 - _02224F52 - 2 ; case 2
	.short _02224F92 - _02224F52 - 2 ; case 3
	.short _02224FA4 - _02224F52 - 2 ; case 4
_02224F5C:
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x28]
	b _02224FB4
_02224F6E:
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x28]
	b _02224FB4
_02224F80:
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x28]
	b _02224FB4
_02224F92:
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x28]
	b _02224FB4
_02224FA4:
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x28]
_02224FB4:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0222421C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02224F14

	thumb_func_start ov12_02224FC4
ov12_02224FC4: ; 0x02224FC4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x24]
	mov r4, #1
	bl ov12_02235254
	add r5, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x28]
	bl ov12_02235254
	cmp r5, #5
	bhi _02225002
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224FEC: ; jump table
	.short _02225002 - _02224FEC - 2 ; case 0
	.short _02224FF8 - _02224FEC - 2 ; case 1
	.short _02225002 - _02224FEC - 2 ; case 2
	.short _02224FFC - _02224FEC - 2 ; case 3
	.short _02225002 - _02224FEC - 2 ; case 4
	.short _02225000 - _02224FEC - 2 ; case 5
_02224FF8:
	sub r4, r4, #2
	b _02225002
_02224FFC:
	sub r4, r4, #2
	b _02225002
_02225000:
	sub r4, r4, #2
_02225002:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02224FC4

	thumb_func_start ov12_02225008
ov12_02225008: ; 0x02225008
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x20
	mov r4, #0
	str r4, [r0, #0]
	str r4, [r0, #4]
	add r6, r1, #0
	add r7, r2, #0
	str r4, [r0, #8]
_0222501C:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov12_02235254
	cmp r4, r0
	ldr r0, [r5, #0]
	bne _02225034
	add r1, sp, #0x10
	mov r2, #4
	bl ov12_0222325C
	b _0222503C
_02225034:
	add r1, sp, #0
	mov r2, #4
	bl ov12_0222325C
_0222503C:
	add r4, r4, #1
	cmp r4, #6
	blt _0222501C
	add r0, r5, #0
	bl ov12_02224FC4
	strb r0, [r5, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02225060
	mov r0, #1
	strb r0, [r5, #8]
_02225060:
	mov r1, #8
	ldrsb r0, [r5, r1]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mul r0, r2
	str r0, [sp, #0x20]
	ldrsb r2, [r5, r1]
	mul r2, r3
	str r2, [sp, #0x24]
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #0x28]
	mul r1, r2
	str r1, [sp, #0x28]
	ldr r1, [r7, #0]
	add r0, r1, r0
	str r0, [r7, #0]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r1, [r7, #8]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	str r0, [r7, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225008

	thumb_func_start ov12_02225094
ov12_02225094: ; 0x02225094
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5, #0]
	add r1, sp, #0xc
	mov r2, #4
	bl ov12_0222325C
	add r0, r5, #0
	bl ov12_02224FC4
	strb r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _022250CE
	mov r0, #1
	strb r0, [r5, #8]
_022250CE:
	mov r1, #8
	ldrsb r0, [r5, r1]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mul r0, r2
	str r0, [sp]
	ldrsb r2, [r5, r1]
	mul r2, r3
	str r2, [sp, #4]
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #8]
	mul r1, r2
	str r1, [sp, #8]
	ldr r1, [r4, #0]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225094

	thumb_func_start ov12_02225104
ov12_02225104: ; 0x02225104
	ldr r3, _0222510C ; =ov12_0222325C
	ldr r0, [r0, #0]
	mov r2, #5
	bx r3
	; .align 2, 0
_0222510C: .word ov12_0222325C
	thumb_func_end ov12_02225104

	thumb_func_start ov12_02225110
ov12_02225110: ; 0x02225110
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225110

	thumb_func_start ov12_02225114
ov12_02225114: ; 0x02225114
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	add r0, r4, #0
	add r1, sp, #8
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02225140
	mov r0, #1
	strb r0, [r4, #8]
_02225140:
	ldr r0, [sp, #8]
	cmp r0, #3
	bgt _0222515E
	cmp r0, #0
	blt _022251CA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225156: ; jump table
	.short _02225162 - _02225156 - 2 ; case 0
	.short _0222518E - _02225156 - 2 ; case 1
	.short _022251CA - _02225156 - 2 ; case 2
	.short _022251CA - _02225156 - 2 ; case 3
_0222515E:
	cmp r0, #0xff
	b _022251CA
_02225162:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014874
	add r2, sp, #0
	mov r0, #0
	mov r1, #8
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2]
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #2]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #4]
	b _022251CA
_0222518E:
	ldr r0, [sp, #0x10]
	add r2, sp, #0
	strh r0, [r2]
	ldr r0, [sp, #0x14]
	mov r1, #8
	strh r0, [r2, #2]
	ldr r0, [sp, #0x18]
	strh r0, [r2, #4]
	mov r0, #0
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2]
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #2]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	add r1, sp, #0
	mul r0, r3
	strh r0, [r2, #4]
	add r0, r5, #0
	bl sub_02014874
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_022251CA:
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x2c]
	sub r0, r2, r0
	strh r0, [r1]
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x30]
	sub r0, r2, r0
	strh r0, [r1, #2]
	mov r0, #4
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x34]
	sub r0, r2, r0
	strh r0, [r1, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014874
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov12_02225114

	thumb_func_start ov12_022251F8
ov12_022251F8: ; 0x022251F8
	mov r0, #1
	bx lr
	thumb_func_end ov12_022251F8

	thumb_func_start ov12_022251FC
ov12_022251FC: ; 0x022251FC
	mov r0, #1
	bx lr
	thumb_func_end ov12_022251FC

	thumb_func_start ov12_02225200
ov12_02225200: ; 0x02225200
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0222522C
	mov r0, #1
	strb r0, [r4, #8]
_0222522C:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bgt _0222524A
	cmp r0, #0
	blt _022252AA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225242: ; jump table
	.short _0222524E - _02225242 - 2 ; case 0
	.short _02225272 - _02225242 - 2 ; case 1
	.short _02225294 - _02225242 - 2 ; case 2
	.short _022252A0 - _02225242 - 2 ; case 3
_0222524A:
	cmp r0, #0xff
	b _022252AA
_0222524E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020148A8
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp]
	mul r1, r2
	str r1, [sp]
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #4]
	mul r1, r2
	str r1, [sp, #4]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #8]
	b _022252AA
_02225272:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #8
	ldrsb r6, [r4, r3]
	mul r6, r2
	str r6, [sp]
	ldrsb r2, [r4, r3]
	mul r2, r1
	str r2, [sp, #4]
	ldrsb r1, [r4, r3]
	mul r1, r0
	str r1, [sp, #8]
	b _022252AA
_02225294:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl ov12_02235508
	b _022252AA
_022252A0:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov12_02235508
_022252AA:
	ldr r1, [sp]
	ldr r0, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x30]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014890
	mov r0, #1
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225200

	thumb_func_start ov12_022252C8
ov12_022252C8: ; 0x022252C8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _022252F0
	mov r0, #1
	strb r0, [r4, #8]
_022252F0:
	ldr r0, [sp, #4]
	cmp r0, #3
	bgt _0222530E
	cmp r0, #0
	blt _0222533C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225306: ; jump table
	.short _02225312 - _02225306 - 2 ; case 0
	.short _0222532A - _02225306 - 2 ; case 1
	.short _0222533C - _02225306 - 2 ; case 2
	.short _0222533C - _02225306 - 2 ; case 3
_0222530E:
	cmp r0, #0xff
	b _0222533C
_02225312:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020148F4
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
	b _0222533C
_0222532A:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
_0222533C:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020148DC
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022252C8

	thumb_func_start ov12_0222534C
ov12_0222534C: ; 0x0222534C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02225374
	mov r0, #1
	strb r0, [r4, #8]
_02225374:
	ldr r0, [sp, #4]
	cmp r0, #3
	bgt _02225392
	cmp r0, #0
	blt _022253BC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222538A: ; jump table
	.short _02225396 - _0222538A - 2 ; case 0
	.short _022253AC - _0222538A - 2 ; case 1
	.short _022253BC - _0222538A - 2 ; case 2
	.short _022253BC - _0222538A - 2 ; case 3
_02225392:
	cmp r0, #0xff
	b _022253BC
_02225396:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014924
	add r1, sp, #0
	mov r0, #8
	ldrh r2, [r1]
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
	b _022253BC
_022253AC:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #8
	ldrh r2, [r1]
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
_022253BC:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014910
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222534C

	thumb_func_start ov12_022253CC
ov12_022253CC: ; 0x022253CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _022253F4
	mov r0, #1
	strb r0, [r4, #8]
_022253F4:
	ldr r1, [sp, #4]
	cmp r1, #3
	bgt _02225412
	cmp r1, #0
	blt _02225426
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222540A: ; jump table
	.short _02225416 - _0222540A - 2 ; case 0
	.short _02225420 - _0222540A - 2 ; case 1
	.short _02225426 - _0222540A - 2 ; case 2
	.short _02225426 - _0222540A - 2 ; case 3
_02225412:
	cmp r1, #0xff
	b _02225426
_02225416:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014954
	b _02225426
_02225420:
	ldr r1, [sp, #0xc]
	add r0, sp, #0
	strh r1, [r0]
_02225426:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014940
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022253CC

	thumb_func_start ov12_02225434
ov12_02225434: ; 0x02225434
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225434

	thumb_func_start ov12_02225438
ov12_02225438: ; 0x02225438
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225438

	thumb_func_start ov12_0222543C
ov12_0222543C: ; 0x0222543C
	mov r0, #1
	bx lr
	thumb_func_end ov12_0222543C

	thumb_func_start ov12_02225440
ov12_02225440: ; 0x02225440
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225440

	thumb_func_start ov12_02225444
ov12_02225444: ; 0x02225444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02225470
	mov r0, #1
	strb r0, [r4, #8]
_02225470:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bgt _02225490
	cmp r0, #0
	blt _0222552A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225486: ; jump table
	.short _02225494 - _02225486 - 2 ; case 0
	.short _022254B8 - _02225486 - 2 ; case 1
	.short _02225514 - _02225486 - 2 ; case 2
	.short _02225520 - _02225486 - 2 ; case 3
	.short _022254DA - _02225486 - 2 ; case 4
_02225490:
	cmp r0, #0xff
	b _0222552A
_02225494:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02014988
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp]
	mul r1, r2
	str r1, [sp]
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #4]
	mul r1, r2
	str r1, [sp, #4]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #8]
	b _0222552A
_022254B8:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #8
	ldrsb r5, [r4, r3]
	mul r5, r2
	str r5, [sp]
	ldrsb r2, [r4, r3]
	mul r2, r1
	str r2, [sp, #4]
	ldrsb r1, [r4, r3]
	mul r1, r0
	str r1, [sp, #8]
	b _0222552A
_022254DA:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov12_02235508
	ldr r1, [sp]
	ldr r5, [sp, #0x14]
	add r0, r1, #0
	ldr r6, [sp, #0x18]
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [sp, #8]
	b _0222552A
_02225514:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl ov12_02235508
	b _0222552A
_02225520:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov12_02235508
_0222552A:
	ldr r1, [sp]
	ldr r0, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x30]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x34]
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02014970
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225444

	thumb_func_start ov12_02225550
ov12_02225550: ; 0x02225550
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02225578
	mov r0, #1
	strb r0, [r4, #8]
_02225578:
	ldr r0, [sp, #4]
	cmp r0, #3
	bgt _02225596
	cmp r0, #0
	blt _022255C4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222558E: ; jump table
	.short _0222559A - _0222558E - 2 ; case 0
	.short _022255B2 - _0222558E - 2 ; case 1
	.short _022255C4 - _0222558E - 2 ; case 2
	.short _022255C4 - _0222558E - 2 ; case 3
_02225596:
	cmp r0, #0xff
	b _022255C4
_0222559A:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020149D4
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
	b _022255C4
_022255B2:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
_022255C4:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020149BC
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225550

	thumb_func_start ov12_022255D4
ov12_022255D4: ; 0x022255D4
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _022255E8 ; =0x02239D6C
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_022255E8: .word 0x02239D6C
	thumb_func_end ov12_022255D4

	thumb_func_start ov12_022255EC
ov12_022255EC: ; 0x022255EC
	push {r3, r4, r5}
	sub sp, #0x3c
	ldr r4, _02225610 ; =0x02239DA4
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #7
_022255F8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022255F8
	ldr r0, [r4, #0]
	lsl r1, r5, #2
	str r0, [r3, #0]
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x3c
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_02225610: .word 0x02239DA4
	thumb_func_end ov12_022255EC

	thumb_func_start ov12_02225614
ov12_02225614: ; 0x02225614
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _0222563C ; =0x0000FEFE
	add r5, r4, #0
_0222561C:
	add r0, r4, #0
	bl ov12_022255EC
	add r4, r4, #1
	cmp r0, r6
	beq _0222562E
	add r5, r5, #1
	cmp r5, #0xff
	blt _0222561C
_0222562E:
	cmp r5, #0xff
	blt _02225636
	mov r0, #0
	pop {r4, r5, r6, pc}
_02225636:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0222563C: .word 0x0000FEFE
	thumb_func_end ov12_02225614

	thumb_func_start ov12_02225640
ov12_02225640: ; 0x02225640
	ldr r3, _02225648 ; =ov12_0222325C
	ldr r0, [r0, #0]
	mov r2, #4
	bx r3
	; .align 2, 0
_02225648: .word ov12_0222325C
	thumb_func_end ov12_02225640

	thumb_func_start ov12_0222564C
ov12_0222564C: ; 0x0222564C
	push {r3, lr}
	sub sp, #8
	add r2, sp, #0
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	ldr r0, [r1, #4]
	bl sub_02014784
	add r1, r0, #0
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_0222564C

	thumb_func_start ov12_02225670
ov12_02225670: ; 0x02225670
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _022256A8 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #0x20]
	strh r2, [r0]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022256A8: .word 0x02239DE0
	thumb_func_end ov12_02225670

	thumb_func_start ov12_022256AC
ov12_022256AC: ; 0x022256AC
	push {r4, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r0, r4, #0
	add r1, sp, #8
	bl ov12_02225640
	ldr r1, [sp, #0xc]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x14]
	strh r1, [r0, #4]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r1, r0, #0
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov12_022256AC

	thumb_func_start ov12_022256E8
ov12_022256E8: ; 0x022256E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _02225720 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	ldrh r2, [r1, #0x1a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02225720: .word 0x02239DE0
	thumb_func_end ov12_022256E8

	thumb_func_start ov12_02225724
ov12_02225724: ; 0x02225724
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02225780 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #8]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #0x14]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #0x16]
	strh r2, [r0, #0xe]
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	strh r2, [r0, #4]
	ldrh r1, [r1, #0x2e]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	ldr r0, [r4, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02225772
	add r0, sp, #8
	add r1, r5, #0
	bl sub_020209D4
	b _0222577A
_02225772:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
_0222577A:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02225780: .word 0x02239DE0
	thumb_func_end ov12_02225724

	thumb_func_start ov12_02225784
ov12_02225784: ; 0x02225784
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _022257BC ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022257BC: .word 0x02239DE0
	thumb_func_end ov12_02225784

	thumb_func_start ov12_022257C0
ov12_022257C0: ; 0x022257C0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _022257F8 ; =0x02239DE0
	add r0, sp, #0
	ldrh r2, [r1, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0xa]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02014784
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02014788
	add r0, sp, #0
	add r1, r5, #0
	bl sub_020209D4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022257F8: .word 0x02239DE0
	thumb_func_end ov12_022257C0

	thumb_func_start ov12_022257FC
ov12_022257FC: ; 0x022257FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02014784
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x24]
	add r2, sp, #0
	bl ov12_022356E8
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02020ACC
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022257FC

	thumb_func_start ov12_02225824
ov12_02225824: ; 0x02225824
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02014784
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl ov12_022356E8
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02020ACC
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225824

	thumb_func_start ov12_0222584C
ov12_0222584C: ; 0x0222584C
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _02225860 ; =0x02239E10
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_02225860: .word 0x02239E10
	thumb_func_end ov12_0222584C

	thumb_func_start ov12_02225864
ov12_02225864: ; 0x02225864
	push {r3, r4, r5, r6}
	cmp r2, #0
	beq _0222587A
	mov r4, #0x18
	add r6, r0, #0
	mul r6, r4
	ldr r4, _02225890 ; =0x02239E34
	lsl r5, r1, #2
	add r4, r4, r6
	ldrsh r4, [r5, r4]
	strh r4, [r2]
_0222587A:
	cmp r3, #0
	beq _0222588C
	mov r2, #0x18
	mul r2, r0
	ldr r0, _02225894 ; =0x02239E36
	lsl r1, r1, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	strh r0, [r3]
_0222588C:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02225890: .word 0x02239E34
_02225894: .word 0x02239E36
	thumb_func_end ov12_02225864

	thumb_func_start ov12_02225898
ov12_02225898: ; 0x02225898
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022258B8
	mov r0, #0
	add r1, r5, #2
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225864
	pop {r3, r4, r5, r6, r7, pc}
_022258B8:
	add r0, r7, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022258D0
	mov r0, #1
	sub r1, r5, #2
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225864
	pop {r3, r4, r5, r6, r7, pc}
_022258D0:
	mov r0, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225864
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225898

	thumb_func_start ov12_022258E0
ov12_022258E0: ; 0x022258E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r2, #0
	bl ov12_02235254
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022258FA
	mov r5, #1
	b _022258FC
_022258FA:
	mov r5, #0
_022258FC:
	add r0, r7, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02225908
	add r4, r4, #2
_02225908:
	cmp r6, #3
	bhi _02225940
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225918: ; jump table
	.short _02225920 - _02225918 - 2 ; case 0
	.short _02225930 - _02225918 - 2 ; case 1
	.short _02225920 - _02225918 - 2 ; case 2
	.short _02225930 - _02225918 - 2 ; case 3
_02225920:
	mov r0, #0x18
	add r2, r5, #0
	mul r2, r0
	ldr r0, _02225948 ; =0x02239E34
	lsl r1, r4, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02225930:
	mov r0, #0x18
	add r2, r5, #0
	mul r2, r0
	ldr r0, _0222594C ; =0x02239E36
	lsl r1, r4, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02225940:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225948: .word 0x02239E34
_0222594C: .word 0x02239E36
	thumb_func_end ov12_022258E0

	thumb_func_start ov12_02225950
ov12_02225950: ; 0x02225950
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov12_02225950

	thumb_func_start ov12_02225964
ov12_02225964: ; 0x02225964
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #1
	bl ov12_0223525C
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_0221FDD4
	cmp r0, #0
	beq _02225982
	cmp r4, #3
	bne _02225988
	sub r5, r5, #2
	b _02225988
_02225982:
	cmp r4, #4
	bne _02225988
	sub r5, r5, #2
_02225988:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225964

	thumb_func_start ov12_0222598C
ov12_0222598C: ; 0x0222598C
	push {r4, lr}
	mov r4, #1
	bl ov12_0223525C
	cmp r0, #4
	bne _0222599A
	sub r4, r4, #2
_0222599A:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222598C

	thumb_func_start ov12_022259A0
ov12_022259A0: ; 0x022259A0
	ldr r3, _022259A8 ; =sub_020BCFD0
	sub r0, r1, r0
	lsl r1, r2, #0xc
	bx r3
	; .align 2, 0
_022259A8: .word sub_020BCFD0
	thumb_func_end ov12_022259A0

	thumb_func_start ov12_022259AC
ov12_022259AC: ; 0x022259AC
	push {r3, lr}
	sub r0, r1, r0
	add r1, r2, #0
	bl sub_020BCFD0
	add r1, sp, #0
	str r0, [sp]
	bl sub_020BDBCC
	cmp r0, #0
	beq _022259CC
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
_022259CC:
	ldr r0, [sp]
	cmp r0, #0
	bge _022259D4
	neg r0, r0
_022259D4:
	str r0, [sp]
	asr r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022259AC

	thumb_func_start ov12_022259DC
ov12_022259DC: ; 0x022259DC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r1, r2, r1
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end ov12_022259DC

	thumb_func_start ov12_022259FC
ov12_022259FC: ; 0x022259FC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_0200D6E8
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_022259FC

	thumb_func_start ov12_02225A18
ov12_02225A18: ; 0x02225A18
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r3, #0
	ldrsh r3, [r5, r1]
	add r0, r4, #0
	add r2, r2, r3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, r2
	bl sub_02007DEC
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225A18

	thumb_func_start ov12_02225A3C
ov12_02225A3C: ; 0x02225A3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0
	add r4, r1, #0
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r1, #0xd
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02225A3C

	thumb_func_start ov12_02225A5C
ov12_02225A5C: ; 0x02225A5C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r3, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r4, [r5, #0x10]
	str r0, [r5, #0x14]
	sub r0, r2, r1
	add r1, r3, #0
	bl sub_020E1F6C
	str r0, [r5, #0x18]
	add r0, sp, #0
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	sub r0, r0, r4
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02225A5C

	thumb_func_start ov12_02225A8C
ov12_02225A8C: ; 0x02225A8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _02225A9E
	bl sub_02022974
_02225A9E:
	cmp r4, r7
	bls _02225AAA
	add r0, sp, #8
	ldrh r1, [r0, #0x1c]
	neg r1, r1
	strh r1, [r0, #0x1c]
_02225AAA:
	add r1, sp, #8
	mov r0, #0x1c
	ldrsh r6, [r1, r0]
	lsl r0, r4, #0xc
	lsl r1, r7, #0xc
	lsl r2, r6, #0xc
	bl ov12_022259AC
	str r0, [r5, #4]
	ldr r0, [sp, #0x1c]
	str r4, [r5, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x14]
	str r6, [r5, #0x18]
	add r0, sp, #8
	ldrh r1, [r0, #0x10]
	ldr r0, [sp]
	sub r0, r1, r0
	ldr r1, [r5, #4]
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225A8C

	thumb_func_start ov12_02225AE0
ov12_02225AE0: ; 0x02225AE0
	push {r4, lr}
	add r4, r0, #0
	bne _02225AEA
	bl sub_02022974
_02225AEA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225B6E
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02225B74 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
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
	asr r0, r1, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x14]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02225B74 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
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
	asr r0, r1, #0xc
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02225B6E:
	mov r0, #0
	pop {r4, pc}
	nop
_02225B74: .word 0x020F983C
	thumb_func_end ov12_02225AE0

	thumb_func_start ov12_02225B78
ov12_02225B78: ; 0x02225B78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02225AE0
	cmp r0, #0
	beq _02225B9A
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_022259DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02225B9A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225B78

	thumb_func_start ov12_02225BA0
ov12_02225BA0: ; 0x02225BA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02225AE0
	cmp r0, #0
	beq _02225BC2
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225A18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02225BC2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225BA0

	thumb_func_start ov12_02225BC8
ov12_02225BC8: ; 0x02225BC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp]
	cmp r5, #0
	bne _02225BDC
	bl sub_02022974
_02225BDC:
	strh r4, [r5]
	strh r6, [r5, #2]
	add r0, sp, #0x10
	ldrh r7, [r0, #0x14]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	str r7, [r5, #4]
	ldr r1, [sp]
	add r2, r7, #0
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #8]
	lsl r4, r6, #0xc
	add r2, sp, #0x10
	mov r1, #0x10
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	add r2, r7, #0
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #0xc]
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225BC8

	thumb_func_start ov12_02225C14
ov12_02225C14: ; 0x02225C14
	push {r4, lr}
	add r4, r0, #0
	bne _02225C1E
	bl sub_02022974
_02225C1E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225C4A
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asr r0, r0, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #2]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_02225C4A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02225C14

	thumb_func_start ov12_02225C50
ov12_02225C50: ; 0x02225C50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225C14
	cmp r0, #0
	beq _02225C6E
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_022259DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02225C6E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225C50

	thumb_func_start ov12_02225C74
ov12_02225C74: ; 0x02225C74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225C14
	cmp r0, #0
	beq _02225C92
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_02225A18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02225C92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225C74

	thumb_func_start ov12_02225C98
ov12_02225C98: ; 0x02225C98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, sp, #0x10
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	str r1, [sp]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	bl ov12_02225BC8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _02225CDC ; =0x0000BFFF
	strh r1, [r5, #2]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	ldrh r0, [r0, #0x18]
	ldr r3, _02225CE0 ; =0x00003FFF
	add r2, r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov12_02225A5C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02225CDC: .word 0x0000BFFF
_02225CE0: .word 0x00003FFF
	thumb_func_end ov12_02225C98

	thumb_func_start ov12_02225CE4
ov12_02225CE4: ; 0x02225CE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02225CF2
	bl sub_02022974
_02225CF2:
	cmp r4, #0
	bne _02225CFA
	bl sub_02022974
_02225CFA:
	add r0, r5, #0
	bl ov12_02225C14
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02225AE0
	mov r2, #0
	ldrsh r3, [r5, r2]
	ldrsh r1, [r4, r2]
	add r1, r3, r1
	strh r1, [r5]
	mov r1, #2
	ldrsh r3, [r5, r1]
	ldrsh r1, [r4, r1]
	add r1, r3, r1
	strh r1, [r5, #2]
	cmp r6, r0
	bne _02225D28
	cmp r6, #0
	bne _02225D28
	add r0, r2, #0
	pop {r4, r5, r6, pc}
_02225D28:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225CE4

	thumb_func_start ov12_02225D2C
ov12_02225D2C: ; 0x02225D2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov12_02225CE4
	cmp r0, #0
	beq _02225D4A
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_022259DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02225D4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225D2C

	thumb_func_start ov12_02225D50
ov12_02225D50: ; 0x02225D50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _02225D62
	bl sub_02022974
_02225D62:
	str r6, [r5, #0]
	lsl r0, r6, #0xc
	lsl r1, r7, #0xc
	add r2, r4, #0
	str r4, [r5, #4]
	bl ov12_022259A0
	asr r0, r0, #0xc
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225D50

	thumb_func_start ov12_02225D78
ov12_02225D78: ; 0x02225D78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _02225D8A
	bl sub_02022974
_02225D8A:
	str r6, [r5, #0]
	lsl r6, r6, #0xc
	add r0, r6, #0
	lsl r1, r7, #0xc
	add r2, r4, #0
	str r4, [r5, #4]
	bl ov12_022259A0
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225D78

	thumb_func_start ov12_02225DA0
ov12_02225DA0: ; 0x02225DA0
	push {r4, lr}
	add r4, r0, #0
	bne _02225DAA
	bl sub_02022974
_02225DAA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225DC2
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_02225DC2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02225DA0

	thumb_func_start ov12_02225DC8
ov12_02225DC8: ; 0x02225DC8
	push {r4, lr}
	add r4, r0, #0
	bne _02225DD2
	bl sub_02022974
_02225DD2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225DEE
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0xc]
	asr r0, r0, #0xc
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_02225DEE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02225DC8

	thumb_func_start ov12_02225DF4
ov12_02225DF4: ; 0x02225DF4
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	add r5, r0, #0
	str r4, [r5, #4]
	str r1, [r5, #8]
	sub r0, r2, r1
	add r1, r4, #0
	str r3, [r5, #0xc]
	bl sub_020E2178
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02225DF4

	thumb_func_start ov12_02225E0C
ov12_02225E0C: ; 0x02225E0C
	push {r4, lr}
	add r4, r0, #0
	bne _02225E16
	bl sub_02022974
_02225E16:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225E5E
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02225E64 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
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
	asr r0, r1, #0xc
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_02225E5E:
	mov r0, #0
	pop {r4, pc}
	nop
_02225E64: .word 0x020F983C
	thumb_func_end ov12_02225E0C

	thumb_func_start ov12_02225E68
ov12_02225E68: ; 0x02225E68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	bne _02225E7A
	bl sub_02022974
_02225E7A:
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [r4, #4]
	lsl r0, r5, #8
	bl sub_020E1F6C
	add r5, r0, #0
	lsl r0, r7, #8
	add r1, r6, #0
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r2, [sp, #0x18]
	lsl r0, r5, #0xc
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r4, #8]
	lsl r0, r5, #0x10
	asr r0, r0, #0x10
	strh r0, [r4]
	strh r0, [r4, #2]
	mov r0, #0
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	mov r0, #2
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225E68

	thumb_func_start ov12_02225EB8
ov12_02225EB8: ; 0x02225EB8
	push {r4, lr}
	add r4, r0, #0
	bne _02225EC2
	bl sub_02022974
_02225EC2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225EEC
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asr r0, r0, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02225EEC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02225EB8

	thumb_func_start ov12_02225EF0
ov12_02225EF0: ; 0x02225EF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _02225F02
	bl sub_02022974
_02225F02:
	ldr r0, [sp, #0x20]
	add r1, sp, #8
	str r0, [r5, #4]
	mov r0, #0x14
	ldrsh r4, [r1, r0]
	lsl r0, r6, #8
	add r1, r4, #0
	bl sub_020E1F6C
	add r6, r0, #0
	lsl r0, r7, #8
	add r1, r4, #0
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	lsl r0, r6, #0xc
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #8]
	ldr r0, [sp]
	add r1, r4, #0
	lsl r0, r0, #8
	bl sub_020E1F6C
	add r7, r0, #0
	add r1, sp, #8
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	add r1, r4, #0
	lsl r0, r0, #8
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	lsl r0, r7, #0xc
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #0xc]
	strh r6, [r5]
	strh r7, [r5, #2]
	mov r0, #0
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	mov r0, #2
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225EF0

	thumb_func_start ov12_02225F6C
ov12_02225F6C: ; 0x02225F6C
	push {r4, lr}
	add r4, r0, #0
	bne _02225F76
	bl sub_02022974
_02225F76:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225FA0
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asr r0, r0, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02225FA0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02225F6C

	thumb_func_start ov12_02225FA4
ov12_02225FA4: ; 0x02225FA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020E17B4
	ldr r1, _02225FD0 ; =0x43800000
	bl sub_020E1304
	str r0, [r4, #0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	bl sub_020E17B4
	ldr r1, _02225FD0 ; =0x43800000
	bl sub_020E1304
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	nop
_02225FD0: .word 0x43800000
	thumb_func_end ov12_02225FA4

	thumb_func_start ov12_02225FD4
ov12_02225FD4: ; 0x02225FD4
	push {r3, r4, lr}
	sub sp, #4
	lsl r1, r1, #1
	mov r0, #0x50
	sub r0, r0, r1
	lsl r4, r0, #0xc
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #9
	bl sub_020BCFD0
	sub r0, r4, r0
	add r1, sp, #0
	bl sub_020BDBCC
	cmp r0, #0
	beq _02226012
	mov r1, #2
	lsl r1, r1, #0xa
	add r0, r0, r1
_02226012:
	ldr r1, [sp]
	add r0, r1, r0
	asr r1, r0, #0xc
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02225FD4

	thumb_func_start ov12_02226024
ov12_02226024: ; 0x02226024
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r3, #0
	bl ov12_02225FD4
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0222604E
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	sub r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0222604E:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, r2
	bl sub_02007DEC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02226024

	thumb_func_start ov12_0222605C
ov12_0222605C: ; 0x0222605C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r3, #0
	bl ov12_02225FD4
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02226086
	mov r0, #0
	mvn r0, r0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	sub r0, r5, r7
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_02226086:
	add r1, sp, #0
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r2, r5, r4
	lsl r2, r2, #0x10
	add r0, r6, #0
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222605C

	thumb_func_start ov12_022260A8
ov12_022260A8: ; 0x022260A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225EB8
	cmp r0, #0
	beq _022260C2
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022259FC
	mov r0, #1
	pop {r3, r4, r5, pc}
_022260C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022260A8

	thumb_func_start ov12_022260C8
ov12_022260C8: ; 0x022260C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225EB8
	cmp r0, #0
	beq _022260E2
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02225A3C
	mov r0, #1
	pop {r3, r4, r5, pc}
_022260E2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022260C8

	thumb_func_start ov12_022260E8
ov12_022260E8: ; 0x022260E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225F6C
	cmp r0, #0
	beq _02226102
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02225A3C
	mov r0, #1
	pop {r3, r4, r5, pc}
_02226102:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022260E8

	thumb_func_start ov12_02226108
ov12_02226108: ; 0x02226108
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0222611A
	bl sub_02022974
_0222611A:
	str r7, [r5, #4]
	ldr r0, [sp, #0x18]
	str r7, [r5, #8]
	str r0, [r5, #0xc]
	mov r1, #0
	str r1, [r5, #0x10]
	str r6, [r5, #0x14]
	str r4, [r5, #0x18]
	neg r0, r6
	str r0, [r5, #0x1c]
	neg r0, r4
	str r0, [r5, #0x20]
	strh r1, [r5]
	strh r1, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02226108

	thumb_func_start ov12_02226138
ov12_02226138: ; 0x02226138
	push {r4, lr}
	add r4, r0, #0
	bne _02226142
	bl sub_02022974
_02226142:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02226196
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _02226192
	mov r2, #0
	str r2, [r4, #4]
	ldrsh r0, [r4, r2]
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x1c]
	cmp r1, #0
	bne _02226166
	strh r2, [r4]
	b _0222616A
_02226166:
	neg r0, r1
	strh r0, [r4]
_0222616A:
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x20]
	str r0, [r4, #0x20]
	cmp r1, #0
	bne _0222617A
	mov r0, #0
	b _0222617C
_0222617A:
	neg r0, r1
_0222617C:
	strh r0, [r4, #2]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #4
	blt _02226192
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
_02226192:
	mov r0, #1
	pop {r4, pc}
_02226196:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226138

	thumb_func_start ov12_0222619C
ov12_0222619C: ; 0x0222619C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02226138
	cmp r0, #0
	beq _022261BE
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225A18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022261BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222619C

	thumb_func_start ov12_022261C4
ov12_022261C4: ; 0x022261C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	strh r3, [r7]
	add r0, sp, #8
	mov r1, #0x10
	ldrsh r1, [r0, r1]
	mov r6, #0
	strh r1, [r7, #2]
	add r1, r7, #0
	add r1, #0x94
	str r2, [r1, #0]
	add r1, r7, #0
	ldrh r2, [r0, #0x14]
	add r1, #0xa8
	strh r2, [r1]
	add r1, r7, #0
	add r1, #0xaa
	strh r6, [r1]
	ldrb r1, [r0, #0x18]
	add r2, r7, #0
	add r2, #0xac
	mov ip, r1
	strb r1, [r2]
	add r1, r7, #0
	add r1, #0xad
	strb r6, [r1]
	ldrb r1, [r0, #0x1c]
	add r0, r7, #0
	add r0, #0xae
	strb r1, [r0]
	mov r0, ip
	cmp r0, #0
	ble _02226226
	add r5, r7, #0
_0222620A:
	ldr r4, [sp]
	add r3, r5, #4
	mov r2, #4
_02226210:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02226210
	ldr r0, [r4, #0]
	add r6, r6, #1
	str r0, [r3, #0]
	mov r0, ip
	add r5, #0x24
	cmp r6, r0
	blt _0222620A
_02226226:
	add r0, r7, #0
	ldr r1, [sp, #0x28]
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r7, #0
	ldr r1, [sp, #0x2c]
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r7, #0
	ldr r1, [sp, #0x30]
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r7, #0
	ldr r1, [sp, #0x34]
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r7, #0
	add r0, #0xac
	ldrb r0, [r0]
	mov r5, #0
	cmp r0, #0
	ble _02226270
	add r4, r7, #0
	add r6, r5, #0
_02226256:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r0, r7, #0
	add r0, #0xac
	ldrb r0, [r0]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _02226256
_02226270:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022261C4

	thumb_func_start ov12_02226274
ov12_02226274: ; 0x02226274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	add r2, sp, #0x10
	mov r1, #1
_02226280:
	add r0, r0, #1
	stmia r2!, {r1}
	cmp r0, #4
	blt _02226280
	add r0, r5, #0
	add r0, #0xa8
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0xaa
	ldrh r0, [r0]
	cmp r2, r0
	bhi _022262C0
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xad
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xaa
	strh r1, [r0]
_022262C0:
	add r0, r5, #0
	add r0, #0xad
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	ldrb r0, [r0]
	cmp r1, r0
	bhs _022262DE
	add r0, r5, #0
	add r0, #0xaa
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xaa
	strh r1, [r0]
_022262DE:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	ble _0222637E
	add r0, sp, #0x10
	add r7, r5, #4
	str r0, [sp, #4]
	add r6, r5, #0
	add r4, r5, #0
_022262F6:
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r7, #0
	blx r1
	ldr r1, [sp, #4]
	cmp r0, #0
	str r0, [r1, #0]
	beq _02226354
	add r0, r5, #0
	add r0, #0xae
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222633A
	mov r1, #0
	mov r2, #4
	ldrsh r1, [r5, r1]
	ldrsh r2, [r6, r2]
	add r0, r4, #0
	add r0, #0x98
	add r1, r1, r2
	mov r2, #2
	ldrsh r3, [r5, r2]
	mov r2, #6
	ldrsh r2, [r6, r2]
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	b _02226360
_0222633A:
	add r0, r7, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov12_02225FA4
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl sub_0200D6E8
	b _02226360
_02226354:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_02226360:
	ldr r0, [sp, #4]
	add r7, #0x24
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp]
	add r6, #0x24
	add r0, r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xad
	ldrb r1, [r0]
	ldr r0, [sp]
	add r4, r4, #4
	cmp r0, r1
	blt _022262F6
_0222637E:
	add r5, #0xac
	ldrb r2, [r5]
	mov r3, #0
	cmp r2, #0
	ble _0222639E
	add r1, sp, #0x10
_0222638A:
	ldr r0, [r1, #0]
	cmp r0, #1
	bne _02226396
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02226396:
	add r3, r3, #1
	add r1, r1, #4
	cmp r3, r2
	blt _0222638A
_0222639E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02226274

	thumb_func_start ov12_022263A4
ov12_022263A4: ; 0x022263A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _022263D4 ; =0x0000FFFF
	add r4, r1, #0
	mov r1, #2
	str r3, [sp]
	lsl r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, _022263D8 ; =0xFFFF8000
	add r5, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0
	add r2, r3, #0
	add r3, r1, #0
	bl ov12_02225A5C
	ldr r0, [r5, #4]
	add r1, r0, #0
	mul r1, r4
	str r1, [r5, #4]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022263D4: .word 0x0000FFFF
_022263D8: .word 0xFFFF8000
	thumb_func_end ov12_022263A4

	thumb_func_start ov12_022263DC
ov12_022263DC: ; 0x022263DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_02225C14
	cmp r0, #0
	bne _022263F8
	mov r0, #1
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_022263F8:
	mov r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _02226402
	strh r0, [r4]
_02226402:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222640E
	mov r0, #0
	strh r0, [r4, #2]
_0222640E:
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02226420 ; =0x04000052
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226420: .word 0x04000052
	thumb_func_end ov12_022263DC

	thumb_func_start ov12_02226424
ov12_02226424: ; 0x02226424
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, sp, #8
	mov r5, #0x10
	ldrsh r5, [r6, r5]
	add r4, r0, #0
	str r5, [sp]
	ldr r5, [sp, #0x1c]
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	str r5, [sp, #4]
	bl ov12_02225BC8
	mov r2, #0
	ldr r0, _02226450 ; =ov12_022263DC
	add r1, r4, #0
	str r2, [r4, #0x24]
	bl sub_0200D9E8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02226450: .word ov12_022263DC
	thumb_func_end ov12_02226424

	thumb_func_start ov12_02226454
ov12_02226454: ; 0x02226454
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov12_02226454

	thumb_func_start ov12_02226458
ov12_02226458: ; 0x02226458
	push {r3, lr}
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0222646C
	mov r0, #1
	str r0, [r1, #0xc]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x10]
	blx r1
	pop {r3, pc}
_0222646C:
	bl sub_02013BA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02226458

	thumb_func_start ov12_02226474
ov12_02226474: ; 0x02226474
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222648E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0222648E
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_0222648E:
	pop {r4, pc}
	thumb_func_end ov12_02226474

	thumb_func_start ov12_02226490
ov12_02226490: ; 0x02226490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _022264A2
	bl sub_02022974
_022264A2:
	mov r0, #1
	str r0, [r5, #8]
	mov r2, #0
	str r2, [r5, #0xc]
	str r4, [r5, #0x18]
	str r6, [r5, #0x10]
	ldr r0, _022264C8 ; =ov12_02226458
	str r7, [r5, #0x14]
	add r1, r5, #0
	bl sub_0200DA3C
	str r0, [r5, #4]
	ldr r0, _022264CC ; =ov12_02226474
	add r1, r5, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022264C8: .word ov12_02226458
_022264CC: .word ov12_02226474
	thumb_func_end ov12_02226490

	thumb_func_start ov12_022264D0
ov12_022264D0: ; 0x022264D0
	push {r4, lr}
	add r4, r0, #0
	bne _022264DA
	bl sub_02022974
_022264DA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022264E4
	bl sub_0200DA58
_022264E4:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022264EE
	bl sub_0200DA58
_022264EE:
	bl sub_02013BA8
	pop {r4, pc}
	thumb_func_end ov12_022264D0

	thumb_func_start ov12_022264F4
ov12_022264F4: ; 0x022264F4
	push {r4, lr}
	add r4, r0, #0
	bne _022264FE
	bl sub_02022974
_022264FE:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov12_022264F4

	thumb_func_start ov12_02226504
ov12_02226504: ; 0x02226504
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013B68
	add r5, r0, #0
	bl sub_02013BA8
	mov r1, #0x62
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #4
	mov r3, #1
	bl sub_02013BB8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02226504

	thumb_func_start ov12_02226528
ov12_02226528: ; 0x02226528
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013B94
	add r0, r4, #0
	bl ov12_02226504
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226528

	thumb_func_start ov12_0222653C
ov12_0222653C: ; 0x0222653C
	ldr r3, _02226540 ; =ov12_02226504
	bx r3
	; .align 2, 0
_02226540: .word ov12_02226504
	thumb_func_end ov12_0222653C

	thumb_func_start ov12_02226544
ov12_02226544: ; 0x02226544
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	ldr r1, _022265B4 ; =0x00000624
	add r0, r7, #0
	bl sub_02018144
	ldr r2, _022265B4 ; =0x00000624
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	cmp r4, #0
	bne _02226566
	bl sub_02022974
_02226566:
	mov r2, #0x32
	add r1, r4, #0
	lsl r2, r2, #4
	add r0, r7, #0
	add r1, #0x20
	add r2, r4, r2
	bl sub_02013B10
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _02226580
	bl sub_02022974
_02226580:
	mov r0, #0x62
	lsl r0, r0, #4
	add r1, r4, #0
	mov r2, #3
	str r5, [r4, r0]
	add r0, r6, #0
	add r1, #0x20
	lsl r2, r2, #8
	bl sub_020C4B4C
	mov r2, #0x32
	lsl r2, r2, #4
	add r1, r4, r2
	add r0, r6, #0
	sub r2, #0x20
	bl sub_020C4B4C
	ldr r2, _022265B8 ; =ov12_02226528
	ldr r3, _022265BC ; =ov12_0222653C
	add r0, r4, #0
	add r1, r4, #0
	bl ov12_02226490
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022265B4: .word 0x00000624
_022265B8: .word ov12_02226528
_022265BC: .word ov12_0222653C
	thumb_func_end ov12_02226544

	thumb_func_start ov12_022265C0
ov12_022265C0: ; 0x022265C0
	push {r4, lr}
	add r4, r0, #0
	bne _022265CA
	bl sub_02022974
_022265CA:
	add r0, r4, #0
	bl ov12_022264D0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022265DA
	bl sub_02013B40
_022265DA:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022265C0

	thumb_func_start ov12_022265E4
ov12_022265E4: ; 0x022265E4
	push {r4, lr}
	add r4, r0, #0
	bne _022265EE
	bl sub_02022974
_022265EE:
	ldr r0, [r4, #0x1c]
	bl sub_02013B54
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022265E4

	thumb_func_start ov12_022265F8
ov12_022265F8: ; 0x022265F8
	push {r4, lr}
	add r4, r0, #0
	bne _02226602
	bl sub_02022974
_02226602:
	add r0, r4, #0
	bl ov12_022264F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022265F8

	thumb_func_start ov12_0222660C
ov12_0222660C: ; 0x0222660C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013DA4
	ldr r0, [r4, #0x1c]
	bl sub_02013DDC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222660C

	thumb_func_start ov12_02226620
ov12_02226620: ; 0x02226620
	ldr r3, _02226628 ; =sub_02013DDC
	ldr r0, [r0, #0x1c]
	bx r3
	nop
_02226628: .word sub_02013DDC
	thumb_func_end ov12_02226620

	thumb_func_start ov12_0222662C
ov12_0222662C: ; 0x0222662C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x40]
	mov r1, #0x20
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02226648
	bl sub_02022974
_02226648:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	ldr r0, [sp, #0x34]
	bl ov12_022266F0
	add r6, r0, #0
	ldr r0, [sp, #0x40]
	bl sub_02013BE0
	str r0, [r4, #0x1c]
	str r5, [sp]
	add r1, sp, #0x20
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_02013C10
	ldr r2, _02226694 ; =ov12_0222660C
	ldr r3, _02226698 ; =ov12_02226620
	add r0, r4, #0
	add r1, r4, #0
	bl ov12_02226490
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02226694: .word ov12_0222660C
_02226698: .word ov12_02226620
	thumb_func_end ov12_0222662C

	thumb_func_start ov12_0222669C
ov12_0222669C: ; 0x0222669C
	push {r4, lr}
	add r4, r0, #0
	bne _022266A6
	bl sub_02022974
_022266A6:
	add r0, r4, #0
	bl ov12_022264D0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022266B6
	bl sub_02013D74
_022266B6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222669C

	thumb_func_start ov12_022266C0
ov12_022266C0: ; 0x022266C0
	push {r4, lr}
	add r4, r0, #0
	bne _022266CA
	bl sub_02022974
_022266CA:
	ldr r0, [r4, #0x1c]
	bl sub_02013D94
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022266C0

	thumb_func_start ov12_022266D4
ov12_022266D4: ; 0x022266D4
	push {r4, lr}
	add r4, r0, #0
	bne _022266DE
	bl sub_02022974
_022266DE:
	add r0, r4, #0
	bl ov12_022264F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022266D4

	thumb_func_start ov12_022266E8
ov12_022266E8: ; 0x022266E8
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022266E8

	thumb_func_start ov12_022266F0
ov12_022266F0: ; 0x022266F0
	cmp r0, #3
	bhi _02226716
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02226700: ; jump table
	.short _02226708 - _02226700 - 2 ; case 0
	.short _0222670C - _02226700 - 2 ; case 1
	.short _02226710 - _02226700 - 2 ; case 2
	.short _02226714 - _02226700 - 2 ; case 3
_02226708:
	ldr r0, _02226718 ; =0x04000010
	bx lr
_0222670C:
	ldr r0, _0222671C ; =0x04000014
	bx lr
_02226710:
	ldr r0, _02226720 ; =0x04000018
	bx lr
_02226714:
	ldr r0, _02226724 ; =0x0400001C
_02226716:
	bx lr
	; .align 2, 0
_02226718: .word 0x04000010
_0222671C: .word 0x04000014
_02226720: .word 0x04000018
_02226724: .word 0x0400001C
	thumb_func_end ov12_022266F0

	thumb_func_start ov12_02226728
ov12_02226728: ; 0x02226728
	add r2, r0, r2
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	ldr r0, [sp]
	add r1, r1, r3
	strh r2, [r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02226728

	thumb_func_start ov12_02226744
ov12_02226744: ; 0x02226744
	push {r3, lr}
	sub r1, r1, r3
	neg r1, r1
	sub r0, r0, r2
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r1, #0
	asr r0, r0, #0x10
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02226744

	thumb_func_start ov12_0222676C
ov12_0222676C: ; 0x0222676C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	sub r0, r1, r3
	neg r0, r0
	lsl r0, r0, #0x10
	sub r1, r6, r2
	asr r4, r0, #0x10
	lsl r1, r1, #0x10
	ldr r5, [sp, #0x10]
	lsl r0, r4, #0xc
	asr r1, r1, #4
	bl sub_020BDA20
	strh r0, [r5]
	ldrh r1, [r5]
	cmp r1, #0
	beq _0222679C
	cmp r4, #0
	bge _0222679C
	ldr r0, _022267A0 ; =0x00007FFF
	sub r1, r1, r0
	ldr r0, _022267A4 ; =0x0000FFFF
	mul r0, r1
	strh r0, [r5]
_0222679C:
	pop {r4, r5, r6, pc}
	nop
_022267A0: .word 0x00007FFF
_022267A4: .word 0x0000FFFF
	thumb_func_end ov12_0222676C

	thumb_func_start ov12_022267A8
ov12_022267A8: ; 0x022267A8
	cmp r2, #0
	ldr r3, [r0, #0]
	bge _022267C0
	add r2, r3, r2
	cmp r2, r1
	ble _022267BA
	str r2, [r0, #0]
	mov r0, #0
	bx lr
_022267BA:
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_022267C0:
	add r2, r3, r2
	cmp r2, r1
	bge _022267CC
	str r2, [r0, #0]
	mov r0, #0
	bx lr
_022267CC:
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022267A8

	thumb_func_start ov12_022267D4
ov12_022267D4: ; 0x022267D4
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02226844
	mov r0, #0x17
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0x17]
	ldrsb r1, [r4, r0]
	mov r0, #0x16
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blt _02226844
	mov r0, #0
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x14]
	str r0, [sp]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #4]
	ldrh r2, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #8]
	bl sub_020039B0
	ldrb r3, [r4, #0x13]
	ldrb r1, [r4, #0x14]
	cmp r1, r3
	bne _0222681A
	mov r0, #0
	add sp, #8
	str r0, [r4, #0]
	pop {r4, pc}
_0222681A:
	mov r0, #0x15
	ldrsb r2, [r4, r0]
	add r1, r1, r2
	lsl r0, r1, #0x18
	asr r0, r0, #0x18
	cmp r2, #0
	ble _02226838
	cmp r0, r3
	ble _02226832
	add sp, #8
	strb r3, [r4, #0x14]
	pop {r4, pc}
_02226832:
	add sp, #8
	strb r1, [r4, #0x14]
	pop {r4, pc}
_02226838:
	cmp r0, r3
	bge _02226842
	add sp, #8
	strb r3, [r4, #0x14]
	pop {r4, pc}
_02226842:
	strb r1, [r4, #0x14]
_02226844:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_022267D4

	thumb_func_start ov12_02226848
ov12_02226848: ; 0x02226848
	push {r4, lr}
	add r4, r0, #0
	bne _02226852
	bl sub_02022974
_02226852:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226848

	thumb_func_start ov12_02226858
ov12_02226858: ; 0x02226858
	push {r4, lr}
	add r4, r0, #0
	bne _02226862
	bl sub_02022974
_02226862:
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02226858

	thumb_func_start ov12_02226870
ov12_02226870: ; 0x02226870
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1c
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02226888
	bl sub_02022974
_02226888:
	str r5, [r4, #0x18]
	str r6, [r4, #8]
	strh r7, [r4, #0xc]
	add r1, sp, #8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xe]
	ldrh r0, [r1, #0x24]
	strh r0, [r4, #0x10]
	ldrb r2, [r1, #0x1c]
	add r0, sp, #0x28
	ldrb r0, [r0]
	strb r2, [r4, #0x12]
	strb r0, [r4, #0x13]
	strb r2, [r4, #0x14]
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	ldrb r2, [r4, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r2, r0
	bhs _022268BA
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	b _022268C0
_022268BA:
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	neg r0, r0
_022268C0:
	strb r0, [r4, #0x15]
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, _022268D8 ; =ov12_022267D4
	ldr r2, [sp, #0x30]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022268D8: .word ov12_022267D4
	thumb_func_end ov12_02226870

	thumb_func_start ov12_022268DC
ov12_022268DC: ; 0x022268DC
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r1, #0
	ble _0222691E
	mov r2, #0x97
_022268E6:
	ldrh r6, [r0]
	mov r3, #0x1f
	add r7, r7, #1
	asr r4, r6, #0xa
	and r4, r3
	add r5, r4, #0
	mov r3, #0x1d
	mul r5, r3
	mov r3, #0x1f
	and r3, r6
	mov r4, #0x4c
	mul r4, r3
	asr r6, r6, #5
	mov r3, #0x1f
	and r3, r6
	add r6, r3, #0
	mul r6, r2
	add r3, r4, r6
	add r3, r5, r3
	asr r5, r3, #8
	lsl r4, r5, #0xa
	lsl r3, r5, #5
	orr r3, r4
	orr r3, r5
	strh r3, [r0]
	add r0, r0, #2
	cmp r7, r1
	blt _022268E6
_0222691E:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022268DC

	thumb_func_start ov12_02226924
ov12_02226924: ; 0x02226924
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_0222332C
	mov r1, #0
	bl sub_0200316C
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226948
	add r0, r4, #0
	mov r1, #0x30
	bl ov12_022268DC
	pop {r3, r4, r5, pc}
_02226948:
	add r0, r4, #0
	mov r1, #0x80
	bl ov12_022268DC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02226924

	thumb_func_start ov12_02226954
ov12_02226954: ; 0x02226954
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov12_0222332C
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226980
	mov r1, #0
	str r1, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02003120
	add sp, #8
	pop {r3, r4, r5, pc}
_02226980:
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02003120
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02226954

	thumb_func_start ov12_02226998
ov12_02226998: ; 0x02226998
	cmp r0, #0x54
	blo _022269A0
	mov r0, #0
	bx lr
_022269A0:
	lsl r1, r0, #2
	ldr r0, _022269A8 ; =0x02239EEC
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_022269A8: .word 0x02239EEC
	thumb_func_end ov12_02226998

	thumb_func_start ov12_022269AC
ov12_022269AC: ; 0x022269AC
	cmp r0, #0x21
	blo _022269B4
	mov r0, #0
	bx lr
_022269B4:
	lsl r1, r0, #2
	ldr r0, _022269BC ; =0x02239E68
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_022269BC: .word 0x02239E68
	thumb_func_end ov12_022269AC

	thumb_func_start ov12_022269C0
ov12_022269C0: ; 0x022269C0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022269C0

	thumb_func_start ov12_022269C4
ov12_022269C4: ; 0x022269C4
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022269D6
	cmp r0, #1
	beq _022269DC
	pop {r4, pc}
_022269D6:
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_022269DC:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_022269C4

	thumb_func_start ov12_022269EC
ov12_022269EC: ; 0x022269EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	mov r3, #1
	ldr r1, _02226A10 ; =ov12_022269C4
	add r0, r4, #0
	lsl r3, r3, #0xc
	str r4, [r2, #4]
	bl ov12_022201CC
	pop {r4, pc}
	nop
_02226A10: .word ov12_022269C4
	thumb_func_end ov12_022269EC

	thumb_func_start ov12_02226A14
ov12_02226A14: ; 0x02226A14
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02226A26
	cmp r0, #1
	beq _02226A2C
	pop {r4, pc}
_02226A26:
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_02226A2C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220230
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02226A14

	thumb_func_start ov12_02226A3C
ov12_02226A3C: ; 0x02226A3C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	mov r3, #1
	ldr r1, _02226A60 ; =ov12_02226A14
	add r0, r4, #0
	lsl r3, r3, #0xc
	str r4, [r2, #4]
	bl ov12_02220204
	pop {r4, pc}
	nop
_02226A60: .word ov12_02226A14
	thumb_func_end ov12_02226A3C

	thumb_func_start ov12_02226A64
ov12_02226A64: ; 0x02226A64
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _02226A74
	cmp r1, #1
	beq _02226A7A
	pop {r4, pc}
_02226A74:
	add r0, r1, #1
	strb r0, [r4]
	pop {r4, pc}
_02226A7A:
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226A64

	thumb_func_start ov12_02226A88
ov12_02226A88: ; 0x02226A88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1]
	mov r2, #1
	ldr r0, _02226AA8 ; =ov12_02226A64
	lsl r2, r2, #0xc
	str r4, [r1, #4]
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_02226AA8: .word ov12_02226A64
	thumb_func_end ov12_02226A88

	thumb_func_start ov12_02226AAC
ov12_02226AAC: ; 0x02226AAC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _02226ABE
	cmp r0, #1
	beq _02226B04
	pop {r4, r5, r6, pc}
_02226ABE:
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x14]
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_0200D5AC
	ldr r0, [r5, #0x18]
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5AC
	ldr r0, [r5, #0x1c]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0200D5AC
	ldr r0, [r5, #0xc]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
_02226B04:
	ldr r0, [r5, #0x10]
	ldr r4, [r5, #4]
	bl sub_0200D0F4
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02220220
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02226AAC

	thumb_func_start ov12_02226B1C
ov12_02226B1C: ; 0x02226B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	mov r1, #0x73
	str r0, [sp]
	mov r0, #5
	lsl r1, r1, #2
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02226B3A
	bl sub_02022974
_02226B3A:
	mov r0, #0
	strb r0, [r4]
	str r6, [r4, #8]
	str r7, [r4, #0xc]
	ldr r0, [sp]
	str r5, [r4, #0x10]
	str r0, [r4, #4]
	ldr r1, [sp]
	add r0, sp, #4
	bl ov12_0222329C
	str r5, [r4, #0x14]
	mov r6, #1
	add r5, r4, #4
	add r7, sp, #4
_02226B58:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02226B58
	mov r3, #1
	ldr r0, [sp]
	ldr r1, _02226B80 ; =ov12_02226AAC
	add r2, r4, #0
	lsl r3, r3, #0xc
	bl ov12_022201CC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226B80: .word ov12_02226AAC
	thumb_func_end ov12_02226B1C

	thumb_func_start ov12_02226B84
ov12_02226B84: ; 0x02226B84
	push {r4, lr}
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	add r4, r0, #0
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	pop {r4, pc}
	thumb_func_end ov12_02226B84

	thumb_func_start ov12_02226BA0
ov12_02226BA0: ; 0x02226BA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _02226BB2
	cmp r0, #1
	beq _02226BD4
	b _02226C9E
_02226BB2:
	mov r0, #0x26
	ldrsh r0, [r5, r0]
	mov r1, #0x20
	mov r2, #0x22
	str r0, [sp]
	mov r3, #0x24
	add r0, r5, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, #0x7c
	bl ov12_02226108
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02226BD4:
	add r0, r5, #0
	add r0, #0x7c
	bl ov12_02226138
	cmp r0, #0
	bne _02226BE8
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02226BE8:
	ldr r2, [r5, #0x28]
	mov r1, #1
	lsl r1, r1, #8
	add r0, r2, #0
	and r0, r1
	cmp r0, r1
	bne _02226C34
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	ble _02226C82
	add r4, r5, #0
	mov r7, #0x32
_02226C02:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02226C28
	mov r2, #0x7c
	mov r3, #0x30
	ldrsh r2, [r5, r2]
	ldrsh r3, [r4, r3]
	mov r1, #0
	add r2, r2, r3
	bl sub_02007DEC
	mov r2, #0x7e
	ldrsh r3, [r5, r2]
	ldrsh r2, [r4, r7]
	ldr r0, [r4, #0x34]
	mov r1, #1
	add r2, r3, r2
	bl sub_02007DEC
_02226C28:
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _02226C02
	b _02226C82
_02226C34:
	lsl r0, r1, #1
	and r2, r0
	cmp r2, r0
	bne _02226C82
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	ble _02226C7C
	add r4, r5, #0
	mov r7, #0x32
_02226C48:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _02226C72
	mov r1, #0x7c
	mov r2, #0x30
	ldrsh r1, [r5, r1]
	ldrsh r2, [r4, r2]
	add r1, r1, r2
	mov r2, #0x7e
	ldrsh r3, [r5, r2]
	ldrsh r2, [r4, r7]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x38]
	bl sub_0200D330
_02226C72:
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _02226C48
_02226C7C:
	ldr r0, [r5, #0x10]
	bl sub_0200C7EC
_02226C82:
	mov r0, #1
	ldr r1, [r5, #0x28]
	lsl r0, r0, #0xa
	and r1, r0
	cmp r1, r0
	bne _02226CAC
	mov r3, #0x7c
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x18]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	pop {r3, r4, r5, r6, r7, pc}
_02226C9E:
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
_02226CAC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02226BA0

	thumb_func_start ov12_02226CB0
ov12_02226CB0: ; 0x02226CB0
	push {r3, r4, r5, lr}
	mov r1, #0xa0
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	strh r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0x22]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0x26]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	mov r2, #1
	lsl r2, r2, #8
	str r0, [r4, #0x28]
	add r1, r0, #0
	and r0, r2
	cmp r0, r2
	bne _02226D10
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x2c
	add r3, r4, #0
	bl ov12_02235998
	b _02226D26
_02226D10:
	lsl r0, r2, #1
	add r3, r1, #0
	and r3, r0
	cmp r3, r0
	bne _02226D26
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x2c
	add r3, r4, #0
	bl ov12_02235D74
_02226D26:
	ldr r0, [r4, #8]
	ldr r1, _02226D34 ; =ov12_02226BA0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02226D34: .word ov12_02226BA0
	thumb_func_end ov12_02226CB0

	thumb_func_start ov12_02226D38
ov12_02226D38: ; 0x02226D38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #3
	bhi _02226E02
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02226D50: ; jump table
	.short _02226D58 - _02226D50 - 2 ; case 0
	.short _02226D76 - _02226D50 - 2 ; case 1
	.short _02226DB8 - _02226D50 - 2 ; case 2
	.short _02226DC4 - _02226D50 - 2 ; case 3
_02226D58:
	ldrh r0, [r4, #0x18]
	mov r1, #4
	mov r2, #0x39
	str r0, [sp]
	ldrh r3, [r4, #0x16]
	ldr r0, _02226EA4 ; =0x04000050
	bl sub_020BF55C
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_02226D76:
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0x16]
	mov r0, #0
	sub r1, r1, #2
	cmp r2, r1
	bge _02226D88
	add r1, r2, #2
	strh r1, [r4, #0x16]
	b _02226D8A
_02226D88:
	add r0, r0, #1
_02226D8A:
	ldrh r1, [r4, #0x18]
	cmp r1, #9
	bls _02226D96
	sub r1, r1, #2
	strh r1, [r4, #0x18]
	b _02226D98
_02226D96:
	add r0, r0, #1
_02226D98:
	cmp r0, #2
	bne _02226DAA
	ldrh r0, [r4, #8]
	strh r0, [r4, #0x16]
	mov r0, #7
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_02226DAA:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02226EA8 ; =0x04000052
	strh r1, [r0]
	b _02226E1A
_02226DB8:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02226E1A
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	b _02226E1A
_02226DC4:
	ldrh r0, [r4, #0x16]
	mov r1, #0
	cmp r0, #2
	bls _02226DD2
	sub r0, r0, #2
	strh r0, [r4, #0x16]
	b _02226DD4
_02226DD2:
	add r1, r1, #1
_02226DD4:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x1d
	bhs _02226DE0
	add r0, r0, #2
	strh r0, [r4, #0x18]
	b _02226DE2
_02226DE0:
	add r1, r1, #1
_02226DE2:
	cmp r1, #2
	bne _02226DF4
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x1f
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_02226DF4:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02226EA8 ; =0x04000052
	strh r1, [r0]
	b _02226E1A
_02226E02:
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02226E1A:
	mov r1, #0x10
	ldrsh r3, [r4, r1]
	cmp r3, #0
	ble _02226E2C
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	lsl r0, r1, #5
	cmp r2, r0
	bge _02226E3A
_02226E2C:
	cmp r3, #0
	bge _02226E3E
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _02226EAC ; =0xFFFFFE64
	cmp r1, r0
	bgt _02226E3E
_02226E3A:
	mov r0, #1
	str r0, [r4, #4]
_02226E3E:
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r1, r2, r1
	strh r1, [r4, #0xc]
	ldrh r2, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	cmp r2, r1
	bhs _02226E82
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02226E68
	add r0, r0, #1
	b _02226E6A
_02226E68:
	mov r0, #0
_02226E6A:
	strh r0, [r4, #0x10]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02226E78
	add r0, r0, #1
	b _02226E7A
_02226E78:
	mov r0, #0
_02226E7A:
	strh r0, [r4, #0xe]
	mov r0, #0
	strh r0, [r4, #0x14]
	b _02226E86
_02226E82:
	add r0, r1, #1
	strh r0, [r4, #0x14]
_02226E86:
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226EA4: .word 0x04000050
_02226EA8: .word 0x04000052
_02226EAC: .word 0xFFFFFE64
	thumb_func_end ov12_02226D38

	thumb_func_start ov12_02226EB0
ov12_02226EB0: ; 0x02226EB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xb8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1c
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	strh r0, [r4, #0x12]
	mov r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02226F5C
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _02226F5C
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r0, #0xb
	mul r0, r1
	strh r0, [r4, #0xa]
	mov r1, #0xc
	add r0, r1, #0
	ldrsh r2, [r4, r1]
	sub r0, #0xd
	mul r0, r2
	strh r0, [r4, #0xc]
	mov r0, #0xe
	ldrsh r2, [r4, r0]
	sub r0, #0xf
	mul r0, r2
	strh r0, [r4, #0xe]
	mov r0, #0x10
	ldrsh r2, [r4, r0]
	sub r0, #0x11
	mul r0, r2
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	sub r0, #0x54
	strh r0, [r4, #0xc]
	b _02226F64
_02226F5C:
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r0, #0x54
	strh r0, [r4, #0xc]
_02226F64:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226F78
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	sub r0, #0xf
	mul r0, r1
	strh r0, [r4, #0xe]
_02226F78:
	mov r1, #0
	strh r1, [r4, #0x16]
	mov r0, #0x1f
	strh r0, [r4, #0x18]
	mov r0, #2
	str r1, [r4, #4]
	bl sub_02019120
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	mov r1, #0
	add r7, r0, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E3C
	add r0, r7, #0
	mov r1, #1
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	mov r1, #7
	add r2, r6, #0
	bl sub_02003050
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019EBC
	add r0, r5, #0
	mov r6, #2
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226FF8
	mov r6, #4
	b _0222700C
_02226FF8:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222700C
	mov r6, #3
_0222700C:
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E60
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	ldr r0, [r4, #0x20]
	ldr r1, _02227060 ; =ov12_02226D38
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227060: .word ov12_02226D38
	thumb_func_end ov12_02226EB0

	thumb_func_start ov12_02227064
ov12_02227064: ; 0x02227064
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #3
	bhi _0222712A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222707C: ; jump table
	.short _02227084 - _0222707C - 2 ; case 0
	.short _022270A2 - _0222707C - 2 ; case 1
	.short _022270E0 - _0222707C - 2 ; case 2
	.short _022270EC - _0222707C - 2 ; case 3
_02227084:
	ldrh r0, [r4, #0x18]
	mov r1, #4
	mov r2, #0x39
	str r0, [sp]
	ldrh r3, [r4, #0x16]
	ldr r0, _022271CC ; =0x04000050
	bl sub_020BF55C
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_022270A2:
	ldrh r0, [r4, #0x16]
	mov r1, #0
	cmp r0, #0x10
	bhs _022270B0
	add r0, r0, #2
	strh r0, [r4, #0x16]
	b _022270B2
_022270B0:
	add r1, r1, #1
_022270B2:
	ldrh r0, [r4, #0x18]
	cmp r0, #4
	bls _022270BE
	sub r0, r0, #2
	strh r0, [r4, #0x18]
	b _022270C0
_022270BE:
	add r1, r1, #1
_022270C0:
	cmp r1, #2
	bne _022270D2
	mov r0, #0x10
	strh r0, [r4, #0x16]
	mov r0, #4
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_022270D2:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _022271D0 ; =0x04000052
	strh r1, [r0]
	b _02227142
_022270E0:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02227142
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	b _02227142
_022270EC:
	ldrh r0, [r4, #0x16]
	mov r1, #0
	cmp r0, #2
	bls _022270FA
	sub r0, r0, #2
	strh r0, [r4, #0x16]
	b _022270FC
_022270FA:
	add r1, r1, #1
_022270FC:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x10
	bhs _02227108
	add r0, r0, #2
	strh r0, [r4, #0x18]
	b _0222710A
_02227108:
	add r1, r1, #1
_0222710A:
	cmp r1, #2
	bne _0222711C
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x1f
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_0222711C:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _022271D0 ; =0x04000052
	strh r1, [r0]
	b _02227142
_0222712A:
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02227142:
	mov r1, #0x10
	ldrsh r3, [r4, r1]
	cmp r3, #0
	ble _02227154
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	lsl r0, r1, #5
	cmp r2, r0
	bge _02227162
_02227154:
	cmp r3, #0
	bge _02227166
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _022271D4 ; =0xFFFFFE64
	cmp r1, r0
	bgt _02227166
_02227162:
	mov r0, #1
	str r0, [r4, #4]
_02227166:
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r1, r2, r1
	strh r1, [r4, #0xc]
	ldrh r2, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	cmp r2, r1
	bhs _022271AA
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02227190
	add r0, r0, #1
	b _02227192
_02227190:
	mov r0, #0
_02227192:
	strh r0, [r4, #0x10]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _022271A0
	add r0, r0, #1
	b _022271A2
_022271A0:
	mov r0, #0
_022271A2:
	strh r0, [r4, #0xe]
	mov r0, #0
	strh r0, [r4, #0x14]
	b _022271AE
_022271AA:
	add r0, r1, #1
	strh r0, [r4, #0x14]
_022271AE:
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022271CC: .word 0x04000050
_022271D0: .word 0x04000052
_022271D4: .word 0xFFFFFE64
	thumb_func_end ov12_02227064

	thumb_func_start ov12_022271D8
ov12_022271D8: ; 0x022271D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xb8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1c
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	strh r0, [r4, #0x12]
	mov r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02227284
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _02227284
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r0, #0xb
	mul r0, r1
	strh r0, [r4, #0xa]
	mov r1, #0xc
	add r0, r1, #0
	ldrsh r2, [r4, r1]
	sub r0, #0xd
	mul r0, r2
	strh r0, [r4, #0xc]
	mov r0, #0xe
	ldrsh r2, [r4, r0]
	sub r0, #0xf
	mul r0, r2
	strh r0, [r4, #0xe]
	mov r0, #0x10
	ldrsh r2, [r4, r0]
	sub r0, #0x11
	mul r0, r2
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	sub r0, #0x54
	strh r0, [r4, #0xc]
	b _0222728C
_02227284:
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r0, #0x54
	strh r0, [r4, #0xc]
_0222728C:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022272A0
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	sub r0, #0xf
	mul r0, r1
	strh r0, [r4, #0xe]
_022272A0:
	mov r0, #4
	strh r0, [r4, #0x16]
	mov r0, #0x10
	strh r0, [r4, #0x18]
	mov r1, #0
	strh r1, [r4, #0x16]
	strh r0, [r4, #0x18]
	mov r0, #2
	str r1, [r4, #4]
	bl sub_02019120
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	mov r1, #0
	add r7, r0, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E3C
	add r0, r7, #0
	mov r1, #1
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	mov r1, #7
	add r2, r6, #0
	bl sub_02003050
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019EBC
	add r0, r5, #0
	mov r6, #2
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02227326
	mov r6, #4
	b _0222733A
_02227326:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222733A
	mov r6, #3
_0222733A:
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E60
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	ldr r0, [r4, #0x20]
	ldr r1, _0222738C ; =ov12_02227064
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222738C: .word ov12_02227064
	thumb_func_end ov12_022271D8

	thumb_func_start ov12_02227390
ov12_02227390: ; 0x02227390
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022273A6
	cmp r0, #1
	beq _022273A6
	cmp r0, #2
	beq _022273D8
	pop {r3, r4, r5, pc}
_022273A6:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225DA0
	cmp r0, #1
	bne _022273C2
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022273C2:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x24]
	add r0, #0xc
	bl ov12_02225D50
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022273D8:
	ldr r0, [r4, #8]
	mov r1, #0xa
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02227390

	thumb_func_start ov12_02227408
ov12_02227408: ; 0x02227408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	str r5, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r7, r0, #0
	beq _02227442
	cmp r7, #2
	bne _0222744C
_02227442:
	ldr r0, [r4, #4]
	bl ov12_02220248
	str r0, [sp]
	b _02227454
_0222744C:
	ldr r0, [r4, #4]
	bl ov12_02220240
	str r0, [sp]
_02227454:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x20]
	ldr r3, [r4, #0x24]
	add r0, #0xc
	bl ov12_02225D50
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02225964
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x14]
	cmp r7, #2
	bne _02227486
	mov r0, #0
	mvn r0, r0
	mul r6, r0
_02227486:
	ldr r0, [r4, #4]
	ldr r1, [sp]
	bl ov12_022232FC
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	cmp r0, #1
	bne _022274B0
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	b _022274B8
_022274B0:
	mov r0, #0x28
	add r1, r6, #0
	mul r1, r0
	strh r1, [r4, #0x28]
_022274B8:
	strh r0, [r4, #0x2a]
	mov r2, #0x28
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xa
	bl sub_02007DEC
	mov r2, #0x2a
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl sub_02007DEC
	ldr r0, [r4, #4]
	ldr r1, _022274E0 ; =ov12_02227390
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022274E0: .word ov12_02227390
	thumb_func_end ov12_02227408

	thumb_func_start ov12_022274E4
ov12_022274E4: ; 0x022274E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x2c
	mov r2, #0x2e
	add r5, r0, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x28]
	add r0, r4, #4
	bl ov12_02225BA0
	cmp r0, #0
	bne _02227530
	mov r2, #0x2c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x2e
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x28]
	mov r1, #1
	sub r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #0x28]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02227530:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022274E4

	thumb_func_start ov12_02227534
ov12_02227534: ; 0x02227534
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0]
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r2, r0, #0
	add r0, r4, #4
	add r1, r6, #0
	bl ov12_022263A4
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	cmp r0, #8
	bgt _0222757E
	cmp r0, #2
	blt _022275F0
	beq _02227584
	cmp r0, #4
	beq _022275A0
	cmp r0, #8
	beq _022275C4
	b _022275F0
_0222757E:
	cmp r0, #0x10
	beq _022275D6
	b _022275F0
_02227584:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x10]
	b _022275F4
_022275A0:
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x10]
	b _022275F4
_022275C4:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	b _022275F4
_022275D6:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	b _022275F4
_022275F0:
	bl sub_02022974
_022275F4:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x2e]
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	ldr r1, _0222761C ; =ov12_022274E4
	add r2, r4, #0
	add r0, #8
	strh r0, [r4, #0x2e]
	ldr r0, [r4, #0]
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222761C: .word ov12_022274E4
	thumb_func_end ov12_02227534

	thumb_func_start ov12_02227620
ov12_02227620: ; 0x02227620
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r5, #0x40]
	mov r0, #4
	mov r1, #0xa
	add r5, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0xe
	bl ov12_02225E68
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02227620

	thumb_func_start ov12_02227658
ov12_02227658: ; 0x02227658
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022260A8
	cmp r0, #0
	bne _02227694
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0222767E
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_0222767E:
	mov r0, #1
	str r0, [r4, #0x40]
	mov r0, #2
	add r4, #0x18
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0xa
	mov r3, #0xc
	bl ov12_02225E68
_02227694:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02227658

	thumb_func_start ov12_0222769C
ov12_0222769C: ; 0x0222769C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x48]
	mov r5, #0
	cmp r1, #4
	bhi _02227734
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022276B4: ; jump table
	.short _022276BE - _022276B4 - 2 ; case 0
	.short _022276E4 - _022276B4 - 2 ; case 1
	.short _022276F4 - _022276B4 - 2 ; case 2
	.short _02227722 - _022276B4 - 2 ; case 3
	.short _02227732 - _022276B4 - 2 ; case 4
_022276BE:
	mov r1, #0x4c
	ldrsh r3, [r4, r1]
	ldr r2, [r4, #0x3c]
	mov r1, #0x18
	mul r1, r2
	mov r2, #0x4e
	ldrsh r2, [r4, r2]
	add r1, r3, r1
	lsl r1, r1, #0x10
	sub r2, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02227620
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _02227734
_022276E4:
	bl ov12_02227658
	cmp r0, #0
	beq _02227734
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _02227734
_022276F4:
	ldr r1, [r4, #0x44]
	sub r1, r1, #1
	str r1, [r4, #0x44]
	bpl _02227734
	ldr r1, [r4, #0x48]
	add r1, r1, #1
	str r1, [r4, #0x48]
	mov r1, #0x4c
	ldrsh r3, [r4, r1]
	ldr r2, [r4, #0x3c]
	mov r1, #0x18
	mul r1, r2
	mov r2, #0x4e
	ldrsh r2, [r4, r2]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	sub r2, #0x18
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02227620
	b _02227734
_02227722:
	bl ov12_02227658
	cmp r0, #0
	beq _02227734
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _02227734
_02227732:
	mov r5, #1
_02227734:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222769C

	thumb_func_start ov12_02227738
ov12_02227738: ; 0x02227738
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0222774A
	cmp r0, #1
	beq _0222775C
	b _02227772
_0222774A:
	add r0, r4, #0
	bl ov12_0222769C
	cmp r0, #0
	beq _02227772
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02227772
_0222775C:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02227772:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02227738

	thumb_func_start ov12_0222777C
ov12_0222777C: ; 0x0222777C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x50
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	str r6, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #4
	str r0, [r4, #0x44]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x4e
	strh r0, [r1]
	ldr r0, [r4, #0]
	ldr r1, _02227804 ; =ov12_02227738
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227804: .word ov12_02227738
	thumb_func_end ov12_0222777C

	thumb_func_start ov12_02227808
ov12_02227808: ; 0x02227808
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200384C
	cmp r0, #0
	bne _02227826
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02227826:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02227808

	thumb_func_start ov12_02227828
ov12_02227828: ; 0x02227828
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #8
	add r5, r0, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r5, [r6, #0]
	add r0, r5, #0
	bl ov12_0222332C
	str r0, [r6, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	beq _02227856
	cmp r0, #1
	beq _02227862
	cmp r0, #2
	beq _02227868
	b _0222786E
_02227856:
	add r0, r5, #0
	bl ov12_02222354
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02227872
_02227862:
	mov r4, #1
	lsl r4, r4, #8
	b _02227872
_02227868:
	mov r4, #2
	lsl r4, r4, #8
	b _02227872
_0222786E:
	bl sub_02022974
_02227872:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x10]
	lsl r3, r7, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	mov r1, #1
	add r2, r4, #0
	asr r3, r3, #0x18
	bl sub_02003178
	ldr r0, [r6, #0]
	ldr r1, _022278CC ; =ov12_02227808
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022278CC: .word ov12_02227808
	thumb_func_end ov12_02227828

	thumb_func_start ov12_022278D0
ov12_022278D0: ; 0x022278D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _02227978
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022278E8: ; jump table
	.short _022278F4 - _022278E8 - 2 ; case 0
	.short _0222790C - _022278E8 - 2 ; case 1
	.short _0222791E - _022278E8 - 2 ; case 2
	.short _02227930 - _022278E8 - 2 ; case 3
	.short _02227948 - _022278E8 - 2 ; case 4
	.short _0222796A - _022278E8 - 2 ; case 5
_022278F4:
	ldr r0, [r4, #0x14]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x10]
	bl sub_020086FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222790C:
	ldr r0, [r4, #4]
	bl sub_020087B4
	cmp r0, #0
	bne _02227978
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222791E:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _0222792A
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227930
_0222792A:
	sub r0, r1, #1
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
_02227930:
	ldr r0, [r4, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #0x10]
	bl sub_020086FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02227948:
	ldr r0, [r4, #4]
	bl sub_020087B4
	cmp r0, #0
	bne _02227978
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	bgt _02227964
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02227964:
	mov r0, #0
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222796A:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02227978:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022278D0

	thumb_func_start ov12_0222797C
ov12_0222797C: ; 0x0222797C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x20
	add r4, r0, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	mov r1, #0
	add r0, r4, #0
	str r1, [r6, #4]
	bl ov12_02220280
	ldr r2, _02227B44 ; =0x00000802
	cmp r0, r2
	bgt _022279B6
	bge _02227A3C
	cmp r0, #8
	bgt _022279B0
	cmp r0, #2
	blt _022279AE
	beq _022279CE
	cmp r0, #4
	beq _022279E0
	cmp r0, #8
	beq _02227A06
_022279AE:
	b _02227AF4
_022279B0:
	cmp r0, #0x10
	beq _02227A18
	b _02227AF4
_022279B6:
	add r1, r2, #6
	cmp r0, r1
	bgt _022279C6
	bge _02227A98
	add r1, r2, #2
	cmp r0, r1
	beq _02227A6C
	b _02227AF4
_022279C6:
	add r2, #0xe
	cmp r0, r2
	beq _02227AC8
	b _02227AF4
_022279CE:
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_022279E0:
	add r0, r4, #0
	bl ov12_02223364
	cmp r0, #1
	beq _022279EC
	b _02227AF8
_022279EC:
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A06:
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A18:
	add r0, r4, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02227AF8
	ldr r0, [r6, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A3C:
	mov r7, #0xff
	mov r5, #0
_02227A40:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #0
	beq _02227A50
	cmp r0, #2
	bne _02227A54
_02227A50:
	add r7, r5, #0
	b _02227A5A
_02227A54:
	add r5, r5, #1
	cmp r5, #4
	blt _02227A40
_02227A5A:
	cmp r7, #0xff
	bne _02227A60
	mov r7, #0
_02227A60:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A6C:
	mov r7, #0xff
	mov r5, #0
_02227A70:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _02227A80
	add r7, r5, #0
	b _02227A86
_02227A80:
	add r5, r5, #1
	cmp r5, #4
	blt _02227A70
_02227A86:
	cmp r7, #0xff
	bne _02227A8C
	mov r7, #0
_02227A8C:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A98:
	mov r7, #0xff
	mov r5, #0
_02227A9C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #1
	beq _02227AAC
	cmp r0, #3
	bne _02227AB0
_02227AAC:
	add r7, r5, #0
	b _02227AB6
_02227AB0:
	add r5, r5, #1
	cmp r5, #4
	blt _02227A9C
_02227AB6:
	cmp r7, #0xff
	bne _02227ABC
	mov r7, #0
_02227ABC:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227AC8:
	mov r7, #0xff
	mov r5, #0
_02227ACC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _02227ADC
	add r7, r5, #0
	b _02227AE2
_02227ADC:
	add r5, r5, #1
	cmp r5, #4
	blt _02227ACC
_02227AE2:
	cmp r7, #0xff
	bne _02227AE8
	mov r7, #0
_02227AE8:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227AF4:
	bl sub_02022974
_02227AF8:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02227B06
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02227B06:
	add r0, r4, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r6, #0x10]
	add r0, r4, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r6, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r6, #0x14]
	add r0, r4, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r6, #0x18]
	add r0, r4, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0]
	ldr r1, _02227B48 ; =ov12_022278D0
	add r2, r6, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227B44: .word 0x00000802
_02227B48: .word ov12_022278D0
	thumb_func_end ov12_0222797C

	thumb_func_start ov12_02227B4C
ov12_02227B4C: ; 0x02227B4C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02227B5C
	b _02227CB0
_02227B5C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02227B68: ; jump table
	.short _02227B72 - _02227B68 - 2 ; case 0
	.short _02227BC0 - _02227B68 - 2 ; case 1
	.short _02227C12 - _02227B68 - 2 ; case 2
	.short _02227C3C - _02227B68 - 2 ; case 3
	.short _02227C9E - _02227B68 - 2 ; case 4
_02227B72:
	ldr r0, [r4, #0x4c]
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x44]
	ldr r3, [r4, #0x40]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225E68
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _02227BAE
	ldr r1, [sp, #8]
	mov r0, #0
	bl sub_020E1A9C
	str r0, [sp, #8]
_02227BAE:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227BC0:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _02227BE6
	ldr r1, [sp, #8]
	mov r0, #0
	bl sub_020E1A9C
	str r0, [sp, #8]
_02227BE6:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	cmp r5, #0
	beq _02227C0A
	mov r0, #0
	str r0, [sp]
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_0222605C
	b _02227CB0
_02227C0A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227C12:
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227C3C:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _02227C62
	ldr r1, [sp, #8]
	mov r0, #0
	bl sub_020E1A9C
	str r0, [sp, #8]
_02227C62:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	cmp r5, #0
	beq _02227C86
	mov r0, #0
	str r0, [sp]
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_0222605C
	b _02227CB0
_02227C86:
	ldr r0, [r4, #0x48]
	sub r0, r0, #1
	str r0, [r4, #0x48]
	cmp r0, #0
	bgt _02227C98
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227C98:
	mov r0, #0
	str r0, [r4, #8]
	b _02227CB0
_02227C9E:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add sp, #0xc
	pop {r4, r5, pc}
_02227CB0:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02227B4C

	thumb_func_start ov12_02227CBC
ov12_02227CBC: ; 0x02227CBC
	push {r4, r5, r6, lr}
	mov r1, #0x54
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	bne _02227CFE
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	b _02227D1C
_02227CFE:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
_02227D1C:
	strh r0, [r4, #0xe]
	add r0, r6, #0
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x38]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x40]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x4c]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022202C0
	str r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, [r4, #0x38]
	mov r2, #0x10
	ldr r0, [r4, #0]
	sub r2, r2, r1
	bl ov12_02235780
	ldr r0, [r4, #0]
	ldr r1, _02227DDC ; =ov12_02227B4C
	add r2, r4, #0
	bl ov12_022201E8
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	beq _02227DCA
	mov r1, #1
	b _02227DCC
_02227DCA:
	mov r1, #0
_02227DCC:
	ldr r0, [r4, #0]
	bl ov12_022234A8
	cmp r0, #1
	bne _02227DDA
	mov r0, #1
	str r0, [r4, #0x50]
_02227DDA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02227DDC: .word ov12_02227B4C
	thumb_func_end ov12_02227CBC

	thumb_func_start ov12_02227DE0
ov12_02227DE0: ; 0x02227DE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _02227DF0
	b _02227F2C
_02227DF0:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02227DFC: ; jump table
	.short _02227E08 - _02227DFC - 2 ; case 0
	.short _02227E4C - _02227DFC - 2 ; case 1
	.short _02227E7C - _02227DFC - 2 ; case 2
	.short _02227E90 - _02227DFC - 2 ; case 3
	.short _02227ED6 - _02227DFC - 2 ; case 4
	.short _02227F18 - _02227DFC - 2 ; case 5
_02227E08:
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x4c]
	asr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260C8
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227E4C:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260E8
	cmp r0, #0
	beq _02227E72
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_02227E72:
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227E7C:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	bne _02227E88
	add r0, r0, #1
	str r0, [r4, #4]
	b _02227E90
_02227E88:
	sub r0, r1, #1
	add sp, #0xc
	str r0, [r4, #0x50]
	pop {r4, r5, pc}
_02227E90:
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x40]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260E8
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227ED6:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260E8
	cmp r0, #0
	beq _02227EFC
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_02227EFC:
	ldr r0, [r4, #0x48]
	sub r0, r0, #1
	str r0, [r4, #0x48]
	cmp r0, #0
	bgt _02227F10
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227F10:
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227F18:
	ldr r0, [r4, #0xc]
	bl ov12_02226B84
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02227F2C:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02227DE0

	thumb_func_start ov12_02227F30
ov12_02227F30: ; 0x02227F30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	mov r1, #0x54
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0]
	bl ov12_02220280
	ldr r2, _02228134 ; =0x00000802
	cmp r0, r2
	bgt _02227F74
	bge _02227FE0
	mov r2, #0x42
	lsl r2, r2, #2
	cmp r0, r2
	bgt _02227F6C
	sub r1, r2, #6
	cmp r0, r1
	blt _02227F6A
	beq _02227F8C
	sub r1, r2, #4
	cmp r0, r1
	beq _02227F8C
	cmp r0, r2
	beq _02227FB6
_02227F6A:
	b _02228096
_02227F6C:
	add r2, #8
	cmp r0, r2
	beq _02227FB6
	b _02228096
_02227F74:
	add r1, r2, #6
	cmp r0, r1
	bgt _02227F84
	bge _0222803C
	add r1, r2, #2
	cmp r0, r1
	beq _02228010
	b _02228096
_02227F84:
	add r2, #0xe
	cmp r0, r2
	beq _0222806C
	b _02228096
_02227F8C:
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #4
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _02228096
_02227FB6:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #4
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _02228096
_02227FE0:
	mov r7, #0xff
	mov r6, #0
_02227FE4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #0
	beq _02227FF4
	cmp r0, #2
	bne _02227FF8
_02227FF4:
	add r7, r6, #0
	b _02227FFE
_02227FF8:
	add r6, r6, #1
	cmp r6, #4
	blt _02227FE4
_02227FFE:
	cmp r7, #0xff
	bne _02228004
	mov r7, #0
_02228004:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
	b _02228096
_02228010:
	mov r7, #0xff
	mov r6, #0
_02228014:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _02228024
	add r7, r6, #0
	b _0222802A
_02228024:
	add r6, r6, #1
	cmp r6, #4
	blt _02228014
_0222802A:
	cmp r7, #0xff
	bne _02228030
	mov r7, #0
_02228030:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
	b _02228096
_0222803C:
	mov r7, #0xff
	mov r6, #0
_02228040:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #1
	beq _02228050
	cmp r0, #3
	bne _02228054
_02228050:
	add r7, r6, #0
	b _0222805A
_02228054:
	add r6, r6, #1
	cmp r6, #4
	blt _02228040
_0222805A:
	cmp r7, #0xff
	bne _02228060
	mov r7, #0
_02228060:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
	b _02228096
_0222806C:
	mov r7, #0xff
	mov r6, #0
_02228070:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _02228080
	add r7, r6, #0
	b _02228086
_02228080:
	add r6, r6, #1
	cmp r6, #4
	blt _02228070
_02228086:
	cmp r7, #0xff
	bne _0222808C
	mov r7, #0
_0222808C:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
_02228096:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022280A6
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_022280A6:
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	strh r0, [r4, #0xa]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r1, #1
	add r0, #0x10
	strh r0, [r4, #0xa]
	add r0, r5, #0
	bl ov12_02220280
	str r0, [r4, #0x34]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x38]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x40]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	str r0, [r4, #0x4c]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	asr r0, r0, #0x10
	str r0, [r4, #0x50]
	ldr r0, [r4, #0]
	ldr r1, _02228138 ; =ov12_02227DE0
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_02227DE0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02228134: .word 0x00000802
_02228138: .word ov12_02227DE0
	thumb_func_end ov12_02227F30

	thumb_func_start ov12_0222813C
ov12_0222813C: ; 0x0222813C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov12_02226454
	cmp r0, #0
	beq _0222815E
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	pop {r3, r4, r5, pc}
_0222815E:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222813C

	thumb_func_start ov12_02228168
ov12_02228168: ; 0x02228168
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x30
	add r7, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r7, [r4, #0]
	add r0, r7, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	mov r5, #0
_0222818C:
	mov r0, #1
	lsl r0, r5
	tst r0, r6
	beq _022281A2
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_022202C0
	mov r1, #1
	bl sub_0200D810
_022281A2:
	add r5, r5, #1
	cmp r5, #4
	blt _0222818C
	add r0, r7, #0
	mov r1, #1
	bl ov12_02220280
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r2, [sp, #8]
	add r1, r5, #0
	bl ov12_02235780
	add r0, r7, #0
	mov r1, #2
	bl ov12_02220280
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #5
	bl ov12_02220280
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	lsl r3, r3, #0x10
	add r0, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02226424
	ldr r0, [r4, #0]
	ldr r1, _02228210 ; =ov12_0222813C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02228210: .word ov12_0222813C
	thumb_func_end ov12_02228168

	thumb_func_start ov12_02228214
ov12_02228214: ; 0x02228214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r1, #1
	bl ov12_02220280
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #4
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _02228262
	mov r7, #6
_02228240:
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov12_0222337C
	cmp r0, #1
	bne _02228250
	cmp r5, #0
	beq _0222825A
_02228250:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02007DEC
_0222825A:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _02228240
_02228262:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02228214

	thumb_func_start ov12_02228268
ov12_02228268: ; 0x02228268
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _022282B6
	ldr r0, [r4, #0]
	cmp r0, #0
	ldr r0, [r4, #0x14]
	bne _02228296
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0x3c]
	add r1, r5, #0
	bl ov12_02220220
	pop {r3, r4, r5, pc}
_02228296:
	mov r1, #6
	bl sub_020080C0
	add r3, r0, #0
	mov r2, #1
	ldr r0, [r4, #0x14]
	mov r1, #6
	eor r2, r3
	bl sub_02007DEC
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_022282B6:
	add r0, r1, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02228268

	thumb_func_start ov12_022282BC
ov12_022282BC: ; 0x022282BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x40
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0x3c]
	bl ov12_02220280
	lsl r0, r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r1, r4, #0
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	ldr r1, _02228308 ; =ov12_02228268
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02228308: .word ov12_02228268
	thumb_func_end ov12_022282BC

	thumb_func_start ov12_0222830C
ov12_0222830C: ; 0x0222830C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _02228324
	cmp r0, #1
	beq _02228358
	b _02228382
_02228324:
	mov r0, #0x16
	ldrsh r3, [r4, r0]
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	mov r2, #0xc
	str r3, [sp]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0x40
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r4, #0x24
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_02228358:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	bne _02228372
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_02228372:
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_02228382:
	ldr r0, [r4, #0x64]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_0222830C

	thumb_func_start ov12_02228394
ov12_02228394: ; 0x02228394
	push {r4, r5, r6, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0x64]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	mov r6, #0xff
	add r1, r6, #0
	add r1, #9
	cmp r0, r1
	bgt _022283E0
	add r1, r6, #3
	cmp r0, r1
	blt _02228436
	beq _022283EA
	add r1, r6, #5
	cmp r0, r1
	beq _022283F4
	add r1, r6, #0
	add r1, #9
	cmp r0, r1
	beq _02228410
	b _02228436
_022283E0:
	add r1, r6, #0
	add r1, #0x11
	cmp r0, r1
	beq _0222841A
	b _02228436
_022283EA:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _0222843A
_022283F4:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _0222843A
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _0222843A
_02228410:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _0222843A
_0222841A:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _0222843A
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _0222843A
_02228436:
	bl sub_02022974
_0222843A:
	cmp r6, #0xff
	bne _02228446
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02228446:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x24
	bl ov12_0223595C
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	add r1, r4, #0
	add r1, #0x14
	str r0, [r4, #0x18]
	bl ov12_02235918
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	cmp r0, #0
	bgt _02228478
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	sub r0, #0xd
	mul r0, r1
	strh r0, [r4, #0xc]
_02228478:
	ldr r0, [r4, #0x64]
	ldr r1, _02228484 ; =ov12_0222830C
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02228484: .word ov12_0222830C
	thumb_func_end ov12_02228394

	thumb_func_start ov12_02228488
ov12_02228488: ; 0x02228488
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _022284A0
	cmp r0, #1
	beq _022284E2
	b _0222850C
_022284A0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022284B0
	mov r0, #0xff
	add r4, #0x20
	add sp, #8
	strb r0, [r4]
	pop {r4, pc}
_022284B0:
	mov r0, #0x12
	ldrsh r3, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r2, #0x64
	str r3, [sp]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0x3c
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_022284E2:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02225C14
	cmp r0, #0
	bne _022284FC
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_022284FC:
	mov r2, #0x3c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_0222850C:
	ldr r0, [r4, #0x60]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02228488

	thumb_func_start ov12_02228520
ov12_02228520: ; 0x02228520
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x64
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	mov r6, #0xff
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	bgt _0222857C
	add r0, r6, #3
	cmp r7, r0
	blt _022285D2
	beq _02228586
	add r0, r6, #5
	cmp r7, r0
	beq _02228590
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	beq _022285AC
	b _022285D2
_0222857C:
	add r0, r6, #0
	add r0, #0x11
	cmp r7, r0
	beq _022285B6
	b _022285D2
_02228586:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _022285D6
_02228590:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022285D6
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _022285D6
_022285AC:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _022285D6
_022285B6:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022285D6
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _022285D6
_022285D2:
	bl sub_02022974
_022285D6:
	cmp r6, #0xff
	bne _022285E2
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_022285E2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	add r1, r4, #0
	add r1, #0x10
	str r0, [r4, #0x14]
	bl ov12_02235918
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	cmp r0, #0
	bgt _02228610
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x64
	strh r2, [r0]
_02228610:
	add r0, r5, #0
	bl ov12_0221FDD4
	ldr r0, [r4, #0x60]
	ldr r1, _02228628 ; =ov12_02228488
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_02228488
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02228628: .word ov12_02228488
	thumb_func_end ov12_02228520

	thumb_func_start ov12_0222862C
ov12_0222862C: ; 0x0222862C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222863C
	b _022287BA
_0222863C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228648: ; jump table
	.short _02228650 - _02228648 - 2 ; case 0
	.short _022286B2 - _02228648 - 2 ; case 1
	.short _022286FC - _02228648 - 2 ; case 2
	.short _0222874A - _02228648 - 2 ; case 3
_02228650:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _022286A8
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02226138
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r2, #0x38
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02008274
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_022286A8:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022286B2:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	ldrb r1, [r4, #9]
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	bhi _022286C2
	b _022287C8
_022286C2:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov12_02220280
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r5, #0x10
	lsl r3, r6, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	mov r2, #0x64
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022286FC:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _02228740
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02228740:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222874A:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _0222878E
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222878E:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022287BA:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022287C8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_0222862C

	thumb_func_start ov12_022287CC
ov12_022287CC: ; 0x022287CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x5c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r0, #0
	strb r0, [r4, #9]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223354
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x64
	lsl r3, r6, #0x10
	add r0, #0x14
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225E68
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x38
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0xc]
	ldr r1, _02228864 ; =ov12_0222862C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02228864: .word ov12_0222862C
	thumb_func_end ov12_022287CC

	thumb_func_start ov12_02228868
ov12_02228868: ; 0x02228868
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _02228878
	b _022289F8
_02228878:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228884: ; jump table
	.short _0222888C - _02228884 - 2 ; case 0
	.short _022288EE - _02228884 - 2 ; case 1
	.short _0222893A - _02228884 - 2 ; case 2
	.short _02228988 - _02228884 - 2 ; case 3
_0222888C:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	bne _022288E4
	add r0, r4, #0
	add r0, #0x44
	bl ov12_02226138
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r2, #0x44
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02008274
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x34]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_022288E4:
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_022288EE:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	ldrb r1, [r4, #9]
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	bhi _022288FE
	b _02228A06
_022288FE:
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0xc]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	asr r1, r2, #0x10
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	asr r3, r3, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x20
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222893A:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222897E
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x34]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222897E:
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_02228988:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _022289CC
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x34]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_022289CC:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x1c]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_022289F8:
	ldr r0, [r4, #0x18]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02228A06:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02228868

	thumb_func_start ov12_02228A0C
ov12_02228A0C: ; 0x02228A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x68
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4]
	str r5, [r4, #0x18]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl ov12_022232FC
	str r0, [r4, #0x1c]
	mov r0, #0
	strb r0, [r4, #9]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	add r3, r4, #2
	bl ov12_02225898
	ldr r0, [r4, #0x18]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl ov12_02223354
	str r0, [r4, #4]
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r0, r1, r0
	strh r0, [r4, #2]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r6, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, #0x20
	add r2, r7, #0
	bl ov12_02225EF0
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x44
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0x18]
	ldr r1, _02228B0C ; =ov12_02228868
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02228B0C: .word ov12_02228868
	thumb_func_end ov12_02228A0C

	thumb_func_start ov12_02228B10
ov12_02228B10: ; 0x02228B10
	push {r3, r4, r5, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r2, #0]
	ldr r0, _02228B3C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222664
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	nop
_02228B3C: .word 0xFFFF1FFF
	thumb_func_end ov12_02228B10

	thumb_func_start ov12_02228B40
ov12_02228B40: ; 0x02228B40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x28
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r0, r5, #0
	add r1, r4, #4
	bl ov12_0223595C
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222590
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x24]
	mov r1, #2
	bl sub_0200D810
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, _02228BC0 ; =0x3F99999A
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_0200D6E8
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _02228BC4 ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0, #0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _02228BC8 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #7
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _02228BCC ; =ov12_02228B10
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02228BC0: .word 0x3F99999A
_02228BC4: .word 0xFFFF1FFF
_02228BC8: .word 0xFFFFC0FF
_02228BCC: .word ov12_02228B10
	thumb_func_end ov12_02228B40

	thumb_func_start ov12_02228BD0
ov12_02228BD0: ; 0x02228BD0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _02228BE8
	cmp r0, #1
	beq _02228C24
	b _02228C5A
_02228BE8:
	mov r0, #0x12
	ldrsh r3, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r0, #0x66
	ldrsh r0, [r4, r0]
	mov r2, #0x64
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0x3c
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_02228C24:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02225C14
	cmp r0, #0
	bne _02228C3E
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_02228C3E:
	mov r2, #0x3c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x3e
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_02228C5A:
	ldr r0, [r4, #0x60]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_02228BD0

	thumb_func_start ov12_02228C6C
ov12_02228C6C: ; 0x02228C6C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x64
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x66
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r1, r4, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	mov r6, #0xff
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	bgt _02228CD6
	add r0, r6, #3
	cmp r7, r0
	blt _02228D2C
	beq _02228CE0
	add r0, r6, #5
	cmp r7, r0
	beq _02228CEA
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	beq _02228D06
	b _02228D2C
_02228CD6:
	add r0, r6, #0
	add r0, #0x11
	cmp r7, r0
	beq _02228D10
	b _02228D2C
_02228CE0:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _02228D30
_02228CEA:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02228D30
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02228D30
_02228D06:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _02228D30
_02228D10:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02228D30
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02228D30
_02228D2C:
	bl sub_02022974
_02228D30:
	cmp r6, #0xff
	bne _02228D3C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02228D3C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _02228D52
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02228D52:
	add r1, r4, #0
	add r1, #0x10
	bl ov12_02235918
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	cmp r0, #0
	bgt _02228D86
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x64
	strh r2, [r0]
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	sub r0, #0x67
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x66
	strh r2, [r0]
_02228D86:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02228DA0
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	sub r0, #0x67
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x66
	strh r2, [r0]
_02228DA0:
	ldr r0, [r4, #0x60]
	ldr r1, _02228DB4 ; =ov12_02228BD0
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_02228BD0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228DB4: .word ov12_02228BD0
	thumb_func_end ov12_02228C6C

	thumb_func_start ov12_02228DB8
ov12_02228DB8: ; 0x02228DB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x20
	mov r2, #0x22
	add r5, r0, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x24]
	add r0, #0x30
	bl ov12_02225BA0
	cmp r0, #0
	bne _02228DFC
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #1
	sub r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02228DFC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02228DB8

	thumb_func_start ov12_02228E00
ov12_02228E00: ; 0x02228E00
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x54
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r2, r4, #0
	add r1, r0, #0
	add r0, r5, #0
	add r2, #0x1c
	add r3, sp, #0
	bl ov12_02235998
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r1, #1
	add r0, #8
	strh r0, [r4, #0x22]
	add r0, r5, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x30
	add r1, r6, #0
	bl ov12_022263A4
	ldr r1, [r4, #0x3c]
	add r2, r4, #0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x44]
	ldr r0, [r4, #4]
	ldr r1, _02228E74 ; =ov12_02228DB8
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02228E74: .word ov12_02228DB8
	thumb_func_end ov12_02228E00

	thumb_func_start ov12_02228E78
ov12_02228E78: ; 0x02228E78
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _02228EB0
	add r0, r4, #0
	add r0, #0x30
	bl ov12_02225C14
	cmp r0, #0
	bne _02228E96
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228E96:
	mov r2, #0x30
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x32
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_02007DEC
	pop {r4, pc}
_02228EB0:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02228E78

	thumb_func_start ov12_02228EC0
ov12_02228EC0: ; 0x02228EC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x5c
	add r6, r0, #0
	bl ov12_02235E50
	add r5, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223595C
	add r0, r6, #0
	mov r1, #0
	bl ov12_02220280
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02220280
	add r7, r0, #0
	cmp r4, #8
	bgt _02228EFE
	cmp r4, #2
	blt _02228F3C
	beq _02228F04
	cmp r4, #4
	beq _02228F0E
	cmp r4, #8
	beq _02228F20
	b _02228F3C
_02228EFE:
	cmp r4, #0x10
	beq _02228F2A
	b _02228F3C
_02228F04:
	add r0, r6, #0
	bl ov12_02220240
	str r0, [sp, #8]
	b _02228F40
_02228F0E:
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _02228F40
_02228F20:
	add r0, r6, #0
	bl ov12_02220248
	str r0, [sp, #8]
	b _02228F40
_02228F2A:
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _02228F40
_02228F3C:
	bl sub_02022974
_02228F40:
	add r2, r5, #0
	ldr r1, [sp, #8]
	add r0, r6, #0
	add r2, #0x54
	bl ov12_022353AC
	add r2, r5, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, #0x1c
	add r3, sp, #0xc
	bl ov12_02235998
	add r0, r5, #0
	mov r1, #0
	add r0, #0x58
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	bl ov12_0223525C
	cmp r0, #3
	bne _02228F7A
	mov r1, #0x4f
	mvn r1, r1
	b _02228F7E
_02228F7A:
	mov r1, #0x15
	lsl r1, r1, #4
_02228F7E:
	add r0, r5, #0
	add r0, #0x58
	strh r1, [r0]
	mov r0, #0x22
	ldrsh r3, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0x20
	mov r2, #0x58
	add r0, r5, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, #0x30
	bl ov12_02225BC8
	ldr r0, [r5, #4]
	ldr r1, _02228FB0 ; =ov12_02228E78
	add r2, r5, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228FB0: .word ov12_02228E78
	thumb_func_end ov12_02228EC0

	thumb_func_start ov12_02228FB4
ov12_02228FB4: ; 0x02228FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x5c
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r7, r0, #0
	cmp r6, #8
	bgt _02228FFC
	cmp r6, #2
	blt _0222903A
	beq _02229002
	cmp r6, #4
	beq _0222900C
	cmp r6, #8
	beq _0222901E
	b _0222903A
_02228FFC:
	cmp r6, #0x10
	beq _02229028
	b _0222903A
_02229002:
	add r0, r5, #0
	bl ov12_02220240
	str r0, [sp, #8]
	b _0222903E
_0222900C:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _0222903E
_0222901E:
	add r0, r5, #0
	bl ov12_02220248
	str r0, [sp, #8]
	b _0222903E
_02229028:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _0222903E
_0222903A:
	bl sub_02022974
_0222903E:
	add r2, r4, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, #0x54
	bl ov12_022353AC
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1c
	add r3, sp, #0x10
	bl ov12_02235998
	add r0, r4, #0
	mov r1, #0
	add r0, #0x58
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	bl ov12_0223525C
	cmp r0, #3
	bne _02229078
	mov r1, #0x4f
	mvn r1, r1
	b _0222907C
_02229078:
	mov r1, #0x15
	lsl r1, r1, #4
_0222907C:
	add r0, r4, #0
	add r0, #0x58
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _022290A6
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0x20
	mov r2, #0x58
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x30
	bl ov12_02225BC8
	b _022290CA
_022290A6:
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov12_022258E0
	add r2, r0, #0
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0x58
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x30
	bl ov12_02225BC8
_022290CA:
	ldr r0, [r4, #4]
	ldr r1, _022290D8 ; =ov12_02228E78
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022290D8: .word ov12_02228E78
	thumb_func_end ov12_02228FB4

	thumb_func_start ov12_022290DC
ov12_022290DC: ; 0x022290DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0
	add r5, r0, #0
	bl ov12_02220280
	add r4, r0, #0
	cmp r4, #8
	bgt _022290FE
	cmp r4, #2
	blt _0222913C
	beq _02229104
	cmp r4, #4
	beq _0222910E
	cmp r4, #8
	beq _02229120
	b _0222913C
_022290FE:
	cmp r4, #0x10
	beq _0222912A
	b _0222913C
_02229104:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _02229140
_0222910E:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02229140
_02229120:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _02229140
_0222912A:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02229140
_0222913C:
	bl sub_02022974
_02229140:
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov12_022353AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	add r3, sp, #4
	bl ov12_02235998
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02223354
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	mov r1, #0
	add r2, sp, #0
	ldrsh r2, [r2, r1]
	ldr r0, [sp, #0x10]
	bl sub_02007DEC
	add r3, sp, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r2, r2, r4
	bl sub_02007DEC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022290DC

	thumb_func_start ov12_02229184
ov12_02229184: ; 0x02229184
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl ov12_02226848
	cmp r0, #0
	bne _022291A8
	ldr r0, [r4, #0x30]
	bl ov12_02226858
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022291A8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02229184

	thumb_func_start ov12_022291AC
ov12_022291AC: ; 0x022291AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x34
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	add r2, r4, #0
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, r7, #0
	add r2, #0x1c
	add r3, sp, #0x2c
	bl ov12_02235D74
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r6, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	lsl r3, r7, #0x14
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsr r3, r3, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _02229270 ; =0x0000044C
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl ov12_02226870
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldr r1, _02229274 ; =ov12_02229184
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229270: .word 0x0000044C
_02229274: .word ov12_02229184
	thumb_func_end ov12_022291AC

	thumb_func_start ov12_02229278
ov12_02229278: ; 0x02229278
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _022292EC
	ldr r0, [r4, #0x4c]
	add r1, r0, #1
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	blt _02229300
	mov r1, #0
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ldr r0, [r4, #0x54]
	bne _022292B0
	cmp r0, #0
	bge _022292A2
	str r1, [r4, #0x54]
_022292A2:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _022292C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022292C4
_022292B0:
	cmp r0, #0x50
	ble _022292B8
	mov r0, #0x50
	str r0, [r4, #0x54]
_022292B8:
	ldr r0, [r4, #0x54]
	cmp r0, #0x50
	bne _022292C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022292C4:
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x54]
	mov r1, #0x12
	bl sub_02007DEC
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x50]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x42
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x50]
	sub r1, r2, r1
	str r1, [r4, #0x50]
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_022292EC:
	ldr r0, [r4, #0x24]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02229300:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02229278

	thumb_func_start ov12_02229304
ov12_02229304: ; 0x02229304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x58
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1c
	add r3, sp, #4
	bl ov12_02235998
	cmp r6, #8
	bgt _02229346
	cmp r6, #2
	blt _02229384
	beq _0222934C
	cmp r6, #4
	beq _02229356
	cmp r6, #8
	beq _02229368
	b _02229384
_02229346:
	cmp r6, #0x10
	beq _02229372
	b _02229384
_0222934C:
	add r0, r5, #0
	bl ov12_02220240
	add r7, r0, #0
	b _02229388
_02229356:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r7, r0, #0
	b _02229388
_02229368:
	add r0, r5, #0
	bl ov12_02220248
	add r7, r0, #0
	b _02229388
_02229372:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r7, r0, #0
	b _02229388
_02229384:
	bl sub_02022974
_02229388:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x48]
	cmp r0, #0
	ldr r0, [r4, #0x24]
	bne _022293DC
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x24]
	mov r1, #0x12
	bl sub_020080C0
	mov r1, #0x50
	sub r0, r1, r0
	str r0, [r4, #0x54]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x40
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x42
	strh r0, [r1]
	mov r0, #0x42
	ldrsh r1, [r4, r0]
	sub r0, #0x43
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x42
	strh r2, [r0]
	b _0222940A
_022293DC:
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x24]
	mov r1, #0x12
	bl sub_020080C0
	str r0, [r4, #0x54]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x40
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x42
	strh r0, [r1]
_0222940A:
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	mov r0, #0x50
	str r0, [r4, #0x38]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02223354
	mov r1, #0x50
	sub r0, r1, r0
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x44]
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x3c]
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _02229450 ; =ov12_02229278
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229450: .word ov12_02229278
	thumb_func_end ov12_02229304

	thumb_func_start ov12_02229454
ov12_02229454: ; 0x02229454
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r1, #8
	bgt _0222946E
	cmp r1, #2
	blt _022294A4
	beq _02229474
	cmp r1, #4
	beq _0222947C
	cmp r1, #8
	beq _0222948C
	b _022294A4
_0222946E:
	cmp r1, #0x10
	beq _02229494
	b _022294A4
_02229474:
	bl ov12_02220240
	add r4, r0, #0
	b _022294A8
_0222947C:
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r4, r0, #0
	b _022294A8
_0222948C:
	bl ov12_02220248
	add r4, r0, #0
	b _022294A8
_02229494:
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r4, r0, #0
	b _022294A8
_022294A4:
	bl sub_02022974
_022294A8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02229454

	thumb_func_start ov12_022294AC
ov12_022294AC: ; 0x022294AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022294BE
	cmp r0, #1
	beq _02229504
	pop {r3, r4, r5, pc}
_022294BE:
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02229536
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x44]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x3c]
	sub r1, r1, r0
	str r1, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _022294F8
	str r0, [r4, #0x3c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022294F8:
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	mov r1, #0x12
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02229504:
	ldr r0, [r4, #0x30]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x48]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x40]
	mov r1, #0x12
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02229536:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022294AC

	thumb_func_start ov12_02229538
ov12_02229538: ; 0x02229538
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222954A
	cmp r0, #1
	beq _0222958E
	pop {r3, r4, r5, pc}
_0222954A:
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _022295C0
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x44]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x3c]
	sub r0, r1, r0
	str r0, [r4, #0x3c]
	bpl _02229582
	mov r0, #0
	str r0, [r4, #0x3c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02229582:
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	mov r1, #0x12
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0222958E:
	ldr r0, [r4, #0x30]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x48]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x40]
	mov r1, #0x12
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022295C0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02229538

	thumb_func_start ov12_022295C4
ov12_022295C4: ; 0x022295C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022295D6
	cmp r0, #1
	beq _02229618
	pop {r3, r4, r5, pc}
_022295D6:
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02229636
	mov r0, #0
	str r0, [r4, #0x24]
	mov r1, #0x1c
	ldrsh r2, [r4, r1]
	ldr r3, [r4, #0x3c]
	sub r2, r3, r2
	str r2, [r4, #0x3c]
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x40]
	add r1, r2, r1
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	bge _02229606
	str r0, [r4, #0x3c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02229606:
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	mov r3, #0x50
	bl sub_020086D4
	pop {r3, r4, r5, pc}
_02229618:
	ldr r0, [r4, #0x30]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02229636:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022295C4

	thumb_func_start ov12_02229638
ov12_02229638: ; 0x02229638
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x50
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x28
	add r3, sp, #4
	bl ov12_02235998
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02229454
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	cmp r0, #0
	beq _022296BA
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02223354
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [r4, #0x3c]
	mov r1, #0
	str r1, [r4, #0x40]
	str r1, [sp]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _0222972C ; =ov12_022295C4
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r4, r5, r6, pc}
_022296BA:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02223354
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022296FA
	ldr r0, [r4, #0x3c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	add r2, r1, #0
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _02229730 ; =ov12_02229538
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r4, r5, r6, pc}
_022296FA:
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x40]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x3c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	add r2, r1, #0
	mov r3, #0x50
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _02229734 ; =ov12_022294AC
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222972C: .word ov12_022295C4
_02229730: .word ov12_02229538
_02229734: .word ov12_022294AC
	thumb_func_end ov12_02229638

	thumb_func_start ov12_02229738
ov12_02229738: ; 0x02229738
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222974C
	cmp r0, #1
	beq _0222976C
	b _022297FC
_0222974C:
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, [r4, #0xc]
	add r0, #0xd4
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02226108
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222976C:
	add r0, r4, #0
	add r0, #0xd4
	bl ov12_02226138
	cmp r0, #0
	bne _022297C0
	ldrb r1, [r4, #1]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	ldrb r0, [r4]
	blt _02229786
	add r0, r0, #1
	b _02229788
_02229786:
	sub r0, r0, #1
_02229788:
	strb r0, [r4]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022297A0
	ldr r1, [r4, #0x1c]
	mov r2, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x28]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
_022297A0:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _022297B6
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
_022297B6:
	ldrb r0, [r4, #1]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_022297C0:
	mov r3, #0xd4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _022297DC
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	ldrsh r3, [r4, r3]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x28]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
_022297DC:
	mov r3, #0xd6
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0222980A
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	ldrsh r3, [r4, r3]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x28]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	add sp, #4
	pop {r3, r4, pc}
_022297FC:
	ldr r0, [r4, #0x2c]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222980A:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02229738

	thumb_func_start ov12_02229810
ov12_02229810: ; 0x02229810
	push {r3, r4, r5, lr}
	mov r1, #0xf8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #0x2c]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl ov12_02220278
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	cmp r0, #0
	bne _02229876
	mov r0, #3
	b _02229878
_02229876:
	mov r0, #2
_02229878:
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x2c]
	ldr r1, _02229888 ; =ov12_02229738
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02229888: .word ov12_02229738
	thumb_func_end ov12_02229810

	thumb_func_start ov12_0222988C
ov12_0222988C: ; 0x0222988C
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x24]
	cmp r3, r0
	beq _022298A0
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _022298B0
_022298A0:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
_022298B0:
	mov r1, #0x20
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bge _022298D2
	add r2, r3, r2
	cmp r2, #0
	ble _022298CA
	str r2, [r4, #0x24]
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r2, r0
	str r0, [r4, #0x28]
	b _022298EA
_022298CA:
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x28]
	b _022298EA
_022298D2:
	add r2, r3, r2
	cmp r2, #0xf
	bge _022298E4
	str r2, [r4, #0x24]
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r2, r0
	str r0, [r4, #0x28]
	b _022298EA
_022298E4:
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x28]
_022298EA:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	lsl r0, r0, #4
	orr r1, r0
	ldr r0, _02229904 ; =0x0400004D
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	pop {r4, pc}
	; .align 2, 0
_02229904: .word 0x0400004D
	thumb_func_end ov12_0222988C

	thumb_func_start ov12_02229908
ov12_02229908: ; 0x02229908
	push {r3, r4, r5, lr}
	mov r1, #0x30
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0x20]
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022202C0
	mov r1, #1
	str r0, [r4, #0x1c]
	bl sub_0200D3F4
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222995E
	mov r0, #0
	b _02229960
_0222995E:
	mov r0, #0xf
_02229960:
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D7FC
	ldr r0, [r4, #4]
	ldr r1, _0222997C ; =ov12_0222988C
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_0222988C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222997C: .word ov12_0222988C
	thumb_func_end ov12_02229908

	thumb_func_start ov12_02229980
ov12_02229980: ; 0x02229980
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #4]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #8
	bl ov12_02220280
	str r0, [r4, #0x30]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	ldr r2, _02229A4C ; =0xFFFF0000
	mov r1, #0
	and r2, r0
	lsl r0, r0, #0x10
	str r1, [r4, #0x1c]
	lsr r2, r2, #0x10
	str r2, [r4, #0x20]
	lsr r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _022299F6
	str r1, [r4, #0x20]
_022299F6:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02229A00
	mov r0, #0xff
	str r0, [r4, #0x24]
_02229A00:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov12_0222026C
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl ov12_02220250
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02229A2A
	add r0, r5, #0
	bl ov12_02220240
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220248
	str r0, [r4, #0x18]
	b _02229A3E
_02229A2A:
	cmp r0, #1
	bne _02229A3E
	add r0, r5, #0
	bl ov12_02220248
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220240
	str r0, [r4, #0x18]
_02229A3E:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _02229A48
	bl sub_02022974
_02229A48:
	pop {r3, r4, r5, pc}
	nop
_02229A4C: .word 0xFFFF0000
	thumb_func_end ov12_02229980

	thumb_func_start ov12_02229A50
ov12_02229A50: ; 0x02229A50
	ldr r0, [r0, #8]
	mov r1, #0
	cmp r0, #0
	beq _02229A62
_02229A58:
	ldrh r2, [r0, #0x26]
	ldrh r3, [r0, #0x24]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02229A58
_02229A62:
	cmp r2, r3
	beq _02229A68
	mov r1, #1
_02229A68:
	add r0, r1, #0
	bx lr
	thumb_func_end ov12_02229A50

	thumb_func_start ov12_02229A6C
ov12_02229A6C: ; 0x02229A6C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov12_02229A50
	add r4, r0, #0
	mov r0, #4
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x28]
	cmp r1, r0
	bge _02229A8A
	add r0, r1, #1
	str r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
_02229A8A:
	add r0, r5, #0
	add r0, #0xa8
	bl ov12_02225C14
	cmp r0, #0
	bne _02229AB2
	cmp r4, #0
	bne _02229AB2
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_02014724
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r5, #0
	bl ov12_02235E80
	pop {r4, r5, r6, pc}
_02229AB2:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r0, r1
	bgt _02229AC0
	ldr r0, [r5, #0x24]
	cmp r0, r1
	bge _02229AC6
_02229AC0:
	ldr r0, [r5, #0x24]
	cmp r0, #0xff
	bne _02229B24
_02229AC6:
	mov r0, #0xa8
	ldrsh r2, [r5, r0]
	ldr r1, [r5, #0x38]
	mov r3, #0xac
	add r0, r2, #0
	ldr r2, [r1, #0x20]
	mul r0, r3
	ldr r2, [r2, #0]
	ldr r2, [r2, #4]
	add r0, r0, r2
	str r0, [r1, #0x28]
	mov r0, #0xaa
	ldrsh r4, [r5, r0]
	ldr r2, [r5, #0x38]
	add r1, r4, #0
	mul r1, r3
	ldr r3, [r2, #0x20]
	ldr r3, [r3, #0]
	ldr r3, [r3, #8]
	add r1, r1, r3
	str r1, [r2, #0x2c]
	ldr r1, [r5, #0x30]
	cmp r1, #0
	beq _02229B24
	mov r1, #6
	ldrsh r1, [r5, r1]
	add r0, #0xbe
	bl sub_020E1F6C
	ldr r1, [r5, #0x2c]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	mov r1, #0xaa
	ldrsh r2, [r5, r1]
	mov r1, #0xac
	mul r1, r2
	add r2, r1, r0
	ldr r1, [r5, #0x38]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r1, #0x2c]
_02229B24:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02229A6C

	thumb_func_start ov12_02229B28
ov12_02229B28: ; 0x02229B28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x41
	lsl r1, r1, #2
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02229980
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02225964
	add r5, r0, #0
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	add r2, sp, #0x18
	bl ov12_02235508
	ldr r1, [r4, #0x18]
	add r0, r6, #0
	add r2, sp, #0xc
	bl ov12_02235508
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0xac
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0xac
	bl sub_020E1F6C
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #0xac
	bl sub_020E1F6C
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	add r2, r1, #0
	mul r2, r5
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #6]
	lsl r1, r6, #0x10
	mov r2, #0xc
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0xa8
	add r3, r2, #0
	mul r3, r5
	add r2, r7, r3
	ldr r3, [sp, #8]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	cmp r5, #0
	ldr r2, _02229C4C ; =0x00005C71
	ble _02229BE0
	ldr r1, _02229C50 ; =0x00000E38
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
	b _02229BF0
_02229BE0:
	ldr r1, _02229C54 ; =0x00003FFF
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
_02229BF0:
	ldr r0, [r4, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02229C0A
	add r6, r4, #0
	add r6, #0xa8
_02229BFC:
	add r0, r6, #0
	bl ov12_02225C14
	ldr r0, [r4, #0x20]
	add r5, r5, #1
	cmp r5, r0
	blt _02229BFC
_02229C0A:
	ldr r0, [r4, #0x24]
	cmp r0, #0xff
	beq _02229C14
	add r0, r0, #1
	str r0, [r4, #0x1c]
_02229C14:
	mov r0, #0xa8
	ldrsh r3, [r4, r0]
	ldr r1, [r4, #0x38]
	mov r2, #0xac
	add r0, r3, #0
	ldr r3, [r1, #0x20]
	mul r0, r2
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	add r0, r0, r3
	str r0, [r1, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x40]
	ldr r1, _02229C58 ; =ov12_02229A6C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02229C4C: .word 0x00005C71
_02229C50: .word 0x00000E38
_02229C54: .word 0x00003FFF
_02229C58: .word ov12_02229A6C
	thumb_func_end ov12_02229B28

	thumb_func_start ov12_02229C5C
ov12_02229C5C: ; 0x02229C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x41
	lsl r1, r1, #2
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	ldr r2, _02229DE8 ; =0xFFFF0000
	mov r1, #0
	and r2, r0
	lsl r0, r0, #0x10
	str r1, [r4, #0x1c]
	lsr r2, r2, #0x10
	str r2, [r4, #0x20]
	lsr r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02229CCE
	str r1, [r4, #0x20]
_02229CCE:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02229CD8
	mov r0, #0xff
	str r0, [r4, #0x24]
_02229CD8:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov12_0222026C
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl ov12_02220250
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02229D00
	add r0, r5, #0
	bl ov12_02220240
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220240
	b _02229D0E
_02229D00:
	add r0, r5, #0
	bl ov12_02220248
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220248
_02229D0E:
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _02229D1A
	bl sub_02022974
_02229D1A:
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	add r2, sp, #0x14
	bl ov12_02235508
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	add r2, sp, #8
	bl ov12_02235508
	cmp r6, #0
	bne _02229D3E
	add r0, sp, #0x14
	bl ov12_02235748
	ldr r0, [sp, #8]
	str r0, [sp, #0x14]
	b _02229D48
_02229D3E:
	add r0, sp, #8
	bl ov12_02235748
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
_02229D48:
	ldr r0, [sp, #0x14]
	mov r1, #0xac
	bl sub_020E1F6C
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0xac
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0xac
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #6]
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r7, #0x10
	add r0, #0xa8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02229DA6
	add r6, r4, #0
	add r6, #0xa8
_02229D98:
	add r0, r6, #0
	bl ov12_02225C14
	ldr r0, [r4, #0x20]
	add r5, r5, #1
	cmp r5, r0
	blt _02229D98
_02229DA6:
	ldr r0, [r4, #0x24]
	cmp r0, #0xff
	beq _02229DB0
	add r0, r0, #1
	str r0, [r4, #0x1c]
_02229DB0:
	mov r0, #0xa8
	ldrsh r3, [r4, r0]
	ldr r1, [r4, #0x38]
	mov r2, #0xac
	add r0, r3, #0
	ldr r3, [r1, #0x20]
	mul r0, r2
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	add r0, r0, r3
	str r0, [r1, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x40]
	ldr r1, _02229DEC ; =ov12_02229A6C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229DE8: .word 0xFFFF0000
_02229DEC: .word ov12_02229A6C
	thumb_func_end ov12_02229C5C

	thumb_func_start ov12_02229DF0
ov12_02229DF0: ; 0x02229DF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov12_02229A50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xcc
	bl ov12_02225CE4
	cmp r0, #0
	bne _02229E2A
	cmp r4, #0
	bne _02229E2A
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_02014724
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r5, #0
	bl ov12_02235E80
	pop {r4, r5, r6, pc}
_02229E2A:
	mov r1, #0xa8
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x38]
	mov r2, #0xac
	add r3, r1, #0
	ldr r1, [r0, #0x20]
	mul r3, r2
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r3, r1
	str r1, [r0, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02229DF0

	thumb_func_start ov12_02229E54
ov12_02229E54: ; 0x02229E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0x41
	lsl r1, r1, #2
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02229980
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02225964
	add r5, r0, #0
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	add r2, sp, #0x20
	bl ov12_02235508
	ldr r1, [r4, #0x18]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov12_02235508
	ldr r0, [sp, #0x20]
	mov r1, #0xac
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0xac
	bl sub_020E1F6C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	mov r1, #0xac
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	bl sub_020E1F6C
	lsl r1, r7, #0x10
	asr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	mov r3, #0xc
	add r2, r1, #0
	mul r2, r5
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r2, r6, #0x10
	add r1, r4, #0
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	add r1, #0xcc
	lsl r0, r0, #0xc
	neg r0, r0
	str r0, [sp, #0xc]
	ldrsh r6, [r4, r3]
	add r0, r4, #0
	add r0, #0xa8
	add r3, r6, #0
	ldr r6, [sp, #0x10]
	mul r3, r5
	add r3, r6, r3
	lsl r3, r3, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225C98
	cmp r5, #0
	ldr r2, _02229F8C ; =0x00005C71
	ble _02229F1A
	ldr r1, _02229F90 ; =0x00000E38
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
	b _02229F2A
_02229F1A:
	ldr r1, _02229F94 ; =0x00003FFF
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
_02229F2A:
	ldr r0, [r4, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02229F4A
	add r6, r4, #0
	add r7, r4, #0
	add r6, #0xa8
	add r7, #0xcc
_02229F3A:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02225CE4
	ldr r0, [r4, #0x20]
	add r5, r5, #1
	cmp r5, r0
	blt _02229F3A
_02229F4A:
	ldr r0, [r4, #0x24]
	cmp r0, #0xff
	beq _02229F54
	add r0, r0, #1
	str r0, [r4, #0x1c]
_02229F54:
	mov r0, #0xa8
	ldrsh r3, [r4, r0]
	ldr r1, [r4, #0x38]
	mov r2, #0xac
	add r0, r3, #0
	ldr r3, [r1, #0x20]
	mul r0, r2
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	add r0, r0, r3
	str r0, [r1, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x40]
	ldr r1, _02229F98 ; =ov12_02229DF0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02229F8C: .word 0x00005C71
_02229F90: .word 0x00000E38
_02229F94: .word 0x00003FFF
_02229F98: .word ov12_02229DF0
	thumb_func_end ov12_02229E54

	thumb_func_start ov12_02229F9C
ov12_02229F9C: ; 0x02229F9C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov12_02229A50
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x58
	bl ov12_02225AE0
	cmp r0, #0
	bne _02229FD2
	cmp r4, #0
	bne _02229FD2
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_02014724
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02229FD2:
	add r0, r5, #0
	add r0, #0x8c
	ldr r2, [r0, #0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	mov r3, #0xac
	add r1, r0, #0
	mul r1, r3
	add r1, r2, r1
	add r2, r5, #0
	add r2, #0x88
	ldr r4, [r2, #0]
	mov r2, #0x58
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0x38]
	mul r3, r2
	ldr r2, [r0, #0x20]
	add r3, r4, r3
	ldr r2, [r2, #0]
	ldr r2, [r2, #4]
	add r2, r3, r2
	str r2, [r0, #0x28]
	ldr r2, [r5, #0x38]
	ldr r0, [r2, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r2, #0x2c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02229F9C

	thumb_func_start ov12_0222A00C
ov12_0222A00C: ; 0x0222A00C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x94
	add r4, r0, #0
	bl ov12_02235E50
	add r5, r0, #0
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r4, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r5, #0x10]
	add r0, r4, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r5, #0x18]
	add r0, r4, #0
	mov r1, #7
	bl ov12_02220280
	str r0, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #8
	bl ov12_02220280
	str r0, [r5, #0x20]
	cmp r0, #0
	bne _0222A08A
	add r0, r4, #0
	bl ov12_02220240
	b _0222A090
_0222A08A:
	add r0, r4, #0
	bl ov12_02220248
_0222A090:
	str r0, [r5, #0x24]
	add r2, r5, #0
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	add r2, #0x88
	bl ov12_02235508
	ldr r1, [r5, #0]
	add r0, r4, #0
	bl ov12_0222026C
	str r0, [r5, #0x38]
	add r0, r4, #0
	mov r1, #9
	bl ov12_02220280
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_02220260
	str r0, [r5, #0x34]
	ldr r1, [r5, #4]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r1, [r5, #0x10]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r1, r4, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsl r2, r6, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	lsl r3, r7, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x58
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov12_02225A5C
	add r0, r5, #0
	add r0, #0x58
	bl ov12_02225AE0
	add r0, r5, #0
	add r0, #0x8c
	ldr r2, [r0, #0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	mov r3, #0x58
	mov r4, #0xac
	add r1, r0, #0
	add r0, r5, #0
	mul r1, r4
	ldrsh r3, [r5, r3]
	add r0, #0x88
	add r2, r2, r1
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0]
	mul r4, r3
	add r3, r0, r4
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r3, r0
	str r0, [r1, #0x28]
	ldr r1, [r5, #0x38]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x40]
	ldr r1, _0222A174 ; =ov12_02229F9C
	add r2, r5, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222A170: .word 0x0000FFFF
_0222A174: .word ov12_02229F9C
	thumb_func_end ov12_0222A00C

	thumb_func_start ov12_0222A178
ov12_0222A178: ; 0x0222A178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D3B8
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	bne _0222A19E
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0222A19E:
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222A178

	thumb_func_start ov12_0222A1AC
ov12_0222A1AC: ; 0x0222A1AC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x20
	add r5, r0, #0
	add r4, r3, #0
	bl ov12_02235E50
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	str r4, [r7, #0x1c]
	bl ov12_02220280
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200D5DC
	ldr r0, [r7, #4]
	ldr r1, _0222A1F0 ; =ov12_0222A178
	add r2, r7, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222A1F0: .word ov12_0222A178
	thumb_func_end ov12_0222A1AC

	thumb_func_start ov12_0222A1F4
ov12_0222A1F4: ; 0x0222A1F4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222A206
	cmp r0, #1
	beq _0222A284
	b _0222A31C
_0222A206:
	ldr r1, [r4, #0x34]
	ldr r0, _0222A340 ; =0x0223A03C
	lsl r2, r1, #1
	ldrsh r6, [r0, r2]
	add r0, r1, #1
	str r0, [r4, #0x34]
	cmp r6, #0xff
	beq _0222A256
	cmp r6, #0
	bne _0222A24A
	ldr r0, [r4, #0x1c]
	bl sub_0200D454
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222339C
	cmp r5, r0
	ldr r0, [r4, #4]
	bne _0222A23E
	mov r1, #2
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	b _0222A24A
_0222A23E:
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
_0222A24A:
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	mov r2, #0
	bl sub_0200D5DC
	b _0222A332
_0222A256:
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	add r0, r4, #0
	ldr r2, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r1, #0
	mov r3, #4
	bl ov12_02225D50
	mov r1, #7
	ldr r0, [r4, #0x1c]
	mvn r1, r1
	mov r2, #0x10
	bl sub_0200D7E0
	mov r0, #0
	str r0, [r4, #0x34]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A332
_0222A284:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225DA0
	cmp r0, #1
	bne _0222A29E
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
	b _0222A332
_0222A29E:
	ldr r0, [r4, #0x34]
	cmp r0, #5
	ble _0222A2AC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A332
_0222A2AC:
	add r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #5
	bhi _0222A332
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222A2C0: ; jump table
	.short _0222A332 - _0222A2C0 - 2 ; case 0
	.short _0222A2CC - _0222A2C0 - 2 ; case 1
	.short _0222A2DC - _0222A2C0 - 2 ; case 2
	.short _0222A2EC - _0222A2C0 - 2 ; case 3
	.short _0222A2FC - _0222A2C0 - 2 ; case 4
	.short _0222A30C - _0222A2C0 - 2 ; case 5
_0222A2CC:
	add r0, r4, #0
	ldr r1, _0222A344 ; =0x00000E38
	ldr r2, _0222A348 ; =0xFFFFF1C8
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A2DC:
	add r0, r4, #0
	ldr r1, _0222A348 ; =0xFFFFF1C8
	ldr r2, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A2EC:
	add r0, r4, #0
	ldr r1, _0222A344 ; =0x00000E38
	ldr r2, _0222A348 ; =0xFFFFF1C8
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A2FC:
	add r0, r4, #0
	ldr r1, _0222A348 ; =0xFFFFF1C8
	ldr r2, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A30C:
	add r0, r4, #0
	ldr r1, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r2, #0
	mov r3, #2
	bl ov12_02225D50
	b _0222A332
_0222A31C:
	ldr r0, [r4, #0x1c]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0222A332:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222A340: .word 0x0223A03C
_0222A344: .word 0x00000E38
_0222A348: .word 0xFFFFF1C8
	thumb_func_end ov12_0222A1F4

	thumb_func_start ov12_0222A34C
ov12_0222A34C: ; 0x0222A34C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x38
	add r5, r0, #0
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	str r6, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl ov12_02220248
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov12_022258E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov12_022258E0
	add r2, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	bl sub_0200D4C4
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	ldr r0, [r4, #0x1c]
	bne _0222A3AC
	mov r1, #1
	bl sub_0200D364
	b _0222A3B2
_0222A3AC:
	mov r1, #0
	bl sub_0200D364
_0222A3B2:
	ldr r0, [r4, #4]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0xc
	bl sub_0200D5DC
	ldr r0, [r4, #4]
	ldr r1, _0222A3D8 ; =ov12_0222A1F4
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A3D8: .word ov12_0222A1F4
	thumb_func_end ov12_0222A34C

	thumb_func_start ov12_0222A3DC
ov12_0222A3DC: ; 0x0222A3DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D3B8
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	bne _0222A402
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0222A402:
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222A3DC

	thumb_func_start ov12_0222A410
ov12_0222A410: ; 0x0222A410
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x38
	add r5, r0, #0
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	str r6, [r4, #0x1c]
	bl ov12_02220248
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov12_022258E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov12_022258E0
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222A458
	mov r6, #0x48
	mov r2, #0x20
	mov r5, #0
	b _0222A46E
_0222A458:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222A46A
	mov r2, #0x7e
	mov r5, #1
	b _0222A46E
_0222A46A:
	mov r2, #0x20
	mov r5, #0
_0222A46E:
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	ldr r0, [r4, #4]
	ldr r1, _0222A49C ; =ov12_0222A3DC
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A49C: .word ov12_0222A3DC
	thumb_func_end ov12_0222A410

	thumb_func_start ov12_0222A4A0
ov12_0222A4A0: ; 0x0222A4A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0222A592
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222A4BA: ; jump table
	.short _0222A4C2 - _0222A4BA - 2 ; case 0
	.short _0222A4E8 - _0222A4BA - 2 ; case 1
	.short _0222A500 - _0222A4BA - 2 ; case 2
	.short _0222A53C - _0222A4BA - 2 ; case 3
_0222A4C2:
	mov r0, #0xa0
	str r0, [sp]
	mov r3, #0x70
	mov r0, #1
	str r3, [sp, #4]
	mov r2, #0x15
	str r2, [sp, #8]
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x24
	add r1, #0x48
	sub r2, #0x33
	bl ov12_02225C98
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A4E8:
	add r0, r4, #0
	ldr r2, [r4, #0x1c]
	add r0, #0x24
	add r1, #0x48
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222A5AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A500:
	ldr r0, [r4, #0x1c]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0222A5AA
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #0x10
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x20
	add r2, #0x21
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #4]
	bl ov12_02235780
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A53C:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222A554
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_0222A554:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x10
	bhs _0222A56C
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
_0222A56C:
	add r0, r4, #0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222A5BC ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222A5AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A592:
	ldr r0, [r4, #0x1c]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0222A5AA:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0222A5BC: .word 0x04000052
	thumb_func_end ov12_0222A4A0

	thumb_func_start ov12_0222A5C0
ov12_0222A5C0: ; 0x0222A5C0
	push {r4, r5, r6, lr}
	mov r1, #0x6c
	add r6, r0, #0
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223595C
	mov r1, #0x1d
	str r5, [r4, #0x1c]
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0xa0
	bl sub_0200D4C4
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	ldr r0, [r4, #4]
	ldr r1, _0222A600 ; =ov12_0222A4A0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222A600: .word ov12_0222A4A0
	thumb_func_end ov12_0222A5C0

	thumb_func_start ov12_0222A604
ov12_0222A604: ; 0x0222A604
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov12_02220280
	cmp r0, #0
	beq _0222A61A
	add r0, r4, #0
	bl ov12_02226924
	pop {r4, pc}
_0222A61A:
	add r0, r4, #0
	bl ov12_02226954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222A604

	thumb_func_start ov12_0222A624
ov12_0222A624: ; 0x0222A624
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x18
	bls _0222A632
	b _0222A826
_0222A632:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222A63E: ; jump table
	.short _0222A670 - _0222A63E - 2 ; case 0
	.short _0222A826 - _0222A63E - 2 ; case 1
	.short _0222A826 - _0222A63E - 2 ; case 2
	.short _0222A826 - _0222A63E - 2 ; case 3
	.short _0222A826 - _0222A63E - 2 ; case 4
	.short _0222A71C - _0222A63E - 2 ; case 5
	.short _0222A71C - _0222A63E - 2 ; case 6
	.short _0222A746 - _0222A63E - 2 ; case 7
	.short _0222A826 - _0222A63E - 2 ; case 8
	.short _0222A826 - _0222A63E - 2 ; case 9
	.short _0222A760 - _0222A63E - 2 ; case 10
	.short _0222A760 - _0222A63E - 2 ; case 11
	.short _0222A78A - _0222A63E - 2 ; case 12
	.short _0222A826 - _0222A63E - 2 ; case 13
	.short _0222A826 - _0222A63E - 2 ; case 14
	.short _0222A7A2 - _0222A63E - 2 ; case 15
	.short _0222A7A2 - _0222A63E - 2 ; case 16
	.short _0222A7CC - _0222A63E - 2 ; case 17
	.short _0222A826 - _0222A63E - 2 ; case 18
	.short _0222A826 - _0222A63E - 2 ; case 19
	.short _0222A826 - _0222A63E - 2 ; case 20
	.short _0222A826 - _0222A63E - 2 ; case 21
	.short _0222A7E4 - _0222A63E - 2 ; case 22
	.short _0222A7E4 - _0222A63E - 2 ; case 23
	.short _0222A80E - _0222A63E - 2 ; case 24
_0222A670:
	ldr r0, [r4, #0x34]
	ldr r1, _0222A86C ; =0xFFFF1FFF
	cmp r0, #0
	bne _0222A6CA
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	add r5, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r3, [r5]
	mov r2, #0x3f
	mov r1, #0xf
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r5]
	add r5, r0, #0
	add r5, #0x4a
	ldrh r6, [r5]
	mov r1, #0x1f
	bic r6, r2
	orr r1, r6
	orr r1, r3
	strh r1, [r5]
	add r1, r0, #0
	mov r2, #0x80
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _0222A870 ; =0x0000A0C0
	add r0, #0x44
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r1, #0x23
	add sp, #4
	str r1, [r4, #0x3c]
	pop {r3, r4, r5, r6, pc}
_0222A6CA:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	add r5, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r3, [r5]
	mov r2, #0x3f
	mov r1, #0xf
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r5]
	add r5, r0, #0
	add r5, #0x4a
	ldrh r6, [r5]
	mov r1, #0x1f
	bic r6, r2
	orr r1, r6
	orr r1, r3
	strh r1, [r5]
	add r1, r0, #0
	lsl r2, r3, #0xa
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _0222A874 ; =0x000056C0
	add r0, #0x44
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r1, #0x23
	add sp, #4
	str r1, [r4, #0x3c]
	pop {r3, r4, r5, r6, pc}
_0222A71C:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A74C
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0222A74C
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A746:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _0222A74E
_0222A74C:
	b _0222A868
_0222A74E:
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A760:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A78A:
	ldr r0, [r4, #0x38]
	cmp r0, #2
	beq _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A7A2:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #2
	bne _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A7CC:
	ldr r0, [r4, #0x38]
	cmp r0, #3
	beq _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A7E4:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #3
	bne _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #8
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A80E:
	ldr r0, [r4, #0x38]
	cmp r0, #4
	beq _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #8
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A826:
	ldr r1, [r4, #0x3c]
	cmp r0, r1
	ble _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #0x14
	ldr r0, [r4, #0x1c]
	bge _0222A862
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r0, sp, #0
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x82
	ble _0222A858
	ldr r0, [r4, #0x1c]
	bl sub_0200D3F4
_0222A858:
	ldr r0, [r4, #0x38]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x38]
	pop {r3, r4, r5, r6, pc}
_0222A862:
	mov r1, #0
	bl sub_0200D3F4
_0222A868:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222A86C: .word 0xFFFF1FFF
_0222A870: .word 0x0000A0C0
_0222A874: .word 0x000056C0
	thumb_func_end ov12_0222A624

	thumb_func_start ov12_0222A878
ov12_0222A878: ; 0x0222A878
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0222A88A
	add r0, r4, #0
	bl ov12_0222A624
_0222A88A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	blt _0222A8E2
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0222A8F0 ; =0xFFFF1FFF
	and r1, r2
	add r2, r0, #0
	str r1, [r0, #0]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	bic r3, r1
	strh r3, [r2]
	add r2, r0, #0
	add r2, #0x4a
	ldrh r3, [r2]
	bic r3, r1
	strh r3, [r2]
	add r2, r0, #0
	mov r1, #0
	add r2, #0x40
	strh r1, [r2]
	add r0, #0x44
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0222A8E2:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222A8F0: .word 0xFFFF1FFF
	thumb_func_end ov12_0222A878

	thumb_func_start ov12_0222A8F4
ov12_0222A8F4: ; 0x0222A8F4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x40
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x2c]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x30]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x20]
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x28]
	cmp r1, #0xff
	beq _0222A966
	add r0, r5, #0
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
_0222A966:
	ldr r1, [r4, #0x2c]
	cmp r1, #0xff
	beq _0222A972
	ldr r0, [r4, #0x1c]
	bl sub_0200D474
_0222A972:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	beq _0222A9A4
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	cmp r0, #2
	beq _0222A994
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	cmp r0, #3
	bne _0222A9A4
_0222A994:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222A9A4:
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_02220248
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	cmp r0, #0xff
	beq _0222A9F2
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02235254
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02235254
	cmp r7, #3
	bhi _0222A9F2
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222A9E6: ; jump table
	.short _0222A9EE - _0222A9E6 - 2 ; case 0
	.short _0222AA78 - _0222A9E6 - 2 ; case 1
	.short _0222AA34 - _0222A9E6 - 2 ; case 2
	.short _0222AABC - _0222A9E6 - 2 ; case 3
_0222A9EE:
	cmp r6, #5
	bls _0222A9F4
_0222A9F2:
	b _0222AAFE
_0222A9F4:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AA00: ; jump table
	.short _0222AAFE - _0222AA00 - 2 ; case 0
	.short _0222AAFE - _0222AA00 - 2 ; case 1
	.short _0222AA0C - _0222AA00 - 2 ; case 2
	.short _0222AA16 - _0222AA00 - 2 ; case 3
	.short _0222AA20 - _0222AA00 - 2 ; case 4
	.short _0222AA2A - _0222AA00 - 2 ; case 5
_0222AA0C:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA16:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA20:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA2A:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA34:
	cmp r6, #5
	bhi _0222AAFE
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AA44: ; jump table
	.short _0222AAFE - _0222AA44 - 2 ; case 0
	.short _0222AAFE - _0222AA44 - 2 ; case 1
	.short _0222AA50 - _0222AA44 - 2 ; case 2
	.short _0222AA5A - _0222AA44 - 2 ; case 3
	.short _0222AA64 - _0222AA44 - 2 ; case 4
	.short _0222AA6E - _0222AA44 - 2 ; case 5
_0222AA50:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA5A:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA64:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA6E:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA78:
	cmp r0, #5
	bhi _0222AAFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AA88: ; jump table
	.short _0222AAFE - _0222AA88 - 2 ; case 0
	.short _0222AAFE - _0222AA88 - 2 ; case 1
	.short _0222AA94 - _0222AA88 - 2 ; case 2
	.short _0222AA9E - _0222AA88 - 2 ; case 3
	.short _0222AAA8 - _0222AA88 - 2 ; case 4
	.short _0222AAB2 - _0222AA88 - 2 ; case 5
_0222AA94:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA9E:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AAA8:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AAB2:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AABC:
	cmp r0, #5
	bhi _0222AAFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AACC: ; jump table
	.short _0222AAFE - _0222AACC - 2 ; case 0
	.short _0222AAFE - _0222AACC - 2 ; case 1
	.short _0222AAD8 - _0222AACC - 2 ; case 2
	.short _0222AAE2 - _0222AACC - 2 ; case 3
	.short _0222AAEC - _0222AACC - 2 ; case 4
	.short _0222AAF6 - _0222AACC - 2 ; case 5
_0222AAD8:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AAE2:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AAEC:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AAF6:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
_0222AAFE:
	ldr r0, [r4, #4]
	ldr r1, _0222AB0C ; =ov12_0222A878
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222AB0C: .word ov12_0222A878
	thumb_func_end ov12_0222A8F4

	thumb_func_start ov12_0222AB10
ov12_0222AB10: ; 0x0222AB10
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r2, r0, #0
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne _0222AB2C
	ldr r0, [r6, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0222AB2C:
	sub r0, r0, #1
	str r0, [r6, #0x2c]
	mov r4, #0
	add r5, r6, #0
_0222AB34:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0222AB3E
	bl sub_0200D330
_0222AB3E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0222AB34
	ldr r0, [r6, #0xc]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_0222AB10

	thumb_func_start ov12_0222AB50
ov12_0222AB50: ; 0x0222AB50
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x34
	add r4, r0, #0
	bl ov12_02235E50
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223595C
	add r0, r4, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	bne _0222AB74
	mov r0, #3
	b _0222AB7C
_0222AB74:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02220280
_0222AB7C:
	ldr r5, _0222ABB4 ; =0x0223B120
	str r0, [r7, #0x2c]
	mov r6, #0
	add r4, r7, #0
_0222AB84:
	ldr r0, [r7, #4]
	add r1, r6, #0
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0222AB98
	ldr r1, [r5, #0]
	bl sub_0200D474
_0222AB98:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0222AB84
	ldr r0, [r7, #4]
	ldr r1, _0222ABB8 ; =ov12_0222AB10
	add r2, r7, #0
	bl ov12_022201E8
	add r1, r7, #0
	bl ov12_0222AB10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222ABB4: .word 0x0223B120
_0222ABB8: .word ov12_0222AB10
	thumb_func_end ov12_0222AB50

	thumb_func_start ov12_0222ABBC
ov12_0222ABBC: ; 0x0222ABBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0222ABD0
	cmp r0, #1
	beq _0222AC16
	b _0222AC2E
_0222ABD0:
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ov12_022233EC
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov12_022266E8
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ov12_0221FDE4
	mov r1, #0xc8
	str r1, [sp]
	mov r3, #2
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0xa0
	mov r2, #0xb6
	lsl r3, r3, #0x10
	bl ov12_0222662C
	str r0, [r5, #0x24]
	ldrb r0, [r5, #8]
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_0222AC16:
	ldr r0, [r5, #0]
	add r1, r0, #1
	str r1, [r5, #0]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0222AC3C
	ldr r0, [r5, #0x24]
	bl ov12_0222669C
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
_0222AC2E:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
_0222AC3C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_0222ABBC

	thumb_func_start ov12_0222AC40
ov12_0222AC40: ; 0x0222AC40
	push {r3, r4, r5, lr}
	mov r1, #0x28
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r1, _0222AC6C ; =ov12_0222ABBC
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222AC6C: .word ov12_0222ABBC
	thumb_func_end ov12_0222AC40

	thumb_func_start ov12_0222AC70
ov12_0222AC70: ; 0x0222AC70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222AC80
	b _0222ADF2
_0222AC80:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AC8C: ; jump table
	.short _0222AC94 - _0222AC8C - 2 ; case 0
	.short _0222AD46 - _0222AC8C - 2 ; case 1
	.short _0222AD64 - _0222AC8C - 2 ; case 2
	.short _0222ADBE - _0222AC8C - 2 ; case 3
_0222AC94:
	ldrb r0, [r4, #4]
	mov r7, #0
	add r1, r7, #0
	add r0, r0, #1
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220280
	cmp r0, #0
	ble _0222AD0A
	ldr r6, _0222AE60 ; =0x0223A09E
	add r5, r4, #0
_0222ACAC:
	add r1, sp, #0x10
	ldr r0, [r5, #0x14]
	add r1, #2
	add r2, sp, #0x10
	bl sub_0200D550
	ldrb r1, [r4, #4]
	ldrb r0, [r6]
	cmp r1, r0
	blo _0222ACF0
	add r0, r4, r7
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrb r2, [r0, #1]
	ldrb r1, [r6, #1]
	cmp r2, r1
	blo _0222ACF8
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r5, #0x14]
	bl sub_0200D408
	cmp r0, #1
	ldr r0, [r5, #0x14]
	bne _0222ACE8
	mov r1, #0
	bl sub_0200D3F4
	b _0222ACF8
_0222ACE8:
	mov r1, #1
	bl sub_0200D3F4
	b _0222ACF8
_0222ACF0:
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D3F4
_0222ACF8:
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r6, r6, #2
	add r7, r7, #1
	bl ov12_02220280
	cmp r7, r0
	blt _0222ACAC
_0222AD0A:
	ldrb r0, [r4, #4]
	cmp r0, #0x2d
	blo _0222ADA8
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AD3A
	add r6, r4, #0
	mov r7, #1
_0222AD22:
	ldr r0, [r6, #0x14]
	add r1, r7, #0
	bl sub_0200D3F4
	ldr r0, [r4, #8]
	mov r1, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AD22
_0222AD3A:
	mov r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222AE2C
_0222AD46:
	mov r1, #0x64
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x20
	mov r2, #0x3c
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222AE2C
_0222AD64:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222ADAA
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AE2C
	add r7, r4, #0
	add r6, r4, #0
	add r7, #0x20
_0222AD84:
	add r0, r7, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov12_02225FA4
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200D6E8
	ldr r0, [r4, #8]
	mov r1, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AD84
_0222ADA8:
	b _0222AE2C
_0222ADAA:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	cmp r0, #0x2d
	blo _0222AE2C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222AE2C
_0222ADBE:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0222ADC8
	sub r0, r0, #1
	strb r0, [r4, #5]
_0222ADC8:
	ldrb r0, [r4, #6]
	cmp r0, #0xf
	bhs _0222ADD2
	add r0, r0, #1
	strb r0, [r4, #6]
_0222ADD2:
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0222ADE4
	ldrb r0, [r4, #6]
	cmp r0, #0xf
	bne _0222ADE4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222ADE4:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222AE64 ; =0x04000052
	strh r1, [r0]
	b _0222AE2C
_0222ADF2:
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AE1A
	add r6, r4, #0
	add r7, r5, #0
_0222AE04:
	ldr r0, [r6, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AE04
_0222AE1A:
	ldr r0, [r4, #8]
	ldr r1, [sp, #0xc]
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0222AE2C:
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AE56
	add r6, r4, #0
	add r7, r5, #0
_0222AE3E:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AE3E
_0222AE56:
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222AE60: .word 0x0223A09E
_0222AE64: .word 0x04000052
	thumb_func_end ov12_0222AC70

	thumb_func_start ov12_0222AE68
ov12_0222AE68: ; 0x0222AE68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_0221FDE4
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	bne _0222AE86
	bl sub_02022974
_0222AE86:
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	str r5, [r4, #0xc]
	ldr r0, [sp]
	str r6, [r4, #0x10]
	str r0, [r4, #8]
	ldr r1, [sp]
	add r0, sp, #8
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov12_02235780
	mov r0, #0xf
	strb r0, [r4, #5]
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222AF98 ; =0x04000052
	strh r1, [r0]
	ldr r0, [sp]
	str r7, [r4, #0x14]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223525C
	cmp r0, #3
	bne _0222AEE2
	ldr r0, [sp]
	bl ov12_0221FDD4
	add r1, r0, #0
	mov r0, #0
	add r2, sp, #4
	bl ov12_02235350
	b _0222AEF2
_0222AEE2:
	ldr r0, [sp]
	bl ov12_0221FDD4
	add r1, r0, #0
	mov r0, #1
	add r2, sp, #4
	bl ov12_02235350
_0222AEF2:
	ldr r0, [r4, #8]
	mov r1, #0
	mov r6, #1
	bl ov12_02220280
	cmp r0, #1
	ble _0222AF2C
	add r5, r4, #4
	add r7, sp, #4
_0222AF04:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, sp, #8
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl sub_0200D4C4
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222AF04
_0222AF2C:
	add r3, sp, #4
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0x14]
	bl sub_0200D4C4
	mov r6, #0
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AF86
	add r5, r4, #0
	add r7, r6, #0
_0222AF4E:
	add r1, r4, r6
	mov r0, #0
	strb r0, [r1, #1]
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	mov r2, #0x20
	sub r2, r2, r7
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x14]
	mov r1, #0
	asr r2, r2, #0x10
	bl sub_0200D5DC
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r7, r7, #4
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222AF4E
_0222AF86:
	mov r3, #1
	ldr r0, [sp]
	ldr r1, _0222AF9C ; =ov12_0222AC70
	add r2, r4, #0
	lsl r3, r3, #0xc
	bl ov12_022201CC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222AF98: .word 0x04000052
_0222AF9C: .word ov12_0222AC70
	thumb_func_end ov12_0222AE68

	thumb_func_start ov12_0222AFA0
ov12_0222AFA0: ; 0x0222AFA0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bls _0222AFB0
	b _0222B180
_0222AFB0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AFBC: ; jump table
	.short _0222AFC8 - _0222AFBC - 2 ; case 0
	.short _0222B02A - _0222AFBC - 2 ; case 1
	.short _0222B044 - _0222AFBC - 2 ; case 2
	.short _0222B068 - _0222AFBC - 2 ; case 3
	.short _0222B0C2 - _0222AFBC - 2 ; case 4
	.short _0222B110 - _0222AFBC - 2 ; case 5
_0222AFC8:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _0222B020
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02226138
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r2, #0x38
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02008274
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222B020:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B02A:
	mov r0, #0x1f
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #0x10]
	mov r2, #0xa
	add r3, r1, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B044:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _0222B072
	mov r0, #0x1f
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	add r3, r2, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B068:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	beq _0222B074
_0222B072:
	b _0222B18E
_0222B074:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, #3
	blo _0222B0BA
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov12_02220280
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r5, #0x10
	lsl r3, r6, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	mov r2, #0x64
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B0BA:
	mov r0, #1
	add sp, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B0C2:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _0222B106
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222B106:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B110:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _0222B154
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222B154:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B180:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222B18E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_0222AFA0

	thumb_func_start ov12_0222B194
ov12_0222B194: ; 0x0222B194
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x5c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223354
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x64
	lsl r3, r6, #0x10
	add r0, #0x14
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225E68
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x38
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0xc]
	ldr r1, _0222B21C ; =ov12_0222AFA0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222B21C: .word ov12_0222AFA0
	thumb_func_end ov12_0222B194

	thumb_func_start ov12_0222B220
ov12_0222B220: ; 0x0222B220
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bls _0222B230
	b _0222B448
_0222B230:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222B23C: ; jump table
	.short _0222B246 - _0222B23C - 2 ; case 0
	.short _0222B2AC - _0222B23C - 2 ; case 1
	.short _0222B310 - _0222B23C - 2 ; case 2
	.short _0222B374 - _0222B23C - 2 ; case 3
	.short _0222B3D8 - _0222B23C - 2 ; case 4
_0222B246:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B28A
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B28A:
	mov r1, #0x96
	str r1, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x32
	add r0, #0x10
	add r3, r2, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B2AC:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B2F0
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B2F0:
	mov r2, #0x64
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0x32
	mov r3, #0x96
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B310:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B354
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B354:
	mov r2, #0x96
	mov r1, #0x64
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B374:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B3B8
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B3B8:
	mov r2, #0x64
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x96
	add r0, #0x10
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B3D8:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	ldr r0, [r4, #0xc]
	bne _0222B41C
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B41C:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B448:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222B220

	thumb_func_start ov12_0222B45C
ov12_0222B45C: ; 0x0222B45C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x58
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	str r0, [r4, #4]
	mov r0, #0x32
	str r0, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	mov r2, #0x96
	add r3, r1, #0
	bl ov12_02225EF0
	ldr r0, [r4, #8]
	ldr r1, _0222B4C4 ; =ov12_0222B220
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0222B4C4: .word ov12_0222B220
	thumb_func_end ov12_0222B45C

	thumb_func_start ov12_0222B4C8
ov12_0222B4C8: ; 0x0222B4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0222B4E2
	cmp r0, #1
	beq _0222B5C8
	cmp r0, #2
	bne _0222B4E0
	b _0222B62A
_0222B4E0:
	b _0222B65E
_0222B4E2:
	ldrb r3, [r5]
	mov r0, #0x1f
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #1
	add r1, r3, #1
	str r0, [sp, #0xc]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r0, #6
	mul r0, r1
	ldr r1, _0222B67C ; =0x0223A102
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	sub r7, r2, r1
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	ldr r1, _0222B680 ; =0x0223A100
	ldrsh r6, [r1, r0]
	mov r1, #8
	ldrsh r2, [r5, r1]
	ldr r1, _0222B684 ; =0x0223A0FE
	ldrsh r4, [r1, r0]
	lsl r0, r7, #0x10
	str r3, [sp]
	add r1, r2, r4
	lsr r0, r0, #0x10
	add r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x28
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	mov r0, #8
	ldrsh r2, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r2, r4
	str r3, [sp]
	sub r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x4c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	mov r0, #6
	mul r0, r1
	ldr r1, _0222B67C ; =0x0223A102
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	sub r7, r2, r1
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	ldr r1, _0222B680 ; =0x0223A100
	ldrsh r6, [r1, r0]
	mov r1, #8
	ldrsh r2, [r5, r1]
	ldr r1, _0222B684 ; =0x0223A0FE
	ldrsh r4, [r1, r0]
	lsl r0, r7, #0x10
	str r3, [sp]
	add r1, r2, r4
	lsr r0, r0, #0x10
	add r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x70
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	mov r0, #8
	ldrsh r2, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r2, r4
	str r3, [sp]
	sub r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x94
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_0222B5C8:
	mov r0, #0
	add r7, r5, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r7, #0x28
	add r6, r5, #0
	add r4, r5, #0
_0222B5D6:
	add r0, r7, #0
	bl ov12_02225C14
	cmp r0, #0
	bne _0222B5EC
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	b _0222B5FA
_0222B5EC:
	mov r1, #0x28
	mov r2, #0x2a
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, #0x18]
	bl sub_0200D4C4
_0222B5FA:
	ldr r0, [r4, #0x18]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r7, #0x24
	add r0, r0, #1
	add r6, #0x24
	add r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0222B5D6
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bne _0222B670
	ldrb r0, [r5]
	cmp r0, #9
	bne _0222B624
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _0222B670
_0222B624:
	mov r0, #0
	strb r0, [r5, #1]
	b _0222B670
_0222B62A:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0222B634
	sub r0, r0, #1
	strb r0, [r5, #4]
_0222B634:
	ldrb r0, [r5, #5]
	cmp r0, #0xf
	bhs _0222B63E
	add r0, r0, #1
	strb r0, [r5, #5]
_0222B63E:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _0222B650
	ldrb r0, [r5, #5]
	cmp r0, #0xf
	bne _0222B650
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_0222B650:
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222B688 ; =0x04000052
	strh r1, [r0]
	b _0222B670
_0222B65E:
	ldr r0, [r5, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0222B670:
	ldr r0, [r5, #0x14]
	bl sub_0200C7EC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B67C: .word 0x0223A102
_0222B680: .word 0x0223A100
_0222B684: .word 0x0223A0FE
_0222B688: .word 0x04000052
	thumb_func_end ov12_0222B4C8

	thumb_func_start ov12_0222B68C
ov12_0222B68C: ; 0x0222B68C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x18]
	bl ov12_0221FDE4
	mov r1, #0xb8
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0xc]
	bl ov12_022202EC
	str r0, [r4, #0x14]
	mov r0, #8
	strb r0, [r4, #4]
	mov r1, #6
	strb r1, [r4, #5]
	sub r1, r1, #7
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov12_02235780
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222B90C ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223334
	str r0, [sp, #0x20]
	ldr r0, [r4, #0xc]
	bl ov12_0222339C
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223344
	str r0, [sp, #0x1c]
	mov r6, #0
	add r5, r4, #0
_0222B72A:
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_022202C0
	mov r1, #1
	str r0, [r5, #0x18]
	bl sub_0200D810
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0222B72A
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_0223525C
	cmp r0, #3
	ldr r0, [r4, #0x18]
	bne _0222B81A
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x20]
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x24]
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x18]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
	b _0222B8FC
_0222B81A:
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x20]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x24]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x18]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x20]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x24]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
_0222B8FC:
	ldr r0, [r4, #0xc]
	ldr r1, _0222B910 ; =ov12_0222B4C8
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222B90C: .word 0x04000052
_0222B910: .word ov12_0222B4C8
	thumb_func_end ov12_0222B68C

	thumb_func_start ov12_0222B914
ov12_0222B914: ; 0x0222B914
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222B926
	cmp r0, #1
	beq _0222B980
	b _0222B9C0
_0222B926:
	ldrb r1, [r4, #2]
	ldr r5, _0222B9D0 ; =0x0223A099
	mov r2, #0x64
	lsl r0, r1, #1
	add r3, r1, r0
	ldr r0, _0222B9D4 ; =0x0223A09A
	ldr r1, _0222B9D8 ; =0x0223A098
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r3, [r5, r3]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225E68
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldr r0, _0222B9DC ; =0x00007FFF
	bne _0222B95C
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #6
	add r3, r1, #0
	bl sub_020086FC
	b _0222B96A
_0222B95C:
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #6
	add r3, r2, #0
	bl sub_020086FC
_0222B96A:
	ldrb r1, [r4, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0222B980:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225EB8
	cmp r0, #0
	bne _0222B9A8
	ldr r0, [r4, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _0222B9A8
	ldrb r0, [r4, #1]
	cmp r0, #4
	ldrb r0, [r4]
	bhs _0222B9A4
	sub r0, r0, #1
	strb r0, [r4]
	b _0222B9A8
_0222B9A4:
	add r0, r0, #1
	strb r0, [r4]
_0222B9A8:
	mov r1, #0xc
	ldrsh r2, [r4, r1]
	ldr r0, [r4, #8]
	bl sub_02007DEC
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xd
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0222B9C0:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222B9D0: .word 0x0223A099
_0222B9D4: .word 0x0223A09A
_0222B9D8: .word 0x0223A098
_0222B9DC: .word 0x00007FFF
	thumb_func_end ov12_0222B914

	thumb_func_start ov12_0222B9E0
ov12_0222B9E0: ; 0x0222B9E0
	push {r3, r4, r5, lr}
	mov r1, #0x30
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	ldr r1, _0222BA14 ; =ov12_0222B914
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0222BA14: .word ov12_0222B914
	thumb_func_end ov12_0222B9E0

	thumb_func_start ov12_0222BA18
ov12_0222BA18: ; 0x0222BA18
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222BA2C
	cmp r0, #1
	beq _0222BA66
	b _0222BABE
_0222BA2C:
	ldrb r1, [r4, #1]
	ldr r2, _0222BAD0 ; =0x0223A0E0
	ldr r5, _0222BAD4 ; =0x0223A0E1
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BAD8 ; =0x0223A0E2
	ldr r1, _0222BADC ; =0x0223A0DF
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BAE0 ; =0x0223A0E3
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BA66:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BA84
	ldrb r0, [r4, #1]
	cmp r0, #3
	ldrb r0, [r4]
	bhs _0222BA80
	sub r0, r0, #1
	strb r0, [r4]
	b _0222BA84
_0222BA80:
	add r0, r0, #1
	strb r0, [r4]
_0222BA84:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	mov r1, #4
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r4, r5, pc}
_0222BABE:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222BAD0: .word 0x0223A0E0
_0222BAD4: .word 0x0223A0E1
_0222BAD8: .word 0x0223A0E2
_0222BADC: .word 0x0223A0DF
_0222BAE0: .word 0x0223A0E3
	thumb_func_end ov12_0222BA18

	thumb_func_start ov12_0222BAE4
ov12_0222BAE4: ; 0x0222BAE4
	push {r3, r4, r5, lr}
	mov r1, #0x34
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _0222BB2C ; =ov12_0222BA18
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222BB2C: .word ov12_0222BA18
	thumb_func_end ov12_0222BAE4

	thumb_func_start ov12_0222BB30
ov12_0222BB30: ; 0x0222BB30
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bls _0222BB40
	b _0222BCA0
_0222BB40:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222BB4C: ; jump table
	.short _0222BB58 - _0222BB4C - 2 ; case 0
	.short _0222BB92 - _0222BB4C - 2 ; case 1
	.short _0222BBD4 - _0222BB4C - 2 ; case 2
	.short _0222BBFE - _0222BB4C - 2 ; case 3
	.short _0222BC20 - _0222BB4C - 2 ; case 4
	.short _0222BC5E - _0222BB4C - 2 ; case 5
_0222BB58:
	ldrb r1, [r4, #1]
	ldr r2, _0222BCE0 ; =0x0223A0B8
	ldr r5, _0222BCE4 ; =0x0223A0B9
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BCE8 ; =0x0223A0BA
	ldr r1, _0222BCEC ; =0x0223A0B7
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BCF0 ; =0x0223A0BB
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BB92:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BBA4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222BBA4:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_0222BBD4:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	mov r1, #0
	add r3, r0, #0
	lsl r3, r3, #0x10
	str r1, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BBFE:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	bne _0222BC10
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222BC10:
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	add sp, #0xc
	pop {r4, r5, pc}
_0222BC20:
	ldrb r1, [r4, #1]
	ldr r2, _0222BCE0 ; =0x0223A0B8
	ldr r5, _0222BCE4 ; =0x0223A0B9
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BCE8 ; =0x0223A0BA
	ldr r1, _0222BCEC ; =0x0223A0B7
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BCF0 ; =0x0223A0BB
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BC5E:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BC70
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222BC70:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_0222BCA0:
	mov r2, #4
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222BCE0: .word 0x0223A0B8
_0222BCE4: .word 0x0223A0B9
_0222BCE8: .word 0x0223A0BA
_0222BCEC: .word 0x0223A0B7
_0222BCF0: .word 0x0223A0BB
	thumb_func_end ov12_0222BB30

	thumb_func_start ov12_0222BCF4
ov12_0222BCF4: ; 0x0222BCF4
	push {r3, r4, r5, lr}
	mov r1, #0x34
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	mov r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	strh r0, [r4, #6]
	ldr r0, [r4, #8]
	ldr r1, _0222BD44 ; =ov12_0222BB30
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0222BD44: .word ov12_0222BB30
	thumb_func_end ov12_0222BCF4

	thumb_func_start ov12_0222BD48
ov12_0222BD48: ; 0x0222BD48
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bhi _0222BE32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222BD62: ; jump table
	.short _0222BD6C - _0222BD62 - 2 ; case 0
	.short _0222BDA6 - _0222BD62 - 2 ; case 1
	.short _0222BDC4 - _0222BD62 - 2 ; case 2
	.short _0222BDDA - _0222BD62 - 2 ; case 3
	.short _0222BE14 - _0222BD62 - 2 ; case 4
_0222BD6C:
	ldr r0, [r4, #8]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0222BE44 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	sub r3, r1, #3
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x10]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BDA6:
	ldr r0, [r4, #4]
	bl sub_0200384C
	cmp r0, #0
	bne _0222BE40
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _0222BE40
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BDC4:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #5
	bls _0222BE40
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BDDA:
	ldr r0, [r4, #8]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0222BE44 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	sub r3, r1, #3
	bl sub_02003178
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x10]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BE14:
	ldr r0, [r4, #4]
	bl sub_0200384C
	cmp r0, #0
	bne _0222BE40
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _0222BE40
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BE32:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222BE40:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0222BE44: .word 0x00007FFF
	thumb_func_end ov12_0222BD48

	thumb_func_start ov12_0222BE48
ov12_0222BE48: ; 0x0222BE48
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_0222332C
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r1, _0222BE7C ; =ov12_0222BD48
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0222BE7C: .word ov12_0222BD48
	thumb_func_end ov12_0222BE48

	thumb_func_start ov12_0222BE80
ov12_0222BE80: ; 0x0222BE80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222BE94
	cmp r0, #1
	beq _0222BF00
	b _0222BF74
_0222BE94:
	ldrb r1, [r4, #1]
	ldr r2, _0222BF88 ; =0x0223A0C2
	ldr r5, _0222BF8C ; =0x0223A0C3
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BF90 ; =0x0223A0C4
	ldr r1, _0222BF94 ; =0x0223A0C1
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BF98 ; =0x0223A0C5
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldrb r1, [r4, #1]
	ldr r6, _0222BF9C ; =0x0223A0A4
	lsl r0, r1, #1
	add r5, r1, r0
	mov r0, #4
	ldrsh r3, [r4, r0]
	ldr r0, _0222BFA0 ; =0x0223A0A5
	mov r1, #0
	ldrb r0, [r0, r5]
	add r2, r1, #0
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0222BFA4 ; =0x0223A0A6
	ldrb r0, [r0, r5]
	ldrb r5, [r6, r5]
	str r0, [sp, #4]
	add r3, r3, r5
	add r0, r4, #0
	lsl r3, r3, #0x10
	add r0, #0x34
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222BF00:
	add r0, r4, #0
	add r0, #0x10
	mov r5, #0
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BF10
	add r5, r5, #1
_0222BF10:
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225C14
	cmp r0, #0
	bne _0222BF1E
	add r5, r5, #1
_0222BF1E:
	cmp r5, #2
	blt _0222BF44
	ldrb r0, [r4, #1]
	cmp r0, #3
	blo _0222BF40
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	cmp r0, #3
	blo _0222BF44
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222BF44
_0222BF40:
	mov r0, #0
	strb r0, [r4]
_0222BF44:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #0
	str r0, [sp]
	mov r1, #0x36
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0222BF74:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0222BF88: .word 0x0223A0C2
_0222BF8C: .word 0x0223A0C3
_0222BF90: .word 0x0223A0C4
_0222BF94: .word 0x0223A0C1
_0222BF98: .word 0x0223A0C5
_0222BF9C: .word 0x0223A0A4
_0222BFA0: .word 0x0223A0A5
_0222BFA4: .word 0x0223A0A6
	thumb_func_end ov12_0222BE80

	thumb_func_start ov12_0222BFA8
ov12_0222BFA8: ; 0x0222BFA8
	push {r3, r4, r5, lr}
	mov r1, #0x58
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	strh r0, [r4, #6]
	ldr r0, [r4, #8]
	ldr r1, _0222BFF0 ; =ov12_0222BE80
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222BFF0: .word ov12_0222BE80
	thumb_func_end ov12_0222BFA8

	thumb_func_start ov12_0222BFF4
ov12_0222BFF4: ; 0x0222BFF4
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222C00A
	cmp r0, #1
	beq _0222C022
	cmp r0, #2
	beq _0222C042
	b _0222C084
_0222C00A:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	blo _0222C0A0
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C0A0
_0222C022:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_0200D810
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C0A0
_0222C042:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	blo _0222C0A0
	ldr r0, _0222C0B4 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0222C0B8 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C0A0
_0222C084:
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r1, [r3, #0]
	ldr r0, _0222C0BC ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
_0222C0A0:
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200D330
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r4, pc}
	; .align 2, 0
_0222C0B4: .word 0x0400004A
_0222C0B8: .word 0xFFFFC0FF
_0222C0BC: .word 0xFFFF1FFF
	thumb_func_end ov12_0222BFF4

	thumb_func_start ov12_0222C0C0
ov12_0222C0C0: ; 0x0222C0C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x14
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0222C198 ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0, #0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0222C19C ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x12
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223334
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223344
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222332C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #0x20
	lsl r0, r6, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r1, #0xe0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl sub_02003B08
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #4]
	ldr r1, _0222C1A0 ; =ov12_0222BFF4
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C198: .word 0xFFFF1FFF
_0222C19C: .word 0xFFFFC0FF
_0222C1A0: .word ov12_0222BFF4
	thumb_func_end ov12_0222C0C0

	thumb_func_start ov12_0222C1A4
ov12_0222C1A4: ; 0x0222C1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222C1B4
	b _0222C396
_0222C1B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C1C0: ; jump table
	.short _0222C1C8 - _0222C1C0 - 2 ; case 0
	.short _0222C1DA - _0222C1C0 - 2 ; case 1
	.short _0222C2F2 - _0222C1C0 - 2 ; case 2
	.short _0222C32A - _0222C1C0 - 2 ; case 3
_0222C1C8:
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C1DA:
	mov r0, #0
	add r6, r4, #0
	ldr r7, _0222C3BC ; =0x0223A094
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r5, r4, #0
	add r6, #0x20
_0222C1E8:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0222C1F4
	cmp r0, #1
	beq _0222C222
	b _0222C270
_0222C1F4:
	ldrb r0, [r5, #0x19]
	add r0, r0, #1
	strb r0, [r5, #0x19]
	ldrb r1, [r5, #0x19]
	ldrb r0, [r7]
	cmp r1, r0
	blo _0222C276
	mov r0, #5
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0x64
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #5
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r5, #0x18]
	add r0, r0, #1
	strb r0, [r5, #0x18]
	b _0222C276
_0222C222:
	add r0, r6, #0
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222C234
	ldrb r0, [r5, #0x18]
	add r0, r0, #1
	strb r0, [r5, #0x18]
	b _0222C276
_0222C234:
	add r0, r6, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov12_02225FA4
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x24]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r2, [r4, #4]
	ldrsh r1, [r4, r1]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	asr r2, r2, #0x10
	bl ov12_0222605C
	b _0222C276
_0222C270:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_0222C276:
	ldr r0, [r5, #0x1c]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r5, #0x2c
	add r0, r0, #1
	add r7, r7, #1
	add r6, #0x2c
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _0222C1E8
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bge _0222C294
	b _0222C3B2
_0222C294:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhs _0222C2EA
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0222C2A6:
	add r1, sp, #0x18
	ldr r0, [r5, #0x1c]
	add r1, #2
	add r2, sp, #0x18
	bl sub_0200D550
	add r2, sp, #0x18
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x1c]
	bl sub_0200D4C4
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl sub_020E17B4
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r5, #0x1c]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	strb r7, [r5, #0x18]
	strb r7, [r5, #0x19]
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _0222C2A6
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C2EA:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C2F2:
	add r5, r4, #0
	mov r7, #0
	add r6, r4, #0
	add r5, #0x20
_0222C2FA:
	ldr r0, [r6, #0x1c]
	mov r1, #0
	bl sub_0200D810
	mov r0, #0x64
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #5
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0x64
	add r3, r1, #0
	bl ov12_02225EF0
	add r7, r7, #1
	add r6, #0x2c
	add r5, #0x2c
	cmp r7, #3
	blt _0222C2FA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C32A:
	mov r7, #0
	add r6, r4, #0
	str r7, [sp, #0xc]
	add r6, #0x20
	add r5, r4, #0
_0222C334:
	add r0, r6, #0
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222C342
	add r7, r7, #1
	b _0222C37C
_0222C342:
	add r0, r6, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov12_02225FA4
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r2, [r4, #4]
	ldrsh r1, [r4, r1]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	asr r2, r2, #0x10
	bl ov12_0222605C
_0222C37C:
	ldr r0, [sp, #0xc]
	add r6, #0x2c
	add r0, r0, #1
	add r5, #0x2c
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0222C334
	cmp r7, #3
	blt _0222C3B2
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C396:
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0222C3B2:
	ldr r0, [r4, #0x14]
	bl sub_0200C7EC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C3BC: .word 0x0223A094
	thumb_func_end ov12_0222C1A4

	thumb_func_start ov12_0222C3C0
ov12_0222C3C0: ; 0x0222C3C0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x9c
	str r0, [sp]
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	ldr r0, [sp]
	str r0, [r4, #0x10]
	bl ov12_022202EC
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #2
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #2]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_02223354
	mov r1, #0
	str r0, [r4, #4]
	mvn r1, r1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov12_02235780
	mov r6, #0
	ldr r1, _0222C49C ; =0x0000060C
	ldr r0, _0222C4A0 ; =0x04000052
	add r5, r4, #0
	strh r1, [r0]
	add r7, r6, #0
_0222C42C:
	strb r7, [r5, #0x18]
	strb r7, [r5, #0x19]
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_022202C0
	str r0, [r5, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x1c]
	add r1, r6, #1
	bl sub_0200D474
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _0222C42C
	ldr r0, [sp]
	mov r1, #0
	bl ov12_022234A8
	cmp r0, #1
	bne _0222C46A
	mov r0, #0
	mvn r0, r0
	b _0222C46C
_0222C46A:
	mov r0, #1
_0222C46C:
	strb r0, [r4, #8]
	mov r6, #0
	add r5, r4, #0
	mov r7, #8
_0222C474:
	ldrsb r0, [r4, r7]
	bl sub_020E17B4
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r5, #0x1c]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _0222C474
	ldr r0, [r4, #0x10]
	ldr r1, _0222C4A4 ; =ov12_0222C1A4
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C49C: .word 0x0000060C
_0222C4A0: .word 0x04000052
_0222C4A4: .word ov12_0222C1A4
	thumb_func_end ov12_0222C3C0

	thumb_func_start ov12_0222C4A8
ov12_0222C4A8: ; 0x0222C4A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222C4B8
	b _0222C5E2
_0222C4B8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C4C4: ; jump table
	.short _0222C4CC - _0222C4C4 - 2 ; case 0
	.short _0222C4FE - _0222C4C4 - 2 ; case 1
	.short _0222C512 - _0222C4C4 - 2 ; case 2
	.short _0222C56E - _0222C4C4 - 2 ; case 3
_0222C4CC:
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02222354
	add r2, r0, #0
	mov r1, #0
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	add r0, r5, #0
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02003178
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0222C4FE:
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _0222C5F0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C512:
	mov r0, #5
	str r0, [sp]
	ldrb r1, [r4, #1]
	add r0, r4, #0
	add r0, #0xb4
	lsl r2, r1, #1
	ldr r1, _0222C5F4 ; =0x0223A0EE
	ldrsh r1, [r1, r2]
	mov r2, #0
	add r3, r2, #0
	bl ov12_02226108
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0222C544
	bl ov12_0222332C
	mov r1, #0
	mov r2, #0xff
	mov r3, #0xa
	str r1, [sp]
	bl sub_02003A2C
	b _0222C556
_0222C544:
	bl ov12_0222332C
	ldr r1, _0222C5F8 ; =0x00007FFF
	mov r2, #0xff
	str r1, [sp]
	mov r1, #0
	mov r3, #0xa
	bl sub_02003A2C
_0222C556:
	mov r0, #3
	strb r0, [r4, #3]
	ldrb r1, [r4, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C56E:
	add r0, r4, #0
	add r0, #0xb4
	bl ov12_02226138
	cmp r0, #0
	bne _0222C58C
	ldrb r0, [r4, #1]
	cmp r0, #8
	ldrb r0, [r4]
	blo _0222C588
	add r0, r0, #1
	strb r0, [r4]
	b _0222C58C
_0222C588:
	sub r0, r0, #1
	strb r0, [r4]
_0222C58C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0222C5AE
	sub r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0222C5AE
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	mov r1, #0
	mov r2, #0xff
	add r3, r1, #0
	str r1, [sp]
	bl sub_02003A2C
_0222C5AE:
	mov r6, #0
	add r5, r4, #0
	mov r7, #0x14
_0222C5B4:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0222C5C8
	mov r2, #0xb4
	ldrsh r3, [r4, r2]
	ldrsh r2, [r5, r7]
	mov r1, #0
	add r2, r3, r2
	bl sub_02007DEC
_0222C5C8:
	add r6, r6, #1
	add r5, #0x14
	cmp r6, #4
	blt _0222C5B4
	mov r3, #0xb4
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222C5E2:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222C5F0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C5F4: .word 0x0223A0EE
_0222C5F8: .word 0x00007FFF
	thumb_func_end ov12_0222C4A8

	thumb_func_start ov12_0222C5FC
ov12_0222C5FC: ; 0x0222C5FC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xd8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl ov12_02220278
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	bl ov12_02223364
	cmp r0, #1
	bne _0222C62E
	mov r1, #0x40
	b _0222C630
_0222C62E:
	mov r1, #0xa
_0222C630:
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x14
	add r3, r4, #4
	bl ov12_02235998
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0222C666
	add r5, r4, #0
	add r7, r6, #0
_0222C648:
	ldr r0, [r5, #0x1c]
	add r1, r7, #0
	bl sub_020080C0
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r5, #0x16]
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, #0x14
	cmp r6, r0
	blt _0222C648
_0222C666:
	ldr r0, [r4, #0xc]
	ldr r1, _0222C674 ; =ov12_0222C4A8
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C674: .word ov12_0222C4A8
	thumb_func_end ov12_0222C5FC

	thumb_func_start ov12_0222C678
ov12_0222C678: ; 0x0222C678
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0222C6C2
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	bne _0222C696
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C696:
	add r0, r4, #0
	add r0, #0x1c
	bl ov12_02226138
	add r0, r4, #0
	add r0, #0x64
	bl ov12_02226454
	mov r1, #0x40
	mov r2, #0x42
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	bl sub_0200D4C4
	ldr r0, [r4, #0x18]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r4, pc}
_0222C6C2:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222C678

	thumb_func_start ov12_0222C6D4
ov12_0222C6D4: ; 0x0222C6D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x8c
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl ov12_02220278
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0222C718
	bl ov12_02220248
	b _0222C71C
_0222C718:
	bl ov12_02220240
_0222C71C:
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	add r1, r4, #4
	bl ov12_02235918
	ldr r0, [r4, #0x14]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #6
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #6]
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_02225964
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_0222598C
	add r6, r0, #0
	mov r0, #6
	ldrsh r3, [r4, r0]
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r2, #0x14
	add r0, r6, #0
	mul r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	sub r2, #0x28
	mul r2, r7
	add r2, r1, r2
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x40
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r5, #0
	mov r1, #2
	bl ov12_022233EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233EC
	mov r5, #1
	add r3, r5, #0
	lsl r3, r6
	add r1, r0, #0
	add r6, r3, #0
	mov r2, #0x20
	add r3, r5, #0
	orr r6, r2
	lsl r3, r1
	add r1, r6, #0
	orr r1, r3
	sub r2, #0x21
	ldr r0, [r4, #0xc]
	orr r1, r5
	add r3, r2, #0
	bl ov12_022357BC
	mov r1, #0x1f
	mov r2, #0
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x64
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_0200D810
	ldr r0, [r4, #0xc]
	ldr r1, _0222C7DC ; =ov12_0222C678
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C7DC: .word ov12_0222C678
	thumb_func_end ov12_0222C6D4

	thumb_func_start ov12_0222C7E0
ov12_0222C7E0: ; 0x0222C7E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222C7F2
	cmp r0, #1
	beq _0222C832
	b _0222C862
_0222C7F2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldrb r0, [r4, #2]
	bne _0222C804
	lsl r3, r0, #3
	ldr r0, _0222C87C ; =0x0223A118
	ldr r2, [r0, r3]
	neg r1, r2
	b _0222C80C
_0222C804:
	lsl r3, r0, #3
	ldr r0, _0222C87C ; =0x0223A118
	ldr r1, [r0, r3]
	neg r2, r1
_0222C80C:
	ldr r5, _0222C880 ; =0x0223A11C
	add r0, r4, #0
	ldr r3, [r5, r3]
	add r0, #0x5c
	bl ov12_02225D50
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0222C824
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
_0222C824:
	ldrb r1, [r4, #1]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C832:
	add r0, r4, #0
	add r0, #0x5c
	bl ov12_02225DA0
	cmp r0, #1
	bne _0222C84E
	ldr r2, [r4, #0x5c]
	ldr r0, [r4, #0x28]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0222C84E:
	ldrb r0, [r4, #2]
	cmp r0, #5
	ldrb r0, [r4]
	blo _0222C85C
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0222C85C:
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0222C862:
	ldr r0, [r4, #0x28]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222C87C: .word 0x0223A118
_0222C880: .word 0x0223A11C
	thumb_func_end ov12_0222C7E0

	thumb_func_start ov12_0222C884
ov12_0222C884: ; 0x0222C884
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222C898
	cmp r0, #1
	beq _0222C8BC
	b _0222C8E6
_0222C898:
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r1, #0x1c
	mov r2, #0x1e
	str r0, [sp]
	mov r3, #0x20
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x38
	bl ov12_02226108
	ldrb r0, [r4]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0222C8BC:
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl ov12_02235918
	add r0, r4, #0
	add r3, sp, #4
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, [r4, #0x2c]
	add r0, #0x38
	bl ov12_0222619C
	cmp r0, #0
	bne _0222C8F4
	ldrb r0, [r4]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0222C8E6:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222C8F4:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_0222C884

	thumb_func_start ov12_0222C8F8
ov12_0222C8F8: ; 0x0222C8F8
	push {r4, r5, r6, lr}
	mov r1, #0x70
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	mov r1, #0xb
	mov r2, #0x64
	bl sub_02007DEC
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0x1e]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x22]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x24]
	cmp r6, #0
	ldr r0, [r4, #4]
	bne _0222C982
	ldr r1, _0222C98C ; =ov12_0222C7E0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
_0222C982:
	ldr r1, _0222C990 ; =ov12_0222C884
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222C98C: .word ov12_0222C7E0
_0222C990: .word ov12_0222C884
	thumb_func_end ov12_0222C8F8

	thumb_func_start ov12_0222C994
ov12_0222C994: ; 0x0222C994
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0222C9A6
	cmp r0, #1
	beq _0222C9C8
	b _0222CA1C
_0222C9A6:
	ldr r2, [r5, #0x48]
	mov r0, #0xa
	add r1, r2, #2
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x4c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ov12_02226108
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222C9C8:
	add r0, r5, #0
	add r0, #0x4c
	bl ov12_02226138
	cmp r0, #0
	bne _0222C9DC
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222C9DC:
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x28
_0222C9E2:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0222C9F6
	mov r2, #0x4c
	ldrsh r3, [r5, r2]
	ldrsh r2, [r4, r7]
	mov r1, #0
	add r2, r3, r2
	bl sub_02007DEC
_0222C9F6:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222C9E2
	mov r3, #0x4c
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x14]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	mov r3, #0x4e
	mov r1, #3
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x14]
	add r2, r1, #0
	bl sub_02019184
	pop {r3, r4, r5, r6, r7, pc}
_0222CA1C:
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222C994

	thumb_func_start ov12_0222CA2C
ov12_0222CA2C: ; 0x0222CA2C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x70
	add r4, r0, #0
	bl ov12_02235E50
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223595C
	ldr r0, [r7, #4]
	mov r1, #1
	bl ov12_02220540
	cmp r0, #0x46
	bgt _0222CA5C
	bge _0222CA7E
	cmp r0, #0x1e
	bgt _0222CA56
	beq _0222CA8A
	b _0222CA90
_0222CA56:
	cmp r0, #0x32
	beq _0222CA84
	b _0222CA90
_0222CA5C:
	cmp r0, #0x6e
	bgt _0222CA68
	bge _0222CA72
	cmp r0, #0x5a
	beq _0222CA78
	b _0222CA90
_0222CA68:
	cmp r0, #0x96
	bne _0222CA90
	mov r0, #6
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA72:
	mov r0, #5
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA78:
	mov r0, #4
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA7E:
	mov r0, #3
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA84:
	mov r0, #2
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA8A:
	mov r0, #1
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA90:
	mov r0, #0
	str r0, [r7, #0x48]
_0222CA94:
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x28
_0222CA9C:
	ldr r0, [r7, #4]
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x38]
	cmp r0, #0
	beq _0222CAB0
	add r1, r5, #0
	bl ov12_02235918
_0222CAB0:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0222CA9C
	ldr r0, [r7, #4]
	ldr r1, _0222CAC8 ; =ov12_0222C994
	add r2, r7, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAC8: .word ov12_0222C994
	thumb_func_end ov12_0222CA2C

	thumb_func_start ov12_0222CACC
ov12_0222CACC: ; 0x0222CACC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222CAE0
	cmp r0, #1
	beq _0222CB0E
	b _0222CB7C
_0222CAE0:
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x40
	mov r1, #0x14
	add r3, r2, #0
	bl ov12_02226108
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x64
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222CB0E:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226138
	cmp r0, #0
	bne _0222CB22
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222CB72
_0222CB22:
	mov r1, #0x2c
	ldrsh r2, [r4, r1]
	mov r1, #0x40
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	add r1, r2, r1
	mov r2, #0x2e
	ldrsh r3, [r4, r2]
	mov r2, #0x42
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r1, #0x40
	ldrsh r2, [r4, r1]
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x3c]
	sub r1, r2, r1
	mov r2, #0x2e
	ldrsh r3, [r4, r2]
	mov r2, #0x42
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x3c]
	bl sub_0200D330
_0222CB72:
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	add sp, #4
	pop {r3, r4, pc}
_0222CB7C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222CACC

	thumb_func_start ov12_0222CB90
ov12_0222CB90: ; 0x0222CB90
	push {r3, r4, r5, lr}
	mov r1, #0x88
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x34]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x28
	bl ov12_02235918
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x2c
	bl ov12_02235918
	ldr r0, [r4, #4]
	ldr r1, _0222CBF8 ; =ov12_0222CACC
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222CBF8: .word ov12_0222CACC
	thumb_func_end ov12_0222CB90

	thumb_func_start ov12_0222CBFC
ov12_0222CBFC: ; 0x0222CBFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	ldr r2, [r4, #0x38]
	add r0, #0x8c
	add r1, #0xb0
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222CC28
	ldr r0, [r4, #0x38]
	bl sub_0200D0F4
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	pop {r3, r4, r5, pc}
_0222CC28:
	add r0, r4, #0
	add r0, #0xd4
	bl ov12_02225DA0
	cmp r0, #1
	bne _0222CC44
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	ldr r0, [r4, #0x38]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
_0222CC44:
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x20]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222CBFC

	thumb_func_start ov12_0222CC54
ov12_0222CC54: ; 0x0222CC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xe8
	add r6, r0, #0
	add r7, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x10
	bl ov12_0223595C
	add r0, r6, #0
	mov r1, #0
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r6, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #4]
	add r0, r6, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02225964
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #2
	str r7, [r4, #0x38]
	bl sub_0200D6A4
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x44]
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x58]
	add r1, r4, #0
	ldr r0, [r4, #0x44]
	add r1, #0x40
	bl ov12_02235918
	add r1, r4, #0
	ldr r0, [r4, #0x58]
	add r1, #0x54
	bl ov12_02235918
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	mov r3, #0x54
	str r0, [sp]
	mov r0, #0x56
	ldrsh r2, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r1, r0, #0
	mul r1, r5
	add r0, r2, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #0x40
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrsh r3, [r4, r3]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	mov ip, r3
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	add r0, #0x8c
	add r1, #0xb0
	add r7, r3, #0
	mul r7, r5
	mov r3, ip
	add r3, r3, r7
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl ov12_02225C98
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _0222CD5C
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #2
	bne _0222CD5C
	mov r0, #0
	mvn r0, r0
	mul r5, r0
_0222CD5C:
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _0222CD86
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #3
	bne _0222CD86
	mov r0, #0
	mvn r0, r0
	mul r5, r0
_0222CD86:
	cmp r5, #0
	ldr r2, _0222CDE0 ; =0x00005C71
	ble _0222CD9E
	ldr r1, _0222CDE4 ; =0x00000E38
	add r0, r4, #0
	add r0, #0xd4
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
	b _0222CDAE
_0222CD9E:
	ldr r1, _0222CDE8 ; =0x00003FFF
	add r0, r4, #0
	add r0, #0xd4
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
_0222CDAE:
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	ldr r0, [r4, #0x38]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x38]
	add r0, #0x8c
	add r1, #0xb0
	bl ov12_02225D2C
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x14]
	ldr r1, _0222CDEC ; =ov12_0222CBFC
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222CDE0: .word 0x00005C71
_0222CDE4: .word 0x00000E38
_0222CDE8: .word 0x00003FFF
_0222CDEC: .word ov12_0222CBFC
	thumb_func_end ov12_0222CC54

	thumb_func_start ov12_0222CDF0
ov12_0222CDF0: ; 0x0222CDF0
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #3
	bls _0222CE00
	b _0222CF6C
_0222CE00:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CE0C: ; jump table
	.short _0222CE14 - _0222CE0C - 2 ; case 0
	.short _0222CE44 - _0222CE0C - 2 ; case 1
	.short _0222CEE4 - _0222CE0C - 2 ; case 2
	.short _0222CEF6 - _0222CE0C - 2 ; case 3
_0222CE14:
	mov r0, #0x12
	ldrsh r2, [r4, r0]
	mov r0, #0x96
	mov r3, #0x3c
	str r0, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	mov r0, #0xc
	mul r1, r2
	mul r3, r2
	lsl r2, r3, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x9c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #5
	bl ov12_02225EF0
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CE44:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222CE82
	mov r0, #0x12
	ldrsh r2, [r4, r0]
	mov r0, #0xa
	mov r1, #0x3c
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xc
	mul r1, r2
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	mov r3, #0x96
	add r5, r2, #0
	mul r5, r3
	lsl r2, r5, #0x10
	add r0, #0x9c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CE82:
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov12_02225FA4
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200D6E8
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0x10
	bl ov12_02225FD4
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	bhs _0222CECA
	add r0, r1, #1
	strb r0, [r4, #0xc]
_0222CECA:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x11]
	cmp r1, r0
	bls _0222CED6
	sub r0, r1, #1
	strb r0, [r4, #0xd]
_0222CED6:
	ldrb r0, [r4, #0xd]
	ldrb r1, [r4, #0xc]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222CF9C ; =0x04000052
	strh r1, [r0]
	b _0222CF8A
_0222CEE4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0222CF8A
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CEF6:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222CF0A
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CF0A:
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0x10
	bl ov12_02225FD4
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r1, r0
	bls _0222CF52
	sub r0, r1, #1
	strb r0, [r4, #0xc]
_0222CF52:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	cmp r1, r0
	bhs _0222CF5E
	add r0, r1, #1
	strb r0, [r4, #0xd]
_0222CF5E:
	ldrb r0, [r4, #0xd]
	ldrb r1, [r4, #0xc]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222CF9C ; =0x04000052
	strh r1, [r0]
	b _0222CF8A
_0222CF6C:
	ldr r0, [r4, #0x44]
	bl sub_0200D0F4
	ldr r0, [r4, #0x48]
	bl sub_0200D0F4
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	add sp, #0x1c
	pop {r4, r5, pc}
_0222CF8A:
	ldr r0, [r4, #0x40]
	bl sub_0200D330
	ldr r0, [r4, #0x28]
	bl sub_0200C7EC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0222CF9C: .word 0x04000052
	thumb_func_end ov12_0222CDF0

	thumb_func_start ov12_0222CFA0
ov12_0222CFA0: ; 0x0222CFA0
	push {r4, r5, lr}
	sub sp, #0x14
	mov r1, #0xd4
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220298
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220298
	mov r1, #0
	str r0, [r4, #0x48]
	mvn r1, r1
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	bl ov12_02235780
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	mov r1, #0
	strb r1, [r4, #0xc]
	mov r0, #0x1f
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	strb r0, [r4, #0xf]
	strb r0, [r4, #0x10]
	mov r0, #4
	strb r0, [r4, #0x11]
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222D030
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x48]
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xb3
	strh r0, [r4, #0x14]
	mov r0, #0x78
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, r1, #1
	bl sub_0200D460
	mov r0, #0
	mvn r0, r0
	strh r0, [r4, #0x12]
	b _0222D090
_0222D030:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222D060
	ldr r0, [r4, #0x48]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_0200D364
	mov r0, #0x90
	strh r0, [r4, #0x14]
	mov r0, #0x40
	strh r0, [r4, #0x16]
	b _0222D08C
_0222D060:
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x48]
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4c
	strh r0, [r4, #0x14]
	mov r0, #0x78
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, r1, #1
	bl sub_0200D460
_0222D08C:
	mov r0, #1
	strh r0, [r4, #0x12]
_0222D090:
	mov r1, #0x14
	mov r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x40]
	bl sub_0200D4C4
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	mov r3, #0x64
	add r1, r0, #0
	mov r0, #5
	str r0, [sp]
	mul r1, r3
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x9c
	add r2, r1, #0
	bl ov12_02225EF0
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02225F6C
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0x10
	bl ov12_02225FD4
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	ldr r1, _0222D124 ; =ov12_0222CDF0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222D124: .word ov12_0222CDF0
	thumb_func_end ov12_0222CFA0

	thumb_func_start ov12_0222D128
ov12_0222D128: ; 0x0222D128
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	cmp r0, #8
	bls _0222D138
	b _0222D48C
_0222D138:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222D144: ; jump table
	.short _0222D156 - _0222D144 - 2 ; case 0
	.short _0222D18E - _0222D144 - 2 ; case 1
	.short _0222D1E8 - _0222D144 - 2 ; case 2
	.short _0222D202 - _0222D144 - 2 ; case 3
	.short _0222D236 - _0222D144 - 2 ; case 4
	.short _0222D2BA - _0222D144 - 2 ; case 5
	.short _0222D34C - _0222D144 - 2 ; case 6
	.short _0222D3EA - _0222D144 - 2 ; case 7
	.short _0222D432 - _0222D144 - 2 ; case 8
_0222D156:
	ldrb r1, [r4, #0xc]
	ldr r2, _0222D470 ; =0x0223A0D1
	ldr r5, _0222D474 ; =0x0223A0D2
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222D478 ; =0x0223A0D3
	ldr r1, _0222D47C ; =0x0223A0D0
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222D480 ; =0x0223A0D4
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xcc
	bl ov12_02225EF0
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D18E:
	add r0, r4, #0
	add r0, #0xcc
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222D1D4
	mov r2, #0xcc
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0xce
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #0x20
	add r2, r4, #0
	add r2, #0xe0
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x24]
	ldr r2, [r2, #0]
	bl ov12_02225FD4
	mov r2, #0x20
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	b _0222D4C6
_0222D1D4:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	ldrb r0, [r4]
	blo _0222D1E2
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D1E2:
	sub r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D1E8:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #1
	blo _0222D2C6
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D202:
	add r1, sp, #0x2c
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x2c
	bl sub_0200D550
	add r1, sp, #0x14
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	cmp r0, #0x68
	bgt _0222D22E
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	b _0222D4C6
_0222D22E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D236:
	add r1, sp, #0x28
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x28
	bl sub_0200D550
	add r1, sp, #0x14
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0x68
	bgt _0222D262
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	b _0222D26E
_0222D262:
	ldr r0, _0222D484 ; =0x04000052
	mov r1, #0x10
	strh r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222D26E:
	ldrb r0, [r4, #1]
	mov r1, #0x10
	add r2, r1, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	add r0, r4, #4
	bl ov12_022267A8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r0, #8
	sub r2, #0x10
	bl ov12_022267A8
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D484 ; =0x04000052
	strh r1, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	bne _0222D2A8
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0x10
	bl sub_0200D5DC
_0222D2A8:
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _0222D2C6
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #0x10
	bl sub_0200D5DC
	b _0222D4C6
_0222D2BA:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhs _0222D2C8
_0222D2C6:
	b _0222D4C6
_0222D2C8:
	mov r0, #0
	strb r0, [r4, #1]
	add r1, sp, #0x24
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x24
	bl sub_0200D550
	add r1, sp, #0x20
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0x20
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xc8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	str r0, [sp, #4]
	add r3, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	mov r2, #0xe
	mov r5, #0xc
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl ov12_02226728
	add r0, r4, #0
	add r0, #0x2c
	str r0, [sp]
	mov r3, #0xca
	add r2, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xc8
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl ov12_02226744
	add r0, r4, #0
	add r0, #0x28
	str r0, [sp]
	mov r3, #0xca
	add r2, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xc8
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl ov12_0222676C
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [r4, #0x2c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D34C:
	ldr r3, _0222D488 ; =0x0223A0AD
	add r2, sp, #0x30
	mov r1, #0xa
_0222D352:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222D352
	add r1, sp, #0x1c
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x1c
	bl sub_0200D550
	add r1, sp, #0x18
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0x18
	bl sub_0200D550
	add r3, sp, #0x14
	mov r0, #8
	ldrsh r0, [r3, r0]
	mov r2, #0xa
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x2c]
	lsl r5, r1, #1
	add r1, sp, #0x30
	ldrsb r1, [r1, r5]
	mov r5, #6
	mul r1, r0
	str r1, [sp, #0xc]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x34
	add r1, #0x58
	bl ov12_02225C98
	add r3, sp, #0x14
	mov r0, #4
	ldrsh r0, [r3, r0]
	mov r5, #0xa
	str r0, [sp]
	mov r0, #8
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x2c]
	lsl r2, r1, #1
	add r1, sp, #0x30
	add r1, #1
	ldrsb r1, [r1, r2]
	mov r2, #6
	mul r1, r0
	str r1, [sp, #0xc]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x80
	add r1, #0xa4
	bl ov12_02225C98
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D3EA:
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x34
	add r1, #0x58
	mov r5, #0
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222D402
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0222D402:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x7c]
	add r0, #0x80
	add r1, #0xa4
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222D41A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0222D41A:
	cmp r5, #2
	bne _0222D4C6
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	ldrb r0, [r4]
	bne _0222D42C
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D42C:
	sub r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D432:
	mov r5, #0
	add r0, r4, #4
	add r1, r5, #0
	sub r2, r5, #2
	bl ov12_022267A8
	cmp r0, #1
	bne _0222D444
	add r5, r5, #1
_0222D444:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x10
	mov r2, #2
	bl ov12_022267A8
	cmp r0, #1
	bne _0222D456
	add r5, r5, #1
_0222D456:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D484 ; =0x04000052
	cmp r5, #2
	strh r1, [r0]
	bne _0222D4C6
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
	nop
_0222D470: .word 0x0223A0D1
_0222D474: .word 0x0223A0D2
_0222D478: .word 0x0223A0D3
_0222D47C: .word 0x0223A0D0
_0222D480: .word 0x0223A0D4
_0222D484: .word 0x04000052
_0222D488: .word 0x0223A0AD
_0222D48C:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D4B4
	add r5, r4, #0
	add r7, r6, #0
_0222D49E:
	ldr r0, [r5, #0x30]
	bl sub_0200D0F4
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D49E
_0222D4B4:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x10]
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0222D4C6:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D532
	add r5, r4, #0
	add r7, sp, #0x14
_0222D4D8:
	add r1, sp, #0x14
	ldr r0, [r5, #0x30]
	add r1, #2
	add r2, sp, #0x14
	bl sub_0200D550
	mov r0, #0
	ldrsh r0, [r7, r0]
	cmp r0, #0x50
	bge _0222D4FC
	ldr r0, [r4, #0x10]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_0200D460
	b _0222D522
_0222D4FC:
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0x80
	ldr r0, [r4, #0x10]
	ble _0222D514
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_0200D460
	b _0222D522
_0222D514:
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r1, #1
	bl sub_0200D460
_0222D522:
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D4D8
_0222D532:
	ldrb r0, [r4]
	cmp r0, #4
	blo _0222D566
	mov r5, #0
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D560
	add r6, r4, #0
	add r7, r5, #0
_0222D54A:
	ldr r0, [r6, #0x30]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r6, #0x4c
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222D54A
_0222D560:
	ldr r0, [r4, #0x18]
	bl sub_0200C7EC
_0222D566:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222D128

	thumb_func_start ov12_0222D56C
ov12_0222D56C: ; 0x0222D56C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	mov r1, #0xf0
	str r0, [sp]
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	ldr r0, [sp]
	strb r1, [r4, #1]
	str r0, [r4, #0x10]
	str r6, [r4, #0x18]
	str r5, [r4, #0x14]
	str r1, [r4, #4]
	mov r0, #0x10
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_022232FC
	str r0, [r4, #0x1c]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_02223354
	str r0, [r4, #0x24]
	ldr r0, [sp]
	mov r1, #2
	bl ov12_022233EC
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ov12_022233EC
	mov r2, #1
	add r1, r2, #0
	add r3, r0, #0
	lsl r1, r5
	add r5, r2, #0
	lsl r5, r3
	orr r1, r5
	orr r1, r2
	sub r2, r2, #2
	ldr r0, [r4, #0x10]
	add r3, r2, #0
	bl ov12_022357BC
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D6A8 ; =0x04000052
	strh r1, [r0]
	ldr r1, [sp]
	add r0, sp, #4
	bl ov12_0222329C
	str r7, [r4, #0x30]
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r6, #1
	bl ov12_02220280
	cmp r0, #1
	ble _0222D62E
	add r5, r4, #0
	add r5, #0x4c
	add r7, sp, #4
_0222D612:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r2, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D612
_0222D62E:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D668
	add r5, r4, #0
	mov r7, #1
_0222D640:
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D640
_0222D668:
	ldr r0, [sp]
	bl ov12_0221FDD4
	cmp r0, #1
	ldr r0, [r4, #0x30]
	bne _0222D688
	mov r1, #0xa0
	mov r2, #0x36
	bl sub_0200D4C4
	ldr r0, [r4, #0x7c]
	mov r1, #0x50
	mov r2, #0x27
	bl sub_0200D4C4
	b _0222D69A
_0222D688:
	mov r1, #0x64
	mov r2, #0x36
	bl sub_0200D4C4
	ldr r0, [r4, #0x7c]
	mov r1, #0xb4
	mov r2, #0x27
	bl sub_0200D4C4
_0222D69A:
	ldr r0, [r4, #0x10]
	ldr r1, _0222D6AC ; =ov12_0222D128
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D6A8: .word 0x04000052
_0222D6AC: .word ov12_0222D128
	thumb_func_end ov12_0222D56C

	thumb_func_start ov12_0222D6B0
ov12_0222D6B0: ; 0x0222D6B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0222D6C2
	cmp r0, #1
	beq _0222D736
	b _0222D76A
_0222D6C2:
	ldrb r0, [r5, #6]
	cmp r0, #0xf
	bhs _0222D6CC
	add r0, r0, #1
	strb r0, [r5, #6]
_0222D6CC:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0222D6D6
	sub r0, r0, #1
	strb r0, [r5, #7]
_0222D6D6:
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #6]
	mov r6, #0
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D7B8 ; =0x04000052
	strh r1, [r0]
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	ldrb r0, [r5, #5]
	cmp r0, #0
	ble _0222D728
	ldr r4, _0222D7BC ; =0x0223A144
	add r7, r5, #0
_0222D6F4:
	add r1, sp, #0
	ldr r0, [r7, #0x14]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	ldrb r1, [r5, #4]
	ldrb r0, [r4]
	cmp r1, r0
	blo _0222D71C
	add r0, r5, r6
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrb r2, [r0, #1]
	ldrb r1, [r4, #1]
	cmp r2, r1
	blo _0222D71C
	mov r1, #0
	strb r1, [r0, #1]
_0222D71C:
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r7, r7, #4
	add r4, r4, #2
	cmp r6, r0
	blt _0222D6F4
_0222D728:
	ldrb r0, [r5, #4]
	cmp r0, #0x2d
	blo _0222D794
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0222D794
_0222D736:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0222D740
	sub r0, r0, #1
	strb r0, [r5, #6]
_0222D740:
	ldrb r0, [r5, #7]
	cmp r0, #0xf
	bhs _0222D74A
	add r0, r0, #1
	strb r0, [r5, #7]
_0222D74A:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0222D75C
	ldrb r0, [r5, #7]
	cmp r0, #0xf
	bne _0222D75C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0222D75C:
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #6]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D7B8 ; =0x04000052
	strh r1, [r0]
	b _0222D794
_0222D76A:
	ldrb r0, [r5, #5]
	mov r6, #0
	cmp r0, #0
	ble _0222D784
	add r4, r5, #0
_0222D774:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0222D774
_0222D784:
	ldr r0, [r5, #8]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222D794:
	ldrb r0, [r5, #5]
	mov r6, #0
	cmp r0, #0
	ble _0222D7B0
	add r4, r5, #0
_0222D79E:
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0222D79E
_0222D7B0:
	ldr r0, [r5, #0x10]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D7B8: .word 0x04000052
_0222D7BC: .word 0x0223A144
	thumb_func_end ov12_0222D6B0

	thumb_func_start ov12_0222D7C0
ov12_0222D7C0: ; 0x0222D7C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov12_0221FDE4
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	bne _0222D7DE
	bl sub_02022974
_0222D7DE:
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, sp, #4
	add r1, r7, #0
	str r7, [r4, #8]
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_02220280
	strb r0, [r4, #5]
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #0xf
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #6]
	mov r6, #1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D924 ; =0x04000052
	strh r1, [r0]
	ldr r0, [sp]
	str r0, [r4, #0x14]
	ldrb r0, [r4, #5]
	cmp r0, #1
	ble _0222D840
	add r5, r4, #4
_0222D82A:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	ldrb r0, [r4, #5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222D82A
_0222D840:
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222D894
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222D880
	add r0, r7, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222D880
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
	b _0222D888
_0222D880:
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D364
_0222D888:
	ldr r0, [r4, #0x14]
	mov r1, #0x80
	mov r2, #0x50
	bl sub_0200D4C4
	b _0222D8D4
_0222D894:
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222D8C2
	add r0, r7, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222D8C2
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D364
	b _0222D8CA
_0222D8C2:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
_0222D8CA:
	ldr r0, [r4, #0x14]
	mov r1, #0x80
	mov r2, #0x50
	bl sub_0200D4C4
_0222D8D4:
	ldrb r0, [r4, #5]
	mov r6, #0
	cmp r0, #0
	ble _0222D914
	add r5, r4, #0
_0222D8DE:
	add r1, r4, r6
	mov r0, #0
	strb r0, [r1, #1]
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222D90A
	mov r2, #0xfe
	ldr r0, [r5, #0x14]
	ldr r1, _0222D928 ; =0xBF800000
	lsl r2, r2, #0x16
	bl sub_0200D6E8
_0222D90A:
	ldrb r0, [r4, #5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222D8DE
_0222D914:
	ldr r1, _0222D92C ; =ov12_0222D6B0
	ldr r3, _0222D930 ; =0x0000044C
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_022201CC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D924: .word 0x04000052
_0222D928: .word 0xBF800000
_0222D92C: .word ov12_0222D6B0
_0222D930: .word 0x0000044C
	thumb_func_end ov12_0222D7C0

	thumb_func_start ov12_0222D934
ov12_0222D934: ; 0x0222D934
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldrb r0, [r4]
	mov r6, #0
	cmp r0, #3
	bls _0222D946
	b _0222DAEC
_0222D946:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222D952: ; jump table
	.short _0222D95A - _0222D952 - 2 ; case 0
	.short _0222D98E - _0222D952 - 2 ; case 1
	.short _0222DA66 - _0222D952 - 2 ; case 2
	.short _0222DAB2 - _0222D952 - 2 ; case 3
_0222D95A:
	ldrb r0, [r4, #9]
	cmp r0, #0xf
	bhs _0222D964
	add r0, r0, #1
	strb r0, [r4, #9]
_0222D964:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0222D96E
	sub r0, r0, #1
	strb r0, [r4, #0xa]
_0222D96E:
	ldrb r0, [r4, #9]
	cmp r0, #0xf
	bne _0222D980
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0222D980
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222D980:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222DB48 ; =0x04000052
	strh r1, [r0]
	b _0222DB18
_0222D98E:
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bhi _0222D9F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222D9A0: ; jump table
	.short _0222D9A8 - _0222D9A0 - 2 ; case 0
	.short _0222D9C2 - _0222D9A0 - 2 ; case 1
	.short _0222D9DC - _0222D9A0 - 2 ; case 2
	.short _0222D9DC - _0222D9A0 - 2 ; case 3
_0222D9A8:
	ldr r0, [r4, #0x18]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0200D3F4
	b _0222D9F4
_0222D9C2:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0200D3F4
	b _0222D9F4
_0222D9DC:
	ldr r0, [r4, #0x28]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0200D3F4
_0222D9F4:
	add r1, sp, #8
	ldr r0, [r4, #0x34]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	ldr r1, [r4, #0x30]
	ldr r0, _0222DB4C ; =0x0223A17C
	lsl r2, r1, #3
	ldrsh r0, [r0, r2]
	ldr r5, _0222DB50 ; =0x0223A17A
	add r3, sp, #8
	str r0, [sp]
	ldr r0, _0222DB54 ; =0x0223A140
	ldrsh r2, [r5, r2]
	ldrb r0, [r0, r1]
	mov r1, #2
	mov r5, #0
	str r0, [sp, #4]
	ldrsh r1, [r3, r1]
	add r0, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x3c
	bl ov12_02225BC8
	add r1, sp, #8
	ldr r0, [r4, #0x38]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	ldr r1, [r4, #0x30]
	ldr r0, _0222DB58 ; =0x0223A180
	lsl r2, r1, #3
	ldrsh r0, [r0, r2]
	ldr r5, _0222DB5C ; =0x0223A17E
	add r3, sp, #8
	str r0, [sp]
	ldr r0, _0222DB54 ; =0x0223A140
	ldrsh r2, [r5, r2]
	ldrb r0, [r0, r1]
	mov r1, #2
	mov r5, #0
	str r0, [sp, #4]
	ldrsh r1, [r3, r1]
	add r0, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x60
	bl ov12_02225BC8
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DB18
_0222DA66:
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x3c
	add r5, r6, #0
	bl ov12_02225C50
	cmp r0, #0
	bne _0222DA78
	add r5, r5, #1
_0222DA78:
	add r0, r4, #0
	ldr r1, [r4, #0x38]
	add r0, #0x60
	bl ov12_02225C50
	cmp r0, #0
	bne _0222DA88
	add r5, r5, #1
_0222DA88:
	cmp r5, #2
	blt _0222DB18
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bgt _0222DAAA
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _0222DB18
_0222DAAA:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DB18
_0222DAB2:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0222DABC
	sub r0, r0, #1
	strb r0, [r4, #9]
_0222DABC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xf
	bhs _0222DAC6
	add r0, r0, #1
	strb r0, [r4, #0xa]
_0222DAC6:
	ldrb r1, [r4, #0xa]
	cmp r1, #7
	blo _0222DACE
	mov r6, #1
_0222DACE:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0222DADE
	cmp r1, #0xf
	bne _0222DADE
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222DADE:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222DB48 ; =0x04000052
	strh r1, [r0]
	b _0222DB18
_0222DAEC:
	ldrb r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222DB06
	add r5, r4, #0
_0222DAF6:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222DAF6
_0222DB06:
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222DB18:
	ldrb r0, [r4]
	cmp r0, #3
	bhs _0222DB3E
	cmp r6, #0
	bne _0222DB3E
	ldrb r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222DB3E
	add r5, r4, #0
_0222DB2C:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222DB2C
_0222DB3E:
	ldr r0, [r4, #0x14]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DB48: .word 0x04000052
_0222DB4C: .word 0x0223A17C
_0222DB50: .word 0x0223A17A
_0222DB54: .word 0x0223A140
_0222DB58: .word 0x0223A180
_0222DB5C: .word 0x0223A17E
	thumb_func_end ov12_0222D934

	thumb_func_start ov12_0222DB60
ov12_0222DB60: ; 0x0222DB60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_0221FDE4
	mov r1, #0x84
	bl sub_02018144
	add r4, r0, #0
	bne _0222DB7E
	bl sub_02022974
_0222DB7E:
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	str r0, [r4, #0x30]
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [r4, #0xc]
	add r0, sp, #4
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov12_02235780
	mov r1, #0
	strb r1, [r4, #9]
	mov r0, #0xf
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	ldrb r2, [r4, #9]
	lsl r0, r0, #8
	orr r2, r0
	ldr r0, _0222DC88 ; =0x04000052
	strh r2, [r0]
	ldr r0, [r4, #0xc]
	bl ov12_02220280
	strb r0, [r4, #8]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #8]
	mov r6, #1
	cmp r0, #1
	ble _0222DBE2
	add r5, r4, #4
	add r7, sp, #4
_0222DBCC:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0x18]
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222DBCC
_0222DBE2:
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0200D364
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl sub_0200D364
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200D7D4
	ldrb r0, [r4, #8]
	mov r7, #0
	cmp r0, #0
	ble _0222DC58
	ldr r6, _0222DC8C ; =0x0223A162
	add r5, r4, #0
_0222DC2E:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D390
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x18]
	bl sub_0200D4C4
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldrb r0, [r4, #8]
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, r0
	blt _0222DC2E
_0222DC58:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp]
	ldr r1, _0222DC90 ; =ov12_0222D934
	ldr r3, _0222DC94 ; =0x0000044C
	add r2, r4, #0
	bl ov12_022201CC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DC88: .word 0x04000052
_0222DC8C: .word 0x0223A162
_0222DC90: .word ov12_0222D934
_0222DC94: .word 0x0000044C
	thumb_func_end ov12_0222DB60

	thumb_func_start ov12_0222DC98
ov12_0222DC98: ; 0x0222DC98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #7
	bls _0222DCA8
	b _0222DE00
_0222DCA8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DCB4: ; jump table
	.short _0222DCC4 - _0222DCB4 - 2 ; case 0
	.short _0222DCD8 - _0222DCB4 - 2 ; case 1
	.short _0222DCFA - _0222DCB4 - 2 ; case 2
	.short _0222DD28 - _0222DCB4 - 2 ; case 3
	.short _0222DD56 - _0222DCB4 - 2 ; case 4
	.short _0222DD74 - _0222DCB4 - 2 ; case 5
	.short _0222DD9C - _0222DCB4 - 2 ; case 6
	.short _0222DDE4 - _0222DCB4 - 2 ; case 7
_0222DCC4:
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0xa
	bhi _0222DCE4
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DCD8:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhs _0222DCE6
_0222DCE4:
	b _0222DE0E
_0222DCE6:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DCFA:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhi _0222DD1C
	ldr r0, [r4, #0x38]
	ldr r1, _0222DE18 ; =0x3DCCCCCD
	bl sub_020E0B00
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	b _0222DE0E
_0222DD1C:
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD28:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhi _0222DD4A
	ldr r0, [r4, #0x38]
	ldr r1, _0222DE18 ; =0x3DCCCCCD
	bl sub_020E1A9C
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	b _0222DE0E
_0222DD4A:
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD56:
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0xa
	bhi _0222DE0E
	ldr r0, [r4, #0x3c]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD74:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0x1e
	bls _0222DD8C
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD8C:
	ldr r0, [r4, #0x3c]
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _0222DE0E
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD9C:
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	add r5, r1, #0
	add r2, sp, #8
	ldr r0, [r4, #0x10]
	add r1, sp, #8
	add r2, #2
	add r5, #0xa
	bl sub_0200D550
	ldrb r0, [r4, #0xf]
	add r3, sp, #8
	mov r1, #0
	lsl r2, r0, #2
	ldr r0, _0222DE1C ; =0x0223A14C
	ldrsh r0, [r0, r2]
	str r0, [sp]
	lsl r0, r5, #0x10
	ldr r5, _0222DE20 ; =0x0223A14A
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r5, #2
	ldrsh r1, [r3, r1]
	ldrsh r3, [r3, r5]
	add r0, #0x14
	bl ov12_02225BC8
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DDE4:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_02225C50
	cmp r0, #0
	bne _0222DE0E
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0222DE00:
	ldr r0, [r4, #0x3c]
	mov r1, #3
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_0222DE0E:
	ldr r0, [r4, #0x10]
	bl sub_0200D330
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222DE18: .word 0x3DCCCCCD
_0222DE1C: .word 0x0223A14C
_0222DE20: .word 0x0223A14A
	thumb_func_end ov12_0222DC98

	thumb_func_start ov12_0222DE24
ov12_0222DE24: ; 0x0222DE24
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0222DEE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DE3C: ; jump table
	.short _0222DE44 - _0222DE3C - 2 ; case 0
	.short _0222DE70 - _0222DE3C - 2 ; case 1
	.short _0222DE92 - _0222DE3C - 2 ; case 2
	.short _0222DEBE - _0222DE3C - 2 ; case 3
_0222DE44:
	ldrb r6, [r4, #2]
	mov r3, #1
	mov r2, #0
	cmp r6, #0
	ble _0222DE64
	ldr r0, _0222DEF8 ; =0x00000514
	add r5, r4, #0
_0222DE52:
	ldr r1, [r5, r0]
	cmp r1, #1
	beq _0222DE5C
	mov r3, #0
	b _0222DE64
_0222DE5C:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, r6
	blt _0222DE52
_0222DE64:
	cmp r3, #1
	bne _0222DEF0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DE70:
	ldrb r0, [r4, #2]
	mov r5, #0
	cmp r0, #0
	ble _0222DE8A
	ldr r0, _0222DEF8 ; =0x00000514
	add r3, r4, #0
	mov r2, #2
_0222DE7E:
	str r2, [r3, r0]
	ldrb r1, [r4, #2]
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, r1
	blt _0222DE7E
_0222DE8A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DE92:
	ldrb r5, [r4, #2]
	mov r2, #1
	mov r6, #0
	cmp r5, #0
	ble _0222DEB2
	ldr r0, _0222DEF8 ; =0x00000514
	add r3, r4, #0
_0222DEA0:
	ldr r1, [r3, r0]
	cmp r1, #3
	beq _0222DEAA
	mov r2, #0
	b _0222DEB2
_0222DEAA:
	add r6, r6, #1
	add r3, r3, #4
	cmp r6, r5
	blt _0222DEA0
_0222DEB2:
	cmp r2, #1
	bne _0222DEF0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DEBE:
	ldrb r0, [r4, #2]
	mov r6, #0
	cmp r0, #0
	ble _0222DED8
	add r5, r4, #0
_0222DEC8:
	ldr r0, [r5, #0x24]
	bl sub_0200D0F4
	ldrb r0, [r4, #2]
	add r6, r6, #1
	add r5, #0x40
	cmp r6, r0
	blt _0222DEC8
_0222DED8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DEE0:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0222DEF0:
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222DEF8: .word 0x00000514
	thumb_func_end ov12_0222DE24

	thumb_func_start ov12_0222DEFC
ov12_0222DEFC: ; 0x0222DEFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp]
	add r4, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl ov12_0221FDE4
	ldr r1, _0222E064 ; =0x00000564
	bl sub_02018144
	add r6, r0, #0
	bne _0222DF1A
	bl sub_02022974
_0222DF1A:
	mov r0, #0
	strb r0, [r6, #1]
	strb r0, [r6]
	str r4, [r6, #0xc]
	ldr r0, [sp]
	str r5, [r6, #0x10]
	str r0, [r6, #8]
	ldr r1, [sp]
	add r0, sp, #0x1c
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r6, #8]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r6, #8]
	mov r1, #0
	bl ov12_02220280
	strb r0, [r6, #2]
	mov r0, #0xc
	strb r0, [r6, #2]
	str r7, [r6, #0x24]
	mov r4, #0
	ldrb r0, [r6, #2]
	str r4, [sp, #4]
	cmp r0, #0
	ble _0222E052
	ldr r0, _0222E068 ; =0x00000514
	add r5, r6, #0
	add r0, r6, r0
	str r0, [sp, #0x10]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	str r0, [sp, #0xc]
_0222DF66:
	cmp r4, #0
	beq _0222DF76
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x24]
_0222DF76:
	add r1, r5, #0
	ldr r7, [r5, #0x24]
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	add r1, #0xa
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x22
	strb r1, [r0]
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r5, #0x4c]
	ldr r0, [r6, #8]
	ldr r1, _0222E06C ; =0x0223A19A
	str r0, [r5, #0x14]
	ldr r0, [r6, #0xc]
	str r0, [r5, #0x18]
	ldr r0, [r6, #0x10]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x50]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #8]
	bl sub_0201D2E8
	ldr r2, [sp, #8]
	mov r1, #6
	ldrsh r1, [r2, r1]
	bl sub_020E1F6C
	ldr r2, [sp, #8]
	mov r0, #2
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x14]
	bl sub_0201D2E8
	ldr r2, [sp, #8]
	mov r1, #4
	ldrsh r1, [r2, r1]
	bl sub_020E1F6C
	ldr r2, _0222E06C ; =0x0223A19A
	ldr r0, [sp, #0x18]
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_0200D4C4
	add r0, r7, #0
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, [r5, #0x4c]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_0200D6E8
	add r0, r7, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp]
	ldr r1, _0222E070 ; =ov12_0222DC98
	ldr r2, [sp, #0xc]
	ldr r3, _0222E074 ; =0x0000044B
	bl ov12_022201CC
	ldr r0, [sp, #4]
	mov r1, #6
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	add r0, #0x40
	str r0, [sp, #0xc]
	ldrb r0, [r6, #2]
	add r5, #0x40
	cmp r4, r0
	blt _0222DF66
_0222E052:
	ldr r0, [sp]
	ldr r1, _0222E078 ; =ov12_0222DE24
	ldr r3, _0222E07C ; =0x0000044D
	add r2, r6, #0
	bl ov12_022201CC
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E064: .word 0x00000564
_0222E068: .word 0x00000514
_0222E06C: .word 0x0223A19A
_0222E070: .word ov12_0222DC98
_0222E074: .word 0x0000044B
_0222E078: .word ov12_0222DE24
_0222E07C: .word 0x0000044D
	thumb_func_end ov12_0222DEFC

	thumb_func_start ov12_0222E080
ov12_0222E080: ; 0x0222E080
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi _0222E166
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E09A: ; jump table
	.short _0222E0A2 - _0222E09A - 2 ; case 0
	.short _0222E0C0 - _0222E09A - 2 ; case 1
	.short _0222E112 - _0222E09A - 2 ; case 2
	.short _0222E13C - _0222E09A - 2 ; case 3
_0222E0A2:
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E0C0:
	add r0, r4, #0
	add r0, #0x2c
	bl ov12_02226454
	cmp r0, #0
	beq _0222E18C
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov12_022233EC
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov12_022266E8
	add r6, r0, #0
	ldr r0, [r4, #8]
	bl ov12_0221FDE4
	mov r1, #0xc8
	str r1, [sp]
	mov r3, #3
	str r5, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xcc
	lsl r3, r3, #0xe
	bl ov12_0222662C
	str r0, [r4, #0x28]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E112:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0x78
	blt _0222E18C
	ldr r0, [r4, #0x28]
	bl ov12_0222669C
	mov r1, #2
	mov r2, #0x10
	str r1, [sp]
	add r0, r4, #0
	str r2, [sp, #4]
	add r0, #0x2c
	add r3, r2, #0
	bl ov12_02226424
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E13C:
	add r0, r4, #0
	add r0, #0x2c
	bl ov12_02226454
	cmp r0, #0
	beq _0222E18C
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E166:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0222E1A4 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222664
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_0222E18C:
	ldr r0, [r4, #0x24]
	bl sub_0200D330
	ldr r0, [r4, #0x20]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0222E1A4: .word 0xFFFF1FFF
	thumb_func_end ov12_0222E080

	thumb_func_start ov12_0222E1A8
ov12_0222E1A8: ; 0x0222E1A8
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x54
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl ov12_0223595C
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022202C0
	mov r1, #2
	str r0, [r4, #0x20]
	bl sub_0200D810
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0222E23C ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0, #0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0222E240 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x17
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov12_022202C0
	mov r1, #1
	str r0, [r4, #0x24]
	bl sub_0200D810
	mov r1, #0x10
	str r1, [sp]
	add r0, r4, #0
	mov r2, #2
	str r1, [sp, #4]
	add r0, #0x2c
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222590
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldr r0, [r4, #8]
	ldr r1, _0222E244 ; =ov12_0222E080
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0222E23C: .word 0xFFFF1FFF
_0222E240: .word 0xFFFFC0FF
_0222E244: .word ov12_0222E080
	thumb_func_end ov12_0222E1A8

	thumb_func_start ov12_0222E248
ov12_0222E248: ; 0x0222E248
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200D408
	cmp r0, #1
	bne _0222E25A
	add r0, r4, #0
	bl sub_0200D330
_0222E25A:
	pop {r4, pc}
	thumb_func_end ov12_0222E248

	thumb_func_start ov12_0222E25C
ov12_0222E25C: ; 0x0222E25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0222E280
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x30]
	bl ov12_0222E248
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x34]
	bl ov12_0222E248
	b _0222E286
_0222E280:
	sub r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0, #0x1c]
_0222E286:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	bl ov12_0222E248
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x2c]
	bl ov12_0222E248
	ldr r4, [sp, #4]
	mov r6, #0
	add r7, r6, #0
	add r5, r4, #0
_0222E29E:
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0x28
	blt _0222E2B8
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
_0222E2B8:
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #4
	blt _0222E29E
	cmp r6, #4
	bne _0222E2EC
	ldr r4, [sp, #4]
	mov r5, #0
_0222E2CA:
	ldr r0, [r4, #0x28]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _0222E2CA
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	bl ov12_02220220
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E2EC:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222E25C

	thumb_func_start ov12_0222E2F8
ov12_0222E2F8: ; 0x0222E2F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r1, #0x38
	add r5, r0, #0
	add r4, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	mov r0, #0xa
	strh r0, [r6, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223595C
	ldr r1, [r6, #4]
	add r0, sp, #0
	bl ov12_0222329C
	str r4, [r6, #0x28]
	mov r0, #0
	strh r0, [r6, #0x1e]
	mov r7, #1
	add r4, r6, #2
	add r5, r6, #4
_0222E328:
	mov r0, #0
	strh r0, [r4, #0x1e]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0
	bl sub_0200CE6C
	str r0, [r5, #0x28]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #4
	blt _0222E328
	ldr r0, [r6, #0x28]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [r6, #0x2c]
	mov r1, #1
	bl sub_0200D7D4
	mov r1, #0x1f
	ldr r0, [r6, #0x28]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5DC
	mov r1, #0x1f
	ldr r0, [r6, #0x2c]
	mvn r1, r1
	mov r2, #0x20
	bl sub_0200D5DC
	ldr r0, [r6, #0x30]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200D5DC
	mov r1, #0x20
	ldr r0, [r6, #0x34]
	add r2, r1, #0
	bl sub_0200D5DC
	ldr r0, [r6, #4]
	ldr r1, _0222E38C ; =ov12_0222E25C
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E38C: .word ov12_0222E25C
	thumb_func_end ov12_0222E2F8

	thumb_func_start ov12_0222E390
ov12_0222E390: ; 0x0222E390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r4, #0
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	add r6, r5, #0
	add r7, r5, #0
_0222E3A0:
	mov r0, #0x22
	ldrsh r0, [r6, r0]
	add r0, r0, #1
	strh r0, [r6, #0x22]
	mov r0, #0x22
	ldrsh r0, [r6, r0]
	cmp r0, #0x14
	blt _0222E3F2
	ldr r0, [r7, #0x2c]
	bl ov12_0222E248
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x6e
	bne _0222E3F2
	mov r1, #0
	mvn r1, r1
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0xf
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #0x58]
_0222E3F2:
	add r4, r4, #1
	add r6, r6, #2
	add r7, r7, #4
	cmp r4, #4
	blt _0222E3A0
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x32
	bne _0222E436
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x3c]
_0222E436:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x3c
	bne _0222E470
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x40]
_0222E470:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x46
	bne _0222E4AA
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x44]
_0222E4AA:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x50
	bne _0222E4E4
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x48]
_0222E4E4:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x5a
	bne _0222E51E
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x4c]
_0222E51E:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x64
	bne _0222E558
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x50]
_0222E558:
	mov r1, #0x22
	ldrsh r0, [r5, r1]
	cmp r0, #0x6e
	bne _0222E592
	sub r1, #0x23
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0xf
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #0x58]
_0222E592:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x6e
	blt _0222E5CA
	ldr r0, [r5, #0x54]
	cmp r0, #0
	ble _0222E5A4
	sub r0, r0, #1
	str r0, [r5, #0x54]
_0222E5A4:
	ldr r0, [r5, #0x58]
	cmp r0, #0xf
	bge _0222E5AE
	add r0, r0, #1
	str r0, [r5, #0x58]
_0222E5AE:
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x54]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222E618 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _0222E5CA
	ldr r0, [r5, #0x58]
	cmp r0, #0xf
	bne _0222E5CA
	mov r0, #4
	str r0, [sp, #0x20]
_0222E5CA:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bne _0222E606
	mov r6, #0
	add r4, r5, #0
_0222E5D4:
	ldr r0, [r4, #0x2c]
	bl sub_0200D0F4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222E5D4
	mov r6, #0
	add r4, r5, #0
_0222E5E6:
	ldr r0, [r4, #0x3c]
	bl ov12_02226858
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _0222E5E6
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222E606:
	ldr r0, [r5, #0x10]
	bl sub_0200C7EC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E610: .word 0x0000FFFF
_0222E614: .word 0x000003EA
_0222E618: .word 0x04000052
	thumb_func_end ov12_0222E390

	thumb_func_start ov12_0222E61C
ov12_0222E61C: ; 0x0222E61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r1, #0x5c
	str r0, [sp]
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0xa
	strh r0, [r4, #0x20]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223595C
	ldr r1, [r4, #4]
	add r0, sp, #0xc
	bl ov12_0222329C
	str r5, [r4, #0x2c]
	mov r0, #0
	strh r0, [r4, #0x22]
	mov r0, #1
	str r0, [sp, #8]
	mov r7, #5
	add r6, r4, #2
	add r5, r4, #4
_0222E650:
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r1, r2
	add r0, r7, r0
	strh r0, [r6, #0x22]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [r5, #0x2c]
	ldr r0, [sp, #8]
	add r7, r7, #5
	add r0, r0, #1
	add r6, r6, #2
	add r5, r5, #4
	str r0, [sp, #8]
	cmp r0, #4
	blt _0222E650
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [sp]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	add r0, r5, #0
	mov r1, #0x29
	bl sub_020080C0
	ldr r0, [sp]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223525C
	cmp r0, #3
	bne _0222E6D2
	mov r7, #0x8c
	b _0222E6D4
_0222E6D2:
	mov r7, #0x54
_0222E6D4:
	mov r6, #0
	add r5, r4, #0
_0222E6D8:
	ldr r0, [r5, #0x2c]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_0200D4C4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0222E6D8
	ldr r0, [sp]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223525C
	cmp r0, #3
	ldr r0, [r4, #0x2c]
	bne _0222E71E
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x34]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x30]
	mov r1, #0x12
	bl sub_0200D474
	ldr r0, [r4, #0x38]
	mov r1, #0x12
	bl sub_0200D474
	b _0222E73C
_0222E71E:
	mov r1, #0x12
	bl sub_0200D474
	ldr r0, [r4, #0x34]
	mov r1, #0x12
	bl sub_0200D474
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x38]
	mov r1, #0xa
	bl sub_0200D474
_0222E73C:
	mov r1, #0x1f
	ldr r0, [r4, #0x2c]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5DC
	mov r1, #0x27
	ldr r0, [r4, #0x38]
	mvn r1, r1
	mov r2, #4
	bl sub_0200D5DC
	ldr r0, [r4, #0x34]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r4, #0x30]
	mov r1, #0x28
	mov r2, #4
	bl sub_0200D5DC
	ldr r0, [r4, #0x2c]
	bl sub_0200D43C
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, _0222E780 ; =ov12_0222E390
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E780: .word ov12_0222E390
	thumb_func_end ov12_0222E61C

	thumb_func_start ov12_0222E784
ov12_0222E784: ; 0x0222E784
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0222E80A
	add r0, r4, #0
	add r0, #0x60
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222E7C8
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	add sp, #0xc
	pop {r4, r5, pc}
_0222E7C8:
	add r0, r4, #0
	add r0, #0x60
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	mov r1, #0x58
	mov r2, #0x5a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x28]
	ldr r3, [r4, #0x74]
	bl ov12_0222605C
	ldr r0, [r4, #0x28]
	bl sub_0200D330
	ldr r0, [r4, #0x3c]
	bl sub_0200D330
	ldr r0, [r4, #0x50]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
_0222E80A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222E784

	thumb_func_start ov12_0222E810
ov12_0222E810: ; 0x0222E810
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x84
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	mov r1, #1
	str r0, [r4, #0x24]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x58
	strh r0, [r1]
	mov r0, #0x58
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x5c
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223354
	add r1, r4, #0
	add r1, #0x5a
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0200D6A4
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200D460
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0200D460
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_0200D460
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232B8
	sub r0, r0, #3
	cmp r0, #1
	ldr r0, [r4, #0x28]
	bhi _0222E8DE
	mov r1, #0x1e
	bl sub_0200D474
	ldr r0, [r4, #0x3c]
	mov r1, #0x32
	bl sub_0200D474
	ldr r0, [r4, #0x50]
	mov r1, #0x46
	bl sub_0200D474
	b _0222E8F4
_0222E8DE:
	mov r1, #0x3c
	bl sub_0200D474
	ldr r0, [r4, #0x3c]
	mov r1, #0x46
	bl sub_0200D474
	ldr r0, [r4, #0x50]
	mov r1, #0x32
	bl sub_0200D474
_0222E8F4:
	mov r2, #0x14
	mov r1, #0x64
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x60
	add r3, r1, #0
	bl ov12_02225EF0
	ldr r0, [r4, #4]
	ldr r1, _0222E918 ; =ov12_0222E784
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222E918: .word ov12_0222E784
	thumb_func_end ov12_0222E810

	thumb_func_start ov12_0222E91C
ov12_0222E91C: ; 0x0222E91C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222E930
	cmp r0, #1
	beq _0222EA2E
	b _0222EA7C
_0222E930:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222E9AA
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	mov r0, #3
	add r2, r1, #0
	str r3, [sp]
	add r2, #0x30
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x34
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r2, r1, r0
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	lsl r0, r2, #0x10
	asr r3, r0, #0x10
	add r2, r1, #0
	add r2, #0x30
	lsl r2, r2, #0x10
	str r3, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x58
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r2, r1, r0
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	lsl r0, r2, #0x10
	asr r3, r0, #0x10
	add r2, r1, #0
	add r2, #0x30
	lsl r2, r2, #0x10
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x7c
	asr r2, r2, #0x10
	bl ov12_02225BC8
	b _0222EA18
_0222E9AA:
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	mov r0, #3
	add r1, r2, #0
	str r3, [sp]
	add r1, #0x30
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x34
	asr r1, r1, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	lsl r0, r1, #0x10
	asr r3, r0, #0x10
	add r1, r2, #0
	add r1, #0x30
	lsl r1, r1, #0x10
	str r3, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x58
	asr r1, r1, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	lsl r0, r1, #0x10
	asr r3, r0, #0x10
	add r1, r2, #0
	add r1, #0x30
	lsl r1, r1, #0x10
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x7c
	asr r1, r1, #0x10
	bl ov12_02225BC8
_0222EA18:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222EA8E
_0222EA2E:
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	add r0, #0x58
	mov r5, #0
	bl ov12_02225C50
	cmp r0, #0
	bne _0222EA40
	add r5, r5, #1
_0222EA40:
	add r0, r4, #0
	ldr r1, [r4, #0x24]
	add r0, #0x34
	bl ov12_02225C74
	cmp r0, #0
	bne _0222EA50
	add r5, r5, #1
_0222EA50:
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x7c
	bl ov12_02225C50
	cmp r0, #0
	bne _0222EA60
	add r5, r5, #1
_0222EA60:
	cmp r5, #3
	blt _0222EA8E
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	ldrb r0, [r4]
	bne _0222EA76
	sub r0, r0, #1
	strb r0, [r4]
	b _0222EA8E
_0222EA76:
	add r0, r0, #1
	strb r0, [r4]
	b _0222EA8E
_0222EA7C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	add sp, #8
	pop {r3, r4, r5, pc}
_0222EA8E:
	ldr r0, [r4, #0x28]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222E91C

	thumb_func_start ov12_0222EAA0
ov12_0222EAA0: ; 0x0222EAA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0xa8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xa2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa3
	strb r1, [r0]
	sub r1, #9
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov12_02235780
	add r0, r4, #0
	add r0, #0xa2
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa3
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222EC10 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x24]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x22]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x24]
	mov r1, #0x29
	bl sub_020080C0
	neg r1, r0
	add r0, r4, #0
	add r0, #0xa4
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223334
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223344
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	ldr r5, [r4, #0x28]
	bl ov12_0222339C
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222332C
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r6, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl sub_02003B08
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #4]
	ldr r5, [r4, #0x30]
	bl ov12_0222339C
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222332C
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r6, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl sub_02003B08
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #4]
	ldr r1, _0222EC14 ; =ov12_0222E91C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222EC10: .word 0x04000052
_0222EC14: .word ov12_0222E91C
	thumb_func_end ov12_0222EAA0

	thumb_func_start ov12_0222EC18
ov12_0222EC18: ; 0x0222EC18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r6, #0
	add r4, r1, #0
	add r5, r1, #0
_0222EC28:
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0x20
	blt _0222EC50
	ldr r0, [r5, #0x30]
	bl ov12_0222E248
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0xa0
	blt _0222EC50
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
_0222EC50:
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #8
	blt _0222EC28
	cmp r6, #8
	bne _0222EC84
	ldr r4, [sp, #4]
	mov r5, #0
_0222EC62:
	ldr r0, [r4, #0x30]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0222EC62
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	bl ov12_02220220
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222EC84:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222EC18

	thumb_func_start ov12_0222EC90
ov12_0222EC90: ; 0x0222EC90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	mov r1, #0x74
	add r6, r0, #0
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0xa
	strh r0, [r4, #0x1c]
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r1, [r4, #4]
	add r0, sp, #0x24
	bl ov12_0222329C
	str r5, [r4, #0x30]
	mov r6, #1
	add r5, r4, #4
	mov r7, #0x1f
_0222ECBC:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	add r2, sp, #0x24
	bl sub_0200CE6C
	str r0, [r5, #0x30]
	lsr r1, r6, #0x1f
	lsl r0, r6, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r0, r1, r0
	beq _0222ECDC
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D7D4
_0222ECDC:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _0222ECBC
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	mov r1, #0
	str r0, [sp, #0x1c]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [sp, #0x1c]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x50
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov12_02225BC8
	mov r7, #0
	ldr r0, [r4, #4]
	add r6, r7, #0
	str r7, [sp, #0x14]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	cmp r0, #4
	bne _0222ED60
	mov r0, #1
	str r0, [sp, #0x14]
_0222ED60:
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x50
	add r5, r4, #0
	str r0, [sp, #0x20]
_0222ED6A:
	ldr r0, [sp, #0x20]
	bl ov12_02225C14
	str r0, [sp, #0x18]
	lsr r2, r7, #0x1f
	lsl r1, r7, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222EDA2
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222ED9E
	cmp r6, #8
	bge _0222EDA2
	mov r1, #0x50
	mov r2, #0x52
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x30]
	bl sub_0200D4C4
	add r5, r5, #4
	add r6, r6, #1
	b _0222EDA2
_0222ED9E:
	mov r0, #0
	str r0, [sp, #0x14]
_0222EDA2:
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	cmp r0, #1
	beq _0222ED6A
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_02223428
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02223428
	add r7, r0, #0
	mov r6, #0
	str r4, [sp, #0xc]
	add r5, r4, #0
_0222EDC4:
	mov r0, #8
	sub r0, r0, r6
	str r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x1e]
	ldr r0, [r4, #4]
	bl ov12_0221FDD4
	cmp r0, #0
	bne _0222EE20
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	cmp r0, #3
	bne _0222EE02
	cmp r6, #4
	ldr r0, [r5, #0x30]
	bge _0222EDFA
	add r1, r7, #0
	bl sub_0200D460
	b _0222EE16
_0222EDFA:
	ldr r1, [sp, #0x10]
	bl sub_0200D460
	b _0222EE16
_0222EE02:
	cmp r6, #4
	ldr r0, [r5, #0x30]
	blt _0222EE10
	add r1, r7, #0
	bl sub_0200D460
	b _0222EE16
_0222EE10:
	ldr r1, [sp, #0x10]
	bl sub_0200D460
_0222EE16:
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #8]
	bl sub_0200D474
	b _0222EE30
_0222EE20:
	ldr r0, [r5, #0x30]
	add r1, r6, #0
	bl sub_0200D474
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_0200D460
_0222EE30:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r0, r0, #2
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r6, #8
	blt _0222EDC4
	ldr r0, [r4, #4]
	ldr r1, _0222EE4C ; =ov12_0222EC18
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222EE4C: .word ov12_0222EC18
	thumb_func_end ov12_0222EC90

	thumb_func_start ov12_0222EE50
ov12_0222EE50: ; 0x0222EE50
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0222EE66
	cmp r0, #1
	beq _0222EEF4
	cmp r0, #2
	b _0222EF52
_0222EE66:
	ldr r0, [r5, #0x28]
	cmp r0, #0xe
	ble _0222EEBC
	ldr r0, [r5, #0x30]
	ldr r1, _0222EF98 ; =0x3E4CCCCD
	bl sub_020E1A9C
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	ldr r1, _0222EF98 ; =0x3E4CCCCD
	bl sub_020E0B00
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	bl sub_020E16BC
	ldr r2, _0222EF9C ; =0x9999999A
	ldr r3, _0222EFA0 ; =0x3FC99999
	bl sub_020E0E54
	bhi _0222EEA0
	ldrb r0, [r5]
	mov r1, #0
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, [r5, #0x1c]
	bl sub_0200D3F4
	b _0222EF7A
_0222EEA0:
	mov r0, #0x36
	ldrsb r0, [r5, r0]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x30]
	bl sub_0200D6E8
	b _0222EF7A
_0222EEBC:
	add r0, r5, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x34
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x34
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222EFA4 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r5, #0x28]
	add r0, r0, #1
	str r0, [r5, #0x28]
	b _0222EF7A
_0222EEF4:
	ldr r0, [r5, #0x3c]
	bl ov12_02226848
	cmp r0, #0
	bne _0222EF7A
	ldr r0, [r5, #0x38]
	bl ov12_02226858
	ldr r0, [r5, #0x3c]
	bl ov12_02226858
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	lsl r3, r4, #0x14
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, _0222EFA8 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp, #0x14]
	ldr r0, _0222EFAC ; =0x0000044C
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x18]
	bl ov12_02226870
	str r0, [r5, #0x3c]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0222EF7A
_0222EF52:
	ldr r0, [r5, #0x3c]
	bl ov12_02226848
	cmp r0, #0
	bne _0222EF7A
	ldr r0, [r5, #0x20]
	bl sub_0200D330
	ldr r0, [r5, #0x3c]
	bl ov12_02226858
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, pc}
_0222EF7A:
	ldr r0, [r5, #0x1c]
	bl sub_0200D330
	ldr r0, [r5, #0x20]
	bl sub_0200D330
	ldr r0, [r5, #0x24]
	bl sub_0200D330
	ldr r0, [r5, #0xc]
	bl sub_0200C7EC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0222EF98: .word 0x3E4CCCCD
_0222EF9C: .word 0x9999999A
_0222EFA0: .word 0x3FC99999
_0222EFA4: .word 0x04000052
_0222EFA8: .word 0x0000FFFF
_0222EFAC: .word 0x0000044C
	thumb_func_end ov12_0222EE50

	thumb_func_start ov12_0222EFB0
ov12_0222EFB0: ; 0x0222EFB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x40
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x24]
	mov r6, #0
	str r6, [r4, #0x28]
	add r0, r5, #0
	sub r6, #0x20
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02225964
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r6
	add r6, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl ov12_022234A8
	cmp r0, #1
	bne _0222F01A
	mov r1, #0
	mvn r1, r1
	b _0222F01C
_0222F01A:
	mov r1, #1
_0222F01C:
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	add r1, sp, #0x24
	ldr r0, [r4, #0x20]
	add r1, #2
	add r2, sp, #0x24
	bl sub_0200D550
	add r2, sp, #0x24
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x1c]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	mov r0, #0x36
	ldrsb r0, [r4, r0]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x30]
	bl sub_0200D6E8
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	lsl r3, r6, #0x14
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	ldr r0, _0222F1F8 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp, #0x14]
	ldr r0, _0222F1FC ; =0x0000044C
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl ov12_02226870
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	lsl r3, r6, #0x14
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	ldr r0, _0222F1F8 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp, #0x14]
	ldr r0, _0222F1FC ; =0x0000044C
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl ov12_02226870
	str r0, [r4, #0x3c]
	ldr r0, [r4, #4]
	bl ov12_02220240
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_02235254
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #4]
	bl ov12_0221FDD4
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0x2c
	bl ov12_02235350
	add r2, sp, #0x28
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x28
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222F138
	ldr r0, [r4, #0x1c]
	mov r1, #1
	mov r5, #0
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl sub_0200D474
	b _0222F14A
_0222F138:
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D474
	mov r5, #2
_0222F14A:
	ldr r0, [r4, #4]
	bl ov12_02220248
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232D0
	add r7, r0, #0
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232C4
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232E0
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232EC
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	lsl r0, r7, #0x10
	lsl r1, r1, #0x18
	lsl r2, r5, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02076648
	add r2, r0, #0
	add r5, sp, #0x24
	mov r3, #0xa
	ldrsh r3, [r5, r3]
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x1c]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	mov r1, #0
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x35
	strb r1, [r0]
	sub r1, #0x10
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov12_02235780
	add r0, r4, #0
	add r0, #0x34
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	add r2, r4, #0
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222F200 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0222F204 ; =ov12_0222EE50
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_0222EE50
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F1F8: .word 0x0000FFFF
_0222F1FC: .word 0x0000044C
_0222F200: .word 0x04000052
_0222F204: .word ov12_0222EE50
	thumb_func_end ov12_0222EFB0

	thumb_func_start ov12_0222F208
ov12_0222F208: ; 0x0222F208
	push {r3, r4, r5, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222F21C
	cmp r0, #1
	beq _0222F262
	b _0222F2DC
_0222F21C:
	ldr r0, [r4, #0x68]
	mov r1, #0x20
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r0, [r2, #0x78]
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	ldr r2, [r2, #0x6c]
	add r0, r4, #0
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	add r0, #0x30
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r2, [r4, #0x68]
	ldr r0, [r4, #0x24]
	lsl r2, r2, #2
	add r2, r4, r2
	add r2, #0x84
	ldr r2, [r2, #0]
	mov r1, #2
	bl sub_02007DEC
	ldr r0, [r4, #0x24]
	mov r1, #0x2c
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222F262:
	add r0, r4, #0
	add r0, #0x30
	bl ov12_02225C14
	cmp r0, #0
	bne _0222F2C0
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #2
	ble _0222F280
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222F2B6
_0222F280:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _0222F2B2
	ldr r0, [r4, #4]
	add r1, sp, #8
	mov r2, #3
	bl ov12_02220590
	ldr r0, [r4, #0x68]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0222F2A6
	bl ov12_0221FDE4
	add r1, r0, #0
	add r0, sp, #8
	bl ov12_022382BC
	b _0222F2B2
_0222F2A6:
	bl ov12_0221FDE4
	add r1, r0, #0
	add r0, sp, #8
	bl ov12_022380CC
_0222F2B2:
	mov r0, #0
	strb r0, [r4]
_0222F2B6:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x20]
_0222F2C0:
	mov r2, #0x30
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x32
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_02007DEC
	add sp, #0x58
	pop {r3, r4, r5, pc}
_0222F2DC:
	ldr r0, [r4, #0x24]
	mov r1, #0x2c
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x58
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222F208

	thumb_func_start ov12_0222F2F8
ov12_0222F2F8: ; 0x0222F2F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x90
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r2, #0x5c
	bl ov12_022353AC
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r2, #0x60
	bl ov12_022353AC
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222F34A
	mov r1, #1
	b _0222F34E
_0222F34A:
	mov r1, #0
	mvn r1, r1
_0222F34E:
	add r0, r4, #0
	add r0, #0x54
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	cmp r6, r0
	bne _0222F37A
	mov r0, #1
	b _0222F37C
_0222F37A:
	mov r0, #0
_0222F37C:
	str r0, [r4, #0x58]
	mov r1, #0
	add r0, r5, #0
	str r1, [r4, #0x68]
	bl ov12_02220280
	add r2, r4, #0
	add r1, r0, #0
	add r0, r5, #0
	add r2, #0x1c
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_020080C0
	mov r1, #0x5e
	ldrsh r2, [r4, r1]
	mov r3, #0x54
	sub r0, r0, r2
	ldrsh r2, [r4, r3]
	cmp r2, #0
	ble _0222F3EE
	add r2, r3, #0
	add r2, #0xfb
	str r2, [r4, #0x6c]
	sub r3, #0xa4
	str r3, [r4, #0x70]
	mov r2, #0x5c
	ldrsh r2, [r4, r2]
	str r2, [r4, #0x74]
	ldrsh r2, [r4, r1]
	add r2, r2, r0
	str r2, [r4, #0x78]
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	add r2, r2, r0
	str r2, [r4, #0x7c]
	ldrsh r1, [r4, r1]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0222F444 ; =0xFFFFFD76
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_020080C0
	b _0222F42E
_0222F3EE:
	add r2, r3, #0
	sub r2, #0xa4
	str r2, [r4, #0x6c]
	add r3, #0xfb
	str r3, [r4, #0x70]
	mov r2, #0x5c
	ldrsh r2, [r4, r2]
	str r2, [r4, #0x74]
	ldrsh r2, [r4, r1]
	add r2, r2, r0
	str r2, [r4, #0x78]
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	add r2, r2, r0
	str r2, [r4, #0x7c]
	ldrsh r1, [r4, r1]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0222F444 ; =0xFFFFFD76
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_020080C0
_0222F42E:
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1, #0]
	ldr r0, [r4, #4]
	ldr r1, _0222F448 ; =ov12_0222F208
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222F444: .word 0xFFFFFD76
_0222F448: .word ov12_0222F208
	thumb_func_end ov12_0222F2F8

	thumb_func_start ov12_0222F44C
ov12_0222F44C: ; 0x0222F44C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	ldr r2, [sp, #0x10]
	str r2, [sp]
	mov r2, #0x50
	sub r2, r2, r3
	add r3, r4, #0
	bl sub_020086D4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_0222F44C

	thumb_func_start ov12_0222F464
ov12_0222F464: ; 0x0222F464
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bls _0222F478
	b _0222F59A
_0222F478:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F484: ; jump table
	.short _0222F48C - _0222F484 - 2 ; case 0
	.short _0222F4E8 - _0222F484 - 2 ; case 1
	.short _0222F52A - _0222F484 - 2 ; case 2
	.short _0222F580 - _0222F484 - 2 ; case 3
_0222F48C:
	ldr r2, [r4, #0x10]
	add r2, #0x4f
	str r2, [r4, #0x10]
	cmp r2, #0x50
	blt _0222F4B4
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add sp, #4
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	ldr r1, [r4, #0x14]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, pc}
_0222F4B4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0222F4D0
	mov r0, #2
	str r0, [sp]
	ldr r3, [r4, #0]
	ldr r0, [r4, #0x1c]
	add r3, r3, #2
	mov r1, #0
	lsl r3, r3, #1
	bl ov12_0222F44C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222F4D0:
	mov r0, #2
	str r0, [sp]
	ldr r3, [r4, #0]
	mov r1, #0x50
	add r3, r3, #2
	ldr r0, [r4, #0x1c]
	sub r1, r1, r2
	lsl r3, r3, #1
	bl ov12_0222F44C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222F4E8:
	ldr r0, [r4, #4]
	mov r3, #0xff
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #8
	add r2, r0, #1
	str r2, [r4, #0xc]
	ldr r6, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r6, #8
	add r5, r0, #0
	add r6, #0x50
	lsl r0, r6, #0x18
	and r5, r3
	lsr r0, r0, #0x18
	lsl r1, r1, #8
	orr r5, r0
	ldr r0, _0222F5E4 ; =0x04000040
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	strh r5, [r0]
	orr r1, r3
	strh r1, [r0, #4]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F52A:
	ldr r0, [r4, #4]
	mov r3, #0xff
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #8
	add r2, r0, #1
	str r2, [r4, #0xc]
	ldr r6, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r6, #8
	add r5, r0, #0
	add r6, #0x50
	lsl r0, r6, #0x18
	and r5, r3
	lsr r0, r0, #0x18
	lsl r1, r1, #8
	orr r5, r0
	ldr r0, _0222F5E4 ; =0x04000040
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	strh r5, [r0]
	orr r1, r3
	strh r1, [r0, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0x26
	ble _0222F576
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F576:
	mov r0, #0
	add r4, #0x20
	add sp, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F580:
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F59A:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r3, [r0, #0]
	ldr r1, _0222F5E8 ; =0xFFFF1FFF
	and r1, r3
	add r3, r0, #0
	str r1, [r0, #0]
	add r3, #0x48
	ldrh r5, [r3]
	mov r1, #0x3f
	bic r5, r1
	strh r5, [r3]
	add r3, r0, #0
	add r3, #0x4a
	ldrh r5, [r3]
	bic r5, r1
	add r1, r0, #0
	strh r5, [r3]
	mov r3, #0
	add r1, #0x40
	strh r3, [r1]
	add r0, #0x44
	strh r3, [r0]
	ldr r0, [r4, #0x24]
	add r1, r2, #0
	bl ov12_02220220
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	mov r1, #0x17
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222F5E4: .word 0x04000040
_0222F5E8: .word 0xFFFF1FFF
	thumb_func_end ov12_0222F464

	thumb_func_start ov12_0222F5EC
ov12_0222F5EC: ; 0x0222F5EC
	push {r4, r5, r6, lr}
	mov r1, #0x50
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022232FC
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02235254
	cmp r0, #3
	beq _0222F62C
	cmp r0, #4
	bne _0222F640
_0222F62C:
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	sub r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_02019060
_0222F640:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x1c]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x1c]
	mov r1, #0x17
	bl sub_020080C0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	mov r1, #0x17
	mov r2, #8
	bl sub_02007DEC
	sub r6, #0x28
	str r6, [r4, #8]
	add r5, #0x28
	mov r6, #1
	lsl r6, r6, #0x1a
	add r3, r6, #0
	str r5, [r4, #4]
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, [r4, #4]
	add r3, #0x48
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	ldr r1, [r6, #0]
	ldr r0, _0222F6F8 ; =0xFFFF1FFF
	and r1, r0
	lsr r0, r6, #0xd
	orr r0, r1
	str r0, [r6, #0]
	ldrh r2, [r3]
	mov r1, #0x3f
	mov r0, #0x1f
	bic r2, r1
	orr r0, r2
	mov r2, #0x20
	orr r0, r2
	strh r0, [r3]
	add r3, r6, #0
	add r3, #0x4a
	ldrh r5, [r3]
	mov r0, #0x1b
	bic r5, r1
	orr r0, r5
	orr r0, r2
	strh r0, [r3]
	ldr r2, [r4, #8]
	mov r0, #0xff
	lsl r1, r2, #8
	add r2, #0x50
	lsl r0, r0, #8
	lsl r2, r2, #0x18
	and r1, r0
	lsr r2, r2, #0x18
	orr r2, r1
	add r1, r6, #0
	ldr r5, [r4, #0xc]
	ldr r3, [r4, #4]
	add r1, #0x40
	strh r2, [r1]
	lsl r1, r3, #8
	and r1, r0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	add r6, #0x44
	strh r0, [r6]
	ldr r0, [r4, #0x24]
	ldr r1, _0222F6FC ; =ov12_0222F464
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	nop
_0222F6F8: .word 0xFFFF1FFF
_0222F6FC: .word ov12_0222F464
	thumb_func_end ov12_0222F5EC

	thumb_func_start ov12_0222F700
ov12_0222F700: ; 0x0222F700
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #0xe8
	mov r2, #0xea
	add r5, r0, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #8]
	add r0, #0xc
	bl ov12_02225BA0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02226274
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	mov r1, #0
	add r2, sp, #0
_0222F734:
	ldr r0, [r2, #0]
	cmp r0, #1
	beq _0222F76A
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #3
	blt _0222F734
	mov r2, #0xe8
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0xea
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #1
	sub r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222F76A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222F700

	thumb_func_start ov12_0222F770
ov12_0222F770: ; 0x0222F770
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0xf0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #8]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0xe8
	strh r0, [r1]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0xea
	strh r0, [r1]
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0xec
	strh r0, [r1]
	mov r0, #0xea
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xea
	add r1, #8
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xc
	mov r1, #1
	mov r2, #8
	bl ov12_022263A4
	add r0, sp, #0x20
	mov r1, #1
	mov r2, #0xa
	bl ov12_022263A4
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	ldr r1, [r4, #0x18]
	mov r6, #0
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x18]
	ldr r1, [sp, #0x2c]
	add r5, r4, #0
	mul r0, r1
	str r0, [sp, #0x2c]
	mov r7, #0x64
_0222F808:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_022202C0
	str r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_0200D474
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D810
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0222F808
	mov r0, #0xea
	ldrsh r1, [r4, r0]
	mov r0, #0xec
	ldrsh r0, [r4, r0]
	mov r3, #0xe8
	ldr r2, _0222F880 ; =ov12_02225AE0
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x38
	add r1, sp, #0x20
	bl ov12_022261C4
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r4, #0]
	ldr r1, _0222F884 ; =ov12_0222F700
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F880: .word ov12_02225AE0
_0222F884: .word ov12_0222F700
	thumb_func_end ov12_0222F770

	thumb_func_start ov12_0222F888
ov12_0222F888: ; 0x0222F888
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bls _0222F898
	b _0222F9DE
_0222F898:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F8A4: ; jump table
	.short _0222F8B2 - _0222F8A4 - 2 ; case 0
	.short _0222F8F4 - _0222F8A4 - 2 ; case 1
	.short _0222F92A - _0222F8A4 - 2 ; case 2
	.short _0222F942 - _0222F8A4 - 2 ; case 3
	.short _0222F972 - _0222F8A4 - 2 ; case 4
	.short _0222F98A - _0222F8A4 - 2 ; case 5
	.short _0222F9AE - _0222F8A4 - 2 ; case 6
_0222F8B2:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	beq _0222F8D4
	mov r2, #0x48
	mov r3, #0x4a
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_02225A18
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F8D4:
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0x10
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x10
	add r3, r2, #0
	bl ov12_02225BC8
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F8F4:
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225DA0
	cmp r0, #0
	beq _0222F90E
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #9
	bl sub_02007DEC
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F90E:
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x34
	mov r2, #0
	mov r3, #4
	bl ov12_02225D50
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #2
	strh r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222F92A:
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222F9DE
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F942:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	beq _0222F964
	mov r2, #0x48
	mov r3, #0x4a
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_02225A18
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F964:
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x20
	strh r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222F972:
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222F9DE
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F98A:
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225DA0
	cmp r0, #0
	beq _0222F9A4
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #9
	bl sub_02007DEC
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F9A4:
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F9AE:
	mov r2, #0x48
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x4a
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222F9DE:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222F888

	thumb_func_start ov12_0222F9E4
ov12_0222F9E4: ; 0x0222F9E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0xf0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x48
	strh r0, [r1]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x4a
	strh r0, [r1]
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	add r0, #0x10
	sub r2, #0x23
	add r3, r1, #0
	bl ov12_02225BC8
	add r0, r4, #0
	ldr r2, _0222FAF4 ; =0x00000E38
	add r0, #0x34
	mov r1, #0
	mov r3, #8
	bl ov12_02225D50
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	ldr r1, [r4, #0x18]
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x18]
	ldr r1, [r4, #0x3c]
	mul r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r6, #3
	bne _0222FAB2
	cmp r0, #3
	bne _0222FAB2
	mov r1, #0xa
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	sub r2, #0x32
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	mov r2, #0x28
	bl sub_02007DEC
	b _0222FAE6
_0222FAB2:
	cmp r6, #4
	bne _0222FAD0
	cmp r0, #4
	bne _0222FAD0
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	mov r2, #0x28
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	mov r2, #0x28
	bl sub_02007DEC
	b _0222FAE6
_0222FAD0:
	mov r2, #0x28
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	mul r2, r7
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	mov r2, #0x28
	bl sub_02007DEC
_0222FAE6:
	ldr r0, [r4, #0]
	ldr r1, _0222FAF8 ; =ov12_0222F888
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FAF4: .word 0x00000E38
_0222FAF8: .word ov12_0222F888
	thumb_func_end ov12_0222F9E4

	thumb_func_start ov12_0222FAFC
ov12_0222FAFC: ; 0x0222FAFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r4, [sp, #0x10]
	bl sub_0200CE6C
	str r0, [r5, #0]
	add r6, r4, #4
	add r3, r5, #4
	mov r2, #4
_0222FB14:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222FB14
	ldr r0, [r6, #0]
	add r2, r5, #0
	str r0, [r3, #0]
	add r3, r4, #0
	add r3, #0x28
	ldmia r3!, {r0, r1}
	add r2, #0x28
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	strh r0, [r5, #0x3c]
	mov r0, #0x3e
	ldrsh r0, [r4, r0]
	strh r0, [r5, #0x3e]
	mov r0, #0x40
	ldrsh r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x40
	strh r1, [r0]
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r5, #0x44]
	str r1, [r5, #0x48]
	ldr r0, [r5, #0]
	bl sub_0200D3F4
	ldr r0, [r5, #0]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D460
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_0222FAFC

	thumb_func_start ov12_0222FB6C
ov12_0222FB6C: ; 0x0222FB6C
	ldr r3, _0222FB74 ; =sub_0200D0F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0222FB74: .word sub_0200D0F4
	thumb_func_end ov12_0222FB6C

	thumb_func_start ov12_0222FB78
ov12_0222FB78: ; 0x0222FB78
	ldr r3, _0222FB80 ; =sub_0200D3F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0222FB80: .word sub_0200D3F4
	thumb_func_end ov12_0222FB78

	thumb_func_start ov12_0222FB84
ov12_0222FB84: ; 0x0222FB84
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _0222FB96
	add sp, #0x10
	mov r0, #1
	pop {r4, pc}
_0222FB96:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0222FBA6
	cmp r0, #1
	beq _0222FBA6
	cmp r0, #2
	beq _0222FC28
	b _0222FC2E
_0222FBA6:
	add r0, r4, #4
	bl ov12_02225AE0
	cmp r0, #0
	beq _0222FBE6
	add r0, r4, #0
	add r0, #0x28
	bl ov12_02225E0C
	mov r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	mov r1, #0x3e
	ldrsh r2, [r4, r1]
	mov r1, #4
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0]
	add r1, r2, r1
	mov r2, #0x40
	ldrsh r3, [r4, r2]
	mov r2, #6
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	b _0222FC2E
_0222FBE6:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bge _0222FC20
	cmp r0, #0
	bne _0222FC0E
	ldr r1, [r4, #0xc]
	ldr r2, _0222FC34 ; =0x00007FFF
	lsl r1, r1, #0x10
	str r2, [sp]
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r0, _0222FC38 ; =0x0000071C
	str r0, [sp, #0xc]
	add r0, r4, #4
	bl ov12_02225A8C
_0222FC0E:
	ldr r0, [r4, #8]
	ldr r2, _0222FC3C ; =0x0000FFFF
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _0222FC40 ; =0xFFFFF000
	add r0, #0x28
	mov r1, #0
	bl ov12_02225DF4
_0222FC20:
	ldr r0, [r4, #0x44]
	add r0, r0, #1
	str r0, [r4, #0x44]
	b _0222FC2E
_0222FC28:
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_0222FC2E:
	mov r0, #1
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0222FC34: .word 0x00007FFF
_0222FC38: .word 0x0000071C
_0222FC3C: .word 0x0000FFFF
_0222FC40: .word 0xFFFFF000
	thumb_func_end ov12_0222FB84

	thumb_func_start ov12_0222FC44
ov12_0222FC44: ; 0x0222FC44
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #6
	bhi _0222FCB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222FC60: ; jump table
	.short _0222FC6E - _0222FC60 - 2 ; case 0
	.short _0222FC86 - _0222FC60 - 2 ; case 1
	.short _0222FCD2 - _0222FC60 - 2 ; case 2
	.short _0222FCE8 - _0222FC60 - 2 ; case 3
	.short _0222FD88 - _0222FC60 - 2 ; case 4
	.short _0222FDB2 - _0222FC60 - 2 ; case 5
	.short _0222FDF2 - _0222FC60 - 2 ; case 6
_0222FC6E:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_0222FB84
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FC86:
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r1, #0xa
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_020E1F6C
	mov r1, #0x1f
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0222FE24 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0, #0]
	ldr r0, _0222FE28 ; =0x00000136
	cmp r1, r0
	bge _0222FCBA
_0222FCB8:
	b _0222FE1C
_0222FCBA:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D810
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FCD2:
	ldr r1, _0222FE2C ; =0x0000FFFF
	ldr r0, _0222FE24 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FCE8:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _0222FD2C
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r2, #0x4c
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	mov r1, #1
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mul r2, r0
	add r0, r4, r2
	ldr r0, [r0, #0x58]
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xf4
	str r1, [r0, #0]
_0222FD2C:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #2
	bge _0222FD44
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf4
	str r1, [r0, #0]
_0222FD44:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_0222FB84
	add r5, r4, #0
	add r6, r0, #0
	mov r7, #0
	add r5, #0x58
_0222FD54:
	add r0, r5, #0
	bl ov12_0222FB84
	str r0, [sp]
	cmp r0, #0
	bne _0222FD68
	add r0, r5, #0
	mov r1, #0
	bl ov12_0222FB78
_0222FD68:
	ldr r0, [sp]
	add r7, r7, #1
	orr r6, r0
	add r5, #0x4c
	cmp r7, #2
	blt _0222FD54
	cmp r6, #0
	bne _0222FE1C
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FD88:
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	bl sub_02021FD0
	cmp r0, #0
	bne _0222FE1C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FDB2:
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0, #0]
	add r0, r4, #0
	sub r1, #0xa
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_020E1F6C
	mov r1, #0x1f
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0222FE24 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _0222FE1C
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FDF2:
	add r5, r4, #0
	mov r6, #0
	add r5, #0x58
_0222FDF8:
	add r0, r5, #0
	bl ov12_0222FB6C
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222FDF8
	ldr r0, [r4, #0xc]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222FE1C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FE24: .word 0x04000052
_0222FE28: .word 0x00000136
_0222FE2C: .word 0x0000FFFF
	thumb_func_end ov12_0222FC44

	thumb_func_start ov12_0222FE30
ov12_0222FE30: ; 0x0222FE30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl ov12_0221FDE4
	mov r1, #1
	lsl r1, r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	mov r1, #8
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x11
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x50]
	ldr r2, _0222FF68 ; =0x0000BFFF
	neg r0, r0
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _0222FF6C ; =0xFFFF8000
	ldr r0, _0222FF70 ; =0x0000071C
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsr r1, r1, #0x12
	add r0, #0x10
	add r3, r1, #0
	bl ov12_02225A8C
	ldr r0, [r4, #0x14]
	ldr r2, _0222FF74 ; =0x0000FFFF
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _0222FF78 ; =0xFFFFF000
	add r0, #0x34
	mov r1, #0
	bl ov12_02225DF4
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	add r0, #0x48
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #0x54]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x4a
	strh r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	mov r1, #0x4a
	mov r2, #0x4c
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	bl sub_0200D4C4
	ldr r0, [r4, #0xc]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D460
	ldr r1, [r4, #0]
	add r0, sp, #0x14
	bl ov12_0222329C
	mov r0, #0x4a
	ldrsh r0, [r4, r0]
	add r1, sp, #0x14
	add r5, r4, #0
	strh r0, [r1]
	mov r0, #0x4c
	ldrsh r0, [r4, r0]
	add r7, r4, #0
	mov r6, #0
	strh r0, [r1, #2]
	add r5, #0x58
	add r7, #0xc
_0222FF16:
	str r7, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r3, sp, #0x14
	bl ov12_0222FAFC
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222FF16
	add r0, r4, #0
	mov r1, #0
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	mov r2, #0x1f
	bl ov12_02235780
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D810
	mov r6, #0
	add r5, r4, #0
	mov r7, #1
_0222FF4A:
	ldr r0, [r5, #0x58]
	add r1, r7, #0
	bl sub_0200D810
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222FF4A
	ldr r0, [r4, #0]
	ldr r1, _0222FF7C ; =ov12_0222FC44
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FF68: .word 0x0000BFFF
_0222FF6C: .word 0xFFFF8000
_0222FF70: .word 0x0000071C
_0222FF74: .word 0x0000FFFF
_0222FF78: .word 0xFFFFF000
_0222FF7C: .word ov12_0222FC44
	thumb_func_end ov12_0222FE30

	thumb_func_start ov12_0222FF80
ov12_0222FF80: ; 0x0222FF80
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r2, #0x60
	ldrsh r3, [r4, r2]
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	add r2, r3, r2
	bl sub_02007DEC
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	add r2, r3, r2
	bl sub_02007DEC
	mov r1, #0x60
	ldrsh r2, [r4, r1]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x58]
	add r1, r2, r1
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r3, r3, r2
	mov r2, #0x66
	ldrsh r2, [r4, r2]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0x34
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	mov r0, #0x64
	ldrsh r0, [r4, r0]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, _02230014 ; =0x3DCCCCCD
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_020E0B00
	add r1, r0, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0x58]
	ldr r2, [sp]
	bl sub_0200D6E8
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r4, #0x64
	mul r0, r1
	strh r0, [r4]
	add sp, #8
	pop {r4, pc}
	nop
_02230014: .word 0x3DCCCCCD
	thumb_func_end ov12_0222FF80

	thumb_func_start ov12_02230018
ov12_02230018: ; 0x02230018
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02230030
	cmp r0, #1
	beq _0223006A
	cmp r0, #2
	beq _022300A6
	b _022300B8
_02230030:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02226138
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225F6C
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0222FF80
	cmp r5, #0
	bne _022300B8
	mov r2, #0xa
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xc
	mov r3, #0xf
	bl ov12_02225EF0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022300B8
_0223006A:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02226138
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225F6C
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0222FF80
	cmp r5, #0
	bne _022300B8
	mov r2, #0x60
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022300B8
_022300A6:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
_022300B8:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02230018

	thumb_func_start ov12_022300C4
ov12_022300C4: ; 0x022300C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x68
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x5c]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x60
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x62
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	mov r1, #0x29
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x66
	strh r0, [r1]
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x58]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x58]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x58]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_0200D460
	mov r0, #0xf
	str r0, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	mov r2, #0xc
	add r3, r1, #0
	bl ov12_02225EF0
	add r0, r4, #0
	mov r1, #1
	add r0, #0x64
	strh r1, [r0]
	ldr r0, [r4, #0]
	mov r1, #0x1c
	mov r2, #0xf
	bl ov12_02235780
	ldr r0, [r4, #0]
	ldr r1, _02230190 ; =ov12_02230018
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02230190: .word ov12_02230018
	thumb_func_end ov12_022300C4

	thumb_func_start ov12_02230194
ov12_02230194: ; 0x02230194
	mov r2, #0x12
	ldrsh r2, [r0, r2]
	mov r3, #0x10
	ldrsh r0, [r0, r3]
	neg r2, r2
	lsl r2, r2, #0x10
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	mov r2, #3
	ldr r3, _022301B0 ; =sub_020C4B4C
	lsl r2, r2, #8
	bx r3
	; .align 2, 0
_022301B0: .word sub_020C4B4C
	thumb_func_end ov12_02230194

	thumb_func_start ov12_022301B4
ov12_022301B4: ; 0x022301B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl ov12_022266C0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_02230194
	add r0, r5, #0
	add r0, #0x1c
	bl ov12_02225C14
	str r0, [sp, #8]
	mov r0, #0x14
	ldrsh r4, [r5, r0]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r4, r0
	bgt _02230254
	ldr r1, [sp, #0xc]
	lsl r2, r4, #2
	add r1, r1, r2
	str r1, [sp]
_022301E8:
	ldr r1, [sp]
	sub r0, r0, r4
	ldr r2, [r1, #0]
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	lsr r1, r2, #0x10
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	mov r1, #0x1e
	ldrsh r1, [r5, r1]
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	sub r0, r7, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x1c
	ldrsh r1, [r5, r0]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r0, #0x28
	sub r0, r0, r4
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [sp, #4]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	sub r6, r4, #1
	bpl _02230230
	add r6, #0xc0
_02230230:
	ldr r0, [sp, #4]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	ldr r1, [sp, #0xc]
	lsl r2, r6, #2
	str r0, [r1, r2]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r4, r0
	ble _022301E8
_02230254:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022301B4

	thumb_func_start ov12_0223025C
ov12_0223025C: ; 0x0223025C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _022302C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230276: ; jump table
	.short _02230280 - _02230276 - 2 ; case 0
	.short _022302B2 - _02230276 - 2 ; case 1
	.short _022302DA - _02230276 - 2 ; case 2
	.short _0223032A - _02230276 - 2 ; case 3
	.short _0223034A - _02230276 - 2 ; case 4
_02230280:
	add r0, r4, #0
	bl ov12_022301B4
	cmp r0, #0
	bne _022302C4
	ldr r0, [r4, #4]
	mov r1, #0x1f
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	mov r2, #0
	bl ov12_022357EC
	mov r1, #0x1f
	mov r2, #0
	str r1, [sp]
	mov r0, #0x10
	add r4, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r2, #0
	bl ov12_02226424
	add sp, #8
	pop {r4, r5, r6, pc}
_022302B2:
	add r0, r4, #0
	bl ov12_022301B4
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226454
	cmp r0, #0
	bne _022302C6
_022302C4:
	b _022303CC
_022302C6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	bl ov12_022266D4
	mov r0, #0
	add sp, #8
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_022302DA:
	ldr r0, [r4, #0]
	bl ov12_02220278
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	mov r1, #2
	mov r2, #0
	neg r3, r3
	bl sub_02019184
	ldr r0, [r4, #0]
	bl ov12_02220278
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	mov r1, #2
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	ble _022303CC
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	add r0, #0x40
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0223032A:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226454
	cmp r0, #0
	beq _022303CC
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0223034A:
	ldr r0, [r4, #0x18]
	bl ov12_0222669C
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #0]
	bl ov12_02220278
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022303CC:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223025C

	thumb_func_start ov12_022303D0
ov12_022303D0: ; 0x022303D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x68
	bl sub_02018144
	mov r1, #0
	mov r2, #0x68
	add r4, r0, #0
	bl sub_020D5124
	ldr r1, _02230538 ; =ov12_0223025C
	str r5, [r4, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_022201E8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0x12
	ldrsh r2, [r4, r1]
	sub r0, r2, r0
	strh r0, [r4, #0x12]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	mov r2, #1
	sub r0, #0x28
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	mov r1, #6
	sub r0, #0x28
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0xc]
	bl sub_02007DEC
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r6, r0, #0
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	sub r1, #8
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	add r0, #0x58
	strh r0, [r4, #0x16]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0223046C
	mov r0, #0
	strh r0, [r4, #0x14]
_0223046C:
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0xc0
	ble _02230478
	mov r0, #0xc0
	strh r0, [r4, #0x16]
_02230478:
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233EC
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0201CED4
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	bl ov12_022266E8
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0x50
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r7, [sp, #4]
	add r1, r1, #1
	str r1, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, _0223053C ; =0x0000038E
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x14
	mov r1, #0x16
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	lsl r3, r6, #0xf
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl ov12_0222662C
	str r0, [r4, #0x18]
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x1c
	mov r2, #0x50
	add r3, r1, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0x24]
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x24]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	sub r0, r0, #3
	cmp r0, #1
	bhi _0223052A
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
_0223052A:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl ov12_0223025C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230538: .word ov12_0223025C
_0223053C: .word 0x0000038E
	thumb_func_end ov12_022303D0

	thumb_func_start ov12_02230540
ov12_02230540: ; 0x02230540
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _022305F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223055A: ; jump table
	.short _02230562 - _0223055A - 2 ; case 0
	.short _02230588 - _0223055A - 2 ; case 1
	.short _0223059A - _0223055A - 2 ; case 2
	.short _022305DE - _0223055A - 2 ; case 3
_02230562:
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02225DC8
	ldr r2, [r4, #0x38]
	mov r1, #0x1f
	sub r1, r1, r2
	lsl r1, r1, #8
	orr r2, r1
	ldr r1, _022305FC ; =0x04000052
	cmp r0, #0
	strh r2, [r1]
	bne _022305F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	b _022305F0
_02230588:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x20
	ble _022305F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022305F0
_0223059A:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _022305C0
	ldr r1, [sp, #4]
	mov r0, #0
	bl sub_020E1A9C
	str r0, [sp, #4]
_022305C0:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200D6E8
	cmp r5, #0
	bne _022305F0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022305F0
_022305DE:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_022305F0:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022305FC: .word 0x04000052
	thumb_func_end ov12_02230540

	thumb_func_start ov12_02230600
ov12_02230600: ; 0x02230600
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r2, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0223061C
	cmp r0, #1
	beq _022306A4
	cmp r0, #2
	bne _02230618
	b _02230742
_02230618:
	add sp, #0xc
	pop {r4, r5, pc}
_0223061C:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02226138
	mov r2, #0x38
	mov r3, #0x3a
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r5, #8]
	add r0, #0x14
	bl ov12_02225A18
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _02230656
	mov r3, #0x3a
	ldrsh r4, [r5, r3]
	ldr r3, [r5, #0x3c]
	mov r2, #0x38
	sub r3, r4, r3
	add r0, r5, #0
	lsl r3, r3, #0x10
	ldrsh r2, [r5, r2]
	ldr r1, [r5, #0xc]
	add r0, #0x14
	asr r3, r3, #0x10
	bl ov12_022259DC
_02230656:
	ldr r0, [r5, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _02230750
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_020086FC
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _0223069A
	ldr r0, [r5, #0xc]
	bl ov12_02225950
	mov r1, #1
	add r4, r1, #0
	lsl r4, r0
	ldr r0, [r5, #0]
	bl ov12_0222332C
	mov r1, #0x10
	str r1, [sp]
	mov r3, #0
	lsl r2, r4, #0x10
	str r3, [sp, #4]
	mov r1, #4
	lsr r2, r2, #0x10
	str r3, [sp, #8]
	bl sub_02003178
_0223069A:
	ldr r0, [r5, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, pc}
_022306A4:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02226138
	mov r2, #0x38
	mov r3, #0x3a
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r5, #8]
	add r0, #0x14
	bl ov12_02225A18
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _022306DE
	mov r3, #0x3a
	ldrsh r4, [r5, r3]
	ldr r3, [r5, #0x3c]
	mov r2, #0x38
	sub r3, r4, r3
	add r0, r5, #0
	lsl r3, r3, #0x10
	ldrsh r2, [r5, r2]
	ldr r1, [r5, #0xc]
	add r0, #0x14
	asr r3, r3, #0x10
	bl ov12_022259DC
_022306DE:
	ldr r0, [r5, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _02230750
	mov r2, #0x38
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x3a
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _02230738
	ldr r0, [r5, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02230722
	ldr r0, [r5, #8]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
_02230722:
	mov r2, #0x3a
	ldrsh r3, [r5, r2]
	ldr r2, [r5, #0x3c]
	mov r1, #0x38
	sub r2, r3, r2
	lsl r2, r2, #0x10
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0xc]
	asr r2, r2, #0x10
	bl sub_0200D4C4
_02230738:
	ldr r0, [r5, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, pc}
_02230742:
	ldr r0, [r5, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
_02230750:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02230600

	thumb_func_start ov12_02230754
ov12_02230754: ; 0x02230754
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x50
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x50
	bl sub_020D5124
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov12_0221FDD4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x10]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0xa
	add r0, #0x14
	mov r1, #0xe
	add r3, r2, #0
	bl ov12_02225E68
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl ov12_02225D78
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x1f
	bl ov12_02235780
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _022307D4
	ldr r1, _022307F8 ; =0xBFB33333
	ldr r2, _022307FC ; =0x3FB33333
	bl sub_0200D6E8
	b _022307DC
_022307D4:
	ldr r1, _022307FC ; =0x3FB33333
	add r2, r1, #0
	bl sub_0200D6E8
_022307DC:
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0]
	ldr r1, _02230800 ; =ov12_02230540
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022307F8: .word 0xBFB33333
_022307FC: .word 0x3FB33333
_02230800: .word ov12_02230540
	thumb_func_end ov12_02230754

	thumb_func_start ov12_02230804
ov12_02230804: ; 0x02230804
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x38]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x3a]
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl sub_020080C0
	str r0, [r4, #0x3c]
	mov r1, #4
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x14
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	mov r2, #0x10
	add r0, r1, r0
	mov r1, #0
	strh r0, [r4, #0x14]
	str r1, [sp]
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl sub_020086FC
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	cmp r5, #2
	bne _022308B0
	cmp r0, #4
	beq _022308B8
_022308B0:
	cmp r5, #5
	bne _022308FE
	cmp r0, #3
	bne _022308FE
_022308B8:
	ldr r0, [r4, #0xc]
	bl ov12_02225950
	mov r1, #1
	add r5, r1, #0
	lsl r5, r0
	ldr r0, [r4, #0]
	bl ov12_0222332C
	mov r3, #0
	lsl r2, r5, #0x10
	str r3, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #4
	lsr r2, r2, #0x10
	str r3, [sp, #8]
	bl sub_02003178
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _022308FE
	ldr r0, [r4, #8]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_022308FE:
	ldr r0, [r4, #0]
	ldr r1, _0223090C ; =ov12_02230600
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223090C: .word ov12_02230600
	thumb_func_end ov12_02230804

	thumb_func_start ov12_02230910
ov12_02230910: ; 0x02230910
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #3
	bhi _0223098C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223092A: ; jump table
	.short _02230932 - _0223092A - 2 ; case 0
	.short _0223094A - _0223092A - 2 ; case 1
	.short _02230970 - _0223092A - 2 ; case 2
	.short _0223098A - _0223092A - 2 ; case 3
_02230932:
	add r0, r4, #0
	add r0, #0x1c
	bl ov12_02226454
	cmp r0, #1
	bne _0223098C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x20
	str r0, [r4, #0x44]
	b _0223098C
_0223094A:
	ldr r0, [r4, #0x44]
	sub r0, r0, #1
	str r0, [r4, #0x44]
	bpl _0223098C
	ldr r0, [r4, #8]
	mov r1, #8
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x18
	add r4, #0x1c
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl ov12_02226424
	b _0223098C
_02230970:
	add r0, r4, #0
	add r0, #0x1c
	bl ov12_02226454
	cmp r0, #1
	bne _0223098C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	bl ov12_0222669C
	b _0223098C
_0223098A:
	mov r5, #1
_0223098C:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02230910

	thumb_func_start ov12_02230994
ov12_02230994: ; 0x02230994
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022309AA
	cmp r0, #1
	beq _022309DE
	cmp r0, #2
	beq _022309F0
	pop {r4, r5, r6, pc}
_022309AA:
	add r0, r4, #0
	bl ov12_02230910
	ldr r0, [r4, #0x48]
	bl sub_0200D408
	cmp r0, #1
	bne _022309D6
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _022309D6
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_022309D6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022309DE:
	add r0, r4, #0
	bl ov12_02230910
	cmp r0, #0
	beq _02230A88
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022309F0:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02230A3E
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
_02230A3E:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #0]
	bl ov12_02220278
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02230A88:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02230994

	thumb_func_start ov12_02230A8C
ov12_02230A8C: ; 0x02230A8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r1, #0x4c
	add r7, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r7, [r4, #0]
	add r0, r7, #0
	bl ov12_0222332C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x10
	bl ov12_022357EC
	mov r2, #8
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0
	mov r3, #0x10
	bl ov12_02226424
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x10]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, #0x28
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	cmp r0, #5
	beq _02230B1C
	cmp r0, #2
	bne _02230B2E
_02230B1C:
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl sub_0200D460
	b _02230B6A
_02230B2E:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_0200D3F4
_02230B6A:
	add r0, r7, #0
	mov r1, #1
	bl ov12_022233EC
	neg r1, r5
	lsl r1, r1, #0x10
	sub r6, #0x28
	str r0, [sp, #0x18]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	add r6, r0, #0
	add r0, r7, #0
	bl ov12_0221FDE4
	mov r1, #0x64
	str r1, [sp]
	ldr r1, [sp, #0x18]
	mov r3, #5
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r0, r5, #0x18
	add r5, #0x50
	lsl r1, r5, #0x18
	ldr r2, _02230BD8 ; =0x0000038E
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsl r3, r3, #0xc
	bl ov12_0222662C
	mov r2, #1
	str r0, [r4, #0x14]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	lsl r2, r2, #8
	mov r3, #8
	bl sub_02003A2C
	ldr r0, [r4, #0]
	ldr r1, _02230BDC ; =ov12_02230994
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02230BD8: .word 0x0000038E
_02230BDC: .word ov12_02230994
	thumb_func_end ov12_02230A8C

	thumb_func_start ov12_02230BE0
ov12_02230BE0: ; 0x02230BE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _02230CE2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230BFA: ; jump table
	.short _02230C02 - _02230BFA - 2 ; case 0
	.short _02230C52 - _02230BFA - 2 ; case 1
	.short _02230C90 - _02230BFA - 2 ; case 2
	.short _02230CCA - _02230BFA - 2 ; case 3
_02230C02:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _02230C34
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x54]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	b _02230CE2
_02230C34:
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #5
	str r0, [r4, #0x4c]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x14
	add r2, r1, #0
	mov r3, #1
	bl ov12_02225E68
	b _02230CE2
_02230C52:
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02225DA0
	ldr r1, [r4, #0x38]
	add r5, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	bl sub_0200D79C
	cmp r5, #0
	bne _02230CE2
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _02230C88
	sub r0, r0, #1
	str r0, [r4, #0x4c]
	add r0, r4, #0
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x50]
	add r0, #0x38
	mov r3, #4
	str r1, [r4, #0x50]
	bl ov12_02225D50
	b _02230CE2
_02230C88:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02230CE2
_02230C90:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _02230CC2
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x54]
	bl sub_020E17B4
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	b _02230CE2
_02230CC2:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02230CE2
_02230CCA:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
_02230CE2:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02230BE0

	thumb_func_start ov12_02230CEC
ov12_02230CEC: ; 0x02230CEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x58
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022234A8
	cmp r0, #1
	bne _02230D2C
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x54]
	neg r6, r7
	b _02230D32
_02230D2C:
	mov r0, #1
	str r0, [r4, #0x54]
	add r6, r7, #0
_02230D32:
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov12_022258E0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov12_022258E0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	mov r1, #2
	str r0, [r4, #0x10]
	bl sub_0200D6A4
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_0200D4C4
	mov r1, #0x28
	mul r1, r7
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x10]
	asr r1, r1, #0x10
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	mov r1, #0xb
	mvn r1, r1
	mul r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x10]
	asr r1, r1, #0x10
	mov r2, #0xc
	bl sub_0200D7E0
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	ldr r0, [r4, #0x10]
	bne _02230DC4
	mov r1, #1
	bl sub_0200D364
	b _02230DCA
_02230DC4:
	mov r1, #0
	bl sub_0200D364
_02230DCA:
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0xa
	add r0, #0x14
	mov r1, #1
	add r3, r2, #0
	bl ov12_02225E68
	cmp r6, #0
	blt _02230DF2
	add r0, r4, #0
	ldr r1, _02230E14 ; =0x0000FF48
	ldr r2, _02230E18 ; =0x0000E38D
	add r0, #0x38
	mov r3, #4
	bl ov12_02225D50
	ldr r0, _02230E14 ; =0x0000FF48
	b _02230E02
_02230DF2:
	add r0, r4, #0
	ldr r2, _02230E1C ; =0x00001C71
	add r0, #0x38
	mov r1, #0
	mov r3, #4
	bl ov12_02225D50
	mov r0, #0
_02230E02:
	str r0, [r4, #0x50]
	ldr r0, [r4, #0]
	ldr r1, _02230E20 ; =ov12_02230BE0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230E14: .word 0x0000FF48
_02230E18: .word 0x0000E38D
_02230E1C: .word 0x00001C71
_02230E20: .word ov12_02230BE0
	thumb_func_end ov12_02230CEC

	thumb_func_start ov12_02230E24
ov12_02230E24: ; 0x02230E24
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	str r1, [r5, #0]
	add r6, r3, #0
	mov r3, #8
	mov r1, #0xa
	add r4, r2, #0
	add r0, r5, #4
	add r2, r1, #0
	str r3, [sp]
	bl ov12_02225E68
	mov r0, #3
	str r0, [r5, #0x2c]
	mov r0, #8
	str r0, [r5, #0x30]
	mov r0, #0xa
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0]
	add r2, r6, #0
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02230E8C
	mov r2, #0xfe
	ldr r0, [r5, #0]
	ldr r1, _02230E98 ; =0xBF800000
	lsl r2, r2, #0x16
	bl sub_0200D6E8
_02230E8C:
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02230E98: .word 0xBF800000
	thumb_func_end ov12_02230E24

	thumb_func_start ov12_02230E9C
ov12_02230E9C: ; 0x02230E9C
	ldr r3, _02230EA4 ; =sub_0200D0F4
	ldr r0, [r0, #0]
	bx r3
	nop
_02230EA4: .word sub_0200D0F4
	thumb_func_end ov12_02230E9C

	thumb_func_start ov12_02230EA8
ov12_02230EA8: ; 0x02230EA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D390
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02230EA8

	thumb_func_start ov12_02230EC0
ov12_02230EC0: ; 0x02230EC0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r4, #4
	bl ov12_02225EB8
	cmp r0, #1
	bne _02230F04
	add r0, r4, #4
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02230EF6
	ldr r1, [sp, #8]
	mov r0, #0
	bl sub_020E1A9C
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r4, #0]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	b _02230F36
_02230EF6:
	mov r2, #0xfe
	ldr r0, [r4, #0]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	b _02230F36
_02230F04:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ble _02230F30
	sub r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #8
	str r0, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [r4, #0x34]
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	add r0, r4, #4
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	b _02230F36
_02230F30:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_02230F36:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov12_02230EC0

	thumb_func_start ov12_02230F3C
ov12_02230F3C: ; 0x02230F3C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _02231008
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230F54: ; jump table
	.short _02230F5C - _02230F54 - 2 ; case 0
	.short _02230F8E - _02230F54 - 2 ; case 1
	.short _02230FAC - _02230F54 - 2 ; case 2
	.short _02230FCC - _02230F54 - 2 ; case 3
_02230F5C:
	ldr r0, [r4, #0x10]
	cmp r0, #4
	blt _02230F86
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r4, #0
	mov r0, #0x38
	add r2, #0x44
	mul r0, r1
	add r0, r2, r0
	bl ov12_02230EA8
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #4
	blt _02230F86
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_02230F86:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02231008
_02230F8E:
	mov r1, #0x1c
	mov r2, #0x1e
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x18]
	add r0, #0x20
	bl ov12_0222619C
	cmp r0, #0
	bne _02231008
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231008
_02230FAC:
	add r6, r4, #0
	mov r5, #0
	add r6, #0x44
_02230FB2:
	add r0, r6, #0
	bl ov12_02230EC0
	add r5, r5, #1
	add r6, #0x38
	cmp r5, #4
	blt _02230FB2
	cmp r0, #0
	bne _02231008
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231008
_02230FCC:
	mov r2, #0x1c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x1e
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02007DEC
	add r5, r4, #0
	mov r6, #0
	add r5, #0x44
_02230FEA:
	add r0, r5, #0
	bl ov12_02230E9C
	add r6, r6, #1
	add r5, #0x38
	cmp r6, #4
	blt _02230FEA
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02231008:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02230F3C

	thumb_func_start ov12_02231010
ov12_02231010: ; 0x02231010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r1, [sp, #4]
	mov r1, #0x4a
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl ov12_02235E50
	add r7, r0, #0
	ldr r0, [sp, #4]
	str r4, [r7, #0]
	str r0, [r7, #4]
	ldr r0, [sp, #8]
	str r0, [r7, #8]
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r7, #0]
	bl ov12_022232FC
	str r0, [r7, #0x18]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r7, #0x1c]
	ldr r0, [r7, #0x18]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r7, #0x1e]
	add r0, r7, #0
	mov r3, #1
	add r0, #0x20
	mov r1, #4
	mov r2, #0
	str r3, [sp]
	bl ov12_02226108
	mov r0, #0x1e
	ldrsh r4, [r7, r0]
	ldr r1, [r7, #0]
	add r0, sp, #0x14
	add r4, #0x10
	mov r5, #0
	bl ov12_0222329C
	add r0, r5, #0
	add r6, r7, #0
	str r0, [sp, #0x10]
	add r6, #0x44
_0223107A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02231094
	str r5, [sp]
	mov r2, #0x1c
	lsl r3, r4, #0x10
	ldrsh r2, [r7, r2]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	asr r3, r3, #0x10
	bl ov12_02230E24
	b _022310B0
_02231094:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x14
	bl sub_0200CE6C
	lsl r3, r4, #0x10
	add r1, r0, #0
	str r5, [sp]
	mov r2, #0x1c
	ldrsh r2, [r7, r2]
	add r0, r6, #0
	asr r3, r3, #0x10
	bl ov12_02230E24
_022310B0:
	mov r0, #1
	eor r5, r0
	ldr r0, [sp, #0x10]
	sub r4, #0xa
	add r0, r0, #1
	add r6, #0x38
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0223107A
	ldr r0, [r7, #0]
	ldr r1, _022310D0 ; =ov12_02230F3C
	add r2, r7, #0
	bl ov12_022201E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022310D0: .word ov12_02230F3C
	thumb_func_end ov12_02231010

	thumb_func_start ov12_022310D4
ov12_022310D4: ; 0x022310D4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #6
	bls _022310E4
	b _02231296
_022310E4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022310F0: ; jump table
	.short _022310FE - _022310F0 - 2 ; case 0
	.short _02231140 - _022310F0 - 2 ; case 1
	.short _022311A0 - _022310F0 - 2 ; case 2
	.short _022311E0 - _022310F0 - 2 ; case 3
	.short _02231200 - _022310F0 - 2 ; case 4
	.short _0223123E - _022310F0 - 2 ; case 5
	.short _0223127E - _022310F0 - 2 ; case 6
_022310FE:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _02231120
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02231120:
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0x18
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x18
	add r3, r2, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0xc]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02231140:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _02231162
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02231162:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	mov r1, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r4, #0x3c]
	add r0, r4, #0
	lsl r2, r2, #5
	neg r2, r2
	lsl r2, r2, #0x10
	add r0, #0x18
	asr r2, r2, #0x10
	add r3, r1, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0xc]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022311A0:
	add r0, r4, #0
	ldr r2, [r4, #0x48]
	add r0, #0x4c
	add r1, #0x70
	bl ov12_02225D2C
	cmp r0, #0
	bne _02231296
	mov r0, #0x46
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0x44
	str r0, [sp]
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	mov r3, #0x14
	add r1, #0x70
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r0, _022312A0 ; =0xFFFE0000
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x4c
	bl ov12_02225C98
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_022311E0:
	add r0, r4, #0
	ldr r2, [r4, #0x48]
	add r0, #0x4c
	add r1, #0x70
	bl ov12_02225D2C
	cmp r0, #0
	bne _02231296
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_02231200:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _02231220
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	b _02231296
_02231220:
	mov r2, #0
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r1, #0x18
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x18
	add r3, r2, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_0223123E:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _0223125E
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	b _02231296
_0223125E:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_0223127E:
	ldr r0, [r4, #0x48]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02231296:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022312A0: .word 0xFFFE0000
	thumb_func_end ov12_022310D4

	thumb_func_start ov12_022312A4
ov12_022312A4: ; 0x022312A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0x94
	add r5, r0, #0
	str r2, [sp, #0x10]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp, #0x10]
	str r7, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x16]
	mov r1, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r4, #0x3c]
	add r0, r4, #0
	lsl r2, r2, #4
	neg r2, r2
	lsl r2, r2, #0x10
	add r0, #0x18
	asr r2, r2, #0x10
	add r3, r1, #0
	bl ov12_02225BC8
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x40]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x44
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #1
	str r6, [r4, #0x48]
	bl sub_0200D390
	ldr r0, [r4, #0x48]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl sub_0200D460
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0x14
	str r0, [sp]
	mov r0, #0x46
	ldrsh r0, [r4, r0]
	mov r3, #0x44
	add r1, #0x70
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x4c
	bl ov12_02225C98
	ldr r0, [r4, #0]
	ldr r1, _0223138C ; =ov12_022310D4
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223138C: .word ov12_022310D4
	thumb_func_end ov12_022312A4

	thumb_func_start ov12_02231390
ov12_02231390: ; 0x02231390
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _0223143A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022313AA: ; jump table
	.short _022313B2 - _022313AA - 2 ; case 0
	.short _022313DE - _022313AA - 2 ; case 1
	.short _02231402 - _022313AA - 2 ; case 2
	.short _02231428 - _022313AA - 2 ; case 3
_022313B2:
	mov r2, #0x1a
	ldrsh r3, [r4, r2]
	mov r2, #0x68
	ldrsh r2, [r4, r2]
	mov r1, #0x18
	ldrsh r1, [r4, r1]
	sub r2, r3, r2
	add r0, r4, #0
	lsl r2, r2, #0x10
	ldr r3, [r4, #0x14]
	add r0, #0x1c
	asr r2, r2, #0x10
	bl ov12_02225B78
	cmp r0, #0
	bne _0223143A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x10
	str r0, [r4, #0xc]
	b _0223143A
_022313DE:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bpl _0223143A
	ldr r0, [r4, #8]
	mov r2, #0x10
	add r0, r0, #1
	str r0, [r4, #8]
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x40
	add r3, r2, #0
	bl ov12_02226424
	b _0223143A
_02231402:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226454
	cmp r0, #0
	beq _0223143A
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223143A
_02231428:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
_0223143A:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_02231390

	thumb_func_start ov12_02231444
ov12_02231444: ; 0x02231444
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x6c
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x68
	strh r0, [r1]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	mov r1, #0
	add r0, #8
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #0]
	bl ov12_022202C0
	str r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	mov r2, #0x10
	bl ov12_022263A4
	ldr r0, [r4, #0]
	mov r1, #0x10
	mov r2, #0
	bl ov12_02235780
	mov r1, #0x10
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x40
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #0x28]
	add r2, r4, #0
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x28]
	ldr r0, [r4, #0]
	ldr r1, _02231504 ; =ov12_02231390
	bl ov12_022201E8
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231504: .word ov12_02231390
	thumb_func_end ov12_02231444

	thumb_func_start ov12_02231508
ov12_02231508: ; 0x02231508
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	mov r4, #0
	cmp r0, #0
	beq _0223151E
	cmp r0, #1
	beq _02231552
	cmp r0, #2
	beq _0223157E
	b _02231580
_0223151E:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #0
	beq _02231538
	mov r2, #0x16
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	b _02231580
_02231538:
	ldr r0, [r5, #0x38]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r5, #0x38]
	mov r0, #0xc
	add r5, #0x14
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xf
	add r3, r2, #0
	bl ov12_02225E68
	b _02231580
_02231552:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _0223156C
	mov r2, #0x16
	ldrsh r2, [r5, r2]
	mov r1, #0xd
	bl sub_02007DEC
	b _02231580
_0223156C:
	mov r1, #0xd
	add r2, r1, #0
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r5, #0x38]
	add r0, r0, #1
	str r0, [r5, #0x38]
	b _02231580
_0223157E:
	mov r4, #1
_02231580:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231508

	thumb_func_start ov12_02231584
ov12_02231584: ; 0x02231584
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	mov r4, #0
	cmp r0, #0
	beq _0223159C
	cmp r0, #1
	beq _022315E2
	cmp r0, #2
	beq _022315FE
	b _02231600
_0223159C:
	add r0, r5, #0
	ldr r1, [r5, #0x3c]
	add r0, #0x44
	bl ov12_022260A8
	add r0, r5, #0
	add r0, #0x68
	bl ov12_02225C14
	cmp r0, #0
	beq _022315C6
	mov r2, #0xb4
	mov r3, #0xb6
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r5, #0x3c]
	add r0, #0x68
	bl ov12_022259DC
	b _02231600
_022315C6:
	ldr r0, [r5, #0x40]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r5, #0x40]
	str r1, [sp]
	mov r0, #8
	add r5, #0x8c
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xe
	bl ov12_02226424
	b _02231600
_022315E2:
	add r0, r5, #0
	add r0, #0x8c
	bl ov12_02226454
	cmp r0, #0
	beq _02231600
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x40]
	add r0, r0, #1
	str r0, [r5, #0x40]
	b _02231600
_022315FE:
	mov r4, #1
_02231600:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02231584

	thumb_func_start ov12_02231608
ov12_02231608: ; 0x02231608
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223161A
	cmp r0, #1
	beq _02231632
	b _02231648
_0223161A:
	add r0, r4, #0
	bl ov12_02231508
	add r0, r4, #0
	bl ov12_02231584
	cmp r0, #0
	beq _02231648
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231648
_02231632:
	ldr r0, [r4, #0x3c]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02231648:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231608

	thumb_func_start ov12_02231650
ov12_02231650: ; 0x02231650
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0xb8
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	str r5, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222598C
	add r5, r0, #0
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x10]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x14
	add r2, r1, #0
	mov r3, #0xf
	bl ov12_02225E68
	ldr r0, [sp, #8]
	mov r1, #1
	str r0, [r4, #0x3c]
	bl sub_0200D390
	ldr r0, [r4, #0x3c]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x3c]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [sp, #0xc]
	lsl r0, r0, #5
	add r1, r7, r0
	add r0, r4, #0
	add r0, #0xb4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xb6
	strh r6, [r0]
	cmp r5, #0
	bge _02231706
	mov r1, #7
	b _02231708
_02231706:
	mov r1, #0x17
_02231708:
	mvn r1, r1
	add r0, r1, #0
	mul r0, r5
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r1, #0
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x68
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x44
	mov r1, #5
	mov r2, #0xa
	mov r3, #0xc
	bl ov12_02225E68
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, _02231758 ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x1f
	bl sub_020BF55C
	ldr r0, [r4, #0]
	ldr r1, _0223175C ; =ov12_02231608
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231758: .word 0x04000050
_0223175C: .word ov12_02231608
	thumb_func_end ov12_02231650

	thumb_func_start ov12_02231760
ov12_02231760: ; 0x02231760
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x68]
	cmp r1, #5
	bhi _02231814
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02231776: ; jump table
	.short _02231782 - _02231776 - 2 ; case 0
	.short _02231798 - _02231776 - 2 ; case 1
	.short _022317B2 - _02231776 - 2 ; case 2
	.short _022317CC - _02231776 - 2 ; case 3
	.short _022317E6 - _02231776 - 2 ; case 4
	.short _022317FC - _02231776 - 2 ; case 5
_02231782:
	mov r2, #0x28
	str r2, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231798:
	mov r1, #0x4f
	mvn r1, r1
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317B2:
	mov r1, #0x50
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r2, r1, #0
	add r0, #0x18
	sub r2, #0x50
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317CC:
	mov r1, #0x4f
	mvn r1, r1
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317E6:
	mov r2, #0x50
	str r2, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317FC:
	mov r2, #0x27
	mvn r2, r2
	str r2, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231814:
	bl sub_02022974
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_02231760

	thumb_func_start ov12_0223181C
ov12_0223181C: ; 0x0223181C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0223182C
	b _02231940
_0223182C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231838: ; jump table
	.short _02231842 - _02231838 - 2 ; case 0
	.short _0223185E - _02231838 - 2 ; case 1
	.short _022318E0 - _02231838 - 2 ; case 2
	.short _02231916 - _02231838 - 2 ; case 3
	.short _02231928 - _02231838 - 2 ; case 4
_02231842:
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	cmp r0, #4
	ble _02231940
	add r0, r4, #0
	bl ov12_02231760
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x6c]
	b _02231940
_0223185E:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _0223187E
	mov r2, #0x64
	mov r3, #0x66
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022259DC
	b _02231940
_0223187E:
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #6
	bge _022318AE
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x64
	strh r1, [r0]
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	b _02231940
_022318AE:
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	bl sub_0200D810
	mov r1, #0x10
	add r0, r4, #0
	mov r2, #0
	str r1, [sp]
	add r0, #0x3c
	add r3, r2, #0
	str r1, [sp, #4]
	bl ov12_02226424
	ldr r0, _0223194C ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	mov r2, #0xa
	add r3, r1, #0
	bl sub_020086FC
	b _02231940
_022318E0:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02226454
	cmp r0, #0
	beq _022318F4
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
_022318F4:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _02231940
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, _0223194C ; =0x00007FFF
	mov r1, #0xa
	str r0, [sp]
	ldr r0, [r4, #0x10]
	add r3, r2, #0
	bl sub_020086FC
	b _02231940
_02231916:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _02231940
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231940
_02231928:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02231940:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223194C: .word 0x00007FFF
	thumb_func_end ov12_0223181C

	thumb_func_start ov12_02231950
ov12_02231950: ; 0x02231950
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x70
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	str r6, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D460
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x64
	add r2, #0x66
	bl sub_0200D550
	ldr r0, [r4, #0]
	ldr r1, _022319A8 ; =ov12_0223181C
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022319A8: .word ov12_0223181C
	thumb_func_end ov12_02231950

	thumb_func_start ov12_022319AC
ov12_022319AC: ; 0x022319AC
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x50]
	cmp r1, #3
	bhi _02231A2E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022319C2: ; jump table
	.short _022319CA - _022319C2 - 2 ; case 0
	.short _022319E0 - _022319C2 - 2 ; case 1
	.short _022319FA - _022319C2 - 2 ; case 2
	.short _02231A14 - _022319C2 - 2 ; case 3
_022319CA:
	mov r2, #0x50
	str r2, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x28
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022319E0:
	mov r1, #0x4f
	mvn r1, r1
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022319FA:
	mov r1, #0x50
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r2, r1, #0
	add r0, #0x28
	sub r2, #0x50
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231A14:
	mov r1, #0x27
	mvn r1, r1
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x28
	mov r2, #0x28
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231A2E:
	bl sub_02022974
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022319AC

	thumb_func_start ov12_02231A38
ov12_02231A38: ; 0x02231A38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #6
	bhi _02231B42
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231A52: ; jump table
	.short _02231A60 - _02231A52 - 2 ; case 0
	.short _02231A7C - _02231A52 - 2 ; case 1
	.short _02231AE8 - _02231A52 - 2 ; case 2
	.short _02231B44 - _02231A52 - 2 ; case 3
	.short _02231BA6 - _02231A52 - 2 ; case 4
	.short _02231BC6 - _02231A52 - 2 ; case 5
	.short _02231BF4 - _02231A52 - 2 ; case 6
_02231A60:
	ldr r0, [r4, #0x54]
	add r0, r0, #1
	str r0, [r4, #0x54]
	cmp r0, #1
	ble _02231B42
	add r0, r4, #0
	bl ov12_022319AC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x54]
	b _02231C0C
_02231A7C:
	add r0, r4, #0
	add r0, #0x28
	bl ov12_02225C14
	cmp r0, #0
	beq _02231A9C
	mov r2, #0x4c
	mov r3, #0x4e
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x24]
	add r0, #0x28
	bl ov12_022259DC
	b _02231C0C
_02231A9C:
	ldr r0, [r4, #0x50]
	add r0, r0, #1
	str r0, [r4, #0x50]
	cmp r0, #4
	bge _02231ACC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x4c
	ldrsh r1, [r4, r0]
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	mov r0, #0x4e
	ldrsh r1, [r4, r0]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	b _02231C0C
_02231ACC:
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x24]
	bl sub_0200D364
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200D390
	b _02231C0C
_02231AE8:
	ldr r0, [r4, #0x54]
	sub r0, r0, #1
	str r0, [r4, #0x54]
	bpl _02231B42
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02231C18 ; =0x0000FFFF
	mov r1, #1
	lsl r2, r2, #0x10
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x10
	sub r3, #9
	bl sub_02003178
	ldr r7, _02231C18 ; =0x0000FFFF
	mov r6, #0
	add r5, r4, #0
_02231B28:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02231B3A
	mov r1, #0xe
	mov r2, #0x10
	mov r3, #0
	str r7, [sp]
	bl sub_020086FC
_02231B3A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02231B28
_02231B42:
	b _02231C0C
_02231B44:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02231C0C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02231C18 ; =0x0000FFFF
	mov r1, #1
	lsl r2, r2, #0x10
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x10
	sub r3, #9
	bl sub_02003178
	ldr r7, _02231C18 ; =0x0000FFFF
	mov r6, #0
	add r5, r4, #0
_02231B8A:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02231B9C
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	str r7, [sp]
	bl sub_020086FC
_02231B9C:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02231B8A
	b _02231C0C
_02231BA6:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02231C0C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #0x54]
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0x58]
	b _02231C0C
_02231BC6:
	ldr r0, [r4, #0x54]
	sub r0, r0, #1
	str r0, [r4, #0x54]
	bpl _02231C0C
	mov r0, #4
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x50]
	sub r0, r0, #1
	str r0, [r4, #0x50]
	bpl _02231BE2
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231C0C
_02231BE2:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x58]
	bl sub_0200D3F4
	ldr r1, [r4, #0x58]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0x58]
	b _02231C0C
_02231BF4:
	ldr r0, [r4, #0x24]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02231C0C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02231C18: .word 0x0000FFFF
	thumb_func_end ov12_02231A38

	thumb_func_start ov12_02231C1C
ov12_02231C1C: ; 0x02231C1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x5c
	add r4, r0, #0
	str r2, [sp, #4]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp, #4]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #0x10]
	mov r4, #0
	add r5, r6, #0
_02231C4C:
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl ov12_022232FC
	str r0, [r5, #0x14]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02231C4C
	str r7, [r6, #0x24]
	add r0, r7, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r6, #0x24]
	mov r1, #1
	bl sub_0200D460
	add r1, r6, #0
	add r2, r6, #0
	ldr r0, [r6, #0x24]
	add r1, #0x4c
	add r2, #0x4e
	bl sub_0200D550
	mov r1, #0x4c
	ldrsh r2, [r6, r1]
	add r0, r6, #0
	add r0, #0x4c
	sub r2, #0x28
	strh r2, [r0]
	mov r2, #0x4e
	ldrsh r3, [r6, r2]
	add r0, r6, #0
	add r0, #0x4e
	sub r3, #0x28
	strh r3, [r0]
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r6, #0x24]
	bl sub_0200D4C4
	ldr r0, [r6, #0x24]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0xf
	mvn r0, r0
	str r0, [r6, #0x54]
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, _02231CCC ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x1f
	bl sub_020BF55C
	ldr r0, [r6, #0]
	ldr r1, _02231CD0 ; =ov12_02231A38
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02231CCC: .word 0x04000050
_02231CD0: .word ov12_02231A38
	thumb_func_end ov12_02231C1C

	thumb_func_start ov12_02231CD4
ov12_02231CD4: ; 0x02231CD4
	push {r3, r4, r5, lr}
	ldr r2, _02231D14 ; =0x00000AAA
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0x10
	mov r1, #0
	mov r3, #3
	bl ov12_02225D78
	cmp r5, #0
	beq _02231D00
	mov r0, #0
	ldr r1, [r4, #0x18]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	mov r1, #0xa
	mov r2, #0x10
	bl sub_02007DEC
	b _02231D0C
_02231D00:
	mov r1, #0xa
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x1a
	bl sub_02007DEC
_02231D0C:
	mov r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231D14: .word 0x00000AAA
	thumb_func_end ov12_02231CD4

	thumb_func_start ov12_02231D18
ov12_02231D18: ; 0x02231D18
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r5, #0
	cmp r0, #3
	bhi _02231E22
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231D32: ; jump table
	.short _02231D3A - _02231D32 - 2 ; case 0
	.short _02231D7A - _02231D32 - 2 ; case 1
	.short _02231DD6 - _02231D32 - 2 ; case 2
	.short _02231E20 - _02231D32 - 2 ; case 3
_02231D3A:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225DC8
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x10]
	mov r1, #9
	bl sub_02007DEC
	ldr r0, [r4, #0x50]
	sub r0, r0, #1
	str r0, [r4, #0x50]
	bpl _02231E22
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r0, r3, #2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #2
	add r4, #0x24
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_02225BC8
	b _02231E22
_02231D7A:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225DC8
	cmp r0, #0
	beq _02231D90
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x10]
	mov r1, #9
	bl sub_02007DEC
_02231D90:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x24
	bl ov12_02225C74
	cmp r0, #0
	bne _02231E22
	ldr r0, [r4, #0x4c]
	mov r2, #0
	add r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x10
	asr r1, r1, #0x10
	mov r3, #3
	bl ov12_02225D78
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	mov r0, #2
	add r4, #0x24
	str r3, [sp]
	add r3, r3, #2
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225BC8
	b _02231E22
_02231DD6:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x24
	bl ov12_02225C74
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225DC8
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _02231DF8
	ldr r2, [r4, #0x10]
	mov r1, #9
	bl sub_02007DEC
	b _02231E22
_02231DF8:
	mov r2, #0xc
	ldrsh r2, [r4, r2]
	add r1, r5, #0
	bl sub_02007DEC
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #9
	add r2, r5, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _02231E22
_02231E20:
	mov r5, #1
_02231E22:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231D18

	thumb_func_start ov12_02231E28
ov12_02231E28: ; 0x02231E28
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02231E3A
	cmp r0, #1
	beq _02231E6C
	pop {r4, pc}
_02231E3A:
	add r0, r4, #0
	bl ov12_02231D18
	cmp r0, #0
	beq _02231E7A
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	cmp r0, #4
	bge _02231E64
	ldr r1, [r4, #0x54]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	str r1, [r4, #0x54]
	bl ov12_02231CD4
	add r0, r4, #0
	bl ov12_02231D18
	pop {r4, pc}
_02231E64:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02231E6C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02231E7A:
	pop {r4, pc}
	thumb_func_end ov12_02231E28

	thumb_func_start ov12_02231E7C
ov12_02231E7C: ; 0x02231E7C
	push {r4, r5, r6, lr}
	mov r1, #0x58
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02225964
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	bne _02231EC8
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	b _02231EE8
_02231EC8:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
_02231EE8:
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x32
	bl sub_02007DEC
	cmp r6, #1
	bne _02231EFC
	mov r0, #0
	b _02231EFE
_02231EFC:
	mov r0, #1
_02231EFE:
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x54]
	add r0, r4, #0
	bl ov12_02231CD4
	ldr r0, [r4, #4]
	ldr r1, _02231F14 ; =ov12_02231E28
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231F14: .word ov12_02231E28
	thumb_func_end ov12_02231E7C

	thumb_func_start ov12_02231F18
ov12_02231F18: ; 0x02231F18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	mov r5, #0
	cmp r0, #3
	bhi _02231FD4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231F30: ; jump table
	.short _02231F38 - _02231F30 - 2 ; case 0
	.short _02231F68 - _02231F30 - 2 ; case 1
	.short _02231F8A - _02231F30 - 2 ; case 2
	.short _02231FBA - _02231F30 - 2 ; case 3
_02231F38:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260C8
	cmp r0, #0
	beq _02231F60
	add r0, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02226024
	b _02231FD4
_02231F60:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	b _02231FD4
_02231F68:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bpl _02231FD4
	ldr r0, [r4, #0x38]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r4, #0x38]
	mov r0, #8
	add r4, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl ov12_02225E68
	b _02231FD4
_02231F8A:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260C8
	cmp r0, #0
	beq _02231FB2
	add r0, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02226024
	b _02231FD4
_02231FB2:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	b _02231FD4
_02231FBA:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl sub_02007DEC
	mov r5, #1
_02231FD4:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231F18

	thumb_func_start ov12_02231FD8
ov12_02231FD8: ; 0x02231FD8
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02231FEE
	cmp r0, #1
	beq _02232004
	cmp r0, #2
	beq _02232014
	pop {r4, pc}
_02231FEE:
	add r0, r4, #0
	bl ov12_02231F18
	cmp r0, #0
	beq _02232022
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x10
	str r0, [r4, #8]
	pop {r4, pc}
_02232004:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _02232022
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_02232014:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02232022:
	pop {r4, pc}
	thumb_func_end ov12_02231FD8

	thumb_func_start ov12_02232024
ov12_02232024: ; 0x02232024
	push {r3, r4, r5, lr}
	mov r1, #0x44
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x10
	add r2, r1, #0
	mov r3, #0xf
	bl ov12_02225E68
	mov r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	str r0, [r4, #0x40]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0]
	ldr r1, _02232080 ; =ov12_02231FD8
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02232080: .word ov12_02231FD8
	thumb_func_end ov12_02232024

	thumb_func_start ov12_02232084
ov12_02232084: ; 0x02232084
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r1, #0x64
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r0, [r5, #0x78]
	mov r1, #0x64
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, [r5, #0x70]
	mov r1, #0x64
	bl sub_020E1F6C
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r4, #0x10
	lsl r3, r6, #0x10
	add r0, #0x18
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r0, [r5, #0]
	mov r1, #0x10
	mov r2, #0
	bl ov12_02235780
	ldr r0, [r5, #0x70]
	mov r1, #0x64
	bl sub_020E1F6C
	mov r1, #6
	str r1, [sp]
	lsl r0, r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0
	bl ov12_02226424
	mov r0, #0
	str r0, [r5, #0x64]
	str r0, [r5, #0x68]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02232084

	thumb_func_start ov12_022320EC
ov12_022320EC: ; 0x022320EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	mov r5, #0
	cmp r0, #3
	bhi _022321C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232104: ; jump table
	.short _0223210C - _02232104 - 2 ; case 0
	.short _02232152 - _02232104 - 2 ; case 1
	.short _022321A8 - _02232104 - 2 ; case 2
	.short _022321BE - _02232104 - 2 ; case 3
_0223210C:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022260A8
	cmp r0, #0
	bne _022321C0
	ldr r0, [r4, #0x78]
	mov r1, #0x64
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, [r4, #0x74]
	mov r1, #0x64
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r0, [r4, #0x70]
	mov r1, #0x64
	bl sub_020E1F6C
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r6, #0x10
	lsl r3, r7, #0x10
	add r0, #0x18
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	b _022321C0
_02232152:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022260A8
	cmp r0, #0
	bne _022321C0
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #2
	bge _022321A0
	add r0, r5, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x74]
	mov r1, #0x64
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, [r4, #0x78]
	mov r1, #0x64
	bl sub_020E1F6C
	add r7, r0, #0
	ldr r0, [r4, #0x70]
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r1, r6, #0x10
	lsl r3, r7, #0x10
	add r4, #0x18
	str r0, [sp]
	add r0, r4, #0
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	b _022321C0
_022321A0:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	b _022321C0
_022321A8:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02226454
	cmp r0, #0
	beq _022321C0
	ldr r0, [r4, #0x64]
	mov r5, #1
	add r0, r0, #1
	str r0, [r4, #0x64]
	b _022321C0
_022321BE:
	mov r5, #1
_022321C0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022320EC

	thumb_func_start ov12_022321C4
ov12_022321C4: ; 0x022321C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x7c]
	mov r4, #0
	cmp r1, #0
	beq _022321DA
	cmp r1, #1
	beq _022321EC
	cmp r1, #2
	beq _02232236
	b _02232238
_022321DA:
	bl ov12_02232084
	add r0, r5, #0
	bl ov12_022320EC
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	b _02232238
_022321EC:
	bl ov12_022320EC
	cmp r0, #0
	beq _02232238
	ldr r0, [r5, #0x6c]
	sub r0, r0, #1
	str r0, [r5, #0x6c]
	bmi _0223222C
	ldr r0, [r5, #0x70]
	mov r1, #3
	bl sub_020E1F6C
	ldr r1, [r5, #0x70]
	sub r0, r1, r0
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x74]
	mov r1, #3
	bl sub_020E1F6C
	ldr r1, [r5, #0x74]
	sub r0, r1, r0
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	mov r1, #3
	bl sub_020E1F6C
	ldr r1, [r5, #0x78]
	sub r0, r1, r0
	str r0, [r5, #0x78]
	add r0, r4, #0
	str r0, [r5, #0x7c]
	b _02232238
_0223222C:
	ldr r0, [r5, #0x7c]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0x7c]
	b _02232238
_02232236:
	mov r4, #1
_02232238:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022321C4

	thumb_func_start ov12_0223223C
ov12_0223223C: ; 0x0223223C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0223224C
	b _0223236C
_0223224C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232258: ; jump table
	.short _02232262 - _02232258 - 2 ; case 0
	.short _022322A8 - _02232258 - 2 ; case 1
	.short _02232308 - _02232258 - 2 ; case 2
	.short _02232338 - _02232258 - 2 ; case 3
	.short _02232354 - _02232258 - 2 ; case 4
_02232262:
	add r0, r4, #0
	bl ov12_022321C4
	cmp r0, #0
	beq _0223236C
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x1e
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	bl sub_0200D364
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D390
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	bl sub_0200D6E8
	mov r1, #0
	mov r2, #0x10
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x3c
	add r3, r2, #0
	bl ov12_02226424
	b _0223236C
_022322A8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022322C6
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x10]
	b _022322CC
_022322C6:
	ble _022322CC
	sub r0, r0, #1
	str r0, [r4, #0x10]
_022322CC:
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	bne _022322F6
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _022322F6
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #1
	mvn r0, r0
	str r0, [r4, #0x10]
_022322F6:
	ldr r0, [r4, #0x14]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0223236C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223236C
_02232308:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223236C
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r2, #0
	bl ov12_02235780
	mov r1, #0x10
	mov r2, #0
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x3c
	add r3, r2, #0
	bl ov12_02226424
	b _0223236C
_02232338:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02226454
	cmp r0, #0
	beq _0223236C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223236C
_02232354:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_0223236C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223223C

	thumb_func_start ov12_02232378
ov12_02232378: ; 0x02232378
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x80
	add r6, r0, #0
	str r2, [sp]
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	str r5, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl sub_0200D3CC
	mov r0, #3
	str r0, [r4, #0x6c]
	mov r0, #0x19
	lsl r0, r0, #4
	str r0, [r4, #0x70]
	ldr r0, _022323DC ; =0x000005DC
	ldr r1, _022323E0 ; =ov12_0223223C
	str r0, [r4, #0x74]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [r4, #0x78]
	ldr r0, [r4, #0]
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022323DC: .word 0x000005DC
_022323E0: .word ov12_0223223C
	thumb_func_end ov12_02232378

	thumb_func_start ov12_022323E4
ov12_022323E4: ; 0x022323E4
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x34]
	cmp r1, #3
	bhi _0223242C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022323FA: ; jump table
	.short _02232402 - _022323FA - 2 ; case 0
	.short _0223241A - _022323FA - 2 ; case 1
	.short _02232402 - _022323FA - 2 ; case 2
	.short _0223241A - _022323FA - 2 ; case 3
_02232402:
	mov r1, #0x20
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_0223241A:
	mov r1, #0
	str r1, [sp]
	mov r2, #6
	str r2, [sp, #4]
	add r0, #0x10
	add r2, r1, #0
	mov r3, #0x20
	bl ov12_02225BC8
_0223242C:
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_022323E4

	thumb_func_start ov12_02232430
ov12_02232430: ; 0x02232430
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02232446
	cmp r0, #1
	beq _02232454
	cmp r0, #2
	beq _0223248C
	pop {r4, pc}
_02232446:
	add r0, r4, #0
	bl ov12_022323E4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232454:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	beq _02232474
	mov r2, #0xc
	mov r3, #0xe
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #8]
	add r0, #0x10
	bl ov12_02225A18
	pop {r4, pc}
_02232474:
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #4
	bge _02232484
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
_02232484:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0223248C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02232430

	thumb_func_start ov12_0223249C
ov12_0223249C: ; 0x0223249C
	push {r3, r4, r5, lr}
	mov r1, #0x38
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0xe]
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r1, _022324DC ; =ov12_02232430
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022324DC: .word ov12_02232430
	thumb_func_end ov12_0223249C

	thumb_func_start ov12_022324E0
ov12_022324E0: ; 0x022324E0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _02232542
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022324FA: ; jump table
	.short _02232508 - _022324FA - 2 ; case 0
	.short _02232526 - _022324FA - 2 ; case 1
	.short _0223259E - _022324FA - 2 ; case 2
	.short _022325E2 - _022324FA - 2 ; case 3
	.short _02232620 - _022324FA - 2 ; case 4
	.short _02232668 - _022324FA - 2 ; case 5
	.short _02232698 - _022324FA - 2 ; case 6
_02232508:
	add r0, r4, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0x40
	bl ov12_022263A4
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #8]
	add sp, #8
	mul r0, r1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232526:
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	mov r1, #0x10
	add r0, r4, #0
	add r2, #8
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0xc]
	add r0, #0x14
	asr r2, r2, #0x10
	bl ov12_02225BA0
	cmp r0, #0
	beq _02232544
_02232542:
	b _022326A6
_02232544:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r3, #0
	mov r0, #2
	add r2, r1, #0
	str r3, [sp]
	add r2, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x14
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #8]
	mul r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225C14
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_0223259E:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225C14
	cmp r0, #0
	beq _022325BA
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_022325BA:
	mov r0, #0x3c
	ldrsh r1, [r4, r0]
	mov r3, #0
	mov r0, #2
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #8]
	add r0, r4, #0
	lsl r2, r2, #5
	add r2, r1, r2
	lsl r2, r2, #0x10
	add r0, #0x40
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022325E2:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	beq _022325FE
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_022325FE:
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0x14
	mov r2, #0x10
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x14
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232620:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225C14
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _0223263C
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_0223263C:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0x40
	mov r2, #0x3c
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x40
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232668:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	ldr r0, [r4, #0x38]
	beq _02232684
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_02232684:
	mov r2, #0x3c
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232698:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022326A6:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022324E0

	thumb_func_start ov12_022326AC
ov12_022326AC: ; 0x022326AC
	push {r3, r4, r5, lr}
	mov r1, #0x64
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02225964
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x12]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x38]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x3c]
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #4]
	ldr r1, _0223271C ; =ov12_022324E0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0223271C: .word ov12_022324E0
	thumb_func_end ov12_022326AC

	thumb_func_start ov12_02232720
ov12_02232720: ; 0x02232720
	push {lr}
	sub sp, #0xc
	mov r1, #0
	str r1, [r0, #0x40]
	mov r1, #8
	str r1, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	add r0, #0x1c
	mov r2, #9
	add r3, r1, #0
	bl ov12_02225EF0
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov12_02232720

	thumb_func_start ov12_02232744
ov12_02232744: ; 0x02232744
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r5, #0
	cmp r0, #3
	bhi _02232836
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223275E: ; jump table
	.short _02232766 - _0223275E - 2 ; case 0
	.short _022327AC - _0223275E - 2 ; case 1
	.short _022327EE - _0223275E - 2 ; case 2
	.short _02232834 - _0223275E - 2 ; case 3
_02232766:
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x1c
	bl ov12_022260E8
	cmp r0, #0
	beq _0223278A
	add r0, r5, #0
	str r0, [sp]
	mov r1, #0x44
	mov r2, #0x46
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x30]
	bl ov12_02226024
	b _02232836
_0223278A:
	ldr r0, [r4, #0x40]
	mov r1, #9
	add r0, r0, #1
	str r0, [r4, #0x40]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	add r4, #0x1c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0xb
	mov r3, #8
	bl ov12_02225EF0
	b _02232836
_022327AC:
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x1c
	bl ov12_022260E8
	cmp r0, #0
	beq _022327D0
	add r0, r5, #0
	str r0, [sp]
	mov r1, #0x44
	mov r2, #0x46
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x30]
	bl ov12_02226024
	b _02232836
_022327D0:
	ldr r0, [r4, #0x40]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r4, #0x40]
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #2
	add r4, #0x1c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #0xf
	bl ov12_02225EF0
	b _02232836
_022327EE:
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x1c
	bl ov12_022260E8
	cmp r0, #0
	beq _02232812
	add r0, r5, #0
	str r0, [sp]
	mov r1, #0x44
	mov r2, #0x46
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x30]
	bl ov12_02226024
	b _02232836
_02232812:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #0x40]
	mov r5, #1
	add r0, r0, #1
	str r0, [r4, #0x40]
	b _02232836
_02232834:
	mov r5, #1
_02232836:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02232744

	thumb_func_start ov12_0223283C
ov12_0223283C: ; 0x0223283C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0
	str r2, [r1, #0]
	add r5, r0, #0
	mov r1, #0x64
	bl sub_0200D474
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D460
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D3F4
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D390
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D3A4
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D364
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3CC
	mov r1, #0x37
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0200D34C
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223283C

	thumb_func_start ov12_02232888
ov12_02232888: ; 0x02232888
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	mov r4, #0
	cmp r1, #0
	beq _0223289A
	cmp r1, #1
	beq _022328AC
	b _022328B0
_0223289A:
	bl sub_0200D3B8
	cmp r0, #0
	bne _022328B2
	ldr r0, [r5, #0]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0]
	b _022328B2
_022328AC:
	mov r4, #1
	b _022328B2
_022328B0:
	mov r4, #1
_022328B2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02232888

	thumb_func_start ov12_022328B8
ov12_022328B8: ; 0x022328B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #5
	bls _022328C6
	b _022329D8
_022328C6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022328D2: ; jump table
	.short _022328DE - _022328D2 - 2 ; case 0
	.short _02232902 - _022328D2 - 2 ; case 1
	.short _0223293A - _022328D2 - 2 ; case 2
	.short _0223296A - _022328D2 - 2 ; case 3
	.short _02232990 - _022328D2 - 2 ; case 4
	.short _022329B6 - _022328D2 - 2 ; case 5
_022328DE:
	add r0, r6, #0
	bl ov12_02232720
	ldr r0, [r6, #0x10]
	add r1, r6, #0
	lsl r2, r0, #2
	add r0, r6, r2
	add r1, #0x60
	add r1, r1, r2
	mov r2, #2
	ldr r0, [r0, #0x48]
	lsl r2, r2, #0xc
	bl ov12_0223283C
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_02232902:
	add r0, r6, #0
	bl ov12_02232744
	add r4, r0, #0
	ldr r0, [r6, #0x10]
	add r1, r6, #0
	lsl r2, r0, #2
	add r0, r6, r2
	add r1, #0x60
	ldr r0, [r0, #0x48]
	add r1, r1, r2
	bl ov12_02232888
	cmp r4, r0
	bne _022329D8
	cmp r4, #1
	bne _022329D8
	ldr r0, [r6, #0x10]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x48]
	bl sub_0200D364
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_0223293A:
	ldr r0, [r6, #0x10]
	add r2, r6, #0
	add r2, #0x78
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	sub r0, r0, #1
	str r0, [r2, r1]
	ldr r1, [r6, #0x10]
	lsl r0, r1, #2
	add r0, r6, r0
	ldr r0, [r0, #0x78]
	cmp r0, #0
	bge _022329D8
	add r0, r1, #1
	str r0, [r6, #0x10]
	cmp r0, #6
	bge _02232962
	mov r0, #0
	str r0, [r6, #0xc]
	b _022329D8
_02232962:
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_0223296A:
	add r4, r6, #0
	mov r7, #0
	add r4, #0x60
	add r5, r6, #0
_02232972:
	mov r2, #2
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl ov12_0223283C
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #6
	blt _02232972
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_02232990:
	add r4, r6, #0
	mov r7, #0
	add r4, #0x60
	add r5, r6, #0
_02232998:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl ov12_02232888
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #6
	blt _02232998
	cmp r0, #1
	bne _022329D8
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_022329B6:
	mov r5, #0
	add r4, r6, #0
_022329BA:
	ldr r0, [r4, #0x48]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _022329BA
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_022329D8:
	ldr r0, [r6, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022328B8

	thumb_func_start ov12_022329E0
ov12_022329E0: ; 0x022329E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r1, [sp]
	mov r1, #0x90
	add r4, r0, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov12_02235E50
	ldr r1, [sp]
	str r4, [r0, #0]
	str r1, [r0, #4]
	ldr r1, [sp, #4]
	str r0, [sp, #0x14]
	str r1, [r0, #8]
	ldr r0, [r0, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov12_022232FC
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x18]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl sub_020080C0
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, #0x44
	str r0, [sp, #0xc]
	strh r0, [r1]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov12_02223354
	ldr r1, [sp, #0x14]
	add r1, #0x46
	strh r0, [r1]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x1c
	ldr r1, [r1, #0]
	bl ov12_0222329C
	ldr r5, [sp, #0x14]
	mov r4, #0
_02232A58:
	cmp r4, #0
	bne _02232A60
	ldr r0, [sp, #8]
	b _02232A6A
_02232A60:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, sp, #0x1c
	bl sub_0200CE6C
_02232A6A:
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x48]
	mov r1, #0
	bl sub_0200D3F4
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r1, r0, #1
	ldr r0, _02232B30 ; =0x00001555
	mov r2, #3
	mul r0, r1
	asr r0, r0, #4
	lsl r0, r0, #2
	ldr r1, _02232B34 ; =0x020F983C
	str r0, [sp, #0x18]
	add r1, r1, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r2, r2, #0x10
	mov r3, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02232B38 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	asr r6, r0, #0x10
	mov r2, #3
	ldr r1, _02232B34 ; =0x020F983C
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0x10
	ldrsh r0, [r1, r0]
	mov r3, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02232B38 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r0, r0, #4
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _02232AF2
	add r0, r7, r6
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_0200D7D4
	b _02232AF8
_02232AF2:
	sub r0, r7, r6
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_02232AF8:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200D4C4
	cmp r4, #2
	bge _02232B12
	mov r0, #8
	b _02232B14
_02232B12:
	mov r0, #0
_02232B14:
	add r4, r4, #1
	str r0, [r5, #0x78]
	add r5, r5, #4
	cmp r4, #6
	blt _02232A58
	ldr r0, [sp, #0x14]
	ldr r1, _02232B3C ; =ov12_022328B8
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x14]
	bl ov12_022201E8
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232B30: .word 0x00001555
_02232B34: .word 0x020F983C
_02232B38: .word 0x00000000
_02232B3C: .word ov12_022328B8
	thumb_func_end ov12_022329E0

	thumb_func_start ov12_02232B40
ov12_02232B40: ; 0x02232B40
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #5
	bhi _02232B80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232B5A: ; jump table
	.short _02232B66 - _02232B5A - 2 ; case 0
	.short _02232B76 - _02232B5A - 2 ; case 1
	.short _02232BD6 - _02232B5A - 2 ; case 2
	.short _02232C32 - _02232B5A - 2 ; case 3
	.short _02232C62 - _02232B5A - 2 ; case 4
	.short _02232C86 - _02232B5A - 2 ; case 5
_02232B66:
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02232C9E
_02232B76:
	ldr r0, [r4, #0x5c]
	bl sub_0200D3B8
	cmp r0, #0
	beq _02232B82
_02232B80:
	b _02232C9E
_02232B82:
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x14
	add r2, r1, #0
	mov r3, #0
	bl ov12_02225E68
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	add r3, r0, #0
	mov r0, #0x8a
	ldrsh r0, [r4, r0]
	lsl r1, r5, #0x10
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r2, #0x88
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	add r0, #0x38
	asr r1, r1, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	b _02232C9E
_02232BD6:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x38
	bl ov12_02225C74
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260C8
	cmp r0, #0
	bne _02232C9E
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D364
	mov r1, #1
	ldr r0, [r4, #0x5c]
	lsl r1, r1, #0xc
	bl sub_0200D3A4
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02232C9E
_02232C32:
	ldr r0, [r4, #0x5c]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02232C9E
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r3, #0x8a
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x60
	add r2, r1, #0
	bl ov12_02225BC8
	b _02232C9E
_02232C62:
	add r0, r4, #0
	add r0, #0x60
	bl ov12_02225C14
	cmp r0, #0
	beq _02232C7E
	mov r1, #0x88
	mov r2, #0x62
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	bl sub_0200D4C4
	b _02232C9E
_02232C7E:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02232C9E
_02232C86:
	ldr r0, [r4, #0x5c]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02232C9E:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02232B40

	thumb_func_start ov12_02232CA8
ov12_02232CA8: ; 0x02232CA8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x8c
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #6
	mov r2, #0
	str r0, [r4, #0x10]
	bl sub_02007DEC
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x88
	strh r0, [r1]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x8a
	strh r0, [r1]
	str r6, [r4, #0x5c]
	add r0, r6, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D460
	mov r1, #0x88
	mov r2, #0x8a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	bl sub_0200D4C4
	ldr r0, [r4, #0]
	ldr r1, _02232D34 ; =ov12_02232B40
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232D34: .word ov12_02232B40
	thumb_func_end ov12_02232CA8

	thumb_func_start ov12_02232D38
ov12_02232D38: ; 0x02232D38
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	bl ov12_02225950
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0
	lsl r2, r2, #0x10
	add r4, #0xc4
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #8
	bl sub_02003A2C
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02232D38

	thumb_func_start ov12_02232D64
ov12_02232D64: ; 0x02232D64
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r1, #0xa
	mov r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225EF0
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x4c
	add r2, r1, #0
	mov r3, #1
	bl ov12_02225E68
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	add r1, r0, #0
	lsl r2, r1, #1
	ldr r1, _02232E00 ; =0x0223A1CC
	ldr r0, [r4, #0x20]
	ldrh r1, [r1, r2]
	bl sub_0200D3F4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0x28
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232DE8
	ldr r1, [sp, #0x10]
	mov r0, #0
	bl sub_020E1A9C
	str r0, [sp, #0x10]
_02232DE8:
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ov12_02232D38
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02232E00: .word 0x0223A1CC
	thumb_func_end ov12_02232D64

	thumb_func_start ov12_02232E04
ov12_02232E04: ; 0x02232E04
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	beq _02232E20
	cmp r0, #1
	beq _02232EA8
	cmp r0, #2
	bne _02232E1E
	b _02232F28
_02232E1E:
	b _02232F2A
_02232E20:
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225F6C
	add r0, r5, #0
	add r0, #0x28
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232E48
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_020E1A9C
	str r0, [sp, #0x10]
_02232E48:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x3c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_0222605C
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _02232F2A
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r3, #0x14
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #4
	add r5, #0x28
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov12_02225EF0
	b _02232F2A
_02232EA8:
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225F6C
	add r0, r5, #0
	add r0, #0x4c
	bl ov12_02225EB8
	cmp r0, #0
	beq _02232F06
	mov r0, #0x4c
	ldrsh r0, [r5, r0]
	add r1, sp, #0x10
	add r2, sp, #0xc
	strh r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225FA4
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232EE2
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_020E1A9C
	str r0, [sp, #0x10]
_02232EE2:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x3c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_0222605C
	b _02232F2A
_02232F06:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0200D3F4
	mov r4, #1
	b _02232F2A
_02232F28:
	mov r4, #1
_02232F2A:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov12_02232E04

	thumb_func_start ov12_02232F30
ov12_02232F30: ; 0x02232F30
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r1, sp, #0xc
	ldr r0, [r4, #0x1c]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #8
	str r3, [sp]
	sub r3, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #0x10
	add r0, #0x70
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225BC8
	mov r2, #0xa
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x28
	mov r1, #2
	mov r3, #0x14
	bl ov12_02225EF0
	add r0, r4, #0
	add r0, #0x28
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov12_02225FA4
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232F98
	ldr r1, [sp, #0x14]
	mov r0, #0
	bl sub_020E1A9C
	str r0, [sp, #0x14]
_02232F98:
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_0200D6E8
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x70
	bl ov12_02225C50
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	add r1, r0, #0
	lsl r2, r1, #1
	ldr r1, _02232FEC ; =0x0223A1CC
	ldr r0, [r4, #0x24]
	ldrh r1, [r1, r2]
	bl sub_0200D3F4
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D3F4
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ov12_02232D38
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_02232FEC: .word 0x0223A1CC
	thumb_func_end ov12_02232F30

	thumb_func_start ov12_02232FF0
ov12_02232FF0: ; 0x02232FF0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	beq _0223300A
	cmp r0, #1
	beq _0223303A
	cmp r0, #2
	beq _0223308C
	b _0223308E
_0223300A:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	add r0, #0x70
	bl ov12_02225C50
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _0223308E
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223308E
_0223303A:
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	add r0, #0x70
	bl ov12_02225C50
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225F6C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x28
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223306E
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_020E1A9C
	str r0, [sp, #4]
_0223306E:
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200D6E8
	cmp r6, #0
	bne _0223308E
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	mov r4, #1
	b _0223308E
_0223308C:
	mov r4, #1
_0223308E:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02232FF0

	thumb_func_start ov12_02233094
ov12_02233094: ; 0x02233094
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #6
	bhi _0223316E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022330AE: ; jump table
	.short _022330BC - _022330AE - 2 ; case 0
	.short _022330E0 - _022330AE - 2 ; case 1
	.short _022330FA - _022330AE - 2 ; case 2
	.short _02233110 - _022330AE - 2 ; case 3
	.short _02233126 - _022330AE - 2 ; case 4
	.short _0223314C - _022330AE - 2 ; case 5
	.short _02233160 - _022330AE - 2 ; case 6
_022330BC:
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x10
	bl ov12_02235780
	mov r2, #8
	str r2, [sp]
	add r0, r4, #0
	str r2, [sp, #4]
	add r0, #0x9c
	mov r1, #0
	mov r3, #0x10
	bl ov12_02226424
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223316E
_022330E0:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02226454
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov12_02232D64
	b _0223316E
_022330FA:
	add r0, r4, #0
	bl ov12_02232E04
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	b _0223316E
_02233110:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bpl _0223316E
	add r0, r4, #0
	bl ov12_02232F30
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223316E
_02233126:
	add r0, r4, #0
	bl ov12_02232FF0
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	mov r1, #8
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x9c
	mov r2, #0
	add r3, r1, #0
	str r1, [sp, #4]
	bl ov12_02226424
	b _0223316E
_0223314C:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02226454
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223316E
_02233160:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0223316E:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_02233094

	thumb_func_start ov12_02233178
ov12_02233178: ; 0x02233178
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0xd0
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	add r0, r6, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	add r7, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r7, #0
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [sp, #4]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r6, r0
	lsl r0, r0, #0x10
	str r5, [r4, #0x14]
	asr r6, r0, #0x10
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	ldr r1, [sp]
	add r2, r5, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0x28
	bl sub_0200D7E0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022234A8
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022234A8
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0]
	mov r1, #3
	bl ov12_022202C0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	ldr r1, _022332E4 ; =ov12_02233094
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022332E4: .word ov12_02233094
	thumb_func_end ov12_02233178

	thumb_func_start ov12_022332E8
ov12_022332E8: ; 0x022332E8
	push {r4, lr}
	sub sp, #0x20
	mov r2, #0xa
	add r4, r0, #0
	add r0, #0xf8
	mov r1, #0x19
	add r3, r2, #0
	str r2, [sp]
	bl ov12_02225E68
	mov r0, #0x3a
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r3, #0x38
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x44]
	ldr r2, _02233334 ; =ov12_02225EB8
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x40]
	add r1, #0xf8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_022261C4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_02233334: .word ov12_02225EB8
	thumb_func_end ov12_022332E8

	thumb_func_start ov12_02233338
ov12_02233338: ; 0x02233338
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xf8
	add r2, r1, #0
	mov r3, #0x19
	bl ov12_02225E68
	mov r0, #0x3a
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r3, #0x38
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	ldr r2, _02233390 ; =ov12_02225EB8
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x40]
	add r1, #0xf8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_022261C4
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D3F4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_02233390: .word ov12_02225EB8
	thumb_func_end ov12_02233338

	thumb_func_start ov12_02233394
ov12_02233394: ; 0x02233394
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _0223344C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022333AC: ; jump table
	.short _022333B6 - _022333AC - 2 ; case 0
	.short _022333C4 - _022333AC - 2 ; case 1
	.short _022333F2 - _022333AC - 2 ; case 2
	.short _02233416 - _022333AC - 2 ; case 3
	.short _0223342A - _022333AC - 2 ; case 4
_022333B6:
	add r0, r4, #0
	bl ov12_022332E8
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223344C
_022333C4:
	add r0, r4, #0
	add r0, #0x48
	bl ov12_02226274
	cmp r0, #0
	bne _0223344C
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	mov r1, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	b _0223344C
_022333F2:
	mov r1, #0x38
	mov r2, #0x3a
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x14
	bl ov12_0222619C
	cmp r0, #0
	bne _0223344C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov12_02233338
	b _0223344C
_02233416:
	add r0, r4, #0
	add r0, #0x48
	bl ov12_02226274
	cmp r0, #0
	bne _0223344C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223344C
_0223342A:
	mov r6, #0
	add r5, r4, #0
_0223342E:
	ldr r0, [r5, #0x3c]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _0223342E
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	pop {r3, r4, r5, r6, r7, pc}
_0223344C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02233394

	thumb_func_start ov12_02233454
ov12_02233454: ; 0x02233454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	mov r1, #0x47
	lsl r1, r1, #2
	add r5, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r6, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x38]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x3a]
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0x3a
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #0x3a]
	add r0, sp, #4
	add r1, r5, #0
	bl ov12_0222329C
	mov r6, #0
	add r5, r4, #0
_022334B0:
	cmp r6, #0
	bne _022334C0
	add r0, r7, #0
	mov r1, #1
	str r7, [r5, #0x3c]
	bl sub_0200D364
	b _022334D2
_022334C0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, sp, #4
	bl sub_0200CE6C
	mov r1, #1
	str r0, [r5, #0x3c]
	bl sub_0200D810
_022334D2:
	ldr r0, [r5, #0x3c]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0200D460
	mov r1, #0x38
	mov r2, #0x3a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x3c]
	bl sub_0200D4C4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x3c]
	mov r1, #2
	bl sub_0200D6A4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _022334B0
	ldr r0, [r4, #0]
	ldr r1, _02233518 ; =ov12_02233394
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233518: .word ov12_02233394
	thumb_func_end ov12_02233454

	thumb_func_start ov12_0223351C
ov12_0223351C: ; 0x0223351C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r7, #0
	add r6, r5, #0
	str r1, [sp, #0x10]
	add r6, #0x30
	add r4, r7, #0
_0223352C:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x32
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r2, _0223356C ; =0x00007FFF
	add r0, r6, #0
	add r3, r1, #0
	bl ov12_02225A5C
	ldr r0, [r5, #0x38]
	add r7, r7, #1
	add r0, r0, r4
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x48]
	ldr r0, [sp, #0x10]
	add r6, #0x24
	mul r0, r1
	str r0, [r5, #0x48]
	ldr r0, _02233570 ; =0x00002AAA
	add r5, #0x24
	add r4, r4, r0
	cmp r7, #6
	blt _0223352C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223356C: .word 0x00007FFF
_02233570: .word 0x00002AAA
	thumb_func_end ov12_0223351C

	thumb_func_start ov12_02233574
ov12_02233574: ; 0x02233574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x30
	str r0, [sp]
	add r5, r6, #0
	add r4, r6, #0
_0223358A:
	ldr r0, [sp]
	bl ov12_02225AE0
	ldr r1, [r5, #0x38]
	mov r2, #0xa
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02233630 ; =0x020F983C
	ldr r3, [r6, #0x14]
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	mul r2, r3
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r3, r1, #0
	mov r1, #0x13
	lsl r1, r1, #4
	mov r2, #0x30
	add r7, r0, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #0x18]
	add r1, r1, r2
	ldr r2, _02233634 ; =0x00000132
	lsl r1, r1, #0x10
	ldrsh r2, [r6, r2]
	asr r1, r1, #0x10
	mov ip, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r7, r7, r2
	ldr r2, _02233638 ; =0x00000000
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r3, r7, #0xc
	orr r3, r2
	lsl r2, r3, #4
	asr r2, r2, #0x10
	mov r3, ip
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r1, [r5, #0x38]
	ldr r0, _0223363C ; =0x00003FFF
	cmp r1, r0
	blt _02233606
	ldr r0, _02233640 ; =0x0000BF49
	cmp r1, r0
	bgt _02233606
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D460
	b _02233616
_02233606:
	ldr r0, [r6, #0]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r1, #1
	bl sub_0200D460
_02233616:
	ldr r0, [sp]
	add r5, #0x24
	add r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #6
	blt _0223358A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233630: .word 0x020F983C
_02233634: .word 0x00000132
_02233638: .word 0x00000000
_0223363C: .word 0x00003FFF
_02233640: .word 0x0000BF49
	thumb_func_end ov12_02233574

	thumb_func_start ov12_02233644
ov12_02233644: ; 0x02233644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _0223372A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223365E: ; jump table
	.short _02233668 - _0223365E - 2 ; case 0
	.short _0223369E - _0223365E - 2 ; case 1
	.short _022336BE - _0223365E - 2 ; case 2
	.short _022336EA - _0223365E - 2 ; case 3
	.short _02233706 - _0223365E - 2 ; case 4
_02233668:
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0xf
	bl ov12_02235780
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x10
	mov r3, #0xf
	bl ov12_02226424
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl ov12_0223351C
	add r0, r4, #0
	bl ov12_02233574
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223372A
_0223369E:
	add r0, r4, #0
	bl ov12_02233574
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _0223372A
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x1c
	str r0, [r4, #0x10]
	b _0223372A
_022336BE:
	add r0, r4, #0
	bl ov12_02233574
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _0223372A
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r2, #1
	mov r3, #0
	bl ov12_02226424
	b _0223372A
_022336EA:
	add r0, r4, #0
	bl ov12_02233574
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _0223372A
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223372A
_02233706:
	mov r6, #0
	add r5, r4, #0
_0223370A:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _0223370A
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0223372A:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02233644

	thumb_func_start ov12_02233734
ov12_02233734: ; 0x02233734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	mov r1, #0x4d
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	mov r1, #0x13
	lsl r1, r1, #4
	strh r0, [r6, r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	ldr r1, _022337D8 ; =0x00000132
	strh r0, [r6, r1]
	add r0, sp, #4
	add r1, r4, #0
	bl ov12_0222329C
	mov r4, #0
	add r5, r6, #0
_02233786:
	cmp r4, #0
	bne _0223378E
	str r7, [r5, #0x18]
	b _0223379A
_0223378E:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r5, #0x18]
_0223379A:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D390
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02233786
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_02225964
	str r0, [r6, #0x14]
	ldr r0, [r6, #0]
	ldr r1, _022337DC ; =ov12_02233644
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022337D8: .word 0x00000132
_022337DC: .word ov12_02233644
	thumb_func_end ov12_02233734

	thumb_func_start ov12_022337E0
ov12_022337E0: ; 0x022337E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r1, sp, #8
	add r5, r2, #0
	add r1, #2
	add r2, sp, #8
	add r6, r0, #0
	add r4, r3, #0
	bl sub_0200D550
	add r0, sp, #8
	mov r1, #0
	ldrsh r3, [r0, r1]
	mov r1, #2
	ldrsh r2, [r0, r1]
	lsl r0, r4, #7
	neg r0, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r1, r2, #0x10
	lsl r4, r5, #8
	add r2, r2, r4
	str r0, [sp]
	mov r0, #0x3b
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	add r0, r6, #0
	mov r1, #1
	bl sub_0200D3F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022337E0

	thumb_func_start ov12_02233834
ov12_02233834: ; 0x02233834
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl ov12_02225C50
	cmp r0, #0
	beq _022338EE
	add r1, sp, #8
	add r0, r4, #0
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	add r1, sp, #8
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [sp]
	mov r2, #0xe
	mul r1, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _022338F4 ; =0x020F983C
	lsl r2, r2, #0xc
	ldrsh r0, [r0, r1]
	mov r3, #0
	asr r7, r0, #0x1f
	add r1, r7, #0
	str r0, [sp, #4]
	bl sub_020E1F1C
	add r3, r0, #0
	add r5, r1, #0
	add r6, sp, #8
	mov r2, #0
	ldrsh r2, [r6, r2]
	mov r6, #2
	lsl r6, r6, #0xa
	add r0, r4, #0
	add r6, r3, r6
	ldr r3, _022338F8 ; =0x00000000
	ldr r1, [sp]
	adc r5, r3
	lsl r3, r5, #0x14
	lsr r5, r6, #0xc
	orr r5, r3
	lsl r3, r5, #4
	asr r3, r3, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r2, #0xae
	ldr r0, [sp, #4]
	add r1, r7, #0
	lsl r2, r2, #2
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	bl sub_020E17B4
	ldr r1, _022338FC ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	bl sub_020E0B00
	add r1, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0200D6E8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022338EE:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022338F4: .word 0x020F983C
_022338F8: .word 0x00000000
_022338FC: .word 0x45800000
	thumb_func_end ov12_02233834

	thumb_func_start ov12_02233900
ov12_02233900: ; 0x02233900
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x9d
	add r7, r0, #0
	lsl r1, r1, #2
	ldr r0, [r7, r1]
	cmp r0, #0xf
	bge _02233948
	sub r0, r1, #4
	ldr r0, [r7, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r7, r0]
	ldr r0, [r7, r0]
	cmp r0, #6
	ble _02233948
	mov r2, #0
	sub r0, r1, #4
	str r2, [r7, r0]
	ldr r1, [r7, r1]
	add r3, r7, #0
	lsl r0, r1, #2
	mov r2, #0x24
	add r0, r7, r0
	add r3, #0x54
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r0, #0x18]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	bl ov12_022337E0
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	add r1, r1, #1
	str r1, [r7, r0]
_02233948:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	ble _02233974
	add r6, r7, #0
	add r6, #0x54
	add r5, r7, #0
_0223395A:
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	bl ov12_02233834
	str r0, [sp]
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r4, r4, #1
	add r6, #0x24
	add r5, r5, #4
	cmp r4, r0
	blt _0223395A
_02233974:
	cmp r0, #0xf
	blt _02233982
	ldr r0, [sp]
	cmp r0, #1
	bne _02233982
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233982:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02233900

	thumb_func_start ov12_02233988
ov12_02233988: ; 0x02233988
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_02233900
	cmp r0, #0
	beq _022339BA
	mov r4, #0
	add r5, r6, #0
_0223399C:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _0223399C
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_02220220
	pop {r3, r4, r5, r6, r7, pc}
_022339BA:
	ldr r0, [r6, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02233988

	thumb_func_start ov12_022339C4
ov12_022339C4: ; 0x022339C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	mov r1, #0x9e
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, sp, #0xc
	add r1, r4, #0
	bl ov12_0222329C
	mov r4, #0
	add r5, r6, #0
_02233A18:
	cmp r4, #0
	bne _02233A20
	str r7, [r5, #0x18]
	b _02233A2C
_02233A20:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [r5, #0x18]
_02233A2C:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D4C4
	add r0, r4, #0
	mov r1, #3
	bl sub_020E1F6C
	ldr r0, [r5, #0x18]
	bl sub_0200D364
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _02233A18
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_02225964
	str r0, [r6, #0x10]
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_0222598C
	str r0, [r6, #0x14]
	ldr r0, [r6, #0]
	ldr r1, _02233A9C ; =ov12_02233988
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233A9C: .word ov12_02233988
	thumb_func_end ov12_022339C4

	thumb_func_start ov12_02233AA0
ov12_02233AA0: ; 0x02233AA0
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _02233AB0
	cmp r1, #1
	beq _02233AC4
	cmp r1, #2
	beq _02233AD8
	bx lr
_02233AB0:
	ldr r1, _02233AEC ; =0x00007FFF
	str r1, [r0, #0x18]
	mov r1, #5
	str r1, [r0, #0x24]
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r0, #0x1c]
	mov r1, #0x10
	str r1, [r0, #0x28]
	bx lr
_02233AC4:
	ldr r1, _02233AEC ; =0x00007FFF
	str r1, [r0, #0x18]
	mov r1, #4
	mvn r1, r1
	str r1, [r0, #0x24]
	ldr r1, _02233AF0 ; =0xFFFF0000
	str r1, [r0, #0x1c]
	mov r1, #0x10
	str r1, [r0, #0x28]
	bx lr
_02233AD8:
	ldr r1, _02233AEC ; =0x00007FFF
	str r1, [r0, #0x18]
	mov r1, #0xa
	str r1, [r0, #0x24]
	lsl r1, r1, #0xd
	str r1, [r0, #0x1c]
	mov r1, #0x10
	str r1, [r0, #0x28]
	bx lr
	nop
_02233AEC: .word 0x00007FFF
_02233AF0: .word 0xFFFF0000
	thumb_func_end ov12_02233AA0

	thumb_func_start ov12_02233AF4
ov12_02233AF4: ; 0x02233AF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ov12_022265E4
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _02233B1C
	mov r0, #0
	str r0, [sp, #4]
_02233B1C:
	ldr r0, [sp]
	cmp r0, #0xc0
	ble _02233B26
	mov r0, #0xc0
	str r0, [sp]
_02233B26:
	mov r0, #0
	ldr r1, [r5, #0x20]
	mvn r0, r0
	mul r0, r1
	ldr r4, [sp, #4]
	str r0, [r5, #0x20]
	ldr r0, [sp]
	add r1, r4, #0
	cmp r1, r0
	bge _02233BC6
_02233B3A:
	mov r0, #2
	tst r0, r4
	ldr r1, [r5, #0x1c]
	beq _02233B4A
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0xc
	add r2, r1, r0
	b _02233B50
_02233B4A:
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0xc
	sub r2, r1, r0
_02233B50:
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x18]
	sub r3, r4, r1
	ldr r1, _02233BCC ; =0x00000199
	mul r1, r3
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02233BD0 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02233BD4 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	asr r7, r0, #0x10
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x24]
	sub r0, r4, r0
	mul r0, r1
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, r7, r0
	lsl r0, r0, #0x10
	ldr r1, [r5, #0x30]
	asr r7, r0, #0x10
	lsl r0, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	sub r6, r4, #1
	bpl _02233BAA
	add r6, #0xc0
_02233BAA:
	add r0, r0, r7
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	ldr r1, [sp, #8]
	lsl r2, r6, #2
	str r0, [r1, r2]
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _02233B3A
_02233BC6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02233BCC: .word 0x00000199
_02233BD0: .word 0x020F983C
_02233BD4: .word 0x00000000
	thumb_func_end ov12_02233AF4

	thumb_func_start ov12_02233BD8
ov12_02233BD8: ; 0x02233BD8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02233BEE
	cmp r0, #1
	beq _02233C02
	cmp r0, #2
	beq _02233C2C
	pop {r4, r5, r6, pc}
_02233BEE:
	add r0, r4, #0
	bl ov12_02233AA0
	add r0, r4, #0
	bl ov12_02233AF4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02233C02:
	ldr r0, [r4, #0x28]
	sub r0, r0, #1
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov12_02233AF4
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bge _02233CD0
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	cmp r0, #3
	bge _02233C24
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02233C24:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02233C2C:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02233C48
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
_02233C48:
	ldr r0, [r4, #4]
	bl ov12_022265F8
	ldr r0, [r4, #4]
	bl ov12_022265C0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #0]
	bl ov12_02220278
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_02220220
_02233CD0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02233BD8

	thumb_func_start ov12_02233CD4
ov12_02233CD4: ; 0x02233CD4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x34
	add r7, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r7, [r4, #0]
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02233D32
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_02233D32:
	sub r6, #0x28
	lsl r0, r6, #0x10
	str r5, [r4, #0x14]
	sub r5, #0x28
	asr r0, r0, #0x10
	neg r0, r0
	neg r1, r5
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	str r5, [r4, #0x10]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	str r0, [r4, #0x30]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233EC
	bl ov12_022266F0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r2, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r5, #0
	bl ov12_02226544
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	sub r0, r0, #3
	cmp r0, #1
	bhi _02233DBA
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
_02233DBA:
	ldr r0, [r4, #0]
	ldr r1, _02233DC8 ; =ov12_02233BD8
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233DC8: .word ov12_02233BD8
	thumb_func_end ov12_02233CD4

	thumb_func_start ov12_02233DCC
ov12_02233DCC: ; 0x02233DCC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _02233DDC
	b _02233F20
_02233DDC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233DE8: ; jump table
	.short _02233DF4 - _02233DE8 - 2 ; case 0
	.short _02233E3A - _02233DE8 - 2 ; case 1
	.short _02233E74 - _02233DE8 - 2 ; case 2
	.short _02233EAE - _02233DE8 - 2 ; case 3
	.short _02233EFA - _02233DE8 - 2 ; case 4
	.short _02233F12 - _02233DE8 - 2 ; case 5
_02233DF4:
	mov r2, #0
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0x7f
	add r3, r2, #0
	bl ov12_02225BC8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02233F24 ; =0xFFFF1FFF
	and r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	str r0, [r2, #0]
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov12_02235838
	ldr r1, _02233F28 ; =0x04000040
	mov r0, #0xff
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	mov r0, #7
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233E3A:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _02233F20
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r3, #0
	lsl r2, r2, #0x10
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02233F2C ; =0x0000FFFF
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl sub_02003178
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233E74:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225C14
	cmp r0, #0
	beq _02233EA4
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #0x7f
	add sp, #0xc
	sub r0, r0, r2
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, #0x80
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02233F28 ; =0x04000040
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	pop {r4, r5, pc}
_02233EA4:
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233EAE:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02233F20
	ldr r0, [r4, #4]
	mov r2, #1
	add r0, r0, #1
	str r0, [r4, #4]
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02233F24 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	lsl r2, r2, #0x10
	ldr r0, _02233F2C ; =0x0000FFFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_02003178
	add sp, #0xc
	pop {r4, r5, pc}
_02233EFA:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02233F20
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233F12:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02233F20:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02233F24: .word 0xFFFF1FFF
_02233F28: .word 0x04000040
_02233F2C: .word 0x0000FFFF
	thumb_func_end ov12_02233DCC

	thumb_func_start ov12_02233F30
ov12_02233F30: ; 0x02233F30
	push {r4, lr}
	mov r1, #0x34
	add r4, r0, #0
	bl ov12_02235E50
	add r2, r0, #0
	ldr r1, _02233F48 ; =ov12_02233DCC
	add r0, r4, #0
	str r4, [r2, #0]
	bl ov12_022201E8
	pop {r4, pc}
	; .align 2, 0
_02233F48: .word ov12_02233DCC
	thumb_func_end ov12_02233F30

	thumb_func_start ov12_02233F4C
ov12_02233F4C: ; 0x02233F4C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _02233FFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233F66: ; jump table
	.short _02233F70 - _02233F66 - 2 ; case 0
	.short _02233F96 - _02233F66 - 2 ; case 1
	.short _02233FAA - _02233F66 - 2 ; case 2
	.short _02233FD0 - _02233F66 - 2 ; case 3
	.short _02233FE4 - _02233F66 - 2 ; case 4
_02233F70:
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x10
	bl ov12_02235780
	mov r1, #0
	mov r2, #0x10
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02233FFC
_02233F96:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02233FFC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02233FFC
_02233FAA:
	ldr r0, [r4, #0x10]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02233FFC
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r1, #0x10
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	add r3, r2, #0
	bl ov12_02226424
	b _02233FFC
_02233FD0:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02233FFC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02233FFC
_02233FE4:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02233FFC:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02233F4C

	thumb_func_start ov12_02234008
ov12_02234008: ; 0x02234008
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x3c
	add r6, r0, #0
	str r2, [sp]
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	str r5, [r4, #0x10]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0]
	ldr r1, _02234040 ; =ov12_02233F4C
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234040: .word ov12_02233F4C
	thumb_func_end ov12_02234008

	thumb_func_start ov12_02234044
ov12_02234044: ; 0x02234044
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02234108
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223405E: ; jump table
	.short _02234068 - _0223405E - 2 ; case 0
	.short _022340D2 - _0223405E - 2 ; case 1
	.short _02234114 - _0223405E - 2 ; case 2
	.short _02234180 - _0223405E - 2 ; case 3
	.short _022341D2 - _0223405E - 2 ; case 4
_02234068:
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x74]
	asr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x5c]
	ldr r2, [r4, #0x60]
	ldr r3, [r4, #0x64]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_022340D2:
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	cmp r5, #0
	beq _0223410A
_02234108:
	b _02234210
_0223410A:
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02234114:
	ldr r0, [r4, #0x64]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x60]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x68]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02234180:
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	cmp r5, #0
	bne _02234210
	ldr r0, [r4, #0x70]
	sub r0, r0, #1
	str r0, [r4, #0x70]
	cmp r0, #0
	bgt _022341CA
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_022341CA:
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, pc}
_022341D2:
	mov r2, #0xa
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #8
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02234210:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02234044

	thumb_func_start ov12_02234214
ov12_02234214: ; 0x02234214
	push {r3, r4, r5, lr}
	mov r1, #0x78
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xa]
	mov r1, #0xa
	str r1, [r4, #0x5c]
	mov r0, #7
	str r0, [r4, #0x60]
	str r1, [r4, #0x64]
	mov r0, #0x1e
	str r0, [r4, #0x68]
	str r1, [r4, #0x6c]
	mov r3, #1
	ldr r0, _02234288 ; =0x00040003
	str r3, [r4, #0x70]
	str r0, [r4, #0x74]
	mov r1, #2
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x38
	mov r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0]
	ldr r1, _0223428C ; =ov12_02234044
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02234288: .word 0x00040003
_0223428C: .word ov12_02234044
	thumb_func_end ov12_02234214

	thumb_func_start ov12_02234290
ov12_02234290: ; 0x02234290
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #8
	bl ov12_02225C50
	cmp r0, #0
	bne _022342BA
	ldr r0, [r4, #0x2c]
	bl sub_0200D0F4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	pop {r3, r4, r5, pc}
_022342BA:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02234290

	thumb_func_start ov12_022342C4
ov12_022342C4: ; 0x022342C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x30
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220300
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _02234308
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220298
	str r0, [r4, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220298
	bl sub_0200D0F4
	b _0223431E
_02234308:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220298
	str r0, [r4, #0x2c]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220298
	bl sub_0200D0F4
_0223431E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0222598C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_022258E0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_022258E0
	ldr r1, [sp, #0x10]
	lsl r2, r7, #6
	add r6, r1, r2
	ldr r1, [sp, #0xc]
	lsl r1, r1, #4
	neg r1, r1
	add r5, r0, r1
	str r1, [sp, #8]
	lsl r1, r6, #0x10
	lsl r2, r5, #0x10
	ldr r0, [r4, #0x2c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [sp, #8]
	mov r2, #0x30
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r2, r7
	str r0, [sp]
	mov r0, #6
	add r2, r6, r2
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	lsl r3, r5, #0x10
	add r0, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	ldr r1, _0223439C ; =ov12_02234290
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223439C: .word ov12_02234290
	thumb_func_end ov12_022342C4

	thumb_func_start ov12_022343A0
ov12_022343A0: ; 0x022343A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _022343B0
	b _022344CC
_022343B0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022343BC: ; jump table
	.short _022343C8 - _022343BC - 2 ; case 0
	.short _022343E2 - _022343BC - 2 ; case 1
	.short _02234430 - _022343BC - 2 ; case 2
	.short _0223444C - _022343BC - 2 ; case 3
	.short _0223448E - _022343BC - 2 ; case 4
	.short _022344A6 - _022343BC - 2 ; case 5
_022343C8:
	mov r1, #4
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x40
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022343E2:
	mov r1, #0x18
	mov r2, #0x1a
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x14]
	add r0, #0x40
	bl ov12_0222619C
	cmp r0, #0
	bne _022344CC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x1a
	ldrsh r3, [r4, r0]
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x10]
	sub r0, #0x1f
	mul r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r4, [r4, #0xc]
	mov r2, #0x28
	mul r2, r4
	add r2, r1, r2
	lsl r2, r2, #0x10
	add r0, #0x1c
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add sp, #8
	pop {r4, r5, r6, pc}
_02234430:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x1c
	bl ov12_02225C74
	cmp r0, #0
	bne _022344CC
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0223444C:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _022344CC
	ldr r0, [r4, #4]
	mov r5, #0x28
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x1a
	ldrsh r3, [r4, r0]
	mov r0, #0x18
	ldrsh r2, [r4, r0]
	mov r0, #4
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	add r6, r1, #0
	mul r6, r5
	add r1, r2, r6
	lsl r1, r1, #0x10
	ldr r4, [r4, #0x10]
	sub r5, #0x2f
	mul r5, r4
	add r3, r3, r5
	lsl r3, r3, #0x10
	add r0, #0x1c
	asr r1, r1, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	add sp, #8
	pop {r4, r5, r6, pc}
_0223448E:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x1c
	bl ov12_02225C74
	cmp r0, #0
	bne _022344CC
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022344A6:
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x1a
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_022344CC:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022343A0

	thumb_func_start ov12_022344D0
ov12_022344D0: ; 0x022344D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0x64
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	str r5, [r4, #0]
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x1a]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0222598C
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	ldr r1, _02234524 ; =ov12_022343A0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	nop
_02234524: .word ov12_022343A0
	thumb_func_end ov12_022344D0

	thumb_func_start ov12_02234528
ov12_02234528: ; 0x02234528
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bls _02234538
	b _02234648
_02234538:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234544: ; jump table
	.short _0223454E - _02234544 - 2 ; case 0
	.short _02234584 - _02234544 - 2 ; case 1
	.short _022345AC - _02234544 - 2 ; case 2
	.short _0223460A - _02234544 - 2 ; case 3
	.short _02234622 - _02234544 - 2 ; case 4
_0223454E:
	mov r0, #0x16
	ldrsh r3, [r4, r0]
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	mov r5, #4
	lsl r0, r0, #4
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [r4, #8]
	sub r5, #0x2c
	mul r5, r2
	add r2, r1, r5
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x18
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02234584:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225C74
	cmp r0, #0
	bne _02234648
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #1
	str r0, [r4, #4]
	add r4, #0x3c
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	str r1, [sp]
	bl ov12_02226108
	add sp, #8
	pop {r3, r4, r5, pc}
_022345AC:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r4, #0
	ldr r3, [r4, #0x10]
	add r0, #0x3c
	add r1, r5, #0
	bl ov12_0222619C
	cmp r0, #0
	bne _02234648
	ldr r0, [r4, #4]
	mov r5, #4
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x16
	ldrsh r3, [r4, r0]
	mov r0, #0x14
	ldrsh r2, [r4, r0]
	add r0, r4, #0
	add r0, #0x18
	str r3, [sp]
	str r5, [sp, #4]
	ldr r1, [r4, #8]
	ldr r4, [r4, #0xc]
	sub r5, #0x2c
	mul r5, r1
	lsl r4, r4, #4
	add r1, r2, r5
	add r3, r3, r4
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	asr r1, r1, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	add sp, #8
	pop {r3, r4, r5, pc}
_0223460A:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225C74
	cmp r0, #0
	bne _02234648
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02234622:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02234648:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02234528

	thumb_func_start ov12_0223464C
ov12_0223464C: ; 0x0223464C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0x60
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	str r5, [r4, #0]
	bl ov12_02220248
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0222598C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, _022346A0 ; =ov12_02234528
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	nop
_022346A0: .word ov12_02234528
	thumb_func_end ov12_0223464C

	thumb_func_start ov12_022346A4
ov12_022346A4: ; 0x022346A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #0xac
	add r6, r2, #0
	str r3, [sp]
	bl ov12_02235E50
	str r4, [r0, #0]
	str r0, [sp, #4]
	str r6, [r0, #0xc]
	add r0, r4, #0
	bl ov12_02220240
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02225964
	ldr r1, [sp, #4]
	str r0, [r1, #0x10]
	ldr r1, [r1, #0]
	add r0, sp, #8
	bl ov12_0222329C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, sp, #8
	strh r0, [r1]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov12_022258E0
	add r1, sp, #8
	ldr r5, [sp, #4]
	strh r0, [r1, #2]
	mov r4, #0
_022346F8:
	cmp r4, #0
	add r2, sp, #8
	bne _02234712
	ldr r0, [sp]
	mov r1, #0
	str r0, [r5, #0x14]
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	bl sub_0200D4C4
	b _0223471C
_02234712:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200CE6C
	str r0, [r5, #0x14]
_0223471C:
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x14]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0200D460
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _022346F8
	ldr r0, [sp, #4]
	ldr r1, _0223474C ; =ov12_02234750
	ldr r0, [r0, #0]
	ldr r2, [sp, #4]
	bl ov12_022201E8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223474C: .word ov12_02234750
	thumb_func_end ov12_022346A4

	thumb_func_start ov12_02234750
ov12_02234750: ; 0x02234750
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02234834
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234768: ; jump table
	.short _02234772 - _02234768 - 2 ; case 0
	.short _0223479A - _02234768 - 2 ; case 1
	.short _022347BA - _02234768 - 2 ; case 2
	.short _022347EC - _02234768 - 2 ; case 3
	.short _02234812 - _02234768 - 2 ; case 4
_02234772:
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x10]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223483C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	b _02234834
_0223479A:
	ldr r0, [r4, #8]
	add r2, r4, #0
	sub r0, r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _02234834
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234834
_022347BA:
	add r2, r4, #0
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x10]
	add r1, #0x40
	add r2, #0x88
	bl ov12_0223483C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x40
	add r2, #0x88
	bl ov12_0223489C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234834
_022347EC:
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x40
	add r2, #0x88
	bl ov12_0223489C
	cmp r0, #0
	beq _02234834
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234834
_02234812:
	mov r6, #0
	add r5, r4, #0
_02234816:
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _02234816
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02234834:
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02234750

	thumb_func_start ov12_0223483C
ov12_0223483C: ; 0x0223483C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	mov r1, #2
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0200D6A4
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D3F4
	add r1, sp, #8
	add r0, r5, #0
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	add r1, sp, #8
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	add r0, r3, #0
	sub r0, #0x20
	lsl r0, r0, #0x10
	lsl r2, r4, #4
	asr r0, r0, #0x10
	add r2, r1, r2
	str r0, [sp]
	mov r0, #0x20
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0x20
	mov r2, #0xa
	str r0, [sp]
	add r0, r7, #0
	mov r1, #2
	add r3, r2, #0
	bl ov12_02225E68
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223483C

	thumb_func_start ov12_0223489C
ov12_0223489C: ; 0x0223489C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r1, r5, #0
	bl ov12_02225C50
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022260A8
	cmp r0, #0
	beq _022348BA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022348BA:
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223489C

	thumb_func_start ov12_022348C8
ov12_022348C8: ; 0x022348C8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x3c
	add r6, r0, #0
	add r7, r2, #0
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	str r7, [r4, #0xc]
	str r5, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x10]
	bl sub_0200D43C
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, _02234914 ; =ov12_02234918
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234914: .word ov12_02234918
	thumb_func_end ov12_022348C8

	thumb_func_start ov12_02234918
ov12_02234918: ; 0x02234918
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02234A04
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234932: ; jump table
	.short _0223493C - _02234932 - 2 ; case 0
	.short _0223496C - _02234932 - 2 ; case 1
	.short _02234992 - _02234932 - 2 ; case 2
	.short _022349D0 - _02234932 - 2 ; case 3
	.short _022349EC - _02234932 - 2 ; case 4
_0223493C:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x14
	bl ov12_02226424
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x14
	bl ov12_02235780
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234A04
_0223496C:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02234A04
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0200D390
	mov r1, #1
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_0200D3A4
	b _02234A04
_02234992:
	ldr r0, [r4, #0x10]
	bl sub_0200D3E0
	mov r1, #3
	bl sub_020E1F6C
	ldr r2, [r4, #8]
	ldr r0, [r4, #0x10]
	add r1, r2, r1
	bl sub_0200D430
	ldr r0, [r4, #0x10]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02234A04
	ldr r0, [r4, #4]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0
	mov r3, #4
	bl ov12_02226424
	b _02234A04
_022349D0:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02234A04
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0200D3F4
	b _02234A04
_022349EC:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02234A04:
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02234918

	thumb_func_start ov12_02234A10
ov12_02234A10: ; 0x02234A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0x54
	add r5, r0, #0
	str r3, [sp, #0xc]
	bl ov12_02235E50
	ldr r1, [sp, #8]
	str r5, [r0, #0]
	str r0, [sp, #0x14]
	str r1, [r0, #8]
	ldr r0, [r0, #0]
	bl ov12_02220240
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02225964
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0]
	add r0, sp, #0x18
	bl ov12_0222329C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, sp, #0x18
	strh r0, [r1]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov12_022258E0
	ldr r7, [sp, #0x14]
	ldr r6, [sp, #0x14]
	ldr r5, [sp, #0x14]
	add r1, sp, #0x18
	add r7, #0x3c
	add r6, #0x24
	strh r0, [r1, #2]
	mov r4, #5
	add r5, #0x14
	add r7, #0x14
	add r6, #0x14
_02234A74:
	cmp r4, #5
	add r2, sp, #0x18
	bne _02234A8E
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r0, [r5, #0xc]
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	bl sub_0200D4C4
	b _02234A98
_02234A8E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_0200CE6C
	str r0, [r5, #0xc]
_02234A98:
	ldr r0, [r5, #0xc]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r2, r7, #0
	add r3, r4, #0
	bl ov12_02234AE0
	sub r5, r5, #4
	sub r7, r7, #4
	sub r6, r6, #4
	sub r4, r4, #1
	bpl _02234A74
	ldr r0, [sp, #0x14]
	ldr r1, _02234ADC ; =ov12_02234B64
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x14]
	bl ov12_022201E8
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02234ADC: .word ov12_02234B64
	thumb_func_end ov12_02234A10

	thumb_func_start ov12_02234AE0
ov12_02234AE0: ; 0x02234AE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r1, #0
	lsr r1, r4, #0x1f
	add r1, r4, r1
	asr r1, r1, #1
	add r5, r0, #0
	add r7, r2, #0
	bl sub_0200D364
	lsl r0, r4, #1
	str r0, [r7, #0]
	mov r0, #0x10
	add r1, sp, #0
	str r0, [r6, #0]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r1, #2
	add r6, r1, #0
	add r2, sp, #0
	sub r6, #0xe
	mul r6, r4
	ldr r0, [sp, #0x18]
	ldrsh r3, [r2, r1]
	add r6, #0x28
	add r4, r0, #0
	mul r4, r6
	add r0, r3, r4
	mov r3, #0
	strh r0, [r2, #2]
	ldrsh r0, [r2, r3]
	add r0, #0x28
	strh r0, [r2]
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r5, #0
	bl sub_0200D4C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02234AE0

	thumb_func_start ov12_02234B34
ov12_02234B34: ; 0x02234B34
	push {r3, lr}
	ldr r3, [r2, #0]
	cmp r3, #0
	ble _02234B4A
	sub r1, r3, #1
	str r1, [r2, #0]
	bne _02234B60
	mov r1, #1
	bl sub_0200D3F4
	b _02234B60
_02234B4A:
	ldr r2, [r1, #0]
	cmp r2, #0
	ble _02234B56
	sub r0, r2, #1
	str r0, [r1, #0]
	b _02234B60
_02234B56:
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #1
	pop {r3, pc}
_02234B60:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov12_02234B34

	thumb_func_start ov12_02234B64
ov12_02234B64: ; 0x02234B64
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r1, #4]
	str r1, [sp]
	cmp r0, #0
	beq _02234B76
	cmp r0, #1
	beq _02234BA8
	b _02234BCC
_02234B76:
	add r6, r1, #0
	add r4, r1, #0
	mov r7, #0
	add r6, #0x3c
	add r4, #0x24
	add r5, r1, #0
_02234B82:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_02234B34
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #6
	blt _02234B82
	cmp r0, #0
	beq _02234BCC
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _02234BCC
_02234BA8:
	mov r5, #0
	add r4, r1, #0
_02234BAC:
	ldr r0, [r4, #0xc]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _02234BAC
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl ov12_02220220
	ldr r0, [sp]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02234BCC:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02234B64

	thumb_func_start ov12_02234BD8
ov12_02234BD8: ; 0x02234BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r7, #0
	add r6, r5, #0
	str r1, [sp, #0x10]
	add r6, #0x30
	add r4, r7, #0
_02234BE8:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x32
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r2, _02234C28 ; =0x00007FFF
	add r0, r6, #0
	add r3, r1, #0
	bl ov12_02225A5C
	ldr r0, [r5, #0x38]
	add r7, r7, #1
	add r0, r0, r4
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x48]
	ldr r0, [sp, #0x10]
	add r6, #0x24
	mul r0, r1
	str r0, [r5, #0x48]
	ldr r0, _02234C2C ; =0x00002AAA
	add r5, #0x24
	add r4, r4, r0
	cmp r7, #6
	blt _02234BE8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02234C28: .word 0x00007FFF
_02234C2C: .word 0x00002AAA
	thumb_func_end ov12_02234BD8

	thumb_func_start ov12_02234C30
ov12_02234C30: ; 0x02234C30
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	add r4, r6, #0
	add r5, r6, #0
_02234C40:
	add r0, r7, #0
	bl ov12_02225AE0
	mov r1, #0x13
	lsl r1, r1, #4
	mov r2, #0x30
	ldrsh r1, [r6, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x18]
	add r1, r1, r2
	ldr r2, _02234C9C ; =0x00000132
	lsl r1, r1, #0x10
	ldrsh r2, [r6, r2]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	ldr r1, [r4, #0x38]
	ldr r0, _02234CA0 ; =0x00003FFF
	cmp r1, r0
	blt _02234C78
	ldr r0, _02234CA4 ; =0x0000BF49
	cmp r1, r0
	bgt _02234C78
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D460
	b _02234C88
_02234C78:
	ldr r0, [r6, #0]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x18]
	add r1, r1, #1
	bl sub_0200D460
_02234C88:
	ldr r0, [sp]
	add r7, #0x24
	add r0, r0, #1
	add r4, #0x24
	add r5, r5, #4
	str r0, [sp]
	cmp r0, #6
	blt _02234C40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234C9C: .word 0x00000132
_02234CA0: .word 0x00003FFF
_02234CA4: .word 0x0000BF49
	thumb_func_end ov12_02234C30

	thumb_func_start ov12_02234CA8
ov12_02234CA8: ; 0x02234CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _02234D8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234CC2: ; jump table
	.short _02234CCC - _02234CC2 - 2 ; case 0
	.short _02234D02 - _02234CC2 - 2 ; case 1
	.short _02234D22 - _02234CC2 - 2 ; case 2
	.short _02234D4E - _02234CC2 - 2 ; case 3
	.short _02234D6A - _02234CC2 - 2 ; case 4
_02234CCC:
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0xf
	bl ov12_02235780
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x10
	mov r3, #0xf
	bl ov12_02226424
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl ov12_02234BD8
	add r0, r4, #0
	bl ov12_02234C30
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02234D8E
_02234D02:
	add r0, r4, #0
	bl ov12_02234C30
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _02234D8E
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x1c
	str r0, [r4, #0x10]
	b _02234D8E
_02234D22:
	add r0, r4, #0
	bl ov12_02234C30
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _02234D8E
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r2, #1
	mov r3, #0
	bl ov12_02226424
	b _02234D8E
_02234D4E:
	add r0, r4, #0
	bl ov12_02234C30
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _02234D8E
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02234D8E
_02234D6A:
	mov r6, #0
	add r5, r4, #0
_02234D6E:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _02234D6E
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02234D8E:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02234CA8

	thumb_func_start ov12_02234D98
ov12_02234D98: ; 0x02234D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	mov r1, #0x4d
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	mov r1, #0x13
	lsl r1, r1, #4
	strh r0, [r6, r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	ldr r1, _02234E3C ; =0x00000132
	strh r0, [r6, r1]
	add r0, sp, #4
	add r1, r4, #0
	bl ov12_0222329C
	mov r4, #0
	add r5, r6, #0
_02234DEA:
	cmp r4, #0
	bne _02234DF2
	str r7, [r5, #0x18]
	b _02234DFE
_02234DF2:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r5, #0x18]
_02234DFE:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D390
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02234DEA
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_02225964
	str r0, [r6, #0x14]
	ldr r0, [r6, #0]
	ldr r1, _02234E40 ; =ov12_02234CA8
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234E3C: .word 0x00000132
_02234E40: .word ov12_02234CA8
	thumb_func_end ov12_02234D98

	thumb_func_start ov12_02234E44
ov12_02234E44: ; 0x02234E44
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02234E44

	thumb_func_start ov12_02234E4C
ov12_02234E4C: ; 0x02234E4C
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02234E4C

	thumb_func_start ov12_02234E54
ov12_02234E54: ; 0x02234E54
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl ov12_0221FDE4
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #3
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	lsl r2, r1, #4
	ldr r1, _02234EE4 ; =0x0223A1D8
	add r3, r4, #0
	ldr r1, [r1, r2]
	ldr r2, [r5, #0x2c]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x30]
	lsl r3, r2, #4
	ldr r2, _02234EE8 ; =0x0223A1DC
	ldr r1, [r5, #0]
	ldr r2, [r2, r3]
	add r3, r6, #0
	bl sub_02003050
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x2c]
	lsr r1, r1, #0x18
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	lsl r2, r1, #4
	ldr r1, _02234EEC ; =0x0223A1E0
	add r3, r4, #0
	ldr r1, [r1, r2]
	ldr r2, [r5, #0x2c]
	bl sub_02006E60
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02234EE4: .word 0x0223A1D8
_02234EE8: .word 0x0223A1DC
_02234EEC: .word 0x0223A1E0
	thumb_func_end ov12_02234E54

	thumb_func_start ov12_02234EF0
ov12_02234EF0: ; 0x02234EF0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #3
	bhi _02234FAC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02234F08: ; jump table
	.short _02234F10 - _02234F08 - 2 ; case 0
	.short _02234F20 - _02234F08 - 2 ; case 1
	.short _02234F38 - _02234F08 - 2 ; case 2
	.short _02234F58 - _02234F08 - 2 ; case 3
_02234F10:
	add r0, r4, #0
	mov r1, #2
	bl ov12_02234E54
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _02234FFA
_02234F20:
	ldrh r0, [r4, #0x16]
	mov r1, #4
	mov r2, #0x39
	str r0, [sp]
	ldrh r3, [r4, #0x14]
	ldr r0, _02235048 ; =0x04000050
	bl sub_020BF55C
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _02234FFA
_02234F38:
	add r1, r4, #0
	add r1, #0x40
	ldrb r1, [r1]
	cmp r1, #0x14
	bls _02234F48
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _02234FFA
_02234F48:
	add r0, r4, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x40
	strb r1, [r0]
	b _02234FFA
_02234F58:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02234F62
	sub r0, r0, #1
	strh r0, [r4, #0x14]
_02234F62:
	ldrh r0, [r4, #0x16]
	cmp r0, #0x10
	bhs _02234F6C
	add r0, r0, #1
	strh r0, [r4, #0x16]
_02234F6C:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _02234F9E
	ldrh r0, [r4, #0x16]
	cmp r0, #0x10
	bne _02234F9E
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_02234F9E:
	ldrh r0, [r4, #0x16]
	ldrh r1, [r4, #0x14]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0223504C ; =0x04000052
	strh r1, [r0]
	b _02234FFA
_02234FAC:
	ldr r0, _02235050 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02235054 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	mov r2, #0
	ldr r0, [r4, #0x2c]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0x2c]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02235058 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	pop {r3, r4, r5, pc}
_02234FFA:
	mov r3, #0x10
	mov r0, #0xc
	ldrsh r1, [r4, r3]
	ldrsh r0, [r4, r0]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r4, #0x10]
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0x12]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl sub_02019184
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	ldr r0, [r4, #0x34]
	bl sub_0200D330
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x3c]
	bl sub_0200D330
	ldr r0, [r4, #0x24]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	nop
_02235048: .word 0x04000050
_0223504C: .word 0x04000052
_02235050: .word 0x0400004A
_02235054: .word 0xFFFFC0FF
_02235058: .word 0xFFFF1FFF
	thumb_func_end ov12_02234EF0

	thumb_func_start ov12_0223505C
ov12_0223505C: ; 0x0223505C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #7
	str r1, [r4, #0]
	add r5, r0, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223505C

	thumb_func_start ov12_0223507C
ov12_0223507C: ; 0x0223507C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x44
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	bl ov12_0223595C
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov12_02223428
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl sub_0200D460
	ldr r0, [r4, #0x38]
	mov r1, #2
	bl sub_0200D460
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _022350E6
	add r0, r6, #0
	bl ov12_02220240
	b _022350EC
_022350E6:
	add r0, r6, #0
	bl ov12_02220248
_022350EC:
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r6, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02235124
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov12_02223428
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_0200D460
	ldr r0, [r4, #0x38]
	add r1, r5, #0
	bl sub_0200D460
	b _02235148
_02235124:
	cmp r5, #1
	bhi _02235132
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	b _02235148
_02235132:
	sub r0, r5, #3
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bhi _02235142
	mov r1, #3
	bl sub_0200D460
	b _02235148
_02235142:
	mov r1, #1
	bl sub_0200D460
_02235148:
	ldr r0, _02235194 ; =0x0400004A
	ldr r1, _02235198 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x16
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _0223519C ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #0xa
	orr r0, r2
	str r0, [r3, #0]
	ldr r0, [r4, #0x38]
	mov r1, #2
	bl sub_0200D810
	mov r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0x1c]
	ldr r1, _022351A0 ; =ov12_02234EF0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02235194: .word 0x0400004A
_02235198: .word 0xFFFFC0FF
_0223519C: .word 0xFFFF1FFF
_022351A0: .word ov12_02234EF0
	thumb_func_end ov12_0223507C

	thumb_func_start ov12_022351A4
ov12_022351A4: ; 0x022351A4
	push {r4, lr}
	sub sp, #0x18
	add r1, sp, #0
	add r4, r0, #0
	bl ov12_0223505C
	add r0, sp, #0
	mov r1, #0
	mov r2, #3
	bl ov12_02234E44
	add r0, sp, #0
	mov r1, #0xc
	mov r2, #4
	bl ov12_02234E4C
	add r0, r4, #0
	add r1, sp, #0
	bl ov12_0223507C
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov12_022351A4

	thumb_func_start ov12_022351D0
ov12_022351D0: ; 0x022351D0
	push {r4, lr}
	sub sp, #0x18
	add r1, sp, #0
	add r4, r0, #0
	bl ov12_0223505C
	mov r1, #0
	add r0, sp, #0
	sub r2, r1, #3
	bl ov12_02234E44
	add r0, sp, #0
	mov r1, #0xc
	mov r2, #4
	bl ov12_02234E4C
	add r0, r4, #0
	add r1, sp, #0
	bl ov12_0223507C
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov12_022351D0

	thumb_func_start ov12_022351FC
ov12_022351FC: ; 0x022351FC
	push {r4, lr}
	sub sp, #0x18
	add r1, sp, #0
	add r4, r0, #0
	bl ov12_0223505C
	add r0, sp, #0
	mov r1, #0
	mov r2, #3
	bl ov12_02234E44
	add r0, sp, #0
	mov r1, #0xc
	mov r2, #4
	bl ov12_02234E4C
	add r0, r4, #0
	add r1, sp, #0
	bl ov12_0223507C
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov12_022351FC

	thumb_func_start ov12_02235228
ov12_02235228: ; 0x02235228
	push {r4, lr}
	sub sp, #0x18
	add r1, sp, #0
	add r4, r0, #0
	bl ov12_0223505C
	mov r1, #0
	add r0, sp, #0
	sub r2, r1, #6
	bl ov12_02234E44
	add r0, sp, #0
	mov r1, #0xc
	mov r2, #4
	bl ov12_02234E4C
	add r0, r4, #0
	add r1, sp, #0
	bl ov12_0223507C
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov12_02235228

	thumb_func_start ov12_02235254
ov12_02235254: ; 0x02235254
	ldr r3, _02235258 ; =ov12_022232B8
	bx r3
	; .align 2, 0
_02235258: .word ov12_022232B8
	thumb_func_end ov12_02235254

	thumb_func_start ov12_0223525C
ov12_0223525C: ; 0x0223525C
	push {r4, lr}
	bl ov12_022232B8
	cmp r0, #5
	bhi _02235284
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235272: ; jump table
	.short _0223527E - _02235272 - 2 ; case 0
	.short _02235282 - _02235272 - 2 ; case 1
	.short _0223527E - _02235272 - 2 ; case 2
	.short _02235282 - _02235272 - 2 ; case 3
	.short _0223527E - _02235272 - 2 ; case 4
	.short _02235282 - _02235272 - 2 ; case 5
_0223527E:
	mov r4, #3
	b _02235284
_02235282:
	mov r4, #4
_02235284:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov12_0223525C

	thumb_func_start ov12_02235288
ov12_02235288: ; 0x02235288
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02235290:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_022232B8
	cmp r0, r5
	bne _022352A0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352A0:
	add r4, r4, #1
	cmp r4, #4
	blt _02235290
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02235288

	thumb_func_start ov12_022352AC
ov12_022352AC: ; 0x022352AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov12_022232B8
	add r5, r0, #0
	cmp r5, #1
	bls _0223530C
	mov r4, #0
_022352BC:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_022232B8
	cmp r5, #5
	bhi _02235300
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022352D4: ; jump table
	.short _02235300 - _022352D4 - 2 ; case 0
	.short _02235300 - _022352D4 - 2 ; case 1
	.short _022352E0 - _022352D4 - 2 ; case 2
	.short _022352F0 - _022352D4 - 2 ; case 3
	.short _022352E8 - _022352D4 - 2 ; case 4
	.short _022352F8 - _022352D4 - 2 ; case 5
_022352E0:
	cmp r0, #4
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352E8:
	cmp r0, #2
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352F0:
	cmp r0, #5
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352F8:
	cmp r0, #3
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02235300:
	add r4, r4, #1
	cmp r4, #4
	blt _022352BC
	bl sub_02022974
	add r0, r5, #0
_0223530C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022352AC

	thumb_func_start ov12_02235310
ov12_02235310: ; 0x02235310
	push {r3, lr}
	cmp r0, #5
	bhi _02235346
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235322: ; jump table
	.short _0223532E - _02235322 - 2 ; case 0
	.short _02235332 - _02235322 - 2 ; case 1
	.short _02235336 - _02235322 - 2 ; case 2
	.short _0223533A - _02235322 - 2 ; case 3
	.short _0223533E - _02235322 - 2 ; case 4
	.short _02235342 - _02235322 - 2 ; case 5
_0223532E:
	mov r0, #1
	pop {r3, pc}
_02235332:
	mov r0, #0
	pop {r3, pc}
_02235336:
	mov r0, #3
	pop {r3, pc}
_0223533A:
	mov r0, #2
	pop {r3, pc}
_0223533E:
	mov r0, #5
	pop {r3, pc}
_02235342:
	mov r0, #4
	pop {r3, pc}
_02235346:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02235310

	thumb_func_start ov12_02235350
ov12_02235350: ; 0x02235350
	push {r3, r4, r5, r6}
	sub sp, #0x30
	ldr r6, _022353A4 ; =0x0223A230
	add r5, sp, #0x18
	mov r4, #0xc
_0223535A:
	ldrh r3, [r6]
	add r6, r6, #2
	strh r3, [r5]
	add r5, r5, #2
	sub r4, r4, #1
	bne _0223535A
	ldr r6, _022353A8 ; =0x0223A248
	add r5, sp, #0
	mov r4, #0xc
_0223536C:
	ldrh r3, [r6]
	add r6, r6, #2
	strh r3, [r5]
	add r5, r5, #2
	sub r4, r4, #1
	bne _0223536C
	cmp r1, #0
	beq _02235390
	lsl r3, r0, #2
	add r0, sp, #0
	add r1, r0, r3
	ldrh r0, [r0, r3]
	add sp, #0x30
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	pop {r3, r4, r5, r6}
	bx lr
_02235390:
	lsl r3, r0, #2
	add r0, sp, #0x18
	add r1, r0, r3
	ldrh r0, [r0, r3]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	add sp, #0x30
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_022353A4: .word 0x0223A230
_022353A8: .word 0x0223A248
	thumb_func_end ov12_02235350

	thumb_func_start ov12_022353AC
ov12_022353AC: ; 0x022353AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov12_02235254
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDD4
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov12_02235350
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022353AC

	thumb_func_start ov12_022353CC
ov12_022353CC: ; 0x022353CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x114
	add r7, r2, #0
	mov r2, #0x12
	str r3, [sp]
	ldr r6, _02235440 ; =0x0223A260
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	lsl r2, r2, #4
_022353E8:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022353E8
	cmp r7, #1
	bne _0223540A
	cmp r5, #0
	beq _022353FE
	cmp r5, #1
	beq _02235402
	b _02235406
_022353FE:
	mov r5, #6
	b _0223540A
_02235402:
	mov r5, #7
	b _0223540A
_02235406:
	bl sub_02022974
_0223540A:
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, sp, #4
	mul r0, r5
	add r0, r1, r0
	ldr r1, _02235444 ; =0x00000908
	add r1, sp
	ldr r1, [r1, #0x10]
	lsl r2, r1, #1
	ldr r1, [sp]
	add r2, r1, r2
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	add r1, r0, r3
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	ldr r0, [r0, r3]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x114
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235440: .word 0x0223A260
_02235444: .word 0x00000908
	thumb_func_end ov12_022353CC

	thumb_func_start ov12_02235448
ov12_02235448: ; 0x02235448
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235448

	thumb_func_start ov12_02235458
ov12_02235458: ; 0x02235458
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235458

	thumb_func_start ov12_02235468
ov12_02235468: ; 0x02235468
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235468

	thumb_func_start ov12_02235478
ov12_02235478: ; 0x02235478
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #3
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235478

	thumb_func_start ov12_02235488
ov12_02235488: ; 0x02235488
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #4
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235488

	thumb_func_start ov12_02235498
ov12_02235498: ; 0x02235498
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #5
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235498

	thumb_func_start ov12_022354A8
ov12_022354A8: ; 0x022354A8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #6
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354A8

	thumb_func_start ov12_022354B8
ov12_022354B8: ; 0x022354B8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #7
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354B8

	thumb_func_start ov12_022354C8
ov12_022354C8: ; 0x022354C8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #8
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354C8

	thumb_func_start ov12_022354D8
ov12_022354D8: ; 0x022354D8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #9
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354D8

	thumb_func_start ov12_022354E8
ov12_022354E8: ; 0x022354E8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xa
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354E8

	thumb_func_start ov12_022354F8
ov12_022354F8: ; 0x022354F8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xb
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354F8

	thumb_func_start ov12_02235508
ov12_02235508: ; 0x02235508
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235448
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235508

	thumb_func_start ov12_02235538
ov12_02235538: ; 0x02235538
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235458
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235538

	thumb_func_start ov12_02235568
ov12_02235568: ; 0x02235568
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235468
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235568

	thumb_func_start ov12_02235598
ov12_02235598: ; 0x02235598
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235478
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235598

	thumb_func_start ov12_022355C8
ov12_022355C8: ; 0x022355C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235488
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022355C8

	thumb_func_start ov12_022355F8
ov12_022355F8: ; 0x022355F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235498
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022355F8

	thumb_func_start ov12_02235628
ov12_02235628: ; 0x02235628
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235628

	thumb_func_start ov12_02235658
ov12_02235658: ; 0x02235658
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235658

	thumb_func_start ov12_02235688
ov12_02235688: ; 0x02235688
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354C8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235688

	thumb_func_start ov12_022356B8
ov12_022356B8: ; 0x022356B8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022356B8

	thumb_func_start ov12_022356E8
ov12_022356E8: ; 0x022356E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354E8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022356E8

	thumb_func_start ov12_02235718
ov12_02235718: ; 0x02235718
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235718

	thumb_func_start ov12_02235748
ov12_02235748: ; 0x02235748
	mov r2, #0
	ldr r1, _02235754 ; =0x000068D0
	str r2, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	; .align 2, 0
_02235754: .word 0x000068D0
	thumb_func_end ov12_02235748

	thumb_func_start ov12_02235758
ov12_02235758: ; 0x02235758
	push {r3, lr}
	bl ov12_02235448
	pop {r3, pc}
	thumb_func_end ov12_02235758

	thumb_func_start ov12_02235760
ov12_02235760: ; 0x02235760
	push {r3, lr}
	add r3, r1, #0
	cmp r0, #0
	bne _02235770
	add r0, r3, #0
	bl sub_02014770
	pop {r3, pc}
_02235770:
	ldr r2, _0223577C ; =0x0223A224
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	pop {r3, pc}
	; .align 2, 0
_0223577C: .word 0x0223A224
	thumb_func_end ov12_02235760

	thumb_func_start ov12_02235780
ov12_02235780: ; 0x02235780
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mvn r1, r1
	add r4, r2, #0
	cmp r5, r1
	bne _02235790
	mov r5, #0x1a
_02235790:
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	bne _0223579A
	mov r4, #5
_0223579A:
	mov r1, #2
	bl ov12_022233EC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	orr r2, r1
	ldr r0, _022357B8 ; =0x04000050
	mov r1, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020BF55C
	pop {r3, r4, r5, pc}
	nop
_022357B8: .word 0x04000050
	thumb_func_end ov12_02235780

	thumb_func_start ov12_022357BC
ov12_022357BC: ; 0x022357BC
	push {r3, r4, r5, lr}
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	bne _022357CC
	mov r4, #0x1a
_022357CC:
	mov r0, #0
	mvn r0, r0
	cmp r3, r0
	bne _022357D6
	mov r3, #5
_022357D6:
	ldr r0, _022357E8 ; =0x04000050
	str r3, [sp]
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020BF55C
	pop {r3, r4, r5, pc}
	nop
_022357E8: .word 0x04000050
	thumb_func_end ov12_022357BC

	thumb_func_start ov12_022357EC
ov12_022357EC: ; 0x022357EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r5, r0
	bne _022357FE
	mov r5, #0x1a
_022357FE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02235808
	mov r4, #5
_02235808:
	add r0, r6, #0
	mov r1, #2
	bl ov12_022233EC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0x11
	add r7, r2, #0
	orr r7, r0
	add r0, r6, #0
	bl ov12_022233EC
	mov r1, #1
	lsl r1, r0
	ldr r0, _02235834 ; =0x04000050
	add r2, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020BF55C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235834: .word 0x04000050
	thumb_func_end ov12_022357EC

	thumb_func_start ov12_02235838
ov12_02235838: ; 0x02235838
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _0223588C
	mov r1, #1
	bl ov12_022233EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_022233EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_022233EC
	add r2, r0, #0
	mov r0, #1
	add r3, r0, #0
	add r1, r0, #0
	lsl r3, r7
	lsl r0, r2
	lsl r1, r6
	orr r0, r3
	orr r1, r0
	mov r0, #0x11
	add r2, r1, #0
	orr r2, r0
	ldr r0, _0223590C ; =0x04000048
	ldrh r1, [r0]
	mov r0, #0x3f
	bic r1, r0
	orr r1, r2
	cmp r4, #0
	beq _02235886
	mov r0, #0x20
	orr r1, r0
_02235886:
	ldr r0, _0223590C ; =0x04000048
	strh r1, [r0]
	b _022358D6
_0223588C:
	mov r1, #1
	bl ov12_022233EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_022233EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_022233EC
	add r2, r0, #0
	mov r0, #1
	add r3, r0, #0
	add r1, r0, #0
	lsl r0, r2
	lsl r3, r7
	lsl r1, r6
	orr r0, r3
	orr r1, r0
	ldr r2, _0223590C ; =0x04000048
	add r3, r1, #0
	mov r0, #0x11
	orr r3, r0
	ldrh r1, [r2]
	ldr r0, _02235910 ; =0xFFFFC0FF
	and r1, r0
	lsl r0, r3, #8
	orr r1, r0
	cmp r4, #0
	beq _022358D2
	lsr r0, r2, #0xd
	orr r1, r0
_022358D2:
	ldr r0, _0223590C ; =0x04000048
	strh r1, [r0]
_022358D6:
	add r0, r5, #0
	mov r1, #0
	bl ov12_022233EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233EC
	mov r1, #1
	add r2, r1, #0
	lsl r1, r0
	lsl r2, r4
	orr r1, r2
	add r3, r1, #0
	ldr r1, _02235914 ; =0x0400004A
	mov r0, #0x11
	orr r3, r0
	ldrh r2, [r1]
	mov r0, #0x3f
	bic r2, r0
	orr r2, r3
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223590C: .word 0x04000048
_02235910: .word 0xFFFFC0FF
_02235914: .word 0x0400004A
	thumb_func_end ov12_02235838

	thumb_func_start ov12_02235918
ov12_02235918: ; 0x02235918
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0223592A
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
_0223592A:
	bl sub_02008B38
	cmp r0, #0
	bne _0223593A
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
_0223593A:
	add r0, r5, #0
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02235918

	thumb_func_start ov12_02235950
ov12_02235950: ; 0x02235950
	ldr r3, _02235958 ; =sub_0200D550
	add r2, r1, #2
	bx r3
	nop
_02235958: .word sub_0200D550
	thumb_func_end ov12_02235950

	thumb_func_start ov12_0223595C
ov12_0223595C: ; 0x0223595C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	add r5, r0, #0
	strb r1, [r4, #3]
	str r5, [r4, #4]
	bl ov12_02220308
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov12_02220300
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov12_02220278
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_0222332C
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223595C

	thumb_func_start ov12_02235998
ov12_02235998: ; 0x02235998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r4, r3, #0
	mov r1, #0
	str r1, [r4, #0]
	mov r1, #0x40
	and r1, r7
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x40
	beq _022359B2
	b _02235AD4
_022359B2:
	bl ov12_02220240
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _022359F4
	str r7, [r1, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022359F4:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022352AC
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02235A3C
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235A3C:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232B8
	bl ov12_02235310
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02235288
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02235A8E
	str r7, [r1, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235A8E:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022352AC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232FC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _02235BB6
	str r7, [r2, #0x10]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02235AD4:
	mov r1, #0x20
	and r1, r7
	cmp r1, #0x20
	bne _02235BD4
	bl ov12_02220240
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	cmp r0, r7
	beq _02235B2E
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02235B2E
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235B2E:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232B8
	bl ov12_02235310
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02235288
	str r0, [sp]
	cmp r0, r7
	beq _02235B86
	ldr r1, [sp]
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02235B86
	ldr r1, [sp]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235B86:
	ldr r1, [sp]
	add r0, r6, #0
	bl ov12_022352AC
	str r0, [sp, #0xc]
	cmp r0, r7
	beq _02235BB6
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov12_022232FC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _02235BB8
_02235BB6:
	b _02235D6E
_02235BB8:
	ldr r0, [sp, #0xc]
	str r0, [r2, #0x10]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02235BD4:
	mov r1, #2
	and r1, r7
	cmp r1, #2
	bne _02235C2E
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235C2E
	add r0, r6, #0
	bl ov12_02220240
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235C2E:
	add r0, r6, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02235CA4
	mov r0, #4
	and r0, r7
	cmp r0, #4
	bne _02235CA4
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235CA4
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235CA4:
	mov r0, #8
	and r0, r7
	cmp r0, #8
	bne _02235D00
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235D00
	add r0, r6, #0
	bl ov12_02220248
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235D00:
	add r0, r6, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02235D6E
	mov r0, #0x10
	and r0, r7
	cmp r0, #0x10
	bne _02235D6E
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235D6E
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #0x10]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235D6E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02235998

	thumb_func_start ov12_02235D74
ov12_02235D74: ; 0x02235D74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r3, #0
	mov r1, #0
	str r1, [r4, #0]
	mov r1, #2
	and r1, r6
	add r7, r0, #0
	add r5, r2, #0
	cmp r1, #2
	bne _02235DB4
	ldr r1, [r4, #0]
	bl ov12_022202C0
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235DB4:
	mov r0, #4
	and r0, r6
	cmp r0, #4
	bne _02235DE8
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov12_022202C0
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235DE8:
	mov r0, #8
	and r0, r6
	cmp r0, #8
	bne _02235E1C
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov12_022202C0
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235E1C:
	mov r0, #0x10
	and r0, r6
	cmp r0, #0x10
	bne _02235E4C
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov12_022202C0
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #0xc]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235E4C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02235D74

	thumb_func_start ov12_02235E50
ov12_02235E50: ; 0x02235E50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02235E5E
	bl sub_02022974
_02235E5E:
	add r0, r4, #0
	bl ov12_0221FDE4
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02235E72
	bl sub_02022974
_02235E72:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02235E50

	thumb_func_start ov12_02235E80
ov12_02235E80: ; 0x02235E80
	push {r4, lr}
	add r4, r0, #0
	bne _02235E8A
	bl sub_02022974
_02235E8A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02235E80

	thumb_func_start ov12_02235E94
ov12_02235E94: ; 0x02235E94
	cmp r0, #1
	blt _02235E9E
	ldr r1, _02235EAC ; =0x00000113
	cmp r0, r1
	ble _02235EA2
_02235E9E:
	mov r0, #4
	b _02235EA8
_02235EA2:
	cmp r0, #0xff
	blt _02235EA8
	sub r0, #0xff
_02235EA8:
	sub r0, r0, #1
	bx lr
	; .align 2, 0
_02235EAC: .word 0x00000113
	thumb_func_end ov12_02235E94

	thumb_func_start ov12_02235EB0
ov12_02235EB0: ; 0x02235EB0
	push {r3, r4, r5}
	sub sp, #0x2c
	ldr r5, _02235EEC ; =0x0223AC0C
	add r2, r0, #0
	add r4, sp, #0
	mov r3, #5
_02235EBC:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _02235EBC
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #0
	add r3, r0, #0
	add r4, sp, #0
_02235ECE:
	ldr r1, [r4, #0]
	cmp r2, r1
	bne _02235EDC
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, r5}
	bx lr
_02235EDC:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #0xb
	blo _02235ECE
	add sp, #0x2c
	pop {r3, r4, r5}
	bx lr
	nop
_02235EEC: .word 0x0223AC0C
	thumb_func_end ov12_02235EB0

	thumb_func_start ov12_02235EF0
ov12_02235EF0: ; 0x02235EF0
	push {r4, r5}
	sub sp, #0x18
	ldr r3, _02235F28 ; =0x0223AB6C
	add r2, sp, #0
	add r5, r0, #0
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r2, r0, #0
_02235F0C:
	ldr r1, [r4, #0]
	cmp r5, r1
	bne _02235F1A
	add sp, #0x18
	mov r0, #1
	pop {r4, r5}
	bx lr
_02235F1A:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #6
	blo _02235F0C
	add sp, #0x18
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02235F28: .word 0x0223AB6C
	thumb_func_end ov12_02235EF0

	thumb_func_start ov12_02235F2C
ov12_02235F2C: ; 0x02235F2C
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _02235F60 ; =0x0223AB60
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #1
	mov r4, #0
_02235F44:
	ldr r1, [r2, #0]
	cmp r3, r1
	bne _02235F52
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5}
	bx lr
_02235F52:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #3
	blo _02235F44
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_02235F60: .word 0x0223AB60
	thumb_func_end ov12_02235F2C

	thumb_func_start ov12_02235F64
ov12_02235F64: ; 0x02235F64
	push {r3, lr}
	bl ov12_02235E94
	lsl r1, r0, #3
	ldr r0, _02235F74 ; =0x0223AD70
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02235F74: .word 0x0223AD70
	thumb_func_end ov12_02235F64

	thumb_func_start ov12_02235F78
ov12_02235F78: ; 0x02235F78
	push {r3, lr}
	bl ov12_02235E94
	lsl r1, r0, #3
	ldr r0, _02235F88 ; =0x0223AD74
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02235F88: .word 0x0223AD74
	thumb_func_end ov12_02235F78

	thumb_func_start ov12_02235F8C
ov12_02235F8C: ; 0x02235F8C
	push {r3, lr}
	bl ov12_02235E94
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02235F9C ; =0x0223AE10
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02235F9C: .word 0x0223AE10
	thumb_func_end ov12_02235F8C

	thumb_func_start ov12_02235FA0
ov12_02235FA0: ; 0x02235FA0
	push {r3, lr}
	bl ov12_02235E94
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02235FB0 ; =0x0223AE18
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02235FB0: .word 0x0223AE18
	thumb_func_end ov12_02235FA0

	thumb_func_start ov12_02235FB4
ov12_02235FB4: ; 0x02235FB4
	push {r3, lr}
	bl ov12_02235E94
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02235FC4 ; =0x0223AE14
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02235FC4: .word 0x0223AE14
	thumb_func_end ov12_02235FB4

	thumb_func_start ov12_02235FC8
ov12_02235FC8: ; 0x02235FC8
	push {r4, lr}
	add r4, r1, #0
	bl ov12_02235E94
	lsl r2, r0, #4
	ldr r0, _02235FDC ; =0x0223AF00
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02235FDC: .word 0x0223AF00
	thumb_func_end ov12_02235FC8

	thumb_func_start ov12_02235FE0
ov12_02235FE0: ; 0x02235FE0
	push {r4, lr}
	mov r1, #0xb8
	add r4, r0, #0
	bl sub_02018144
	cmp r0, #0
	bne _02235FF6
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02235FF6:
	add r1, r0, #0
	str r4, [r0, #0]
	mov r2, #0
	add r1, #0x88
	str r2, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02235FE0

	thumb_func_start ov12_02236004
ov12_02236004: ; 0x02236004
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ov12_02235FE0
	add r1, r5, #0
	add r4, r0, #0
	bl ov12_02236030
	mov r1, #0
	str r1, [r4, #0x10]
	add r2, r4, #0
	add r0, r1, #0
_0223601C:
	str r0, [r2, #0x14]
	str r0, [r2, #0x38]
	str r0, [r2, #0x5c]
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #9
	blt _0223601C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02236004

	thumb_func_start ov12_02236030
ov12_02236030: ; 0x02236030
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0xa2
	str r0, [r2, #0]
	ldr r0, [r4, #0xc]
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0xd
	blt _0223605E
	bl sub_02022974
_0223605E:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223608A
	add r0, r4, #0
	mov r2, #0
	add r0, #0x94
	str r2, [r0, #0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0223607C
	add r4, #0x98
	str r0, [r4, #0]
	pop {r4, pc}
_0223607C:
	ldr r0, [r4, #0xc]
	mov r1, #0x9b
	bl sub_02074470
	add r4, #0x98
	str r0, [r4, #0]
	pop {r4, pc}
_0223608A:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r4, #0xa0
	mov r1, #0xab
	add r2, r4, #0
	bl sub_02074470
	pop {r4, pc}
	thumb_func_end ov12_02236030

	thumb_func_start ov12_022360A0
ov12_022360A0: ; 0x022360A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #3
	bls _022360B4
	b _0223631C
_022360B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022360C0: ; jump table
	.short _022360C8 - _022360C0 - 2 ; case 0
	.short _02236166 - _022360C0 - 2 ; case 1
	.short _022361F6 - _022360C0 - 2 ; case 2
	.short _02236286 - _022360C0 - 2 ; case 3
_022360C8:
	ldr r1, [r4, #0]
	mov r0, #0x63
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x14]
	add r0, #0xa0
	mov r5, #0
	add r6, #0x10
	str r0, [sp, #0x14]
_022360E4:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _02236150
	bl sub_0202CA7C
	cmp r0, #0
	beq _02236150
	cmp r0, #0x51
	bge _02236150
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223611E
	bl sub_02022974
_0223611E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223614A
	bne _02236150
	bl sub_02022974
	b _02236150
_0223614A:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02236150:
	add r5, r5, #1
	cmp r5, #2
	blt _022360E4
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02236166:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x18]
	add r0, #0xa0
	mov r5, #2
	add r6, #0x10
	str r0, [sp, #0x18]
_02236174:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _022361E0
	bl sub_0202CA7C
	cmp r0, #0
	beq _022361E0
	cmp r0, #0x51
	bge _022361E0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022361AE
	bl sub_02022974
_022361AE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #4]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022361DA
	bne _022361E0
	bl sub_02022974
	b _022361E0
_022361DA:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_022361E0:
	add r5, r5, #1
	cmp r5, #4
	blt _02236174
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022361F6:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0xa0
	mov r5, #4
	add r6, #0x10
	str r0, [sp, #0x1c]
_02236204:
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _02236270
	bl sub_0202CA7C
	cmp r0, #0
	beq _02236270
	cmp r0, #0x51
	bge _02236270
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223623E
	bl sub_02022974
_0223623E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #8]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223626A
	bne _02236270
	bl sub_02022974
	b _02236270
_0223626A:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02236270:
	add r5, r5, #1
	cmp r5, #6
	blt _02236204
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02236286:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x20]
	add r0, #0xa0
	mov r5, #6
	add r6, #0x10
	str r0, [sp, #0x20]
_02236294:
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _02236300
	bl sub_0202CA7C
	cmp r0, #0
	beq _02236300
	cmp r0, #0x51
	bge _02236300
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022362CE
	bl sub_02022974
_022362CE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022362FA
	bne _02236300
	bl sub_02022974
	b _02236300
_022362FA:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02236300:
	add r5, r5, #1
	cmp r5, #8
	blt _02236294
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x90
	add r4, #0x8c
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl sub_02006CA8
	ldr r0, [sp]
	bl sub_0200DA58
_0223631C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_022360A0

	thumb_func_start ov12_02236320
ov12_02236320: ; 0x02236320
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02236350
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov12_02235F64
	add r2, r0, #0
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	mov r1, #0x63
	mov r3, #0
	bl ov12_02223818
	str r0, [r4, #0x14]
	mov r0, #0xff
	add r4, #0x90
	str r0, [r4, #0]
	pop {r4, pc}
_02236350:
	mov r1, #0
	add r0, r4, #0
	mov r2, #0xfa
	str r1, [r4, #0x10]
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, _02236370 ; =ov12_022360A0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	add r1, r4, #0
	bl ov12_022360A0
	pop {r4, pc}
	nop
_02236370: .word ov12_022360A0
	thumb_func_end ov12_02236320

	thumb_func_start ov12_02236374
ov12_02236374: ; 0x02236374
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xff
	bne _02236380
	mov r0, #1
	bx lr
_02236380:
	mov r0, #0
	bx lr
	thumb_func_end ov12_02236374

	thumb_func_start ov12_02236384
ov12_02236384: ; 0x02236384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	add r0, #0x88
	str r1, [r0, #0]
	bl ov12_02220474
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223646C
	mov r2, #0xfa
	ldr r0, _022363B0 ; =ov12_022363CC
	add r1, r5, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	add r5, #0x84
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_022363B0: .word ov12_022363CC
	thumb_func_end ov12_02236384

	thumb_func_start ov12_022363B4
ov12_022363B4: ; 0x022363B4
	ldr r3, _022363BC ; =ov12_02236384
	ldr r1, _022363C0 ; =ov12_02236598
	bx r3
	nop
_022363BC: .word ov12_02236384
_022363C0: .word ov12_02236598
	thumb_func_end ov12_022363B4

	thumb_func_start ov12_022363C4
ov12_022363C4: ; 0x022363C4
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022363C4

	thumb_func_start ov12_022363CC
ov12_022363CC: ; 0x022363CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r7, #0
	cmp r0, #9
	ble _022363DE
	bl sub_02022974
_022363DE:
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _02236416
	add r5, r6, #0
_022363E8:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0223640C
	bl sub_02014710
	cmp r0, #0
	bne _0223640A
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _0223640A
	ldr r0, [r5, #0x14]
	bl ov12_02223894
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x5c]
	b _0223640C
_0223640A:
	mov r7, #1
_0223640C:
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022363E8
_02236416:
	cmp r7, #0
	bne _02236426
	mov r0, #0
	add r6, #0x88
	str r0, [r6, #0]
	ldr r0, [sp]
	bl sub_0200DA58
_02236426:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022363CC

	thumb_func_start ov12_02236428
ov12_02236428: ; 0x02236428
	ldr r3, _0223642C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0223642C: .word sub_020181C4
	thumb_func_end ov12_02236428

	thumb_func_start ov12_02236430
ov12_02236430: ; 0x02236430
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02236464
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x18]
	mov r1, #0
	add r3, r4, #0
	bl sub_020146F4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02014788
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02236464:
	sub r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02236430

	thumb_func_start ov12_0223646C
ov12_0223646C: ; 0x0223646C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r7, r1, #0
	cmp r0, #0
	bne _022364AA
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov12_02235F78
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0223649E
_0223648C:
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_020146F4
	add r4, r4, #1
	cmp r4, r5
	blt _0223648C
_0223649E:
	mov r1, #1
	str r1, [r6, #0x5c]
	ldr r0, [r6, #0x14]
	bl sub_02014788
	pop {r3, r4, r5, r6, r7, pc}
_022364AA:
	ldr r0, [r6, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _02236510
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x5c
	add r5, r6, #0
	str r0, [sp]
_022364BC:
	ldr r0, [r6, #0]
	mov r1, #0x1c
	bl sub_02018144
	add r4, r0, #0
	bne _022364CC
	bl sub_02022974
_022364CC:
	str r7, [r4, #0]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldr r0, _02236514 ; =ov12_022365D4
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r5, #0x5c]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _022364EE
	bl sub_02022974
_022364EE:
	ldr r0, [r4, #0x14]
	bl ov12_02237EA0
	str r0, [r4, #4]
	ldr r0, _02236518 ; =ov12_02236430
	ldr r2, _0223651C ; =0x000003E9
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [r6, #0x10]
	add r5, r5, #4
	cmp r7, r0
	blt _022364BC
_02236510:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236514: .word ov12_022365D4
_02236518: .word ov12_02236430
_0223651C: .word 0x000003E9
	thumb_func_end ov12_0223646C

	thumb_func_start ov12_02236520
ov12_02236520: ; 0x02236520
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r3, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02235758
	cmp r5, #5
	bhi _02236576
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223653E: ; jump table
	.short _0223654A - _0223653E - 2 ; case 0
	.short _02236552 - _0223653E - 2 ; case 1
	.short _0223655C - _0223653E - 2 ; case 2
	.short _02236564 - _0223653E - 2 ; case 3
	.short _0223656E - _0223653E - 2 ; case 4
	.short _02236576 - _0223653E - 2 ; case 5
_0223654A:
	mov r5, #0
	add r0, r5, #0
	sub r0, #0x10
	b _0223657E
_02236552:
	mov r5, #0xe
	mvn r5, r5
	add r0, r5, #0
	sub r0, #0xa
	b _0223657E
_0223655C:
	mov r5, #7
	mvn r5, r5
	sub r0, r5, #4
	b _0223657E
_02236564:
	mov r5, #0xd
	mvn r5, r5
	add r0, r5, #0
	sub r0, #0xb
	b _0223657E
_0223656E:
	mov r5, #7
	mvn r5, r5
	sub r0, r5, #4
	b _0223657E
_02236576:
	mov r5, #0xf
	mvn r5, r5
	add r0, r5, #0
	sub r0, #0xd
_0223657E:
	add r5, #0xa
	ldr r3, [r4, #0]
	mov r1, #0xac
	add r2, r5, #0
	mul r2, r1
	sub r2, r3, r2
	str r2, [r4, #0]
	add r0, #0x20
	ldr r2, [r4, #4]
	mul r1, r0
	sub r0, r2, r1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02236520

	thumb_func_start ov12_02236598
ov12_02236598: ; 0x02236598
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02014764
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl ov12_02236520
	ldr r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02236598

	thumb_func_start ov12_022365D4
ov12_022365D4: ; 0x022365D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov12_02236520
	ldr r0, [r4, #0x14]
	bl sub_0202CA7C
	bl sub_020981AC
	ldr r0, [r4, #0x14]
	bl sub_0202CA80
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0202CA84
	sub r6, #0xbe
	lsl r1, r6, #0x10
	asr r3, r1, #0x10
	ldr r2, [sp]
	mov r1, #0xac
	add r4, r3, #0
	mul r4, r1
	add r3, r2, r4
	mov r4, #0x64
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	ldr r2, [sp, #4]
	mul r1, r0
	add r0, r2, r1
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r3, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_022365D4

	thumb_func_start ov12_02236648
ov12_02236648: ; 0x02236648
	push {r4, lr}
	add r4, r0, #0
	bl sub_02014764
	mov r1, #2
	ldrsh r2, [r0, r1]
	mov r1, #0x64
	mov r3, #0xac
	sub r1, r1, r2
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	add r1, r2, #0
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r1, r3
	sub r0, #0x81
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	mul r2, r3
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x30]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02236648

	thumb_func_start ov12_02236690
ov12_02236690: ; 0x02236690
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	bne _022366A4
	bl sub_02022974
_022366A4:
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022366C8
	ldr r0, _022366EC ; =0x00000113
	bl ov12_02235F8C
	str r0, [r4, #0x20]
	ldr r0, _022366EC ; =0x00000113
	bl ov12_02235FA0
	b _022366D6
_022366C8:
	ldr r0, [r4, #4]
	bl ov12_02235F8C
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl ov12_02235FA0
_022366D6:
	str r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x20]
	mov r1, #0x63
	mov r3, #0
	bl ov12_02223818
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022366EC: .word 0x00000113
	thumb_func_end ov12_02236690

	thumb_func_start ov12_022366F0
ov12_022366F0: ; 0x022366F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	cmp r1, #0xff
	bne _0223674A
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02236720
	ldr r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _02236754
	ldr r6, _02236760 ; =ov12_02236648
_0223670A:
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020146F4
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _0223670A
	b _02236754
_02236720:
	ldr r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _02236754
	ldr r6, _02236760 ; =ov12_02236648
_0223672A:
	ldr r0, [r5, #4]
	bl ov12_02235FB4
	cmp r4, r0
	beq _02236740
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020146F4
_02236740:
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _0223672A
	b _02236754
_0223674A:
	ldr r0, [r5, #0x18]
	ldr r2, _02236760 ; =ov12_02236648
	add r3, r5, #0
	bl sub_020146F4
_02236754:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_02014788
	pop {r4, r5, r6, pc}
	nop
_02236760: .word ov12_02236648
	thumb_func_end ov12_022366F0

	thumb_func_start ov12_02236764
ov12_02236764: ; 0x02236764
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_02014710
	cmp r0, #0
	bne _0223677C
	ldr r0, [r4, #0x18]
	bl ov12_02223894
	mov r0, #0
	pop {r4, pc}
_0223677C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236764

	thumb_func_start ov12_02236780
ov12_02236780: ; 0x02236780
	ldr r3, _02236784 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02236784: .word sub_020181C4
	thumb_func_end ov12_02236780

	thumb_func_start ov12_02236788
ov12_02236788: ; 0x02236788
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0223679C
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #1
	bl ov12_02237828
_0223679C:
	add r0, r4, #0
	mov r1, #2
	bl ov12_0223782C
	cmp r0, #1
	bne _022367AC
	mov r0, #0
	pop {r4, pc}
_022367AC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236788

	thumb_func_start ov12_022367B0
ov12_022367B0: ; 0x022367B0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022367C4
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #3
	bl ov12_02237828
_022367C4:
	add r0, r4, #0
	mov r1, #4
	bl ov12_0223782C
	cmp r0, #1
	bne _022367D4
	mov r0, #0
	pop {r4, pc}
_022367D4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022367B0

	thumb_func_start ov12_022367D8
ov12_022367D8: ; 0x022367D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022367EC
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #5
	bl ov12_02237828
_022367EC:
	add r0, r4, #0
	mov r1, #6
	bl ov12_0223782C
	cmp r0, #1
	bne _022367FC
	mov r0, #0
	pop {r4, pc}
_022367FC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022367D8

	thumb_func_start ov12_02236800
ov12_02236800: ; 0x02236800
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02236814
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #7
	bl ov12_02237828
_02236814:
	add r0, r4, #0
	mov r1, #0xe
	bl ov12_0223782C
	cmp r0, #1
	bne _02236824
	mov r0, #0
	pop {r4, pc}
_02236824:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236800

	thumb_func_start ov12_02236828
ov12_02236828: ; 0x02236828
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0223683C
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0xf
	bl ov12_02237828
_0223683C:
	add r0, r4, #0
	mov r1, #0x12
	bl ov12_0223782C
	cmp r0, #1
	bne _0223684C
	mov r0, #0
	pop {r4, pc}
_0223684C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236828

	thumb_func_start ov12_02236850
ov12_02236850: ; 0x02236850
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02236864
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0x13
	bl ov12_02237828
_02236864:
	add r0, r4, #0
	mov r1, #0x1b
	bl ov12_0223782C
	cmp r0, #1
	bne _02236874
	mov r0, #0
	pop {r4, pc}
_02236874:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236850

	thumb_func_start ov12_02236878
ov12_02236878: ; 0x02236878
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0223688C
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0x15
	bl ov12_02237828
_0223688C:
	add r0, r4, #0
	mov r1, #0x16
	bl ov12_0223782C
	cmp r0, #1
	bne _0223689C
	mov r0, #0
	pop {r4, pc}
_0223689C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236878

	thumb_func_start ov12_022368A0
ov12_022368A0: ; 0x022368A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022368B4
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0x17
	bl ov12_02237828
_022368B4:
	add r0, r4, #0
	mov r1, #0x1b
	bl ov12_0223782C
	cmp r0, #1
	bne _022368C4
	mov r0, #0
	pop {r4, pc}
_022368C4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022368A0

	thumb_func_start ov12_022368C8
ov12_022368C8: ; 0x022368C8
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov12_022368C8

	thumb_func_start ov12_022368D0
ov12_022368D0: ; 0x022368D0
	push {r3, lr}
	ldr r1, [r0, #0]
	lsl r2, r1, #2
	ldr r1, _022368E0 ; =0x0223AB9C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_022368E0: .word 0x0223AB9C
	thumb_func_end ov12_022368D0

	thumb_func_start ov12_022368E4
ov12_022368E4: ; 0x022368E4
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov12_022368E4

	thumb_func_start ov12_022368F0
ov12_022368F0: ; 0x022368F0
	mov r0, #1
	bx lr
	thumb_func_end ov12_022368F0

	thumb_func_start ov12_022368F4
ov12_022368F4: ; 0x022368F4
	push {r4, lr}
	add r4, r0, #0
	bl ov12_02236F24
	cmp r0, #0
	bne _02236908
	add r0, r4, #0
	mov r1, #2
	bl ov12_022368E4
_02236908:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022368F4

	thumb_func_start ov12_0223690C
ov12_0223690C: ; 0x0223690C
	push {r3, lr}
	mov r1, #3
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_0223690C

	thumb_func_start ov12_02236918
ov12_02236918: ; 0x02236918
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _022369E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236930: ; jump table
	.short _02236938 - _02236930 - 2 ; case 0
	.short _0223698E - _02236930 - 2 ; case 1
	.short _022369A4 - _02236930 - 2 ; case 2
	.short _022369C0 - _02236930 - 2 ; case 3
_02236938:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r2, sp, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r2, #2
	bl sub_0200D550
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xb4
	add r1, #0x94
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02223764
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, sp, #0
	bl ov12_02236690
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_0223698E:
	ldr r0, [r4, #0x30]
	bl sub_0200D3E0
	cmp r0, #2
	blt _022369F0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_022369A4:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_022366F0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl ov12_02223770
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_022369C0:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236764
	cmp r0, #0
	bne _022369F0
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236780
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_022369E8:
	add r0, r4, #0
	mov r1, #4
	bl ov12_022368E4
_022369F0:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02236918

	thumb_func_start ov12_022369F8
ov12_022369F8: ; 0x022369F8
	mov r0, #1
	bx lr
	thumb_func_end ov12_022369F8

	thumb_func_start ov12_022369FC
ov12_022369FC: ; 0x022369FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02236A3C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xb8
	add r2, #0xba
	bl sub_0200D550
	add r0, r4, #0
	mov r1, #0x3c
	add r0, #0xbc
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xb4
	add r0, #0xbe
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02236A4C
_02236A3C:
	bl ov12_02236F24
	cmp r0, #0
	bne _02236A4C
	add r0, r4, #0
	mov r1, #6
	bl ov12_022368E4
_02236A4C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022369FC

	thumb_func_start ov12_02236A50
ov12_02236A50: ; 0x02236A50
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236A50

	thumb_func_start ov12_02236A54
ov12_02236A54: ; 0x02236A54
	push {r3, lr}
	mov r1, #8
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236A54

	thumb_func_start ov12_02236A60
ov12_02236A60: ; 0x02236A60
	push {r3, lr}
	mov r1, #9
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236A60

	thumb_func_start ov12_02236A6C
ov12_02236A6C: ; 0x02236A6C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02236A7E
	cmp r0, #1
	beq _02236AB2
	b _02236AF4
_02236A7E:
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02236B10 ; =0x0000037F
	mov r3, #1
	add r5, r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r5, r2
	add r0, #0xb0
	lsl r2, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #2
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236B0A
_02236AB2:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236B0A
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02236B10 ; =0x0000037F
	mov r3, #1
	add r5, r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r5, r2
	add r0, #0xb0
	lsl r2, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #2
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236B0A
_02236AF4:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236B0A
	add r0, r4, #0
	mov r1, #0xa
	bl ov12_022368E4
_02236B0A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02236B10: .word 0x0000037F
	thumb_func_end ov12_02236A6C

	thumb_func_start ov12_02236B14
ov12_02236B14: ; 0x02236B14
	push {r3, lr}
	mov r1, #0xb
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236B14

	thumb_func_start ov12_02236B20
ov12_02236B20: ; 0x02236B20
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02236B32
	cmp r0, #1
	beq _02236B72
	b _02236B8E
_02236B32:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #1
	blt _02236B8E
	add r1, sp, #8
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	add r1, sp, #8
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	add r0, r3, #0
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x48
	add r2, r1, #0
	bl ov12_02225BC8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236B8E
_02236B72:
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x48
	bl ov12_02225C50
	cmp r0, #0
	bne _02236B8E
	ldr r0, [r4, #8]
	mov r1, #0xd
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov12_022368E4
_02236B8E:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov12_02236B20

	thumb_func_start ov12_02236B94
ov12_02236B94: ; 0x02236B94
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236B94

	thumb_func_start ov12_02236B98
ov12_02236B98: ; 0x02236B98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02236BA8
	cmp r1, #1
	beq _02236BBE
	b _02236C1E
_02236BA8:
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236BBE:
	ldr r1, [r5, #0xc]
	mov r0, #6
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02236C28 ; =0x0223ACF2
	ldr r1, _02236C2C ; =0x0223ACF4
	ldrsh r0, [r0, r2]
	ldrh r1, [r1, r2]
	str r0, [sp]
	ldr r0, [r5, #0x30]
	bl sub_0200D3CC
	ldr r0, [r5, #0xc]
	ldr r4, _02236C30 ; =0x0223ABE4
	add r0, r0, #1
	str r0, [r5, #0xc]
	mov r6, #0
	mov r7, #0x75
_02236BE2:
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0]
	cmp r1, r0
	bne _02236BF6
	ldr r0, [r4, #4]
	add r1, r7, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005728
_02236BF6:
	add r6, r6, #1
	add r4, #8
	cmp r6, #5
	blt _02236BE2
	ldr r0, [r5, #0xc]
	cmp r0, #0x14
	bgt _02236C0A
	ldr r0, [sp]
	cmp r0, #0xff
	bne _02236C12
_02236C0A:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02236C24
_02236C12:
	ldr r0, [r5, #0x30]
	ldr r2, [sp]
	mov r1, #0
	bl sub_0200D5DC
	b _02236C24
_02236C1E:
	mov r1, #0xe
	bl ov12_022368E4
_02236C24:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02236C28: .word 0x0223ACF2
_02236C2C: .word 0x0223ACF4
_02236C30: .word 0x0223ABE4
	thumb_func_end ov12_02236B98

	thumb_func_start ov12_02236C34
ov12_02236C34: ; 0x02236C34
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236C34

	thumb_func_start ov12_02236C38
ov12_02236C38: ; 0x02236C38
	push {r3, lr}
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	cmp r1, #0xe
	blt _02236C54
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #0x10
	bl ov12_022368E4
_02236C54:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236C38

	thumb_func_start ov12_02236C58
ov12_02236C58: ; 0x02236C58
	push {r3, lr}
	mov r1, #0x11
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236C58

	thumb_func_start ov12_02236C64
ov12_02236C64: ; 0x02236C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02236C74
	cmp r0, #1
	beq _02236C84
	b _02236CEC
_02236C74:
	ldr r0, [r5, #0x18]
	cmp r0, #3
	blt _02236C7E
	bl sub_02022974
_02236C7E:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236C84:
	ldr r1, [r5, #0x18]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r0, _02236CF0 ; =0x0223AC38
	ldr r1, [r5, #0xc]
	add r0, r0, r3
	lsl r2, r1, #1
	ldrsh r4, [r2, r0]
	add r0, r1, #1
	str r0, [r5, #0xc]
	cmp r0, #0xb
	bgt _02236CA2
	cmp r4, #0xff
	bne _02236CC2
_02236CA2:
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x30]
	bl sub_0200D79C
	add r0, r5, #0
	mov r1, #0x12
	bl ov12_022368E4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02236CC2:
	cmp r0, #5
	bne _02236CCE
	ldr r0, _02236CF4 ; =0x000005FE
	mov r1, #0x75
	bl sub_02005728
_02236CCE:
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, _02236CF8 ; =0x0001FFFE
	mov r1, #0x5a
	mul r0, r4
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_0200D7C0
_02236CEC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02236CF0: .word 0x0223AC38
_02236CF4: .word 0x000005FE
_02236CF8: .word 0x0001FFFE
	thumb_func_end ov12_02236C64

	thumb_func_start ov12_02236CFC
ov12_02236CFC: ; 0x02236CFC
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236CFC

	thumb_func_start ov12_02236D00
ov12_02236D00: ; 0x02236D00
	push {r3, lr}
	mov r1, #0x14
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236D00

	thumb_func_start ov12_02236D0C
ov12_02236D0C: ; 0x02236D0C
	push {r3, lr}
	mov r1, #0x1b
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236D0C

	thumb_func_start ov12_02236D18
ov12_02236D18: ; 0x02236D18
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _02236DEC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236D30: ; jump table
	.short _02236D38 - _02236D30 - 2 ; case 0
	.short _02236D6A - _02236D30 - 2 ; case 1
	.short _02236DB2 - _02236D30 - 2 ; case 2
	.short _02236DC4 - _02236D30 - 2 ; case 3
_02236D38:
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	mov r1, #0
	mov r3, #1
	add r2, r0, #0
	add r5, r3, #0
	lsl r5, r2
	lsl r2, r5, #0x10
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	str r1, [sp, #8]
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #6
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236D6A:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236E02
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	add r1, #0x94
	ldr r1, [r1, #0]
	str r1, [sp, #0x14]
	bl ov12_02235FB4
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r2, sp, #0xc
	ldr r0, [r4, #0x30]
	add r1, sp, #0xc
	add r2, #2
	bl sub_0200D550
	add r0, sp, #0xc
	bl ov12_02236690
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236DB2:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_022366F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236DC4:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236764
	cmp r0, #0
	bne _02236E02
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236780
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236DEC:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236E02
	add r0, r4, #0
	mov r1, #0x16
	bl ov12_022368E4
_02236E02:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02236D18

	thumb_func_start ov12_02236E08
ov12_02236E08: ; 0x02236E08
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236E08

	thumb_func_start ov12_02236E0C
ov12_02236E0C: ; 0x02236E0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02236E1E
	cmp r1, #1
	beq _02236E50
	b _02236E64
_02236E1E:
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r2, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	mov r3, #1
	add r5, r3, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r5, r2
	add r0, #0xb0
	lsl r2, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #6
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E6A
_02236E50:
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236E6A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E6A
_02236E64:
	mov r1, #0x18
	bl ov12_022368E4
_02236E6A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02236E0C

	thumb_func_start ov12_02236E70
ov12_02236E70: ; 0x02236E70
	push {r3, lr}
	mov r1, #0x19
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236E70

	thumb_func_start ov12_02236E7C
ov12_02236E7C: ; 0x02236E7C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02236E8C
	cmp r1, #1
	beq _02236E9A
	b _02236EF2
_02236E8C:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236E9A:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _02236EC2
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	b _02236EDE
_02236EC2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0xf
	add r0, #0x21
	strb r2, [r0]
	ldr r0, [r4, #0x30]
	bl sub_0200D3F4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236EDE:
	add r0, r4, #0
	add r0, #0x20
	add r4, #0x21
	ldrb r1, [r0]
	ldrb r0, [r4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02236EFC ; =0x04000052
	strh r1, [r0]
	b _02236EF8
_02236EF2:
	mov r1, #0x1a
	bl ov12_022368E4
_02236EF8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02236EFC: .word 0x04000052
	thumb_func_end ov12_02236E7C

	thumb_func_start ov12_02236F00
ov12_02236F00: ; 0x02236F00
	push {r3, lr}
	mov r1, #0x1b
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236F00

	thumb_func_start ov12_02236F0C
ov12_02236F0C: ; 0x02236F0C
	mov r0, #0
	bx lr
	thumb_func_end ov12_02236F0C

	thumb_func_start ov12_02236F10
ov12_02236F10: ; 0x02236F10
	push {r3, lr}
	ldr r1, [r0, #0x14]
	lsl r2, r1, #2
	ldr r1, _02236F20 ; =0x0223AC80
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_02236F20: .word 0x0223AC80
	thumb_func_end ov12_02236F10

	thumb_func_start ov12_02236F24
ov12_02236F24: ; 0x02236F24
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bls _02236F32
	b _02237132
_02236F32:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236F3E: ; jump table
	.short _02236F46 - _02236F3E - 2 ; case 0
	.short _02236FB4 - _02236F3E - 2 ; case 1
	.short _022370AE - _02236F3E - 2 ; case 2
	.short _02237112 - _02236F3E - 2 ; case 3
_02236F46:
	mov r0, #0xba
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0xb8
	str r0, [sp]
	mov r0, #0xbe
	ldrsh r0, [r4, r0]
	mov r3, #0xbc
	add r1, #0x6c
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_02225C98
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _0223709C
	bl sub_0201D2E8
	mov r1, #0x14
	bl sub_020E1F6C
	add r1, #0xa
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xd
	bl sub_0200D7C0
	b _022371CE
_02236FB4:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _02237052
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	ble _02236FEE
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
_02236FEE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _02237052
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	bne _02237052
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _022371D4 ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _022371D8 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
_02237052:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _0223708A
	cmp r0, #8
	bgt _0223708A
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	cmp r1, r2
	ble _0223708A
	add r0, r2, #5
	cmp r1, r0
	blt _0223709C
_0223708A:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x48
	add r1, #0x6c
	bl ov12_02225D2C
	cmp r0, #0
	beq _0223709E
_0223709C:
	b _022371CE
_0223709E:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237E24
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022371CE
_022370AE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _022370E2
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022370E2
	bl ov12_02226848
	cmp r0, #1
	beq _022371CE
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226858
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022370E2:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xf
	blt _022370F6
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022370F6:
	add r0, r4, #0
	add r0, #0xa0
	ldr r1, [r0, #0]
	ldr r0, _022371DC ; =0x00000111
	cmp r1, r0
	bne _0223710A
	ldr r0, _022371E0 ; =0x000007E8
	mov r1, #0x75
	bl sub_02005728
_0223710A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022371CE
_02237112:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #1
	bl ov12_02237E30
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022371CE
_02237132:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #5
	bne _0223718C
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xc
	beq _02237188
	cmp r0, #0xd
	beq _02237188
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _022371D4 ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _022371D8 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
_02237188:
	mov r0, #1
	str r0, [r4, #0x28]
_0223718C:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0xf
	ble _022371CE
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xc
	beq _022371C8
	cmp r0, #0xd
	beq _022371C8
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226848
	cmp r0, #1
	beq _022371CE
	add r4, #0xd4
	ldr r0, [r4, #0]
	bl ov12_02226858
_022371C8:
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022371CE:
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_022371D4: .word 0x0000FFFF
_022371D8: .word 0x000003EA
_022371DC: .word 0x00000111
_022371E0: .word 0x000007E8
	thumb_func_end ov12_02236F24

	thumb_func_start ov12_022371E4
ov12_022371E4: ; 0x022371E4
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bls _022371F2
	b _022373DE
_022371F2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022371FE: ; jump table
	.short _02237206 - _022371FE - 2 ; case 0
	.short _02237274 - _022371FE - 2 ; case 1
	.short _0223736E - _022371FE - 2 ; case 2
	.short _022373BE - _022371FE - 2 ; case 3
_02237206:
	mov r0, #0xba
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0xb8
	str r0, [sp]
	mov r0, #0xbe
	ldrsh r0, [r4, r0]
	mov r3, #0xbc
	add r1, #0x6c
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_02225C98
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _0223735C
	bl sub_0201D2E8
	mov r1, #0x14
	bl sub_020E1F6C
	add r1, #0xa
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xd
	bl sub_0200D7C0
	b _02237466
_02237274:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _02237312
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	ble _022372AE
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
_022372AE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _02237312
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	bne _02237312
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0223746C ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _02237470 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
_02237312:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _0223734A
	cmp r0, #8
	bgt _0223734A
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	cmp r1, r2
	ble _0223734A
	add r0, r2, #5
	cmp r1, r0
	blt _0223735C
_0223734A:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x48
	add r1, #0x6c
	bl ov12_02225D2C
	cmp r0, #0
	beq _0223735E
_0223735C:
	b _02237466
_0223735E:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237E24
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237466
_0223736E:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _022373A2
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022373A2
	bl ov12_02226848
	cmp r0, #1
	beq _02237466
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226858
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022373A2:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xf
	blt _022373B6
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022373B6:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237466
_022373BE:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237E30
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237466
_022373DE:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #5
	bne _02237432
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D3CC
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0223746C ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _02237470 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r4, #0x28]
_02237432:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0xf
	ble _02237466
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226848
	cmp r0, #1
	beq _02237466
	add r4, #0xd4
	ldr r0, [r4, #0]
	bl ov12_02226858
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_02237466:
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0223746C: .word 0x0000FFFF
_02237470: .word 0x000003EA
	thumb_func_end ov12_022371E4

	thumb_func_start ov12_02237474
ov12_02237474: ; 0x02237474
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #7
	bls _02237482
	b _022375FA
_02237482:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223748E: ; jump table
	.short _0223749E - _0223748E - 2 ; case 0
	.short _022374DC - _0223748E - 2 ; case 1
	.short _0223750C - _0223748E - 2 ; case 2
	.short _02237542 - _0223748E - 2 ; case 3
	.short _02237552 - _0223748E - 2 ; case 4
	.short _02237580 - _0223748E - 2 ; case 5
	.short _022375AE - _0223748E - 2 ; case 6
	.short _022375DC - _0223748E - 2 ; case 7
_0223749E:
	mov r1, #0
	bl ov12_02237E30
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #2
	blt _022374F2
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022374DC:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #2
	bge _022374F4
_022374F2:
	b _02237600
_022374F4:
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_0223750C:
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r2, sp, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r2, #2
	bl sub_0200D550
	add r0, sp, #0
	bl ov12_02236690
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_02237542:
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_022366F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_02237552:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _02237600
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_02237580:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _02237600
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022375AE:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _02237600
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022375DC:
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236764
	cmp r0, #0
	bne _02237600
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236780
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022375FA:
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, pc}
_02237600:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02237474

	thumb_func_start ov12_02237608
ov12_02237608: ; 0x02237608
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02237618
	cmp r0, #1
	beq _0223764C
	b _0223767E
_02237618:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223762E
	ldr r1, _0223768C ; =0xFFFFE001
	add r0, r4, #0
	add r0, #0x34
	lsr r2, r1, #0x13
	mov r3, #0xa
	bl ov12_02225D50
	b _0223763C
_0223762E:
	add r0, r4, #0
	ldr r1, _02237690 ; =0x00001FFF
	ldr r2, _0223768C ; =0xFFFFE001
	add r0, #0x34
	mov r3, #0xa
	bl ov12_02225D50
_0223763C:
	ldr r1, [r4, #0x10]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237686
_0223764C:
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225DA0
	cmp r0, #0
	bne _02237686
	ldr r0, [r4, #0xc]
	cmp r0, #1
	blt _02237672
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237686
_02237672:
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	b _02237686
_0223767E:
	mov r0, #0
	add r4, #0xc4
	str r0, [r4, #0]
	pop {r4, pc}
_02237686:
	mov r0, #1
	pop {r4, pc}
	nop
_0223768C: .word 0xFFFFE001
_02237690: .word 0x00001FFF
	thumb_func_end ov12_02237608

	thumb_func_start ov12_02237694
ov12_02237694: ; 0x02237694
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0xff
	bne _022376A6
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022376A6:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _022376CA
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	add r0, r4, #0
	add r0, #0xb8
	strh r2, [r0]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r4, #0xba
	strh r0, [r4]
_022376CA:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02237694

	thumb_func_start ov12_022376D0
ov12_022376D0: ; 0x022376D0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02237722
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _022376FA
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xdc
	str r1, [r0, #0]
	ldr r0, [r4, #0x2c]
	bl sub_0200C7EC
	pop {r4, pc}
_022376FA:
	add r1, #0x98
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02237724 ; =0x0223AB84
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _02237710
	mov r0, #0
	str r0, [r4, #0x1c]
_02237710:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _0223771C
	ldr r0, [r4, #0x30]
	bl sub_0200D330
_0223771C:
	ldr r0, [r4, #0x2c]
	bl sub_0200C7EC
_02237722:
	pop {r4, pc}
	; .align 2, 0
_02237724: .word 0x0223AB84
	thumb_func_end ov12_022376D0

	thumb_func_start ov12_02237728
ov12_02237728: ; 0x02237728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0xe0
	bl sub_02018144
	mov r1, #0
	mov r2, #0xe0
	add r4, r0, #0
	bl sub_020C4CF4
	cmp r4, #0
	bne _02237746
	bl sub_02022974
_02237746:
	add r3, r4, #0
	add r3, #0x90
	mov r2, #5
_0223774C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223774C
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0]
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C704
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235F2C
	str r0, [r4, #0x24]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xc4
	str r2, [r0, #0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r2, [r0]
	bl ov12_02220474
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	mov r2, #0x1f
	ror r0, r2
	add r0, r1, r0
	beq _022377BA
	add r0, r4, #0
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	b _022377C2
_022377BA:
	add r0, r4, #0
	sub r2, #0x20
	add r0, #0x22
	strb r2, [r0]
_022377C2:
	add r0, r4, #0
	bl ov12_02237C54
	add r0, r4, #0
	bl ov12_02237D8C
	add r0, r4, #0
	bl ov12_022378A0
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x28]
	mov r2, #0xfa
	ldr r0, _022377F4 ; =ov12_022376D0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022377F4: .word ov12_022376D0
	thumb_func_end ov12_02237728

	thumb_func_start ov12_022377F8
ov12_022377F8: ; 0x022377F8
	push {r4, lr}
	add r4, r0, #0
	bne _02237802
	bl sub_02022974
_02237802:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0223780C
	mov r0, #1
	pop {r4, pc}
_0223780C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_022377F8

	thumb_func_start ov12_02237810
ov12_02237810: ; 0x02237810
	push {r4, lr}
	add r4, r0, #0
	bne _0223781A
	bl sub_02022974
_0223781A:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02237824
	mov r0, #1
	pop {r4, pc}
_02237824:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02237810

	thumb_func_start ov12_02237828
ov12_02237828: ; 0x02237828
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov12_02237828

	thumb_func_start ov12_0223782C
ov12_0223782C: ; 0x0223782C
	ldr r0, [r0, #0x14]
	cmp r0, r1
	bne _02237836
	mov r0, #1
	bx lr
_02237836:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_0223782C

	thumb_func_start ov12_0223783C
ov12_0223783C: ; 0x0223783C
	push {r4, lr}
	add r4, r0, #0
	bne _02237846
	bl sub_02022974
_02237846:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x2c]
	bl sub_0200D0B0
	ldr r0, [r4, #0x30]
	bl sub_0200D0F4
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0223783C

	thumb_func_start ov12_0223786C
ov12_0223786C: ; 0x0223786C
	add r2, r0, #0
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	mov r0, #1
	add r1, r2, #0
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x30]
	ldr r3, _0223788C ; =sub_0200D550
	add r1, #0xb8
	add r2, #0xba
	bx r3
	nop
_0223788C: .word sub_0200D550
	thumb_func_end ov12_0223786C

	thumb_func_start ov12_02237890
ov12_02237890: ; 0x02237890
	push {r4, lr}
	add r4, r0, #0
	bne _0223789A
	bl sub_02022974
_0223789A:
	add r4, #0x98
	ldr r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov12_02237890

	thumb_func_start ov12_022378A0
ov12_022378A0: ; 0x022378A0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xb8
	add r2, #0xba
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0x11
	bls _022378BE
	b _02237B0C
_022378BE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022378CA: ; jump table
	.short _022378EE - _022378CA - 2 ; case 0
	.short _022378EE - _022378CA - 2 ; case 1
	.short _022378EE - _022378CA - 2 ; case 2
	.short _022378EE - _022378CA - 2 ; case 3
	.short _022378EE - _022378CA - 2 ; case 4
	.short _022378EE - _022378CA - 2 ; case 5
	.short _0223790C - _022378CA - 2 ; case 6
	.short _02237932 - _022378CA - 2 ; case 7
	.short _02237966 - _022378CA - 2 ; case 8
	.short _0223798C - _022378CA - 2 ; case 9
	.short _022379B2 - _022378CA - 2 ; case 10
	.short _022379D8 - _022378CA - 2 ; case 11
	.short _022379FE - _022378CA - 2 ; case 12
	.short _02237A2A - _022378CA - 2 ; case 13
	.short _02237A62 - _022378CA - 2 ; case 14
	.short _02237A88 - _022378CA - 2 ; case 15
	.short _02237AB4 - _022378CA - 2 ; case 16
	.short _02237AE0 - _022378CA - 2 ; case 17
_022378EE:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xbc
	add r2, #0xbe
	bl sub_0200D550
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xc
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_0223790C:
	mov r0, #0
	add r2, r4, #0
	add r3, r4, #0
	add r1, r0, #0
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_02237932:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xb8
	add r2, #0xba
	bl sub_0200D550
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #4
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_02237966:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #2
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_0223798C:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_022379B2:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #3
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_022379D8:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #5
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_022379FE:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x10
	strh r1, [r0]
	mov r0, #0xc
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237A2A:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbc
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbc
	sub r1, #0x14
	strh r1, [r0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x26
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237A62:
	add r0, r4, #0
	mov r1, #0x80
	add r0, #0xbc
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xbe
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_02237A88:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #8
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237AB4:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #3
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #8
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237AE0:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #5
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #8
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237B0C:
	mov r0, #0x14
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov12_022378A0

	thumb_func_start ov12_02237B14
ov12_02237B14: ; 0x02237B14
	push {r4, lr}
	add r0, #0x90
	ldr r0, [r0, #0]
	add r3, r1, #0
	add r4, r2, #0
	cmp r0, #0x11
	bls _02237B24
	b _02237C50
_02237B24:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237B30: ; jump table
	.short _02237B54 - _02237B30 - 2 ; case 0
	.short _02237B6A - _02237B30 - 2 ; case 1
	.short _02237B80 - _02237B30 - 2 ; case 2
	.short _02237BAC - _02237B30 - 2 ; case 3
	.short _02237B96 - _02237B30 - 2 ; case 4
	.short _02237BC2 - _02237B30 - 2 ; case 5
	.short _02237BD8 - _02237B30 - 2 ; case 6
	.short _02237BE2 - _02237B30 - 2 ; case 7
	.short _02237BEC - _02237B30 - 2 ; case 8
	.short _02237BF6 - _02237B30 - 2 ; case 9
	.short _02237C04 - _02237B30 - 2 ; case 10
	.short _02237C12 - _02237B30 - 2 ; case 11
	.short _02237C20 - _02237B30 - 2 ; case 12
	.short _02237C2E - _02237B30 - 2 ; case 13
	.short _02237C3C - _02237B30 - 2 ; case 14
	.short _02237C46 - _02237B30 - 2 ; case 15
	.short _02237C46 - _02237B30 - 2 ; case 16
	.short _02237C46 - _02237B30 - 2 ; case 17
_02237B54:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x28
	strh r0, [r4]
	pop {r4, pc}
_02237B6A:
	add r2, r3, #0
	mov r0, #0
	mov r1, #1
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x26
	strh r0, [r4]
	pop {r4, pc}
_02237B80:
	add r2, r3, #0
	mov r0, #1
	mov r1, #2
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x28
	strh r0, [r4]
	pop {r4, pc}
_02237B96:
	add r2, r3, #0
	mov r0, #1
	mov r1, #4
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x28
	strh r0, [r4]
	pop {r4, pc}
_02237BAC:
	add r2, r3, #0
	mov r0, #1
	mov r1, #3
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x26
	strh r0, [r4]
	pop {r4, pc}
_02237BC2:
	add r2, r3, #0
	mov r0, #1
	mov r1, #5
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x26
	strh r0, [r4]
	pop {r4, pc}
_02237BD8:
	mov r0, #0xa
	strh r0, [r3]
	mov r0, #0x64
	strh r0, [r4]
	pop {r4, pc}
_02237BE2:
	mov r0, #0xa
	strh r0, [r3]
	mov r0, #0x64
	strh r0, [r4]
	pop {r4, pc}
_02237BEC:
	mov r0, #0xa
	strh r0, [r3]
	mov r0, #0x64
	strh r0, [r4]
	pop {r4, pc}
_02237BF6:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C04:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C12:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C20:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C2E:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C3C:
	mov r0, #0xe6
	strh r0, [r3]
	mov r0, #0x20
	strh r0, [r4]
	pop {r4, pc}
_02237C46:
	mov r0, #0x1d
	mvn r0, r0
	strh r0, [r3]
	mov r0, #0xa0
	strh r0, [r4]
_02237C50:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02237B14

	thumb_func_start ov12_02237C54
ov12_02237C54: ; 0x02237C54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	mov r2, #0xa
	bl sub_0200C7C0
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02237C84
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
_02237C84:
	mov r1, #0
	add r2, sp, #0x20
	mov r0, #0xa
_02237C8A:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #6
	blt _02237C8A
	mov r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, sp, #0x20
	bl sub_0200CB30
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov12_02235FC8
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov12_02235FC8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #2
	bl ov12_02235FC8
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #3
	bl ov12_02235FC8
	add r1, r5, #0
	add r1, #0x94
	str r0, [sp, #0x1c]
	ldr r1, [r1, #0]
	mov r0, #0x1b
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	add r2, r4, #0
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r3, r7, #0
	bl sub_0200CC3C
	str r4, [sp]
	add r2, r5, #0
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	add r2, #0xac
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r3, [r5, #0x2c]
	mov r1, #2
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	ldr r3, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237D88: .word 0x00001770
	thumb_func_end ov12_02237C54

	thumb_func_start ov12_02237D8C
ov12_02237D8C: ; 0x02237D8C
	push {r3, r4, lr}
	sub sp, #0x34
	add r2, sp, #0
	add r1, sp, #0
	add r2, #2
	add r4, r0, #0
	bl ov12_02237B14
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r1, #1
	str r1, [sp, #0x10]
	add r1, r4, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r1, #0xa4
	ldr r1, [r1, #0]
	ldr r2, _02237E08 ; =0x00001770
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r3, sp, #0
_02237DBA:
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1, #0]
	add r0, r0, #1
	add r1, r1, r2
	str r1, [r3, #0x14]
	add r3, r3, #4
	cmp r0, #6
	blt _02237DBA
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x2c]
	add r2, sp, #0
	bl sub_0200CE6C
	str r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x30]
	bl sub_0200D330
	bl ov12_02220474
	add sp, #0x34
	pop {r3, r4, pc}
	; .align 2, 0
_02237E08: .word 0x00001770
	thumb_func_end ov12_02237D8C

	thumb_func_start ov12_02237E0C
ov12_02237E0C: ; 0x02237E0C
	ldr r3, _02237E14 ; =sub_0200D3F4
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E14: .word sub_0200D3F4
	thumb_func_end ov12_02237E0C

	thumb_func_start ov12_02237E18
ov12_02237E18: ; 0x02237E18
	ldr r3, _02237E20 ; =sub_0200D4C4
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E20: .word sub_0200D4C4
	thumb_func_end ov12_02237E18

	thumb_func_start ov12_02237E24
ov12_02237E24: ; 0x02237E24
	ldr r3, _02237E2C ; =sub_0200D79C
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E2C: .word sub_0200D79C
	thumb_func_end ov12_02237E24

	thumb_func_start ov12_02237E30
ov12_02237E30: ; 0x02237E30
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end ov12_02237E30

	thumb_func_start ov12_02237E34
ov12_02237E34: ; 0x02237E34
	ldr r3, _02237E3C ; =sub_0200D474
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E3C: .word sub_0200D474
	thumb_func_end ov12_02237E34

	thumb_func_start ov12_02237E40
ov12_02237E40: ; 0x02237E40
	ldr r3, _02237E48 ; =sub_0200D460
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E48: .word sub_0200D460
	thumb_func_end ov12_02237E40

	thumb_func_start ov12_02237E4C
ov12_02237E4C: ; 0x02237E4C
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02237E4C

	thumb_func_start ov12_02237E54
ov12_02237E54: ; 0x02237E54
	push {r3, lr}
	sub r1, r1, r3
	neg r1, r1
	sub r0, r0, r2
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r1, #0
	asr r0, r0, #0x10
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02237E54

	thumb_func_start ov12_02237E80
ov12_02237E80: ; 0x02237E80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202CA80
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202CA84
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xbe
	mov r3, #0x46
	bl ov12_02237E54
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02237E80

	thumb_func_start ov12_02237EA0
ov12_02237EA0: ; 0x02237EA0
	push {r4, lr}
	sub sp, #8
	ldr r3, _02237EF8 ; =0x0223B040
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #7
_02237EAC:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02237EAC
	add r0, r4, #0
	bl sub_0202CA7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020981AC
	cmp r0, #0
	bne _02237EEE
	add r0, r4, #0
	bl ov12_02237E80
	cmp r0, #0x38
	blt _02237ED8
	mov r0, #3
	b _02237EE6
_02237ED8:
	add r0, r0, #1
	mov r1, #0x14
	bl sub_020E1F6C
	cmp r0, #3
	blt _02237EE6
	mov r0, #3
_02237EE6:
	add r1, sp, #0
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, pc}
_02237EEE:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	add sp, #8
	pop {r4, pc}
	nop
_02237EF8: .word 0x0223B040
	thumb_func_end ov12_02237EA0

	thumb_func_start ov12_02237EFC
ov12_02237EFC: ; 0x02237EFC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x48
	add r6, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02237F14
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
_02237F14:
	bl ov12_02220474
	str r6, [r4, #0]
	cmp r5, #0
	beq _02237F22
	ldr r0, [r5, #0]
	str r0, [r4, #4]
_02237F22:
	mov r1, #0
	add r2, r4, #0
	add r0, r1, #0
_02237F28:
	add r1, r1, #1
	str r0, [r2, #8]
	add r2, r2, #4
	cmp r1, #0x10
	blt _02237F28
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02237EFC

	thumb_func_start ov12_02237F38
ov12_02237F38: ; 0x02237F38
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r4, #0
	add r3, r0, #0
_02237F40:
	ldr r2, [r3, #8]
	cmp r2, #0
	bne _02237F60
	add r4, r0, #0
	ldr r0, [r0, #0]
	add r4, #8
	lsl r6, r5, #2
	bl ov12_02237FC8
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r4, [r4, r6]
	str r5, [r4, #0]
	b _02237F68
_02237F60:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #0x10
	blt _02237F40
_02237F68:
	cmp r4, #0
	bne _02237F70
	bl sub_02022974
_02237F70:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02237F38

	thumb_func_start ov12_02237F74
ov12_02237F74: ; 0x02237F74
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02237F7C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02237F86
	bl sub_020181C4
_02237F86:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02237F7C
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02237F74

	thumb_func_start ov12_02237F98
ov12_02237F98: ; 0x02237F98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02237F9E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02237FBC
	ldr r0, [r0, #0x10]
	bl ov12_02223894
	ldr r1, [r5, #8]
	ldr r0, [r1, #0x20]
	cmp r0, #0
	beq _02237FBC
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _02237FBC
	bl sub_0200DA58
_02237FBC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02237F9E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02237F98

	thumb_func_start ov12_02237FC8
ov12_02237FC8: ; 0x02237FC8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x24
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02237FE0
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
_02237FE0:
	str r5, [r4, #4]
	ldr r1, [r6, #0]
	ldr r0, [r6, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl ov12_02238088
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov12_022237F0
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02237FC8

	thumb_func_start ov12_02238004
ov12_02238004: ; 0x02238004
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	str r1, [r4, #0x20]
	ldr r1, _02238024 ; =ov12_02238080
	bl ov12_02238054
	mov r2, #0xfa
	ldr r0, _02238028 ; =ov12_02238030
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0x18]
	pop {r4, pc}
	nop
_02238024: .word ov12_02238080
_02238028: .word ov12_02238030
	thumb_func_end ov12_02238004

	thumb_func_start ov12_0223802C
ov12_0223802C: ; 0x0223802C
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov12_0223802C

	thumb_func_start ov12_02238030
ov12_02238030: ; 0x02238030
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02014710
	cmp r0, #0
	bne _02238050
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	bl ov12_02223894
	add r0, r5, #0
	bl sub_0200DA58
_02238050:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02238030

	thumb_func_start ov12_02238054
ov12_02238054: ; 0x02238054
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _02238076
_02238062:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020146F4
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _02238062
_02238076:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	bl sub_02014788
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02238054

	thumb_func_start ov12_02238080
ov12_02238080: ; 0x02238080
	ldr r3, _02238084 ; =sub_02014764
	bx r3
	; .align 2, 0
_02238084: .word sub_02014764
	thumb_func_end ov12_02238080

	thumb_func_start ov12_02238088
ov12_02238088: ; 0x02238088
	push {r3, r4, r5, lr}
	sub sp, #0x58
	ldr r4, _022380B8 ; =0x0223B048
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #0xb
_02238094:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02238094
	sub r0, r5, #5
	cmp r0, #0x16
	blo _022380AC
	bl sub_02022974
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, pc}
_022380AC:
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x58
	pop {r3, r4, r5, pc}
	nop
_022380B8: .word 0x0223B048
	thumb_func_end ov12_02238088

	thumb_func_start ov12_022380BC
ov12_022380BC: ; 0x022380BC
	push {r3, lr}
	add r3, r1, #0
	ldr r1, [r0, #0]
	mov r2, #0
	bl ov12_022380DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022380BC

	thumb_func_start ov12_022380CC
ov12_022380CC: ; 0x022380CC
	push {r3, lr}
	add r3, r1, #0
	ldr r1, [r0, #4]
	mov r2, #1
	bl ov12_022380DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022380CC

	thumb_func_start ov12_022380DC
ov12_022380DC: ; 0x022380DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_020089B0
	ldr r0, [r5, #4]
	lsl r1, r0, #1
	add r1, r5, r1
	ldrh r6, [r1, #0x28]
	add r1, r5, r0
	add r1, #0x30
	ldrb r1, [r1]
	add r2, r5, r0
	add r2, #0x38
	str r1, [sp, #0x1c]
	add r1, r5, r0
	lsl r0, r0, #2
	ldrb r2, [r2]
	add r0, r5, r0
	add r1, #0x34
	ldr r0, [r0, #0x3c]
	ldrb r1, [r1]
	str r2, [sp, #0x18]
	str r0, [sp, #0x14]
	cmp r7, #0
	beq _02238132
	add r0, r5, r4
	add r0, #0x4c
	ldrb r2, [r0]
	mov r0, #1
	tst r0, r2
	beq _0223812E
	mov r4, #0
	b _02238144
_0223812E:
	mov r4, #2
	b _02238144
_02238132:
	add r0, r5, r4
	add r0, #0x4c
	ldrb r2, [r0]
	mov r0, #1
	tst r0, r2
	beq _02238142
	mov r4, #2
	b _02238144
_02238142:
	mov r4, #0
_02238144:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x18
	lsl r3, r4, #0x18
	str r0, [sp, #8]
	add r0, sp, #0x28
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02075FB4
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A90
	add r7, r0, #0
	add r3, sp, #0x28
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_020089A0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r7, #6]
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	ldrh r0, [r7]
	lsl r3, r3, #2
	add r3, r5, r3
	ldr r3, [r3, #8]
	ldrh r1, [r7, #2]
	ldr r3, [r3, #0]
	bl sub_02013750
	ldr r1, [r5, #0]
	ldr r3, [sp, #0x18]
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r2, r4, #0x18
	lsl r3, r3, #0x18
	ldrh r0, [r7]
	ldr r1, [r1, #8]
	lsr r2, r2, #0x18
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	ldrh r0, [r7, #4]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	lsr r3, r3, #0x18
	str r0, [r1, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	lsl r0, r6, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02076648
	ldr r1, [r5, #0]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0]
	lsl r1, r0, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	add r0, r5, r0
	ldr r1, [r1, #0xc]
	add r0, #0x4c
	lsl r1, r1, #0x18
	asr r7, r1, #0x18
	ldrb r0, [r0]
	mov r1, #1
	bl ov12_022384CC
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #1
	add r2, r2, r7
	bl sub_02007DEC
	cmp r4, #2
	bne _022382B8
	ldr r1, [sp, #0x10]
	mov r0, #0x93
	bl sub_02006C24
	add r1, sp, #0x24
	lsl r2, r6, #0x10
	add r1, #2
	lsr r2, r2, #0x10
	add r4, r0, #0
	bl sub_02078A80
	add r1, sp, #0x24
	lsl r2, r6, #0x10
	add r0, r4, #0
	add r1, #1
	lsr r2, r2, #0x10
	bl sub_02078AA4
	lsl r2, r6, #0x10
	add r0, r4, #0
	add r1, sp, #0x24
	lsr r2, r2, #0x10
	bl sub_02078AC8
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r2, sp, #0x24
	lsl r0, r0, #2
	add r0, r5, r0
	ldrb r2, [r2]
	ldr r0, [r0, #0x18]
	mov r1, #0x2e
	bl sub_02007DEC
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, #0x24
	ldr r0, [r0, #0x18]
	mov r1, #0x14
	str r2, [sp, #0x20]
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r3, sp, #0x24
	lsl r0, r0, #2
	mov r2, #1
	add r0, r5, r0
	ldrsb r2, [r3, r2]
	ldr r0, [r0, #0x18]
	mov r1, #0x15
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r2, #0x24
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #0x16
	sub r2, r2, r7
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r3, sp, #0x24
	lsl r0, r0, #2
	mov r2, #2
	add r0, r5, r0
	ldrsb r2, [r3, r2]
	ldr r0, [r0, #0x18]
	mov r1, #0x29
	bl sub_02007DEC
_022382B8:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022380DC

	thumb_func_start ov12_022382BC
ov12_022382BC: ; 0x022382BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r1, [sp, #0x10]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A0C
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A90
	add r4, r0, #0
	ldr r0, [r5, #0]
	lsl r1, r0, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x28]
	lsl r3, r0, #2
	str r1, [sp, #0x1c]
	add r1, r5, r0
	add r1, #0x30
	ldrb r1, [r1]
	str r1, [sp, #0x18]
	add r1, r5, r0
	add r1, #0x38
	ldrb r1, [r1]
	add r0, r5, r0
	add r0, #0x4c
	str r1, [sp, #0x14]
	add r1, r5, r3
	ldr r7, [r1, #0x3c]
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _0223830E
	mov r6, #2
	b _02238310
_0223830E:
	mov r6, #0
_02238310:
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r4, #6]
	add r3, r5, r3
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r3, [r3, #8]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [r3, #0]
	bl sub_02013750
	ldr r1, [r5, #0]
	ldrh r0, [r4]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	ldr r3, [sp, #0x14]
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	lsl r2, r6, #0x18
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r3, r3, #0x18
	ldrh r0, [r4, #4]
	ldr r1, [r1, #8]
	lsr r2, r2, #0x18
	str r0, [r1, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	str r7, [sp]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl sub_02076648
	ldr r1, [r5, #0]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0]
	mov r1, #1
	lsl r4, r0, #2
	add r0, r5, r0
	add r0, #0x4c
	ldrb r0, [r0]
	bl ov12_022384CC
	add r1, r5, r4
	add r2, r0, #0
	ldr r0, [r1, #8]
	ldr r3, [r0, #0xc]
	ldr r0, [r1, #0x18]
	mov r1, #1
	add r2, r3, r2
	bl sub_02007DEC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022382BC

	thumb_func_start ov12_02238390
ov12_02238390: ; 0x02238390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_020089B0
	mov r0, #0x75
	add r2, sp, #0
	strh r0, [r2, #4]
	mov r0, #0xfa
	strh r0, [r2, #8]
	mov r0, #0
	strh r0, [r2, #0xa]
	strb r0, [r2, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r0
	add r1, #0x4c
	ldrb r3, [r1]
	mov r1, #1
	tst r1, r3
	beq _022383CC
	mov r1, #0xf9
	strh r1, [r2, #6]
	mov r4, #0x87
	b _022383D2
_022383CC:
	mov r1, #0xf8
	strh r1, [r2, #6]
	mov r4, #0x86
_022383D2:
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A90
	add r7, r0, #0
	add r3, sp, #4
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_020089A0
	ldr r3, [r5, #0]
	ldrh r0, [r7]
	lsl r3, r3, #2
	add r3, r5, r3
	ldr r3, [r3, #8]
	ldrh r1, [r7, #2]
	ldr r3, [r3, #0]
	add r2, r6, #0
	bl sub_02013610
	ldr r2, [r5, #0]
	add r1, sp, #0
	lsl r2, r2, #2
	add r2, r5, r2
	ldrh r0, [r1, #4]
	ldr r2, [r2, #8]
	str r0, [r2, #4]
	ldr r0, [r5, #0]
	ldrh r1, [r1, #8]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	add r2, r4, #0
	str r1, [r0, #8]
	add r0, sp, #0
	mov r1, #0x79
	bl sub_02006AA4
	add r0, sp, #0
	ldrb r1, [r0]
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, [r5, #0]
	mov r1, #1
	lsl r4, r0, #2
	add r0, r5, r0
	add r0, #0x4c
	ldrb r0, [r0]
	bl ov12_022384CC
	add r2, r5, r4
	ldr r1, [r2, #8]
	ldr r1, [r1, #0xc]
	add r4, r1, r0
	ldr r0, [r2, #0x18]
	mov r1, #1
	add r2, r4, #0
	bl sub_02007DEC
	ldr r1, [r5, #0]
	mov r2, #1
	add r0, r5, r1
	add r0, #0x4c
	ldrb r0, [r0]
	tst r0, r2
	beq _022384C6
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #0x2e
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r2, sp, #0
	ldrb r3, [r2]
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #0x24
	sub r2, r2, r3
	ldr r0, [r0, #0x18]
	mov r1, #0x14
	add r2, r4, r2
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #0x15
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r2, sp, #0
	lsl r0, r0, #2
	ldrb r3, [r2]
	add r0, r5, r0
	mov r2, #0x24
	ldr r0, [r0, #0x18]
	mov r1, #0x16
	sub r2, r2, r3
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #0x29
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl sub_02007DEC
_022384C6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02238390

	thumb_func_start ov12_022384CC
ov12_022384CC: ; 0x022384CC
	cmp r1, #0
	bne _022384D8
	lsl r1, r0, #2
	ldr r0, _022384E8 ; =0x0223B0A0
	ldrsh r0, [r0, r1]
	bx lr
_022384D8:
	mov r2, #6
	mul r2, r0
	ldr r0, _022384EC ; =0x0223B0B8
	lsl r1, r1, #1
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_022384E8: .word 0x0223B0A0
_022384EC: .word 0x0223B0B8
	thumb_func_end ov12_022384CC

	thumb_func_start ov12_022384F0
ov12_022384F0: ; 0x022384F0
	ldr r2, _02238590 ; =0x0000013B
	cmp r0, r2
	bhi _0223851E
	bhs _0223857E
	cmp r0, #0x7d
	bhi _0223850C
	bhs _0223857E
	cmp r0, #0x63
	bhi _02238506
	beq _0223857E
	b _0223858A
_02238506:
	cmp r0, #0x78
	beq _0223857E
	b _0223858A
_0223850C:
	cmp r0, #0xc9
	bhi _02238518
	bhs _0223857E
	cmp r0, #0x9f
	beq _0223857E
	b _0223858A
_02238518:
	cmp r0, #0xd7
	beq _0223857E
	b _0223858A
_0223851E:
	add r3, r2, #0
	add r3, #0x5c
	cmp r0, r3
	bhi _0223855E
	add r1, r2, #0
	add r1, #0x5b
	cmp r0, r1
	blo _0223853E
	add r1, r2, #0
	add r1, #0x5b
	cmp r0, r1
	beq _0223857E
	add r2, #0x5c
	cmp r0, r2
	beq _0223857E
	b _0223858A
_0223853E:
	add r1, r2, #0
	add r1, #0x2c
	cmp r0, r1
	bhi _02238556
	add r1, r2, #0
	add r1, #0x2c
	cmp r0, r1
	bhs _0223857E
	add r2, #0x14
	cmp r0, r2
	beq _0223857E
	b _0223858A
_02238556:
	add r2, #0x4a
	cmp r0, r2
	beq _0223857E
	b _0223858A
_0223855E:
	add r3, r2, #0
	add r3, #0x99
	cmp r0, r3
	bhi _02238576
	add r1, r2, #0
	add r1, #0x99
	cmp r0, r1
	bhs _0223857E
	add r2, #0x98
	cmp r0, r2
	beq _0223857E
	b _0223858A
_02238576:
	add r2, #0xb1
	cmp r0, r2
	beq _02238582
	b _0223858A
_0223857E:
	mov r0, #0
	bx lr
_02238582:
	cmp r1, #1
	bne _0223858A
	mov r0, #0
	bx lr
_0223858A:
	mov r0, #1
	bx lr
	nop
_02238590: .word 0x0000013B
	thumb_func_end ov12_022384F0
	; 0x02238594

	.incbin "data/overlay12.bin"
