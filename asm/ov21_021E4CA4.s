	.include "macros/function.inc"
	.include "include/ov21_021E4CA4.inc"

	

	.text


	thumb_func_start ov21_021E4CA4
ov21_021E4CA4: ; 0x021E4CA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E4D24
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E4D64
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E4D8C
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E4DBC
	str r0, [r5, #0x24]
	ldr r0, _021E4CEC ; =ov21_021E4DC0
	str r0, [r5, #8]
	ldr r0, _021E4CF0 ; =ov21_021E4E00
	str r0, [r5, #0xc]
	ldr r0, _021E4CF4 ; =ov21_021E4E84
	str r0, [r5, #0x10]
	ldr r0, _021E4CF8 ; =ov21_021E4E98
	str r0, [r5, #0x14]
	ldr r0, _021E4CFC ; =ov21_021E4F20
	str r0, [r5, #0x18]
	ldr r0, _021E4D00 ; =ov21_021E4F78
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E4CEC: .word ov21_021E4DC0
_021E4CF0: .word ov21_021E4E00
_021E4CF4: .word ov21_021E4E84
_021E4CF8: .word ov21_021E4E98
_021E4CFC: .word ov21_021E4F20
_021E4D00: .word ov21_021E4F78
	thumb_func_end ov21_021E4CA4

	thumb_func_start ov21_021E4D04
ov21_021E4D04: ; 0x021E4D04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E4D90
	ldr r0, [r4, #4]
	bl ov21_021E4DA4
	ldr r0, [r4, #0x20]
	bl ov21_021E4DB8
	pop {r4, pc}
	thumb_func_end ov21_021E4D04

	thumb_func_start ov21_021E4D1C
ov21_021E4D1C: ; 0x021E4D1C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E4D1C

	thumb_func_start ov21_021E4D24
ov21_021E4D24: ; 0x021E4D24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _021E4D36
	bl sub_02022974
_021E4D36:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021E4D3C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E4D3C
	add r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1430
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4D24

	thumb_func_start ov21_021E4D64
ov21_021E4D64: ; 0x021E4D64
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E4D76
	bl sub_02022974
_021E4D76:
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
	thumb_func_end ov21_021E4D64

	thumb_func_start ov21_021E4D8C
ov21_021E4D8C: ; 0x021E4D8C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E4D8C

	thumb_func_start ov21_021E4D90
ov21_021E4D90: ; 0x021E4D90
	push {r4, lr}
	add r4, r0, #0
	bne _021E4D9A
	bl sub_02022974
_021E4D9A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4D90

	thumb_func_start ov21_021E4DA4
ov21_021E4DA4: ; 0x021E4DA4
	push {r4, lr}
	add r4, r0, #0
	bne _021E4DAE
	bl sub_02022974
_021E4DAE:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E4DA4

	thumb_func_start ov21_021E4DB8
ov21_021E4DB8: ; 0x021E4DB8
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E4DB8

	thumb_func_start ov21_021E4DBC
ov21_021E4DBC: ; 0x021E4DBC
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E4DBC

	thumb_func_start ov21_021E4DC0
ov21_021E4DC0: ; 0x021E4DC0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0x70
	bl sub_02018144
	mov r1, #0
	mov r2, #0x70
	add r4, r0, #0
	bl memset
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E5128
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E51DC
	add r0, r7, #0
	bl sub_020050F8
	str r0, [r4, #0x6c]
	str r4, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4DC0

	thumb_func_start ov21_021E4E00
ov21_021E4E00: ; 0x021E4E00
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E4E1C
	add r0, r4, #0
	bl ov21_021E5E18
	add r0, r4, #0
	bl ov21_021E5E28
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E4E1C:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E4E26
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E4E26:
	ldr r0, [r4, #0x3c]
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E4E80
	bl sub_0200598C
	cmp r0, #0
	bne _021E4E48
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021E4E48
	add r0, r4, #0
	bl ov21_021E5E18
_021E4E48:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E51DC
	ldr r0, [r5, #8]
	bl ov21_021E33BC
	cmp r0, #0
	beq _021E4E6C
	ldr r0, [r5, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E4E6C
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E5F5C
_021E4E6C:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _021E4E80
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E4E80
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E5E48
_021E4E80:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4E00

	thumb_func_start ov21_021E4E84
ov21_021E4E84: ; 0x021E4E84
	push {r4, lr}
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl ov21_021E5200
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E4E84

	thumb_func_start ov21_021E4E98
ov21_021E4E98: ; 0x021E4E98
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E4F1C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4EB4: ; jump table
	.short _021E4EBC - _021E4EB4 - 2 ; case 0
	.short _021E4ED6 - _021E4EB4 - 2 ; case 1
	.short _021E4EF4 - _021E4EB4 - 2 ; case 2
	.short _021E4F0A - _021E4EB4 - 2 ; case 3
_021E4EBC:
	ldr r0, [r4, #4]
	mov r1, #0x74
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x74
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4F1C
_021E4ED6:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021E54D4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E507C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4F1C
_021E4EF4:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021E50EC
	cmp r0, #0
	beq _021E4F1C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E4F1C
_021E4F0A:
	mov r0, #0x79
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D25AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4F1C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4E98

	thumb_func_start ov21_021E4F20
ov21_021E4F20: ; 0x021E4F20
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r0, #0
	ldr r0, [r6, #8]
	ldr r4, [r3, #8]
	ldr r5, [r1, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E4F74
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E59B4
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E5A04
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E5A2C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E5B50
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov21_021E5B6C
	add r0, r5, #0
	bl ov21_021E5C4C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E5F38
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021E5FD0
_021E4F74:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4F20

	thumb_func_start ov21_021E4F78
ov21_021E4F78: ; 0x021E4F78
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021E5000
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4F94: ; jump table
	.short _021E4F9E - _021E4F94 - 2 ; case 0
	.short _021E4FC6 - _021E4F94 - 2 ; case 1
	.short _021E4FDC - _021E4F94 - 2 ; case 2
	.short _021E4FEE - _021E4F94 - 2 ; case 3
	.short _021E4FFC - _021E4F94 - 2 ; case 4
_021E4F9E:
	mov r0, #0x79
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	bl ov21_021D25AC
	add r0, r5, #0
	bl ov21_021E5EC0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021E507C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E5000
_021E4FC6:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ov21_021E50EC
	cmp r0, #0
	beq _021E5000
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E5000
_021E4FDC:
	ldr r2, [r4, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E5510
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E5000
_021E4FEE:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E5000
_021E4FFC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5000:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4F78

	thumb_func_start ov21_021E5004
ov21_021E5004: ; 0x021E5004
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #0x50]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02012AF0
	ldr r0, [r4, #0x54]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5004

	thumb_func_start ov21_021E5040
ov21_021E5040: ; 0x021E5040
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r4, #0x50]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	ldr r0, [r4, #0x54]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5040

	thumb_func_start ov21_021E507C
ov21_021E507C: ; 0x021E507C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E5004
	ldr r0, [r4, #8]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E50E8
	cmp r6, #0
	beq _021E50C2
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #3
	add r2, r1, #0
	sub r2, #0x13
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E50C2:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #3
	add r3, r1, #0
	sub r3, #0x13
	bl ov21_021D23F8
_021E50E8:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E507C

	thumb_func_start ov21_021E50EC
ov21_021E50EC: ; 0x021E50EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E510C
	mov r0, #0x19
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov21_021D2424
	b _021E5112
_021E510C:
	mov r0, #2
	bl sub_0200AC1C
_021E5112:
	cmp r0, #0
	beq _021E5124
	cmp r4, #0
	beq _021E5120
	add r0, r6, #0
	bl ov21_021E5040
_021E5120:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E5124:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E50EC

	thumb_func_start ov21_021E5128
ov21_021E5128: ; 0x021E5128
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02018144
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	str r0, [r5, #0x10]
	mov r0, #0x6a
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x35
	mov r2, #0x51
	mov r3, #0x16
	bl ov21_021D154C
	ldr r1, [r5, #4]
	mov r0, #0xfe
	strb r0, [r1, #4]
	ldr r1, [r5, #4]
	mov r2, #0x33
	strb r2, [r1, #5]
	ldr r1, [r5, #4]
	mov r2, #0x9d
	strb r2, [r1, #6]
	ldr r1, [r5, #4]
	mov r2, #0x20
	strb r2, [r1, #7]
	ldr r1, [r5, #4]
	mov r2, #0x9b
	strb r0, [r1, #8]
	ldr r0, [r5, #4]
	mov r1, #0xb3
	strb r1, [r0, #9]
	ldr r0, [r5, #4]
	mov r1, #0x7b
	strb r1, [r0, #0xa]
	ldr r0, [r5, #4]
	mov r1, #0x48
	strb r1, [r0, #0xb]
	mov r0, #0xcc
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #0x6b
	mov r3, #0x9c
	bl ov21_021D154C
	mov r0, #0xf6
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #0x96
	add r0, r0, #4
	mov r2, #0xb6
	mov r3, #0xd6
	bl ov21_021D154C
	str r6, [r5, #8]
	str r5, [r5, #0xc]
	str r4, [sp]
	add r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E51D4 ; =ov21_021E5228
	mov r1, #3
	add r3, #8
	bl sub_02023FCC
	str r0, [r5, #0]
	str r4, [sp]
	add r3, r5, #0
	ldr r0, [r5, #0x10]
	ldr r2, _021E51D8 ; =ov21_021E5268
	mov r1, #2
	add r3, #8
	bl sub_02023FCC
	str r0, [r5, #0x14]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E51D4: .word ov21_021E5228
_021E51D8: .word ov21_021E5268
	thumb_func_end ov21_021E5128

	thumb_func_start ov21_021E51DC
ov21_021E51DC: ; 0x021E51DC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r2, r4, #0
	mov r0, #0x64
_021E51E6:
	add r1, r1, #1
	str r0, [r2, #0x18]
	add r2, r2, #4
	cmp r1, #2
	blt _021E51E6
	ldr r0, [r4, #0]
	bl sub_0202404C
	ldr r0, [r4, #0x14]
	bl sub_0202404C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E51DC

	thumb_func_start ov21_021E5200
ov21_021E5200: ; 0x021E5200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r4, #0x14]
	bl sub_02024034
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5200

	thumb_func_start ov21_021E5228
ov21_021E5228: ; 0x021E5228
	push {r3, lr}
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	cmp r1, #3
	bhi _021E5264
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E523E: ; jump table
	.short _021E5246 - _021E523E - 2 ; case 0
	.short _021E5256 - _021E523E - 2 ; case 1
	.short _021E524E - _021E523E - 2 ; case 2
	.short _021E525E - _021E523E - 2 ; case 3
_021E5246:
	add r1, r3, #0
	bl ov21_021E530C
	pop {r3, pc}
_021E524E:
	add r1, r3, #0
	bl ov21_021E537C
	pop {r3, pc}
_021E5256:
	add r1, r3, #0
	bl ov21_021E545C
	pop {r3, pc}
_021E525E:
	add r1, r3, #0
	bl ov21_021E5498
_021E5264:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5228

	thumb_func_start ov21_021E5268
ov21_021E5268: ; 0x021E5268
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [r2, #0]
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r2, #4]
	add r7, r1, #0
	bl ov21_021D37BC
	str r0, [sp]
	lsl r0, r6, #2
	add r0, r4, r0
	str r7, [r0, #0x18]
	cmp r7, #3
	bhi _021E5304
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5290: ; jump table
	.short _021E5298 - _021E5290 - 2 ; case 0
	.short _021E5304 - _021E5290 - 2 ; case 1
	.short _021E52A6 - _021E5290 - 2 ; case 2
	.short _021E5304 - _021E5290 - 2 ; case 3
_021E5298:
	ldr r0, [r5, #8]
	mov r1, #1
	bl ov21_021E33B4
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
_021E52A6:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021E5304
	mov r2, #1
	str r2, [r4, #0x24]
	cmp r6, #0
	beq _021E52BA
	cmp r6, #1
	beq _021E52F0
	pop {r3, r4, r5, r6, r7, pc}
_021E52BA:
	ldr r0, [r4, #0x64]
	cmp r0, #1
	ldr r0, [r4, #0x2c]
	bne _021E52DA
	cmp r0, #0
	bne _021E52D2
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E5DE8
	pop {r3, r4, r5, r6, r7, pc}
_021E52D2:
	add r0, r4, #0
	bl ov21_021E5E18
	pop {r3, r4, r5, r6, r7, pc}
_021E52DA:
	cmp r0, #1
	bne _021E52E4
	mov r0, #0
	bl sub_0200592C
_021E52E4:
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E5DE8
	pop {r3, r4, r5, r6, r7, pc}
_021E52F0:
	mov r0, #2
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	eor r1, r2
	bl ov21_021E5E78
	ldr r0, _021E5308 ; =0x000005DD
	bl sub_02005748
_021E5304:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5308: .word 0x000005DD
	thumb_func_end ov21_021E5268

	thumb_func_start ov21_021E530C
ov21_021E530C: ; 0x021E530C
	push {r4, lr}
	add r4, r2, #0
	cmp r0, #0
	beq _021E531E
	cmp r0, #1
	beq _021E5336
	cmp r0, #2
	beq _021E5352
	pop {r4, pc}
_021E531E:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _021E532A
	add r0, r4, #0
	bl ov21_021E5E18
_021E532A:
	ldr r0, _021E5378 ; =0x021BF6BC
	ldrh r0, [r0, #0x1c]
	str r0, [r4, #0x38]
	mov r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E5336:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _021E5342
	add r0, r4, #0
	bl ov21_021E5E18
_021E5342:
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r0, _021E5378 ; =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x54]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x58]
	pop {r4, pc}
_021E5352:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E5370
	ldr r0, [r4, #0x10]
	bl sub_02022734
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	add r0, r0, #4
	bl sub_02022734
	ldr r1, [r4, #0x20]
	orr r0, r1
	str r0, [r4, #0x20]
	pop {r4, pc}
_021E5370:
	mov r0, #1
	str r0, [r4, #0x20]
	pop {r4, pc}
	nop
_021E5378: .word 0x021BF6BC
	thumb_func_end ov21_021E530C

	thumb_func_start ov21_021E537C
ov21_021E537C: ; 0x021E537C
	push {r4, lr}
	add r4, r2, #0
	cmp r0, #0
	beq _021E538E
	cmp r0, #1
	beq _021E53CE
	cmp r0, #2
	beq _021E53F2
	pop {r4, pc}
_021E538E:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _021E544C
	ldr r1, _021E5450 ; =0x021BF6BC
	ldr r0, [r4, #0x38]
	ldrh r2, [r1, #0x1c]
	sub r2, r2, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021E53B6
	cmp r2, #0xc
	blt _021E544C
	mov r0, #1
	str r0, [r4, #0x34]
	ldrh r0, [r1, #0x1c]
	str r0, [r4, #0x38]
	ldr r0, _021E5454 ; =0x000005F7
	bl sub_02005748
	pop {r4, pc}
_021E53B6:
	mov r0, #0xb
	mvn r0, r0
	cmp r2, r0
	bgt _021E544C
	mov r0, #0
	str r0, [r4, #0x34]
	ldrh r0, [r1, #0x1c]
	str r0, [r4, #0x38]
	ldr r0, _021E5454 ; =0x000005F7
	bl sub_02005748
	pop {r4, pc}
_021E53CE:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _021E544C
	add r0, r4, #0
	bl ov21_021E5A44
	add r0, r4, #0
	bl ov21_021E5AAC
	add r0, r4, #0
	bl ov21_021E5AD8
	ldr r0, _021E5450 ; =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x54]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x58]
	pop {r4, pc}
_021E53F2:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E544C
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _021E540C
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r1, #0
	bl ov21_021E5ED8
	b _021E5446
_021E540C:
	ldr r1, _021E5450 ; =0x021BF6BC
	ldrh r0, [r1, #0x1e]
	cmp r0, #0x83
	bhs _021E543A
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021E5424
	ldrh r1, [r1, #0x1c]
	add r0, r4, #0
	bl ov21_021E5BE4
	b _021E542C
_021E5424:
	ldrh r1, [r1, #0x1c]
	add r0, r4, #0
	bl ov21_021E5C18
_021E542C:
	mov r0, #0
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #1
	bl ov21_021E5ED8
	b _021E5446
_021E543A:
	add r0, r4, #0
	mov r1, #0
	bl ov21_021E5EF0
	ldr r0, _021E5458 ; =0xFFFFFA00
	str r0, [r4, #0x3c]
_021E5446:
	add r0, r4, #0
	bl ov21_021E5F00
_021E544C:
	pop {r4, pc}
	nop
_021E5450: .word 0x021BF6BC
_021E5454: .word 0x000005F7
_021E5458: .word 0xFFFFFA00
	thumb_func_end ov21_021E537C

	thumb_func_start ov21_021E545C
ov21_021E545C: ; 0x021E545C
	push {r4, lr}
	add r4, r2, #0
	cmp r0, #0
	beq _021E546E
	cmp r0, #1
	beq _021E5474
	cmp r0, #2
	beq _021E5480
	pop {r4, pc}
_021E546E:
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E5474:
	ldr r0, [r4, #0x60]
	lsl r0, r0, #2
	str r0, [r4, #0x5c]
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
_021E5480:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E5494
	add r0, r4, #0
	mov r1, #0
	bl ov21_021E5ED8
	add r0, r4, #0
	bl ov21_021E5F00
_021E5494:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E545C

	thumb_func_start ov21_021E5498
ov21_021E5498: ; 0x021E5498
	push {r4, lr}
	add r4, r2, #0
	cmp r0, #0
	beq _021E54AA
	cmp r0, #1
	beq _021E54B0
	cmp r0, #2
	beq _021E54BC
	pop {r4, pc}
_021E54AA:
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E54B0:
	ldr r0, [r4, #0x60]
	lsl r0, r0, #2
	str r0, [r4, #0x5c]
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
_021E54BC:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E54D0
	add r0, r4, #0
	mov r1, #0
	bl ov21_021E5ED8
	add r0, r4, #0
	bl ov21_021E5F00
_021E54D0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5498

	thumb_func_start ov21_021E54D4
ov21_021E54D4: ; 0x021E54D4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021E5538
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E5644
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E5734
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E58B8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E5E80
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E54D4

	thumb_func_start ov21_021E5510
ov21_021E5510: ; 0x021E5510
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E5898
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E599C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E56F0
	add r0, r4, #0
	bl ov21_021E5620
	add r0, r5, #0
	bl ov21_021E5E98
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E5510

	thumb_func_start ov21_021E5538
ov21_021E5538: ; 0x021E5538
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
	mov r1, #0x47
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
	ldr r0, [r5, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x23
	mov r3, #7
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x48
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #7
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
	mov r1, #7
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r0, #0]
	mov r1, #7
	sub r3, #0x30
	bl sub_02019184
	ldr r0, [r5, #0]
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r0, #0]
	mov r1, #7
	sub r3, #0x13
	bl sub_02019184
	mov r0, #7
	mov r1, #3
	bl sub_02019060
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E5538

	thumb_func_start ov21_021E5620
ov21_021E5620: ; 0x021E5620
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	bl sub_02019EBC
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5620

	thumb_func_start ov21_021E5644
ov21_021E5644: ; 0x021E5644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E56E4 ; =0x00002781
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x71
	mov r3, #1
	bl sub_02009A4C
	str r0, [r5, #0x58]
	bl sub_0200A3DC
	ldr r0, [r5, #0x58]
	bl sub_02009D4C
	ldr r0, _021E56E8 ; =0x00002722
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x12
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x5c]
	bl sub_0200A640
	ldr r0, [r5, #0x5c]
	bl sub_02009D4C
	ldr r0, _021E56EC ; =0x00002782
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x72
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x60]
	mov r0, #0x9e
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x70
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x64]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E56E4: .word 0x00002781
_021E56E8: .word 0x00002722
_021E56EC: .word 0x00002782
	thumb_func_end ov21_021E5644

	thumb_func_start ov21_021E56F0
ov21_021E56F0: ; 0x021E56F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0x5c]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x58]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x5c]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x60]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x64]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E56F0

	thumb_func_start ov21_021E5734
ov21_021E5734: ; 0x021E5734
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	mov r3, #0x9e
	add r5, r0, #0
	lsl r3, r3, #6
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
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r2, #0x5e
	add r3, r3, #2
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x43
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	lsl r0, r0, #0x11
	str r0, [sp, #0x34]
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	str r6, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0x3c]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #2
	ldr r0, [r5, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0x3c]
	mov r1, #8
	bl sub_02021E50
	mov r0, #0x33
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	mov r1, #0x9d
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02021CF8
	mov r0, #0x2d
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r1, #0x83
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #4]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #2
	ldr r0, [r5, #4]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #4]
	mov r1, #5
	bl sub_02021E50
	mov r2, #3
	str r2, [r5, #8]
	mov r1, #2
	str r1, [r5, #0xc]
	str r2, [r5, #0x10]
	mov r0, #5
	str r0, [r5, #0x18]
	mov r0, #0xe6
	str r1, [r5, #0x1c]
	lsl r0, r0, #0xc
	mov r1, #0xa6
	str r0, [sp, #0x34]
	lsl r1, r1, #0xc
	lsl r0, r2, #0x12
	str r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0x20]
	mov r1, #6
	bl sub_02021D6C
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #2
	ldr r0, [r5, #0x20]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0x20]
	mov r1, #5
	bl sub_02021E50
	mov r1, #6
	str r1, [r5, #0x24]
	mov r0, #5
	str r0, [r5, #0x28]
	str r1, [r5, #0x2c]
	str r0, [r5, #0x34]
	mov r0, #2
	str r0, [r5, #0x38]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5734

	thumb_func_start ov21_021E5898
ov21_021E5898: ; 0x021E5898
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	ldr r0, [r4, #0x3c]
	bl sub_02021BD4
	ldr r0, [r4, #4]
	bl sub_02021BD4
	ldr r0, [r4, #0x20]
	bl sub_02021BD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5898

	thumb_func_start ov21_021E58B8
ov21_021E58B8: ; 0x021E58B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r4, [r1, #0]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E5994 ; =0x00002722
	add r6, r2, #0
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	mov r1, #0
	bl sub_0200A72C
	mov r2, #0
	mov r1, #0x45
	lsl r1, r1, #2
	str r1, [sp, #0x1c]
	mov r1, #2
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
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
	mov r2, #2
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E5998 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x29
	bl ov21_021D4DAC
	lsr r1, r0, #1
	mov r0, #0x40
	sub r0, r0, r1
	str r0, [sp, #0x18]
	str r6, [sp, #0xc]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x50]
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E5998 ; =0x000002B9
	add r1, r6, #0
	mov r3, #0x2a
	bl ov21_021D4DAC
	lsr r1, r0, #1
	mov r0, #0x40
	sub r0, r0, r1
	str r0, [sp, #0x18]
	str r6, [sp, #0xc]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x54]
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02012A60
	add r0, r6, #0
	bl ov21_021D4DA0
	ldr r0, [r5, #0x54]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5994: .word 0x00002722
_021E5998: .word 0x000002B9
	thumb_func_end ov21_021E58B8

	thumb_func_start ov21_021E599C
ov21_021E599C: ; 0x021E599C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E59A2:
	ldr r0, [r5, #0x50]
	bl ov21_021D4D1C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E59A2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E599C

	thumb_func_start ov21_021E59B4
ov21_021E59B4: ; 0x021E59B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	beq _021E5A00
	ldr r0, [r5, #0x3c]
	bl sub_02021E74
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	bne _021E59E8
	mov r1, #4
	bl sub_02021D6C
	mov r1, #8
	sub r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x3c]
	lsr r1, r1, #0x10
	bl sub_02021E50
	b _021E59FC
_021E59E8:
	mov r1, #0
	bl sub_02021D6C
	mov r1, #8
	sub r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x3c]
	lsr r1, r1, #0x10
	bl sub_02021E50
_021E59FC:
	ldr r0, [r4, #0x34]
	str r0, [r5, #0x40]
_021E5A00:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E59B4

	thumb_func_start ov21_021E5A04
ov21_021E5A04: ; 0x021E5A04
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0x64]
	ldr r3, [r2, #0x18]
	cmp r0, #0
	ldr r0, [r4, #4]
	bne _021E5A20
	add r4, #8
	add r1, r4, #0
	mov r2, #0
	bl ov21_021E5CF8
	pop {r4, pc}
_021E5A20:
	add r4, #8
	ldr r2, [r2, #0x2c]
	add r1, r4, #0
	bl ov21_021E5C80
	pop {r4, pc}
	thumb_func_end ov21_021E5A04

	thumb_func_start ov21_021E5A2C
ov21_021E5A2C: ; 0x021E5A2C
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #0x20]
	add r3, r1, #0
	add r2, #0x24
	add r1, r2, #0
	ldr r2, [r3, #0x64]
	ldr r3, [r3, #0x1c]
	bl ov21_021E5C80
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5A2C

	thumb_func_start ov21_021E5A44
ov21_021E5A44: ; 0x021E5A44
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r3, _021E5AA8 ; =0x021BF6BC
	ldr r0, [r5, #0x54]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	ldr r1, [r5, #0x58]
	sub r0, #0x33
	sub r1, #0x9d
	sub r2, #0x33
	sub r3, #0x9d
	bl sub_0201D4CC
	add r6, r0, #0
	bpl _021E5A6A
	neg r0, r6
_021E5A6A:
	cmp r0, #1
	blt _021E5AA4
	ldr r0, [r5, #0x5c]
	add r4, r5, #0
	add r4, #0x5c
	add r0, r0, r6
	str r0, [r5, #0x5c]
	ldr r0, [r4, #0]
	bpl _021E5A82
	add r0, #0x58
	str r0, [r4, #0]
	b _021E5A8A
_021E5A82:
	mov r1, #0x58
	bl _s32_div_f
	str r1, [r4, #0]
_021E5A8A:
	ldr r0, [r5, #0x5c]
	cmp r0, #0x20
	blt _021E5AA4
	cmp r0, #0x38
	bgt _021E5AA4
	cmp r6, #0
	ble _021E5AA0
	mov r0, #0x20
	add sp, #4
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, pc}
_021E5AA0:
	mov r0, #0x38
	str r0, [r5, #0x5c]
_021E5AA4:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E5AA8: .word 0x021BF6BC
	thumb_func_end ov21_021E5A44

	thumb_func_start ov21_021E5AAC
ov21_021E5AAC: ; 0x021E5AAC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x5c]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r1, r0, #2
	ldr r0, [r4, #0x60]
	cmp r1, r0
	beq _021E5AD2
	ldr r0, _021E5AD4 ; =0x000005F7
	bl sub_02005748
	ldr r1, [r4, #0x5c]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [r4, #0x60]
_021E5AD2:
	pop {r4, pc}
	; .align 2, 0
_021E5AD4: .word 0x000005F7
	thumb_func_end ov21_021E5AAC

	thumb_func_start ov21_021E5AD8
ov21_021E5AD8: ; 0x021E5AD8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	bne _021E5AE8
	bl ov21_021E5E28
	pop {r4, pc}
_021E5AE8:
	ble _021E5B16
	cmp r1, #0x2c
	bgt _021E5B16
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _021E5AFA
	mov r0, #0
	bl sub_02004EEC
_021E5AFA:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021E5B08
	bl sub_02004EFC
	mov r0, #2
	str r0, [r4, #0x50]
_021E5B08:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _021E5B10
	mov r0, #1
_021E5B10:
	bl sub_02004F4C
	pop {r4, pc}
_021E5B16:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	bne _021E5B20
	bl sub_02004F44
_021E5B20:
	ldr r0, [r4, #0x50]
	cmp r0, #1
	beq _021E5B30
	mov r0, #0
	bl sub_02004EC8
	mov r0, #1
	str r0, [r4, #0x50]
_021E5B30:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _021E5B3A
	mov r0, #0x58
	str r0, [r4, #0x5c]
_021E5B3A:
	ldr r1, [r4, #0x60]
	mov r0, #0x16
	sub r0, r0, r1
	lsl r0, r0, #3
	cmp r0, #0
	ble _021E5B48
	sub r0, r0, #1
_021E5B48:
	mov r1, #0
	bl sub_02004EF4
	pop {r4, pc}
	thumb_func_end ov21_021E5AD8

	thumb_func_start ov21_021E5B50
ov21_021E5B50: ; 0x021E5B50
	push {r4, lr}
	ldr r1, [r1, #0x5c]
	add r4, r0, #0
	mov r0, #0xe
	bl sub_0201D580
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5B50

	thumb_func_start ov21_021E5B6C
ov21_021E5B6C: ; 0x021E5B6C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r2, #0x6c]
	add r5, r0, #0
	ldr r2, [r2, #0x3c]
	mov r0, #1
	bl sub_02005188
	add r6, r0, #0
	bne _021E5B84
	mov r0, #0
	str r0, [r5, #0x48]
_021E5B84:
	add r0, r5, #0
	ldr r1, [r5, #0x48]
	add r0, #0x4c
	sub r1, r6, r1
	lsl r1, r1, #4
	ldrh r0, [r0]
	neg r1, r1
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0x4c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x4c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r1, #0xb6
	bl _s32_div_f
	add r3, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	mov r1, #7
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0201C660
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	mov r2, #9
	mov r3, #0x83
	bl sub_0201C718
	ldr r0, [r4, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	mov r2, #0xc
	mov r3, #0x63
	bl sub_0201C718
	str r6, [r5, #0x48]
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E5B6C

	thumb_func_start ov21_021E5BE4
ov21_021E5BE4: ; 0x021E5BE4
	push {r4, lr}
	sub r1, #0x6b
	add r4, r0, #0
	lsl r0, r1, #0xc
	mov r2, #0x7f
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #9
	lsl r1, r1, #0x10
	bl FX_Div
	asr r0, r0, #0xc
	str r0, [r4, #0x44]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5BE4

	thumb_func_start ov21_021E5C18
ov21_021E5C18: ; 0x021E5C18
	push {r4, lr}
	sub r1, #0xb3
	add r4, r0, #0
	lsl r0, r1, #0xc
	mov r2, #0x7f
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0x12
	lsl r1, r1, #0xe
	bl FX_Div
	asr r0, r0, #0xc
	str r0, [r4, #0x40]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5C18

	thumb_func_start ov21_021E5C4C
ov21_021E5C4C: ; 0x021E5C4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldr r0, [r4, #0x50]
	bne _021E5C6C
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r4, #0x54]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	pop {r4, pc}
_021E5C6C:
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020129D0
	ldr r0, [r4, #0x54]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_020129D0
	pop {r4, pc}
	thumb_func_end ov21_021E5C4C

	thumb_func_start ov21_021E5C80
ov21_021E5C80: ; 0x021E5C80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	cmp r4, #3
	bne _021E5C90
	mov r4, #1
_021E5C90:
	add r0, r6, #0
	bl sub_02021E74
	str r0, [sp]
	ldr r0, [r5, #0xc]
	cmp r0, r7
	beq _021E5CAA
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021E5D90
	str r7, [r5, #0xc]
_021E5CAA:
	cmp r4, #2
	bgt _021E5CBE
	cmp r4, #0
	blt _021E5CF4
	beq _021E5CF4
	cmp r4, #1
	beq _021E5CE0
	cmp r4, #2
	beq _021E5CC4
	pop {r3, r4, r5, r6, r7, pc}
_021E5CBE:
	cmp r4, #0x64
	beq _021E5CE0
	pop {r3, r4, r5, r6, r7, pc}
_021E5CC4:
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	cmp r0, r1
	ble _021E5CF4
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02021E50
	add r0, r6, #0
	mov r1, #0
	bl sub_02021CE4
	pop {r3, r4, r5, r6, r7, pc}
_021E5CE0:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021E5D90
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
_021E5CF4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5C80

	thumb_func_start ov21_021E5CF8
ov21_021E5CF8: ; 0x021E5CF8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	cmp r4, #1
	bne _021E5D08
	mov r4, #3
_021E5D08:
	add r0, r6, #0
	bl sub_02021E74
	ldr r0, [r5, #0xc]
	cmp r0, r7
	beq _021E5D20
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021E5D90
	str r7, [r5, #0xc]
_021E5D20:
	cmp r4, #3
	bgt _021E5D34
	cmp r4, #0
	blt _021E5D8E
	beq _021E5D3A
	cmp r4, #2
	beq _021E5D64
	cmp r4, #3
	beq _021E5D7A
	pop {r3, r4, r5, r6, r7, pc}
_021E5D34:
	cmp r4, #0x64
	beq _021E5D7A
	pop {r3, r4, r5, r6, r7, pc}
_021E5D3A:
	cmp r7, #1
	bne _021E5D4A
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov21_021E5D90
	b _021E5D54
_021E5D4A:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl ov21_021E5D90
_021E5D54:
	ldr r1, [r5, #0x14]
	add r0, r6, #0
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
	pop {r3, r4, r5, r6, r7, pc}
_021E5D64:
	ldr r1, [r5, #0x14]
	add r0, r6, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
	add r0, r6, #0
	mov r1, #0
	bl sub_02021CE4
	pop {r3, r4, r5, r6, r7, pc}
_021E5D7A:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021E5D90
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
_021E5D8E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E5CF8

	thumb_func_start ov21_021E5D90
ov21_021E5D90: ; 0x021E5D90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02021E74
	add r6, r0, #0
	cmp r7, #1
	ldr r1, [r4, #8]
	bne _021E5DC6
	ldr r0, [r4, #0]
	cmp r1, r0
	bne _021E5DE6
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_02021D6C
	ldr r0, [r4, #4]
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	sub r1, r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
	pop {r3, r4, r5, r6, r7, pc}
_021E5DC6:
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021E5DE6
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl sub_02021D6C
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	sub r1, r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
_021E5DE6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E5D90

	thumb_func_start ov21_021E5DE8
ov21_021E5DE8: ; 0x021E5DE8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0x2c]
	ldr r0, _021E5E14 ; =0x000001FF
	lsl r1, r2, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r2, r3, #0
	mov r0, #0xd
	lsr r1, r1, #0x10
	mov r3, #0x7f
	bl sub_020059D0
	add r0, r4, #0
	bl ov21_021E5F00
	add sp, #8
	pop {r4, pc}
	nop
_021E5E14: .word 0x000001FF
	thumb_func_end ov21_021E5DE8

	thumb_func_start ov21_021E5E18
ov21_021E5E18: ; 0x021E5E18
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl sub_0200592C
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov21_021E5E18

	thumb_func_start ov21_021E5E28
ov21_021E5E28: ; 0x021E5E28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _021E5E38
	mov r0, #0
	bl sub_02004EEC
_021E5E38:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	bne _021E5E42
	bl sub_02004F44
_021E5E42:
	mov r0, #0
	str r0, [r4, #0x50]
	pop {r4, pc}
	thumb_func_end ov21_021E5E28

	thumb_func_start ov21_021E5E48
ov21_021E5E48: ; 0x021E5E48
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r6, r0, #0
	bl sub_0200598C
	cmp r0, #0
	bne _021E5E74
	ldr r0, [r5, #0x68]
	sub r0, r0, #1
	str r0, [r5, #0x68]
	bne _021E5E74
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E5DE8
	mov r0, #0xa
	str r0, [r5, #0x68]
_021E5E74:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5E48

	thumb_func_start ov21_021E5E78
ov21_021E5E78: ; 0x021E5E78
	str r1, [r0, #0x64]
	mov r1, #0xa
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end ov21_021E5E78

	thumb_func_start ov21_021E5E80
ov21_021E5E80: ; 0x021E5E80
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	ldr r0, [r1, #0]
	add r2, r4, #0
	mov r1, #0x14
	add r2, #0x6c
	bl ov21_021D27E0
	str r0, [r4, #0x68]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5E80

	thumb_func_start ov21_021E5E98
ov21_021E5E98: ; 0x021E5E98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5E98

	thumb_func_start ov21_021E5EAC
ov21_021E5EAC: ; 0x021E5EAC
	push {r3, lr}
	add r2, r0, #0
	ldr r2, [r2, #0x6c]
	mov r0, #0x1f
	ldr r2, [r2, #0xc]
	mov r1, #0xe0
	mov r3, #0x20
	bl sub_0201DC68
	pop {r3, pc}
	thumb_func_end ov21_021E5EAC

	thumb_func_start ov21_021E5EC0
ov21_021E5EC0: ; 0x021E5EC0
	push {r3, lr}
	add r2, r0, #0
	ldr r2, [r2, #0x6c]
	mov r0, #0x1f
	ldr r2, [r2, #0xc]
	mov r1, #0xe0
	add r2, #0x20
	mov r3, #0x20
	bl sub_0201DC68
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5EC0

	thumb_func_start ov21_021E5ED8
ov21_021E5ED8: ; 0x021E5ED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E5EF0
	cmp r4, #0
	bne _021E5EEC
	add r0, r5, #0
	bl ov21_021E5EF4
_021E5EEC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5ED8

	thumb_func_start ov21_021E5EF0
ov21_021E5EF0: ; 0x021E5EF0
	str r1, [r0, #0x48]
	bx lr
	thumb_func_end ov21_021E5EF0

	thumb_func_start ov21_021E5EF4
ov21_021E5EF4: ; 0x021E5EF4
	mov r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E5EF4

	thumb_func_start ov21_021E5F00
ov21_021E5F00: ; 0x021E5F00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E5F20
	ldr r0, [r4, #0x3c]
	bl ov21_021E5FF4
	ldr r1, _021E5F24 ; =0x0000FFFF
	ldr r2, [r4, #0x40]
	mov r0, #1
	bl sub_02004F94
	ldr r0, [r4, #0x44]
	bl ov21_021E5F28
_021E5F20:
	pop {r4, pc}
	nop
_021E5F24: .word 0x0000FFFF
	thumb_func_end ov21_021E5F00

	thumb_func_start ov21_021E5F28
ov21_021E5F28: ; 0x021E5F28
	ldr r3, _021E5F34 ; =sub_02004A54
	add r1, r0, #0
	mov r0, #8
	mov r2, #0
	bx r3
	nop
_021E5F34: .word sub_02004A54
	thumb_func_end ov21_021E5F28

	thumb_func_start ov21_021E5F38
ov21_021E5F38: ; 0x021E5F38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, [r4, #0x48]
	ldr r1, [r5, #0x70]
	cmp r2, r1
	beq _021E5F58
	cmp r2, #1
	bne _021E5F50
	bl ov21_021E5EAC
	b _021E5F54
_021E5F50:
	bl ov21_021E5EC0
_021E5F54:
	ldr r0, [r4, #0x48]
	str r0, [r5, #0x70]
_021E5F58:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5F38

	thumb_func_start ov21_021E5F5C
ov21_021E5F5C: ; 0x021E5F5C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r6, r0, #0
	ldr r0, _021E5FCC ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _021E5FB0
	str r1, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x64]
	cmp r1, #0
	bne _021E5F96
	ldr r1, [r5, #0x2c]
	cmp r1, #1
	bne _021E5F8A
	bl sub_0200592C
_021E5F8A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E5DE8
	pop {r4, r5, r6, pc}
_021E5F96:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _021E5FA8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E5DE8
	pop {r4, r5, r6, pc}
_021E5FA8:
	add r0, r5, #0
	bl ov21_021E5E18
	pop {r4, r5, r6, pc}
_021E5FB0:
	ldr r0, [r5, #0x28]
	cmp r0, #1
	bne _021E5FBE
	mov r0, #2
	str r0, [r5, #0x28]
	str r0, [r5, #0x18]
	pop {r4, r5, r6, pc}
_021E5FBE:
	cmp r0, #2
	bne _021E5FC8
	mov r0, #0
	str r0, [r5, #0x28]
	str r1, [r5, #0x18]
_021E5FC8:
	pop {r4, r5, r6, pc}
	nop
_021E5FCC: .word 0x021BF67C
	thumb_func_end ov21_021E5F5C

	thumb_func_start ov21_021E5FD0
ov21_021E5FD0: ; 0x021E5FD0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0]
	ldr r0, [r1, #8]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021E5FEE
	mov r3, #0x18
	add r0, r4, #0
	mov r1, #0xb4
	mov r2, #0x83
	str r3, [sp]
	bl ov21_021D2574
_021E5FEE:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E5FD0

	thumb_func_start ov21_021E5FF4
ov21_021E5FF4: ; 0x021E5FF4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, _021E6010 ; =0x0000FFFF
	mov r0, #1
	add r2, r4, #0
	bl sub_02004F68
	add r4, #0x14
	ldr r1, _021E6010 ; =0x0000FFFF
	mov r0, #8
	add r2, r4, #0
	bl sub_02004F68
	pop {r4, pc}
	; .align 2, 0
_021E6010: .word 0x0000FFFF
	thumb_func_end ov21_021E5FF4