	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021E1924
ov21_021E1924: ; 0x021E1924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E199C
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E19FC
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E1A24
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E1ACC
	str r0, [r5, #0x24]
	ldr r0, _021E196C ; =ov21_021E1AD0
	str r0, [r5, #8]
	ldr r0, _021E1970 ; =ov21_021E1B14
	str r0, [r5, #0xc]
	ldr r0, _021E1974 ; =ov21_021E1B54
	str r0, [r5, #0x10]
	ldr r0, _021E1978 ; =ov21_021E1B68
	str r0, [r5, #0x14]
	ldr r0, _021E197C ; =ov21_021E1BFC
	str r0, [r5, #0x18]
	ldr r0, _021E1980 ; =ov21_021E1CB8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E196C: .word ov21_021E1AD0
_021E1970: .word ov21_021E1B14
_021E1974: .word ov21_021E1B54
_021E1978: .word ov21_021E1B68
_021E197C: .word ov21_021E1BFC
_021E1980: .word ov21_021E1CB8
	thumb_func_end ov21_021E1924

	thumb_func_start ov21_021E1984
ov21_021E1984: ; 0x021E1984
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E1A7C
	ldr r0, [r4, #0]
	bl ov21_021E1A90
	ldr r0, [r4, #0x20]
	bl ov21_021E1AA4
	pop {r4, pc}
	thumb_func_end ov21_021E1984

	thumb_func_start ov21_021E199C
ov21_021E199C: ; 0x021E199C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bne _021E19AE
	bl sub_02022974
_021E19AE:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021E19B4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E19B4
	add r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1430
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl ov21_021D1410
	ldr r0, [r0, #0]
	mov r1, #3
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov21_021D1410
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #4
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E199C

	thumb_func_start ov21_021E19FC
ov21_021E19FC: ; 0x021E19FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E1A0E
	bl sub_02022974
_021E1A0E:
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
	thumb_func_end ov21_021E19FC

	thumb_func_start ov21_021E1A24
ov21_021E1A24: ; 0x021E1A24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021E1ACC
	add r7, r0, #0
	mov r1, #0x14
	mul r7, r1
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021E1A44
	bl sub_02022974
_021E1A44:
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_020D5124
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov21_021D4A94
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x14
	add r2, r6, #0
	mov r3, #2
	bl ov21_021D4BB4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x28
	add r2, r6, #0
	mov r3, #4
	bl ov21_021D4AF8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1A24

	thumb_func_start ov21_021E1A7C
ov21_021E1A7C: ; 0x021E1A7C
	push {r4, lr}
	add r4, r0, #0
	bne _021E1A86
	bl sub_02022974
_021E1A86:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1A7C

	thumb_func_start ov21_021E1A90
ov21_021E1A90: ; 0x021E1A90
	push {r4, lr}
	add r4, r0, #0
	bne _021E1A9A
	bl sub_02022974
_021E1A9A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1A90

	thumb_func_start ov21_021E1AA4
ov21_021E1AA4: ; 0x021E1AA4
	push {r4, lr}
	add r4, r0, #0
	bne _021E1AAE
	bl sub_02022974
_021E1AAE:
	add r0, r4, #0
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x14
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x28
	bl ov21_021D4660
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021E1AA4

	thumb_func_start ov21_021E1ACC
ov21_021E1ACC: ; 0x021E1ACC
	mov r0, #3
	bx lr
	thumb_func_end ov21_021E1ACC

	thumb_func_start ov21_021E1AD0
ov21_021E1AD0: ; 0x021E1AD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	mov r1, #0x3c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020D5124
	mov r1, #0
	add r2, r4, #0
	mov r0, #4
_021E1AEE:
	add r1, r1, #1
	str r0, [r2, #0x14]
	add r2, r2, #4
	cmp r1, #8
	blt _021E1AEE
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E1D40
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E2968
	str r4, [r5, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1AD0

	thumb_func_start ov21_021E1B14
ov21_021E1B14: ; 0x021E1B14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E1B24
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E1B24:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E1B2E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E1B2E:
	ldr r0, [r5, #0x14]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E1B4E
	add r0, r4, #0
	bl ov21_021E28A8
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E1E00
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E2864
_021E1B4E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1B14

	thumb_func_start ov21_021E1B54
ov21_021E1B54: ; 0x021E1B54
	push {r4, lr}
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl ov21_021E1E74
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E1B54

	thumb_func_start ov21_021E1B68
ov21_021E1B68: ; 0x021E1B68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	str r2, [sp]
	ldr r7, [r3, #8]
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E1BF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1B86: ; jump table
	.short _021E1B8E - _021E1B86 - 2 ; case 0
	.short _021E1BA8 - _021E1B86 - 2 ; case 1
	.short _021E1BCE - _021E1B86 - 2 ; case 2
	.short _021E1BE4 - _021E1B86 - 2 ; case 3
_021E1B8E:
	ldr r0, [r4, #4]
	mov r1, #0xc4
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0xc4
	bl sub_020D5124
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1BF6
_021E1BA8:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E2014
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021E28D0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E25F8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1BF6
_021E1BCE:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E2664
	cmp r0, #0
	beq _021E1BF6
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1BF6
_021E1BE4:
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D25AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E1BF6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1B68

	thumb_func_start ov21_021E1BFC
ov21_021E1BFC: ; 0x021E1BFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x1c]
	add r0, r1, #0
	ldr r0, [r0, #8]
	ldr r6, [r3, #8]
	str r0, [sp, #0x28]
	add r0, #0xc0
	str r1, [sp, #0x20]
	ldr r1, [r0, #0]
	ldr r0, [r6, #0x38]
	cmp r1, r0
	beq _021E1C26
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl ov21_021E28D0
	ldr r0, [sp, #0x28]
	ldr r1, [r6, #0x38]
	add r0, #0xc0
	str r1, [r0, #0]
_021E1C26:
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x28]
	str r0, [sp, #0x24]
	add r0, #0xa0
	ldr r5, [sp, #0x28]
	str r0, [sp, #0x24]
	add r7, #0x80
	add r4, r6, #0
_021E1C3A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _021E1C44
	mov r1, #4
	b _021E1C46
_021E1C44:
	mov r1, #5
_021E1C46:
	mov r0, #5
	mvn r0, r0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x20]
	str r7, [sp, #8]
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, #0]
	ldr r2, [r5, #0x20]
	ldr r3, [r4, #0x14]
	bl ov21_021E26A0
	ldr r0, [r5, #0x50]
	ldr r1, [r4, #0x14]
	bl ov21_021D144C
	ldr r0, [sp, #0x24]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r4, r4, #4
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x2c]
	cmp r0, #1
	ble _021E1C3A
	ldr r0, [sp, #0x28]
	mov r4, #2
	add r0, #8
	add r6, #8
	str r0, [sp, #0x28]
_021E1C96:
	ldr r0, [sp, #0x28]
	ldr r1, [r6, #0x14]
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl ov21_021E29A4
	ldr r0, [sp, #0x28]
	add r4, r4, #1
	add r0, r0, #4
	add r6, r6, #4
	str r0, [sp, #0x28]
	cmp r4, #8
	blt _021E1C96
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1BFC

	thumb_func_start ov21_021E1CB8
ov21_021E1CB8: ; 0x021E1CB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #4
	bhi _021E1D3A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1CD4: ; jump table
	.short _021E1CDE - _021E1CD4 - 2 ; case 0
	.short _021E1D00 - _021E1CD4 - 2 ; case 1
	.short _021E1D16 - _021E1CD4 - 2 ; case 2
	.short _021E1D28 - _021E1CD4 - 2 ; case 3
	.short _021E1D36 - _021E1CD4 - 2 ; case 4
_021E1CDE:
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
	bl ov21_021E25F8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1D3A
_021E1D00:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl ov21_021E2664
	cmp r0, #0
	beq _021E1D3A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1D3A
_021E1D16:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E2044
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1D3A
_021E1D28:
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E1D3A
_021E1D36:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E1D3A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1CB8

	thumb_func_start ov21_021E1D40
ov21_021E1D40: ; 0x021E1D40
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x20
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x70
	mov r2, #0x98
	mov r3, #0x30
	bl ov21_021D154C
	mov r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x38
	add r0, r0, #4
	mov r2, #0x60
	mov r3, #0x30
	bl ov21_021D154C
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #8
	mov r2, #0xc0
	mov r3, #8
	bl ov21_021D154C
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #0xc
	mov r2, #0xc0
	mov r3, #0x30
	bl ov21_021D154C
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #0x10
	mov r2, #0xc0
	mov r3, #0x58
	bl ov21_021D154C
	mov r0, #0xa8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #0x14
	mov r2, #0xc0
	mov r3, #0x80
	bl ov21_021D154C
	mov r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #0x18
	mov r2, #0xc0
	mov r3, #0xa8
	bl ov21_021D154C
	mov r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #0x1c
	mov r2, #0xc0
	mov r3, #0xd0
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	add r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E1DFC ; =ov21_021E1E8C
	mov r1, #8
	add r3, #8
	bl sub_02023FCC
	str r0, [r5, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E1DFC: .word ov21_021E1E8C
	thumb_func_end ov21_021E1D40

	thumb_func_start ov21_021E1E00
ov21_021E1E00: ; 0x021E1E00
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r2, r4, #0
	mov r0, #3
_021E1E0A:
	add r1, r1, #1
	str r0, [r2, #0x14]
	add r2, r2, #4
	cmp r1, #8
	blt _021E1E0A
	ldr r0, [r4, #0]
	bl sub_0202404C
	ldr r0, [r4, #0x10]
	cmp r0, #5
	bhi _021E1E5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1E2C: ; jump table
	.short _021E1E38 - _021E1E2C - 2 ; case 0
	.short _021E1E3E - _021E1E2C - 2 ; case 1
	.short _021E1E44 - _021E1E2C - 2 ; case 2
	.short _021E1E4A - _021E1E2C - 2 ; case 3
	.short _021E1E50 - _021E1E2C - 2 ; case 4
	.short _021E1E56 - _021E1E2C - 2 ; case 5
_021E1E38:
	mov r0, #1
	str r0, [r4, #0x1c]
	b _021E1E5A
_021E1E3E:
	mov r0, #1
	str r0, [r4, #0x20]
	b _021E1E5A
_021E1E44:
	mov r0, #1
	str r0, [r4, #0x24]
	b _021E1E5A
_021E1E4A:
	mov r0, #1
	str r0, [r4, #0x28]
	b _021E1E5A
_021E1E50:
	mov r0, #1
	str r0, [r4, #0x2c]
	b _021E1E5A
_021E1E56:
	mov r0, #1
	str r0, [r4, #0x30]
_021E1E5A:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021E1E66
	cmp r0, #1
	beq _021E1E6C
	pop {r4, pc}
_021E1E66:
	mov r0, #2
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E1E6C:
	mov r0, #2
	str r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1E00

	thumb_func_start ov21_021E1E74
ov21_021E1E74: ; 0x021E1E74
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
	thumb_func_end ov21_021E1E74

	thumb_func_start ov21_021E1E8C
ov21_021E1E8C: ; 0x021E1E8C
	push {r3, r4, r5, lr}
	ldr r4, [r2, #4]
	ldr r5, [r2, #0]
	lsl r2, r0, #2
	add r2, r4, r2
	str r1, [r2, #0x14]
	cmp r1, #2
	bne _021E1F06
	cmp r0, #7
	bhi _021E1F06
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1EAC: ; jump table
	.short _021E1EBC - _021E1EAC - 2 ; case 0
	.short _021E1EC2 - _021E1EAC - 2 ; case 1
	.short _021E1EC8 - _021E1EAC - 2 ; case 2
	.short _021E1EFE - _021E1EAC - 2 ; case 3
	.short _021E1F36 - _021E1EAC - 2 ; case 4
	.short _021E1F6C - _021E1EAC - 2 ; case 5
	.short _021E1FA2 - _021E1EAC - 2 ; case 6
	.short _021E1FD8 - _021E1EAC - 2 ; case 7
_021E1EBC:
	mov r0, #0
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_021E1EC2:
	mov r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_021E1EC8:
	ldr r0, [r4, #0x38]
	mov r1, #1
	tst r0, r1
	beq _021E1F06
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r5, #8]
	bne _021E1EDE
	bl ov21_021DE6D4
	b _021E1EE6
_021E1EDE:
	mov r1, #0
	bl ov21_021DE6D8
	mov r0, #1
_021E1EE6:
	cmp r0, #0
	beq _021E1F06
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl ov21_021E27C0
	ldr r0, _021E2010 ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021E1EFE:
	ldr r1, [r4, #0x38]
	mov r0, #2
	tst r0, r1
	bne _021E1F08
_021E1F06:
	b _021E200C
_021E1F08:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldr r0, [r5, #0x10]
	bne _021E1F16
	bl ov21_021E0CE4
	b _021E1F1E
_021E1F16:
	mov r1, #0
	bl ov21_021E0CE8
	mov r0, #1
_021E1F1E:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E27C0
	ldr r0, _021E2010 ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021E1F36:
	ldr r1, [r4, #0x38]
	mov r0, #4
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #2
	ldr r0, [r5, #0x10]
	bne _021E1F4C
	bl ov21_021E0CE4
	b _021E1F54
_021E1F4C:
	mov r1, #0
	bl ov21_021E0CE8
	mov r0, #1
_021E1F54:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #2
	bl ov21_021E27C0
	ldr r0, _021E2010 ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021E1F6C:
	ldr r1, [r4, #0x38]
	mov r0, #8
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #3
	ldr r0, [r5, #0x10]
	bne _021E1F82
	bl ov21_021E0CE4
	b _021E1F8A
_021E1F82:
	mov r1, #0
	bl ov21_021E0CE8
	mov r0, #1
_021E1F8A:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #3
	bl ov21_021E27C0
	ldr r0, _021E2010 ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021E1FA2:
	ldr r1, [r4, #0x38]
	mov r0, #0x10
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #4
	ldr r0, [r5, #0x10]
	bne _021E1FB8
	bl ov21_021E0CE4
	b _021E1FC0
_021E1FB8:
	mov r1, #0
	bl ov21_021E0CE8
	mov r0, #1
_021E1FC0:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #4
	bl ov21_021E27C0
	ldr r0, _021E2010 ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021E1FD8:
	ldr r1, [r4, #0x38]
	mov r0, #0x20
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #5
	ldr r0, [r5, #0x10]
	bne _021E1FEE
	bl ov21_021E0CE4
	b _021E1FF6
_021E1FEE:
	mov r1, #0
	bl ov21_021E0CE8
	mov r0, #1
_021E1FF6:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #5
	bl ov21_021E27C0
	ldr r0, _021E2010 ; =0x0000068B
	bl sub_02005748
_021E200C:
	pop {r3, r4, r5, pc}
	nop
_021E2010: .word 0x0000068B
	thumb_func_end ov21_021E1E8C

	thumb_func_start ov21_021E2014
ov21_021E2014: ; 0x021E2014
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E20A4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E2180
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E22C8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E2478
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E2014

	thumb_func_start ov21_021E2044
ov21_021E2044: ; 0x021E2044
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
	bl ov21_021E2458
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E256C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E226C
	mov r4, #0
_021E208A:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021E2098
	bl sub_020181C4
_021E2098:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E208A
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E2044

	thumb_func_start ov21_021E20A4
ov21_021E20A4: ; 0x021E20A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x22
	mov r3, #6
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x3e
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
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
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r6, #0
	bl sub_020181C4
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x3c
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r6, r0, #0
	mov r1, #6
	ldr r2, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp]
	ldrh r0, [r2]
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r6, #0
	bl sub_020181C4
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x3f
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r4, r0, #0
	mov r1, #6
	ldr r2, [sp, #0x10]
	mov r0, #7
	str r0, [sp]
	ldrh r0, [r2]
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E20A4

	thumb_func_start ov21_021E2180
ov21_021E2180: ; 0x021E2180
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E2254 ; =0x000013EE
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
	str r0, [r5, #0x40]
	bl sub_0200A3DC
	ldr r0, [r5, #0x40]
	bl sub_02009D4C
	ldr r0, _021E2258 ; =0x000013EC
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
	str r0, [r5, #0x48]
	ldr r0, _021E225C ; =0x000013ED
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
	str r0, [r5, #0x4c]
	ldr r0, _021E2260 ; =0x000013EB
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x63
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #0x70]
	bl sub_0200A3DC
	ldr r0, [r5, #0x70]
	bl sub_02009D4C
	ldr r0, _021E2264 ; =0x000013E9
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x61
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x78]
	ldr r0, _021E2268 ; =0x000013EA
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x62
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x7c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E2254: .word 0x000013EE
_021E2258: .word 0x000013EC
_021E225C: .word 0x000013ED
_021E2260: .word 0x000013EB
_021E2264: .word 0x000013E9
_021E2268: .word 0x000013EA
	thumb_func_end ov21_021E2180

	thumb_func_start ov21_021E226C
ov21_021E226C: ; 0x021E226C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x40]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x48]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x4c]
	bl sub_02009D68
	ldr r0, [r5, #0x70]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x70]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x78]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x7c]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E226C

	thumb_func_start ov21_021E22C8
ov21_021E22C8: ; 0x021E22C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, [r1, #0]
	ldr r3, _021E2444 ; =0x000013ED
	add r7, r0, #0
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
	add r5, r2, #0
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
	ldr r2, _021E2448 ; =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x50
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x21
	str r0, [sp, #0x30]
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	mov r0, #0x1f
	str r0, [sp, #0x44]
	mov r0, #2
	str r0, [sp, #0x48]
	lsl r0, r0, #0x12
	str r0, [sp, #0x38]
	mov r0, #3
	lsl r1, r1, #0xe
	lsl r0, r0, #0x12
	str r1, [sp, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	str r5, [sp, #0x4c]
	bl sub_02021B90
	mov r1, #0
	str r0, [r7, #0]
	bl sub_02021D6C
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x38]
	mov r1, #0x13
	mov r0, #3
	lsl r1, r1, #0xe
	lsl r0, r0, #0x12
	str r1, [sp, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl sub_02021B90
	mov r1, #0
	str r0, [r7, #4]
	bl sub_02021D6C
	ldr r3, _021E244C ; =0x000013EA
	mov r0, #0
	mov r2, #5
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #2
	lsl r2, r2, #6
	str r1, [sp, #0x10]
	ldr r1, [r4, r2]
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r4, r2]
	ldr r2, _021E2448 ; =0x0000083F
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x50
	sub r3, r3, #1
	bl sub_020093B4
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	mov r1, #0xb
	mov r0, #3
	lsl r1, r1, #0x10
	lsl r0, r0, #0x12
	str r1, [sp, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x3c]
	mov r0, #0
	ldr r4, _021E2450 ; =0x021E9D80
	ldr r5, _021E2454 ; =0x021E9D98
	str r0, [sp, #0x2c]
	add r6, r7, #0
_021E23C6:
	ldr r0, [r4, #0]
	str r0, [sp, #0x38]
	add r0, sp, #0x30
	bl sub_02021B90
	str r0, [r6, #8]
	ldr r1, [r5, #0]
	bl sub_02021D6C
	ldr r0, [sp, #0x2c]
	add r4, r4, #4
	add r0, r0, #1
	add r6, r6, #4
	add r5, r5, #4
	str r0, [sp, #0x2c]
	cmp r0, #6
	blt _021E23C6
	mov r0, #0x1e
	str r0, [sp, #0x44]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	mov r1, #0x86
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	str r1, [sp, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl sub_02021B90
	mov r1, #0xd
	str r0, [r7, #0x50]
	bl sub_02021D6C
	mov r0, #6
	lsl r0, r0, #0x10
	mov r1, #0x4e
	str r0, [sp, #0x38]
	lsl r1, r1, #0xc
	lsl r0, r0, #1
	str r1, [sp, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl sub_02021B90
	mov r1, #0xc
	str r0, [r7, #0x54]
	bl sub_02021D6C
	mov r1, #2
	add r7, #8
	mov r0, #0
_021E2434:
	add r1, r1, #1
	str r0, [r7, #0x50]
	add r7, r7, #4
	cmp r1, #8
	blt _021E2434
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021E2444: .word 0x000013ED
_021E2448: .word 0x0000083F
_021E244C: .word 0x000013EA
_021E2450: .word 0x021E9D80
_021E2454: .word 0x021E9D98
	thumb_func_end ov21_021E22C8

	thumb_func_start ov21_021E2458
ov21_021E2458: ; 0x021E2458
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E245E:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E246E
	bl sub_02021BD4
_021E246E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E245E
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E2458

	thumb_func_start ov21_021E2478
ov21_021E2478: ; 0x021E2478
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	ldr r4, [r1, #0]
	cmp r0, #0
	bne _021E248C
	bl sub_02022974
_021E248C:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E2564 ; =0x0000083F
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	mov r1, #0
	bl sub_0200A72C
	mov r1, #5
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
	mov r1, #8
	mov r2, #4
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E2568 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x21
	bl ov21_021D4DAC
	str r6, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x14]
	mov r0, #0x1f
	mvn r0, r0
	str r0, [sp, #0x18]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x20]
	ldr r0, [r0, #0]
	add r1, r7, #4
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	mov r2, #4
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E2568 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x22
	bl ov21_021D4DAC
	mov r1, #0x20
	sub r0, r1, r0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x24]
	ldr r0, [r0, #0]
	add r1, r7, #4
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	mov r1, #2
	add r5, #8
	mov r0, #0
_021E2556:
	add r1, r1, #1
	str r0, [r5, #0x20]
	add r5, r5, #4
	cmp r1, #8
	blt _021E2556
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E2564: .word 0x0000083F
_021E2568: .word 0x000002B9
	thumb_func_end ov21_021E2478

	thumb_func_start ov21_021E256C
ov21_021E256C: ; 0x021E256C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E2572:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E257C
	bl ov21_021D4D1C
_021E257C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E2572
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E256C

	thumb_func_start ov21_021E2588
ov21_021E2588: ; 0x021E2588
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	add r5, r0, #0
	mov r4, #0
	add r6, r7, #0
_021E2592:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021FE0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E25A8
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02012AF0
_021E25A8:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E25B4
	mov r1, #1
	bl sub_02021FE0
_021E25B4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E2592
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E2588

	thumb_func_start ov21_021E25C0
ov21_021E25C0: ; 0x021E25C0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
	add r6, r4, #0
_021E25CA:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021FE0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E25E0
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02012AF0
_021E25E0:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E25EC
	mov r1, #0
	bl sub_02021FE0
_021E25EC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E25CA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E25C0

	thumb_func_start ov21_021E25F8
ov21_021E25F8: ; 0x021E25F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E2588
	ldr r0, [r4, #0x14]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E2660
	cmp r6, #0
	beq _021E263C
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
_021E263C:
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
_021E2660:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E25F8

	thumb_func_start ov21_021E2664
ov21_021E2664: ; 0x021E2664
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #0x14]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E2684
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov21_021D2424
	b _021E268A
_021E2684:
	mov r0, #2
	bl sub_0200AC1C
_021E268A:
	cmp r0, #0
	beq _021E269C
	cmp r4, #0
	beq _021E2698
	add r0, r6, #0
	bl ov21_021E25C0
_021E2698:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E269C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E2664

	thumb_func_start ov21_021E26A0
ov21_021E26A0: ; 0x021E26A0
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
	bl ov21_021E274C
	ldr r0, [sp, #8]
	bl sub_02021E74
	cmp r0, #3
	bhi _021E2712
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E26DE: ; jump table
	.short _021E26E6 - _021E26DE - 2 ; case 0
	.short _021E26E6 - _021E26DE - 2 ; case 1
	.short _021E26F6 - _021E26DE - 2 ; case 2
	.short _021E2704 - _021E26DE - 2 ; case 3
_021E26E6:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021E2712
	mov r0, #0
	mov r5, #1
	mov r7, #9
	str r0, [r4, #0]
	b _021E2712
_021E26F6:
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _021E2712
	mov r5, #1
	mov r7, #0xa
	str r5, [r4, #0]
	b _021E2712
_021E2704:
	ldr r0, [r4, #0]
	cmp r0, #2
	beq _021E2712
	mov r0, #2
	mov r5, #1
	mov r7, #8
	str r0, [r4, #0]
_021E2712:
	cmp r5, #0
	beq _021E2748
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021E2720
	bl sub_020181C4
_021E2720:
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
	bne _021E2748
	bl sub_02022974
_021E2748:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E26A0

	thumb_func_start ov21_021E274C
ov21_021E274C: ; 0x021E274C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D1524
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021E274C

	thumb_func_start ov21_021E275C
ov21_021E275C: ; 0x021E275C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	mov r6, #1
	str r6, [r1, #0x1c]
	ldr r3, [r4, #0]
	add r5, r2, #0
	ldr r2, [r3, #0]
	mov r1, #4
	orr r1, r2
	str r1, [r3, #0]
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #2
	ldr r0, [r4, #8]
	cmp r5, #5
	str r1, [r0, #0x14]
	bhi _021E27BC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E278C: ; jump table
	.short _021E2798 - _021E278C - 2 ; case 0
	.short _021E27AA - _021E278C - 2 ; case 1
	.short _021E27AA - _021E278C - 2 ; case 2
	.short _021E27AA - _021E278C - 2 ; case 3
	.short _021E27AA - _021E278C - 2 ; case 4
	.short _021E27AA - _021E278C - 2 ; case 5
_021E2798:
	ldr r0, [r4, #8]
	mov r1, #0x30
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	mov r1, #0x48
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	str r6, [r0, #0x14]
	pop {r4, r5, r6, pc}
_021E27AA:
	ldr r0, [r4, #0x10]
	mov r1, #0x30
	mov r2, #0x48
	bl ov21_021E0CD4
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov21_021E0CDC
_021E27BC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E275C

	thumb_func_start ov21_021E27C0
ov21_021E27C0: ; 0x021E27C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r5, #5
	bhi _021E2822
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E27D8: ; jump table
	.short _021E27E4 - _021E27D8 - 2 ; case 0
	.short _021E27FE - _021E27D8 - 2 ; case 1
	.short _021E27FE - _021E27D8 - 2 ; case 2
	.short _021E27FE - _021E27D8 - 2 ; case 3
	.short _021E27FE - _021E27D8 - 2 ; case 4
	.short _021E27FE - _021E27D8 - 2 ; case 5
_021E27E4:
	ldr r3, [r4, #0]
	mov r1, #4
	ldr r2, [r3, #0]
	mov r7, #0x30
	orr r1, r2
	str r1, [r3, #0]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #8]
	mov r1, #2
	mov r6, #0x48
	str r1, [r0, #0x14]
	b _021E2822
_021E27FE:
	ldr r2, [r4, #0]
	mov r1, #2
	ldr r3, [r2, #0]
	mov r7, #0x30
	orr r3, r1
	str r3, [r2, #0]
	str r5, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r6, #0x48
	bl ov21_021E0CDC
	sub r0, r5, #1
	bl ov21_021D5608
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov21_021E0CF8
_021E2822:
	ldr r0, [sp]
	cmp r0, #5
	bhi _021E2862
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E2834: ; jump table
	.short _021E2840 - _021E2834 - 2 ; case 0
	.short _021E2850 - _021E2834 - 2 ; case 1
	.short _021E2850 - _021E2834 - 2 ; case 2
	.short _021E2850 - _021E2834 - 2 ; case 3
	.short _021E2850 - _021E2834 - 2 ; case 4
	.short _021E2850 - _021E2834 - 2 ; case 5
_021E2840:
	ldr r0, [r4, #8]
	mov r1, #2
	str r7, [r0, #8]
	ldr r0, [r4, #8]
	str r6, [r0, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_021E2850:
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl ov21_021E0CD4
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov21_021E0CDC
_021E2862:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E27C0

	thumb_func_start ov21_021E2864
ov21_021E2864: ; 0x021E2864
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	cmp r0, #8
	beq _021E28A2
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021E2880
	mov r1, #0
	mvn r1, r1
	bl ov21_021D371C
	b _021E2886
_021E2880:
	mov r1, #1
	bl ov21_021D371C
_021E2886:
	cmp r0, #1
	bne _021E28A2
	ldr r2, [r5, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E275C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E2968
	ldr r0, _021E28A4 ; =0x0000068B
	bl sub_02005748
_021E28A2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E28A4: .word 0x0000068B
	thumb_func_end ov21_021E2864

	thumb_func_start ov21_021E28A8
ov21_021E28A8: ; 0x021E28A8
	ldr r1, _021E28CC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	tst r1, r2
	beq _021E28B8
	mov r1, #1
	str r1, [r0, #0x34]
	bx lr
_021E28B8:
	mov r1, #0x80
	tst r1, r2
	beq _021E28C4
	mov r1, #0
	str r1, [r0, #0x34]
	bx lr
_021E28C4:
	mov r1, #8
	str r1, [r0, #0x34]
	bx lr
	nop
_021E28CC: .word 0x021BF67C
	thumb_func_end ov21_021E28A8

	thumb_func_start ov21_021E28D0
ov21_021E28D0: ; 0x021E28D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	mov r1, #1
	tst r0, r1
	ldr r0, [r5, #8]
	bne _021E28E8
	mov r1, #0
	bl sub_02021CAC
	b _021E28EC
_021E28E8:
	bl sub_02021CAC
_021E28EC:
	ldr r1, [r4, #0x38]
	mov r0, #2
	tst r0, r1
	ldr r0, [r5, #0xc]
	bne _021E28FE
	mov r1, #0
	bl sub_02021CAC
	b _021E2904
_021E28FE:
	mov r1, #1
	bl sub_02021CAC
_021E2904:
	ldr r1, [r4, #0x38]
	mov r0, #4
	tst r0, r1
	ldr r0, [r5, #0x10]
	bne _021E2916
	mov r1, #0
	bl sub_02021CAC
	b _021E291C
_021E2916:
	mov r1, #1
	bl sub_02021CAC
_021E291C:
	ldr r1, [r4, #0x38]
	mov r0, #8
	tst r0, r1
	ldr r0, [r5, #0x14]
	bne _021E292E
	mov r1, #0
	bl sub_02021CAC
	b _021E2934
_021E292E:
	mov r1, #1
	bl sub_02021CAC
_021E2934:
	ldr r1, [r4, #0x38]
	mov r0, #0x10
	tst r0, r1
	ldr r0, [r5, #0x18]
	bne _021E2946
	mov r1, #0
	bl sub_02021CAC
	b _021E294C
_021E2946:
	mov r1, #1
	bl sub_02021CAC
_021E294C:
	ldr r1, [r4, #0x38]
	mov r0, #0x20
	tst r0, r1
	ldr r0, [r5, #0x1c]
	bne _021E295E
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_021E295E:
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E28D0

	thumb_func_start ov21_021E2968
ov21_021E2968: ; 0x021E2968
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r4, r0, #0
	add r6, r1, #0
	str r5, [r0, #0x38]
	add r4, #0x38
	mov r7, #1
_021E2976:
	add r0, r5, #0
	bl ov21_021D5608
	add r1, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D392C
	cmp r0, #0
	beq _021E299C
	ldr r1, [r4, #0]
	mov r0, #1
	add r2, r1, #0
	orr r2, r0
	add r0, r5, #1
	add r1, r7, #0
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	str r0, [r4, #0]
_021E299C:
	add r5, r5, #1
	cmp r5, #5
	blt _021E2976
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E2968

	thumb_func_start ov21_021E29A4
ov21_021E29A4: ; 0x021E29A4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #2
	blt _021E29B4
	cmp r4, #8
	blt _021E29B8
_021E29B4:
	bl sub_02022974
_021E29B8:
	sub r0, r4, #2
	lsl r1, r0, #2
	ldr r0, _021E29D8 ; =0x021E9D98
	cmp r6, #1
	ldr r1, [r0, r1]
	bne _021E29CE
	add r0, r5, #0
	add r1, r1, #1
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
_021E29CE:
	add r0, r5, #0
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
	nop
_021E29D8: .word 0x021E9D98
	thumb_func_end ov21_021E29A4

	.rodata


	.global Unk_ov21_021E9D80
Unk_ov21_021E9D80: ; 0x021E9D80
	.incbin "incbin/overlay21_rodata.bin", 0x25C, 0x274 - 0x25C

	.global Unk_ov21_021E9D98
Unk_ov21_021E9D98: ; 0x021E9D98
	.incbin "incbin/overlay21_rodata.bin", 0x274, 0x18

