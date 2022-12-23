	.include "macros/function.inc"
	.include "overlay012/ov12_02234E44.inc"

	

	.text


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
	bl G2x_SetBlendAlpha_
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

	.rodata


	.global Unk_ov12_0223A1D8
Unk_ov12_0223A1D8: ; 0x0223A1D8
	.incbin "incbin/overlay12_rodata.bin", 0x1C44, 0x40

