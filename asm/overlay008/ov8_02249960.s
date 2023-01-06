	.include "macros/function.inc"
	.include "overlay008/ov8_02249960.inc"

	

	.text


	thumb_func_start ov8_02249960
ov8_02249960: ; 0x02249960
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end ov8_02249960

	thumb_func_start ov8_0224996C
ov8_0224996C: ; 0x0224996C
	mov r2, #1
	ldr r3, [r1, #0]
	lsl r2, r0
	add r0, r3, #0
	eor r0, r2
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov8_0224996C

	thumb_func_start ov8_0224997C
ov8_0224997C: ; 0x0224997C
	push {r4, r5, lr}
	sub sp, #0x2c
	ldr r3, _02249A30 ; =0x0224C758
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x1c
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r2, #0
	bl sub_020550F4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0x10
	mov r2, #3
	add r3, sp, #0x1c
	bl sub_02055208
	cmp r0, #0
	beq _02249A2C
	add r0, r4, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #1
	bl sub_02027F6C
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, #0xef
	bne _02249A00
	ldr r0, [r4, #0x10]
	ldr r1, _02249A34 ; =ov8_02249CD8
	bl sub_02050944
	mov r0, #2
	add sp, #0x2c
	strb r0, [r5]
	pop {r4, r5, pc}
_02249A00:
	cmp r0, #0xf0
	bne _02249A14
	ldr r0, [r4, #0x10]
	ldr r1, _02249A38 ; =ov8_02249B74
	bl sub_02050944
	mov r0, #1
	add sp, #0x2c
	strb r0, [r5]
	pop {r4, r5, pc}
_02249A14:
	cmp r0, #0xf1
	bne _02249A28
	ldr r0, [r4, #0x10]
	ldr r1, _02249A3C ; =ov8_02249A94
	bl sub_02050944
	mov r0, #0
	add sp, #0x2c
	strb r0, [r5]
	pop {r4, r5, pc}
_02249A28:
	bl GF_AssertFail
_02249A2C:
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
_02249A30: .word Unk_ov8_0224C758
_02249A34: .word ov8_02249CD8
_02249A38: .word ov8_02249B74
_02249A3C: .word ov8_02249A94
	thumb_func_end ov8_0224997C

	thumb_func_start ov8_02249A40
ov8_02249A40: ; 0x02249A40
	push {r4, r5, r6, lr}
	add r5, r3, #0
	ldr r4, [sp, #0x10]
	bl sub_02054F94
	add r6, r0, #0
	bl sub_0205DBFC
	cmp r0, #0
	beq _02249A5E
	cmp r5, #0
	beq _02249A8E
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02249A5E:
	add r0, r6, #0
	bl sub_0205DC08
	cmp r0, #0
	beq _02249A76
	mov r0, #2
	lsl r0, r0, #0x10
	cmp r5, r0
	beq _02249A8E
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02249A76:
	add r0, r6, #0
	bl sub_0205DC14
	cmp r0, #0
	beq _02249A8E
	mov r0, #1
	lsl r0, r0, #0x12
	cmp r5, r0
	beq _02249A8E
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_02249A8E:
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_02249A40

	thumb_func_start ov8_02249A94
ov8_02249A94: ; 0x02249A94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #3
	bhi _02249B6A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249ABA: ; jump table
	.short _02249AC2 - _02249ABA - 2 ; case 0
	.short _02249AD2 - _02249ABA - 2 ; case 1
	.short _02249B44 - _02249ABA - 2 ; case 2
	.short _02249B60 - _02249ABA - 2 ; case 3
_02249AC2:
	ldr r1, [r4, #0x50]
	mov r0, #0
	bl ov8_02249F14
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02249B6A
_02249AD2:
	ldr r1, [r4, #0x50]
	mov r0, #1
	bl ov5_021D3DA0
	add r6, r0, #0
	ldr r1, [r4, #0x50]
	mov r0, #2
	bl ov5_021D3DA0
	add r7, r0, #0
	ldr r1, [r4, #0x50]
	mov r0, #3
	bl ov5_021D3DA0
	str r0, [sp]
	add r0, r6, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249B6A
	add r0, r7, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249B6A
	ldr r0, [sp]
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249B6A
	add r4, #0xa4
	ldr r0, [r4, #0]
	mov r1, #0xf2
	bl ov5_021E18CC
	add r4, r0, #0
	add r0, sp, #4
	add r1, r4, #0
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	cmp r0, #0
	bgt _02249B3A
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_02249B3A:
	add r0, r4, #0
	add r1, sp, #4
	bl ov5_021E18A4
	b _02249B6A
_02249B44:
	add r4, #0xa0
	mov r0, #0
	ldr r2, [r4, #0]
	add r1, r0, #0
	bl ov5_021EF388
	ldr r0, _02249B70 ; =0x0000065A
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02249B6A
_02249B60:
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B6A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249B70: .word 0x0000065A
	thumb_func_end ov8_02249A94

	thumb_func_start ov8_02249B74
ov8_02249B74: ; 0x02249B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #5
	bls _02249B90
	b _02249CCC
_02249B90:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249B9C: ; jump table
	.short _02249BA8 - _02249B9C - 2 ; case 0
	.short _02249BB8 - _02249B9C - 2 ; case 1
	.short _02249C38 - _02249B9C - 2 ; case 2
	.short _02249C6E - _02249B9C - 2 ; case 3
	.short _02249CA4 - _02249B9C - 2 ; case 4
	.short _02249CC2 - _02249B9C - 2 ; case 5
_02249BA8:
	ldr r1, [r4, #0x50]
	mov r0, #1
	bl ov8_02249F14
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02249CCC
_02249BB8:
	ldr r1, [r4, #0x50]
	mov r0, #1
	bl ov5_021D3DA0
	add r6, r0, #0
	ldr r1, [r4, #0x50]
	mov r0, #2
	bl ov5_021D3DA0
	add r7, r0, #0
	ldr r1, [r4, #0x50]
	mov r0, #3
	bl ov5_021D3DA0
	str r0, [sp]
	add r0, r6, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249CCC
	add r0, r7, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249CCC
	ldr r0, [sp]
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249CCC
	add r4, #0xa4
	ldr r0, [r4, #0]
	mov r1, #0xf2
	bl ov5_021E18CC
	add r1, r0, #0
	add r0, sp, #0x1c
	bl ov5_021E1894
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _02249C12
	mov r0, #2
	str r0, [r5, #0]
	b _02249CCC
_02249C12:
	mov r0, #2
	lsl r0, r0, #0x10
	cmp r1, r0
	bne _02249C26
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249C26:
	lsl r0, r0, #1
	cmp r1, r0
	bne _02249C32
	mov r0, #3
	str r0, [r5, #0]
	b _02249CCC
_02249C32:
	bl GF_AssertFail
	b _02249CCC
_02249C38:
	add r4, #0xa4
	ldr r0, [r4, #0]
	mov r1, #0xf2
	bl ov5_021E18CC
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [sp, #0x14]
	cmp r2, r1
	blt _02249C64
	lsl r0, r0, #5
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [r5, #0]
_02249C64:
	add r0, r4, #0
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _02249CCC
_02249C6E:
	add r4, #0xa4
	ldr r0, [r4, #0]
	mov r1, #0xf2
	bl ov5_021E18CC
	add r4, r0, #0
	add r0, sp, #4
	add r1, r4, #0
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r2, r1, r0
	lsl r1, r0, #5
	str r2, [sp, #8]
	cmp r2, r1
	bgt _02249C9A
	lsl r0, r0, #5
	str r0, [sp, #8]
	mov r0, #4
	str r0, [r5, #0]
_02249C9A:
	add r0, r4, #0
	add r1, sp, #4
	bl ov5_021E18A4
	b _02249CCC
_02249CA4:
	add r4, #0xa0
	mov r1, #2
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #0x10
	bl ov5_021EF388
	ldr r0, _02249CD4 ; =0x0000065A
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02249CCC
_02249CC2:
	bl sub_020181C4
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249CCC:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249CD4: .word 0x0000065A
	thumb_func_end ov8_02249B74

	thumb_func_start ov8_02249CD8
ov8_02249CD8: ; 0x02249CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #3
	bhi _02249DB2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249CFE: ; jump table
	.short _02249D06 - _02249CFE - 2 ; case 0
	.short _02249D16 - _02249CFE - 2 ; case 1
	.short _02249D8A - _02249CFE - 2 ; case 2
	.short _02249DA8 - _02249CFE - 2 ; case 3
_02249D06:
	ldr r1, [r4, #0x50]
	mov r0, #2
	bl ov8_02249F14
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02249DB2
_02249D16:
	ldr r1, [r4, #0x50]
	mov r0, #1
	bl ov5_021D3DA0
	add r6, r0, #0
	ldr r1, [r4, #0x50]
	mov r0, #2
	bl ov5_021D3DA0
	add r7, r0, #0
	ldr r1, [r4, #0x50]
	mov r0, #3
	bl ov5_021D3DA0
	str r0, [sp]
	add r0, r6, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249DB2
	add r0, r7, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249DB2
	ldr r0, [sp]
	bl ov5_021D3F70
	cmp r0, #0
	beq _02249DB2
	add r4, #0xa4
	ldr r0, [r4, #0]
	mov r1, #0xf2
	bl ov5_021E18CC
	add r4, r0, #0
	add r0, sp, #4
	add r1, r4, #0
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #6
	str r2, [sp, #8]
	cmp r2, r1
	blt _02249D80
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_02249D80:
	add r0, r4, #0
	add r1, sp, #4
	bl ov5_021E18A4
	b _02249DB2
_02249D8A:
	add r4, #0xa0
	mov r1, #1
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #0x12
	bl ov5_021EF388
	ldr r0, _02249DB8 ; =0x0000065A
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02249DB2
_02249DA8:
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249DB2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249DB8: .word 0x0000065A
	thumb_func_end ov8_02249CD8

	thumb_func_start ov8_02249DBC
ov8_02249DBC: ; 0x02249DBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #1
	bl sub_02027F6C
	add r2, sp, #0x20
	ldr r6, _02249F10 ; =0x0224C728
	add r5, r0, #0
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x50]
	mov r2, #0xf2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x30]
	bl ov5_021E19CC
	mov r0, #0x26
	str r0, [sp]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp, #4]
	add r1, #0xa0
	ldr r1, [r1, #0]
	mov r2, #2
	str r1, [sp, #8]
	mov r1, #1
	mov r3, #0x19
	bl ov5_021EF2CC
	ldrb r0, [r5]
	cmp r0, #0
	beq _02249E20
	cmp r0, #1
	beq _02249E2A
	cmp r0, #2
	beq _02249E36
	b _02249E42
_02249E20:
	mov r5, #0
	mov r6, #1
	add r7, r6, #0
	str r5, [sp, #0xc]
	b _02249E4E
_02249E2A:
	mov r5, #2
	mov r6, #1
	lsl r5, r5, #0x10
	mov r7, #0
	str r6, [sp, #0xc]
	b _02249E4E
_02249E36:
	mov r5, #1
	mov r7, #1
	lsl r5, r5, #0x12
	mov r6, #0
	str r7, [sp, #0xc]
	b _02249E4E
_02249E42:
	bl GF_AssertFail
	mov r5, #0
	mov r6, #1
	add r7, r6, #0
	str r5, [sp, #0xc]
_02249E4E:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0xf2
	bl ov5_021E18CC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, sp, #0x14
	bl ov5_021E1894
	ldr r0, [sp, #0x10]
	add r1, sp, #0x14
	str r5, [sp, #0x18]
	bl ov5_021E18A4
	add r2, r4, #0
	add r2, #0xa0
	ldr r2, [r2, #0]
	mov r0, #0
	add r1, r5, #0
	bl ov5_021EF388
	ldr r2, [r4, #0x50]
	mov r0, #0xef
	mov r1, #0
	bl ov5_021D3DE4
	add r5, r0, #0
	mov r1, #1
	bl ov5_021D3F0C
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021D3F04
	add r0, r5, #0
	mov r1, #1
	bl ov5_021D3F08
	add r0, r5, #0
	mov r1, #1
	bl ov5_021D3E40
	add r0, r5, #0
	bl ov5_021D3E9C
	ldr r2, [r4, #0x50]
	mov r0, #0xf0
	mov r1, #0
	bl ov5_021D3DE4
	add r5, r0, #0
	mov r1, #2
	bl ov5_021D3F0C
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021D3F04
	add r0, r5, #0
	mov r1, #1
	bl ov5_021D3F08
	add r0, r5, #0
	mov r1, #1
	bl ov5_021D3E40
	add r0, r5, #0
	bl ov5_021D3E9C
	ldr r2, [r4, #0x50]
	mov r0, #0xf1
	mov r1, #0
	bl ov5_021D3DE4
	mov r1, #3
	add r4, r0, #0
	bl ov5_021D3F0C
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov5_021D3F04
	add r0, r4, #0
	mov r1, #1
	bl ov5_021D3F08
	add r0, r4, #0
	mov r1, #1
	bl ov5_021D3E40
	add r0, r4, #0
	bl ov5_021D3E9C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02249F10: .word Unk_ov8_0224C728
	thumb_func_end ov8_02249DBC

	thumb_func_start ov8_02249F14
ov8_02249F14: ; 0x02249F14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	cmp r0, #2
	bne _02249F24
	mov r6, #1
	mov r4, #2
	mov r5, #3
	b _02249F40
_02249F24:
	cmp r0, #1
	bne _02249F30
	mov r6, #2
	mov r4, #1
	mov r5, #3
	b _02249F40
_02249F30:
	cmp r0, #0
	bne _02249F3C
	mov r6, #3
	mov r4, #1
	mov r5, #2
	b _02249F40
_02249F3C:
	bl GF_AssertFail
_02249F40:
	add r0, r6, #0
	add r1, r7, #0
	bl ov5_021D3DA0
	add r6, r0, #0
	mov r1, #0
	bl ov5_021D3F04
	add r0, r6, #0
	bl ov5_021D3E7C
	add r0, r6, #0
	mov r1, #0
	bl ov5_021D3E40
	add r0, r6, #0
	bl ov5_021D3E44
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021D3DA0
	add r4, r0, #0
	mov r1, #1
	bl ov5_021D3F04
	add r0, r4, #0
	bl ov5_021D3E7C
	add r0, r4, #0
	mov r1, #0
	bl ov5_021D3E40
	add r0, r4, #0
	bl ov5_021D3E44
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021D3DA0
	add r4, r0, #0
	mov r1, #1
	bl ov5_021D3F04
	add r0, r4, #0
	bl ov5_021D3E7C
	add r0, r4, #0
	mov r1, #0
	bl ov5_021D3E40
	add r0, r4, #0
	bl ov5_021D3E44
	ldr r0, _02249FB4 ; =0x0000065A
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249FB4: .word 0x0000065A
	thumb_func_end ov8_02249F14

	thumb_func_start ov8_02249FB8
ov8_02249FB8: ; 0x02249FB8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	add r6, r0, #0
	mov r0, #0
	str r0, [r6, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #2
	bl sub_02027F6C
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #0
	bl sub_0205EAEC
	ldr r0, [sp, #4]
	cmp r0, #0
	ldr r0, [r5, #0x10]
	bne _02249FFE
	ldr r1, _0224A010 ; =ov8_0224A018
	add r2, r6, #0
	bl sub_02050944
	mov r0, #1
	add sp, #0xc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02249FFE:
	ldr r1, _0224A014 ; =ov8_0224A0E8
	add r2, r6, #0
	bl sub_02050944
	mov r0, #0
	strb r0, [r4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A010: .word ov8_0224A018
_0224A014: .word ov8_0224A0E8
	thumb_func_end ov8_02249FB8

	thumb_func_start ov8_0224A018
ov8_0224A018: ; 0x0224A018
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _0224A0D6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A03E: ; jump table
	.short _0224A046 - _0224A03E - 2 ; case 0
	.short _0224A05C - _0224A03E - 2 ; case 1
	.short _0224A0A6 - _0224A03E - 2 ; case 2
	.short _0224A0CC - _0224A03E - 2 ; case 3
_0224A046:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, _0224A0DC ; =0x00000611
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A0D6
_0224A05C:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _0224A0E0 ; =0x00000102
	bl ov5_021E18CC
	add r6, r0, #0
	add r0, sp, #0
	add r1, r6, #0
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [sp, #4]
	cmp r1, r0
	blt _0224A094
	str r0, [sp, #4]
	ldr r0, _0224A0DC ; =0x00000611
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224A094:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #4]
	bl sub_0205ED0C
	add r0, r6, #0
	add r1, sp, #0
	bl ov5_021E18A4
	b _0224A0D6
_0224A0A6:
	add r2, r5, #0
	add r2, #0xa0
	mov r1, #0xa
	ldr r2, [r2, #0]
	mov r0, #0
	lsl r1, r1, #0x10
	bl ov5_021EF388
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _0224A0E4 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A0D6
_0224A0CC:
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224A0D6:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224A0DC: .word 0x00000611
_0224A0E0: .word 0x00000102
_0224A0E4: .word 0x0000061A
	thumb_func_end ov8_0224A018

	thumb_func_start ov8_0224A0E8
ov8_0224A0E8: ; 0x0224A0E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _0224A1A0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A10E: ; jump table
	.short _0224A116 - _0224A10E - 2 ; case 0
	.short _0224A12C - _0224A10E - 2 ; case 1
	.short _0224A172 - _0224A10E - 2 ; case 2
	.short _0224A196 - _0224A10E - 2 ; case 3
_0224A116:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, _0224A1A8 ; =0x00000611
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A1A0
_0224A12C:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _0224A1AC ; =0x00000102
	bl ov5_021E18CC
	add r6, r0, #0
	add r0, sp, #0
	add r1, r6, #0
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #4]
	cmp r0, #0
	bgt _0224A160
	mov r1, #0
	ldr r0, _0224A1A8 ; =0x00000611
	str r1, [sp, #4]
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224A160:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #4]
	bl sub_0205ED0C
	add r0, r6, #0
	add r1, sp, #0
	bl ov5_021E18A4
	b _0224A1A0
_0224A172:
	add r2, r5, #0
	add r2, #0xa0
	mov r0, #0
	ldr r2, [r2, #0]
	add r1, r0, #0
	bl ov5_021EF388
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _0224A1B0 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A1A0
_0224A196:
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224A1A0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A1A8: .word 0x00000611
_0224A1AC: .word 0x00000102
_0224A1B0: .word 0x0000061A
	thumb_func_end ov8_0224A0E8

	thumb_func_start ov8_0224A1B4
ov8_0224A1B4: ; 0x0224A1B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #0
_0224A1BE:
	add r1, r5, r4
	ldrb r0, [r1, #0x10]
	cmp r6, r0
	bne _0224A1DA
	ldr r0, [r5, #0]
	add r1, #0x28
	add r0, #0xa4
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	add r1, r7, #0
	bl ov5_021E18B4
_0224A1DA:
	add r4, r4, #1
	cmp r4, #0x18
	blt _0224A1BE
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov8_0224A1B4

	thumb_func_start ov8_0224A1E4
ov8_0224A1E4: ; 0x0224A1E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, sp, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EAEC
	ldr r1, [sp, #4]
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	lsl r0, r0, #0x18
	ldr r1, [sp]
	lsr r2, r0, #0x18
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	lsl r0, r0, #0x18
	ldr r1, [sp, #8]
	lsr r3, r0, #0x18
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r0, #0
_0224A220:
	lsl r1, r0, #1
	add r1, r0, r1
	add r6, r4, r1
	add r6, #0x41
	ldrb r6, [r6]
	cmp r2, r6
	bne _0224A242
	add r6, r4, r1
	add r6, #0x40
	ldrb r6, [r6]
	cmp r3, r6
	bne _0224A242
	add r1, r4, r1
	add r1, #0x42
	ldrb r1, [r1]
	cmp r5, r1
	beq _0224A24E
_0224A242:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x18
	blo _0224A220
	mov r0, #0x18
_0224A24E:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov8_0224A1E4

	thumb_func_start ov8_0224A254
ov8_0224A254: ; 0x0224A254
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #3
	bl sub_02027F6C
	str r0, [sp, #4]
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	mov r1, #0
	str r1, [r0, #0]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe8
	strb r4, [r0]
	lsl r0, r4, #2
	ldr r1, [sp, #4]
	add r0, r5, r0
	add r0, #0x88
	ldr r7, [r0, #0]
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov8_02249960
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov8_0224996C
	ldr r0, _0224A408 ; =0x00000127
	cmp r7, r0
	bne _0224A308
	cmp r6, #0
	beq _0224A2C2
	add r0, r5, #0
	mov r1, #5
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r2, _0224A40C ; =0x0224CB6C
	lsl r1, r4, #4
	ldrb r0, [r2, r1]
	add r3, r2, r1
	lsl r6, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r6, r6, r0
	b _0224A2D8
_0224A2C2:
	add r0, r5, #0
	ldr r2, _0224A410 ; =0x0224CB6F
	lsl r1, r4, #4
	mov r6, #4
	add r0, #0xf0
	str r6, [r0, #0]
	ldrb r0, [r2, r1]
	lsl r6, r6, #0xd
	add r3, r2, r1
	lsl r0, r0, #0x10
	add r6, r0, r6
_0224A2D8:
	add r0, r5, #0
	add r0, #0xec
	str r6, [r0, #0]
	lsl r0, r4, #1
	add r0, r4, r0
	ldrb r2, [r2, r1]
	add r1, r5, r0
	add r1, #0x40
	strb r2, [r1]
	add r1, r5, r0
	add r0, r5, r0
	ldrb r2, [r3, #1]
	add r1, #0x41
	add r0, #0x42
	strb r2, [r1]
	ldrb r1, [r3, #2]
	ldr r2, [sp]
	strb r1, [r0]
	ldr r0, [r5, #0]
	ldr r1, _0224A414 ; =ov8_0224A620
	bl sub_02050904
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224A308:
	sub r0, r0, #1
	cmp r7, r0
	bne _0224A37E
	cmp r6, #0
	beq _0224A334
	add r1, r5, #0
	mov r0, #2
	add r1, #0xf0
	str r0, [r1, #0]
	ldr r1, _0224A418 ; =0x0224CB6E
	lsl r2, r4, #4
	ldrb r1, [r1, r2]
	lsl r0, r0, #0xe
	ldr r3, _0224A40C ; =0x0224CB6C
	lsl r1, r1, #0x10
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0, #0]
	lsl r0, r4, #1
	add r1, r4, r0
	b _0224A356
_0224A334:
	add r0, r5, #0
	mov r1, #3
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r0, _0224A41C ; =0x0224CB71
	lsl r2, r4, #4
	ldrb r0, [r0, r2]
	ldr r3, _0224A410 ; =0x0224CB6F
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0, #0]
	lsl r0, r4, #1
	add r1, r4, r0
_0224A356:
	add r0, r3, r2
	ldrb r3, [r3, r2]
	add r2, r5, r1
	add r2, #0x40
	strb r3, [r2]
	add r2, r5, r1
	ldrb r3, [r0, #1]
	add r2, #0x41
	strb r3, [r2]
	ldrb r2, [r0, #2]
	add r0, r5, r1
	add r0, #0x42
	strb r2, [r0]
	ldr r0, [r5, #0]
	ldr r1, _0224A420 ; =ov8_0224A770
	ldr r2, [sp]
	bl sub_02050904
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224A37E:
	cmp r6, #0
	beq _0224A3C2
	add r0, r5, #0
	mov r1, #1
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r0, _0224A424 ; =0x0224CB6D
	lsl r2, r4, #4
	ldrb r0, [r0, r2]
	ldr r3, _0224A40C ; =0x0224CB6C
	lsl r1, r0, #0x10
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0, #0]
	lsl r0, r4, #1
	add r1, r4, r0
	ldrb r6, [r3, r2]
	add r0, r3, r2
	add r3, r5, r1
	add r3, #0x40
	strb r6, [r3]
	add r3, r5, r1
	ldrb r6, [r0, #1]
	add r3, #0x41
	strb r6, [r3]
	ldrb r3, [r0, #2]
	add r0, r5, r1
	add r0, #0x42
	strb r3, [r0]
	ldr r0, _0224A428 ; =0x0224CB72
	ldrb r1, [r0, r2]
	add r0, r5, r4
	strb r1, [r0, #0x10]
	b _0224A3F8
_0224A3C2:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r0, _0224A42C ; =0x0224CB70
	lsl r2, r4, #4
	ldrb r0, [r0, r2]
	ldr r3, _0224A410 ; =0x0224CB6F
	lsl r1, r0, #0x10
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0, #0]
	lsl r0, r4, #1
	add r1, r4, r0
	add r0, r3, r2
	ldrb r3, [r3, r2]
	add r2, r5, r1
	add r2, #0x40
	strb r3, [r2]
	add r2, r5, r1
	ldrb r3, [r0, #1]
	add r2, #0x41
	strb r3, [r2]
	ldrb r2, [r0, #2]
	add r0, r5, r1
	add r0, #0x42
	strb r2, [r0]
_0224A3F8:
	ldr r0, [r5, #0]
	ldr r1, _0224A430 ; =ov8_0224A4FC
	ldr r2, [sp]
	bl sub_02050904
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A408: .word 0x00000127
_0224A40C: .word 0x0224CB6C
_0224A410: .word 0x0224CB6F
_0224A414: .word ov8_0224A620
_0224A418: .word 0x0224CB6E
_0224A41C: .word 0x0224CB71
_0224A420: .word ov8_0224A770
_0224A424: .word 0x0224CB6D
_0224A428: .word 0x0224CB72
_0224A42C: .word 0x0224CB70
_0224A430: .word ov8_0224A4FC
	thumb_func_end ov8_0224A254

	thumb_func_start ov8_0224A434
ov8_0224A434: ; 0x0224A434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r1, [r5, #4]
	add r0, #0xa4
	lsl r1, r1, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	bl ov5_021E18C4
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	add r0, #0xa4
	lsl r1, r1, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	bl ov5_021E18C4
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0xc]
	add r0, #0xa4
	lsl r1, r1, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	bl ov5_021E18C4
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r4, r0
	blt _0224A48C
	ldr r0, [sp]
	mov r1, #0
	bl ov5_021E18B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov8_0224A1B4
	b _0224A49E
_0224A48C:
	ldr r0, [sp]
	mov r1, #1
	bl ov5_021E18B4
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov8_0224A1B4
_0224A49E:
	mov r0, #0xb
	lsl r0, r0, #0x10
	cmp r4, r0
	blt _0224A4BA
	add r0, r7, #0
	mov r1, #0
	bl ov5_021E18B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ov8_0224A1B4
	b _0224A4CC
_0224A4BA:
	add r0, r7, #0
	mov r1, #1
	bl ov5_021E18B4
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov8_0224A1B4
_0224A4CC:
	mov r0, #0x15
	lsl r0, r0, #0x10
	cmp r4, r0
	blt _0224A4E8
	add r0, r6, #0
	mov r1, #0
	bl ov5_021E18B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #3
	bl ov8_0224A1B4
	pop {r3, r4, r5, r6, r7, pc}
_0224A4E8:
	add r0, r6, #0
	mov r1, #1
	bl ov5_021E18B4
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	bl ov8_0224A1B4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224A434

	thumb_func_start ov8_0224A4FC
ov8_0224A4FC: ; 0x0224A4FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	ldr r1, [r6, #4]
	add r4, r0, #0
	ldr r5, [r1, #0x24]
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _0224A60C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A526: ; jump table
	.short _0224A52E - _0224A526 - 2 ; case 0
	.short _0224A544 - _0224A526 - 2 ; case 1
	.short _0224A5EC - _0224A526 - 2 ; case 2
	.short _0224A602 - _0224A526 - 2 ; case 3
_0224A52E:
	ldr r0, [r6, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, _0224A614 ; =0x00000611
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A60C
_0224A544:
	add r1, r5, #0
	add r1, #0xe8
	ldrb r1, [r1]
	add r0, r6, #0
	add r0, #0xa4
	add r1, r5, r1
	add r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	add r7, r0, #0
	add r0, sp, #0
	add r1, r7, #0
	bl ov5_021E1894
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224A5A4
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	add r1, r1, r0
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r1, r0
	blt _0224A5D2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	ldr r1, _0224A618 ; =0x0224CB73
	lsl r2, r0, #4
	ldrb r1, [r1, r2]
	add r0, r5, r0
	strb r1, [r0, #0x10]
	ldr r0, _0224A614 ; =0x00000611
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A5D2
_0224A5A4:
	cmp r0, #1
	bne _0224A5CE
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r1, r0
	bgt _0224A5D2
	str r0, [sp, #4]
	ldr r0, _0224A614 ; =0x00000611
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A5D2
_0224A5CE:
	bl GF_AssertFail
_0224A5D2:
	ldr r0, [r6, #0x3c]
	ldr r1, [sp, #4]
	bl sub_0205ED0C
	add r0, r7, #0
	add r1, sp, #0
	bl ov5_021E18A4
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov8_0224A434
	b _0224A60C
_0224A5EC:
	ldr r0, [r6, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _0224A61C ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A60C
_0224A602:
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A60C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224A614: .word 0x00000611
_0224A618: .word 0x0224CB73
_0224A61C: .word 0x0000061A
	thumb_func_end ov8_0224A4FC

	thumb_func_start ov8_0224A620
ov8_0224A620: ; 0x0224A620
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r7, #4]
	ldr r5, [r0, #0x24]
	ldr r0, [r7, #0x3c]
	bl sub_0205EB3C
	ldr r1, [r4, #0]
	add r6, r0, #0
	cmp r1, #4
	bls _0224A648
	b _0224A760
_0224A648:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A654: ; jump table
	.short _0224A65E - _0224A654 - 2 ; case 0
	.short _0224A67C - _0224A654 - 2 ; case 1
	.short _0224A720 - _0224A654 - 2 ; case 2
	.short _0224A736 - _0224A654 - 2 ; case 3
	.short _0224A754 - _0224A654 - 2 ; case 4
_0224A65E:
	bl sub_020655F4
	cmp r0, #1
	bne _0224A760
	add r0, r6, #0
	mov r1, #0x49
	bl sub_02065638
	ldr r0, _0224A768 ; =0x00000611
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A760
_0224A67C:
	add r1, r5, #0
	add r1, #0xe8
	ldrb r1, [r1]
	add r0, r7, #0
	add r0, #0xa4
	add r1, r5, r1
	add r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	str r0, [sp]
	ldr r1, [sp]
	add r0, sp, #0x10
	bl ov5_021E1894
	ldr r0, [r7, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	ldr r0, [sp, #4]
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r1, #0xf0
	ldr r1, [r1, #0]
	cmp r1, #4
	bne _0224A6E0
	add r5, #0xec
	ldr r1, [r5, #0]
	cmp r0, r1
	blt _0224A6CC
	ldr r0, _0224A768 ; =0x00000611
	str r1, [sp, #0x10]
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A716
_0224A6CC:
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0224A716
	add r0, r6, #0
	mov r1, #0x17
	bl sub_02065638
	b _0224A716
_0224A6E0:
	cmp r1, #5
	bne _0224A712
	add r5, #0xec
	ldr r1, [r5, #0]
	cmp r0, r1
	bgt _0224A6FE
	ldr r0, _0224A768 ; =0x00000611
	str r1, [sp, #0x10]
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A716
_0224A6FE:
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0224A716
	add r0, r6, #0
	mov r1, #0x16
	bl sub_02065638
	b _0224A716
_0224A712:
	bl GF_AssertFail
_0224A716:
	ldr r0, [sp]
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _0224A760
_0224A720:
	bl sub_020655F4
	cmp r0, #1
	bne _0224A736
	add r0, r6, #0
	mov r1, #0x4a
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224A736:
	add r0, r6, #0
	bl sub_02065684
	cmp r0, #1
	bne _0224A760
	add r0, r6, #0
	bl sub_020656AC
	ldr r0, _0224A76C ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A760
_0224A754:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A760:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224A768: .word 0x00000611
_0224A76C: .word 0x0000061A
	thumb_func_end ov8_0224A620

	thumb_func_start ov8_0224A770
ov8_0224A770: ; 0x0224A770
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r6, #4]
	ldr r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldr r1, [r4, #0]
	add r7, r0, #0
	cmp r1, #4
	bhi _0224A7B4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A7A2: ; jump table
	.short _0224A7AC - _0224A7A2 - 2 ; case 0
	.short _0224A7CC - _0224A7A2 - 2 ; case 1
	.short _0224A870 - _0224A7A2 - 2 ; case 2
	.short _0224A888 - _0224A7A2 - 2 ; case 3
	.short _0224A8AC - _0224A7A2 - 2 ; case 4
_0224A7AC:
	bl sub_020655F4
	cmp r0, #1
	beq _0224A7B6
_0224A7B4:
	b _0224A8B8
_0224A7B6:
	add r0, r7, #0
	mov r1, #0x49
	bl sub_02065638
	ldr r0, _0224A8C0 ; =0x00000611
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A8B8
_0224A7CC:
	add r1, r5, #0
	add r1, #0xe8
	ldrb r1, [r1]
	add r0, r6, #0
	add r0, #0xa4
	add r1, r5, r1
	add r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	str r0, [sp]
	ldr r1, [sp]
	add r0, sp, #0x10
	bl ov5_021E1894
	ldr r0, [r6, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #0x18]
	add r1, #0xf0
	ldr r1, [r1, #0]
	cmp r1, #3
	bne _0224A830
	add r5, #0xec
	ldr r1, [r5, #0]
	cmp r0, r1
	blt _0224A81C
	ldr r0, _0224A8C0 ; =0x00000611
	str r1, [sp, #0x18]
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A866
_0224A81C:
	add r0, r7, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0224A866
	add r0, r7, #0
	mov r1, #0x15
	bl sub_02065638
	b _0224A866
_0224A830:
	cmp r1, #2
	bne _0224A862
	add r5, #0xec
	ldr r1, [r5, #0]
	cmp r0, r1
	bgt _0224A84E
	ldr r0, _0224A8C0 ; =0x00000611
	str r1, [sp, #0x18]
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A866
_0224A84E:
	add r0, r7, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0224A866
	add r0, r7, #0
	mov r1, #0x14
	bl sub_02065638
	b _0224A866
_0224A862:
	bl GF_AssertFail
_0224A866:
	ldr r0, [sp]
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _0224A8B8
_0224A870:
	bl sub_020655F4
	cmp r0, #1
	bne _0224A8B8
	add r0, r7, #0
	mov r1, #0x4a
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A8B8
_0224A888:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _0224A8B8
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, _0224A8C4 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A8B8
_0224A8AC:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A8B8:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224A8C0: .word 0x00000611
_0224A8C4: .word 0x0000061A
	thumb_func_end ov8_0224A770

	thumb_func_start ov8_0224A8C8
ov8_0224A8C8: ; 0x0224A8C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r6, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #3
	bl sub_02027F6C
	str r0, [sp, #0x10]
	mov r0, #4
	mov r1, #0xf4
	bl sub_02018144
	ldr r1, [r6, #4]
	add r2, sp, #0x50
	str r0, [r1, #0x24]
	ldr r0, [r6, #4]
	ldr r4, _0224AA90 ; =0x0224C710
	ldr r0, [r0, #0x24]
	add r3, r2, #0
	str r0, [sp, #0x14]
	str r6, [r0, #0]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	mov r2, #0x4b
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	lsl r2, r2, #2
	bl ov5_021E19CC
	ldr r1, [sp, #0x14]
	ldr r2, _0224AA94 ; =0x0000012D
	str r0, [r1, #4]
	mov r0, #5
	lsl r0, r0, #0x12
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x50
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl ov5_021E19CC
	ldr r1, [sp, #0x14]
	ldr r2, _0224AA98 ; =0x0000012E
	str r0, [r1, #8]
	mov r0, #0x1e
	lsl r0, r0, #0x10
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x50
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl ov5_021E19CC
	ldr r1, [sp, #0x14]
	ldr r4, _0224AA9C ; =0x0224CB68
	str r0, [r1, #0xc]
	add r0, r1, #0
	mov r7, #0
	add r5, r1, #0
	str r0, [sp, #0xc]
_0224A970:
	ldr r1, [sp, #0x10]
	lsl r0, r7, #0x18
	ldr r1, [r1, #0]
	lsr r0, r0, #0x18
	bl ov8_02249960
	cmp r0, #0
	beq _0224A9B4
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #7]
	lsl r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x10
	str r0, [sp, #0x48]
	ldrb r0, [r4, #9]
	lsl r0, r0, #0x10
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r0, #0x40
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r4, #8]
	add r0, #0x41
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r4, #9]
	add r0, #0x42
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, #0xb]
	add r0, r0, r7
	str r0, [sp, #8]
	b _0224A9E6
_0224A9B4:
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #4]
	lsl r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrb r0, [r4, #5]
	lsl r0, r0, #0x10
	str r0, [sp, #0x48]
	ldrb r0, [r4, #6]
	lsl r0, r0, #0x10
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r0, #0x40
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r4, #5]
	add r0, #0x41
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r4, #6]
	add r0, #0x42
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, #0xa]
	add r0, r0, r7
	str r0, [sp, #8]
_0224A9E6:
	strb r1, [r0, #0x10]
	mov r0, #2
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #2
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x4c]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x44
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	ldr r2, [r4, #0]
	bl ov5_021E19CC
	ldr r1, [sp, #8]
	add r7, r7, #1
	add r1, #0x28
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #0]
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [sp, #0xc]
	add r4, #0x10
	add r0, r0, #4
	add r5, r5, #3
	str r0, [sp, #0xc]
	cmp r7, #0x18
	blt _0224A970
	ldr r0, [r6, #0x3c]
	add r1, sp, #0x38
	bl sub_0205EAEC
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x3c]
	bl ov8_0224A434
	mov r0, #0x19
	ldr r1, _0224AAA0 ; =0x006A4000
	ldr r2, [r6, #0x24]
	lsl r0, r0, #0xe
	bl sub_020206BC
	mov r1, #6
	str r1, [sp]
	ldr r0, _0224AAA4 ; =0x000076A0
	sub r1, r1, #7
	str r0, [sp, #4]
	ldr r0, [r6, #0x48]
	mov r2, #1
	mov r3, #0
	bl ov5_021D57FC
	mov r1, #0
	mov r2, #0
	ldr r0, [r6, #0x48]
	mvn r1, r1
	add r3, r2, #0
	bl ov5_021D5834
	mov r0, #0
	add r1, r0, #0
	add r2, sp, #0x18
_0224AA78:
	add r0, r0, #1
	strb r1, [r2]
	add r1, r1, #2
	add r2, r2, #1
	cmp r0, #0x20
	blt _0224AA78
	ldr r0, [r6, #0x48]
	add r1, sp, #0x18
	bl ov5_021D585C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AA90: .word Unk_ov8_0224C710
_0224AA94: .word 0x0000012D
_0224AA98: .word 0x0000012E
_0224AA9C: .word Unk_ov8_0224CB68
_0224AAA0: .word 0x006A4000
_0224AAA4: .word 0x000076A0
	thumb_func_end ov8_0224A8C8

	thumb_func_start ov8_0224AAA8
ov8_0224AAA8: ; 0x0224AAA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #3
	beq _0224AAC0
	mov r0, #0
	pop {r4, pc}
_0224AAC0:
	ldr r0, [r4, #4]
	ldr r4, [r0, #0x24]
	cmp r4, #0
	bne _0224AACC
	mov r0, #0
	pop {r4, pc}
_0224AACC:
	add r0, r4, #0
	bl ov8_0224A1E4
	add r1, r0, #0
	cmp r1, #0x18
	beq _0224AAE2
	add r0, r4, #0
	bl ov8_0224A254
	mov r0, #1
	pop {r4, pc}
_0224AAE2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224AAA8

	thumb_func_start ov8_0224AAE8
ov8_0224AAE8: ; 0x0224AAE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224AAE8

	thumb_func_start ov8_0224AAFC
ov8_0224AAFC: ; 0x0224AAFC
	push {r4, r5, r6, lr}
	asr r0, r3, #0xf
	lsr r0, r0, #0x10
	add r0, r3, r0
	add r4, r1, #0
	asr r0, r0, #0x10
	mov r1, #0xa
	add r6, r2, #0
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bls _0224AB1C
	bl GF_AssertFail
_0224AB1C:
	ldr r1, _0224AB3C ; =0x0224D035
	lsl r0, r5, #0xa
	add r5, r1, r0
	lsl r0, r6, #5
	add r4, r4, r0
	mov r0, #1
	lsl r0, r0, #0xa
	cmp r4, r0
	blt _0224AB32
	bl GF_AssertFail
_0224AB32:
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0x10]
	str r1, [r0, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224AB3C: .word Unk_ov8_0224D035
	thumb_func_end ov8_0224AAFC

	thumb_func_start ov8_0224AB40
ov8_0224AB40: ; 0x0224AB40
	push {r3, lr}
	cmp r0, #0
	beq _0224AB50
	cmp r0, #1
	beq _0224AB54
	cmp r0, #2
	beq _0224AB58
	b _0224AB5C
_0224AB50:
	mov r0, #3
	pop {r3, pc}
_0224AB54:
	mov r0, #6
	pop {r3, pc}
_0224AB58:
	mov r0, #0xd
	pop {r3, pc}
_0224AB5C:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov8_0224AB40

	thumb_func_start ov8_0224AB64
ov8_0224AB64: ; 0x0224AB64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #7]
	add r6, r1, #0
	mov r7, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _0224AB7A
	cmp r0, #1
	beq _0224AB7E
	b _0224AB82
_0224AB7A:
	add r7, r2, #4
	b _0224AB86
_0224AB7E:
	add r7, r2, #0
	b _0224AB86
_0224AB82:
	bl GF_AssertFail
_0224AB86:
	ldrb r0, [r5, #7]
	mov r4, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #3
	bls _0224AB96
	bl GF_AssertFail
_0224AB96:
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0xe
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r6, #3
	bls _0224ABAC
	bl GF_AssertFail
_0224ABAC:
	lsl r0, r6, #0x1e
	asr r1, r0, #0x10
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224ABC0
	add r0, r4, r1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0224ABD0
_0224ABC0:
	cmp r0, #1
	bne _0224ABCC
	sub r0, r4, r1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0224ABD0
_0224ABCC:
	bl GF_AssertFail
_0224ABD0:
	str r4, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224AB64

	thumb_func_start ov8_0224ABD4
ov8_0224ABD4: ; 0x0224ABD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #5
	bl sub_02027F6C
	str r0, [sp, #0xc]
	mov r0, #4
	mov r1, #0x1c
	bl sub_02018144
	ldr r1, [r5, #4]
	str r0, [r1, #0x24]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x10]
	strb r1, [r0, #0x11]
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x10]
	strb r1, [r0, #0x13]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov8_0224AB40
	mov r6, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0224ACA2
	add r7, r6, #0
_0224AC22:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	lsl r1, r0, #2
	ldr r0, _0224ACA8 ; =0x0224C740
	ldr r0, [r0, r1]
	add r4, r0, r7
	ldrb r0, [r4, #4]
	lsl r2, r0, #0x10
	str r2, [sp, #0x20]
	ldrb r0, [r4, #5]
	lsl r1, r0, #0x10
	str r1, [sp, #0x24]
	ldrb r0, [r4, #6]
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #0x20]
	mov r0, #2
	lsl r0, r0, #0xe
	str r3, [sp, #0x28]
	add r0, r3, r0
	str r0, [sp, #0x28]
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224AC62
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x24]
_0224AC62:
	mov r0, #0
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, sp, #0x14
	bl ov8_0224AB64
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [r5, #0x50]
	add r3, sp, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x30]
	ldr r2, [r4, #0]
	bl ov5_021E19CC
	ldr r1, [sp, #0x10]
	add r7, #8
	add r1, r1, r6
	strb r0, [r1, #4]
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0224AC22
_0224ACA2:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0224ACA8: .word Unk_ov8_0224C740
	thumb_func_end ov8_0224ABD4

	thumb_func_start ov8_0224ACAC
ov8_0224ACAC: ; 0x0224ACAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224ACAC

	thumb_func_start ov8_0224ACC0
ov8_0224ACC0: ; 0x0224ACC0
	push {r4, r5, r6, r7}
	ldr r0, [r0, #4]
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, [r0, #0x24]
	mov r4, #0x14
	ldrb r0, [r2, #0x11]
	ldrb r2, [r2, #0x13]
	add r5, r0, #0
	mul r5, r4
	ldr r4, _0224AD28 ; =0x0224E740
	lsl r2, r2, #2
	ldr r6, [r4, r5]
	ldr r4, _0224AD2C ; =0x0224E744
	add r4, r4, r5
	ldr r2, [r2, r4]
	mov r5, #0
	mov ip, r2
	lsl r2, r0, #2
	ldr r0, _0224AD30 ; =0x0224C74C
	cmp r6, #0
	ldr r7, [r0, r2]
	ble _0224AD22
_0224ACEE:
	mov r0, ip
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldrb r2, [r7, r0]
	add r4, r7, r0
	cmp r2, r3
	bgt _0224AD1C
	ldrb r0, [r4, #2]
	add r0, r2, r0
	cmp r3, r0
	bge _0224AD1C
	ldrb r0, [r4, #1]
	cmp r0, r1
	bgt _0224AD1C
	ldrb r2, [r4, #3]
	add r0, r0, r2
	cmp r1, r0
	bge _0224AD1C
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r0, [r1, #0]
	pop {r4, r5, r6, r7}
	bx lr
_0224AD1C:
	add r5, r5, #1
	cmp r5, r6
	blt _0224ACEE
_0224AD22:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0224AD28: .word Unk_ov8_0224E740
_0224AD2C: .word 0x0224E744
_0224AD30: .word Unk_ov8_0224C74C
	thumb_func_end ov8_0224ACC0

	thumb_func_start ov8_0224AD34
ov8_0224AD34: ; 0x0224AD34
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #5
	bl sub_02027F6C
	add r6, r0, #0
	ldr r0, [r7, #4]
	mov r1, #4
	ldr r4, [r0, #0x24]
	mov r0, #0xb
	bl sub_02018184
	mov r1, #0
	str r1, [r0, #0]
	strh r5, [r4, #0x14]
	strh r1, [r4, #0x16]
	str r0, [sp]
	ldr r0, [r6, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov8_0224AB40
	strb r0, [r4, #0x12]
	ldr r0, [r6, #0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r5, #0
	bne _0224AD90
	mov r1, #1
	lsl r1, r1, #0xe
	add r0, r0, #1
	strh r1, [r4, #0x18]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	b _0224ADCA
_0224AD90:
	cmp r5, #1
	bne _0224ADA6
	mov r1, #1
	sub r0, r0, #1
	lsl r1, r1, #0xe
	lsl r0, r0, #0x18
	strh r1, [r4, #0x18]
	asr r0, r0, #0x18
	bpl _0224ADCA
	mov r0, #3
	b _0224ADCA
_0224ADA6:
	cmp r5, #2
	bne _0224ADC4
	mov r1, #2
	lsl r1, r1, #0xe
	add r0, r0, #2
	strh r1, [r4, #0x18]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	b _0224ADCA
_0224ADC4:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_0224ADCA:
	str r0, [r6, #0]
	strb r0, [r4, #0x13]
	ldr r0, _0224ADE0 ; =0x0000063F
	bl sub_02005748
	ldr r0, [r7, #0x10]
	ldr r1, _0224ADE4 ; =ov8_0224ADE8
	ldr r2, [sp]
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224ADE0: .word 0x0000063F
_0224ADE4: .word ov8_0224ADE8
	thumb_func_end ov8_0224AD34

	thumb_func_start ov8_0224ADE8
ov8_0224ADE8: ; 0x0224ADE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_02050A60
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02050A64
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r1, #4]
	ldr r4, [r1, #0x24]
	add r1, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224AE10
	cmp r1, #1
	beq _0224AEC8
	b _0224AED2
_0224AE10:
	ldrh r2, [r4, #0x18]
	mov r0, #1
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #0xa
	str r0, [sp]
	add r0, r1, r0
	cmp r0, r2
	ble _0224AE28
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
_0224AE28:
	ldrh r1, [r4, #0x16]
	ldr r0, [sp]
	add r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	bne _0224AE40
	ldr r0, [sp]
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
_0224AE40:
	ldrb r0, [r4, #0x12]
	mov r5, #0
	cmp r0, #0
	bls _0224AEB4
	ldr r0, [sp]
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
_0224AE52:
	ldr r0, [sp, #8]
	add r1, r4, r5
	add r0, #0xa4
	ldrb r1, [r1, #4]
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	bl ov5_021E1890
	ldrb r1, [r4, #0x11]
	lsl r2, r1, #2
	ldr r1, _0224AED8 ; =0x0224C740
	ldr r2, [r1, r2]
	lsl r1, r5, #3
	add r1, r2, r1
	ldrb r2, [r1, #7]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _0224AE7E
	ldr r7, [sp, #0xc]
	b _0224AE80
_0224AE7E:
	ldr r7, [sp]
_0224AE80:
	ldrb r1, [r1, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1f
	beq _0224AE8E
	cmp r1, #1
	beq _0224AE92
	b _0224AE96
_0224AE8E:
	add r6, r0, #4
	b _0224AE9A
_0224AE92:
	add r6, r0, #0
	b _0224AE9A
_0224AE96:
	bl GF_AssertFail
_0224AE9A:
	ldr r0, [r6, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r6, #0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, #0x12]
	cmp r5, r0
	blo _0224AE52
_0224AEB4:
	ldrh r1, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	blo _0224AED2
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _0224AED2
_0224AEC8:
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224AED2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AED8: .word Unk_ov8_0224C740
	thumb_func_end ov8_0224ADE8

	thumb_func_start ov8_0224AEDC
ov8_0224AEDC: ; 0x0224AEDC
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0206B46C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224AEDC

	thumb_func_start ov8_0224AEF0
ov8_0224AEF0: ; 0x0224AEF0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B47C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov8_0224AEF0

	thumb_func_start ov8_0224AF00
ov8_0224AF00: ; 0x0224AF00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r3, r0, r1
	mov r0, #0xf
	lsl r0, r0, #0xe
	str r3, [r4, #4]
	cmp r3, r0
	blt _0224AF2A
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, r0, #0
_0224AF18:
	ldr r3, [r4, #4]
	sub r3, r3, r0
	str r3, [r4, #4]
	ldr r3, [r4, #0]
	add r3, r3, r1
	str r3, [r4, #0]
	ldr r3, [r4, #4]
	cmp r3, r2
	bge _0224AF18
_0224AF2A:
	cmp r3, #0
	bge _0224AF48
	mov r0, #0xf
	mov r1, #1
	lsl r0, r0, #0xe
	lsl r1, r1, #0xc
_0224AF36:
	ldr r2, [r4, #4]
	add r2, r2, r0
	str r2, [r4, #4]
	ldr r2, [r4, #0]
	add r2, r2, r1
	str r2, [r4, #0]
	ldr r2, [r4, #4]
	cmp r2, #0
	blt _0224AF36
_0224AF48:
	mov r1, #3
	ldr r0, [r4, #0]
	lsl r1, r1, #0xe
	bl _s32_div_f
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224AF00

	thumb_func_start ov8_0224AF58
ov8_0224AF58: ; 0x0224AF58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov5_021E1890
	ldr r1, [r4, #0]
	str r1, [r0, #0]
	mov r1, #1
	ldr r2, [r4, #4]
	lsl r1, r1, #0x10
	sub r1, r1, r2
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x10
	sub r2, r2, r3
	mov r1, #0x10
	ror r2, r1
	add r1, r3, r2
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224AF58

	thumb_func_start ov8_0224AF84
ov8_0224AF84: ; 0x0224AF84
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r1, [r6, #4]
	add r5, r6, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r4, r0, #0xc
	add r0, r4, #0
	mov r1, #0xf
	add r5, #0x24
	bl _s32_div_f
	cmp r1, #0
	bne _0224AFB2
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #1
	ldr r0, _0224B018 ; =0x0224C7B8
	ldrh r0, [r0, r1]
	b _0224AFB6
_0224AFB2:
	ldr r0, _0224B01C ; =0x00000445
	mul r0, r4
_0224AFB6:
	str r0, [r5, #4]
	mov r0, #1
	ldr r1, [r5, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	str r0, [r5, #4]
	add r0, r5, #0
	bl ov8_0224AF58
	ldr r2, [r6, #0]
	add r0, r6, #0
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	lsl r2, r1, #1
	ldr r1, _0224B018 ; =0x0224C7B8
	add r0, #0xc
	ldrh r1, [r1, r2]
	str r1, [r0, #4]
	ldr r1, [r6, #8]
	cmp r1, #1
	bne _0224AFFA
	mov r1, #0x5b
	ldr r2, [r0, #4]
	mul r1, r4
	add r1, r2, r1
	str r1, [r0, #4]
_0224AFFA:
	mov r1, #2
	ldr r2, [r0, #4]
	lsl r1, r1, #0xe
	add r1, r2, r1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x10
	sub r2, r2, r3
	mov r1, #0x10
	ror r2, r1
	add r1, r3, r2
	str r1, [r0, #4]
	bl ov8_0224AF58
	pop {r4, r5, r6, pc}
	nop
_0224B018: .word Unk_ov8_0224C7B8
_0224B01C: .word 0x00000445
	thumb_func_end ov8_0224AF84

	thumb_func_start ov8_0224B020
ov8_0224B020: ; 0x0224B020
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #8
	bl sub_02027F6C
	str r0, [sp, #0x10]
	mov r0, #4
	mov r1, #0x40
	bl sub_02018144
	str r0, [sp, #0xc]
	mov r1, #0
	mov r2, #0x40
	bl memset
	ldr r0, [sp, #0xc]
	ldr r1, [r6, #4]
	add r4, r0, #0
	str r0, [r1, #0x24]
	str r6, [r0, #0x3c]
	ldr r0, _0224B0EC ; =0x0224C7A0
	mov r7, #0
	str r0, [sp, #8]
	add r0, sp, #0x20
	str r7, [r0, #0]
	str r7, [r0, #4]
	ldr r5, _0224B0F0 ; =0x0224C700
	add r4, #0xc
	str r7, [r0, #8]
_0224B064:
	ldr r0, [r5, #0]
	ldr r3, [sp, #8]
	str r0, [r4, #0xc]
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [r6, #0x50]
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	ldr r2, [r5, #0]
	bl ov5_021E19CC
	strh r0, [r4, #0x10]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	bl ov5_021E18CC
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, #0xc
	add r4, #0x18
	add r5, r5, #4
	str r0, [sp, #8]
	cmp r7, #2
	blt _0224B064
	ldr r3, _0224B0F4 ; =0x0224C71C
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r6, #0
	bl ov8_0224AEF0
	ldr r1, [sp, #0x10]
	ldr r2, _0224B0F8 ; =0x0224C774
	str r0, [r1, #0]
	lsl r1, r0, #2
	add r0, r2, r1
	ldrsh r1, [r2, r1]
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xc]
	str r2, [r1, #0]
	mov r1, #2
	ldrsh r0, [r0, r1]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0xc]
	str r1, [r0, #4]
	bl ov8_0224AF84
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0]
	cmp r1, #3
	bhs _0224B0E6
	lsl r2, r1, #2
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	add r0, r6, #0
	bl ov5_021F4098
_0224B0E6:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0224B0EC: .word Unk_ov8_0224C7A0
_0224B0F0: .word Unk_ov8_0224C700
_0224B0F4: .word Unk_ov8_0224C71C
_0224B0F8: .word Unk_ov8_0224C774
	thumb_func_end ov8_0224B020

	thumb_func_start ov8_0224B0FC
ov8_0224B0FC: ; 0x0224B0FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224B0FC

	thumb_func_start ov8_0224B110
ov8_0224B110: ; 0x0224B110
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	ldr r6, [sp, #0x18]
	bl sub_0203D174
	bl sub_02027860
	mov r1, #8
	bl sub_02027F6C
	ldr r1, [r0, #0]
	mov r0, #0
	str r0, [r6, #0]
	cmp r4, #7
	blt _0224B156
	cmp r4, #0x13
	bgt _0224B156
	cmp r5, #5
	blt _0224B156
	cmp r5, #0x11
	bgt _0224B156
	sub r2, r4, #7
	add r3, r2, #0
	mov r0, #0xd
	mul r3, r0
	sub r7, r5, #5
	mov r0, #0xa9
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0224B184 ; =0x0224CCE8
	add r3, r3, r7
	add r0, r0, r2
	ldrb r0, [r3, r0]
	str r0, [r6, #0]
_0224B156:
	cmp r0, #0
	bne _0224B180
	cmp r4, #0x13
	blt _0224B180
	bgt _0224B180
	cmp r5, #1
	blt _0224B180
	cmp r5, #0x15
	bgt _0224B180
	sub r4, #0x13
	mov r0, #0x15
	add r3, r4, #0
	add r2, r1, #0
	mul r3, r0
	mul r2, r0
	ldr r0, _0224B188 ; =0x0224CA5C
	sub r5, r5, #1
	add r1, r3, r5
	add r0, r0, r2
	ldrb r0, [r1, r0]
	str r0, [r6, #0]
_0224B180:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B184: .word Unk_ov8_0224CCE8
_0224B188: .word Unk_ov8_0224CA5C
	thumb_func_end ov8_0224B110

	thumb_func_start ov8_0224B18C
ov8_0224B18C: ; 0x0224B18C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	str r6, [r4, #0x10]
	str r2, [r4, #0x14]
	ldr r0, [sp, #0xc]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	bpl _0224B1BE
	mov r0, #2
	b _0224B1C0
_0224B1BE:
	mov r0, #3
_0224B1C0:
	str r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	bpl _0224B1CE
	mov r0, #0
	b _0224B1D0
_0224B1CE:
	mov r0, #1
_0224B1D0:
	str r0, [r4, #0x1c]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	sub r3, r1, r0
	bpl _0224B1DC
	neg r3, r3
_0224B1DC:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	bpl _0224B1E6
	neg r0, r0
_0224B1E6:
	cmp r3, r0
	bge _0224B1EE
	mov r0, #1
	str r0, [r4, #4]
_0224B1EE:
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x38]
	bl sub_020619DC
	str r0, [r4, #0x20]
	bl sub_020642F8
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02062D80
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_02062E28
	ldr r0, [r4, #0x20]
	bl sub_02063070
	ldr r1, [r5, #0x28]
	add r4, r0, #0
	bl ov5_021E931C
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	bl sub_02020690
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov8_0224B18C

	thumb_func_start ov8_0224B240
ov8_0224B240: ; 0x0224B240
	ldr r3, [r0, #8]
	str r3, [r0, #0x10]
	ldr r3, [r0, #0xc]
	str r3, [r0, #0x14]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x10]
	sub r1, r2, r1
	bpl _0224B258
	mov r1, #2
	b _0224B25A
_0224B258:
	mov r1, #3
_0224B25A:
	str r1, [r0, #0x18]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	sub r1, r2, r1
	bpl _0224B268
	mov r1, #0
	b _0224B26A
_0224B268:
	mov r1, #1
_0224B26A:
	str r1, [r0, #0x1c]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x10]
	sub r3, r2, r1
	bpl _0224B276
	neg r3, r3
_0224B276:
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	sub r1, r2, r1
	bpl _0224B280
	neg r1, r1
_0224B280:
	cmp r3, r1
	bge _0224B288
	mov r1, #1
	str r1, [r0, #4]
_0224B288:
	bx lr
	; .align 2, 0
	thumb_func_end ov8_0224B240

	thumb_func_start ov8_0224B28C
ov8_0224B28C: ; 0x0224B28C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	bl sub_0206447C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	bl sub_0206447C
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224B28C

	thumb_func_start ov8_0224B2B4
ov8_0224B2B4: ; 0x0224B2B4
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #4]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov8_0224B2B4

	thumb_func_start ov8_0224B2C4
ov8_0224B2C4: ; 0x0224B2C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl sub_0205EAFC
	ldr r1, [r5, #0x28]
	add r6, r0, #0
	bl ov5_021E931C
	ldr r1, [r5, #0x24]
	add r0, r6, #0
	bl sub_02020690
	ldr r0, [r4, #0x20]
	bl sub_02061AF4
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_0224B2C4

	thumb_func_start ov8_0224B2E8
ov8_0224B2E8: ; 0x0224B2E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, [r5, #0x20]
	add r0, r7, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0224B36C
	add r0, r7, #0
	mov r6, #0x9a
	bl sub_02063020
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02063040
	ldr r1, [r5, #8]
	cmp r4, r1
	bne _0224B318
	ldr r2, [r5, #0xc]
	cmp r0, r2
	bne _0224B318
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B318:
	ldr r2, [r5, #4]
	cmp r2, #0
	beq _0224B340
	cmp r4, r1
	beq _0224B32E
	ldr r0, [r5, #0x18]
	mov r1, #0xc
	bl sub_02065838
	add r6, r0, #0
	b _0224B360
_0224B32E:
	ldr r1, [r5, #0xc]
	cmp r0, r1
	beq _0224B360
	ldr r0, [r5, #0x1c]
	mov r1, #0xc
	bl sub_02065838
	add r6, r0, #0
	b _0224B360
_0224B340:
	ldr r2, [r5, #0xc]
	cmp r0, r2
	beq _0224B352
	ldr r0, [r5, #0x1c]
	mov r1, #0xc
	bl sub_02065838
	add r6, r0, #0
	b _0224B360
_0224B352:
	cmp r4, r1
	beq _0224B360
	ldr r0, [r5, #0x18]
	mov r1, #0xc
	bl sub_02065838
	add r6, r0, #0
_0224B360:
	cmp r6, #0x9a
	beq _0224B36C
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02065638
_0224B36C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224B2E8

	thumb_func_start ov8_0224B370
ov8_0224B370: ; 0x0224B370
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0]
	add r7, r1, #0
	add r4, r2, #0
	ldr r6, [r5, #4]
	cmp r0, r7
	bne _0224B388
	cmp r6, r4
	beq _0224B3C0
_0224B388:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov8_0224AF00
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	cmp r0, r7
	bne _0224B3BC
	cmp r6, r1
	ble _0224B3B2
	mov r2, #0xf
	lsl r2, r2, #0xe
	add r3, r1, r2
	add r2, r4, r2
	cmp r6, r2
	bge _0224B3BC
	cmp r3, r2
	ble _0224B3BC
	add r1, r4, #0
	b _0224B3BC
_0224B3B2:
	cmp r6, r4
	bge _0224B3BC
	cmp r1, r4
	ble _0224B3BC
	add r1, r4, #0
_0224B3BC:
	str r0, [r5, #0]
	str r1, [r5, #4]
_0224B3C0:
	ldr r0, [r5, #0]
	cmp r0, r7
	bne _0224B3CC
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _0224B3D0
_0224B3CC:
	mov r0, #0
	str r0, [sp]
_0224B3D0:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224B370

	thumb_func_start ov8_0224B3D4
ov8_0224B3D4: ; 0x0224B3D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r7, [r4, #0x14]
	ldr r5, [r4, #0x18]
	cmp r0, #0xc
	bhi _0224B438
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224B3FE: ; jump table
	.short _0224B418 - _0224B3FE - 2 ; case 0
	.short _0224B42C - _0224B3FE - 2 ; case 1
	.short _0224B442 - _0224B3FE - 2 ; case 2
	.short _0224B45C - _0224B3FE - 2 ; case 3
	.short _0224B4D4 - _0224B3FE - 2 ; case 4
	.short _0224B514 - _0224B3FE - 2 ; case 5
	.short _0224B528 - _0224B3FE - 2 ; case 6
	.short _0224B53E - _0224B3FE - 2 ; case 7
	.short _0224B570 - _0224B3FE - 2 ; case 8
	.short _0224B584 - _0224B3FE - 2 ; case 9
	.short _0224B5BA - _0224B3FE - 2 ; case 10
	.short _0224B614 - _0224B3FE - 2 ; case 11
	.short _0224B628 - _0224B3FE - 2 ; case 12
_0224B418:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1c
	mov r2, #0xb
	mov r3, #0xd
	bl ov8_0224B18C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224B42C:
	add r0, r4, #0
	add r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	beq _0224B43A
_0224B438:
	b _0224B662
_0224B43A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224B662
_0224B442:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	blt _0224B54A
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, _0224B668 ; =0x0000054B
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224B45C:
	ldr r0, [r7, #0]
	cmp r0, #4
	bne _0224B478
	ldr r1, [r5, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0224B478
	ldr r1, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	ble _0224B478
	mov r0, #0xb
	lsl r0, r0, #0xc
	str r0, [r5, #0]
_0224B478:
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov8_0224B370
	add r6, r0, #0
	ldr r0, [r7, #0]
	cmp r0, #4
	bne _0224B494
	lsl r1, r0, #2
	ldr r0, _0224B66C ; =0x0224C774
	ldrsh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r5, #0]
_0224B494:
	ldr r1, [r5, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0224B4B0
	ldr r1, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	ble _0224B4AA
	ldr r0, [r7, #0]
	cmp r0, #4
	bne _0224B4B4
_0224B4AA:
	mov r0, #0
	str r0, [r5, #8]
	b _0224B4B4
_0224B4B0:
	mov r0, #1
	str r0, [r5, #8]
_0224B4B4:
	add r0, r5, #0
	bl ov8_0224AF84
	cmp r6, #1
	bne _0224B54A
	ldr r0, _0224B668 ; =0x0000054B
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0224B670 ; =0x000005E3
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224B662
_0224B4D4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	blt _0224B54A
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r7, #0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _0224B504
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x1c
	mov r2, #0xb
	mov r3, #0x13
	bl ov8_0224B2B4
	mov r0, #7
	str r0, [r4, #0]
	b _0224B662
_0224B504:
	add r0, r4, #0
	add r0, #0x1c
	bl ov8_0224B28C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224B662
_0224B514:
	add r0, r4, #0
	add r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	bne _0224B54A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224B662
_0224B528:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1c
	bl ov8_0224B2C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B53E:
	add r0, r4, #0
	add r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	beq _0224B54C
_0224B54A:
	b _0224B662
_0224B54C:
	ldr r0, [r7, #0]
	mov r2, #0x14
	mov r1, #3
	cmp r0, #3
	bne _0224B55A
	mov r2, #2
	add r1, r2, #0
_0224B55A:
	str r1, [sp]
	mov r1, #1
	add r0, r4, #0
	str r1, [sp, #4]
	add r0, #0x1c
	mov r3, #0x13
	bl ov8_0224B2B4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224B570:
	add r0, r4, #0
	add r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	bne _0224B662
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224B662
_0224B584:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0224B662
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r7, #0]
	cmp r0, #2
	bne _0224B5A2
	add r0, r6, #0
	mov r1, #1
	bl ov5_021F416C
	b _0224B5AC
_0224B5A2:
	cmp r0, #3
	bne _0224B5AC
	add r0, r6, #0
	bl ov5_021F416C
_0224B5AC:
	ldr r0, _0224B674 ; =0x00000639
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224B662
_0224B5BA:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	blt _0224B662
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, _0224B674 ; =0x00000639
	bl sub_020057A4
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	mov r1, #0xc
	bl sub_0200B1B8
	ldr r0, [r6, #8]
	ldr r1, [r4, #0x44]
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_0200E084
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_0205D944
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x40]
	b _0224B662
_0224B614:
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DA04
	cmp r0, #1
	bne _0224B662
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224B628:
	ldr r0, _0224B678 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224B662
	ldr r0, [r6, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x1c
	add r1, r5, #0
	bl ov8_0224B240
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_0200E084
	ldr r0, [r4, #0x44]
	bl sub_0201A8FC
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r4, #0]
_0224B662:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B668: .word 0x0000054B
_0224B66C: .word Unk_ov8_0224C774
_0224B670: .word 0x000005E3
_0224B674: .word 0x00000639
_0224B678: .word 0x021BF67C
	thumb_func_end ov8_0224B3D4

	thumb_func_start ov8_0224B67C
ov8_0224B67C: ; 0x0224B67C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0203D174
	bl sub_02027860
	mov r1, #8
	bl sub_02027F6C
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #4
	blo _0224B6A4
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B6A4:
	add r1, r0, #1
	str r1, [r6, #0]
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov8_0224AEDC
	ldr r0, [r5, #4]
	ldr r1, _0224B70C ; =0x0224C774
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	lsl r0, r0, #2
	add r7, r1, r0
	str r0, [sp, #0x10]
	mov r0, #0xb
	mov r1, #0x50
	bl sub_02018144
	mov r1, #0
	mov r2, #0x50
	add r4, r0, #0
	bl memset
	ldr r0, [sp]
	ldr r1, _0224B70C ; =0x0224C774
	str r0, [r4, #0x44]
	ldr r0, [sp, #4]
	add r2, r4, #0
	str r0, [r4, #0x48]
	ldr r0, [sp, #8]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x10]
	ldrsh r0, [r1, r0]
	ldr r1, _0224B710 ; =ov8_0224B3D4
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #2
	ldrsh r0, [r7, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	str r5, [r4, #0x10]
	ldr r0, [sp, #0xc]
	str r6, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	bl sub_02050944
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224B70C: .word Unk_ov8_0224C774
_0224B710: .word ov8_0224B3D4
	thumb_func_end ov8_0224B67C

	thumb_func_start ov8_0224B714
ov8_0224B714: ; 0x0224B714
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #8
	bl sub_02027F6C
	ldr r0, [r0, #0]
	ldr r2, _0224B760 ; =0x0224C7F0
	lsl r1, r0, #3
	add r0, r2, r1
	ldrsh r1, [r2, r1]
	cmp r1, r5
	bne _0224B75A
	mov r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, r6
	bne _0224B75A
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224B74E
	cmp r4, #2
	beq _0224B756
	cmp r4, #3
	beq _0224B756
_0224B74E:
	cmp r0, #1
	bne _0224B75A
	cmp r4, #1
	bhi _0224B75A
_0224B756:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224B75A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224B760: .word Unk_ov8_0224C7F0
	thumb_func_end ov8_0224B714

	thumb_func_start ov8_0224B764
ov8_0224B764: ; 0x0224B764
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #4
	bl sub_02027F6C
	mov r1, #0x79
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x79
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	ldr r0, [r5, #4]
	mov r1, #0x1f
	str r4, [r0, #0x24]
	str r5, [r4, #0]
	ldr r0, [r5, #0x40]
	bl ov5_021DF4A8
	ldr r0, [r5, #0x40]
	mov r1, #0xb
	mov r2, #9
	bl ov5_021F42D8
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _0224B7B4
	add r0, r4, #0
	bl ov8_0224B958
	b _0224B7BA
_0224B7B4:
	add r0, r4, #0
	bl ov8_0224B8D0
_0224B7BA:
	mov r0, #1
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_0224B764

	thumb_func_start ov8_0224B7C0
ov8_0224B7C0: ; 0x0224B7C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224B7C0

	thumb_func_start ov8_0224B7D4
ov8_0224B7D4: ; 0x0224B7D4
	mov r0, #0
	bx lr
	thumb_func_end ov8_0224B7D4

	thumb_func_start ov8_0224B7D8
ov8_0224B7D8: ; 0x0224B7D8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r3, #0
	mov r3, #2
	lsl r3, r3, #0xc
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r5, [r0, #0x1c]
	ldr r5, [r5, #0]
	str r5, [sp, #8]
	ldr r0, [r0, #0x38]
	bl sub_020619DC
	add r5, r0, #0
	mov r1, #0xfd
	bl sub_0206290C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_020629B4
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov8_0224B7D8

	thumb_func_start ov8_0224B80C
ov8_0224B80C: ; 0x0224B80C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r4, [r5, #8]
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02063020
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_02063040
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_020629D8
	cmp r0, #0
	bne _0224B842
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r3, #0
	bl ov5_021F4474
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
_0224B842:
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r3, #0
	bl ov5_021F4668
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov8_0224B80C

	thumb_func_start ov8_0224B854
ov8_0224B854: ; 0x0224B854
	push {r3, r4}
	mov r3, #0x43
	lsl r3, r3, #2
	mov r4, #0
	add r0, r0, r3
_0224B85E:
	ldr r3, [r0, #8]
	cmp r3, r1
	bne _0224B86A
	ldr r3, [r0, #0xc]
	cmp r3, r2
	beq _0224B874
_0224B86A:
	add r4, r4, #1
	add r0, #0x18
	cmp r4, #9
	blt _0224B85E
	mov r0, #0
_0224B874:
	pop {r3, r4}
	bx lr
	thumb_func_end ov8_0224B854

	thumb_func_start ov8_0224B878
ov8_0224B878: ; 0x0224B878
	push {r3, r4}
	mov r4, #0
	add r0, r0, #4
_0224B87E:
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0224B890
	ldr r3, [r0, #8]
	cmp r3, r1
	bne _0224B890
	ldr r3, [r0, #0xc]
	cmp r3, r2
	beq _0224B89A
_0224B890:
	add r4, r4, #1
	add r0, #0x18
	cmp r4, #0xb
	blt _0224B87E
	mov r0, #0
_0224B89A:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov8_0224B878

	thumb_func_start ov8_0224B8A0
ov8_0224B8A0: ; 0x0224B8A0
	push {r4, lr}
	add r4, r0, #0
	bne _0224B8AA
	bl GF_AssertFail
_0224B8AA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0224B8B4
	bl GF_AssertFail
_0224B8B4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0224B8BE
	bl GF_AssertFail
_0224B8BE:
	ldr r0, [r4, #0x14]
	bl sub_0207136C
	ldr r0, [r4, #0x10]
	bl sub_02061AF4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov8_0224B8A0

	thumb_func_start ov8_0224B8D0
ov8_0224B8D0: ; 0x0224B8D0
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x43
	lsl r2, r2, #2
	add r5, r0, r2
	add r6, r0, #4
	ldr r4, [r0, #0]
	add r0, r6, #0
	mov r1, #0
	sub r2, r2, #4
	bl memset
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xd8
	bl memset
	mov r0, #0
	ldr r7, _0224B950 ; =0x0224C99C
	str r0, [sp]
_0224B8F6:
	ldr r2, [r7, #4]
	ldr r1, [r7, #0]
	add r0, r4, #0
	sub r2, r2, #2
	mov r3, #0
	bl ov8_0224B7D8
	add r1, r0, #0
	add r0, r6, #0
	add r0, #8
	add r2, r4, #0
	bl ov8_0224B80C
	mov r0, #1
	str r0, [r6, #0]
	ldr r0, [sp]
	add r7, #8
	add r0, r0, #1
	add r6, #0x18
	str r0, [sp]
	cmp r0, #0xb
	blt _0224B8F6
	ldr r6, _0224B954 ; =0x0224C90C
	mov r7, #0
_0224B926:
	ldr r2, [r6, #4]
	ldr r1, [r6, #0]
	add r0, r4, #0
	sub r2, r2, #2
	mov r3, #1
	bl ov8_0224B7D8
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	add r2, r4, #0
	bl ov8_0224B80C
	mov r0, #1
	str r0, [r5, #0]
	add r7, r7, #1
	add r6, #8
	add r5, #0x18
	cmp r7, #9
	blt _0224B926
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B950: .word Unk_ov8_0224C99C
_0224B954: .word Unk_ov8_0224C90C
	thumb_func_end ov8_0224B8D0

	thumb_func_start ov8_0224B958
ov8_0224B958: ; 0x0224B958
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0
	str r7, [sp, #8]
	ldr r6, [r0, #0]
	add r4, r0, #4
	ldr r1, [r6, #0x38]
	add r2, sp, #8
	str r1, [sp]
	mov r1, #0x43
	lsl r1, r1, #2
	add r5, r0, r1
	ldr r0, [sp]
	add r1, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _0224B9D4
_0224B97E:
	ldr r0, [sp, #4]
	bl sub_02062910
	cmp r0, #0xfd
	bne _0224B9C4
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_020629D8
	cmp r0, #0
	bne _0224B9A8
	add r0, r4, #0
	ldr r1, [sp, #4]
	add r0, #8
	add r2, r6, #0
	bl ov8_0224B80C
	mov r0, #1
	str r0, [r4, #0]
	add r4, #0x18
	b _0224B9BA
_0224B9A8:
	add r0, r5, #0
	ldr r1, [sp, #4]
	add r0, #8
	add r2, r6, #0
	bl ov8_0224B80C
	mov r0, #1
	str r0, [r5, #0]
	add r5, #0x18
_0224B9BA:
	add r7, r7, #1
	cmp r7, #0x14
	ble _0224B9C4
	bl GF_AssertFail
_0224B9C4:
	ldr r0, [sp]
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _0224B97E
_0224B9D4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224B958

	thumb_func_start ov8_0224B9D8
ov8_0224B9D8: ; 0x0224B9D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bge _0224B9E6
	bl GF_AssertFail
_0224B9E6:
	cmp r4, #0x20
	blt _0224B9EE
	bl GF_AssertFail
_0224B9EE:
	cmp r5, #0
	bge _0224B9F6
	bl GF_AssertFail
_0224B9F6:
	cmp r5, #0x20
	blt _0224B9FE
	bl GF_AssertFail
_0224B9FE:
	lsl r0, r5, #5
	add r1, r4, r0
	ldr r0, _0224BA08 ; =0x0224E33C
	ldrb r0, [r0, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BA08: .word Unk_ov8_0224E33C
	thumb_func_end ov8_0224B9D8

	thumb_func_start ov8_0224BA0C
ov8_0224BA0C: ; 0x0224BA0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r5, r3, #0
	mov r4, #0
	bl ov8_0224B9D8
	cmp r0, #5
	bhi _0224BA62
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BA32: ; jump table
	.short _0224BA62 - _0224BA32 - 2 ; case 0
	.short _0224BA62 - _0224BA32 - 2 ; case 1
	.short _0224BA44 - _0224BA32 - 2 ; case 2
	.short _0224BA4E - _0224BA32 - 2 ; case 3
	.short _0224BA3E - _0224BA32 - 2 ; case 4
	.short _0224BA5A - _0224BA32 - 2 ; case 5
_0224BA3E:
	mov r0, #4
	orr r4, r0
	b _0224BA62
_0224BA44:
	cmp r5, #1
	bhi _0224BA62
	mov r0, #1
	orr r4, r0
	b _0224BA62
_0224BA4E:
	sub r0, r5, #2
	cmp r0, #1
	bhi _0224BA62
	mov r0, #1
	orr r4, r0
	b _0224BA62
_0224BA5A:
	cmp r5, #2
	bne _0224BA62
	mov r0, #1
	orr r4, r0
_0224BA62:
	add r0, r5, #0
	bl sub_0206419C
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020641A8
	add r5, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, r5
	add r0, r6, r0
	bl ov8_0224B9D8
	cmp r0, #1
	bne _0224BA84
	mov r0, #1
	orr r4, r0
_0224BA84:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r1, r6, r1
	add r2, r7, r5
	bl ov8_0224B878
	cmp r0, #0
	beq _0224BA98
	mov r0, #2
	orr r4, r0
_0224BA98:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov8_0224BA0C

	thumb_func_start ov8_0224BAA0
ov8_0224BAA0: ; 0x0224BAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x20]
	mov r6, #0
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	str r5, [sp, #0x20]
	str r6, [r5, #0]
	bl ov8_0224BA0C
	cmp r0, #0
	beq _0224BAC0
	cmp r0, #4
	bne _0224BAEE
_0224BAC0:
	add r0, r4, #0
	bl sub_0206419C
	add r7, r7, r0
	add r0, r4, #0
	bl sub_020641A8
	ldr r1, [sp, #4]
	add r3, r4, #0
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [r0, #0]
	ldr r0, [sp]
	add r1, r7, #0
	bl ov8_0224BA0C
	cmp r0, #0
	beq _0224BAC0
_0224BAEE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov8_0224BAA0

	thumb_func_start ov8_0224BAF4
ov8_0224BAF4: ; 0x0224BAF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _0224BB1A
	cmp r1, #1
	beq _0224BB4C
	b _0224BB70
_0224BB1A:
	bl sub_020655F4
	cmp r0, #1
	bne _0224BB70
	ldr r0, [r5, #8]
	mov r1, #0x28
	bl sub_02065838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02065638
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #8]
	ldr r0, [r0, #0x14]
	mov r2, #0
	bl ov5_021F4698
	ldr r0, _0224BB74 ; =0x00000557
	bl sub_02005748
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224BB70
_0224BB4C:
	bl sub_02065684
	cmp r0, #1
	bne _0224BB70
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x14]
	bl ov5_021F4720
	cmp r0, #1
	bne _0224BB70
	add r0, r4, #0
	bl sub_020656AC
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224BB70:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BB74: .word 0x00000557
	thumb_func_end ov8_0224BAF4

	thumb_func_start ov8_0224BB78
ov8_0224BB78: ; 0x0224BB78
	push {r3, r4, r5, lr}
	bl sub_02050A64
	ldr r4, _0224BB9C ; =0x0224C818
	add r5, r0, #0
_0224BB82:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0224BB82
	cmp r0, #2
	bne _0224BB98
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224BB98:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BB9C: .word Unk_ov8_0224C818
	thumb_func_end ov8_0224BB78

	thumb_func_start ov8_0224BBA0
ov8_0224BBA0: ; 0x0224BBA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	add r0, #0x1c
	add r4, r1, #0
	str r0, [sp]
	add r4, #8
	ldr r0, [r5, #0x3c]
	ldr r1, [r1, #8]
	ldr r2, [r4, #4]
	ldr r3, [r5, #8]
	bl ov8_0224BAA0
	add r1, r5, #0
	ldr r0, [r4, #0xc]
	add r1, #0x20
	bl sub_020715E4
	mov r0, #0x44
	str r0, [r5, #0x2c]
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov8_0224BBA0

	thumb_func_start ov8_0224BBD0
ov8_0224BBD0: ; 0x0224BBD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_020655F4
	cmp r0, #0
	bne _0224BBEC
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224BBEC:
	ldr r0, [r5, #8]
	mov r1, #0x1c
	bl sub_02065838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02065638
	ldr r4, [r5, #0x34]
	ldr r1, [r5, #8]
	ldr r0, [r4, #0x14]
	mov r2, #1
	bl ov5_021F4698
	add r1, r4, #0
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, #8
	bl ov8_0224C0C8
	cmp r0, #1
	bne _0224BC34
	mov r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x3c]
	add r4, #8
	ldr r0, [r0, #0]
	ldr r3, [r5, #8]
	add r1, r5, #0
	add r2, r4, #0
	bl ov8_0224BFCC
	add r0, r5, #0
	mov r1, #0
	bl ov8_0224C0FC
_0224BC34:
	ldr r0, _0224BC44 ; =0x00000557
	bl sub_02005748
	mov r0, #2
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224BC44: .word 0x00000557
	thumb_func_end ov8_0224BBD0

	thumb_func_start ov8_0224BC48
ov8_0224BC48: ; 0x0224BC48
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x2c]
	add r1, #0x20
	bl sub_02064418
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	add r1, #0x20
	bl sub_020715D4
	ldr r1, [r4, #0x2c]
	add r1, #0x44
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	add r0, r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _0224BCA0
	ldr r1, [r4, #0x1c]
	mov r0, #0xd
	lsl r2, r1, #4
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r0, r0, #0xc
	asr r1, r1, #1
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl ov5_021F4714
	mov r0, #3
	str r0, [r4, #0]
	ldr r0, _0224BCA4 ; =0x0000054C
	bl sub_02005748
_0224BCA0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0224BCA4: .word 0x0000054C
	thumb_func_end ov8_0224BC48

	thumb_func_start ov8_0224BCA8
ov8_0224BCA8: ; 0x0224BCA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	ldr r4, [r5, #0x34]
	ldr r0, [r5, #8]
	ldr r2, [r5, #0x2c]
	add r1, #0x20
	bl sub_02064418
	add r1, r5, #0
	ldr r0, [r4, #0x14]
	add r1, #0x20
	bl sub_020715D4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	add r0, r1, r0
	str r0, [r5, #0x30]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0x24
	bge _0224BCE6
	mov r0, #1
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _0224BCF4
	add r0, r1, r1
	str r0, [r5, #0x2c]
	b _0224BCF4
_0224BCE6:
	bne _0224BCF4
	mov r0, #2
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0224BCF4
	str r0, [r5, #0x2c]
_0224BCF4:
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	bl ov8_0224C170
	ldr r0, [r5, #0x30]
	asr r1, r0, #4
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, [r5, #0x14]
	cmp r1, r0
	ble _0224BDBE
	str r1, [r5, #0x14]
	ldr r0, [r5, #8]
	bl sub_0206419C
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	bl sub_020641A8
	ldr r1, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #8]
	ldr r3, [r5, #8]
	bl ov8_0224BA0C
	add r6, r0, #0
	beq _0224BDBE
	add r2, r5, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, #0x20
	bl sub_02064450
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	bl sub_02063024
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl sub_02063044
	ldr r0, [r4, #0x10]
	bl sub_02064208
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0xc
	bl ov5_021F4714
	ldr r0, _0224BDC4 ; =0x0000054C
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0224BDC8 ; =0x00000557
	bl sub_02005748
	ldr r0, _0224BDCC ; =0x0000054D
	bl sub_02005748
	mov r0, #2
	tst r0, r6
	bne _0224BD8E
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0224BD88
	mov r0, #6
	str r0, [r5, #0]
	b _0224BDBE
_0224BD88:
	mov r0, #8
	str r0, [r5, #0]
	b _0224BDBE
_0224BD8E:
	ldr r0, [r5, #8]
	bl sub_0206419C
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_020641A8
	ldr r1, [r4, #8]
	add r2, r0, #0
	ldr r3, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	add r1, r1, r6
	add r2, r3, r2
	bl ov8_0224B878
	str r0, [r5, #0x38]
	cmp r0, #0
	bne _0224BDB6
	bl GF_AssertFail
_0224BDB6:
	mov r0, #0
	str r0, [r5, #4]
	mov r0, #4
	str r0, [r5, #0]
_0224BDBE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224BDC4: .word 0x0000054C
_0224BDC8: .word 0x00000557
_0224BDCC: .word 0x0000054D
	thumb_func_end ov8_0224BCA8

	thumb_func_start ov8_0224BDD0
ov8_0224BDD0: ; 0x0224BDD0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ov8_0224C170
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0224BDFA
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r4, #0]
	ldr r0, [r4, #0x38]
	ldr r0, [r0, #0x14]
	bl ov5_021F44A4
	ldr r0, _0224BE00 ; =0x0000062A
	bl sub_02005748
_0224BDFA:
	mov r0, #0
	pop {r4, pc}
	nop
_0224BE00: .word 0x0000062A
	thumb_func_end ov8_0224BDD0

	thumb_func_start ov8_0224BE04
ov8_0224BE04: ; 0x0224BE04
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ov8_0224C170
	ldr r0, [r4, #0x38]
	ldr r0, [r0, #0x14]
	bl ov5_021F453C
	cmp r0, #0
	beq _0224BE34
	ldr r0, [r4, #0x38]
	bl ov8_0224B8A0
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0224BE30
	mov r0, #6
	str r0, [r4, #0]
	b _0224BE34
_0224BE30:
	mov r0, #8
	str r0, [r4, #0]
_0224BE34:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov8_0224BE04

	thumb_func_start ov8_0224BE38
ov8_0224BE38: ; 0x0224BE38
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ov8_0224C170
	add r0, r4, #0
	bl ov8_0224C0C4
	cmp r0, #1
	bne _0224BE64
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl ov5_021F4720
	cmp r0, #1
	bne _0224BE64
	add r0, r4, #0
	mov r1, #1
	bl ov8_0224C0FC
	mov r0, #7
	str r0, [r4, #0]
_0224BE64:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov8_0224BE38

	thumb_func_start ov8_0224BE68
ov8_0224BE68: ; 0x0224BE68
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl ov8_0224C11C
	add r0, r4, #0
	bl ov8_0224C0C4
	cmp r0, #1
	bne _0224BE86
	add r0, r4, #0
	bl ov8_0224C098
	mov r0, #9
	str r0, [r4, #0]
_0224BE86:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224BE68

	thumb_func_start ov8_0224BE8C
ov8_0224BE8C: ; 0x0224BE8C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl ov5_021F4720
	cmp r0, #1
	bne _0224BEA0
	mov r0, #9
	str r0, [r4, #0]
_0224BEA0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov8_0224BE8C

	thumb_func_start ov8_0224BEA4
ov8_0224BEA4: ; 0x0224BEA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _0224BEC6
	add r0, r5, #0
	bl sub_020656AC
	mov r0, #0xa
	str r0, [r4, #0]
_0224BEC6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov8_0224BEA4

	thumb_func_start ov8_0224BECC
ov8_0224BECC: ; 0x0224BECC
	push {r3, lr}
	bl sub_020181C4
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov8_0224BECC

	thumb_func_start ov8_0224BED8
ov8_0224BED8: ; 0x0224BED8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x78
	add r7, r2, #0
	bl sub_02018184
	add r4, r0, #0
	bne _0224BEF0
	bl GF_AssertFail
_0224BEF0:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x78
	bl memset
	str r7, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x10]
	str r5, [r4, #0x34]
	str r6, [r4, #0x3c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224BED8

	thumb_func_start ov8_0224BF0C
ov8_0224BF0C: ; 0x0224BF0C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl ov8_0224BED8
	add r2, r0, #0
	ldr r1, _0224BF28 ; =ov8_0224BAF4
	add r0, r4, #0
	bl sub_02050904
	pop {r4, pc}
	nop
_0224BF28: .word ov8_0224BAF4
	thumb_func_end ov8_0224BF0C

	thumb_func_start ov8_0224BF2C
ov8_0224BF2C: ; 0x0224BF2C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl ov8_0224BED8
	add r2, r0, #0
	ldr r1, _0224BF48 ; =ov8_0224BB78
	add r0, r4, #0
	bl sub_02050904
	pop {r4, pc}
	nop
_0224BF48: .word ov8_0224BB78
	thumb_func_end ov8_0224BF2C

	thumb_func_start ov8_0224BF4C
ov8_0224BF4C: ; 0x0224BF4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #4
	beq _0224BF68
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BF68:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r4, [r0, #0x24]
	ldr r0, [r5, #0x3c]
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_0206157C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl ov8_0224B854
	add r7, r0, #0
	bne _0224BF94
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BF94:
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r4, #0
	add r3, r6, #0
	bl ov8_0224BAA0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224BFB8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov8_0224BF0C
	b _0224BFC4
_0224BFB8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov8_0224BF2C
_0224BFC4:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov8_0224BF4C

	thumb_func_start ov8_0224BFCC
ov8_0224BFCC: ; 0x0224BFCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r4, #0x40
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x38
	add r7, r3, #0
	bl memset
	ldr r0, [sp, #0x10]
	str r5, [r4, #0x34]
	ldr r6, [r0, #0]
	ldr r0, [r0, #4]
	add r1, r6, #0
	str r6, [r4, #8]
	str r0, [sp, #0x14]
	str r0, [r4, #0xc]
	add r0, r4, #0
	str r7, [r4, #0x20]
	add r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	ldr r0, [r0, #0x3c]
	add r3, r7, #0
	bl ov8_0224BAA0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0224C014
	bl GF_AssertFail
_0224C014:
	add r0, r7, #0
	bl sub_0206419C
	ldr r1, [r4, #0x24]
	mul r0, r1
	add r0, r6, r0
	str r0, [r4, #0x18]
	add r0, r7, #0
	bl sub_020641A8
	ldr r1, [r4, #0x24]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	str r6, [r4, #0x10]
	mov r0, #2
	str r2, [r4, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x38]
	bl sub_020619DC
	str r0, [r4, #0x30]
	bl sub_020642F8
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_02062D80
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02062E28
	ldr r0, [r4, #0x30]
	bl sub_02063070
	ldr r1, [r5, #0x28]
	add r4, r0, #0
	bl ov5_021E931C
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	bl sub_02020690
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224BFCC

	thumb_func_start ov8_0224C098
ov8_0224C098: ; 0x0224C098
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r5, #0x40
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x34]
	add r4, r0, #0
	ldr r1, [r1, #0x28]
	bl ov5_021E931C
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	ldr r1, [r1, #0x24]
	bl sub_02020690
	ldr r0, [r5, #0x30]
	bl sub_02061AF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov8_0224C098

	thumb_func_start ov8_0224C0C4
ov8_0224C0C4: ; 0x0224C0C4
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end ov8_0224C0C4

	thumb_func_start ov8_0224C0C8
ov8_0224C0C8: ; 0x0224C0C8
	push {r4, lr}
	sub sp, #8
	add r3, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r4, r2, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r3, #0]
	ldr r2, [r3, #4]
	add r3, r4, #0
	bl ov8_0224BAA0
	ldr r0, _0224C0F8 ; =0x0224C764
	lsl r1, r4, #2
	ldr r2, [sp, #4]
	ldr r0, [r0, r1]
	cmp r2, r0
	ble _0224C0F2
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0224C0F2:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0224C0F8: .word Unk_ov8_0224C764
	thumb_func_end ov8_0224C0C8

	thumb_func_start ov8_0224C0FC
ov8_0224C0FC: ; 0x0224C0FC
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x40
	mov r3, #0
	mov r2, #1
	str r3, [r4, #0x28]
	str r2, [r0, #0x40]
	str r3, [r4, #0x2c]
	cmp r1, #1
	bne _0224C118
	ldr r0, [r4, #0x20]
	bl sub_0206447C
	str r0, [r4, #0x20]
_0224C118:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov8_0224C0FC

	thumb_func_start ov8_0224C11C
ov8_0224C11C: ; 0x0224C11C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r0, #0x40]
	add r5, r1, #0
	add r4, #0x40
	cmp r0, #0
	beq _0224C16E
	cmp r0, #1
	beq _0224C134
	cmp r0, #2
	beq _0224C166
	pop {r3, r4, r5, pc}
_0224C134:
	ldr r0, [r4, #0x30]
	bl sub_020655F4
	cmp r0, #1
	bne _0224C16E
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	blt _0224C14E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_0224C14E:
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_02065638
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0224C166:
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0]
_0224C16E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov8_0224C11C

	thumb_func_start ov8_0224C170
ov8_0224C170: ; 0x0224C170
	push {r3, lr}
	ldr r2, [r0, #0x18]
	cmp r2, #1
	bne _0224C194
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r2, r2, #0xc
	beq _0224C194
	mov r1, #8
	cmp r2, #2
	bgt _0224C18C
	mov r1, #0xc
	b _0224C190
_0224C18C:
	ble _0224C190
	mov r1, #0x10
_0224C190:
	bl ov8_0224C11C
_0224C194:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov8_0224C170

	thumb_func_start ov8_0224C198
ov8_0224C198: ; 0x0224C198
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #2
	bl sub_02027F6C
	mov r1, #0x7e
	add r4, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x7e
	str r0, [sp, #8]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r0, [sp, #8]
	str r6, [r0, #0]
	ldr r1, [r6, #4]
	str r0, [r1, #0x24]
	bl ov8_0224C3B4
	ldr r0, [r6, #0x40]
	mov r1, #0x20
	bl ov5_021DF4A8
	ldr r0, [r6, #0x38]
	mov r1, #0
	bl sub_02062CCC
	ldr r0, [r6, #0x3c]
	mov r5, #0xd2
	bl sub_0205EB3C
	add r7, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EB98
	cmp r0, #1
	bne _0224C1F6
	mov r5, #0xd3
_0224C1F6:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02061AD4
	add r0, r6, #0
	mov r1, #1
	bl ov5_021F5AA4
	ldr r0, [sp, #8]
	bl ov8_0224C444
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x1c]
	ldr r5, _0224C378 ; =0x0224C8D4
	ldr r1, [r0, #0]
_0224C216:
	ldr r0, [r5, #0]
	cmp r0, r1
	beq _0224C228
	ldr r0, [sp, #4]
	add r5, #0x1c
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _0224C216
_0224C228:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224C302
	mov r0, #1
	strh r0, [r4]
	mov r0, #8
	strh r0, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, #2
	beq _0224C302
	lsl r1, r0, #2
	ldr r0, _0224C37C ; =0x0224C6F8
	ldr r0, [r0, r1]
	str r0, [sp]
	bl sub_0201D35C
	ldr r1, [r5, #8]
	bl _u32_div_f
	ldr r0, [r5, #4]
	add r7, r4, #4
	add r0, r1, r0
	strh r0, [r4, #2]
	add r0, r4, #6
	str r0, [sp, #0xc]
_0224C25C:
	bl sub_0201D35C
	ldr r1, [r5, #0x14]
	bl _u32_div_f
	strh r1, [r4, #4]
	bl sub_0201D35C
	ldr r1, [r5, #0x18]
	bl _u32_div_f
	strh r1, [r4, #6]
	mov r0, #4
	ldrsh r2, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	ldr r1, [r5, #0x14]
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r2
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _0224C25C
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r5, #0xc]
	mov r2, #6
	add r0, r1, r0
	strh r0, [r7]
	ldr r1, [sp, #0xc]
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r5, #0x10]
	mov r3, #0
	add r1, r1, r0
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	mov r1, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r6, #0x38]
	bl sub_0206326C
	cmp r0, #0
	bne _0224C25C
	mov r0, #2
	ldrsh r2, [r4, r0]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r0, r1, r0
	cmp r2, r0
	blt _0224C2C8
	bl GF_AssertFail
_0224C2C8:
	mov r0, #4
	ldrsh r2, [r4, r0]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	cmp r2, r0
	blt _0224C2DA
	bl GF_AssertFail
_0224C2DA:
	mov r0, #6
	ldrsh r2, [r4, r0]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	cmp r2, r0
	blt _0224C2EC
	bl GF_AssertFail
_0224C2EC:
	mov r1, #4
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, r6, #0
	bl sub_02054F68
	cmp r0, #0
	beq _0224C302
	bl GF_AssertFail
_0224C302:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #8
	beq _0224C362
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _0224C380 ; =0x0224C708
	ldr r5, [r0, r1]
	ldr r1, [r5, #0]
	cmp r1, #8
	beq _0224C350
_0224C318:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _0224C348
	mov r1, #4
	mov r2, #6
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, r6, #0
	bl sub_0203A468
	add r7, r0, #0
	lsl r1, r7, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #0x58
	bl sub_0203A574
	lsl r1, r7, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0203A584
_0224C348:
	add r5, #8
	ldr r1, [r5, #0]
	cmp r1, #8
	bne _0224C318
_0224C350:
	mov r1, #4
	mov r2, #6
	mov r3, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r0, [r6, #0x40]
	bl ov5_021F4CEC
_0224C362:
	ldr r0, _0224C384 ; =ov8_0224C3B0
	ldr r1, [sp, #8]
	mov r2, #0
	bl sub_0200D9E8
	mov r2, #0x7d
	ldr r1, [sp, #8]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C378: .word Unk_ov8_0224C8D4
_0224C37C: .word Unk_ov8_0224C6F8
_0224C380: .word Unk_ov8_0224C708
_0224C384: .word ov8_0224C3B0
	thumb_func_end ov8_0224C198

	thumb_func_start ov8_0224C388
ov8_0224C388: ; 0x0224C388
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r0, #0x24]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl ov8_0224C4F8
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x24]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov8_0224C388

	thumb_func_start ov8_0224C3B0
ov8_0224C3B0: ; 0x0224C3B0
	bx lr
	; .align 2, 0
	thumb_func_end ov8_0224C3B0

	thumb_func_start ov8_0224C3B4
ov8_0224C3B4: ; 0x0224C3B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, [r5, #0]
	mov r6, #0x6d
	ldr r7, [r0, #0x48]
	mov r0, #0xa
	str r7, [r4, #0]
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	mov r1, #4
	bl sub_02025F34
	cmp r0, #1
	bne _0224C3EC
	mov r6, #0x5b
	b _0224C3F8
_0224C3EC:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	cmp r0, #0x5a
	bne _0224C3F8
	mov r6, #0x77
_0224C3F8:
	add r0, r4, #0
	add r0, #0xc
	add r1, r6, #0
	mov r2, #0x20
	bl memset
	ldr r0, [r4, #4]
	mov r3, #0
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r7, #0
	sub r1, r3, #1
	mov r2, #1
	bl ov5_021D57FC
	ldrb r2, [r4, #0xa]
	ldrb r5, [r4, #9]
	mov r1, #0
	lsl r3, r2, #0xa
	ldrb r2, [r4, #8]
	lsl r5, r5, #5
	add r0, r7, #0
	orr r2, r5
	orr r2, r3
	lsl r2, r2, #0x10
	ldrb r3, [r4, #0xb]
	mvn r1, r1
	lsr r2, r2, #0x10
	bl ov5_021D5834
	add r4, #0xc
	add r0, r7, #0
	add r1, r4, #0
	bl ov5_021D585C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov8_0224C3B4

	thumb_func_start ov8_0224C444
ov8_0224C444: ; 0x0224C444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #0]
	mov r7, #0
	ldr r0, [r0, #0x38]
	add r5, r6, #4
	str r0, [sp]
	str r7, [sp, #0xc]
	bl sub_02062858
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, sp, #8
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _0224C4EE
_0224C46C:
	ldr r0, [sp, #8]
	bl sub_02062910
	add r4, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_020629D8
	str r0, [r5, #8]
	cmp r4, #0xff
	beq _0224C492
	ldr r0, [sp, #8]
	bl sub_02062950
	cmp r0, #1
	bne _0224C4DE
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0224C4DE
_0224C492:
	mov r0, #1
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	bl sub_0206298C
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	cmp r4, #0xff
	str r0, [r5, #0x14]
	str r6, [r5, #0x18]
	bne _0224C4AC
	mov r0, #2
	str r0, [r5, #8]
_0224C4AC:
	ldr r0, [r6, #0]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x40]
	ldr r2, [r5, #8]
	mov r3, #3
	bl ov5_021F4840
	ldr r2, [sp, #4]
	str r0, [r5, #0x10]
	ldr r0, _0224C4F4 ; =ov8_0224C518
	add r1, r5, #0
	add r2, r2, #2
	bl sub_0200D9E8
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _0224C4D2
	bl GF_AssertFail
_0224C4D2:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0224C4DC
	bl GF_AssertFail
_0224C4DC:
	add r5, #0x1c
_0224C4DE:
	ldr r0, [sp]
	add r1, sp, #8
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _0224C46C
_0224C4EE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C4F4: .word ov8_0224C518
	thumb_func_end ov8_0224C444

	thumb_func_start ov8_0224C4F8
ov8_0224C4F8: ; 0x0224C4F8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #4
	add r6, r4, #0
_0224C500:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0224C50E
	ldr r0, [r5, #0xc]
	bl sub_0200DA58
	str r6, [r5, #0]
_0224C50E:
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x10
	blt _0224C500
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_0224C4F8

	thumb_func_start ov8_0224C518
ov8_0224C518: ; 0x0224C518
	bx lr
	; .align 2, 0
	thumb_func_end ov8_0224C518

	thumb_func_start ov8_0224C51C
ov8_0224C51C: ; 0x0224C51C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #2
	beq _0224C538
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C538:
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x3c]
	ldr r4, [r5, #0x38]
	str r0, [sp, #0x10]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_0206298C
	bl sub_0206447C
	add r7, r0, #0
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _0224C5D0
_0224C564:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	beq _0224C5C0
	add r0, r5, #0
	bl sub_02067F88
	cmp r0, #1
	bne _0224C5C0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	mov r3, #2
	bl sub_02067D58
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _0224C5C0
	ldr r0, [sp, #0x18]
	bl sub_02062960
	add r4, r0, #0
	ldr r1, _0224C5D8 ; =0x00000F58
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl sub_0203E880
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, r7, #0
	bl sub_0203E8B0
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224C5C0:
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _0224C564
_0224C5D0:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C5D8: .word 0x00000F58
	thumb_func_end ov8_0224C51C

	thumb_func_start ov8_0224C5DC
ov8_0224C5DC: ; 0x0224C5DC
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #2
	beq _0224C5F4
	mov r0, #0
	pop {r4, pc}
_0224C5F4:
	add r0, r4, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062FF4
	add r0, r4, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02063004
	add r0, r4, #0
	mov r1, #2
	bl sub_020629FC
	add r0, r4, #0
	mov r1, #2
	bl sub_02062A04
	add r0, r4, #0
	mov r1, #3
	bl sub_020633A8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov8_0224C5DC

	thumb_func_start ov8_0224C62C
ov8_0224C62C: ; 0x0224C62C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r3, #0]
	add r6, r2, #0
	str r0, [sp]
	str r3, [sp, #4]
	cmp r1, #0
	beq _0224C644
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C644:
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	bl sub_02027F80
	cmp r0, #2
	beq _0224C65C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C65C:
	add r0, r4, #0
	mov r1, #2
	bl sub_02027F6C
	add r7, r0, #0
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #8
	bne _0224C674
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C674:
	ldr r0, [sp]
	ldr r2, _0224C6D0 ; =0x0224C8D4
	ldr r0, [r0, #0x1c]
	mov r4, #0
	ldr r1, [r0, #0]
_0224C67E:
	ldr r0, [r2, #0]
	cmp r0, r1
	beq _0224C68C
	add r4, r4, #1
	add r2, #0x1c
	cmp r4, #2
	blt _0224C67E
_0224C68C:
	cmp r4, #2
	bne _0224C694
	bl GF_AssertFail
_0224C694:
	ldr r0, _0224C6D4 ; =0x0224C708
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	ldr r1, [r0, #0]
	cmp r1, #8
	beq _0224C6C6
	mov r4, #6
	mov r3, #4
_0224C6A4:
	ldrsh r2, [r0, r3]
	cmp r2, r5
	bne _0224C6BE
	ldrsh r2, [r0, r4]
	cmp r2, r6
	bne _0224C6BE
	mov r2, #2
	ldrsh r2, [r7, r2]
	cmp r1, r2
	bne _0224C6BE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C6BE:
	add r0, #8
	ldr r1, [r0, #0]
	cmp r1, #8
	bne _0224C6A4
_0224C6C6:
	ldr r1, [sp, #4]
	mov r0, #1
	str r0, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C6D0: .word Unk_ov8_0224C8D4
_0224C6D4: .word Unk_ov8_0224C708
	thumb_func_end ov8_0224C62C

	.rodata


	.global Unk_ov8_0224C6D8
Unk_ov8_0224C6D8: ; 0x0224C6D8
	.incbin "incbin/overlay8_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov8_0224C6E0
Unk_ov8_0224C6E0: ; 0x0224C6E0
	.incbin "incbin/overlay8_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov8_0224C6E8
Unk_ov8_0224C6E8: ; 0x0224C6E8
	.incbin "incbin/overlay8_rodata.bin", 0x10, 0x18 - 0x10

	.global Unk_ov8_0224C6F0
Unk_ov8_0224C6F0: ; 0x0224C6F0
	.incbin "incbin/overlay8_rodata.bin", 0x18, 0x20 - 0x18

	.global Unk_ov8_0224C6F8
Unk_ov8_0224C6F8: ; 0x0224C6F8
	.incbin "incbin/overlay8_rodata.bin", 0x20, 0x28 - 0x20

	.global Unk_ov8_0224C700
Unk_ov8_0224C700: ; 0x0224C700
	.incbin "incbin/overlay8_rodata.bin", 0x28, 0x30 - 0x28

	.global Unk_ov8_0224C708
Unk_ov8_0224C708: ; 0x0224C708
	.incbin "incbin/overlay8_rodata.bin", 0x30, 0x38 - 0x30

	.global Unk_ov8_0224C710
Unk_ov8_0224C710: ; 0x0224C710
	.incbin "incbin/overlay8_rodata.bin", 0x38, 0x44 - 0x38

	.global Unk_ov8_0224C71C
Unk_ov8_0224C71C: ; 0x0224C71C
	.incbin "incbin/overlay8_rodata.bin", 0x44, 0x50 - 0x44

	.global Unk_ov8_0224C728
Unk_ov8_0224C728: ; 0x0224C728
	.incbin "incbin/overlay8_rodata.bin", 0x50, 0x5C - 0x50

	.global Unk_ov8_0224C734
Unk_ov8_0224C734: ; 0x0224C734
	.incbin "incbin/overlay8_rodata.bin", 0x5C, 0x68 - 0x5C

	.global Unk_ov8_0224C740
Unk_ov8_0224C740: ; 0x0224C740
	.incbin "incbin/overlay8_rodata.bin", 0x68, 0x74 - 0x68

	.global Unk_ov8_0224C74C
Unk_ov8_0224C74C: ; 0x0224C74C
	.incbin "incbin/overlay8_rodata.bin", 0x74, 0x80 - 0x74

	.global Unk_ov8_0224C758
Unk_ov8_0224C758: ; 0x0224C758
	.incbin "incbin/overlay8_rodata.bin", 0x80, 0x8C - 0x80

	.global Unk_ov8_0224C764
Unk_ov8_0224C764: ; 0x0224C764
	.incbin "incbin/overlay8_rodata.bin", 0x8C, 0x9C - 0x8C

	.global Unk_ov8_0224C774
Unk_ov8_0224C774: ; 0x0224C774
	.incbin "incbin/overlay8_rodata.bin", 0x9C, 0xB0 - 0x9C

	.global Unk_ov8_0224C788
Unk_ov8_0224C788: ; 0x0224C788
	.incbin "incbin/overlay8_rodata.bin", 0xB0, 0xC8 - 0xB0

	.global Unk_ov8_0224C7A0
Unk_ov8_0224C7A0: ; 0x0224C7A0
	.incbin "incbin/overlay8_rodata.bin", 0xC8, 0xE0 - 0xC8

	.global Unk_ov8_0224C7B8
Unk_ov8_0224C7B8: ; 0x0224C7B8
	.incbin "incbin/overlay8_rodata.bin", 0xE0, 0xF8 - 0xE0

	.global Unk_ov8_0224C7D0
Unk_ov8_0224C7D0: ; 0x0224C7D0
	.incbin "incbin/overlay8_rodata.bin", 0xF8, 0x118 - 0xF8

	.global Unk_ov8_0224C7F0
Unk_ov8_0224C7F0: ; 0x0224C7F0
	.incbin "incbin/overlay8_rodata.bin", 0x118, 0x140 - 0x118

	.global Unk_ov8_0224C818
Unk_ov8_0224C818: ; 0x0224C818
	.incbin "incbin/overlay8_rodata.bin", 0x140, 0x16C - 0x140

	.global Unk_ov8_0224C844
Unk_ov8_0224C844: ; 0x0224C844
	.incbin "incbin/overlay8_rodata.bin", 0x16C, 0x19C - 0x16C

	.global Unk_ov8_0224C874
Unk_ov8_0224C874: ; 0x0224C874
	.incbin "incbin/overlay8_rodata.bin", 0x19C, 0x1CC - 0x19C

	.global Unk_ov8_0224C8A4
Unk_ov8_0224C8A4: ; 0x0224C8A4
	.incbin "incbin/overlay8_rodata.bin", 0x1CC, 0x1FC - 0x1CC

	.global Unk_ov8_0224C8D4
Unk_ov8_0224C8D4: ; 0x0224C8D4
	.incbin "incbin/overlay8_rodata.bin", 0x1FC, 0x234 - 0x1FC

	.global Unk_ov8_0224C90C
Unk_ov8_0224C90C: ; 0x0224C90C
	.incbin "incbin/overlay8_rodata.bin", 0x234, 0x27C - 0x234

	.global Unk_ov8_0224C954
Unk_ov8_0224C954: ; 0x0224C954
	.incbin "incbin/overlay8_rodata.bin", 0x27C, 0x2C4 - 0x27C

	.global Unk_ov8_0224C99C
Unk_ov8_0224C99C: ; 0x0224C99C
	.incbin "incbin/overlay8_rodata.bin", 0x2C4, 0x31C - 0x2C4

	.global Unk_ov8_0224C9F4
Unk_ov8_0224C9F4: ; 0x0224C9F4
	.incbin "incbin/overlay8_rodata.bin", 0x31C, 0x384 - 0x31C

	.global Unk_ov8_0224CA5C
Unk_ov8_0224CA5C: ; 0x0224CA5C
	.incbin "incbin/overlay8_rodata.bin", 0x384, 0x3ED - 0x384

	.global Unk_ov8_0224CAC5
Unk_ov8_0224CAC5: ; 0x0224CAC5
	.incbin "incbin/overlay8_rodata.bin", 0x3ED, 0x490 - 0x3ED

	.global Unk_ov8_0224CB68
Unk_ov8_0224CB68: ; 0x0224CB68
	.incbin "incbin/overlay8_rodata.bin", 0x490, 0x610 - 0x490

	.global Unk_ov8_0224CCE8
Unk_ov8_0224CCE8: ; 0x0224CCE8
	.incbin "incbin/overlay8_rodata.bin", 0x610, 0x95D - 0x610

	.global Unk_ov8_0224D035
Unk_ov8_0224D035: ; 0x0224D035
	.incbin "incbin/overlay8_rodata.bin", 0x95D, 0x1960 - 0x95D

	.global Unk_ov8_0224E038
Unk_ov8_0224E038: ; 0x0224E038
	.incbin "incbin/overlay8_rodata.bin", 0x1960, 0x196C - 0x1960

	.global Unk_ov8_0224E044
Unk_ov8_0224E044: ; 0x0224E044
	.incbin "incbin/overlay8_rodata.bin", 0x196C, 0x1978 - 0x196C

	.global Unk_ov8_0224E050
Unk_ov8_0224E050: ; 0x0224E050
	.incbin "incbin/overlay8_rodata.bin", 0x1978, 0x1984 - 0x1978

	.global Unk_ov8_0224E05C
Unk_ov8_0224E05C: ; 0x0224E05C
	.incbin "incbin/overlay8_rodata.bin", 0x1984, 0x1990 - 0x1984

	.global Unk_ov8_0224E068
Unk_ov8_0224E068: ; 0x0224E068
	.incbin "incbin/overlay8_rodata.bin", 0x1990, 0x19A0 - 0x1990

	.global Unk_ov8_0224E078
Unk_ov8_0224E078: ; 0x0224E078
	.incbin "incbin/overlay8_rodata.bin", 0x19A0, 0x19B0 - 0x19A0

	.global Unk_ov8_0224E088
Unk_ov8_0224E088: ; 0x0224E088
	.incbin "incbin/overlay8_rodata.bin", 0x19B0, 0x19C0 - 0x19B0

	.global Unk_ov8_0224E098
Unk_ov8_0224E098: ; 0x0224E098
	.incbin "incbin/overlay8_rodata.bin", 0x19C0, 0x19D0 - 0x19C0

	.global Unk_ov8_0224E0A8
Unk_ov8_0224E0A8: ; 0x0224E0A8
	.incbin "incbin/overlay8_rodata.bin", 0x19D0, 0x1A48 - 0x19D0

	.global Unk_ov8_0224E120
Unk_ov8_0224E120: ; 0x0224E120
	.incbin "incbin/overlay8_rodata.bin", 0x1A48, 0x1C64 - 0x1A48

	.global Unk_ov8_0224E33C
Unk_ov8_0224E33C: ; 0x0224E33C
	.incbin "incbin/overlay8_rodata.bin", 0x1C64, 0x400


	.data


	.global Unk_ov8_0224E740
Unk_ov8_0224E740: ; 0x0224E740
	.incbin "incbin/overlay8_data.bin", 0x0, 0x3C

