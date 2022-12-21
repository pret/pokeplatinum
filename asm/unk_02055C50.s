	.include "macros/function.inc"
	.include "include/unk_02055C50.inc"

	

	.text


	thumb_func_start sub_02055C50
sub_02055C50: ; 0x02055C50
	cmp r0, #0
	bne _02055C58
	mov r0, #0
	bx lr
_02055C58:
	add r0, #0x94
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02055C50

	thumb_func_start sub_02055C60
sub_02055C60: ; 0x02055C60
	cmp r0, #0
	bne _02055C68
	mov r0, #0
	bx lr
_02055C68:
	sub r0, #0x94
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02055C60

	thumb_func_start sub_02055C70
sub_02055C70: ; 0x02055C70
	cmp r0, #0
	bne _02055C78
	mov r0, #0
	bx lr
_02055C78:
	add r0, #0x5e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02055C70

	thumb_func_start sub_02055C80
sub_02055C80: ; 0x02055C80
	cmp r0, #0
	bne _02055C88
	mov r0, #0
	bx lr
_02055C88:
	sub r0, #0x5e
	bx lr
	thumb_func_end sub_02055C80

	thumb_func_start sub_02055C8C
sub_02055C8C: ; 0x02055C8C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x64
	bl sub_020C4CF4
	str r6, [r4, #0]
	add r0, r6, #0
	bl sub_02027BF4
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02055D14
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055C8C

	thumb_func_start sub_02055CBC
sub_02055CBC: ; 0x02055CBC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02055D48
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02055CBC

	thumb_func_start sub_02055CD4
sub_02055CD4: ; 0x02055CD4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r6, r1, #0
	cmp r0, #0
	bne _02055CFE
	mov r0, #0xb
	bl sub_02027BF4
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027854
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02027EAC
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02055CFE:
	ldr r0, [r0, #0x18]
	ldr r5, [r0, #4]
	ldr r0, [r4, #0xc]
	bl sub_02027854
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02027EAC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055CD4

	thumb_func_start sub_02055D14
sub_02055D14: ; 0x02055D14
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x40]
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0x11
	bl ov5_021DF5A8
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018144
	str r0, [r5, #0x60]
	ldr r2, [r5, #0x60]
	add r0, r4, #0
	mov r1, #0x11
	bl ov5_021DF5B4
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x60
	add r0, #8
	add r1, #0x5c
	add r2, r5, #0
	bl sub_0201CA3C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055D14

	thumb_func_start sub_02055D48
sub_02055D48: ; 0x02055D48
	ldr r3, _02055D50 ; =ov5_021DF554
	ldr r0, [r0, #0x60]
	bx r3
	nop
_02055D50: .word ov5_021DF554
	thumb_func_end sub_02055D48

	thumb_func_start sub_02055D54
sub_02055D54: ; 0x02055D54
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r3, _02055D90 ; =0x020EC52C
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0
	bl sub_020BB4C8
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #0x18]
	add r2, sp, #0
	ldr r0, [r0, #0x5c]
	add r3, sp, #0x24
	bl sub_0201CED8
	cmp r0, #0
	beq _02055D88
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, pc}
_02055D88:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	nop
_02055D90: .word 0x020EC52C
	thumb_func_end sub_02055D54

	thumb_func_start sub_02055D94
sub_02055D94: ; 0x02055D94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_02027854
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _02055DFC
	mov r6, #0
	mov r7, #1
_02055DBA:
	ldr r0, [sp]
	bl sub_02062920
	bl sub_020677F4
	cmp r0, #1
	bne _02055DEC
	ldr r0, [sp]
	bl sub_02063070
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02055D54
	cmp r0, #0
	beq _02055DEC
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02027D90
_02055DEC:
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02055DBA
_02055DFC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02055D94

	thumb_func_start sub_02055E00
sub_02055E00: ; 0x02055E00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027D10
	str r0, [sp, #4]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027DB4
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_02055C50
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027D34
	add r2, r0, #0
	lsl r2, r2, #0x18
	lsl r3, r6, #0x10
	ldr r1, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x10
	bl sub_0206D914
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02027DC0
	add r0, r7, #0
	bl sub_02067834
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02055C50
	lsl r2, r6, #0x10
	add r1, r0, #0
	add r0, r4, #0
	lsr r2, r2, #0x10
	mov r3, #4
	bl sub_0207D570
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055E00

	thumb_func_start sub_02055E80
sub_02055E80: ; 0x02055E80
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	add r5, r2, #0
	bl sub_02027854
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_020629D8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02055C80
	add r2, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027DA8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055E80

	thumb_func_start sub_02055EAC
sub_02055EAC: ; 0x02055EAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02027854
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02055C60
	ldr r2, [r4, #4]
	add r3, r0, #0
	ldr r2, [r2, #0x18]
	add r0, r7, #0
	ldr r2, [r2, #4]
	add r1, r5, #0
	bl sub_02027D40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055EAC

	thumb_func_start sub_02055EE0
sub_02055EE0: ; 0x02055EE0
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D78
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055EE0

	thumb_func_start sub_02055F00
sub_02055F00: ; 0x02055F00
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D04
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F00

	thumb_func_start sub_02055F20
sub_02055F20: ; 0x02055F20
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F20

	thumb_func_start sub_02055F40
sub_02055F40: ; 0x02055F40
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D10
	bl sub_02055C50
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F40

	thumb_func_start sub_02055F64
sub_02055F64: ; 0x02055F64
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D9C
	bl sub_02055C70
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F64

	thumb_func_start sub_02055F88
sub_02055F88: ; 0x02055F88
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027D18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055F88

	thumb_func_start sub_02055FA8
sub_02055FA8: ; 0x02055FA8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02027DB4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055FA8

	thumb_func_start sub_02055FC8
sub_02055FC8: ; 0x02055FC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0205600C ; =0x00000000
	beq _02055FDC
	add r0, r5, #0
	bl sub_02062920
	cmp r0, #0x64
	beq _02055FE0
_02055FDC:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02055FE0:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02055F00
	cmp r0, #0
	bne _02056002
	mov r0, #1
	orr r4, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02055F64
	cmp r0, #0
	bne _02056006
	mov r0, #2
	orr r4, r0
	b _02056006
_02056002:
	mov r0, #4
	orr r4, r0
_02056006:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0205600C: .word 0x00000000
	thumb_func_end sub_02055FC8

	thumb_func_start sub_02056010
sub_02056010: ; 0x02056010
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x3c]
	add r5, r2, #0
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r7, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	cmp r5, #2
	bne _0205602E
	sub r6, r6, #1
	b _0205604A
_0205602E:
	cmp r5, #3
	bne _02056036
	add r6, r6, #1
	b _0205604A
_02056036:
	cmp r5, #0
	bne _0205603E
	sub r4, r4, #1
	b _0205604A
_0205603E:
	cmp r5, #1
	bne _02056046
	add r4, r4, #1
	b _0205604A
_02056046:
	bl sub_02022974
_0205604A:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02054F68
	cmp r0, #0
	beq _0205605C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205605C:
	ldr r0, [r7, #0x38]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0206326C
	cmp r0, #0
	beq _02056070
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02056070:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02056010

	thumb_func_start sub_02056074
sub_02056074: ; 0x02056074
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	cmp r6, #2
	bne _02056092
	sub r4, r4, #1
	b _02056098
_02056092:
	cmp r6, #3
	bne _02056098
	add r4, r4, #1
_02056098:
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	sub r2, r2, #1
	mov r3, #0
	bl sub_0206326C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02056074

	thumb_func_start sub_020560A8
sub_020560A8: ; 0x020560A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	bl sub_0205EABC
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _020560C8
	sub r4, r4, #1
	b _020560D4
_020560C8:
	cmp r0, #1
	bne _020560D0
	add r4, r4, #1
	b _020560D4
_020560D0:
	bl sub_02022974
_020560D4:
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0206326C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020560A8

	thumb_func_start sub_020560E4
sub_020560E4: ; 0x020560E4
	push {r3, lr}
	bl sub_02062920
	cmp r0, #0x64
	bne _020560F2
	mov r0, #1
	pop {r3, pc}
_020560F2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020560E4

	thumb_func_start sub_020560F8
sub_020560F8: ; 0x020560F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020560A8
	add r1, r0, #0
	beq _0205610A
	add r0, r4, #0
	bl sub_02055EE0
_0205610A:
	pop {r4, pc}
	thumb_func_end sub_020560F8

	thumb_func_start sub_0205610C
sub_0205610C: ; 0x0205610C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x3c]
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02065700
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205610C

	thumb_func_start sub_02056124
sub_02056124: ; 0x02056124
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bls _0205613E
	b _0205629A
_0205613E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205614A: ; jump table
	.short _02056154 - _0205614A - 2 ; case 0
	.short _02056172 - _0205614A - 2 ; case 1
	.short _02056182 - _0205614A - 2 ; case 2
	.short _02056246 - _0205614A - 2 ; case 3
	.short _0205627E - _0205614A - 2 ; case 4
_02056154:
	ldr r0, [r5, #0x3c]
	mov r1, #0x10
	bl ov5_021DFB54
	ldr r0, [r5, #0x3c]
	bl ov5_021DFB5C
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	mov r0, #1
	str r0, [r4, #0]
	b _0205629A
_02056172:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020560F8
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0]
_02056182:
	ldr r0, _020562A0 ; =0x021BF67C
	mov r1, #0x20
	ldr r0, [r0, #0x44]
	tst r1, r0
	beq _020561C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02056074
	cmp r0, #0
	beq _020561A0
	bl sub_020560E4
	cmp r0, #0
	bne _020561A6
_020561A0:
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_020561A6:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02056010
	cmp r0, #0
	bne _0205622E
	ldr r2, _020562A4 ; =0x020EC51C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205610C
	mov r0, #3
	str r0, [r4, #0]
	b _0205629A
_020561C4:
	mov r1, #0x10
	tst r1, r0
	beq _02056202
	add r0, r5, #0
	mov r1, #3
	bl sub_02056074
	cmp r0, #0
	beq _020561DE
	bl sub_020560E4
	cmp r0, #0
	bne _020561E4
_020561DE:
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_020561E4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl sub_02056010
	cmp r0, #0
	bne _0205622E
	ldr r2, _020562A8 ; =0x020EC524
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205610C
	mov r0, #3
	str r0, [r4, #0]
	b _0205629A
_02056202:
	mov r1, #0x40
	tst r1, r0
	beq _0205621C
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _0205621C
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205EA84
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_0205621C:
	mov r1, #0x80
	tst r0, r1
	beq _0205622E
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0205622E
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_0205622E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x5a
	ble _0205629A
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #4]
	bl sub_0205EA84
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_02056246:
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	beq _0205629A
	ldr r0, [r4, #0xc]
	bl sub_02065758
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020560A8
	cmp r0, #0
	beq _02056270
	bl sub_020560E4
	cmp r0, #0
	beq _02056270
	mov r0, #1
	str r0, [r4, #0]
	b _0205629A
_02056270:
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #4]
	bl sub_0205EA84
	mov r0, #4
	str r0, [r4, #0]
	b _0205629A
_0205627E:
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #4]
	bl sub_0205EA84
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DD0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205629A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020562A0: .word 0x021BF67C
_020562A4: .word 0x020EC51C
_020562A8: .word 0x020EC524
	thumb_func_end sub_02056124

	thumb_func_start sub_020562AC
sub_020562AC: ; 0x020562AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _020562D4 ; =sub_02056124
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020562D4: .word sub_02056124
	thumb_func_end sub_020562AC

	thumb_func_start sub_020562D8
sub_020562D8: ; 0x020562D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB74
	bl sub_0205EED8
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB54
	ldr r0, [r4, #0x3c]
	bl ov5_021DFB5C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020562D8

	.rodata


	.global Unk_020EC51C
Unk_020EC51C: ; 0x020EC51C
	.incbin "incbin/arm9_rodata.bin", 0x78DC, 0x78E4 - 0x78DC

	.global Unk_020EC524
Unk_020EC524: ; 0x020EC524
	.incbin "incbin/arm9_rodata.bin", 0x78E4, 0x78EC - 0x78E4

	.global Unk_020EC52C
Unk_020EC52C: ; 0x020EC52C
	.incbin "incbin/arm9_rodata.bin", 0x78EC, 0xC

