	.include "macros/function.inc"
	.include "include/ov17_02251D6C.inc"

	

	.text


	thumb_func_start ov17_02251D6C
ov17_02251D6C: ; 0x02251D6C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02251DA0 ; =0x02254D18
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0xb
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _02251DA4 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _02251DA8 ; =0x0000085C
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02251DA0: .word 0x02254D18
_02251DA4: .word 0x00000123
_02251DA8: .word 0x0000085C
	thumb_func_end ov17_02251D6C

	thumb_func_start ov17_02251DAC
ov17_02251DAC: ; 0x02251DAC
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251DAC

	thumb_func_start ov17_02251DC0
ov17_02251DC0: ; 0x02251DC0
	push {r3, lr}
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251DC0

	thumb_func_start ov17_02251DD0
ov17_02251DD0: ; 0x02251DD0
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02251DD0

	thumb_func_start ov17_02251DD4
ov17_02251DD4: ; 0x02251DD4
	push {r3, lr}
	mov r1, #0x9a
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251DD4

	thumb_func_start ov17_02251DE8
ov17_02251DE8: ; 0x02251DE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xe7
	lsl r1, r1, #2
	str r0, [sp]
	mov ip, r2
	add r0, r3, #0
	add r4, r6, r1
	mov r2, #0x4d
_02251DFA:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r4]
	add r4, r4, #2
	sub r2, r2, #1
	bne _02251DFA
	mov r1, #0
	ldr r7, _02251E50 ; =0x00000132
	add r2, r1, #0
