	.include "macros/function.inc"
	.include "overlay006/ov6_02247D30.inc"

	

	.text


	thumb_func_start ov6_02247D30
ov6_02247D30: ; 0x02247D30
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	ldr r1, _02247DA4 ; =0x000001FB
	add r2, sp, #4
	add r3, sp, #0
	add r5, r0, #0
	bl sub_020552B4
	cmp r0, #0
	beq _02247D9C
	mov r0, #4
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	strb r6, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #0x14
	bl sub_020553A4
	ldr r1, [sp, #4]
	add r0, sp, #8
	bl ov5_021E1894
	add r3, sp, #8
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r5, #0x10]
	ldr r1, _02247DA8 ; =ov6_02247DAC
	bl sub_02050944
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02247D9C:
	bl GF_AssertFail
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247DA4: .word 0x000001FB
_02247DA8: .word ov6_02247DAC
	thumb_func_end ov6_02247D30

	thumb_func_start ov6_02247DAC
ov6_02247DAC: ; 0x02247DAC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	cmp r1, #5
	bls _02247DC8
	b _02247F46
_02247DC8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247DD4: ; jump table
	.short _02247DE0 - _02247DD4 - 2 ; case 0
	.short _02247E3E - _02247DD4 - 2 ; case 1
	.short _02247EBE - _02247DD4 - 2 ; case 2
	.short _02247EEA - _02247DD4 - 2 ; case 3
	.short _02247EFC - _02247DD4 - 2 ; case 4
	.short _02247F3C - _02247DD4 - 2 ; case 5
_02247DE0:
	ldr r0, _02247F4C ; =0x00000205
	ldr r1, [r6, #0x30]
	bl ov5_021EF9E8
	ldr r0, [r0, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02247E12
	add r2, r0, #0
	add r2, #8
	beq _02247E06
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02247E06
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02247E08
_02247E06:
	mov r1, #0
_02247E08:
	cmp r1, #0
	beq _02247E12
	ldr r1, [r1, #0]
	add r5, r0, r1
	b _02247E14
_02247E12:
	mov r5, #0
_02247E14:
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	mov r1, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, _02247F4C ; =0x00000205
	mov r2, #0x10
	bl ov5_021D41C8
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247E3E:
	add r0, sp, #0x18
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldrb r5, [r4, #0xd]
	mov r1, #0xc
	ldr r3, [r4, #0]
	add r2, r5, #0
	ldr r5, _02247F50 ; =0x022498E4
	mul r2, r1
	ldr r2, [r5, r2]
	add r2, r3, r2
	str r2, [sp, #0x24]
	ldrb r5, [r4, #0xd]
	ldr r3, [r4, #4]
	add r2, r5, #0
	ldr r5, _02247F54 ; =0x022498E8
	mul r2, r1
	ldr r2, [r5, r2]
	add r2, r3, r2
	str r2, [sp, #0x28]
	ldrb r3, [r4, #0xd]
	ldr r2, [r4, #8]
	add r5, r3, #0
	mul r5, r1
	ldr r1, _02247F58 ; =0x022498EC
	add r3, sp, #0x24
	ldr r1, [r1, r5]
	add r1, r2, r1
	str r1, [sp, #0x2c]
	str r0, [sp]
	ldr r0, [r6, #0x50]
	ldr r2, _02247F4C ; =0x00000205
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl ov5_021E19CC
	ldrb r1, [r4, #0xd]
	add r1, r4, r1
	strb r0, [r1, #0x10]
	ldrb r1, [r4, #0xd]
	add r0, r6, #0
	add r0, #0xa4
	add r1, r4, r1
	ldrb r1, [r1, #0x10]
	ldr r0, [r0, #0]
	bl ov5_021E18E0
	bl ov5_021E18BC
	add r3, r0, #0
	ldrb r2, [r4, #0xd]
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl ov5_021D4220
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EBE:
	ldrb r0, [r4, #0xe]
	cmp r0, #0xf
	bhs _02247ECA
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02247F46
_02247ECA:
	mov r0, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r1, r0
	bhs _02247EE2
	mov r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EE2:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EEA:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	mov r2, #0
	bl ov5_021D4250
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EFC:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl ov5_021D42F0
	cmp r0, #0
	beq _02247F46
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x10
	bl ov5_021D42B0
	ldrb r0, [r4, #0xc]
	mov r5, #0
	cmp r0, #0
	bls _02247F34
_02247F1A:
	add r0, r4, r5
	add r1, r6, #0
	add r1, #0xa4
	ldrb r0, [r0, #0x10]
	ldr r1, [r1, #0]
	bl ov5_021E1674
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	blo _02247F1A
_02247F34:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247F3C:
	bl sub_020181C4
	add sp, #0x30
	mov r0, #1
	pop {r4, r5, r6, pc}
_02247F46:
	mov r0, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247F4C: .word 0x00000205
_02247F50: .word 0x022498E4
_02247F54: .word 0x022498E8
_02247F58: .word 0x022498EC
	thumb_func_end ov6_02247DAC
	.data


	.global Unk_ov6_022498E4
Unk_ov6_022498E4: ; 0x022498E4
	.incbin "incbin/overlay6_data.bin", 0x84, 0x48

