	.include "macros/function.inc"
	.include "include/ov6_02246C24.inc"

	

	.text


	thumb_func_start ov6_02246C24
ov6_02246C24: ; 0x02246C24
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	mov r1, #0x7b
	add r2, sp, #4
	add r3, sp, #0
	add r5, r0, #0
	bl sub_020552B4
	cmp r0, #0
	beq _02246C90
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
	ldr r1, _02246C98 ; =ov6_02246C9C
	bl sub_02050944
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02246C90:
	bl GF_AssertFail
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246C98: .word ov6_02246C9C
	thumb_func_end ov6_02246C24

	thumb_func_start ov6_02246C9C
ov6_02246C9C: ; 0x02246C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	cmp r1, #5
	bls _02246CB8
	b _02246EE2
_02246CB8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246CC4: ; jump table
	.short _02246CD0 - _02246CC4 - 2 ; case 0
	.short _02246DA4 - _02246CC4 - 2 ; case 1
	.short _02246E2C - _02246CC4 - 2 ; case 2
	.short _02246E58 - _02246CC4 - 2 ; case 3
	.short _02246E7A - _02246CC4 - 2 ; case 4
	.short _02246ED8 - _02246CC4 - 2 ; case 5
_02246CD0:
	ldr r0, _02246EE8 ; =0x00000205
	ldr r1, [r6, #0x30]
	bl ov5_021EF9E8
	add r5, r0, #0
	ldr r1, [r6, #0x30]
	mov r0, #0x7c
	bl ov5_021EF9E8
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02246D0E
	add r2, r0, #0
	add r2, #8
	beq _02246D02
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02246D02
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02246D04
_02246D02:
	mov r1, #0
_02246D04:
	cmp r1, #0
	beq _02246D0E
	ldr r1, [r1, #0]
	add r5, r0, r1
	b _02246D10
_02246D0E:
	mov r5, #0
_02246D10:
	ldr r0, [r7, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02246D3A
	add r2, r0, #0
	add r2, #8
	beq _02246D2E
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02246D2E
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02246D30
_02246D2E:
	mov r1, #0
_02246D30:
	cmp r1, #0
	beq _02246D3A
	ldr r1, [r1, #0]
	add r7, r0, r1
	b _02246D3C
_02246D3A:
	mov r7, #0
_02246D3C:
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
	ldr r3, _02246EE8 ; =0x00000205
	mov r2, #0x10
	bl ov5_021D41C8
	add r0, r6, #0
	mov r1, #0x7c
	add r2, sp, #0x18
	mov r3, #0
	bl sub_020552B4
	cmp r0, #0
	bne _02246D72
	bl GF_AssertFail
_02246D72:
	ldr r0, [sp, #0x18]
	bl ov5_021E18BC
	add r5, r0, #0
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	str r5, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x20
	mov r3, #0x7c
	bl ov5_021D41C8
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246DA4:
	add r1, sp, #0x1c
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldrb r2, [r4, #0xd]
	mov r1, #0xc
	ldr r0, [r4, #0]
	add r3, r2, #0
	ldr r2, _02246EEC ; =0x0224989C
	mul r3, r1
	ldr r2, [r2, r3]
	add r0, r0, r2
	str r0, [sp, #0x28]
	ldrb r2, [r4, #0xd]
	ldr r0, [r4, #4]
	add r3, r2, #0
	ldr r2, _02246EF0 ; =0x022498A0
	mul r3, r1
	ldr r2, [r2, r3]
	add r0, r0, r2
	str r0, [sp, #0x2c]
	ldrb r2, [r4, #0xd]
	ldr r0, [r4, #8]
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02246EF4 ; =0x022498A4
	ldr r1, [r1, r3]
	add r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, _02246EF8 ; =0x000005FE
	bl sub_02005748
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [r6, #0x50]
	ldr r2, _02246EE8 ; =0x00000205
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	add r3, sp, #0x28
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
	b _02246EE2
_02246E2C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0xf
	bhs _02246E38
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02246EE2
_02246E38:
	mov r0, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r1, r0
	bhs _02246E50
	mov r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E50:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E58:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	mov r2, #0
	bl ov5_021D4250
	ldr r0, [r6, #0x54]
	mov r1, #0x20
	mov r2, #0
	bl ov5_021D4250
	ldr r0, _02246EFC ; =0x0000048E
	bl sub_02006150
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E7A:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl ov5_021D42F0
	cmp r0, #0
	beq _02246EE2
	ldr r0, [r6, #0x54]
	mov r1, #0x20
	bl ov5_021D42F0
	cmp r0, #0
	beq _02246EE2
	bl sub_020061E4
	cmp r0, #0
	bne _02246EE2
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x20
	bl ov5_021D42B0
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x10
	bl ov5_021D42B0
	ldrb r0, [r4, #0xc]
	mov r5, #0
	cmp r0, #0
	bls _02246ED0
_02246EB6:
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
	blo _02246EB6
_02246ED0:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246ED8:
	bl sub_020181C4
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02246EE2:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246EE8: .word 0x00000205
_02246EEC: .word 0x0224989C
_02246EF0: .word 0x022498A0
_02246EF4: .word 0x022498A4
_02246EF8: .word 0x000005FE
_02246EFC: .word 0x0000048E
	thumb_func_end ov6_02246C9C
	.data


	.global Unk_ov6_0224989C
Unk_ov6_0224989C: ; 0x0224989C
	.incbin "incbin/overlay6_data.bin", 0x3C, 0x48

