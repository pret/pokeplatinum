	.include "macros/function.inc"
	.include "overlay021/ov21_021D4EE4.inc"

	

	.text


	thumb_func_start ov21_021D4EE4
ov21_021D4EE4: ; 0x021D4EE4
	push {r3, lr}
	mov r1, #0x14
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x14
	mov r1, #0
_021D4EF2:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021D4EF2
	pop {r3, pc}
	thumb_func_end ov21_021D4EE4

	thumb_func_start ov21_021D4EFC
ov21_021D4EFC: ; 0x021D4EFC
	ldr r3, _021D4F00 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021D4F00: .word sub_020181C4
	thumb_func_end ov21_021D4EFC

	thumb_func_start ov21_021D4F04
ov21_021D4F04: ; 0x021D4F04
	push {r3, r4, r5, r6}
	add r6, r0, #0
	mov r5, #0x14
	mov r4, #0
_021D4F0C:
	strb r4, [r6]
	add r6, r6, #1
	sub r5, r5, #1
	bne _021D4F0C
	str r1, [r0, #0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D4F04

	thumb_func_start ov21_021D4F20
ov21_021D4F20: ; 0x021D4F20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #4
	bhi _021D4F7A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D4F36: ; jump table
	.short _021D4F40 - _021D4F36 - 2 ; case 0
	.short _021D4F48 - _021D4F36 - 2 ; case 1
	.short _021D4F50 - _021D4F36 - 2 ; case 2
	.short _021D4F62 - _021D4F36 - 2 ; case 3
	.short _021D4F74 - _021D4F36 - 2 ; case 4
_021D4F40:
	add r1, r4, #0
	bl ov21_021D50E0
	pop {r3, r4, r5, pc}
_021D4F48:
	add r1, r4, #0
	bl ov21_021D5110
	pop {r3, r4, r5, pc}
_021D4F50:
	cmp r4, #0
	blt _021D4F5A
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _021D4F5E
_021D4F5A:
	bl GF_AssertFail
_021D4F5E:
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
_021D4F62:
	cmp r4, #0
	blt _021D4F6C
	ldr r0, [r5, #8]
	cmp r4, r0
	blt _021D4F70
_021D4F6C:
	bl GF_AssertFail
_021D4F70:
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
_021D4F74:
	add r1, r4, #0
	bl ov21_021D5140
_021D4F7A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D4F20

	thumb_func_start ov21_021D4F7C
ov21_021D4F7C: ; 0x021D4F7C
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #4]
	add r3, r2, #0
	mul r3, r1
	ldr r1, [r0, #0xc]
	add r2, r3, r1
	ldr r1, [r0, #0]
	mov r0, #0x1c
	mul r0, r2
	add r0, r1, r0
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov21_021D4F7C

	thumb_func_start ov21_021D4F94
ov21_021D4F94: ; 0x021D4F94
	push {r4, r5}
	ldr r4, [r0, #0x10]
	ldr r3, [r0, #4]
	add r5, r4, #0
	mul r5, r3
	ldr r3, [r0, #0xc]
	add r5, r5, r3
	mov r3, #0x1c
	add r4, r5, #0
	mul r4, r3
	ldr r3, [r0, #0]
	ldr r3, [r3, r4]
	str r3, [r1, #0]
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	str r0, [r2, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D4F94

	thumb_func_start ov21_021D4FBC
ov21_021D4FBC: ; 0x021D4FBC
	push {r4, r5}
	ldr r4, [r0, #0x10]
	ldr r3, [r0, #4]
	add r5, r4, #0
	mul r5, r3
	ldr r3, [r0, #0xc]
	add r5, r5, r3
	mov r3, #0x1c
	add r4, r5, #0
	mul r4, r3
	ldr r3, [r0, #0]
	add r3, r3, r4
	ldr r3, [r3, #8]
	str r3, [r1, #0]
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #0xc]
	str r0, [r2, #0]
	pop {r4, r5}
	bx lr
	thumb_func_end ov21_021D4FBC

	thumb_func_start ov21_021D4FE4
ov21_021D4FE4: ; 0x021D4FE4
	str r1, [r0, #0]
	str r2, [r0, #4]
	ldr r1, [sp]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	ldr r1, [sp, #8]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov21_021D4FE4

	thumb_func_start ov21_021D4FFC
ov21_021D4FFC: ; 0x021D4FFC
	push {r3, r4, r5, r6}
	ldr r4, [sp, #0x10]
	cmp r0, #0
	beq _021D5008
	cmp r0, #2
	bne _021D5014
_021D5008:
	ldr r6, [sp, #0x14]
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	sub r3, r3, r5
	b _021D501E
_021D5014:
	ldr r6, [sp, #0x14]
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	add r3, r3, r5
_021D501E:
	cmp r0, #1
	bhi _021D502E
	ldr r5, [sp, #0x18]
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	sub r4, r4, r0
	b _021D5038
_021D502E:
	ldr r5, [sp, #0x18]
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	add r4, r4, r0
_021D5038:
	str r3, [r1, #0]
	str r4, [r2, #0]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov21_021D4FFC

	thumb_func_start ov21_021D5040
ov21_021D5040: ; 0x021D5040
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D5056
	cmp r4, #1
	beq _021D5056
	bl GF_AssertFail
_021D5056:
	ldr r0, [r5, #0xc]
	mov r1, #0x1c
_021D505A:
	add r0, r0, r4
	bmi _021D507A
	ldr r2, [r5, #4]
	cmp r0, r2
	bge _021D507A
	ldr r3, [r5, #0x10]
	ldr r2, [r5, #4]
	mul r2, r3
	add r6, r2, r0
	add r2, r6, #0
	ldr r3, [r5, #0]
	mul r2, r1
	add r6, r3, r2
	ldr r2, [r6, #0x10]
	cmp r2, #2
	beq _021D505A
_021D507A:
	cmp r0, #0
	blt _021D508C
	ldr r1, [r5, #4]
	cmp r0, r1
	bge _021D508C
	ldr r1, [r6, #0x10]
	cmp r1, #0
	bne _021D508C
	str r0, [r5, #0xc]
_021D508C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5040

	thumb_func_start ov21_021D5090
ov21_021D5090: ; 0x021D5090
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D50A6
	cmp r4, #1
	beq _021D50A6
	bl GF_AssertFail
_021D50A6:
	ldr r0, [r5, #0x10]
	mov r1, #0x1c
_021D50AA:
	add r0, r0, r4
	bmi _021D50CC
	ldr r2, [r5, #8]
	cmp r0, r2
	bge _021D50CC
	ldr r2, [r5, #4]
	add r3, r0, #0
	mul r3, r2
	ldr r2, [r5, #0xc]
	add r6, r3, r2
	add r2, r6, #0
	ldr r3, [r5, #0]
	mul r2, r1
	add r6, r3, r2
	ldr r2, [r6, #0x14]
	cmp r2, #2
	beq _021D50AA
_021D50CC:
	cmp r0, #0
	blt _021D50DE
	ldr r1, [r5, #8]
	cmp r0, r1
	bge _021D50DE
	ldr r1, [r6, #0x10]
	cmp r1, #0
	bne _021D50DE
	str r0, [r5, #0x10]
_021D50DE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D5090

	thumb_func_start ov21_021D50E0
ov21_021D50E0: ; 0x021D50E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	cmp r1, #0
	bge _021D50EC
	neg r5, r1
	b _021D50EE
_021D50EC:
	add r5, r1, #0
_021D50EE:
	add r0, r1, #0
	add r1, r5, #0
	bl _s32_div_f
	add r7, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _021D510C
_021D50FE:
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021D5040
	add r4, r4, #1
	cmp r4, r5
	blt _021D50FE
_021D510C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D50E0

	thumb_func_start ov21_021D5110
ov21_021D5110: ; 0x021D5110
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	cmp r1, #0
	bge _021D511C
	neg r5, r1
	b _021D511E
_021D511C:
	add r5, r1, #0
_021D511E:
	add r0, r1, #0
	add r1, r5, #0
	bl _s32_div_f
	add r7, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _021D513C
_021D512E:
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021D5090
	add r4, r4, #1
	cmp r4, r5
	blt _021D512E
_021D513C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5110

	thumb_func_start ov21_021D5140
ov21_021D5140: ; 0x021D5140
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	add r3, r2, #0
	mul r3, r0
	mov r5, #0
	cmp r3, #0
	ble _021D5178
	ldr r6, [r4, #0]
_021D5154:
	ldr r0, [r6, #0x18]
	cmp r1, r0
	bne _021D5170
	add r0, r5, #0
	add r1, r2, #0
	bl _s32_div_f
	str r1, [r4, #0xc]
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl _s32_div_f
	str r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_021D5170:
	add r5, r5, #1
	add r6, #0x1c
	cmp r5, r3
	blt _021D5154
_021D5178:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5140