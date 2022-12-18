	.include "macros/function.inc"
	.include "include/ov16_0226DE44.inc"

	

	.text


	thumb_func_start ov16_0226DE44
ov16_0226DE44: ; 0x0226DE44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x52
	add r1, r2, #0
	add r7, r3, #0
	bl sub_02006C24
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xa
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xc
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xd
	bl sub_0200CE54
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0226DE44

	thumb_func_start ov16_0226DEC4
ov16_0226DEC4: ; 0x0226DEC4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200D070
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D080
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D090
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200D0A0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DEC4

	thumb_func_start ov16_0226DEEC
ov16_0226DEEC: ; 0x0226DEEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r5, _0226DF5C ; =0x02270AD8
	add r6, r3, #0
	add r7, r0, #0
	str r1, [sp]
	add r4, sp, #4
	mov r3, #6
_0226DEFC:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0226DEFC
	ldr r0, [r5, #0]
	mov r1, #0x20
	str r0, [r4, #0]
	ldr r0, [sp, #0x50]
	str r6, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	add r0, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r1, [sp]
	add r0, r7, #0
	add r2, sp, #4
	bl sub_0200CE6C
	mov r1, #0
	str r0, [r4, #0]
	bl sub_0200D3F4
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0x14]
	ldr r0, _0226DF60 ; =ov16_0226DFD8
	ldr r2, _0226DF64 ; =0x000003E7
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226DF5C: .word 0x02270AD8
_0226DF60: .word ov16_0226DFD8
_0226DF64: .word 0x000003E7
	thumb_func_end ov16_0226DEEC

	thumb_func_start ov16_0226DF68
ov16_0226DF68: ; 0x0226DF68
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov16_0226DF68

	thumb_func_start ov16_0226DF80
ov16_0226DF80: ; 0x0226DF80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov16_0226E13C
	str r7, [r5, #8]
	str r4, [r5, #0xc]
	str r6, [r5, #0x14]
	lsl r1, r7, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0200D500
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DF80

	thumb_func_start ov16_0226DFB0
ov16_0226DFB0: ; 0x0226DFB0
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0x12
	bl ov16_0226DF80
	pop {r3, pc}
	thumb_func_end ov16_0226DFB0

	thumb_func_start ov16_0226DFBC
ov16_0226DFBC: ; 0x0226DFBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	bl ov16_0226E13C
	pop {r4, pc}
	thumb_func_end ov16_0226DFBC

	thumb_func_start ov16_0226DFD0
ov16_0226DFD0: ; 0x0226DFD0
	strh r1, [r0, #0x18]
	bx lr
	thumb_func_end ov16_0226DFD0

	thumb_func_start ov16_0226DFD4
ov16_0226DFD4: ; 0x0226DFD4
	ldrb r0, [r0, #0x1b]
	bx lr
	thumb_func_end ov16_0226DFD4

	thumb_func_start ov16_0226DFD8
ov16_0226DFD8: ; 0x0226DFD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	bne _0226DFE6
	mov r0, #0
	strb r0, [r4, #0x1b]
_0226DFE6:
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _0226DFFC
	sub r1, r1, #1
	strh r1, [r4, #0x18]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0226DFFC
	mov r0, #1
	strb r0, [r4, #0x1a]
_0226DFFC:
	ldr r0, [r4, #0]
	bl sub_0200D408
	cmp r0, #0
	bne _0226E008
	b _0226E134
_0226E008:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0226E08A
	mov r1, #0xfa
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	add r2, r2, r1
	add r0, r4, #0
	ldr r1, _0226E138 ; =0x00004650
	add r0, #0x10
	str r2, [r4, #0x10]
	cmp r2, r1
	blt _0226E036
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	ldrb r0, [r4, #0x1a]
	cmp r0, #1
	bne _0226E036
	mov r0, #1
	strb r0, [r4, #0x1c]
	mov r0, #0
	strb r0, [r4, #0x1a]
_0226E036:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0226E08A
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	mov r2, #0xe
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020E1F1C
	add r5, r1, #0
	ldr r1, [r4, #8]
	mov r2, #2
	add r6, r0, #0
	lsl r1, r1, #0x10
	mov r7, #0
	lsl r2, r2, #0xa
	asr r1, r1, #0x10
	add r2, r6, r2
	adc r5, r7
	lsl r5, r5, #0x14
	lsr r2, r2, #0xc
	orr r2, r5
	asr r5, r2, #0xb
	lsr r5, r5, #0x14
	add r5, r2, r5
	ldr r3, [r4, #0xc]
	asr r2, r5, #0xc
	sub r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, #0]
	ldr r3, [r4, #0x14]
	asr r2, r2, #0x10
	bl sub_0200D500
_0226E08A:
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _0226E12E
	ldrb r0, [r4, #0x1d]
	cmp r0, #3
	bhi _0226E12E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226E0A2: ; jump table
	.short _0226E0AA - _0226E0A2 - 2 ; case 0
	.short _0226E0C2 - _0226E0A2 - 2 ; case 1
	.short _0226E0E4 - _0226E0A2 - 2 ; case 2
	.short _0226E112 - _0226E0A2 - 2 ; case 3
_0226E0AA:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	cmp r0, #3
	bls _0226E12E
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _0226E12E
_0226E0C2:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #8]
	add r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0]
	ldr r3, [r4, #0x14]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D500
	mov r0, #1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _0226E12E
_0226E0E4:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bls _0226E12E
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #8]
	add r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0]
	ldr r3, [r4, #0x14]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D500
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _0226E12E
_0226E112:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bls _0226E12E
	add r0, r4, #0
	bl ov16_0226DFBC
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
_0226E12E:
	ldr r0, [r4, #0]
	bl sub_0200D330
_0226E134:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226E138: .word 0x00004650
	thumb_func_end ov16_0226DFD8

	thumb_func_start ov16_0226E13C
ov16_0226E13C: ; 0x0226E13C
	mov r1, #0
	str r1, [r0, #0x10]
	strb r1, [r0, #0x1c]
	strb r1, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	bx lr
	thumb_func_end ov16_0226E13C

	.rodata


	.global Unk_ov16_02270AD8
Unk_ov16_02270AD8: ; 0x02270AD8
	.incbin "incbin/overlay16_rodata.bin", 0x287C, 0x34

