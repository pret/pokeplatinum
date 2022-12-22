	.include "macros/function.inc"
	.include "include/ov21_021E0C68.inc"

	

	.text


	thumb_func_start ov21_021E0C68
ov21_021E0C68: ; 0x021E0C68
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	bl ov21_021E0D04
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021E0D40
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x20]
	bl ov21_021E0D90
	str r0, [r5, #0x24]
	ldr r0, _021E0CA8 ; =ov21_021E0D94
	str r0, [r5, #8]
	ldr r0, _021E0CAC ; =ov21_021E0D98
	str r0, [r5, #0xc]
	ldr r0, _021E0CB0 ; =ov21_021E0DA8
	str r0, [r5, #0x10]
	ldr r0, _021E0CB4 ; =ov21_021E0DAC
	str r0, [r5, #0x14]
	ldr r0, _021E0CB8 ; =ov21_021E0E8C
	str r0, [r5, #0x18]
	ldr r0, _021E0CBC ; =ov21_021E0E90
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E0CA8: .word ov21_021E0D94
_021E0CAC: .word ov21_021E0D98
_021E0CB0: .word ov21_021E0DA8
_021E0CB4: .word ov21_021E0DAC
_021E0CB8: .word ov21_021E0E8C
_021E0CBC: .word ov21_021E0E90
	thumb_func_end ov21_021E0C68

	thumb_func_start ov21_021E0CC0
ov21_021E0CC0: ; 0x021E0CC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E0D68
	ldr r0, [r4, #4]
	bl ov21_021E0D7C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0CC0

	thumb_func_start ov21_021E0CD4
ov21_021E0CD4: ; 0x021E0CD4
	ldr r0, [r0, #0]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	thumb_func_end ov21_021E0CD4

	thumb_func_start ov21_021E0CDC
ov21_021E0CDC: ; 0x021E0CDC
	ldr r0, [r0, #0]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E0CDC

	thumb_func_start ov21_021E0CE4
ov21_021E0CE4: ; 0x021E0CE4
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E0CE4

	thumb_func_start ov21_021E0CE8
ov21_021E0CE8: ; 0x021E0CE8
	ldr r2, [r0, #0]
	mov r0, #1
	cmp r1, #1
	bne _021E0CF4
	mov r1, #0
	add r0, r1, #0
_021E0CF4:
	str r1, [r2, #0x1c]
	bx lr
	thumb_func_end ov21_021E0CE8

	thumb_func_start ov21_021E0CF8
ov21_021E0CF8: ; 0x021E0CF8
	ldr r2, [r0, #0]
	mov r0, #0
	str r1, [r2, #0x18]
	str r0, [r2, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E0CF8

	thumb_func_start ov21_021E0D04
ov21_021E0D04: ; 0x021E0D04
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	bne _021E0D16
	bl GF_AssertFail
_021E0D16:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl memset
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0D04

	thumb_func_start ov21_021E0D40
ov21_021E0D40: ; 0x021E0D40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E0D52
	bl GF_AssertFail
_021E0D52:
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
	thumb_func_end ov21_021E0D40

	thumb_func_start ov21_021E0D68
ov21_021E0D68: ; 0x021E0D68
	push {r4, lr}
	add r4, r0, #0
	bne _021E0D72
	bl GF_AssertFail
_021E0D72:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0D68

	thumb_func_start ov21_021E0D7C
ov21_021E0D7C: ; 0x021E0D7C
	push {r4, lr}
	add r4, r0, #0
	bne _021E0D86
	bl GF_AssertFail
_021E0D86:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0D7C

	thumb_func_start ov21_021E0D90
ov21_021E0D90: ; 0x021E0D90
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E0D90

	thumb_func_start ov21_021E0D94
ov21_021E0D94: ; 0x021E0D94
	mov r0, #1
	bx lr
	thumb_func_end ov21_021E0D94

	thumb_func_start ov21_021E0D98
ov21_021E0D98: ; 0x021E0D98
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021E0DA2
	mov r0, #1
	bx lr
_021E0DA2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E0D98

	thumb_func_start ov21_021E0DA8
ov21_021E0DA8: ; 0x021E0DA8
	mov r0, #1
	bx lr
	thumb_func_end ov21_021E0DA8

	thumb_func_start ov21_021E0DAC
ov21_021E0DAC: ; 0x021E0DAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021E0E82
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E0DC8: ; jump table
	.short _021E0DD0 - _021E0DC8 - 2 ; case 0
	.short _021E0DEA - _021E0DC8 - 2 ; case 1
	.short _021E0E34 - _021E0DC8 - 2 ; case 2
	.short _021E0E78 - _021E0DC8 - 2 ; case 3
_021E0DD0:
	ldr r0, [r4, #4]
	mov r1, #0x58
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x58
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0E82
_021E0DEA:
	ldr r3, [r4, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E0F4C
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021E0E04
	cmp r0, #1
	beq _021E0E12
	cmp r0, #2
	beq _021E0E20
	b _021E0E2C
_021E0E04:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E15AC
	b _021E0E2C
_021E0E12:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E14D4
	b _021E0E2C
_021E0E20:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E16A8
_021E0E2C:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0E82
_021E0E34:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021E0E44
	cmp r0, #1
	beq _021E0E52
	cmp r0, #2
	beq _021E0E60
	b _021E0E6C
_021E0E44:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021E1630
	add r1, r0, #0
	b _021E0E6C
_021E0E52:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021E1550
	add r1, r0, #0
	b _021E0E6C
_021E0E60:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021E1730
	add r1, r0, #0
_021E0E6C:
	cmp r1, #0
	beq _021E0E82
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0E82
_021E0E78:
	ldr r0, _021E0E88 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E0E82:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0E88: .word 0x04000050
	thumb_func_end ov21_021E0DAC

	thumb_func_start ov21_021E0E8C
ov21_021E0E8C: ; 0x021E0E8C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E0E8C

	thumb_func_start ov21_021E0E90
ov21_021E0E90: ; 0x021E0E90
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r5, [r4, #0]
	add r3, r0, #0
	add r1, r2, #0
	ldr r0, [r4, #8]
	cmp r5, #4
	bhi _021E0F46
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021E0EAC: ; jump table
	.short _021E0EB6 - _021E0EAC - 2 ; case 0
	.short _021E0EEA - _021E0EAC - 2 ; case 1
	.short _021E0F28 - _021E0EAC - 2 ; case 2
	.short _021E0F36 - _021E0EAC - 2 ; case 3
	.short _021E0F42 - _021E0EAC - 2 ; case 4
_021E0EB6:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021E0EC6
	cmp r1, #1
	beq _021E0ED0
	cmp r1, #2
	beq _021E0EDA
	b _021E0EE2
_021E0EC6:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E15AC
	b _021E0EE2
_021E0ED0:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E14D4
	b _021E0EE2
_021E0EDA:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E16A8
_021E0EE2:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0F46
_021E0EEA:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021E0EFA
	cmp r1, #1
	beq _021E0F06
	cmp r1, #2
	beq _021E0F12
	b _021E0F1C
_021E0EFA:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E1630
	add r2, r0, #0
	b _021E0F1C
_021E0F06:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E1550
	add r2, r0, #0
	b _021E0F1C
_021E0F12:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E1730
	add r2, r0, #0
_021E0F1C:
	cmp r2, #0
	beq _021E0F46
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0F46
_021E0F28:
	add r1, r3, #0
	bl ov21_021E0F94
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0F46
_021E0F36:
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E0F46
_021E0F42:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E0F46:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0E90

	thumb_func_start ov21_021E0F4C
ov21_021E0F4C: ; 0x021E0F4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E11DC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E1228
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov21_021E127C
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021E136C
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021E0FBC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021E10D0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0F4C

	thumb_func_start ov21_021E0F94
ov21_021E0F94: ; 0x021E0F94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov21_021E14BC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E1328
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E0F94

	thumb_func_start ov21_021E0FBC
ov21_021E0FBC: ; 0x021E0FBC
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
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x32
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r1, #3
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
	mov r1, #0x33
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r1, #3
	str r1, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r3, #0
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
	mov r1, #0x37
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r6, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0
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
	mov r1, #0x38
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0xc
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
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E0FBC

	thumb_func_start ov21_021E10D0
ov21_021E10D0: ; 0x021E10D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x10]
	mov r0, #0x40
	add r1, r2, #0
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r2, _021E1180 ; =0x000002B9
	ldr r3, [sp, #0x10]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021E110A
	mov r7, #0
	bl GF_AssertFail
_021E110A:
	ldr r0, [r4, #0x18]
	bl ov21_021E185C
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r1, #0
	lsr r6, r3, #0x1f
	add r6, r3, r6
	ldr r0, _021E1184 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x18]
	asr r6, r6, #1
	mov r3, #0xb0
	add r0, r0, #4
	sub r3, r3, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B190
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r3, [r4, #0x18]
	add r0, r5, #0
	add r2, r7, #0
	bl ov21_021E1188
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x18]
	add r0, r5, #0
	add r2, r7, #0
	bl ov21_021E18A0
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x18]
	add r0, r5, #0
	add r2, r7, #0
	bl ov21_021E18DC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E1180: .word 0x000002B9
_021E1184: .word 0x00020100
	thumb_func_end ov21_021E10D0

	thumb_func_start ov21_021E1188
ov21_021E1188: ; 0x021E1188
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x20]
	add r3, r4, #0
	bl ov21_021D56BC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	cmp r0, #0xf0
	bhs _021E11B4
	lsr r1, r0, #1
	mov r0, #0x80
	sub r3, r0, r1
	b _021E11B6
_021E11B4:
	mov r3, #8
_021E11B6:
	mov r0, #0x88
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E11D8 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	add r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E11D8: .word 0x00020100
	thumb_func_end ov21_021E1188

	thumb_func_start ov21_021E11DC
ov21_021E11DC: ; 0x021E11DC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl ov21_021D375C
	add r3, r0, #0
	mov r0, #0x2b
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl ov21_021D1778
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D238C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E11DC

	thumb_func_start ov21_021E1210
ov21_021E1210: ; 0x021E1210
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov21_021D23C0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov21_021D2360
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1210

	thumb_func_start ov21_021E1228
ov21_021E1228: ; 0x021E1228
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov21_021D2170
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r2, r0, #0
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	mov r3, #2
	bl ov21_021D1890
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1228

	thumb_func_start ov21_021E1260
ov21_021E1260: ; 0x021E1260
	push {r4, lr}
	ldr r0, [r0, #0]
	bl ov21_021D2170
	add r4, r0, #0
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_02008780
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E1260

	thumb_func_start ov21_021E127C
ov21_021E127C: ; 0x021E127C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E1318 ; =0x00000FFA
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x5a
	bl sub_02009A4C
	str r0, [r5, #8]
	bl sub_0200A3DC
	ldr r0, [r5, #8]
	bl sub_02009D4C
	ldr r0, _021E131C ; =0x00000FAD
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xd
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0xc]
	bl sub_0200A640
	ldr r0, [r5, #0xc]
	bl sub_02009D4C
	ldr r0, _021E1320 ; =0x00000FF8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x58
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x10]
	ldr r0, _021E1324 ; =0x00000FF9
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x59
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x14]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E1318: .word 0x00000FFA
_021E131C: .word 0x00000FAD
_021E1320: .word 0x00000FF8
_021E1324: .word 0x00000FF9
	thumb_func_end ov21_021E127C

	thumb_func_start ov21_021E1328
ov21_021E1328: ; 0x021E1328
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0xc]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E1328

	thumb_func_start ov21_021E136C
ov21_021E136C: ; 0x021E136C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r6, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	ldr r0, [r0, #4]
	str r2, [sp, #0x2c]
	add r7, r3, #0
	ldr r4, [r5, #0]
	bl ov21_021D37BC
	ldr r3, _021E145C ; =0x00000FF9
	str r0, [sp, #0x30]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #5
	str r2, [sp, #0x10]
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r2, r3, #0
	add r0, sp, #0x7c
	sub r2, #0x4c
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x5c]
	add r0, sp, #0x7c
	str r0, [sp, #0x60]
	mov r0, #0x20
	str r0, [sp, #0x70]
	mov r0, #1
	str r0, [sp, #0x74]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x64]
	mov r0, #0xd
	lsl r0, r0, #0xe
	str r0, [sp, #0x68]
	add r0, sp, #0x5c
	str r7, [sp, #0x78]
	bl sub_02021B90
	mov r1, #0x11
	str r0, [r6, #0]
	bl sub_02021D6C
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021E1404
	mov r0, #0
	str r0, [sp, #0x30]
_021E1404:
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	add r2, r7, #0
	bl ov21_021E1460
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov21_021D2344
	mov r1, #0x15
	ldr r2, [r5, #0]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0x3c]
	ldr r0, [r6, #0]
	str r0, [sp, #0x40]
	mov r0, #0x4d
	mvn r0, r0
	str r0, [sp, #0x44]
	add r0, #0x46
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x4c]
	mov r0, #0x1f
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	str r7, [sp, #0x58]
	str r4, [sp, #0x38]
	add r0, sp, #0x34
	bl ov21_021D4CA0
	str r0, [r6, #4]
	add r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E145C: .word 0x00000FF9
	thumb_func_end ov21_021E136C

	thumb_func_start ov21_021E1460
ov21_021E1460: ; 0x021E1460
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x15
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r7, r2, #0
	mov r1, #0x12
	mov r2, #2
	bl ov21_021D4D6C
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	bl ov21_021D566C
	add r6, r0, #0
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	bl sub_02002D7C
	cmp r0, #0x88
	bhs _021E149C
	mov r1, #0x88
	sub r0, r1, r0
	lsr r3, r0, #1
	b _021E149E
_021E149C:
	mov r3, #0
_021E149E:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x15
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021D4E80
	add r0, r6, #0
	bl ov21_021D5600
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1460

	thumb_func_start ov21_021E14BC
ov21_021E14BC: ; 0x021E14BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	bl ov21_021D4D1C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E14BC

	thumb_func_start ov21_021E14D4
ov21_021E14D4: ; 0x021E14D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021D2360
	add r0, r7, #0
	bl ov21_021E17AC
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E1546
	cmp r6, #0
	beq _021E1522
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	b _021E1546
_021E1522:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E1546:
	add r0, r5, #0
	bl ov21_021E17DC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E14D4

	thumb_func_start ov21_021E1550
ov21_021E1550: ; 0x021E1550
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r2, #0x10]
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021E1570
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021E157A
_021E1570:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021E157A:
	add r4, r0, #0
	cmp r4, #1
	bne _021E15A2
	cmp r6, #1
	bne _021E1594
	add r0, r7, #0
	bl ov21_021E17C4
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D2360
	b _021E15A8
_021E1594:
	add r0, r5, #0
	bl ov21_021E1260
	add r0, r5, #0
	bl ov21_021E1210
	b _021E15A8
_021E15A2:
	add r0, r5, #0
	bl ov21_021E17DC
_021E15A8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1550

	thumb_func_start ov21_021E15AC
ov21_021E15AC: ; 0x021E15AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021E17AC
	cmp r6, #0
	bne _021E15D2
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	mov r3, #4
	bl ov21_021E17EC
	add r0, r7, #0
	bl ov21_021E1824
_021E15D2:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E162C
	cmp r6, #0
	beq _021E1608
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E1608:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E162C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E15AC

	thumb_func_start ov21_021E1630
ov21_021E1630: ; 0x021E1630
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bne _021E1650
	bl ov21_021E1808
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E1840
	str r0, [sp, #4]
	b _021E1656
_021E1650:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
_021E1656:
	ldr r0, [r6, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4, #0]
	beq _021E1670
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #8]
	b _021E167C
_021E1670:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #8]
_021E167C:
	mov r1, #0
	add r2, sp, #0
_021E1680:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021E168E
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #3
	blt _021E1680
_021E168E:
	cmp r1, #3
	bne _021E16A2
	cmp r7, #1
	bne _021E169C
	add r0, r5, #0
	bl ov21_021E17C4
_021E169C:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E16A2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1630

	thumb_func_start ov21_021E16A8
ov21_021E16A8: ; 0x021E16A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021E17AC
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov21_021D2360
	cmp r6, #0
	bne _021E16D0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	mov r3, #1
	bl ov21_021E17EC
_021E16D0:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E172A
	cmp r6, #0
	beq _021E1706
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E1706:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E172A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E16A8

	thumb_func_start ov21_021E1730
ov21_021E1730: ; 0x021E1730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bne _021E1746
	bl ov21_021E1808
	str r0, [sp]
	b _021E174A
_021E1746:
	mov r0, #1
	str r0, [sp]
_021E174A:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021E1764
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021E1770
_021E1764:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021E1770:
	mov r1, #0
	add r2, sp, #0
_021E1774:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021E1782
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #2
	blt _021E1774
_021E1782:
	cmp r1, #2
	bne _021E17A6
	cmp r6, #1
	bne _021E179A
	add r0, r7, #0
	bl ov21_021E17C4
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D2360
	b _021E17A0
_021E179A:
	add r0, r5, #0
	bl ov21_021E1210
_021E17A0:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E17A6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1730

	thumb_func_start ov21_021E17AC
ov21_021E17AC: ; 0x021E17AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E17AC

	thumb_func_start ov21_021E17C4
ov21_021E17C4: ; 0x021E17C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021FE0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E17C4

	thumb_func_start ov21_021E17DC
ov21_021E17DC: ; 0x021E17DC
	mov r1, #0x5b
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	ldr r3, _021E17E8 ; =ov21_021D24FC
	add r1, r0, r1
	bx r3
	; .align 2, 0
_021E17E8: .word ov21_021D24FC
	thumb_func_end ov21_021E17DC

	thumb_func_start ov21_021E17EC
ov21_021E17EC: ; 0x021E17EC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	add r0, #0x18
	mov r1, #0x30
	add r2, r4, #0
	mov r3, #0x48
	bl ov21_021D2648
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E17EC

	thumb_func_start ov21_021E1808
ov21_021E1808: ; 0x021E1808
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x18
	bl ov21_021D2664
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	bl ov21_021D2164
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1808

	thumb_func_start ov21_021E1824
ov21_021E1824: ; 0x021E1824
	push {r3, lr}
	sub sp, #8
	mov r1, #0x52
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r0, #0x38
	mov r1, #0xac
	mov r2, #0xaa
	mov r3, #0x20
	bl ov21_021D2648
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov21_021E1824

	thumb_func_start ov21_021E1840
ov21_021E1840: ; 0x021E1840
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x38
	bl ov21_021D2664
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	bl ov21_021D1848
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1840

	thumb_func_start ov21_021E185C
ov21_021E185C: ; 0x021E185C
	push {r4, lr}
	cmp r0, #7
	bhi _021E1896
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E186E: ; jump table
	.short _021E1896 - _021E186E - 2 ; case 0
	.short _021E187E - _021E186E - 2 ; case 1
	.short _021E1882 - _021E186E - 2 ; case 2
	.short _021E1886 - _021E186E - 2 ; case 3
	.short _021E188A - _021E186E - 2 ; case 4
	.short _021E188E - _021E186E - 2 ; case 5
	.short _021E1896 - _021E186E - 2 ; case 6
	.short _021E1892 - _021E186E - 2 ; case 7
_021E187E:
	mov r4, #0x7d
	b _021E189A
_021E1882:
	mov r4, #0x16
	b _021E189A
_021E1886:
	mov r4, #0x17
	b _021E189A
_021E188A:
	mov r4, #0x19
	b _021E189A
_021E188E:
	mov r4, #0x18
	b _021E189A
_021E1892:
	mov r4, #0x1a
	b _021E189A
_021E1896:
	bl GF_AssertFail
_021E189A:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E185C

	thumb_func_start ov21_021E18A0
ov21_021E18A0: ; 0x021E18A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r2, #0
	add r1, r3, #0
	add r2, r4, #0
	bl ov21_021D561C
	add r4, r0, #0
	mov r0, #0x60
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E18D8 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	mov r3, #0x78
	bl sub_0201D78C
	add r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E18D8: .word 0x00020100
	thumb_func_end ov21_021E18A0

	thumb_func_start ov21_021E18DC
ov21_021E18DC: ; 0x021E18DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r2, #0
	add r1, r3, #0
	add r2, r4, #0
	bl ov21_021D566C
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xf0
	sub r3, r1, r0
	mov r0, #0x70
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E1920 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	add r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E1920: .word 0x00020100
	thumb_func_end ov21_021E18DC