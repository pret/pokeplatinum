	.include "macros/function.inc"
	.include "overlay006/ov6_02246F00.inc"

	

	.text


	thumb_func_start ov6_02246F00
ov6_02246F00: ; 0x02246F00
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r2, #0
	ldr r1, _02246F38 ; =0x000001F2
	add r3, r2, #0
	add r5, r0, #0
	bl sub_020552B4
	cmp r0, #0
	beq _02246F32
	mov r0, #4
	add r1, r0, #0
	bl sub_02018184
	add r2, r0, #0
	strb r6, [r2]
	strb r4, [r2, #1]
	mov r0, #0
	strb r0, [r2, #2]
	ldr r0, [r5, #0x10]
	ldr r1, _02246F3C ; =ov6_02246F40
	bl sub_02050944
	pop {r4, r5, r6, pc}
_02246F32:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246F38: .word 0x000001F2
_02246F3C: .word ov6_02246F40
	thumb_func_end ov6_02246F00

	thumb_func_start ov6_02246F40
ov6_02246F40: ; 0x02246F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #4
	bls _02246F5C
	b _02247064
_02246F5C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246F68: ; jump table
	.short _02246F72 - _02246F68 - 2 ; case 0
	.short _02246FEE - _02246F68 - 2 ; case 1
	.short _0224701C - _02246F68 - 2 ; case 2
	.short _02247048 - _02246F68 - 2 ; case 3
	.short _0224705A - _02246F68 - 2 ; case 4
_02246F72:
	ldr r0, _0224706C ; =0x000001F2
	ldr r1, [r6, #0x30]
	bl ov5_021EF9E8
	ldr r0, [r0, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02246FA4
	add r2, r0, #0
	add r2, #8
	beq _02246F98
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02246F98
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02246F9A
_02246F98:
	mov r1, #0
_02246F9A:
	cmp r1, #0
	beq _02246FA4
	ldr r1, [r1, #0]
	add r7, r0, r1
	b _02246FA6
_02246FA4:
	mov r7, #0
_02246FA6:
	ldr r1, _0224706C ; =0x000001F2
	add r0, r6, #0
	add r2, sp, #0x18
	mov r3, #0
	bl sub_020552B4
	cmp r0, #0
	bne _02246FBA
	bl GF_AssertFail
_02246FBA:
	ldr r0, [sp, #0x18]
	bl ov5_021E18BC
	add r5, r0, #0
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	str r5, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	ldr r3, _0224706C ; =0x000001F2
	mov r2, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	bl ov5_021D41C8
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_02246FEE:
	ldrb r0, [r4, #1]
	mov r1, #1
	cmp r0, #0
	beq _02246FFC
	cmp r0, #1
	beq _02246FFC
	mov r1, #0
_02246FFC:
	cmp r1, #0
	bne _02247004
	bl GF_AssertFail
_02247004:
	ldrb r2, [r4, #1]
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D4250
	ldr r0, _02247070 ; =0x00000612
	bl sub_02005748
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_0224701C:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _02247064
	ldr r0, _02247070 ; =0x00000612
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02247074 ; =0x000005F1
	bl sub_02005748
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #1
	bl ov5_021D42B0
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_02247048:
	ldr r0, _02247074 ; =0x000005F1
	bl sub_020057D4
	cmp r0, #0
	bne _02247064
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_0224705A:
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02247064:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224706C: .word 0x000001F2
_02247070: .word 0x00000612
_02247074: .word 0x000005F1
	thumb_func_end ov6_02246F40