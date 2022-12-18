	.include "macros/function.inc"
	.include "include/ov21_021E68F4.inc"

	

	.text


	thumb_func_start ov21_021E68F4
ov21_021E68F4: ; 0x021E68F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E696C
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E69B0
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E69D8
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E6A68
	str r0, [r5, #0x24]
	ldr r0, _021E693C ; =ov21_021E6A6C
	str r0, [r5, #8]
	ldr r0, _021E6940 ; =ov21_021E6AB8
	str r0, [r5, #0xc]
	ldr r0, _021E6944 ; =ov21_021E6B0C
	str r0, [r5, #0x10]
	ldr r0, _021E6948 ; =ov21_021E6B20
	str r0, [r5, #0x14]
	ldr r0, _021E694C ; =ov21_021E6BA8
	str r0, [r5, #0x18]
	ldr r0, _021E6950 ; =ov21_021E6BD8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E693C: .word ov21_021E6A6C
_021E6940: .word ov21_021E6AB8
_021E6944: .word ov21_021E6B0C
_021E6948: .word ov21_021E6B20
_021E694C: .word ov21_021E6BA8
_021E6950: .word ov21_021E6BD8
	thumb_func_end ov21_021E68F4

	thumb_func_start ov21_021E6954
ov21_021E6954: ; 0x021E6954
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E6A20
	ldr r0, [r4, #4]
	bl ov21_021E6A34
	ldr r0, [r4, #0x20]
	bl ov21_021E6A48
	pop {r4, pc}
	thumb_func_end ov21_021E6954

	thumb_func_start ov21_021E696C
ov21_021E696C: ; 0x021E696C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _021E697E
	bl sub_02022974
_021E697E:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021E6984:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E6984
	add r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1430
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E696C

	thumb_func_start ov21_021E69B0
ov21_021E69B0: ; 0x021E69B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E69C2
	bl sub_02022974
_021E69C2:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E69B0

	thumb_func_start ov21_021E69D8
ov21_021E69D8: ; 0x021E69D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021E6A68
	add r7, r0, #0
	mov r1, #0x14
	mul r7, r1
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021E69F8
	bl sub_02022974
_021E69F8:
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_020D5124
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov21_021D49E4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x14
	add r2, r6, #0
	mov r3, #2
	bl ov21_021D4A3C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E69D8

	thumb_func_start ov21_021E6A20
ov21_021E6A20: ; 0x021E6A20
	push {r4, lr}
	add r4, r0, #0
	bne _021E6A2A
	bl sub_02022974
_021E6A2A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6A20

	thumb_func_start ov21_021E6A34
ov21_021E6A34: ; 0x021E6A34
	push {r4, lr}
	add r4, r0, #0
	bne _021E6A3E
	bl sub_02022974
_021E6A3E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6A34

	thumb_func_start ov21_021E6A48
ov21_021E6A48: ; 0x021E6A48
	push {r4, lr}
	add r4, r0, #0
	bne _021E6A52
	bl sub_02022974
_021E6A52:
	add r0, r4, #0
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x14
	bl ov21_021D4660
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021E6A48

	thumb_func_start ov21_021E6A68
ov21_021E6A68: ; 0x021E6A68
	mov r0, #2
	bx lr
	thumb_func_end ov21_021E6A68

	thumb_func_start ov21_021E6A6C
ov21_021E6A6C: ; 0x021E6A6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0x18
	bl sub_02018144
	add r6, r0, #0
	add r2, r6, #0
	mov r1, #0x18
	mov r0, #0
_021E6A82:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E6A82
	mov r1, #0
	add r2, r6, #0
	mov r0, #4
_021E6A90:
	add r1, r1, #1
	str r0, [r2, #0x10]
	add r2, r2, #4
	cmp r1, #2
	blt _021E6A90
	mov r0, #0
	str r0, [r4, #4]
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E6D58
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E6DBC
	str r6, [r5, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6A6C

	thumb_func_start ov21_021E6AB8
ov21_021E6AB8: ; 0x021E6AB8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E6AC8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6AC8:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E6AD2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6AD2:
	ldr r0, [r5, #0xc]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E6B06
	add r0, r4, #0
	bl ov21_021E6DAC
	ldr r0, [r5, #0xc]
	bl ov21_021E33BC
	cmp r0, #0
	beq _021E6AFE
	ldr r0, [r5, #8]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E6AFE
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E72E8
_021E6AFE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E6DBC
_021E6B06:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6AB8

	thumb_func_start ov21_021E6B0C
ov21_021E6B0C: ; 0x021E6B0C
	push {r4, lr}
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl ov21_021E6DEC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E6B0C

	thumb_func_start ov21_021E6B20
ov21_021E6B20: ; 0x021E6B20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E6BA4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6B3C: ; jump table
	.short _021E6B44 - _021E6B3C - 2 ; case 0
	.short _021E6B5E - _021E6B3C - 2 ; case 1
	.short _021E6B7C - _021E6B3C - 2 ; case 2
	.short _021E6B92 - _021E6B3C - 2 ; case 3
_021E6B44:
	ldr r0, [r4, #4]
	mov r1, #0x40
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6BA4
_021E6B5E:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E6E64
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E6CB0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6BA4
_021E6B7C:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E6D1C
	cmp r0, #0
	beq _021E6BA4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6BA4
_021E6B92:
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D25AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6BA4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E6B20

	thumb_func_start ov21_021E6BA8
ov21_021E6BA8: ; 0x021E6BA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r3, #8]
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	ldr r0, [r4, #0xc]
	ldr r7, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E6BD4
	ldr r2, [sp]
	ldr r3, [r5, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021E728C
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021E732C
_021E6BD4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E6BA8

	thumb_func_start ov21_021E6BD8
ov21_021E6BD8: ; 0x021E6BD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #4
	bhi _021E6C5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6BF4: ; jump table
	.short _021E6BFE - _021E6BF4 - 2 ; case 0
	.short _021E6C20 - _021E6BF4 - 2 ; case 1
	.short _021E6C36 - _021E6BF4 - 2 ; case 2
	.short _021E6C48 - _021E6BF4 - 2 ; case 3
	.short _021E6C56 - _021E6BF4 - 2 ; case 4
_021E6BFE:
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	bl ov21_021D25AC
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021E6CB0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6C5A
_021E6C20:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl ov21_021E6D1C
	cmp r0, #0
	beq _021E6C5A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6C5A
_021E6C36:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E6E94
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6C5A
_021E6C48:
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E6C5A
_021E6C56:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6C5A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6BD8

	thumb_func_start ov21_021E6C60
ov21_021E6C60: ; 0x021E6C60
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #1
	add r5, r0, #0
	mov r4, #0
	add r7, r6, #0
_021E6C6A:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021FE0
	ldr r0, [r5, #8]
	add r1, r7, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E6C6A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6C60

	thumb_func_start ov21_021E6C88
ov21_021E6C88: ; 0x021E6C88
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	add r7, r4, #0
_021E6C92:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021FE0
	ldr r0, [r5, #8]
	add r1, r7, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E6C92
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6C88

	thumb_func_start ov21_021E6CB0
ov21_021E6CB0: ; 0x021E6CB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E6C60
	ldr r0, [r4, #0xc]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E6D18
	cmp r6, #0
	beq _021E6CF4
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #0x19
	ldr r2, [r5, #0]
	lsl r0, r0, #4
	add r0, r2, r0
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E6CF4:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, #0x19
	ldr r3, [r5, #0]
	lsl r0, r0, #4
	add r0, r3, r0
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E6D18:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E6CB0

	thumb_func_start ov21_021E6D1C
ov21_021E6D1C: ; 0x021E6D1C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #0xc]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E6D3C
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov21_021D2424
	b _021E6D42
_021E6D3C:
	mov r0, #2
	bl sub_0200AC1C
_021E6D42:
	cmp r0, #0
	beq _021E6D54
	cmp r4, #0
	beq _021E6D50
	add r0, r6, #0
	bl ov21_021E6C88
_021E6D50:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E6D54:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E6D1C

	thumb_func_start ov21_021E6D58
ov21_021E6D58: ; 0x021E6D58
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x40
	mov r2, #0xb0
	mov r3, #8
	bl ov21_021D154C
	mov r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x40
	add r0, r0, #4
	mov r2, #0xb0
	mov r3, #0x80
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	add r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E6DA8 ; =ov21_021E6E04
	mov r1, #2
	add r3, #8
	bl sub_02023FCC
	str r0, [r5, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E6DA8: .word ov21_021E6E04
	thumb_func_end ov21_021E6D58

	thumb_func_start ov21_021E6DAC
ov21_021E6DAC: ; 0x021E6DAC
	mov r2, #0
	mov r1, #3
_021E6DB0:
	add r2, r2, #1
	str r1, [r0, #0x10]
	add r0, r0, #4
	cmp r2, #2
	blt _021E6DB0
	bx lr
	thumb_func_end ov21_021E6DAC

	thumb_func_start ov21_021E6DBC
ov21_021E6DBC: ; 0x021E6DBC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	bl sub_0202404C
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E6DD4
	cmp r0, #1
	beq _021E6DE0
	pop {r3, r4, r5, pc}
_021E6DD4:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021E6DEA
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E6DE0:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	beq _021E6DEA
	mov r0, #1
	str r0, [r4, #0x14]
_021E6DEA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E6DBC

	thumb_func_start ov21_021E6DEC
ov21_021E6DEC: ; 0x021E6DEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6DEC

	thumb_func_start ov21_021E6E04
ov21_021E6E04: ; 0x021E6E04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #0]
	ldr r2, [r2, #4]
	lsl r0, r5, #2
	add r0, r2, r0
	str r1, [r0, #0x10]
	cmp r1, #2
	bne _021E6E5E
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov21_021E33B4
	cmp r5, #0
	beq _021E6E28
	cmp r5, #1
	beq _021E6E44
	pop {r3, r4, r5, pc}
_021E6E28:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E6E5E
	ldr r0, _021E6E60 ; =0x000005DD
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r0, #1
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
	pop {r3, r4, r5, pc}
_021E6E44:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021E6E5E
	ldr r0, _021E6E60 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	str r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
_021E6E5E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E6E60: .word 0x000005DD
	thumb_func_end ov21_021E6E04

	thumb_func_start ov21_021E6E64
ov21_021E6E64: ; 0x021E6E64
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E6EF0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E6F58
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E700C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E70D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E6E64

	thumb_func_start ov21_021E6E94
ov21_021E6E94: ; 0x021E6E94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x20
	add r6, r2, #0
	str r0, [sp]
	add r4, r1, #0
	str r6, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #4
	mov r3, #0x80
	bl ov21_021D276C
	mov r0, #0x20
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #9
	mov r2, #4
	mov r3, #0xa0
	bl ov21_021D276C
	add r0, r5, #0
	bl ov21_021E70BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E71B8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E6FD8
	mov r4, #0
_021E6EDA:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021E6EE4
	bl sub_020181C4
_021E6EE4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E6EDA
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E6E94

	thumb_func_start ov21_021E6EF0
ov21_021E6EF0: ; 0x021E6EF0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x22
	mov r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x3d
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6EF0

	thumb_func_start ov21_021E6F58
ov21_021E6F58: ; 0x021E6F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E6FCC ; =0x0000238E
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x66
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #0x10]
	bl sub_0200A3DC
	ldr r0, [r5, #0x10]
	bl sub_02009D4C
	ldr r0, _021E6FD0 ; =0x0000238C
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x64
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x18]
	ldr r0, _021E6FD4 ; =0x0000238D
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x65
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x1c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E6FCC: .word 0x0000238E
_021E6FD0: .word 0x0000238C
_021E6FD4: .word 0x0000238D
	thumb_func_end ov21_021E6F58

	thumb_func_start ov21_021E6FD8
ov21_021E6FD8: ; 0x021E6FD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6FD8

	thumb_func_start ov21_021E700C
ov21_021E700C: ; 0x021E700C
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021E70B4 ; =0x0000238D
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	add r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021E70B8 ; =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1e
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	mov r0, #0x11
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #3
	lsl r1, r1, #0xe
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	mov r1, #1
	str r0, [r5, #0]
	bl sub_02021D6C
	mov r0, #0x2f
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r1, #0x1e
	mov r0, #3
	lsl r1, r1, #0xe
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	mov r1, #1
	str r0, [r5, #4]
	bl sub_02021D6C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E70B4: .word 0x0000238D
_021E70B8: .word 0x0000083F
	thumb_func_end ov21_021E700C

	thumb_func_start ov21_021E70BC
ov21_021E70BC: ; 0x021E70BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E70C2:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E70C2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E70BC

	thumb_func_start ov21_021E70D4
ov21_021E70D4: ; 0x021E70D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	ldr r4, [r1, #0]
	cmp r0, #0
	bne _021E70E8
	bl sub_02022974
_021E70E8:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E71B0 ; =0x0000083F
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	mov r1, #0
	bl sub_0200A72C
	mov r1, #7
	mvn r1, r1
	str r1, [sp, #0x1c]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	str r6, [sp, #0x2c]
	bl sub_0201FAB4
	add r7, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xc
	mov r2, #2
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E71B4 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x2d
	bl ov21_021D4DAC
	lsr r0, r0, #1
	neg r0, r0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #8]
	ldr r0, [r0, #0]
	add r1, r7, #4
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xc
	mov r2, #2
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E71B4 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x2e
	bl ov21_021D4DAC
	lsr r0, r0, #1
	neg r0, r0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0xc]
	ldr r0, [r0, #0]
	add r1, r7, #4
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E71B0: .word 0x0000083F
_021E71B4: .word 0x000002B9
	thumb_func_end ov21_021E70D4

	thumb_func_start ov21_021E71B8
ov21_021E71B8: ; 0x021E71B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E71BE:
	ldr r0, [r5, #8]
	bl ov21_021D4D1C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E71BE
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E71B8

	thumb_func_start ov21_021E71D0
ov21_021E71D0: ; 0x021E71D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r3, #0
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x30]
	ldr r6, [sp, #0x40]
	mov r5, #0
	bl ov21_021D144C
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x38]
	bl ov21_021E727C
	ldr r0, [sp, #8]
	bl sub_02021E74
	cmp r0, #3
	bhi _021E7242
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E720E: ; jump table
	.short _021E7216 - _021E720E - 2 ; case 0
	.short _021E7216 - _021E720E - 2 ; case 1
	.short _021E7226 - _021E720E - 2 ; case 2
	.short _021E7234 - _021E720E - 2 ; case 3
_021E7216:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021E7242
	mov r0, #0
	mov r5, #1
	mov r7, #9
	str r0, [r4, #0]
	b _021E7242
_021E7226:
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _021E7242
	mov r5, #1
	mov r7, #0xa
	str r5, [r4, #0]
	b _021E7242
_021E7234:
	ldr r0, [r4, #0]
	cmp r0, #2
	beq _021E7242
	mov r0, #2
	mov r5, #1
	mov r7, #8
	str r0, [r4, #0]
_021E7242:
	cmp r5, #0
	beq _021E7278
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021E7250
	bl sub_020181C4
_021E7250:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x34]
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, sp, #0x10
	bl ov21_021D27E0
	str r0, [r6, #0]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0xc]
	mov r0, #0x1f
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0201DC68
	cmp r0, #0
	bne _021E7278
	bl sub_02022974
_021E7278:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E71D0

	thumb_func_start ov21_021E727C
ov21_021E727C: ; 0x021E727C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D1524
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021E727C

	thumb_func_start ov21_021E728C
ov21_021E728C: ; 0x021E728C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r4, r7, #0
	add r5, r7, #0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r3, [sp, #0x24]
	mov r6, #0
	add r4, #0x38
	add r5, #0x30
_021E72A2:
	cmp r6, #0
	bne _021E72AA
	mov r1, #4
	b _021E72AC
_021E72AA:
	mov r1, #5
_021E72AC:
	mov r0, #7
	mvn r0, r0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [r7, #0]
	ldr r2, [r7, #8]
	ldr r3, [r3, #0x10]
	bl ov21_021E71D0
	ldr r0, [sp, #0x20]
	add r6, r6, #1
	add r0, r0, #4
	add r4, r4, #4
	add r5, r5, #4
	add r7, r7, #4
	str r0, [sp, #0x20]
	cmp r6, #2
	blt _021E72A2
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E728C

	thumb_func_start ov21_021E72E8
ov21_021E72E8: ; 0x021E72E8
	push {r3, lr}
	ldr r2, _021E7324 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #1
	tst r3, r2
	beq _021E7320
	ldr r3, [r1, #4]
	cmp r3, #1
	bne _021E730C
	mov r3, #0
	str r3, [r1, #4]
	ldr r3, [r1, #0]
	ldr r1, [r3, #0]
	orr r1, r2
	str r1, [r3, #0]
	mov r1, #2
	str r1, [r0, #0x10]
	b _021E731A
_021E730C:
	str r2, [r1, #4]
	ldr r3, [r1, #0]
	mov r1, #2
	ldr r2, [r3, #0]
	orr r2, r1
	str r2, [r3, #0]
	str r1, [r0, #0x14]
_021E731A:
	ldr r0, _021E7328 ; =0x000005DD
	bl sub_02005748
_021E7320:
	pop {r3, pc}
	nop
_021E7324: .word 0x021BF67C
_021E7328: .word 0x000005DD
	thumb_func_end ov21_021E72E8

	thumb_func_start ov21_021E732C
ov21_021E732C: ; 0x021E732C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021E7364
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021E7354
	mov r0, #0x60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xbc
	mov r2, #0x78
	mov r3, #0x68
	bl ov21_021E7368
	pop {r3, r4, r5, pc}
_021E7354:
	mov r0, #0x60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x44
	mov r2, #0x78
	mov r3, #0x68
	bl ov21_021E7368
_021E7364:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E732C

	thumb_func_start ov21_021E7368
ov21_021E7368: ; 0x021E7368
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0, #0]
	bl ov21_021D2574
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7368