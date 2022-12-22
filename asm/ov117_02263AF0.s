	.include "macros/function.inc"
	.include "include/ov117_02263AF0.inc"

	.text

	thumb_func_start ov117_02263AF0
ov117_02263AF0: ; 0x02263AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x10]
	mov r0, #0xad
	mov r1, #0x6e
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x6e
	str r1, [sp, #0xc]
	ldr r1, _02263B7C ; =0x02266BEC
	lsl r6, r5, #3
	ldrh r1, [r1, r6]
	add r2, r7, #0
	mov r3, #7
	str r0, [sp, #0x14]
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	ldr r1, _02263B80 ; =0x02266BEE
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldrh r1, [r1, r6]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	mov r3, #7
	bl sub_0200710C
	ldr r0, [sp, #0x14]
	bl sub_02006CA8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02263B84 ; =0x02266ED4
	lsl r1, r5, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	mov r1, #1
	str r0, [r4, #0xc]
	str r5, [r4, #4]
	add r0, r4, #0
	str r1, [r4, #0]
	add r0, #0x2c
	strb r1, [r0]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	add r1, r4, #0
	bl ov117_02263BA4
	ldr r0, _02263B88 ; =0x000005EB
	bl sub_02005748
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263B7C: .word 0x02266BEC
_02263B80: .word 0x02266BEE
_02263B84: .word 0x02266ED4
_02263B88: .word 0x000005EB
	thumb_func_end ov117_02263AF0

	thumb_func_start ov117_02263B8C
ov117_02263B8C: ; 0x02263B8C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	add r4, #0x2d
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02263B8C

	thumb_func_start ov117_02263BA4
ov117_02263BA4: ; 0x02263BA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02263C86
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r2, #0
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r3, sp, #0x10
	bl ov117_02263C8C
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _02263BD0
	mov r7, #0
	b _02263BF0
_02263BD0:
	bge _02263BE2
	lsl r1, r1, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0x80
	sub r7, r0, r1
	b _02263BF0
_02263BE2:
	sub r0, r1, r0
	lsl r1, r0, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	neg r7, r0
_02263BF0:
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _02263BFE
	mov r6, #0
	b _02263C1E
_02263BFE:
	bge _02263C10
	lsl r1, r1, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0x80
	sub r6, r0, r1
	b _02263C1E
_02263C10:
	sub r0, r1, r0
	lsl r1, r0, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	neg r6, r0
_02263C1E:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02263C28
	mov r4, #0
	b _02263C44
_02263C28:
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	add r4, r0, #1
	ldr r1, [r5, #0x28]
	mov r0, #1
	tst r0, r1
	beq _02263C3C
	neg r4, r4
_02263C3C:
	ldr r1, [r5, #0x28]
	mov r0, #1
	eor r0, r1
	str r0, [r5, #0x28]
_02263C44:
	ldr r0, [sp, #0x10]
	bl FX_Inv
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl FX_Inv
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #3
	add r3, r5, #0
	bl sub_0201C6A8
	ldr r0, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, #7
	mov r2, #6
	bl sub_0201C6A8
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #0
	sub r3, r4, r7
	bl sub_0201C63C
	mov r3, #0x27
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #3
	sub r3, r3, r6
	bl sub_0201C63C
_02263C86:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02263BA4

	thumb_func_start ov117_02263C8C
ov117_02263C8C: ; 0x02263C8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r3, #0
	ldr r0, _02263CE8 ; =0x02266BF0
	lsl r3, r1, #3
	ldr r0, [r0, r3]
	add r6, r5, #0
	mul r0, r2
	mov r2, #0xc
	mul r6, r2
	ldr r3, _02263CEC ; =0x02266ED4
	lsl r2, r1, #2
	add r1, r3, r6
	ldr r1, [r2, r1]
	bl _s32_div_f
	mov r1, #3
	lsl r1, r1, #8
	add r2, r0, r1
	ldr r1, [sp, #0x10]
	str r2, [r4, #0]
	str r2, [r1, #0]
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	ble _02263CE6
	mov r1, #0xd
	lsl r1, r1, #8
	sub r0, r0, r1
	ldr r2, _02263CF0 ; =0x0000119A
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ull_mul
	mov r3, #2
	mov r5, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [r4, #0]
	orr r1, r0
	add r0, r2, r1
	str r0, [r4, #0]
_02263CE6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02263CE8: .word 0x02266BF0
_02263CEC: .word 0x02266ED4
_02263CF0: .word 0x0000119A
	thumb_func_end ov117_02263C8C

	thumb_func_start ov117_02263CF4
ov117_02263CF4: ; 0x02263CF4
	cmp r0, #0xa
	blt _02263CFC
	mov r0, #2
	bx lr
_02263CFC:
	cmp r0, #5
	blt _02263D04
	mov r0, #1
	bx lr
_02263D04:
	mov r0, #0
	bx lr
	thumb_func_end ov117_02263CF4

	thumb_func_start ov117_02263D08
ov117_02263D08: ; 0x02263D08
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	add r0, r0, r6
	add r7, r3, #0
	str r0, [r4, #0x10]
	mov r1, #6
	bl _s32_div_f
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	bl ov117_022622C4
	add r1, r4, #0
	add r1, #0x18
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	add r2, r2, r6
	str r2, [r1, r0]
	bl sub_0203608C
	cmp r7, r0
	bne _02263D4E
	ldr r1, _02263D54 ; =0x00003848
	ldr r0, [r5, r1]
	add r0, r0, r6
	str r0, [r5, r1]
	ldr r0, _02263D58 ; =0x000015A8
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl ov117_02265F98
_02263D4E:
	ldr r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263D54: .word 0x00003848
_02263D58: .word 0x000015A8
	thumb_func_end ov117_02263D08

	thumb_func_start ov117_02263D5C
ov117_02263D5C: ; 0x02263D5C
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _02263D66
	mov r0, #0
	bx lr
_02263D66:
	ldr r2, [r0, #0x14]
	cmp r1, r2
	bge _02263D6E
	add r2, r1, #0
_02263D6E:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #8]
	add r1, r1, r2
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02263D5C

	thumb_func_start ov117_02263D80
ov117_02263D80: ; 0x02263D80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02263DA8 ; =0x00002FCC
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r4, r2, #0
	cmp r0, #0
	beq _02263DA4
	add r0, r4, #0
	bl ov117_02263D5C
	ldr r2, [r5, #0]
	add r0, r6, #0
	add r2, #0x30
	ldrb r2, [r2]
	add r1, r4, #0
	bl ov117_02263BA4
_02263DA4:
	pop {r4, r5, r6, pc}
	nop
_02263DA8: .word 0x00002FCC
	thumb_func_end ov117_02263D80

	thumb_func_start ov117_02263DAC
ov117_02263DAC: ; 0x02263DAC
	ldr r1, _02263DBC ; =0x00001428
	ldr r3, _02263DC0 ; =_s32_div_f
	add r2, r0, r1
	ldr r1, [r2, #8]
	mov r0, #0x64
	mul r0, r1
	ldr r1, [r2, #0xc]
	bx r3
	; .align 2, 0
_02263DBC: .word 0x00001428
_02263DC0: .word _s32_div_f
	thumb_func_end ov117_02263DAC

	thumb_func_start ov117_02263DC4
ov117_02263DC4: ; 0x02263DC4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02263E14 ; =0x00002FDC
	add r4, r1, #0
	mov r3, #0
	add r2, r5, #0
_02263DD2:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02263E00
	ldr r2, _02263E14 ; =0x00002FDC
	mov r6, #0x18
	add r2, r5, r2
	mul r6, r3
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, r6
	bl ov117_02263E1C
	str r0, [sp]
	ldr r1, _02263E18 ; =0x00001560
	ldrb r2, [r4, #1]
	ldrb r3, [r4]
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265B58
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02263E00:
	add r3, r3, #1
	add r2, #0x18
	cmp r3, #0x28
	blt _02263DD2
	bl sub_02022974
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02263E14: .word 0x00002FDC
_02263E18: .word 0x00001560
	thumb_func_end ov117_02263DC4

	thumb_func_start ov117_02263E1C
ov117_02263E1C: ; 0x02263E1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	cmp r0, #0
	beq _02263E2E
	bl sub_02022974
_02263E2E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldrb r1, [r5]
	add r0, r7, #0
	bl ov117_022622C4
	ldr r1, [r7, #0]
	ldr r3, _02263EF4 ; =0x02266F10
	add r1, #0x30
	ldrb r2, [r1]
	mov r1, #0x28
	mul r1, r2
	mov r2, #0xa
	mul r2, r0
	ldrb r0, [r5]
	add r1, r3, r1
	add r6, r1, r2
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	add r1, r6, #0
	strh r0, [r4, #6]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	str r6, [r4, #0x14]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
	add r0, r7, #0
	bl ov117_0226417C
	str r0, [r4, #0x10]
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _02263E8E
	ldr r1, [r5, #4]
	add r0, r7, #0
	bl ov117_02261E38
	mov r0, #0x19
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
_02263E8E:
	mov r0, #1
	str r0, [r4, #0]
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	mov r5, #0
	bl sub_0200D5A0
	ldrb r0, [r6, #7]
	cmp r0, #3
	bhi _02263EE8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263EB6: ; jump table
	.short _02263EBE - _02263EB6 - 2 ; case 0
	.short _02263ECA - _02263EB6 - 2 ; case 1
	.short _02263ED4 - _02263EB6 - 2 ; case 2
	.short _02263EDE - _02263EB6 - 2 ; case 3
_02263EBE:
	add r1, sp, #0
	add r0, r5, #0
	ldrsh r1, [r1, r0]
	mov r0, #0x1c
	sub r5, r0, r1
	b _02263EE8
_02263ECA:
	add r1, sp, #0
	mov r0, #2
	ldrsh r5, [r1, r0]
	sub r5, #0xcc
	b _02263EE8
_02263ED4:
	add r1, sp, #0
	add r0, r5, #0
	ldrsh r5, [r1, r0]
	sub r5, #0xa4
	b _02263EE8
_02263EDE:
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	sub r5, r0, r1
_02263EE8:
	mov r1, #5
	lsl r0, r5, #0xc
	lsl r1, r1, #0xc
	bl _s32_div_f
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263EF4: .word 0x02266F10
	thumb_func_end ov117_02263E1C

	thumb_func_start ov117_02263EF8
ov117_02263EF8: ; 0x02263EF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02263F70 ; =0x00002FDC
	mov r6, #0
	add r4, r5, r0
	add r7, r6, #0
_02263F04:
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02263F64
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02263F2C
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02263F64
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	b _02263F64
_02263F2C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02263F80
	cmp r0, #1
	bne _02263F64
	ldr r0, _02263F74 ; =0x00002FCC
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02263F5C
	ldr r0, _02263F78 ; =0x00002FBC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263F5C
	ldrb r0, [r4, #0xe]
	ldr r1, _02263F7C ; =0x00001428
	mov r3, #4
	str r0, [sp]
	ldrsh r3, [r4, r3]
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02263D08
_02263F5C:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	str r7, [r4, #0]
_02263F64:
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #0x28
	blt _02263F04
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263F70: .word 0x00002FDC
_02263F74: .word 0x00002FCC
_02263F78: .word 0x00002FBC
_02263F7C: .word 0x00001428
	thumb_func_end ov117_02263EF8

	thumb_func_start ov117_02263F80
ov117_02263F80: ; 0x02263F80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	add r1, sp, #4
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	mov r7, #0
	bl sub_0200D5A0
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #7]
	cmp r0, #3
	bhi _02264088
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263FAE: ; jump table
	.short _02263FB6 - _02263FAE - 2 ; case 0
	.short _02263FEC - _02263FAE - 2 ; case 1
	.short _02264020 - _02263FAE - 2 ; case 2
	.short _02264052 - _02263FAE - 2 ; case 3
_02263FB6:
	add r0, sp, #4
	add r1, r7, #0
	ldrsh r2, [r0, r1]
	mov r0, #0x1c
	sub r6, r0, r2
	mov r2, #5
	ldr r0, [r4, #0x10]
	lsl r2, r2, #0xc
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #4
	ldrsh r1, [r1, r0]
	mov r0, #0x1c
	sub r5, r0, r1
	cmp r1, #0x4a
	ble _02264088
	mov r7, #1
	b _02264088
_02263FEC:
	add r1, sp, #4
	mov r0, #2
	ldrsh r6, [r1, r0]
	ldr r0, [r4, #0x10]
	ldr r1, _02264170 ; =0xFFFFB000
	add r2, r7, #0
	sub r6, #0xcc
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #6
	ldrsh r0, [r1, r0]
	add r5, r0, #0
	sub r5, #0xcc
	cmp r0, #0x98
	bge _02264088
	mov r7, #1
	b _02264088
_02264020:
	add r0, sp, #4
	add r1, r7, #0
	ldrsh r6, [r0, r1]
	ldr r0, [r4, #0x10]
	ldr r2, _02264170 ; =0xFFFFB000
	sub r6, #0xa4
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r5, r0, #0
	sub r5, #0xa4
	cmp r0, #0x72
	bge _02264088
	mov r7, #1
	b _02264088
_02264052:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	add r2, r7, #0
	sub r6, r0, r1
	mov r1, #5
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #6
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	sub r5, r0, r1
	cmp r1, #0x68
	ble _02264088
	mov r7, #1
_02264088:
	cmp r5, #0
	blt _022640B8
	cmp r5, #0xe
	bge _022640F0
	lsl r0, r5, #0xc
	mov r1, #0xe
	bl _s32_div_f
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bge _022640A2
	add r0, r1, #0
_022640A2:
	bl _f_itof
	ldr r1, _02264174 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	b _022640F0
_022640B8:
	mov r0, #0xd
	mvn r0, r0
	cmp r5, r0
	ble _022640F0
	ldrb r0, [r4, #0xe]
	neg r1, r5
	lsl r2, r0, #2
	ldr r0, _02264178 ; =0x02266BA4
	ldr r0, [r0, r2]
	mul r0, r1
	mov r1, #0xe
	bl _s32_div_f
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bge _022640DC
	add r0, r1, #0
_022640DC:
	bl _f_itof
	ldr r1, _02264174 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
_022640F0:
	bl sub_0203608C
	mov r1, #4
	ldrsh r1, [r4, r1]
	cmp r1, r0
	bne _02264160
	cmp r6, #0
	blt _02264160
	cmp r5, #0
	bgt _02264160
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov117_022653F4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	beq _0226411E
	cmp r0, #2
	beq _02264126
	cmp r0, #3
	beq _02264132
	b _0226413A
_0226411E:
	ldr r0, [r4, #8]
	lsl r0, r0, #1
	str r0, [r4, #8]
	b _0226413A
_02264126:
	ldr r1, [r4, #8]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #8]
	b _0226413A
_02264132:
	ldr r1, [r4, #8]
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [r4, #8]
_0226413A:
	ldrb r1, [r4, #0xe]
	ldr r0, [sp]
	bl ov117_02264EB8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _02264150
	ldr r0, [sp, #0xc]
	mov r1, #3
	bl ov117_02265428
_02264150:
	ldr r0, [sp]
	bl ov117_02264E84
	add r1, r0, #0
	beq _02264160
	ldr r0, [sp]
	bl ov117_022666E8
_02264160:
	cmp r7, #1
	bne _0226416A
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226416A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264170: .word 0xFFFFB000
_02264174: .word 0x45800000
_02264178: .word 0x02266BA4
	thumb_func_end ov117_02263F80

	thumb_func_start ov117_0226417C
ov117_0226417C: ; 0x0226417C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r6, _022641E0 ; =0x02266CCC
	add r2, r0, #0
	add r5, r1, #0
	add r4, sp, #0
	mov r3, #6
_0226418A:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0226418A
	ldr r0, [r6, #0]
	add r1, sp, #0
	str r0, [r4, #0]
	mov r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r1]
	mov r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r1, #2]
	ldrb r0, [r5, #6]
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x24]
	ldr r1, [r2, #0x28]
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0
	mov r2, #2
	mov r3, #0x16
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsl r3, r3, #0x10
	add r4, r0, #0
	bl sub_0200D500
	ldrh r1, [r5, #4]
	add r0, r4, #0
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022641E0: .word 0x02266CCC
	thumb_func_end ov117_0226417C

	thumb_func_start ov117_022641E4
ov117_022641E4: ; 0x022641E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0226420C ; =0x00002FDC
	add r5, r0, #0
	add r6, r4, #0
_022641EE:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _02264200
	ldr r0, _02264210 ; =0x00002FEC
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	ldr r0, _0226420C ; =0x00002FDC
	str r6, [r5, r0]
_02264200:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x28
	blt _022641EE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226420C: .word 0x00002FDC
_02264210: .word 0x00002FEC
	thumb_func_end ov117_022641E4

	thumb_func_start ov117_02264214
ov117_02264214: ; 0x02264214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	ldr r5, _022644F8 ; =0x02266D00
	str r2, [sp, #4]
	add r7, r0, #0
	str r1, [sp]
	mov r4, #0
	add r3, sp, #0x34
	mov r2, #6
_02264226:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02264226
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0xc]
	b _0226434C
_02264244:
	ldr r2, [r7, #0]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r1, r2, r1
	add r1, #0x2c
	ldrb r1, [r1]
	bl ov117_022622C4
	add r5, r0, #0
	ldr r0, [sp, #4]
	lsl r1, r5, #2
	add r0, r0, r1
	ldr r1, [r0, #0x18]
	mov r0, #0x24
	mul r0, r1
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r1, r2, r1
	bl _s32_div_f
	ldr r1, [sp, #0xc]
	lsl r5, r5, #1
	lsl r2, r1, #2
	add r1, sp, #0x24
	str r0, [r1, r2]
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r0, [r0]
	lsl r3, r0, #3
	ldr r0, _022644FC ; =0x02266C7C
	add r0, r0, r3
	ldrh r0, [r5, r0]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [r1, r2]
	str r0, [sp, #0x20]
	b _0226433E
_02264296:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x34
	add r5, r0, r1
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	bl sub_0200CE6C
	add r6, r0, #0
	beq _02264346
	mov r3, #0x16
	mov r1, #0x80
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_0200D364
	ldr r0, [r6, #0]
	bl sub_0200D324
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x13
	sub r2, r2, r1
	mov r0, #0x13
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x12
	sub r2, r2, r1
	mov r0, #0x12
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #8]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r1, #0xc
	str r0, [r5, #0xc]
	bl sub_0201D2E8
	mov r1, #5
	lsl r1, r1, #0xe
	bl _s32_div_f
	mov r0, #0xa
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x10]
	bl sub_0201D2E8
	mov r1, #0xf
	bl _s32_div_f
	add r1, #0x14
	strh r1, [r5, #0x14]
	add r1, r4, #0
	mov r0, #0x18
	mul r1, r0
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, r1
	str r6, [r0, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0226433E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	blt _02264296
_02264346:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0226434C:
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0226435A
	b _02264244
_0226435A:
	mov r0, #0xe
	str r0, [sp, #0x3c]
	mov r0, #0
	mov r1, #0xd9
	str r0, [sp, #0xc]
	str r0, [sp, #0x40]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r6, r0, r1
	b _02264422
_0226436E:
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	mul r0, r1
	add r4, r6, r0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #0x34
	bl sub_0200CE6C
	add r5, r0, #0
	beq _02264428
	mov r3, #0x16
	mov r1, #0x80
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	bl sub_0201D2E8
	mov r1, #3
	bl _s32_div_f
	add r0, r5, #0
	add r1, #0x1c
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x13
	sub r2, r2, r1
	mov r0, #0x13
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x12
	sub r2, r2, r1
	mov r0, #0x12
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #8]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	bl sub_0201D2E8
	mov r1, #5
	lsl r1, r1, #0xe
	bl _s32_div_f
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [r4, #0x10]
	bl sub_0201D2E8
	mov r1, #0xf
	bl _s32_div_f
	add r1, #0x14
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	mov r0, #0xd9
	lsl r0, r0, #2
	str r5, [r1, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_02264422:
	ldr r0, [sp, #0xc]
	cmp r0, #8
	blt _0226436E
_02264428:
	mov r0, #0xd
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	lsl r1, r0, #1
	ldr r0, _02264500 ; =0x02266B6C
	ldrh r0, [r0, r1]
	ldr r1, _02264504 ; =0x00000424
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r6, r0, r1
	b _022644EC
_02264444:
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	mul r0, r1
	add r4, r6, r0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #0x34
	bl sub_0200CE6C
	add r5, r0, #0
	beq _022644F2
	mov r3, #0x16
	mov r1, #0x80
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x13
	sub r2, r2, r1
	mov r0, #0x13
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x12
	sub r2, r2, r1
	mov r0, #0x12
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #8]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	bl sub_0201D2E8
	mov r1, #5
	lsl r1, r1, #0xe
	bl _s32_div_f
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [r4, #0x10]
	bl sub_0201D2E8
	mov r1, #0xf
	bl _s32_div_f
	add r1, #0x14
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldr r0, _02264504 ; =0x00000424
	str r5, [r1, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_022644EC:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	blt _02264444
_022644F2:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022644F8: .word 0x02266D00
_022644FC: .word 0x02266C7C
_02264500: .word 0x02266B6C
_02264504: .word 0x00000424
	thumb_func_end ov117_02264214

	thumb_func_start ov117_02264508
ov117_02264508: ; 0x02264508
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0226455C ; =0x000033A0
	mov r4, #0
	add r5, r6, r0
_02264512:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226451C
	bl sub_0200D0F4
_0226451C:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x24
	blt _02264512
	mov r0, #0x37
	lsl r0, r0, #8
	mov r5, #0
	add r4, r6, r0
_0226452C:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02264536
	bl sub_0200D0F4
_02264536:
	add r5, r5, #1
	add r4, #0x18
	cmp r5, #8
	blt _0226452C
	mov r0, #0xdf
	lsl r0, r0, #6
	mov r4, #0
	add r5, r6, r0
_02264546:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02264550
	bl sub_0200D0F4
_02264550:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blt _02264546
	pop {r4, r5, r6, pc}
	nop
_0226455C: .word 0x000033A0
	thumb_func_end ov117_02264508

	thumb_func_start ov117_02264560
ov117_02264560: ; 0x02264560
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r1, _022647FC ; =0x0000339C
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02264578
	add sp, #0x34
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_02264578:
	ldr r0, [sp, #0x18]
	str r4, [sp, #0x14]
	add r5, r0, #4
_0226457E:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226463A
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _02264596
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r5, #0]
	b _0226463A
_02264596:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _022645B0
	str r0, [r5, #4]
_022645B0:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl sub_0201D2B8
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0201D2C4
	str r0, [sp, #0x1c]
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #0x28]
	lsl r3, r3, #0xa
	add r3, r1, r3
	ldr r1, _02264800 ; =0x00000000
	ldr r0, [r5, #0]
	adc r6, r1
	lsl r1, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	asr r1, r1, #0xc
	add r1, #0x80
	mov r3, #2
	lsl r1, r1, #0x10
	ldr r6, _02264800 ; =0x00000000
	lsl r3, r3, #0xa
	asr r1, r1, #0x10
	add r3, r7, r3
	adc r2, r6
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	neg r3, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r2, #0x60
	lsl r2, r2, #0x10
	mov r3, #0x16
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r5, #0x14]
_0226463A:
	ldr r0, [sp, #0x14]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x24
	blt _0226457E
	mov r0, #0
	str r0, [sp]
	mov r1, #0xd9
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r5, r0, r1
_02264652:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226470E
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0226466A
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r5, #0]
	b _0226470E
_0226466A:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _02264684
	str r0, [r5, #4]
_02264684:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl sub_0201D2B8
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0201D2C4
	str r0, [sp, #0x20]
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #0x2c]
	lsl r3, r3, #0xa
	add r3, r1, r3
	ldr r1, _02264800 ; =0x00000000
	ldr r0, [r5, #0]
	adc r6, r1
	lsl r1, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	asr r1, r1, #0xc
	add r1, #0x80
	mov r3, #2
	lsl r1, r1, #0x10
	ldr r6, _02264800 ; =0x00000000
	lsl r3, r3, #0xa
	asr r1, r1, #0x10
	add r3, r7, r3
	adc r2, r6
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	neg r3, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r2, #0x60
	lsl r2, r2, #0x10
	mov r3, #0x16
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r5, #0x14]
_0226470E:
	ldr r0, [sp]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _02264652
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _02264804 ; =0x00000424
	ldr r0, [sp, #0x18]
	add r5, r0, r1
_02264724:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _022647E0
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0226473C
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r5, #0]
	b _022647E0
_0226473C:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _02264756
	str r0, [r5, #4]
_02264756:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl sub_0201D2B8
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_0201D2C4
	str r0, [sp, #0x24]
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	str r0, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x24]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #0x30]
	lsl r3, r3, #0xa
	add r3, r1, r3
	ldr r1, _02264800 ; =0x00000000
	ldr r0, [r5, #0]
	adc r6, r1
	lsl r1, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	asr r1, r1, #0xc
	add r1, #0x80
	mov r3, #2
	lsl r1, r1, #0x10
	ldr r6, _02264800 ; =0x00000000
	lsl r3, r3, #0xa
	asr r1, r1, #0x10
	add r3, r7, r3
	adc r2, r6
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	neg r3, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r2, #0x60
	lsl r2, r2, #0x10
	mov r3, #0x16
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r5, #0x14]
_022647E0:
	ldr r0, [sp, #4]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #3
	blt _02264724
	cmp r4, #0
	bne _022647F6
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r1, [r0, #0]
_022647F6:
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022647FC: .word 0x0000339C
_02264800: .word 0x00000000
_02264804: .word 0x00000424
	thumb_func_end ov117_02264560

	thumb_func_start ov117_02264808
ov117_02264808: ; 0x02264808
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02264870 ; =0x0000339C
	add r4, r5, r0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0226481A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0226481A:
	mov r2, #0x47
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r1, _02264870 ; =0x0000339C
	ldr r2, _02264874 ; =0x00001428
	add r0, r5, #0
	add r1, r5, r1
	add r2, r5, r2
	bl ov117_02264214
	ldr r1, _02264874 ; =0x00001428
	ldr r0, [r5, #0x2c]
	add r1, r5, r1
	bl ov117_02263B8C
	add r0, r5, #0
	bl ov117_02264A84
	mov r2, #0
	ldr r0, _02264878 ; =0x00002FCC
	add r1, r2, #0
	str r2, [r5, r0]
	ldr r0, _0226487C ; =0x00001430
	str r2, [r5, r0]
	add r0, #8
	str r2, [r5, r0]
	mov r0, #0x51
	lsl r0, r0, #6
_02264858:
	add r2, r2, #1
	str r1, [r5, r0]
	add r5, r5, #4
	cmp r2, #4
	blt _02264858
	ldr r0, _02264880 ; =0x0000057C
	bl sub_02005748
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02264870: .word 0x0000339C
_02264874: .word 0x00001428
_02264878: .word 0x00002FCC
_0226487C: .word 0x00001430
_02264880: .word 0x0000057C
	thumb_func_end ov117_02264808

	thumb_func_start ov117_02264884
ov117_02264884: ; 0x02264884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _022648DC ; =0x02266D34
	add r4, r2, #0
	add r3, r0, #0
	add r7, r1, #0
	add r5, sp, #0
	mov r2, #6
_02264894:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _02264894
	ldr r0, [r6, #0]
	add r2, sp, #0
	str r0, [r5, #0]
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	bl sub_0200CE6C
	mov r3, #0x16
	lsl r2, r4, #4
	mov r1, #0x48
	sub r1, r1, r2
	lsl r1, r1, #0x10
	add r5, r0, #0
	asr r1, r1, #0x10
	mov r2, #0x20
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D390
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022648DC: .word 0x02266D34
	thumb_func_end ov117_02264884

	thumb_func_start ov117_022648E0
ov117_022648E0: ; 0x022648E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02264910 ; =0x0000380C
	mov r4, #0
	add r5, r7, r0
	add r6, r4, #0
_022648EC:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r4, #0
	bl ov117_02264958
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D34C
	mov r0, #1
	lsl r0, r0, #0xe
	add r4, r4, #1
	add r5, #0xc
	add r6, r6, r0
	cmp r4, #5
	blt _022648EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264910: .word 0x0000380C
	thumb_func_end ov117_022648E0

	thumb_func_start ov117_02264914
ov117_02264914: ; 0x02264914
	push {r4, r5, r6, lr}
	ldr r6, _0226492C ; =0x0000380C
	add r5, r0, #0
	mov r4, #0
_0226491C:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #5
	blt _0226491C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226492C: .word 0x0000380C
	thumb_func_end ov117_02264914

	thumb_func_start ov117_02264930
ov117_02264930: ; 0x02264930
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02264954 ; =0x0000380C
	mov r4, #0
	add r5, r6, r0
_0226493A:
	add r0, r5, #0
	bl ov117_0226498C
	add r0, r6, #0
	add r1, r5, #0
	bl ov117_022649D8
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #5
	blt _0226493A
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02264954: .word 0x0000380C
	thumb_func_end ov117_02264930

	thumb_func_start ov117_02264958
ov117_02264958: ; 0x02264958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r6, #0
	bl ov117_02264A70
	strb r0, [r5, #4]
	mov r0, #1
	strb r0, [r5, #5]
	ldrb r1, [r5, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl ov117_02264884
	str r0, [r5, #0]
	strb r4, [r5, #6]
	strh r6, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02264958

	thumb_func_start ov117_0226498C
ov117_0226498C: ; 0x0226498C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #6]
	mov r3, #0x16
	add r2, sp, #0
	lsl r1, r0, #4
	mov r0, #0x48
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r1, sp, #0
	ldr r0, [r5, #0]
	add r1, #2
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	cmp r4, r2
	ble _022649D6
	add r2, r2, #2
	strh r2, [r1, #2]
	ldrsh r0, [r1, r0]
	cmp r0, r4
	ble _022649C2
	strh r4, [r1, #2]
_022649C2:
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x16
	ldr r0, [r5, #0]
	lsl r3, r3, #0x10
	bl sub_0200D500
_022649D6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_0226498C

	thumb_func_start ov117_022649D8
ov117_022649D8: ; 0x022649D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #6]
	add r5, r0, #0
	cmp r1, #0
	bne _02264A66
	ldrb r1, [r4, #5]
	cmp r1, #1
	beq _02264A44
	cmp r1, #3
	bne _02264A66
	ldr r0, [r4, #0]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02264A66
	mov r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #5
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	bl ov117_02264A70
	strb r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0200D364
	mov r1, #7
	mov r3, #0x16
	ldr r0, [r4, #0]
	mvn r1, r1
	mov r2, #0x20
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, _02264A68 ; =0x0000380C
	mov r2, #0
	add r3, r5, r0
	mov r1, #4
_02264A2C:
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _02264A36
	strb r1, [r3, #6]
	b _02264A3A
_02264A36:
	sub r0, r0, #1
	strb r0, [r3, #6]
_02264A3A:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #5
	blt _02264A2C
	pop {r3, r4, r5, pc}
_02264A44:
	bl ov117_02263DAC
	ldrb r1, [r4, #5]
	cmp r1, #1
	bne _02264A66
	cmp r0, #0x4b
	ble _02264A66
	mov r0, #2
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	add r1, r1, #3
	bl sub_0200D364
	ldr r0, _02264A6C ; =0x0000057E
	bl sub_02005748
_02264A66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02264A68: .word 0x0000380C
_02264A6C: .word 0x0000057E
	thumb_func_end ov117_022649D8

	thumb_func_start ov117_02264A70
ov117_02264A70: ; 0x02264A70
	cmp r0, #0xa
	blt _02264A78
	mov r0, #2
	bx lr
_02264A78:
	cmp r0, #5
	blt _02264A80
	mov r0, #1
	bx lr
_02264A80:
	mov r0, #0
	bx lr
	thumb_func_end ov117_02264A70

	thumb_func_start ov117_02264A84
ov117_02264A84: ; 0x02264A84
	push {r3, lr}
	ldr r1, _02264AAC ; =0x0000380C
	mov r2, #0
	add r1, r0, r1
_02264A8C:
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _02264AA0
	mov r0, #3
	strb r0, [r1, #5]
	ldr r0, [r1, #0]
	mov r1, #6
	bl sub_0200D364
	pop {r3, pc}
_02264AA0:
	add r2, r2, #1
	add r1, #0xc
	cmp r2, #5
	blt _02264A8C
	pop {r3, pc}
	nop
_02264AAC: .word 0x0000380C
	thumb_func_end ov117_02264A84

	thumb_func_start ov117_02264AB0
ov117_02264AB0: ; 0x02264AB0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #3
	bne _02264AEC
	mov r0, #0xc
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	mov r2, #0
	mov r3, #0xd
	bl sub_02019E2C
	mov r0, #0xc
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	mov r2, #0x14
	mov r3, #0xd
	bl sub_02019E2C
_02264AEC:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov117_02264AB0

	thumb_func_start ov117_02264AF0
ov117_02264AF0: ; 0x02264AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264B50
	ldr r0, _02264BF0 ; =0x02266B72
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp]
_02264B0C:
	ldr r0, [sp, #4]
	ldr r5, [sp]
	ldrh r7, [r0]
	mov r4, #0
_02264B14:
	add r0, r6, #0
	add r0, #0x8c
	add r3, r7, r4
	mov r1, #1
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_02003910
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _02264B14
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _02264B0C
_02264B50:
	bl sub_0203608C
	ldr r3, [r6, #0]
	mov r2, #0
	add r1, r3, #0
	add r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264B74
_02264B62:
	add r1, r3, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264B74
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _02264B62
_02264B74:
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003164
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200316C
	ldr r1, [r6, #0]
	add r7, r0, #0
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	mov r4, #0
	cmp r5, #0
	ble _02264BEA
_02264B9E:
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r6, #0
	bl ov117_022622C4
	lsl r1, r0, #1
	ldr r0, _02264BF4 ; =0x02266CA4
	lsl r2, r5, #3
	add r0, r0, r2
	ldrh r2, [r1, r0]
	mov r1, #6
	add r3, r4, #0
	mul r3, r1
	add r1, sp, #0x10
	add r1, r1, r3
	lsl r3, r2, #1
	ldr r2, [sp, #8]
	mov r0, #0
	add r2, r2, r3
	add r3, r7, r3
_02264BC8:
	ldrh r5, [r1]
	add r0, r0, #1
	strh r5, [r2]
	ldrh r5, [r1]
	add r1, r1, #2
	add r2, r2, #2
	strh r5, [r3]
	add r3, r3, #2
	cmp r0, #3
	blt _02264BC8
	ldr r1, [r6, #0]
	add r4, r4, #1
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	cmp r4, r5
	blt _02264B9E
_02264BEA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264BF0: .word 0x02266B72
_02264BF4: .word 0x02266CA4
	thumb_func_end ov117_02264AF0

	thumb_func_start ov117_02264BF8
ov117_02264BF8: ; 0x02264BF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r7, r0, #0
	ldr r0, [r7, #0x28]
	ldr r1, _02264D10 ; =0x00002716
	mov r2, #2
	bl sub_0200D05C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264C6E
	ldr r0, _02264D14 ; =0x02266B8A
	str r0, [sp, #8]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #4
	str r0, [sp]
_02264C26:
	ldr r0, [sp, #8]
	ldr r5, [sp, #4]
	ldrh r1, [r0]
	ldr r0, [sp]
	mov r6, #0
	add r4, r1, r0
_02264C32:
	add r0, r7, #0
	add r0, #0x8c
	lsl r3, r4, #0x10
	ldr r0, [r0, #0]
	mov r1, #3
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02003910
	strh r0, [r5]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #2
	cmp r6, #0x10
	blt _02264C32
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	blt _02264C26
_02264C6E:
	bl sub_0203608C
	ldr r3, [r7, #0]
	mov r2, #0
	add r1, r3, #0
	add r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264C92
_02264C80:
	add r1, r3, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264C92
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _02264C80
_02264C92:
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02003164
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200316C
	ldr r1, [r7, #0]
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	mov r4, #0
	cmp r5, #0
	ble _02264D0C
	ldr r0, [sp, #0xc]
	lsl r6, r0, #4
_02264CC0:
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r7, #0
	bl ov117_022622C4
	lsl r1, r0, #1
	ldr r0, _02264D18 ; =0x02266C04
	lsl r2, r5, #3
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r3, r4, #5
	add r1, sp, #0x1c
	add r2, r6, r0
	add r1, r1, r3
	lsl r5, r2, #1
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, #0
	add r2, r2, r5
	add r3, r3, r5
_02264CEA:
	ldrh r5, [r1]
	add r0, r0, #1
	strh r5, [r2]
	ldrh r5, [r1]
	add r1, r1, #2
	add r2, r2, #2
	strh r5, [r3]
	add r3, r3, #2
	cmp r0, #0x10
	blt _02264CEA
	ldr r1, [r7, #0]
	add r4, r4, #1
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	cmp r4, r5
	blt _02264CC0
_02264D0C:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264D10: .word 0x00002716
_02264D14: .word 0x02266B8A
_02264D18: .word 0x02266C04
	thumb_func_end ov117_02264BF8

	thumb_func_start ov117_02264D1C
ov117_02264D1C: ; 0x02264D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, _02264E08 ; =0x00002716
	mov r2, #2
	bl sub_0200D05C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264D76
	ldr r0, [sp, #4]
	ldr r7, _02264E0C ; =0x02266B82
	lsl r0, r0, #4
	add r4, sp, #0x14
	str r0, [sp]
_02264D46:
	ldrh r6, [r7]
	ldr r3, [sp]
	add r0, r5, #0
	add r0, #0x8c
	add r3, r6, r3
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	mov r1, #3
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02003910
	strh r0, [r4]
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r4, r4, #2
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _02264D46
_02264D76:
	bl sub_0203608C
	ldr r3, [r5, #0]
	mov r2, #0
	add r1, r3, #0
	add r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264D9A
_02264D88:
	add r1, r3, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264D9A
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _02264D88
_02264D9A:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02003164
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200316C
	ldr r1, [r5, #0]
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x30
	ldrb r6, [r0]
	mov r4, #0
	cmp r6, #0
	ble _02264E02
	ldr r0, [sp, #4]
	lsl r7, r0, #4
_02264DC8:
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov117_022622C4
	lsl r1, r0, #1
	ldr r0, _02264E10 ; =0x02266C54
	lsl r2, r6, #3
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r1, r4, #1
	add r2, sp, #0x14
	ldrh r3, [r2, r1]
	add r0, r7, r0
	ldr r2, [sp, #0xc]
	lsl r0, r0, #1
	strh r3, [r2, r0]
	add r2, sp, #0x14
	ldrh r2, [r2, r1]
	ldr r1, [sp, #8]
	add r4, r4, #1
	strh r2, [r1, r0]
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x30
	ldrb r6, [r0]
	cmp r4, r6
	blt _02264DC8
_02264E02:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02264E08: .word 0x00002716
_02264E0C: .word 0x02266B82
_02264E10: .word 0x02266C54
	thumb_func_end ov117_02264D1C

	thumb_func_start ov117_02264E14
ov117_02264E14: ; 0x02264E14
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	bl sub_0203608C
	strb r0, [r4]
	strh r5, [r4, #2]
	str r6, [r4, #4]
	str r6, [r4, #8]
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_02264E14

	thumb_func_start ov117_02264E3C
ov117_02264E3C: ; 0x02264E3C
	push {r4, r5}
	ldr r2, _02264E80 ; =0x00002FB0
	add r4, r0, #0
	sub r0, r2, #4
	add r3, r1, #0
	ldr r1, [r4, r2]
	ldr r0, [r4, r0]
	sub r0, r1, r0
	cmp r0, #8
	blt _02264E56
	mov r0, #0
	pop {r4, r5}
	bx lr
_02264E56:
	lsr r5, r1, #0x1f
	lsl r1, r1, #0x1d
	sub r1, r1, r5
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, r1
	lsl r0, r0, #4
	add r1, r4, r0
	add r0, r2, #0
	sub r0, #0x84
	add r5, r1, r0
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r4, r2]
	add r0, r0, #1
	str r0, [r4, r2]
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02264E80: .word 0x00002FB0
	thumb_func_end ov117_02264E3C

	thumb_func_start ov117_02264E84
ov117_02264E84: ; 0x02264E84
	push {r3, r4}
	ldr r1, _02264EB4 ; =0x00002FAC
	add r2, r1, #4
	ldr r4, [r0, r1]
	ldr r2, [r0, r2]
	cmp r4, r2
	blt _02264E98
	mov r0, #0
	pop {r3, r4}
	bx lr
_02264E98:
	add r2, r4, #1
	str r2, [r0, r1]
	sub r1, #0x80
	add r3, r0, r1
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #4
	add r0, r3, r0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02264EB4: .word 0x00002FAC
	thumb_func_end ov117_02264E84

	thumb_func_start ov117_02264EB8
ov117_02264EB8: ; 0x02264EB8
	push {r3, r4, r5, r6, r7, lr}
	add r2, r0, #0
	ldr r0, _02264FA4 ; =0x00002FB0
	add r7, r1, #0
	ldr r5, [r2, r0]
	sub r0, r0, #4
	ldr r0, [r2, r0]
	mov r4, #0
	cmp r0, r5
	beq _02264ED0
	cmp r7, #0
	bne _02264ED4
_02264ED0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264ED4:
	lsr r3, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r3
	mov r0, #0x1d
	ror r1, r0
	add r1, r3, r1
	lsr r3, r5, #0x1f
	lsl r5, r5, #0x1d
	sub r5, r5, r3
	ror r5, r0
	add r0, r3, r5
	cmp r1, r0
	bge _02264F12
	cmp r1, r0
	bge _02264F5A
	lsl r3, r1, #4
	add r6, r2, r3
	ldr r3, _02264FA8 ; =0x00002F38
_02264EF8:
	ldrb r5, [r6, r3]
	cmp r5, #0
	bne _02264F08
	ldr r0, _02264FAC ; =0x00002F2C
	add r2, r2, r0
	lsl r0, r1, #4
	add r4, r2, r0
	b _02264F5A
_02264F08:
	add r1, r1, #1
	add r6, #0x10
	cmp r1, r0
	blt _02264EF8
	b _02264F5A
_02264F12:
	cmp r1, #8
	bge _02264F34
	lsl r3, r1, #4
	add r6, r2, r3
	ldr r3, _02264FA8 ; =0x00002F38
_02264F1C:
	ldrb r5, [r6, r3]
	cmp r5, #0
	bne _02264F2C
	ldr r3, _02264FAC ; =0x00002F2C
	lsl r1, r1, #4
	add r3, r2, r3
	add r4, r3, r1
	b _02264F34
_02264F2C:
	add r1, r1, #1
	add r6, #0x10
	cmp r1, #8
	blt _02264F1C
_02264F34:
	cmp r4, #0
	bne _02264F5A
	mov r6, #0
	cmp r0, #0
	ble _02264F5A
	ldr r1, _02264FA8 ; =0x00002F38
	add r5, r2, #0
_02264F42:
	ldrb r3, [r5, r1]
	cmp r3, #0
	bne _02264F52
	ldr r0, _02264FAC ; =0x00002F2C
	add r1, r2, r0
	lsl r0, r6, #4
	add r4, r1, r0
	b _02264F5A
_02264F52:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, r0
	blt _02264F42
_02264F5A:
	cmp r4, #0
	bne _02264F66
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264F66:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02264F70
	bl sub_02022974
_02264F70:
	mov r0, #1
	strb r7, [r4, #1]
	strb r0, [r4, #0xc]
	cmp r7, #1
	beq _02264F84
	cmp r7, #2
	beq _02264F8C
	cmp r7, #3
	beq _02264F98
	b _02264FA0
_02264F84:
	ldr r0, [r4, #4]
	lsl r0, r0, #1
	str r0, [r4, #8]
	b _02264FA0
_02264F8C:
	ldr r1, [r4, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #8]
	b _02264FA0
_02264F98:
	ldr r1, [r4, #4]
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [r4, #8]
_02264FA0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264FA4: .word 0x00002FB0
_02264FA8: .word 0x00002F38
_02264FAC: .word 0x00002F2C
	thumb_func_end ov117_02264EB8

	thumb_func_start ov117_02264FB0
ov117_02264FB0: ; 0x02264FB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _02265044 ; =0x02266D68
	add r7, r0, #0
	str r1, [sp]
	add r3, sp, #4
	mov r2, #6
_02264FBE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02264FBE
	ldr r0, [r4, #0]
	ldr r4, [sp]
	ldr r5, _02265048 ; =0x02266BB4
	str r0, [r3, #0]
	mov r6, #0
_02264FD0:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #4
	bl sub_0200CE6C
	mov r3, #0x16
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsl r3, r3, #0x10
	bl sub_0200D500
	lsr r1, r6, #0x1f
	add r1, r6, r1
	asr r1, r1, #1
	ldr r0, [r4, #0]
	add r1, #0x1f
	bl sub_0200D364
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _02264FD0
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _0226501E
	cmp r0, #3
	beq _02265036
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_0226501E:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_0200D3F4
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0200D3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_02265036:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02265044: .word 0x02266D68
_02265048: .word 0x02266BB4
	thumb_func_end ov117_02264FB0

	thumb_func_start ov117_0226504C
ov117_0226504C: ; 0x0226504C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_02265052:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02265052
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_0226504C

	thumb_func_start ov117_02265064
ov117_02265064: ; 0x02265064
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022651CC ; =0x02266D9C
	add r5, r0, #0
	str r1, [sp]
	add r3, sp, #0xc
	mov r2, #6
_02265072:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02265072
	ldr r0, [r4, #0]
	ldr r4, [sp]
	str r0, [r3, #0]
	mov r0, #0
	ldr r7, _022651D0 ; =0x02266B7A
	str r0, [sp, #8]
_02265086:
	ldr r0, [sp]
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	mov r2, #0x4c
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _022651D4 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp]
	add r6, #0x80
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	mov r2, #0x44
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022651D4 ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0xc
	bl sub_0200CE6C
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	sub r2, #0x18
	lsl r2, r2, #0x10
	mov r3, #0x16
	str r0, [r4, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldrh r1, [r7, #2]
	ldr r0, [r4, #0]
	bl sub_0200D364
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022651D8 ; =0x02266DD0
	bl sub_0200CE6C
	mov r1, #0
	mov r3, #0x16
	add r2, r1, #0
	lsl r3, r3, #0x10
	str r0, [r4, #4]
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022651DC ; =0x02266E04
	bl sub_0200CE6C
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	mov r3, #0x16
	str r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D6A4
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	add r1, #0x22
	bl sub_0200D364
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0200D3F4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x30
	bl ov117_02266344
	ldr r0, [sp, #8]
	add r4, #0x4c
	add r0, r0, #1
	add r7, r7, #2
	str r0, [sp, #8]
	cmp r0, #3
	bge _022651B4
	b _02265086
_022651B4:
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_0200D3F4
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #8]
	bl sub_0200D3F4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022651CC: .word 0x02266D9C
_022651D0: .word 0x02266B7A
_022651D4: .word 0x00000000
_022651D8: .word 0x02266DD0
_022651DC: .word 0x02266E04
	thumb_func_end ov117_02265064

	thumb_func_start ov117_022651E0
ov117_022651E0: ; 0x022651E0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_022651E8:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	ldr r0, [r5, #4]
	bl sub_0200D0F4
	ldr r0, [r5, #8]
	bl sub_0200D0F4
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x30
	bl ov117_02266384
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #3
	blt _022651E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_022651E0

	thumb_func_start ov117_02265210
ov117_02265210: ; 0x02265210
	push {r4, lr}
	add r4, r1, #0
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _02265250 ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl _s32_div_f
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	mov r1, #0
	add r2, r1, #0
	add r3, r4, #0
_02265232:
	lsl r0, r2, #0xc
	str r0, [r3, #0xc]
	add r1, r1, #1
	strb r1, [r3, #0x14]
	add r2, #0x5a
	add r3, #0x4c
	cmp r1, #3
	blt _02265232
	mov r0, #2
	strb r0, [r4, #0x10]
	mov r0, #1
	add r4, #0xf1
	strb r0, [r4]
	pop {r4, pc}
	nop
_02265250: .word 0x02266BC4
	thumb_func_end ov117_02265210

	thumb_func_start ov117_02265254
ov117_02265254: ; 0x02265254
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xf1
	ldrb r0, [r0]
	mov r5, #0
	cmp r0, #1
	bne _02265268
	b _022653E8
_02265268:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _022652F4
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf3
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf3
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0xf4
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0xf3
	lsl r2, r1, #2
	ldr r1, _022653EC ; =0x02266BC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _02265356
	add r0, r4, #0
	add r0, #0xf3
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrb r1, [r0]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0xe4
	str r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, _022653F0 ; =0x02266BC5
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	b _02265356
_022652F4:
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _02265356
	add r0, r4, #0
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _02265356
	add r0, r4, #0
	add r0, #0xf0
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf4
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #5
	blo _0226533C
	add r0, r4, #0
	mov r1, #4
	add r0, #0xf4
	strb r1, [r0]
_0226533C:
	add r1, r4, #0
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _022653EC ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl _s32_div_f
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
_02265356:
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265392
	ldr r1, _022653EC ; =0x02266BC4
	mov r0, #0
	mov r7, #0xc
_02265366:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, r0, #1
	add r1, r1, #4
	add r2, r3, r2
	add r3, r2, #0
	mul r3, r7
	add r5, r5, r3
	cmp r0, #2
	blt _02265366
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	sub r5, #0xf
	cmp r5, r0
	bne _022653C6
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #1
	bl ov117_02265428
	b _022653C6
_02265392:
	cmp r0, #2
	bne _022653C6
	ldr r0, _022653EC ; =0x02266BC4
	mov r1, #0
	mov r7, #0xc
_0226539C:
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	add r1, r1, #1
	add r0, r0, #4
	add r2, r3, r2
	add r3, r2, #0
	mul r3, r7
	add r5, r5, r3
	cmp r1, #3
	blt _0226539C
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	sub r5, #0xf
	cmp r5, r0
	bne _022653C6
	add r0, r4, #0
	add r0, #0x98
	mov r1, #1
	bl ov117_02265428
_022653C6:
	mov r7, #0
	add r5, r4, #0
_022653CA:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov117_02265438
	add r2, r5, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, #0x30
	bl ov117_02266440
	add r7, r7, #1
	add r5, #0x4c
	cmp r7, #3
	blt _022653CA
_022653E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022653EC: .word 0x02266BC4
_022653F0: .word 0x02266BC5
	thumb_func_end ov117_02265254

	thumb_func_start ov117_022653F4
ov117_022653F4: ; 0x022653F4
	push {r3, r4}
	ldr r2, _02265424 ; =0x00001468
	mov r3, #0
	add r2, r0, r2
	add r4, r2, #0
_022653FE:
	ldrb r0, [r4, #0x15]
	cmp r0, #1
	bne _02265412
	mov r0, #0x4c
	mul r0, r3
	add r0, r2, r0
	str r0, [r1, #0]
	ldrb r0, [r0, #0x14]
	pop {r3, r4}
	bx lr
_02265412:
	add r3, r3, #1
	add r4, #0x4c
	cmp r3, #3
	blt _022653FE
	mov r0, #0
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	nop
_02265424: .word 0x00001468
	thumb_func_end ov117_022653F4

	thumb_func_start ov117_02265428
ov117_02265428: ; 0x02265428
	strb r1, [r0, #0x10]
	mov r1, #0
	strb r1, [r0, #0x11]
	strb r1, [r0, #0x12]
	str r1, [r0, #0x18]
	strb r1, [r0, #0x15]
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02265428

	thumb_func_start ov117_02265438
ov117_02265438: ; 0x02265438
	push {r4, lr}
	ldrb r3, [r2, #0x10]
	lsl r4, r3, #2
	ldr r3, _02265448 ; =0x02266B94
	ldr r3, [r3, r4]
	blx r3
	pop {r4, pc}
	nop
_02265448: .word 0x02266B94
	thumb_func_end ov117_02265438

	thumb_func_start ov117_0226544C
ov117_0226544C: ; 0x0226544C
	mov r0, #0
	strb r0, [r2, #0x15]
	mov r0, #1
	bx lr
	thumb_func_end ov117_0226544C

	thumb_func_start ov117_02265454
ov117_02265454: ; 0x02265454
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	add r1, sp, #0
	strh r0, [r1, #2]
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	strh r0, [r1]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _02265474
	cmp r0, #1
	beq _022654A8
	b _02265632
_02265474:
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200D3F4
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r5, #0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r5, #0x1c]
	mov r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r5, #0x1e]
	ldrb r0, [r5, #0x11]
	add r0, r0, #1
	strb r0, [r5, #0x11]
_022654A8:
	mov r1, #0x5a
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0xc
	cmp r2, r1
	bgt _022654BA
	bge _022654EC
	cmp r2, #0
	beq _022654CC
	b _02265554
_022654BA:
	lsl r0, r1, #1
	cmp r2, r0
	bgt _022654C4
	beq _02265514
	b _02265554
_022654C4:
	ldr r0, _0226563C ; =0x0010E000
	cmp r2, r0
	beq _02265534
	b _02265554
_022654CC:
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	sub r1, #0x20
	add r0, sp, #0
	strh r1, [r0]
	b _02265558
_022654EC:
	mov r0, #0x1c
	ldrsh r2, [r5, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	sub r0, r2, r0
	lsl r0, r0, #0x10
	ldrb r1, [r5, #0x12]
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #2]
	b _02265558
_02265514:
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	sub r0, #0xe4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r1, #0xe4
	add r0, sp, #0
	strh r1, [r0]
	b _02265558
_02265534:
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	sub r1, #0x20
	add r0, sp, #0
	strh r1, [r0, #2]
	b _02265558
_02265554:
	bl sub_02022974
_02265558:
	ldrb r1, [r5, #0x12]
	cmp r1, #0xf
	blo _022655A0
	mov r1, #0x1c
	mov r2, #0x1e
	mov r3, #0x16
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0]
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r2, #0x1e
	ldrsh r2, [r5, r2]
	mov r1, #0x1c
	mov r3, #0x16
	add r2, #0x18
	lsl r2, r2, #0x10
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #8]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r0, r5, #0
	mov r1, #2
	bl ov117_02265428
	add r1, r5, #0
	add r5, #0x30
	add r0, r4, #0
	add r2, r5, #0
	bl ov117_0226639C
	mov r0, #1
	pop {r3, r4, r5, pc}
_022655A0:
	mov r0, #0xb4
	mul r0, r1
	lsl r0, r0, #0xc
	mov r1, #0xf
	bl _s32_div_f
	bl sub_0201D2B8
	mov r2, #6
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ull_mul
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	neg r1, r1
	asr r0, r1, #0xb
	add r3, sp, #0
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r4, r0, #0xc
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, r2, r4
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r5, #0]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, #0x18
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r5, #8]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	neg r0, r4
	mov r1, #3
	bl _s32_div_f
	lsl r0, r0, #0xc
	mov r1, #0x18
	bl _s32_div_f
	mov r1, #1
	lsl r1, r1, #0xc
	sub r0, r1, r0
	bl _f_itof
	ldr r1, _02265640 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0200D6E8
_02265632:
	ldrb r0, [r5, #0x12]
	add r0, r0, #1
	strb r0, [r5, #0x12]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226563C: .word 0x0010E000
_02265640: .word 0x45800000
	thumb_func_end ov117_02265454

	thumb_func_start ov117_02265644
ov117_02265644: ; 0x02265644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf3
	ldrb r0, [r0]
	add r4, r2, #0
	cmp r0, #0
	beq _02265674
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0xb
	lsl r0, r0, #0xe
	lsl r2, r1, #2
	ldr r1, _022657BC ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D34C
	b _0226567C
_02265674:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3CC
_0226567C:
	add r0, r5, #0
	add r0, #0xf3
	ldrb r1, [r0]
	mov r0, #0xb4
	mul r0, r1
	add r1, r5, #0
	add r1, #0xf4
	ldrb r1, [r1]
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _022657BC ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl _s32_div_f
	bl sub_0201D2B8
	mov r2, #3
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r1, r1
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r7, r0, #0xc
	add r0, r5, #0
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	mov r2, #0x4c
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	add r0, r5, #0
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r6, #0x80
	add r0, r1, r0
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	mov r2, #0x44
	mov r3, #0
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	sub r2, #0x18
	add r2, r2, r7
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	neg r0, r7
	mov r1, #3
	bl _s32_div_f
	lsl r0, r0, #0xc
	mov r1, #0xc
	bl _s32_div_f
	mov r1, #1
	lsl r1, r1, #0xc
	sub r0, r1, r0
	bl _f_itof
	ldr r1, _022657C0 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0200D6E8
	add r1, r5, #0
	add r1, #0xf4
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0xf3
	lsl r2, r1, #2
	ldr r1, _022657BC ; =0x02266BC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	sub r1, r1, #1
	cmp r0, r1
	bne _02265796
	add r2, r4, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, #0x30
	bl ov117_0226639C
_02265796:
	add r5, #0xe4
	ldr r1, [r5, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	mov r1, #0x5a
	asr r0, r0, #0xc
	lsl r1, r1, #2
	bl _s32_div_f
	cmp r1, #0xb4
	bne _022657B0
	mov r0, #1
	b _022657B2
_022657B0:
	mov r0, #0
_022657B2:
	strb r0, [r4, #0x15]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022657BC: .word 0x02266BC4
_022657C0: .word 0x45800000
	thumb_func_end ov117_02265644

	thumb_func_start ov117_022657C4
ov117_022657C4: ; 0x022657C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldrb r0, [r4, #0x11]
	add r5, r1, #0
	cmp r0, #3
	bls _022657D4
	b _02265AA2
_022657D4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022657E0: ; jump table
	.short _022657E8 - _022657E0 - 2 ; case 0
	.short _0226585A - _022657E0 - 2 ; case 1
	.short _022658AE - _022657E0 - 2 ; case 2
	.short _022659CA - _022657E0 - 2 ; case 3
_022657E8:
	ldr r0, _02265AA8 ; =0x0000057B
	bl sub_02005748
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r3, sp, #4
	mov r2, #4
	ldrsh r2, [r3, r2]
	mov r1, #6
	ldrsh r1, [r3, r1]
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D3F4
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	add r1, r1, #2
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xf4
	ldrb r0, [r0]
	ldr r1, _02265AB0 ; =0x02266BC6
	add r5, #0xf4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	strb r0, [r4, #0x12]
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	lsr r0, r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	b _02265AA2
_0226585A:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r1, r0
	bne _02265884
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	add r1, r1, #1
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xe
	bl sub_0200D34C
_02265884:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _022658A8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	bl sub_0200D364
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	b _02265AA2
_022658A8:
	sub r0, r0, #1
	strb r0, [r4, #0x12]
	b _02265AA2
_022658AE:
	add r0, r5, #0
	add r0, #0xf2
	ldrb r0, [r0]
	mov r2, #0
	cmp r0, #0
	bne _022658E0
	add r0, r5, #0
	add r0, #0xf4
	ldrb r0, [r0]
	add r3, r5, #0
	add r3, #0xf3
	lsl r1, r0, #2
	ldr r0, _02265AB4 ; =0x02266BC4
	ldrb r3, [r3]
	ldrb r0, [r0, r1]
	add r5, #0xf0
	sub r3, r0, r3
	add r3, r2, r3
	ldr r2, _02265AB8 ; =0x02266BC5
	ldrb r1, [r2, r1]
	add r1, r3, r1
	add r6, r1, r0
	ldrb r0, [r5]
	add r5, r0, #2
	b _0226590C
_022658E0:
	add r1, r2, r0
	add r0, r5, #0
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _022658FE
	add r5, #0xf4
	ldrb r0, [r5]
	mov r5, #1
	add r0, r0, #1
	lsl r2, r0, #2
	ldr r0, _02265AB4 ; =0x02266BC4
	ldrb r0, [r0, r2]
	add r6, r1, r0
	b _0226590C
_022658FE:
	add r5, #0xf4
	ldrb r2, [r5]
	add r5, r0, #1
	lsl r3, r2, #2
	ldr r2, _02265AB4 ; =0x02266BC4
	ldrb r2, [r2, r3]
	add r6, r1, r2
_0226590C:
	mov r1, #0x1e
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl _s32_div_f
	add r0, r5, r0
	mov r1, #0xc
	bl _s32_div_f
	add r5, r1, #0
	mov r0, #0x1e
	lsl r0, r0, #0xc
	add r7, r5, #0
	mul r7, r0
	add r0, r7, #0
	bl sub_0201D2B8
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0201D2C4
	str r0, [sp]
	add r1, sp, #4
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r3, #0
	ldrsh r0, [r1, r3]
	mov r2, #0x4c
	add r0, #0x18
	strh r0, [r1]
	mov r0, #2
	ldrsh r7, [r1, r0]
	asr r1, r5, #0x1f
	add r0, r5, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r1, #0x80
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	sub r0, r0, r7
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0x20]
	add r0, sp, #4
	mov r3, #0
	ldrsh r5, [r0, r3]
	ldr r0, [sp]
	mov r2, #0x44
	asr r1, r0, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r0, r5
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0x24]
	lsl r0, r7, #0xc
	str r0, [r4, #0x28]
	lsl r0, r5, #0xc
	str r0, [r4, #0x2c]
	strb r6, [r4, #0x12]
	str r6, [r4, #0x18]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
_022659CA:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldrb r1, [r4, #0x12]
	mov r0, #0xb4
	mul r0, r1
	ldr r1, [r4, #0x18]
	lsl r0, r0, #0xc
	bl _s32_div_f
	bl sub_0201D2B8
	mov r2, #3
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ull_mul
	add r5, r0, #0
	ldr r2, [r4, #0x28]
	add r6, r1, #0
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	ldr r2, [r4, #0x2c]
	lsl r1, r1, #4
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	mov r2, #2
	asr r3, r3, #0xc
	mov r7, #0
	lsl r2, r2, #0xa
	asr r1, r1, #0x10
	sub r3, #0x18
	add r2, r5, r2
	adc r6, r7
	lsl r5, r6, #0x14
	lsr r2, r2, #0xc
	orr r2, r5
	neg r5, r2
	asr r2, r5, #0xb
	lsr r2, r2, #0x14
	add r2, r5, r2
	asr r2, r2, #0xc
	add r2, r3, r2
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #0]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0xb
	ldr r1, [r4, #0x18]
	lsl r0, r0, #0xe
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D34C
	ldr r2, [r4, #0x28]
	ldr r3, [r4, #0x2c]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	lsl r1, r1, #4
	lsl r2, r2, #4
	mov r3, #0x16
	ldr r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldrb r0, [r4, #0x12]
	sub r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _02265AA2
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	bl sub_0200D364
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #2
	bl ov117_02265428
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02265AA2:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265AA8: .word 0x0000057B
_02265AAC: .word 0x02266B7A
_02265AB0: .word 0x02266BC6
_02265AB4: .word 0x02266BC4
_02265AB8: .word 0x02266BC5
	thumb_func_end ov117_022657C4

	thumb_func_start ov117_02265ABC
ov117_02265ABC: ; 0x02265ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _02265B34 ; =0x02266D9C
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #6
_02265ACA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02265ACA
	ldr r0, [r6, #0]
	mov r7, #0x16
	str r0, [r3, #0]
	mov r6, #0
	lsl r7, r7, #0x10
_02265ADC:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0
	str r0, [r4, #0]
	add r2, r1, #0
	add r3, r7, #0
	bl sub_0200D500
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02265B38 ; =0x02266DD0
	bl sub_0200CE6C
	mov r1, #0
	str r0, [r4, #4]
	add r2, r1, #0
	add r3, r7, #0
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #3
	blt _02265ADC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265B34: .word 0x02266D9C
_02265B38: .word 0x02266DD0
	thumb_func_end ov117_02265ABC

	thumb_func_start ov117_02265B3C
ov117_02265B3C: ; 0x02265B3C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_02265B42:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	ldr r0, [r5, #4]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blt _02265B42
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02265B3C

	thumb_func_start ov117_02265B58
ov117_02265B58: ; 0x02265B58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	ldr r4, _02265C04 ; =0x00000000
	beq _02265C02
	bl sub_0203608C
	ldr r1, [sp]
	cmp r1, r0
	beq _02265C02
	add r0, r4, #0
	add r2, r7, #0
_02265B74:
	ldrb r1, [r2, #0x15]
	cmp r1, #0
	bne _02265B82
	mov r1, #0x18
	mul r1, r0
	add r4, r7, r1
	b _02265B8A
_02265B82:
	add r0, r0, #1
	add r2, #0x18
	cmp r0, #3
	blt _02265B74
_02265B8A:
	cmp r4, #0
	beq _02265C02
	ldr r1, [sp]
	add r0, r6, #0
	bl ov117_022622C4
	ldr r1, [r6, #0]
	ldr r2, _02265C08 ; =0x02266C2C
	add r1, #0x30
	ldrb r1, [r1]
	add r7, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r1, #3
	lsl r1, r7, #1
	add r2, r2, r3
	ldrh r1, [r1, r2]
	bl sub_0200D41C
	ldr r1, _02265C0C ; =0x02266B7A
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [r4, #0]
	bl sub_0200D364
	ldr r0, [r6, #0]
	mov r3, #0x16
	add r0, #0x30
	ldrb r0, [r0]
	lsl r3, r3, #0x10
	lsl r1, r0, #2
	ldr r0, _02265C10 ; =0x02266BD8
	add r0, r0, r1
	ldrb r0, [r7, r0]
	ldr r1, _02265C14 ; =0x02266BB4
	lsl r2, r0, #2
	ldr r0, _02265C18 ; =0x02266BB6
	ldrsh r1, [r1, r2]
	ldrsh r0, [r0, r2]
	mov r2, #0x10
	sub r0, #0x18
	strh r0, [r4, #0x10]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0]
	sub r2, #0x60
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [sp, #0x18]
	strb r5, [r4, #0x12]
	sub r0, #0xc
	strh r0, [r4, #0x16]
	mov r0, #0
	strb r0, [r4, #0x13]
	mov r0, #1
	strb r0, [r4, #0x15]
_02265C02:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02265C04: .word 0x00000000
_02265C08: .word 0x02266C2C
_02265C0C: .word 0x02266B7A
_02265C10: .word 0x02266BD8
_02265C14: .word 0x02266BB4
_02265C18: .word 0x02266BB6
	thumb_func_end ov117_02265B58

	thumb_func_start ov117_02265C1C
ov117_02265C1C: ; 0x02265C1C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r4, #0
	add r5, r6, #0
_02265C24:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _02265C32
	add r0, r6, #0
	add r1, r5, #0
	bl ov117_02265C3C
_02265C32:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blt _02265C24
	pop {r4, r5, r6, pc}
	thumb_func_end ov117_02265C1C

	thumb_func_start ov117_02265C3C
ov117_02265C3C: ; 0x02265C3C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #4
	bls _02265C4A
	b _02265D88
_02265C4A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265C56: ; jump table
	.short _02265C60 - _02265C56 - 2 ; case 0
	.short _02265C88 - _02265C56 - 2 ; case 1
	.short _02265CC4 - _02265C56 - 2 ; case 2
	.short _02265D20 - _02265C56 - 2 ; case 3
	.short _02265D5A - _02265C56 - 2 ; case 4
_02265C60:
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
_02265C88:
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265C96
	sub r0, r0, #1
	strh r0, [r4, #0x16]
	b _02265D88
_02265C96:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	str r2, [r4, #0xc]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	cmp r0, r1
	blt _02265D88
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265CC4:
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, _02265DB0 ; =0x0000057B
	bl sub_02005748
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265DB4 ; =0x02266B7A
	ldrh r1, [r1, r2]
	add r1, r1, #2
	bl sub_0200D364
	mov r0, #8
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265D20:
	ldrb r0, [r4, #0x14]
	sub r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _02265D36
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xe
	bl sub_0200D34C
_02265D36:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _02265D88
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265DB4 ; =0x02266B7A
	ldrh r1, [r1, r2]
	bl sub_0200D364
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265D5A:
	mov r0, #2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r4, #0xc]
	asr r1, r0, #0xc
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	sub r0, #0x60
	cmp r1, r0
	bgt _02265D88
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	strb r0, [r4, #0x13]
	add sp, #4
	strb r0, [r4, #0x15]
	pop {r3, r4, pc}
_02265D88:
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	lsl r1, r1, #4
	lsl r2, r2, #4
	mov r3, #0x16
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02265DB0: .word 0x0000057B
_02265DB4: .word 0x02266B7A
	thumb_func_end ov117_02265C3C

	thumb_func_start ov117_02265DB8
ov117_02265DB8: ; 0x02265DB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x88]
	mov r2, #0
	add r5, r3, #0
	ldr r4, [sp, #0x9c]
	bl sub_02002EB4
	add r7, r0, #0
	asr r1, r7, #2
	lsr r1, r1, #0x1d
	add r1, r7, r1
	asr r6, r1, #3
	mov r1, #8
	bl FX_ModS32
	cmp r0, #0
	beq _02265DE6
	add r6, r6, #1
_02265DE6:
	add r0, sp, #0x30
	bl sub_0201A7A0
	mov r0, #0
	ldr r3, [sp, #0xb0]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x18]
	add r1, sp, #0x30
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x8c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x88]
	add r0, sp, #0x30
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add r0, sp, #0x30
	mov r1, #1
	mov r2, #0x6e
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x24
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _02265E42
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	sub r4, r4, r0
_02265E42:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	bl sub_0200D9B0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	str r0, [sp, #0x4c]
	mov r0, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x28]
	str r4, [sp, #0x58]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x64]
	mov r0, #1
	str r0, [sp, #0x68]
	mov r0, #0x6e
	str r0, [sp, #0x6c]
	add r0, sp, #0x40
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r6, r0, #0
	cmp r1, #0
	beq _02265E8C
	bl sub_02012A90
_02265E8C:
	ldr r2, [sp, #0xa0]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020128C4
	add r0, sp, #0x30
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x24
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	strh r7, [r5, #0x10]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02265DB8

	thumb_func_start ov117_02265EB0
ov117_02265EB0: ; 0x02265EB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02265EB0

	thumb_func_start ov117_02265EC8
ov117_02265EC8: ; 0x02265EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02265ED2:
	ldr r0, [sp]
	add r1, r0, r7
	mov r0, #6
	lsl r0, r0, #6
	ldrb r1, [r1, r0]
	cmp r1, #0x40
	bge _02265EEA
	mov r0, #0x40
	sub r6, r0, r1
	add r4, r6, #0
	sub r4, #0x50
	b _02265F04
_02265EEA:
	cmp r1, #0x80
	bge _02265EFA
	mov r0, #0xa0
	sub r4, r0, r1
	sub r4, #0x10
	add r6, r4, #0
	sub r6, #0x50
	b _02265F04
_02265EFA:
	sub r1, #0xa0
	mov r0, #0x40
	sub r6, r0, r1
	add r4, r6, #0
	sub r4, #0x50
_02265F04:
	ldr r0, [r5, #4]
	add r1, sp, #8
	add r2, sp, #4
	bl sub_020129A4
	mov r2, #0xa8
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	sub r2, r2, r6
	bl sub_020128C4
	mov r2, #0xa8
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #8]
	sub r2, r2, r4
	bl sub_020128C4
	add r7, r7, #1
	add r5, #0x28
	cmp r7, #6
	blt _02265ED2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02265EC8

	thumb_func_start ov117_02265F34
ov117_02265F34: ; 0x02265F34
	push {r3, r4, r5, lr}
	ldr r0, _02265F94 ; =0x0000019E
	add r4, r1, #0
	ldrsb r1, [r4, r0]
	cmp r1, #0
	ble _02265F46
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02265F46:
	add r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02265F54
	cmp r0, #1
	beq _02265F70
	pop {r3, r4, r5, pc}
_02265F54:
	add r0, r4, #0
	bl ov117_02266008
	cmp r0, #1
	bne _02265F66
	add r0, r4, #0
	bl ov117_02265FD4
	pop {r3, r4, r5, pc}
_02265F66:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_02265F70:
	add r0, r4, #0
	bl ov117_02266030
	add r5, r0, #0
	add r0, r4, #0
	bl ov117_02265EC8
	cmp r5, #1
	bne _02265F92
	ldr r0, _02265F94 ; =0x0000019E
	mov r1, #0xf
	strb r1, [r4, r0]
	add r1, r0, #2
	ldrb r1, [r4, r1]
	add r0, r0, #2
	sub r1, r1, #1
	strb r1, [r4, r0]
_02265F92:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02265F94: .word 0x0000019E
	thumb_func_end ov117_02265F34

	thumb_func_start ov117_02265F98
ov117_02265F98: ; 0x02265F98
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02265FD0 ; =0x000186A0
	add r7, r0, #0
	add r6, r1, #0
	mov r4, #0
_02265FA2:
	add r0, r6, #0
	add r1, r5, #0
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #0x63
	lsl r2, r3, #4
	add r1, r7, r4
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add r0, r3, #0
	mul r0, r5
	sub r6, r6, r0
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r4, #1
	add r5, r0, #0
	cmp r4, #6
	blt _02265FA2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265FD0: .word 0x000186A0
	thumb_func_end ov117_02265F98

	thumb_func_start ov117_02265FD4
ov117_02265FD4: ; 0x02265FD4
	push {r4, r5, r6, r7}
	mov r1, #0x66
	mov r5, #0
	lsl r1, r1, #2
	add r3, r5, #0
	sub r2, r1, #6
_02265FE0:
	mov r6, #0x63
	add r4, r0, r5
	lsl r6, r6, #2
	ldrb r7, [r4, r6]
	sub r6, r6, #6
	strb r7, [r4, r6]
	mov r6, #5
	sub r6, r6, r5
	lsl r6, r6, #1
	strb r6, [r4, r1]
	add r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #6
	blt _02265FE0
	ldr r1, _02266004 ; =0x0000019F
	strb r3, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02266004: .word 0x0000019F
	thumb_func_end ov117_02265FD4

	thumb_func_start ov117_02266008
ov117_02266008: ; 0x02266008
	push {r4, r5}
	mov r1, #6
	lsl r1, r1, #6
	mov r5, #0
	add r2, r1, #6
_02266012:
	add r3, r0, r5
	ldrb r4, [r3, r1]
	ldrb r3, [r3, r2]
	cmp r4, r3
	beq _02266022
	mov r0, #0
	pop {r4, r5}
	bx lr
_02266022:
	add r5, r5, #1
	cmp r5, #6
	blt _02266012
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02266008

	thumb_func_start ov117_02266030
ov117_02266030: ; 0x02266030
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02266124 ; =0x0000019F
	mov r7, #5
	ldrb r0, [r6, r0]
	cmp r0, #6
	bls _02266042
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266042:
	mov r4, #0
	str r4, [sp]
_02266046:
	ldr r0, [sp]
	add r5, r6, r7
	mov ip, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226606A
	mov r0, #0x66
	lsl r0, r0, #2
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	mov r0, #0x66
	lsl r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #0
	str r0, [sp]
	b _02266116
_0226606A:
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bls _02266086
	mov r0, #6
	ldr r1, _0226612C ; =0x00000186
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r0, r1
	bne _02266086
	mov r0, #1
	str r0, [sp]
	b _02266116
_02266086:
	mov r0, #0
	mov r1, #6
	str r0, [sp]
	mov r0, #6
	lsl r1, r1, #6
	lsl r0, r0, #6
	ldrb r2, [r5, r1]
	ldrb r0, [r5, r0]
	add r2, #0x17
	strb r2, [r5, r1]
	add r1, r1, #6
	ldrb r3, [r5, r1]
	add r1, r3, #0
	add r1, #0xa0
	cmp r0, r3
	bgt _022660B0
	mov r2, #6
	lsl r2, r2, #6
	ldrb r2, [r5, r2]
	cmp r2, r3
	bhs _022660BE
_022660B0:
	cmp r0, r1
	bgt _02266104
	mov r0, #6
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, r1
	blt _02266104
_022660BE:
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bhs _022660D2
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02266128 ; =0x00000192
	strb r1, [r5, r0]
	b _02266104
_022660D2:
	cmp r7, #5
	beq _022660DC
	mov r0, ip
	cmp r0, #1
	bne _02266104
_022660DC:
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02266128 ; =0x00000192
	strb r1, [r5, r0]
	sub r0, #0xc
	ldrb r1, [r5, r0]
	mov r0, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
	add r0, #0x1f
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02266124 ; =0x0000019F
	strb r1, [r6, r0]
	ldrb r0, [r6, r0]
	cmp r0, #6
	blo _02266104
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266104:
	mov r0, #6
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	mov r1, #0xa0
	bl _s32_div_f
	mov r0, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
_02266116:
	add r4, r4, #1
	sub r7, r7, #1
	cmp r4, #6
	blt _02266046
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266124: .word 0x0000019F
_02266128: .word 0x00000192
_0226612C: .word 0x00000186
	thumb_func_end ov117_02266030

	thumb_func_start ov117_02266130
ov117_02266130: ; 0x02266130
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, _0226614C ; =0x02266E6C
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, pc}
	nop
_0226614C: .word 0x02266E6C
	thumb_func_end ov117_02266130

	thumb_func_start ov117_02266150
ov117_02266150: ; 0x02266150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r0, #0
	ldr r0, _022661FC ; =0x00003848
	add r6, r7, #0
	ldr r0, [r7, r0]
	add r4, r7, #0
	str r0, [sp, #0x2c]
	mov r0, #5
	str r0, [sp, #0x30]
	ldr r0, _02266200 ; =0x000016B0
	add r6, #0x64
	add r5, r7, r0
	add r4, #0xc8
	add r5, #0x64
_0226616E:
	ldr r0, _02266200 ; =0x000016B0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0226617A
	bl sub_02022974
_0226617A:
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	bl _u32_div_f
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r1, #4
	bl sub_0200B1EC
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	bl _u32_div_f
	str r0, [sp, #0x2c]
	ldr r0, _02266204 ; =0x000015AC
	add r1, sp, #0x3c
	ldr r0, [r4, r0]
	add r2, sp, #0x38
	bl sub_020129A4
	ldr r0, [sp, #0x34]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02266208 ; =0x000E0F00
	add r2, #0x90
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0226620C ; =0x00002713
	add r3, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x14]
	mov r0, #0xa8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x28]
	ldr r2, [r2, #0]
	bl ov117_02265DB8
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	sub r6, #0x14
	sub r4, #0x28
	sub r5, #0x14
	sub r0, r0, #1
	str r0, [sp, #0x30]
	bpl _0226616E
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022661FC: .word 0x00003848
_02266200: .word 0x000016B0
_02266204: .word 0x000015AC
_02266208: .word 0x000E0F00
_0226620C: .word 0x00002713
	thumb_func_end ov117_02266150

	thumb_func_start ov117_02266210
ov117_02266210: ; 0x02266210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02266234 ; =0x000016B0
	mov r6, #0
	add r4, r5, r0
	add r7, r0, #0
_0226621C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02266228
	add r0, r4, #0
	bl ov117_02265EB0
_02266228:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #6
	blt _0226621C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02266234: .word 0x000016B0
	thumb_func_end ov117_02266210

	thumb_func_start ov117_02266238
ov117_02266238: ; 0x02266238
	ldr r3, _02266240 ; =sub_0200D0F4
	add r0, r1, #0
	bx r3
	nop
_02266240: .word sub_0200D0F4
	thumb_func_end ov117_02266238

	thumb_func_start ov117_02266244
ov117_02266244: ; 0x02266244
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, _02266264 ; =0x02266EA0
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02266264: .word 0x02266EA0
	thumb_func_end ov117_02266244

	thumb_func_start ov117_02266268
ov117_02266268: ; 0x02266268
	ldr r3, _02266270 ; =sub_0200D0F4
	add r0, r1, #0
	bx r3
	nop
_02266270: .word sub_0200D0F4
	thumb_func_end ov117_02266268

	thumb_func_start ov117_02266274
ov117_02266274: ; 0x02266274
	push {r4, lr}
	add r4, r1, #0
	mov r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0xa
	bhi _0226633E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226628C: ; jump table
	.short _022662A2 - _0226628C - 2 ; case 0
	.short _022662C2 - _0226628C - 2 ; case 1
	.short _022662EA - _0226628C - 2 ; case 2
	.short _0226630C - _0226628C - 2 ; case 3
	.short _0226631E - _0226628C - 2 ; case 4
	.short _022662A2 - _0226628C - 2 ; case 5
	.short _022662C2 - _0226628C - 2 ; case 6
	.short _022662EA - _0226628C - 2 ; case 7
	.short _0226630C - _0226628C - 2 ; case 8
	.short _0226631E - _0226628C - 2 ; case 9
	.short _0226633A - _0226628C - 2 ; case 10
_022662A2:
	mov r3, #0x16
	ldr r0, [r4, #0]
	mov r1, #0x80
	mov r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_022662C2:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, #1
	strh r2, [r4, #6]
	ldrsh r1, [r4, r1]
	cmp r1, #0xf
	ble _0226633E
	mov r1, #0
	strh r1, [r4, #6]
	mov r1, #1
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	mov r1, #0x80
	str r1, [r4, #0xc]
	mov r1, #0x20
	str r1, [r4, #0x10]
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_022662EA:
	mov r1, #0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	mov r2, #6
	add r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	bl sub_0200D5DC
	ldr r0, [r4, #0x10]
	cmp r0, #0x60
	ble _0226633E
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_0226630C:
	mov r1, #0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0200D3F4
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
_0226631E:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0226633E
	mov r0, #0
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_0226633A:
	mov r0, #1
	pop {r4, pc}
_0226633E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02266274

	thumb_func_start ov117_02266344
ov117_02266344: ; 0x02266344
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
_0226634C:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	ldr r2, _02266380 ; =0x02266E38
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #0x1b
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r6, r6, #1
	stmia r5!, {r4}
	cmp r6, #2
	blt _0226634C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266380: .word 0x02266E38
	thumb_func_end ov117_02266344

	thumb_func_start ov117_02266384
ov117_02266384: ; 0x02266384
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_0226638A:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0226638A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266384

	thumb_func_start ov117_0226639C
ov117_0226639C: ; 0x0226639C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, [r1, #0]
	add r1, sp, #4
	mov r3, #0x16
	str r2, [sp]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	ldr r5, [sp]
	mov r4, #0
	add r6, sp, #4
	mov r7, #1
_022663BA:
	mov r2, #0
	ldrsh r2, [r6, r2]
	mov r1, #2
	mov r3, #0x16
	add r2, #0x1c
	lsl r2, r2, #0x10
	ldrsh r1, [r6, r1]
	ldr r0, [r5, #0]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r5, #0]
	mov r1, #0x1b
	bl sub_0200D364
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x14
	sub r2, r2, r1
	mov r0, #0x14
	ror r2, r0
	mov r0, #1
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #8]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x16
	sub r2, r2, r1
	mov r0, #0x16
	ror r2, r0
	mov r0, #1
	add r1, r1, r2
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r5, #0x10]
	add r0, r4, #0
	tst r0, r7
	beq _0226642A
	mov r0, #0
	ldr r1, [r5, #8]
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #8]
_0226642A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _022663BA
	ldr r0, [sp]
	mov r1, #0
	strb r1, [r0, #0x19]
	mov r1, #1
	strb r1, [r0, #0x18]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_0226639C

	thumb_func_start ov117_02266440
ov117_02266440: ; 0x02266440
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _02266494
	cmp r0, #1
	bne _02266494
	mov r4, #0
	add r5, r6, #0
_02266452:
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	neg r2, r2
	bl sub_0200D5E8
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02266452
	ldrb r0, [r6, #0x19]
	add r0, r0, #1
	strb r0, [r6, #0x19]
	ldrb r0, [r6, #0x19]
	cmp r0, #8
	bls _02266494
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_02266480:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_0200D3F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _02266480
	mov r0, #0
	strb r0, [r6, #0x18]
_02266494:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02266440

	thumb_func_start ov117_02266498
ov117_02266498: ; 0x02266498
	push {r3, r4, r5, lr}
	mov r1, #0xc
	mov r2, #0x6e
	add r5, r0, #0
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266498

	thumb_func_start ov117_022664BC
ov117_022664BC: ; 0x022664BC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, r0, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266542
	add r1, r0, #0
	add r1, #0x3e
	ldrb r1, [r1]
	cmp r1, #0
	beq _022664E4
	cmp r1, #1
	beq _02266506
	cmp r1, #2
	b _0226651E
_022664E4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022664F0
	bl sub_0200F2C0
_022664F0:
	mov r0, #0
	bl sub_0200F370
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _0226653E
_02266506:
	bl ov114_0225CA98
	cmp r0, #1
	bne _0226653E
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _0226653E
_0226651E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226652C
	bl ov114_0225C838
	mov r0, #0
	str r0, [r4, #4]
_0226652C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0226653A
	bl ov114_0225C904
	mov r0, #0
	str r0, [r4, #8]
_0226653A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226653E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02266542:
	ldr r1, [r5, #0]
	cmp r1, #5
	bhi _022665E0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266554: ; jump table
	.short _02266560 - _02266554 - 2 ; case 0
	.short _02266574 - _02266554 - 2 ; case 1
	.short _02266584 - _02266554 - 2 ; case 2
	.short _022665A8 - _02266554 - 2 ; case 3
	.short _022665BC - _02266554 - 2 ; case 4
	.short _022665E0 - _02266554 - 2 ; case 5
_02266560:
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0226656E
	mov r0, #1
	str r0, [r5, #0]
	b _022665E4
_0226656E:
	mov r0, #3
	str r0, [r5, #0]
	b _022665E4
_02266574:
	mov r1, #0x6e
	bl ov114_0225C82C
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022665E4
_02266584:
	ldr r0, [r4, #4]
	bl ov114_0225C8BC
	cmp r0, #1
	bne _022665E4
	ldr r0, [r4, #4]
	bl ov114_0225C8CC
	ldr r1, [r4, #0]
	str r0, [r1, #0x34]
	ldr r0, [r4, #4]
	bl ov114_0225C838
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r5, #0]
	b _022665E4
_022665A8:
	add r1, r0, #0
	add r1, #0x10
	mov r2, #0x6e
	bl ov114_0225C8F8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022665E4
_022665BC:
	ldr r0, [r4, #8]
	bl ov114_0225C9A0
	cmp r0, #1
	bne _022665E4
	ldr r0, [r4, #8]
	bl ov114_0225C9A4
	ldr r1, [r4, #0]
	str r0, [r1, #0x38]
	ldr r0, [r4, #8]
	bl ov114_0225C904
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #5
	str r0, [r5, #0]
	b _022665E4
_022665E0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022665E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_022664BC

	thumb_func_start ov117_022665E8
ov117_022665E8: ; 0x022665E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r0, r4, #0
	bl sub_02006830
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_022665E8

	.rodata

	.global Unk_ov117_02266B6C
Unk_ov117_02266B6C: ; 0x02266B6C
	.incbin "incbin/overlay117_rodata.bin", 0x274, 0x27A - 0x274

	.global Unk_ov117_02266B72
Unk_ov117_02266B72: ; 0x02266B72
	.incbin "incbin/overlay117_rodata.bin", 0x27A, 0x282 - 0x27A

	.global Unk_ov117_02266B7A
Unk_ov117_02266B7A: ; 0x02266B7A
	.incbin "incbin/overlay117_rodata.bin", 0x282, 0x28A - 0x282

	.global Unk_ov117_02266B82
Unk_ov117_02266B82: ; 0x02266B82
	.incbin "incbin/overlay117_rodata.bin", 0x28A, 0x292 - 0x28A

	.global Unk_ov117_02266B8A
Unk_ov117_02266B8A: ; 0x02266B8A
	.incbin "incbin/overlay117_rodata.bin", 0x292, 0x29C - 0x292

	.global Unk_ov117_02266B94
Unk_ov117_02266B94: ; 0x02266B94
	.incbin "incbin/overlay117_rodata.bin", 0x29C, 0x2AC - 0x29C

	.global Unk_ov117_02266BA4
Unk_ov117_02266BA4: ; 0x02266BA4
	.incbin "incbin/overlay117_rodata.bin", 0x2AC, 0x2BC - 0x2AC

	.global Unk_ov117_02266BB4
Unk_ov117_02266BB4: ; 0x02266BB4
	.incbin "incbin/overlay117_rodata.bin", 0x2BC, 0x2CC - 0x2BC

	.global Unk_ov117_02266BC4
Unk_ov117_02266BC4: ; 0x02266BC4
	.incbin "incbin/overlay117_rodata.bin", 0x2CC, 0x2E0 - 0x2CC

	.global Unk_ov117_02266BD8
Unk_ov117_02266BD8: ; 0x02266BD8
	.incbin "incbin/overlay117_rodata.bin", 0x2E0, 0x2F4 - 0x2E0

	.global Unk_ov117_02266BEC
Unk_ov117_02266BEC: ; 0x02266BEC
	.incbin "incbin/overlay117_rodata.bin", 0x2F4, 0x30C - 0x2F4

	.global Unk_ov117_02266C04
Unk_ov117_02266C04: ; 0x02266C04
	.incbin "incbin/overlay117_rodata.bin", 0x30C, 0x334 - 0x30C

	.global Unk_ov117_02266C2C
Unk_ov117_02266C2C: ; 0x02266C2C
	.incbin "incbin/overlay117_rodata.bin", 0x334, 0x35C - 0x334

	.global Unk_ov117_02266C54
Unk_ov117_02266C54: ; 0x02266C54
	.incbin "incbin/overlay117_rodata.bin", 0x35C, 0x384 - 0x35C

	.global Unk_ov117_02266C7C
Unk_ov117_02266C7C: ; 0x02266C7C
	.incbin "incbin/overlay117_rodata.bin", 0x384, 0x3AC - 0x384

	.global Unk_ov117_02266CA4
Unk_ov117_02266CA4: ; 0x02266CA4
	.incbin "incbin/overlay117_rodata.bin", 0x3AC, 0x3D4 - 0x3AC

	.global Unk_ov117_02266CCC
Unk_ov117_02266CCC: ; 0x02266CCC
	.incbin "incbin/overlay117_rodata.bin", 0x3D4, 0x408 - 0x3D4

	.global Unk_ov117_02266D00
Unk_ov117_02266D00: ; 0x02266D00
	.incbin "incbin/overlay117_rodata.bin", 0x408, 0x43C - 0x408

	.global Unk_ov117_02266D34
Unk_ov117_02266D34: ; 0x02266D34
	.incbin "incbin/overlay117_rodata.bin", 0x43C, 0x470 - 0x43C

	.global Unk_ov117_02266D68
Unk_ov117_02266D68: ; 0x02266D68
	.incbin "incbin/overlay117_rodata.bin", 0x470, 0x4A4 - 0x470

	.global Unk_ov117_02266D9C
Unk_ov117_02266D9C: ; 0x02266D9C
	.incbin "incbin/overlay117_rodata.bin", 0x4A4, 0x4D8 - 0x4A4

	.global Unk_ov117_02266DD0
Unk_ov117_02266DD0: ; 0x02266DD0
	.incbin "incbin/overlay117_rodata.bin", 0x4D8, 0x50C - 0x4D8

	.global Unk_ov117_02266E04
Unk_ov117_02266E04: ; 0x02266E04
	.incbin "incbin/overlay117_rodata.bin", 0x50C, 0x540 - 0x50C

	.global Unk_ov117_02266E38
Unk_ov117_02266E38: ; 0x02266E38
	.incbin "incbin/overlay117_rodata.bin", 0x540, 0x574 - 0x540

	.global Unk_ov117_02266E6C
Unk_ov117_02266E6C: ; 0x02266E6C
	.incbin "incbin/overlay117_rodata.bin", 0x574, 0x5A8 - 0x574

	.global Unk_ov117_02266EA0
Unk_ov117_02266EA0: ; 0x02266EA0
	.incbin "incbin/overlay117_rodata.bin", 0x5A8, 0x5DC - 0x5A8

	.global Unk_ov117_02266ED4
Unk_ov117_02266ED4: ; 0x02266ED4
	.incbin "incbin/overlay117_rodata.bin", 0x5DC, 0x618 - 0x5DC

	.global Unk_ov117_02266F10
Unk_ov117_02266F10: ; 0x02266F10
	.incbin "incbin/overlay117_rodata.bin", 0x618, 0x6E0 - 0x618

	.global Unk_ov117_02266FD8
Unk_ov117_02266FD8: ; 0x02266FD8
	.incbin "incbin/overlay117_rodata.bin", 0x6E0, 0x6EC - 0x6E0
