	.include "macros/function.inc"
	.include "include/ov12_0222D6B0.inc"

	

	.text


	thumb_func_start ov12_0222D6B0
ov12_0222D6B0: ; 0x0222D6B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0222D6C2
	cmp r0, #1
	beq _0222D736
	b _0222D76A
_0222D6C2:
	ldrb r0, [r5, #6]
	cmp r0, #0xf
	bhs _0222D6CC
	add r0, r0, #1
	strb r0, [r5, #6]
_0222D6CC:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0222D6D6
	sub r0, r0, #1
	strb r0, [r5, #7]
_0222D6D6:
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #6]
	mov r6, #0
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D7B8 ; =0x04000052
	strh r1, [r0]
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	ldrb r0, [r5, #5]
	cmp r0, #0
	ble _0222D728
	ldr r4, _0222D7BC ; =0x0223A144
	add r7, r5, #0
_0222D6F4:
	add r1, sp, #0
	ldr r0, [r7, #0x14]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	ldrb r1, [r5, #4]
	ldrb r0, [r4]
	cmp r1, r0
	blo _0222D71C
	add r0, r5, r6
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrb r2, [r0, #1]
	ldrb r1, [r4, #1]
	cmp r2, r1
	blo _0222D71C
	mov r1, #0
	strb r1, [r0, #1]
_0222D71C:
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r7, r7, #4
	add r4, r4, #2
	cmp r6, r0
	blt _0222D6F4
_0222D728:
	ldrb r0, [r5, #4]
	cmp r0, #0x2d
	blo _0222D794
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0222D794
_0222D736:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0222D740
	sub r0, r0, #1
	strb r0, [r5, #6]
_0222D740:
	ldrb r0, [r5, #7]
	cmp r0, #0xf
	bhs _0222D74A
	add r0, r0, #1
	strb r0, [r5, #7]
_0222D74A:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0222D75C
	ldrb r0, [r5, #7]
	cmp r0, #0xf
	bne _0222D75C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0222D75C:
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #6]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D7B8 ; =0x04000052
	strh r1, [r0]
	b _0222D794
_0222D76A:
	ldrb r0, [r5, #5]
	mov r6, #0
	cmp r0, #0
	ble _0222D784
	add r4, r5, #0
_0222D774:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0222D774
_0222D784:
	ldr r0, [r5, #8]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222D794:
	ldrb r0, [r5, #5]
	mov r6, #0
	cmp r0, #0
	ble _0222D7B0
	add r4, r5, #0
_0222D79E:
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldrb r0, [r5, #5]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0222D79E
_0222D7B0:
	ldr r0, [r5, #0x10]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D7B8: .word 0x04000052
_0222D7BC: .word 0x0223A144
	thumb_func_end ov12_0222D6B0

	thumb_func_start ov12_0222D7C0
ov12_0222D7C0: ; 0x0222D7C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov12_0221FDE4
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	bne _0222D7DE
	bl sub_02022974
_0222D7DE:
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, sp, #4
	add r1, r7, #0
	str r7, [r4, #8]
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_02220280
	strb r0, [r4, #5]
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #0xf
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #6]
	mov r6, #1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D924 ; =0x04000052
	strh r1, [r0]
	ldr r0, [sp]
	str r0, [r4, #0x14]
	ldrb r0, [r4, #5]
	cmp r0, #1
	ble _0222D840
	add r5, r4, #4
_0222D82A:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	ldrb r0, [r4, #5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222D82A
_0222D840:
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222D894
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222D880
	add r0, r7, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222D880
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
	b _0222D888
_0222D880:
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D364
_0222D888:
	ldr r0, [r4, #0x14]
	mov r1, #0x80
	mov r2, #0x50
	bl sub_0200D4C4
	b _0222D8D4
_0222D894:
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222D8C2
	add r0, r7, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222D8C2
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D364
	b _0222D8CA
_0222D8C2:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D364
_0222D8CA:
	ldr r0, [r4, #0x14]
	mov r1, #0x80
	mov r2, #0x50
	bl sub_0200D4C4
_0222D8D4:
	ldrb r0, [r4, #5]
	mov r6, #0
	cmp r0, #0
	ble _0222D914
	add r5, r4, #0
_0222D8DE:
	add r1, r4, r6
	mov r0, #0
	strb r0, [r1, #1]
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222D90A
	mov r2, #0xfe
	ldr r0, [r5, #0x14]
	ldr r1, _0222D928 ; =0xBF800000
	lsl r2, r2, #0x16
	bl sub_0200D6E8
_0222D90A:
	ldrb r0, [r4, #5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222D8DE
_0222D914:
	ldr r1, _0222D92C ; =ov12_0222D6B0
	ldr r3, _0222D930 ; =0x0000044C
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_022201CC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D924: .word 0x04000052
_0222D928: .word 0xBF800000
_0222D92C: .word ov12_0222D6B0
_0222D930: .word 0x0000044C
	thumb_func_end ov12_0222D7C0

	thumb_func_start ov12_0222D934
ov12_0222D934: ; 0x0222D934
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldrb r0, [r4]
	mov r6, #0
	cmp r0, #3
	bls _0222D946
	b _0222DAEC
_0222D946:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222D952: ; jump table
	.short _0222D95A - _0222D952 - 2 ; case 0
	.short _0222D98E - _0222D952 - 2 ; case 1
	.short _0222DA66 - _0222D952 - 2 ; case 2
	.short _0222DAB2 - _0222D952 - 2 ; case 3
_0222D95A:
	ldrb r0, [r4, #9]
	cmp r0, #0xf
	bhs _0222D964
	add r0, r0, #1
	strb r0, [r4, #9]
_0222D964:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0222D96E
	sub r0, r0, #1
	strb r0, [r4, #0xa]
_0222D96E:
	ldrb r0, [r4, #9]
	cmp r0, #0xf
	bne _0222D980
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0222D980
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222D980:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222DB48 ; =0x04000052
	strh r1, [r0]
	b _0222DB18
_0222D98E:
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bhi _0222D9F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222D9A0: ; jump table
	.short _0222D9A8 - _0222D9A0 - 2 ; case 0
	.short _0222D9C2 - _0222D9A0 - 2 ; case 1
	.short _0222D9DC - _0222D9A0 - 2 ; case 2
	.short _0222D9DC - _0222D9A0 - 2 ; case 3
_0222D9A8:
	ldr r0, [r4, #0x18]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0200D3F4
	b _0222D9F4
_0222D9C2:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0200D3F4
	b _0222D9F4
_0222D9DC:
	ldr r0, [r4, #0x28]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0200D3F4
_0222D9F4:
	add r1, sp, #8
	ldr r0, [r4, #0x34]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	ldr r1, [r4, #0x30]
	ldr r0, _0222DB4C ; =0x0223A17C
	lsl r2, r1, #3
	ldrsh r0, [r0, r2]
	ldr r5, _0222DB50 ; =0x0223A17A
	add r3, sp, #8
	str r0, [sp]
	ldr r0, _0222DB54 ; =0x0223A140
	ldrsh r2, [r5, r2]
	ldrb r0, [r0, r1]
	mov r1, #2
	mov r5, #0
	str r0, [sp, #4]
	ldrsh r1, [r3, r1]
	add r0, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x3c
	bl ov12_02225BC8
	add r1, sp, #8
	ldr r0, [r4, #0x38]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	ldr r1, [r4, #0x30]
	ldr r0, _0222DB58 ; =0x0223A180
	lsl r2, r1, #3
	ldrsh r0, [r0, r2]
	ldr r5, _0222DB5C ; =0x0223A17E
	add r3, sp, #8
	str r0, [sp]
	ldr r0, _0222DB54 ; =0x0223A140
	ldrsh r2, [r5, r2]
	ldrb r0, [r0, r1]
	mov r1, #2
	mov r5, #0
	str r0, [sp, #4]
	ldrsh r1, [r3, r1]
	add r0, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x60
	bl ov12_02225BC8
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DB18
_0222DA66:
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x3c
	add r5, r6, #0
	bl ov12_02225C50
	cmp r0, #0
	bne _0222DA78
	add r5, r5, #1
_0222DA78:
	add r0, r4, #0
	ldr r1, [r4, #0x38]
	add r0, #0x60
	bl ov12_02225C50
	cmp r0, #0
	bne _0222DA88
	add r5, r5, #1
_0222DA88:
	cmp r5, #2
	blt _0222DB18
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bgt _0222DAAA
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _0222DB18
_0222DAAA:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DB18
_0222DAB2:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0222DABC
	sub r0, r0, #1
	strb r0, [r4, #9]
_0222DABC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xf
	bhs _0222DAC6
	add r0, r0, #1
	strb r0, [r4, #0xa]
_0222DAC6:
	ldrb r1, [r4, #0xa]
	cmp r1, #7
	blo _0222DACE
	mov r6, #1
_0222DACE:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0222DADE
	cmp r1, #0xf
	bne _0222DADE
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222DADE:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222DB48 ; =0x04000052
	strh r1, [r0]
	b _0222DB18
_0222DAEC:
	ldrb r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222DB06
	add r5, r4, #0
_0222DAF6:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222DAF6
_0222DB06:
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222DB18:
	ldrb r0, [r4]
	cmp r0, #3
	bhs _0222DB3E
	cmp r6, #0
	bne _0222DB3E
	ldrb r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222DB3E
	add r5, r4, #0
_0222DB2C:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222DB2C
_0222DB3E:
	ldr r0, [r4, #0x14]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DB48: .word 0x04000052
_0222DB4C: .word 0x0223A17C
_0222DB50: .word 0x0223A17A
_0222DB54: .word 0x0223A140
_0222DB58: .word 0x0223A180
_0222DB5C: .word 0x0223A17E
	thumb_func_end ov12_0222D934

	thumb_func_start ov12_0222DB60
ov12_0222DB60: ; 0x0222DB60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_0221FDE4
	mov r1, #0x84
	bl sub_02018144
	add r4, r0, #0
	bne _0222DB7E
	bl sub_02022974
_0222DB7E:
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	str r0, [r4, #0x30]
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [r4, #0xc]
	add r0, sp, #4
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov12_02235780
	mov r1, #0
	strb r1, [r4, #9]
	mov r0, #0xf
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	ldrb r2, [r4, #9]
	lsl r0, r0, #8
	orr r2, r0
	ldr r0, _0222DC88 ; =0x04000052
	strh r2, [r0]
	ldr r0, [r4, #0xc]
	bl ov12_02220280
	strb r0, [r4, #8]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #8]
	mov r6, #1
	cmp r0, #1
	ble _0222DBE2
	add r5, r4, #4
	add r7, sp, #4
_0222DBCC:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0x18]
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222DBCC
_0222DBE2:
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0200D364
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl sub_0200D364
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200D7D4
	ldrb r0, [r4, #8]
	mov r7, #0
	cmp r0, #0
	ble _0222DC58
	ldr r6, _0222DC8C ; =0x0223A162
	add r5, r4, #0
_0222DC2E:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D390
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x18]
	bl sub_0200D4C4
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldrb r0, [r4, #8]
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, r0
	blt _0222DC2E
_0222DC58:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp]
	ldr r1, _0222DC90 ; =ov12_0222D934
	ldr r3, _0222DC94 ; =0x0000044C
	add r2, r4, #0
	bl ov12_022201CC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DC88: .word 0x04000052
_0222DC8C: .word 0x0223A162
_0222DC90: .word ov12_0222D934
_0222DC94: .word 0x0000044C
	thumb_func_end ov12_0222DB60

	thumb_func_start ov12_0222DC98
ov12_0222DC98: ; 0x0222DC98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #7
	bls _0222DCA8
	b _0222DE00
_0222DCA8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DCB4: ; jump table
	.short _0222DCC4 - _0222DCB4 - 2 ; case 0
	.short _0222DCD8 - _0222DCB4 - 2 ; case 1
	.short _0222DCFA - _0222DCB4 - 2 ; case 2
	.short _0222DD28 - _0222DCB4 - 2 ; case 3
	.short _0222DD56 - _0222DCB4 - 2 ; case 4
	.short _0222DD74 - _0222DCB4 - 2 ; case 5
	.short _0222DD9C - _0222DCB4 - 2 ; case 6
	.short _0222DDE4 - _0222DCB4 - 2 ; case 7
_0222DCC4:
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0xa
	bhi _0222DCE4
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DCD8:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhs _0222DCE6
_0222DCE4:
	b _0222DE0E
_0222DCE6:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DCFA:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhi _0222DD1C
	ldr r0, [r4, #0x38]
	ldr r1, _0222DE18 ; =0x3DCCCCCD
	bl _f_add
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	b _0222DE0E
_0222DD1C:
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD28:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bhi _0222DD4A
	ldr r0, [r4, #0x38]
	ldr r1, _0222DE18 ; =0x3DCCCCCD
	bl _f_sub
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	b _0222DE0E
_0222DD4A:
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD56:
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0xa
	bhi _0222DE0E
	ldr r0, [r4, #0x3c]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD74:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0x1e
	bls _0222DD8C
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD8C:
	ldr r0, [r4, #0x3c]
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _0222DE0E
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DD9C:
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	add r5, r1, #0
	add r2, sp, #8
	ldr r0, [r4, #0x10]
	add r1, sp, #8
	add r2, #2
	add r5, #0xa
	bl sub_0200D550
	ldrb r0, [r4, #0xf]
	add r3, sp, #8
	mov r1, #0
	lsl r2, r0, #2
	ldr r0, _0222DE1C ; =0x0223A14C
	ldrsh r0, [r0, r2]
	str r0, [sp]
	lsl r0, r5, #0x10
	ldr r5, _0222DE20 ; =0x0223A14A
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r5, #2
	ldrsh r1, [r3, r1]
	ldrsh r3, [r3, r5]
	add r0, #0x14
	bl ov12_02225BC8
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	b _0222DE0E
_0222DDE4:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_02225C50
	cmp r0, #0
	bne _0222DE0E
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0222DE00:
	ldr r0, [r4, #0x3c]
	mov r1, #3
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_0222DE0E:
	ldr r0, [r4, #0x10]
	bl sub_0200D330
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222DE18: .word 0x3DCCCCCD
_0222DE1C: .word 0x0223A14C
_0222DE20: .word 0x0223A14A
	thumb_func_end ov12_0222DC98

	thumb_func_start ov12_0222DE24
ov12_0222DE24: ; 0x0222DE24
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0222DEE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222DE3C: ; jump table
	.short _0222DE44 - _0222DE3C - 2 ; case 0
	.short _0222DE70 - _0222DE3C - 2 ; case 1
	.short _0222DE92 - _0222DE3C - 2 ; case 2
	.short _0222DEBE - _0222DE3C - 2 ; case 3
_0222DE44:
	ldrb r6, [r4, #2]
	mov r3, #1
	mov r2, #0
	cmp r6, #0
	ble _0222DE64
	ldr r0, _0222DEF8 ; =0x00000514
	add r5, r4, #0
_0222DE52:
	ldr r1, [r5, r0]
	cmp r1, #1
	beq _0222DE5C
	mov r3, #0
	b _0222DE64
_0222DE5C:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, r6
	blt _0222DE52
_0222DE64:
	cmp r3, #1
	bne _0222DEF0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DE70:
	ldrb r0, [r4, #2]
	mov r5, #0
	cmp r0, #0
	ble _0222DE8A
	ldr r0, _0222DEF8 ; =0x00000514
	add r3, r4, #0
	mov r2, #2
_0222DE7E:
	str r2, [r3, r0]
	ldrb r1, [r4, #2]
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, r1
	blt _0222DE7E
_0222DE8A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DE92:
	ldrb r5, [r4, #2]
	mov r2, #1
	mov r6, #0
	cmp r5, #0
	ble _0222DEB2
	ldr r0, _0222DEF8 ; =0x00000514
	add r3, r4, #0
_0222DEA0:
	ldr r1, [r3, r0]
	cmp r1, #3
	beq _0222DEAA
	mov r2, #0
	b _0222DEB2
_0222DEAA:
	add r6, r6, #1
	add r3, r3, #4
	cmp r6, r5
	blt _0222DEA0
_0222DEB2:
	cmp r2, #1
	bne _0222DEF0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DEBE:
	ldrb r0, [r4, #2]
	mov r6, #0
	cmp r0, #0
	ble _0222DED8
	add r5, r4, #0
_0222DEC8:
	ldr r0, [r5, #0x24]
	bl sub_0200D0F4
	ldrb r0, [r4, #2]
	add r6, r6, #1
	add r5, #0x40
	cmp r6, r0
	blt _0222DEC8
_0222DED8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222DEF0
_0222DEE0:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0222DEF0:
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222DEF8: .word 0x00000514
	thumb_func_end ov12_0222DE24

	thumb_func_start ov12_0222DEFC
ov12_0222DEFC: ; 0x0222DEFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp]
	add r4, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl ov12_0221FDE4
	ldr r1, _0222E064 ; =0x00000564
	bl sub_02018144
	add r6, r0, #0
	bne _0222DF1A
	bl sub_02022974
_0222DF1A:
	mov r0, #0
	strb r0, [r6, #1]
	strb r0, [r6]
	str r4, [r6, #0xc]
	ldr r0, [sp]
	str r5, [r6, #0x10]
	str r0, [r6, #8]
	ldr r1, [sp]
	add r0, sp, #0x1c
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r6, #8]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r6, #8]
	mov r1, #0
	bl ov12_02220280
	strb r0, [r6, #2]
	mov r0, #0xc
	strb r0, [r6, #2]
	str r7, [r6, #0x24]
	mov r4, #0
	ldrb r0, [r6, #2]
	str r4, [sp, #4]
	cmp r0, #0
	ble _0222E052
	ldr r0, _0222E068 ; =0x00000514
	add r5, r6, #0
	add r0, r6, r0
	str r0, [sp, #0x10]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	str r0, [sp, #0xc]
_0222DF66:
	cmp r4, #0
	beq _0222DF76
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x24]
_0222DF76:
	add r1, r5, #0
	ldr r7, [r5, #0x24]
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	add r1, #0xa
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x22
	strb r1, [r0]
	bl sub_0201D2E8
	mov r1, #6
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r5, #0x4c]
	ldr r0, [r6, #8]
	ldr r1, _0222E06C ; =0x0223A19A
	str r0, [r5, #0x14]
	ldr r0, [r6, #0xc]
	str r0, [r5, #0x18]
	ldr r0, [r6, #0x10]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x50]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #8]
	bl sub_0201D2E8
	ldr r2, [sp, #8]
	mov r1, #6
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	ldr r2, [sp, #8]
	mov r0, #2
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x14]
	bl sub_0201D2E8
	ldr r2, [sp, #8]
	mov r1, #4
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	ldr r2, _0222E06C ; =0x0223A19A
	ldr r0, [sp, #0x18]
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_0200D4C4
	add r0, r7, #0
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, [r5, #0x4c]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_0200D6E8
	add r0, r7, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp]
	ldr r1, _0222E070 ; =ov12_0222DC98
	ldr r2, [sp, #0xc]
	ldr r3, _0222E074 ; =0x0000044B
	bl ov12_022201CC
	ldr r0, [sp, #4]
	mov r1, #6
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	add r0, #0x40
	str r0, [sp, #0xc]
	ldrb r0, [r6, #2]
	add r5, #0x40
	cmp r4, r0
	blt _0222DF66
_0222E052:
	ldr r0, [sp]
	ldr r1, _0222E078 ; =ov12_0222DE24
	ldr r3, _0222E07C ; =0x0000044D
	add r2, r6, #0
	bl ov12_022201CC
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E064: .word 0x00000564
_0222E068: .word 0x00000514
_0222E06C: .word 0x0223A19A
_0222E070: .word ov12_0222DC98
_0222E074: .word 0x0000044B
_0222E078: .word ov12_0222DE24
_0222E07C: .word 0x0000044D
	thumb_func_end ov12_0222DEFC

	thumb_func_start ov12_0222E080
ov12_0222E080: ; 0x0222E080
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi _0222E166
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E09A: ; jump table
	.short _0222E0A2 - _0222E09A - 2 ; case 0
	.short _0222E0C0 - _0222E09A - 2 ; case 1
	.short _0222E112 - _0222E09A - 2 ; case 2
	.short _0222E13C - _0222E09A - 2 ; case 3
_0222E0A2:
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E0C0:
	add r0, r4, #0
	add r0, #0x2c
	bl ov12_02226454
	cmp r0, #0
	beq _0222E18C
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov12_022233EC
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov12_022266E8
	add r6, r0, #0
	ldr r0, [r4, #8]
	bl ov12_0221FDE4
	mov r1, #0xc8
	str r1, [sp]
	mov r3, #3
	str r5, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xcc
	lsl r3, r3, #0xe
	bl ov12_0222662C
	str r0, [r4, #0x28]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E112:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0x78
	blt _0222E18C
	ldr r0, [r4, #0x28]
	bl ov12_0222669C
	mov r1, #2
	mov r2, #0x10
	str r1, [sp]
	add r0, r4, #0
	str r2, [sp, #4]
	add r0, #0x2c
	add r3, r2, #0
	bl ov12_02226424
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E13C:
	add r0, r4, #0
	add r0, #0x2c
	bl ov12_02226454
	cmp r0, #0
	beq _0222E18C
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _0222E18C
_0222E166:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0222E1A4 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222664
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_0222E18C:
	ldr r0, [r4, #0x24]
	bl sub_0200D330
	ldr r0, [r4, #0x20]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0222E1A4: .word 0xFFFF1FFF
	thumb_func_end ov12_0222E080

	thumb_func_start ov12_0222E1A8
ov12_0222E1A8: ; 0x0222E1A8
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x54
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl ov12_0223595C
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022202C0
	mov r1, #2
	str r0, [r4, #0x20]
	bl sub_0200D810
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0222E23C ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0, #0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0222E240 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x17
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov12_022202C0
	mov r1, #1
	str r0, [r4, #0x24]
	bl sub_0200D810
	mov r1, #0x10
	str r1, [sp]
	add r0, r4, #0
	mov r2, #2
	str r1, [sp, #4]
	add r0, #0x2c
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222590
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldr r0, [r4, #8]
	ldr r1, _0222E244 ; =ov12_0222E080
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0222E23C: .word 0xFFFF1FFF
_0222E240: .word 0xFFFFC0FF
_0222E244: .word ov12_0222E080
	thumb_func_end ov12_0222E1A8

	thumb_func_start ov12_0222E248
ov12_0222E248: ; 0x0222E248
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200D408
	cmp r0, #1
	bne _0222E25A
	add r0, r4, #0
	bl sub_0200D330
_0222E25A:
	pop {r4, pc}
	thumb_func_end ov12_0222E248

	thumb_func_start ov12_0222E25C
ov12_0222E25C: ; 0x0222E25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0222E280
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x30]
	bl ov12_0222E248
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x34]
	bl ov12_0222E248
	b _0222E286
_0222E280:
	sub r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0, #0x1c]
_0222E286:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	bl ov12_0222E248
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x2c]
	bl ov12_0222E248
	ldr r4, [sp, #4]
	mov r6, #0
	add r7, r6, #0
	add r5, r4, #0
_0222E29E:
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0x28
	blt _0222E2B8
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
_0222E2B8:
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #4
	blt _0222E29E
	cmp r6, #4
	bne _0222E2EC
	ldr r4, [sp, #4]
	mov r5, #0
_0222E2CA:
	ldr r0, [r4, #0x28]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _0222E2CA
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	bl ov12_02220220
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E2EC:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222E25C

	thumb_func_start ov12_0222E2F8
ov12_0222E2F8: ; 0x0222E2F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r1, #0x38
	add r5, r0, #0
	add r4, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	mov r0, #0xa
	strh r0, [r6, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223595C
	ldr r1, [r6, #4]
	add r0, sp, #0
	bl ov12_0222329C
	str r4, [r6, #0x28]
	mov r0, #0
	strh r0, [r6, #0x1e]
	mov r7, #1
	add r4, r6, #2
	add r5, r6, #4
_0222E328:
	mov r0, #0
	strh r0, [r4, #0x1e]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0
	bl sub_0200CE6C
	str r0, [r5, #0x28]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #4
	blt _0222E328
	ldr r0, [r6, #0x28]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [r6, #0x2c]
	mov r1, #1
	bl sub_0200D7D4
	mov r1, #0x1f
	ldr r0, [r6, #0x28]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5DC
	mov r1, #0x1f
	ldr r0, [r6, #0x2c]
	mvn r1, r1
	mov r2, #0x20
	bl sub_0200D5DC
	ldr r0, [r6, #0x30]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200D5DC
	mov r1, #0x20
	ldr r0, [r6, #0x34]
	add r2, r1, #0
	bl sub_0200D5DC
	ldr r0, [r6, #4]
	ldr r1, _0222E38C ; =ov12_0222E25C
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E38C: .word ov12_0222E25C
	thumb_func_end ov12_0222E2F8

	thumb_func_start ov12_0222E390
ov12_0222E390: ; 0x0222E390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r4, #0
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	add r6, r5, #0
	add r7, r5, #0
_0222E3A0:
	mov r0, #0x22
	ldrsh r0, [r6, r0]
	add r0, r0, #1
	strh r0, [r6, #0x22]
	mov r0, #0x22
	ldrsh r0, [r6, r0]
	cmp r0, #0x14
	blt _0222E3F2
	ldr r0, [r7, #0x2c]
	bl ov12_0222E248
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x6e
	bne _0222E3F2
	mov r1, #0
	mvn r1, r1
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0xf
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #0x58]
_0222E3F2:
	add r4, r4, #1
	add r6, r6, #2
	add r7, r7, #4
	cmp r4, #4
	blt _0222E3A0
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x32
	bne _0222E436
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x3c]
_0222E436:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x3c
	bne _0222E470
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x40]
_0222E470:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x46
	bne _0222E4AA
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x44]
_0222E4AA:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x50
	bne _0222E4E4
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x48]
_0222E4E4:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x5a
	bne _0222E51E
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x4c]
_0222E51E:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x64
	bne _0222E558
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0222E610 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0222E614 ; =0x000003EA
	str r0, [sp, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl ov12_02226870
	str r0, [r5, #0x50]
_0222E558:
	mov r1, #0x22
	ldrsh r0, [r5, r1]
	cmp r0, #0x6e
	bne _0222E592
	sub r1, #0x23
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0xf
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #0x58]
_0222E592:
	mov r0, #0x22
	ldrsh r0, [r5, r0]
	cmp r0, #0x6e
	blt _0222E5CA
	ldr r0, [r5, #0x54]
	cmp r0, #0
	ble _0222E5A4
	sub r0, r0, #1
	str r0, [r5, #0x54]
_0222E5A4:
	ldr r0, [r5, #0x58]
	cmp r0, #0xf
	bge _0222E5AE
	add r0, r0, #1
	str r0, [r5, #0x58]
_0222E5AE:
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x54]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222E618 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _0222E5CA
	ldr r0, [r5, #0x58]
	cmp r0, #0xf
	bne _0222E5CA
	mov r0, #4
	str r0, [sp, #0x20]
_0222E5CA:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bne _0222E606
	mov r6, #0
	add r4, r5, #0
_0222E5D4:
	ldr r0, [r4, #0x2c]
	bl sub_0200D0F4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222E5D4
	mov r6, #0
	add r4, r5, #0
_0222E5E6:
	ldr r0, [r4, #0x3c]
	bl ov12_02226858
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _0222E5E6
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222E606:
	ldr r0, [r5, #0x10]
	bl sub_0200C7EC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E610: .word 0x0000FFFF
_0222E614: .word 0x000003EA
_0222E618: .word 0x04000052
	thumb_func_end ov12_0222E390

	thumb_func_start ov12_0222E61C
ov12_0222E61C: ; 0x0222E61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r1, #0x5c
	str r0, [sp]
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0xa
	strh r0, [r4, #0x20]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223595C
	ldr r1, [r4, #4]
	add r0, sp, #0xc
	bl ov12_0222329C
	str r5, [r4, #0x2c]
	mov r0, #0
	strh r0, [r4, #0x22]
	mov r0, #1
	str r0, [sp, #8]
	mov r7, #5
	add r6, r4, #2
	add r5, r4, #4
_0222E650:
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r1, r2
	add r0, r7, r0
	strh r0, [r6, #0x22]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [r5, #0x2c]
	ldr r0, [sp, #8]
	add r7, r7, #5
	add r0, r0, #1
	add r6, r6, #2
	add r5, r5, #4
	str r0, [sp, #8]
	cmp r0, #4
	blt _0222E650
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_0200D7D4
	ldr r0, [sp]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	add r0, r5, #0
	mov r1, #0x29
	bl sub_020080C0
	ldr r0, [sp]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223525C
	cmp r0, #3
	bne _0222E6D2
	mov r7, #0x8c
	b _0222E6D4
_0222E6D2:
	mov r7, #0x54
_0222E6D4:
	mov r6, #0
	add r5, r4, #0
_0222E6D8:
	ldr r0, [r5, #0x2c]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_0200D4C4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0222E6D8
	ldr r0, [sp]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223525C
	cmp r0, #3
	ldr r0, [r4, #0x2c]
	bne _0222E71E
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x34]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x30]
	mov r1, #0x12
	bl sub_0200D474
	ldr r0, [r4, #0x38]
	mov r1, #0x12
	bl sub_0200D474
	b _0222E73C
_0222E71E:
	mov r1, #0x12
	bl sub_0200D474
	ldr r0, [r4, #0x34]
	mov r1, #0x12
	bl sub_0200D474
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x38]
	mov r1, #0xa
	bl sub_0200D474
_0222E73C:
	mov r1, #0x1f
	ldr r0, [r4, #0x2c]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5DC
	mov r1, #0x27
	ldr r0, [r4, #0x38]
	mvn r1, r1
	mov r2, #4
	bl sub_0200D5DC
	ldr r0, [r4, #0x34]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r4, #0x30]
	mov r1, #0x28
	mov r2, #4
	bl sub_0200D5DC
	ldr r0, [r4, #0x2c]
	bl sub_0200D43C
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, _0222E780 ; =ov12_0222E390
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E780: .word ov12_0222E390
	thumb_func_end ov12_0222E61C

	.rodata


	.global Unk_ov12_0223A140
Unk_ov12_0223A140: ; 0x0223A140
	.incbin "incbin/overlay12_rodata.bin", 0x1BAC, 0x1BB0 - 0x1BAC

	.global Unk_ov12_0223A144
Unk_ov12_0223A144: ; 0x0223A144
	.incbin "incbin/overlay12_rodata.bin", 0x1BB0, 0x1BB6 - 0x1BB0

	.global Unk_ov12_0223A14A
Unk_ov12_0223A14A: ; 0x0223A14A
	.incbin "incbin/overlay12_rodata.bin", 0x1BB6, 0x1BCE - 0x1BB6

	.global Unk_ov12_0223A162
Unk_ov12_0223A162: ; 0x0223A162
	.incbin "incbin/overlay12_rodata.bin", 0x1BCE, 0x1BE6 - 0x1BCE

	.global Unk_ov12_0223A17A
Unk_ov12_0223A17A: ; 0x0223A17A
	.incbin "incbin/overlay12_rodata.bin", 0x1BE6, 0x1C06 - 0x1BE6

	.global Unk_ov12_0223A19A
Unk_ov12_0223A19A: ; 0x0223A19A
	.incbin "incbin/overlay12_rodata.bin", 0x1C06, 0x30