_02251E0C:
	ldr r0, [r6, #0]
	mov r4, #0x4a
	add r0, r0, r2
	ldrh r5, [r3]
	lsl r4, r4, #2
	add r1, r1, #1
	strh r5, [r0, r4]
	ldrh r5, [r3, #2]
	add r4, r4, #2
	add r2, #0xc
	strh r5, [r0, r4]
	mov r4, #0x4b
	ldrh r5, [r3, #4]
	lsl r4, r4, #2
	strh r5, [r0, r4]
	ldrh r5, [r3, #6]
	add r4, r4, #2
	strh r5, [r0, r4]
	mov r4, #0x13
	ldrh r5, [r3, #8]
	lsl r4, r4, #4
	strh r5, [r0, r4]
	ldrh r4, [r3, #0xa]
	add r3, #0xc
	cmp r1, #4
	strh r4, [r0, r7]
	blt _02251E0C
	mov r2, #0
	ldr r0, [sp]
	mov r1, ip
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251E50: .word 0x00000132
	thumb_func_end ov17_02251DE8

	thumb_func_start ov17_02251E54
ov17_02251E54: ; 0x02251E54
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02251E54

	thumb_func_start ov17_02251E68
ov17_02251E68: ; 0x02251E68
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02251EA4 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02251EA8 ; =ov17_02251EAC
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02251EA4: .word 0x00007530
_02251EA8: .word ov17_02251EAC
	thumb_func_end ov17_02251E68

	thumb_func_start ov17_02251EAC
ov17_02251EAC: ; 0x02251EAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02251EBC
	b _02251FE2
_02251EBC:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02251ED0
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02251ED0:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02251EE4
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_02251EE4:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02251F5C
_02251EFC:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02252000 ; =0x02254CF8
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02251F56
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _02252004 ; =0x02254D00
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _02251F50
_02251F2C:
	mov r4, #0
	b _02251F44
_02251F30:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02251F44:
	cmp r4, #8
	blt _02251F30
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_02251F50:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02251F2C
_02251F56:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02251F5C:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _02251EFC
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _02251F9E
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _02251F9E
	ldr r0, _02252000 ; =0x02254CF8
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _02251F98
_02251F88:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02251F98:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02251F88
_02251F9E:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02251FFC
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02251FFC
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_02251FE2:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02251FFC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02252000: .word 0x02254CF8
_02252004: .word 0x02254D00
	thumb_func_end ov17_02251EAC

	thumb_func_start ov17_02252008
ov17_02252008: ; 0x02252008
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252008

	thumb_func_start ov17_0225201C
ov17_0225201C: ; 0x0225201C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02252058 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0225205C ; =ov17_02252060
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252058: .word 0x00007530
_0225205C: .word ov17_02252060
	thumb_func_end ov17_0225201C

	thumb_func_start ov17_02252060
ov17_02252060: ; 0x02252060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02252070
	b _022521BE
_02252070:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02252084
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02252084:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02252098
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_02252098:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x30]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _02252118
_022520B0:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	mov r0, #4
	sub r1, r0, r1
	ldr r0, _022521DC ; =0x02254CF8
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _02252112
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r1, [r0, #0x12]
	mov r0, #0xb
	mov r7, #0x3f
	sub r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _022521E0 ; =0x02254D00
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r7, r7, #0xa
	lsl r0, r0, #5
	add r6, r1, r0
	b _0225210C
_022520E8:
	mov r4, #0
	b _02252100
_022520EC:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_02252100:
	cmp r4, #8
	blt _022520EC
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0225210C:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _022520E8
_02252112:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_02252118:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022520B0
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0225217A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0225217A
	mov r0, #5
	sub r1, r0, r1
	ldr r0, _022521DC ; =0x02254CF8
	mov r7, #0x3f
	ldrsb r0, [r0, r1]
	lsl r7, r7, #0xa
	mov r6, #0x1d
	add r0, r0, #3
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #2
	str r0, [sp, #4]
	lsl r1, r1, #8
	b _02252174
_0225214E:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsl r4, r0, #1
	ldrh r0, [r3, r4]
	lsl r5, r5, #0x1d
	and r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsr r0, r0, #0x1f
	sub r5, r5, r0
	ror r5, r6
	add r0, r0, r5
	add r0, r0, r1
	orr r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02252174:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0225214E
_0225217A:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _022521D8
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _022521D8
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022521BE:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_022521D8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022521DC: .word 0x02254CF8
_022521E0: .word 0x02254D00
	thumb_func_end ov17_02252060

	thumb_func_start ov17_022521E4
ov17_022521E4: ; 0x022521E4
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_022521E4

	thumb_func_start ov17_022521F8
ov17_022521F8: ; 0x022521F8
	push {r4, lr}
	ldr r3, _0225220C ; =0x0000127C
	mov r4, #1
	strb r4, [r1, r3]
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r4, pc}
	; .align 2, 0
_0225220C: .word 0x0000127C
	thumb_func_end ov17_022521F8

	thumb_func_start ov17_02252210
ov17_02252210: ; 0x02252210
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252210

	thumb_func_start ov17_02252224
ov17_02252224: ; 0x02252224
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x18
	mov r1, #0x20
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r2, _02252284 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x18]
	ldrb r0, [r5, #0xe]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x1d]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x1c]
	ldrb r0, [r5, #0xf]
	strb r0, [r4, #0x1b]
	ldr r0, _02252288 ; =ov17_0225228C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252284: .word 0x00007530
_02252288: .word ov17_0225228C
	thumb_func_end ov17_02252224

	thumb_func_start ov17_0225228C
ov17_0225228C: ; 0x0225228C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022522A2
	cmp r0, #1
	beq _022522E0
	cmp r0, #2
	beq _022522F2
	b _0225232A
_022522A2:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _022522DA
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	bne _022522C6
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
_022522C6:
	ldrb r1, [r4, #0x1a]
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x14
	bl ov17_02250968
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522DA:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522E0:
	ldr r0, [r4, #0]
	bl ov17_0225099C
	cmp r0, #0
	bne _02252342
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522F2:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _02252306
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252306:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _02252342
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x34
	bl sub_0200E084
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x30]
	bl sub_0201C3C0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0225232A:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02252342:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0225228C

	thumb_func_start ov17_02252344
ov17_02252344: ; 0x02252344
	push {r3, lr}
	mov r1, #0x9a
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252344

	thumb_func_start ov17_02252358
ov17_02252358: ; 0x02252358
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xe7
	add r6, r1, #0
	lsl r0, r0, #2
	add r5, r2, #0
	add r2, r6, r0
	mov r1, #0x4d
_02252368:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02252368
	mov r0, #0x18
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r6, [r4, #0]
	ldrh r0, [r5]
	mov r2, #0xfa
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	lsl r2, r2, #2
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022523A8 ; =ov17_022523AC
	str r7, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022523A8: .word ov17_022523AC
	thumb_func_end ov17_02252358

	thumb_func_start ov17_022523AC
ov17_022523AC: ; 0x022523AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #6
	bls _022523BC
	b _022524E6
_022523BC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022523C8: ; jump table
	.short _022523D6 - _022523C8 - 2 ; case 0
	.short _022523EA - _022523C8 - 2 ; case 1
	.short _022523FE - _022523C8 - 2 ; case 2
	.short _02252428 - _022523C8 - 2 ; case 3
	.short _0225243A - _022523C8 - 2 ; case 4
	.short _022524A6 - _022523C8 - 2 ; case 5
	.short _022524CE - _022523C8 - 2 ; case 6
_022523D6:
	ldr r1, [r4, #0]
	ldr r0, _02252504 ; =0x00000848
	ldr r0, [r1, r0]
	bl ov17_0223F744
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022523EA:
	bl ov17_0223F760
	cmp r0, #1
	beq _022523F4
	b _022524FE
_022523F4:
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022523FE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _02252508 ; =0x0000046F
	mov r1, #0x1e
	bl sub_020055D0
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_02252428:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022524FE
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_0225243A:
	ldr r0, [r4, #0]
	bl ov17_02250A84
	ldr r0, [r4, #0]
	bl ov17_02250AD8
	ldr r0, [r4, #0]
	bl ov17_02250B00
	ldr r0, [r4, #0]
	bl ov17_02250D28
	ldr r0, [r4, #0]
	bl ov17_02250CEC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x34
	mov r2, #1
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #0xff
	add r0, #0x34
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	add r0, #0x34
	bl sub_0201A954
	mov r6, #0
	add r5, r6, #0
	mov r7, #6
_0225247E:
	ldr r0, [r4, #0]
	add r1, r7, #0
	add r0, r0, r5
	ldr r0, [r0, #0x18]
	mov r2, #1
	bl sub_02007DEC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0225247E
	ldr r1, [r4, #0]
	ldr r0, _0225250C ; =0x0000127F
	mov r2, #1
	strb r2, [r1, r0]
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524A6:
	bl sub_02005684
	cmp r0, #0
	bne _022524FE
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524CE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022524FE
	ldr r0, _02252510 ; =0x0000049D
	bl sub_0200549C
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524E6:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022524FE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02252504: .word 0x00000848
_02252508: .word 0x0000046F
_0225250C: .word 0x0000127F
_02252510: .word 0x0000049D
	thumb_func_end ov17_022523AC

	thumb_func_start ov17_02252514
ov17_02252514: ; 0x02252514
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252514

	thumb_func_start ov17_02252528
ov17_02252528: ; 0x02252528
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x18
	str r1, [sp]
	add r1, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	mov r2, #0
	str r0, [r4, #0]
	ldrh r0, [r6]
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0225255C:
	add r0, r5, r2
	ldrb r1, [r0, #3]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x11]
	cmp r2, #4
	blt _0225255C
	ldr r0, _02252578 ; =ov17_02252580
	ldr r2, _0225257C ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252578: .word ov17_02252580
_0225257C: .word 0x00007530
	thumb_func_end ov17_02252528

	thumb_func_start ov17_02252580
ov17_02252580: ; 0x02252580
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #4
	bhi _022525F2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252598: ; jump table
	.short _022525A2 - _02252598 - 2 ; case 0
	.short _022525A8 - _02252598 - 2 ; case 1
	.short _022525C6 - _02252598 - 2 ; case 2
	.short _022525E0 - _02252598 - 2 ; case 3
	.short _022525F2 - _02252598 - 2 ; case 4
_022525A2:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525A8:
	ldrb r1, [r4, #0x15]
	mov r0, #3
	sub r2, r0, r1
	add r1, r4, r2
	ldrb r1, [r1, #0x11]
	ldr r0, [r4, #0]
	bl ov17_0225131C
	ldrb r0, [r4, #0x15]
	add r0, r0, #1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525C6:
	mov r0, #0x16
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x16]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0225260A
	mov r0, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525E0:
	ldrb r1, [r4, #0x15]
	cmp r1, #4
	bhs _022525EC
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525EC:
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525F2:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0225260A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02252580

	thumb_func_start ov17_0225260C
ov17_0225260C: ; 0x0225260C
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0225260C

	thumb_func_start ov17_02252620
ov17_02252620: ; 0x02252620
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02252664 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x11]
	ldr r0, _02252668 ; =ov17_0225266C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252664: .word 0x00007530
_02252668: .word ov17_0225266C
	thumb_func_end ov17_02252620

	thumb_func_start ov17_0225266C
ov17_0225266C: ; 0x0225266C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #6
	bhi _02252774
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252686: ; jump table
	.short _02252694 - _02252686 - 2 ; case 0
	.short _022526BC - _02252686 - 2 ; case 1
	.short _022526CA - _02252686 - 2 ; case 2
	.short _022526E2 - _02252686 - 2 ; case 3
	.short _022526F0 - _02252686 - 2 ; case 4
	.short _02252746 - _02252686 - 2 ; case 5
	.short _02252758 - _02252686 - 2 ; case 6
_02252694:
	ldr r0, [r4, #0]
	bl ov17_02250FE4
	add r2, r4, #0
	ldr r0, [r4, #0]
	mov r1, #0
	add r2, #0x12
	bl ov17_02251598
	ldr r0, _02252790 ; =0x0000049E
	bl sub_0200549C
	ldr r0, _02252794 ; =0x000006E5
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526BC:
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _0225278C
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526CA:
	ldrb r1, [r4, #0x11]
	add r3, r4, #0
	ldr r0, [r4, #0]
	mov r2, #0
	add r3, #0x13
	bl ov17_02251718
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526E2:
	ldrb r1, [r4, #0x13]
	cmp r1, #1
	bne _0225278C
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526F0:
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0x10]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0x10]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x70
	bl sub_02074470
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0x7f
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldrb r6, [r4, #0x11]
	ldr r0, [r0, #0]
	add r2, #0xdd
	lsl r6, r6, #2
	add r0, r0, r6
	ldr r0, [r0, r2]
	lsl r2, r5, #0x10
	lsr r2, r2, #0x10
	bl sub_02077D3C
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252746:
	bl sub_0200598C
	cmp r0, #0
	bne _0225278C
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252758:
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	cmp r0, #0x3c
	ble _0225278C
	mov r0, #0
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252774:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0225278C:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02252790: .word 0x0000049E
_02252794: .word 0x000006E5
	thumb_func_end ov17_0225266C

	thumb_func_start ov17_02252798
ov17_02252798: ; 0x02252798
	push {r3, lr}
	mov r1, #0x12
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252798

	thumb_func_start ov17_022527AC
ov17_022527AC: ; 0x022527AC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0x18
	mov r1, #0x24
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	str r5, [r4, #0]
	ldrh r0, [r6]
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldrb r0, [r7, #7]
	strb r0, [r4, #0x11]
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _022527F2
	cmp r0, #1
	beq _02252808
	cmp r0, #2
	beq _0225281E
	b _02252834
_022527F2:
	ldr r0, _02252844 ; =0x0000041E
	mov r2, #0
	add r3, r4, #0
_022527F8:
	ldrsh r1, [r5, r0]
	add r2, r2, #1
	add r5, r5, #2
	strh r1, [r3, #0x14]
	add r3, r3, #2
	cmp r2, #4
	blt _022527F8
	b _02252838
_02252808:
	ldr r0, _02252848 ; =0x00000426
	mov r3, #0
	add r2, r4, #0
_0225280E:
	ldrsh r1, [r5, r0]
	add r3, r3, #1
	add r5, r5, #2
	strh r1, [r2, #0x14]
	add r2, r2, #2
	cmp r3, #4
	blt _0225280E
	b _02252838
_0225281E:
	ldr r0, _0225284C ; =0x0000042E
	mov r3, #0
	add r2, r4, #0
_02252824:
	ldrsh r1, [r5, r0]
	add r3, r3, #1
	add r5, r5, #2
	strh r1, [r2, #0x14]
	add r2, r2, #2
	cmp r3, #4
	blt _02252824
	b _02252838
_02252834:
	bl sub_02022974
_02252838:
	ldr r0, _02252850 ; =ov17_02252858
	ldr r2, _02252854 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02252844: .word 0x0000041E
_02252848: .word 0x00000426
_0225284C: .word 0x0000042E
_02252850: .word ov17_02252858
_02252854: .word 0x00007530
	thumb_func_end ov17_022527AC

	thumb_func_start ov17_02252858
ov17_02252858: ; 0x02252858
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bhi _02252948
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02252870: ; jump table
	.short _0225287C - _02252870 - 2 ; case 0
	.short _0225288A - _02252870 - 2 ; case 1
	.short _022528A4 - _02252870 - 2 ; case 2
	.short _022528C6 - _02252870 - 2 ; case 3
	.short _0225291C - _02252870 - 2 ; case 4
	.short _02252948 - _02252870 - 2 ; case 5
_0225287C:
	ldr r0, _02252964 ; =0x000006FA
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225288A:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x2d
	ble _02252960
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022528A4:
	mov r2, #0
	add r3, r4, #0
	mov r0, #0x14
_022528AA:
	ldrsh r1, [r3, r0]
	cmp r1, #0
	ble _022528B8
	ldr r0, _02252968 ; =0x000006FB
	bl sub_02005748
	b _022528C0
_022528B8:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blt _022528AA
_022528C0:
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022528C6:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #1
	blt _02252960
	mov r6, #0
	strh r6, [r4, #0x12]
	add r5, r6, #0
	mov r7, #0x14
_022528DC:
	ldr r0, [r4, #0]
	mov r2, #0x1c
	add r1, r0, r5
	mov r0, #0xf3
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	lsl r0, r1, #1
	add r0, r4, r0
	ldrsh r2, [r0, r2]
	add r2, r2, #1
	strh r2, [r0, #0x1c]
	mov r2, #0x1c
	ldrsh r3, [r0, r2]
	ldrsh r0, [r0, r7]
	cmp r3, r0
	bgt _02252908
	str r5, [sp]
	ldrb r2, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov17_022513F4
	b _0225290A
_02252908:
	add r6, r6, #1
_0225290A:
	add r5, r5, #1
	cmp r5, #4
	blt _022528DC
	cmp r6, #4
	blt _02252960
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225291C:
	mov r3, #0
	add r2, r4, #0
	mov r0, #0x14
_02252922:
	ldrsh r1, [r2, r0]
	cmp r1, #0
	ble _02252930
	ldr r0, _0225296C ; =0x000006F9
	bl sub_02005748
	b _02252938
_02252930:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, #4
	blt _02252922
_02252938:
	ldr r0, _02252964 ; =0x000006FA
	mov r1, #0
	bl sub_020057A4
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02252948:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02252960:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252964: .word 0x000006FA
_02252968: .word 0x000006FB
_0225296C: .word 0x000006F9
	thumb_func_end ov17_02252858

	thumb_func_start ov17_02252970
ov17_02252970: ; 0x02252970
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252970

	thumb_func_start ov17_02252984
ov17_02252984: ; 0x02252984
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x18
	mov r1, #0x14
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _022529C0 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022529C4 ; =ov17_022529C8
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022529C0: .word 0x00007530
_022529C4: .word ov17_022529C8
	thumb_func_end ov17_02252984

	thumb_func_start ov17_022529C8
ov17_022529C8: ; 0x022529C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022529DE
	cmp r0, #1
	beq _022529FE
	cmp r0, #2
	beq _02252A2E
	b _02252A48
_022529DE:
	mov r0, #3
	str r0, [sp]
	mov r0, #0x5a
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _02252A64 ; =0x0000049E
	mov r1, #0x5a
	bl sub_020055D0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022529FE:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _02252A60
	bl sub_02005684
	cmp r0, #0
	bne _02252A60
	ldr r0, [r4, #0]
	bl ov17_02251020
	ldr r0, _02252A68 ; =0x0400006C
	mov r1, #0x10
	bl GXx_SetMasterBrightness_
	ldr r0, _02252A6C ; =0x0400106C
	mov r1, #0x10
	bl GXx_SetMasterBrightness_
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252A2E:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x3c
	ble _02252A60
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252A48:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02252A60:
	pop {r3, r4, r5, pc}
	nop
_02252A64: .word 0x0000049E
_02252A68: .word 0x0400006C
_02252A6C: .word 0x0400106C
	thumb_func_end ov17_022529C8

	.rodata


	.global Unk_ov17_02254CF8
Unk_ov17_02254CF8: ; 0x02254CF8
	.incbin "incbin/overlay17_rodata.bin", 0x1F6C, 0x1F74 - 0x1F6C

	.global Unk_ov17_02254D00
Unk_ov17_02254D00: ; 0x02254D00
	.incbin "incbin/overlay17_rodata.bin", 0x1F74, 0x1F8C - 0x1F74

	.global Unk_ov17_02254D18
Unk_ov17_02254D18: ; 0x02254D18
	.incbin "incbin/overlay17_rodata.bin", 0x1F8C, 0x84

