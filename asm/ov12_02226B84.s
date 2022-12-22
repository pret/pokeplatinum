	.include "macros/function.inc"
	.include "include/ov12_02226B84.inc"

	

	.text


	thumb_func_start ov12_02226B84
ov12_02226B84: ; 0x02226B84
	push {r4, lr}
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	add r4, r0, #0
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	pop {r4, pc}
	thumb_func_end ov12_02226B84

	thumb_func_start ov12_02226BA0
ov12_02226BA0: ; 0x02226BA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _02226BB2
	cmp r0, #1
	beq _02226BD4
	b _02226C9E
_02226BB2:
	mov r0, #0x26
	ldrsh r0, [r5, r0]
	mov r1, #0x20
	mov r2, #0x22
	str r0, [sp]
	mov r3, #0x24
	add r0, r5, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, #0x7c
	bl ov12_02226108
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02226BD4:
	add r0, r5, #0
	add r0, #0x7c
	bl ov12_02226138
	cmp r0, #0
	bne _02226BE8
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02226BE8:
	ldr r2, [r5, #0x28]
	mov r1, #1
	lsl r1, r1, #8
	add r0, r2, #0
	and r0, r1
	cmp r0, r1
	bne _02226C34
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	ble _02226C82
	add r4, r5, #0
	mov r7, #0x32
_02226C02:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02226C28
	mov r2, #0x7c
	mov r3, #0x30
	ldrsh r2, [r5, r2]
	ldrsh r3, [r4, r3]
	mov r1, #0
	add r2, r2, r3
	bl sub_02007DEC
	mov r2, #0x7e
	ldrsh r3, [r5, r2]
	ldrsh r2, [r4, r7]
	ldr r0, [r4, #0x34]
	mov r1, #1
	add r2, r3, r2
	bl sub_02007DEC
_02226C28:
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _02226C02
	b _02226C82
_02226C34:
	lsl r0, r1, #1
	and r2, r0
	cmp r2, r0
	bne _02226C82
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	ble _02226C7C
	add r4, r5, #0
	mov r7, #0x32
_02226C48:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _02226C72
	mov r1, #0x7c
	mov r2, #0x30
	ldrsh r1, [r5, r1]
	ldrsh r2, [r4, r2]
	add r1, r1, r2
	mov r2, #0x7e
	ldrsh r3, [r5, r2]
	ldrsh r2, [r4, r7]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x38]
	bl sub_0200D330
_02226C72:
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _02226C48
_02226C7C:
	ldr r0, [r5, #0x10]
	bl sub_0200C7EC
_02226C82:
	mov r0, #1
	ldr r1, [r5, #0x28]
	lsl r0, r0, #0xa
	and r1, r0
	cmp r1, r0
	bne _02226CAC
	mov r3, #0x7c
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x18]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	pop {r3, r4, r5, r6, r7, pc}
_02226C9E:
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
_02226CAC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02226BA0

	thumb_func_start ov12_02226CB0
ov12_02226CB0: ; 0x02226CB0
	push {r3, r4, r5, lr}
	mov r1, #0xa0
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	strh r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0x22]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0x26]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	mov r2, #1
	lsl r2, r2, #8
	str r0, [r4, #0x28]
	add r1, r0, #0
	and r0, r2
	cmp r0, r2
	bne _02226D10
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x2c
	add r3, r4, #0
	bl ov12_02235998
	b _02226D26
_02226D10:
	lsl r0, r2, #1
	add r3, r1, #0
	and r3, r0
	cmp r3, r0
	bne _02226D26
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x2c
	add r3, r4, #0
	bl ov12_02235D74
_02226D26:
	ldr r0, [r4, #8]
	ldr r1, _02226D34 ; =ov12_02226BA0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02226D34: .word ov12_02226BA0
	thumb_func_end ov12_02226CB0

	thumb_func_start ov12_02226D38
ov12_02226D38: ; 0x02226D38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #3
	bhi _02226E02
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02226D50: ; jump table
	.short _02226D58 - _02226D50 - 2 ; case 0
	.short _02226D76 - _02226D50 - 2 ; case 1
	.short _02226DB8 - _02226D50 - 2 ; case 2
	.short _02226DC4 - _02226D50 - 2 ; case 3
_02226D58:
	ldrh r0, [r4, #0x18]
	mov r1, #4
	mov r2, #0x39
	str r0, [sp]
	ldrh r3, [r4, #0x16]
	ldr r0, _02226EA4 ; =0x04000050
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_02226D76:
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0x16]
	mov r0, #0
	sub r1, r1, #2
	cmp r2, r1
	bge _02226D88
	add r1, r2, #2
	strh r1, [r4, #0x16]
	b _02226D8A
_02226D88:
	add r0, r0, #1
_02226D8A:
	ldrh r1, [r4, #0x18]
	cmp r1, #9
	bls _02226D96
	sub r1, r1, #2
	strh r1, [r4, #0x18]
	b _02226D98
_02226D96:
	add r0, r0, #1
_02226D98:
	cmp r0, #2
	bne _02226DAA
	ldrh r0, [r4, #8]
	strh r0, [r4, #0x16]
	mov r0, #7
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_02226DAA:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02226EA8 ; =0x04000052
	strh r1, [r0]
	b _02226E1A
_02226DB8:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02226E1A
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	b _02226E1A
_02226DC4:
	ldrh r0, [r4, #0x16]
	mov r1, #0
	cmp r0, #2
	bls _02226DD2
	sub r0, r0, #2
	strh r0, [r4, #0x16]
	b _02226DD4
_02226DD2:
	add r1, r1, #1
_02226DD4:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x1d
	bhs _02226DE0
	add r0, r0, #2
	strh r0, [r4, #0x18]
	b _02226DE2
_02226DE0:
	add r1, r1, #1
_02226DE2:
	cmp r1, #2
	bne _02226DF4
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x1f
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_02226DF4:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02226EA8 ; =0x04000052
	strh r1, [r0]
	b _02226E1A
_02226E02:
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02226E1A:
	mov r1, #0x10
	ldrsh r3, [r4, r1]
	cmp r3, #0
	ble _02226E2C
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	lsl r0, r1, #5
	cmp r2, r0
	bge _02226E3A
_02226E2C:
	cmp r3, #0
	bge _02226E3E
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _02226EAC ; =0xFFFFFE64
	cmp r1, r0
	bgt _02226E3E
_02226E3A:
	mov r0, #1
	str r0, [r4, #4]
_02226E3E:
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r1, r2, r1
	strh r1, [r4, #0xc]
	ldrh r2, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	cmp r2, r1
	bhs _02226E82
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02226E68
	add r0, r0, #1
	b _02226E6A
_02226E68:
	mov r0, #0
_02226E6A:
	strh r0, [r4, #0x10]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02226E78
	add r0, r0, #1
	b _02226E7A
_02226E78:
	mov r0, #0
_02226E7A:
	strh r0, [r4, #0xe]
	mov r0, #0
	strh r0, [r4, #0x14]
	b _02226E86
_02226E82:
	add r0, r1, #1
	strh r0, [r4, #0x14]
_02226E86:
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226EA4: .word 0x04000050
_02226EA8: .word 0x04000052
_02226EAC: .word 0xFFFFFE64
	thumb_func_end ov12_02226D38

	thumb_func_start ov12_02226EB0
ov12_02226EB0: ; 0x02226EB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xb8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1c
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	strh r0, [r4, #0x12]
	mov r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02226F5C
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _02226F5C
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r0, #0xb
	mul r0, r1
	strh r0, [r4, #0xa]
	mov r1, #0xc
	add r0, r1, #0
	ldrsh r2, [r4, r1]
	sub r0, #0xd
	mul r0, r2
	strh r0, [r4, #0xc]
	mov r0, #0xe
	ldrsh r2, [r4, r0]
	sub r0, #0xf
	mul r0, r2
	strh r0, [r4, #0xe]
	mov r0, #0x10
	ldrsh r2, [r4, r0]
	sub r0, #0x11
	mul r0, r2
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	sub r0, #0x54
	strh r0, [r4, #0xc]
	b _02226F64
_02226F5C:
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r0, #0x54
	strh r0, [r4, #0xc]
_02226F64:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226F78
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	sub r0, #0xf
	mul r0, r1
	strh r0, [r4, #0xe]
_02226F78:
	mov r1, #0
	strh r1, [r4, #0x16]
	mov r0, #0x1f
	strh r0, [r4, #0x18]
	mov r0, #2
	str r1, [r4, #4]
	bl sub_02019120
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	mov r1, #0
	add r7, r0, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E3C
	add r0, r7, #0
	mov r1, #1
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	mov r1, #7
	add r2, r6, #0
	bl sub_02003050
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019EBC
	add r0, r5, #0
	mov r6, #2
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226FF8
	mov r6, #4
	b _0222700C
_02226FF8:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222700C
	mov r6, #3
_0222700C:
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E60
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	ldr r0, [r4, #0x20]
	ldr r1, _02227060 ; =ov12_02226D38
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227060: .word ov12_02226D38
	thumb_func_end ov12_02226EB0

	thumb_func_start ov12_02227064
ov12_02227064: ; 0x02227064
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #3
	bhi _0222712A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222707C: ; jump table
	.short _02227084 - _0222707C - 2 ; case 0
	.short _022270A2 - _0222707C - 2 ; case 1
	.short _022270E0 - _0222707C - 2 ; case 2
	.short _022270EC - _0222707C - 2 ; case 3
_02227084:
	ldrh r0, [r4, #0x18]
	mov r1, #4
	mov r2, #0x39
	str r0, [sp]
	ldrh r3, [r4, #0x16]
	ldr r0, _022271CC ; =0x04000050
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_022270A2:
	ldrh r0, [r4, #0x16]
	mov r1, #0
	cmp r0, #0x10
	bhs _022270B0
	add r0, r0, #2
	strh r0, [r4, #0x16]
	b _022270B2
_022270B0:
	add r1, r1, #1
_022270B2:
	ldrh r0, [r4, #0x18]
	cmp r0, #4
	bls _022270BE
	sub r0, r0, #2
	strh r0, [r4, #0x18]
	b _022270C0
_022270BE:
	add r1, r1, #1
_022270C0:
	cmp r1, #2
	bne _022270D2
	mov r0, #0x10
	strh r0, [r4, #0x16]
	mov r0, #4
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_022270D2:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _022271D0 ; =0x04000052
	strh r1, [r0]
	b _02227142
_022270E0:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02227142
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	b _02227142
_022270EC:
	ldrh r0, [r4, #0x16]
	mov r1, #0
	cmp r0, #2
	bls _022270FA
	sub r0, r0, #2
	strh r0, [r4, #0x16]
	b _022270FC
_022270FA:
	add r1, r1, #1
_022270FC:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x10
	bhs _02227108
	add r0, r0, #2
	strh r0, [r4, #0x18]
	b _0222710A
_02227108:
	add r1, r1, #1
_0222710A:
	cmp r1, #2
	bne _0222711C
	mov r0, #0
	strh r0, [r4, #0x16]
	mov r0, #0x1f
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
_0222711C:
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _022271D0 ; =0x04000052
	strh r1, [r0]
	b _02227142
_0222712A:
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02227142:
	mov r1, #0x10
	ldrsh r3, [r4, r1]
	cmp r3, #0
	ble _02227154
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	lsl r0, r1, #5
	cmp r2, r0
	bge _02227162
_02227154:
	cmp r3, #0
	bge _02227166
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _022271D4 ; =0xFFFFFE64
	cmp r1, r0
	bgt _02227166
_02227162:
	mov r0, #1
	str r0, [r4, #4]
_02227166:
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r1, r2, r1
	strh r1, [r4, #0xc]
	ldrh r2, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	cmp r2, r1
	bhs _022271AA
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02227190
	add r0, r0, #1
	b _02227192
_02227190:
	mov r0, #0
_02227192:
	strh r0, [r4, #0x10]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _022271A0
	add r0, r0, #1
	b _022271A2
_022271A0:
	mov r0, #0
_022271A2:
	strh r0, [r4, #0xe]
	mov r0, #0
	strh r0, [r4, #0x14]
	b _022271AE
_022271AA:
	add r0, r1, #1
	strh r0, [r4, #0x14]
_022271AE:
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022271CC: .word 0x04000050
_022271D0: .word 0x04000052
_022271D4: .word 0xFFFFFE64
	thumb_func_end ov12_02227064

	thumb_func_start ov12_022271D8
ov12_022271D8: ; 0x022271D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xb8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1c
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	strh r0, [r4, #0x12]
	mov r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02227284
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _02227284
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r0, #0xb
	mul r0, r1
	strh r0, [r4, #0xa]
	mov r1, #0xc
	add r0, r1, #0
	ldrsh r2, [r4, r1]
	sub r0, #0xd
	mul r0, r2
	strh r0, [r4, #0xc]
	mov r0, #0xe
	ldrsh r2, [r4, r0]
	sub r0, #0xf
	mul r0, r2
	strh r0, [r4, #0xe]
	mov r0, #0x10
	ldrsh r2, [r4, r0]
	sub r0, #0x11
	mul r0, r2
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	sub r0, #0x54
	strh r0, [r4, #0xc]
	b _0222728C
_02227284:
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r0, #0x54
	strh r0, [r4, #0xc]
_0222728C:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022272A0
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	sub r0, #0xf
	mul r0, r1
	strh r0, [r4, #0xe]
_022272A0:
	mov r0, #4
	strh r0, [r4, #0x16]
	mov r0, #0x10
	strh r0, [r4, #0x18]
	mov r1, #0
	strh r1, [r4, #0x16]
	strh r0, [r4, #0x18]
	mov r0, #2
	str r1, [r4, #4]
	bl sub_02019120
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	mov r1, #0
	add r7, r0, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E3C
	add r0, r7, #0
	mov r1, #1
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	mov r1, #7
	add r2, r6, #0
	bl sub_02003050
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02019EBC
	add r0, r5, #0
	mov r6, #2
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02227326
	mov r6, #4
	b _0222733A
_02227326:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222733A
	mov r6, #3
_0222733A:
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022234E4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	mov r0, #7
	add r1, r6, #0
	mov r3, #2
	bl sub_02006E60
	mov r3, #0xa
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	ldr r0, [r4, #0x20]
	ldr r1, _0222738C ; =ov12_02227064
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222738C: .word ov12_02227064
	thumb_func_end ov12_022271D8

	thumb_func_start ov12_02227390
ov12_02227390: ; 0x02227390
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022273A6
	cmp r0, #1
	beq _022273A6
	cmp r0, #2
	beq _022273D8
	pop {r3, r4, r5, pc}
_022273A6:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225DA0
	cmp r0, #1
	bne _022273C2
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022273C2:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x24]
	add r0, #0xc
	bl ov12_02225D50
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022273D8:
	ldr r0, [r4, #8]
	mov r1, #0xa
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02227390

	thumb_func_start ov12_02227408
ov12_02227408: ; 0x02227408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	str r5, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r7, r0, #0
	beq _02227442
	cmp r7, #2
	bne _0222744C
_02227442:
	ldr r0, [r4, #4]
	bl ov12_02220248
	str r0, [sp]
	b _02227454
_0222744C:
	ldr r0, [r4, #4]
	bl ov12_02220240
	str r0, [sp]
_02227454:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x20]
	ldr r3, [r4, #0x24]
	add r0, #0xc
	bl ov12_02225D50
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02225964
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x14]
	cmp r7, #2
	bne _02227486
	mov r0, #0
	mvn r0, r0
	mul r6, r0
_02227486:
	ldr r0, [r4, #4]
	ldr r1, [sp]
	bl ov12_022232FC
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	cmp r0, #1
	bne _022274B0
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	b _022274B8
_022274B0:
	mov r0, #0x28
	add r1, r6, #0
	mul r1, r0
	strh r1, [r4, #0x28]
_022274B8:
	strh r0, [r4, #0x2a]
	mov r2, #0x28
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xa
	bl sub_02007DEC
	mov r2, #0x2a
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl sub_02007DEC
	ldr r0, [r4, #4]
	ldr r1, _022274E0 ; =ov12_02227390
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022274E0: .word ov12_02227390
	thumb_func_end ov12_02227408

	thumb_func_start ov12_022274E4
ov12_022274E4: ; 0x022274E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x2c
	mov r2, #0x2e
	add r5, r0, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x28]
	add r0, r4, #4
	bl ov12_02225BA0
	cmp r0, #0
	bne _02227530
	mov r2, #0x2c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x2e
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x28]
	mov r1, #1
	sub r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #0x28]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02227530:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022274E4

	thumb_func_start ov12_02227534
ov12_02227534: ; 0x02227534
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0]
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r2, r0, #0
	add r0, r4, #4
	add r1, r6, #0
	bl ov12_022263A4
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	cmp r0, #8
	bgt _0222757E
	cmp r0, #2
	blt _022275F0
	beq _02227584
	cmp r0, #4
	beq _022275A0
	cmp r0, #8
	beq _022275C4
	b _022275F0
_0222757E:
	cmp r0, #0x10
	beq _022275D6
	b _022275F0
_02227584:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x10]
	b _022275F4
_022275A0:
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x10]
	b _022275F4
_022275C4:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	b _022275F4
_022275D6:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	b _022275F4
_022275F0:
	bl GF_AssertFail
_022275F4:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x2e]
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	ldr r1, _0222761C ; =ov12_022274E4
	add r2, r4, #0
	add r0, #8
	strh r0, [r4, #0x2e]
	ldr r0, [r4, #0]
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222761C: .word ov12_022274E4
	thumb_func_end ov12_02227534

	thumb_func_start ov12_02227620
ov12_02227620: ; 0x02227620
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r5, #0x40]
	mov r0, #4
	mov r1, #0xa
	add r5, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0xe
	bl ov12_02225E68
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02227620

	thumb_func_start ov12_02227658
ov12_02227658: ; 0x02227658
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022260A8
	cmp r0, #0
	bne _02227694
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0222767E
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_0222767E:
	mov r0, #1
	str r0, [r4, #0x40]
	mov r0, #2
	add r4, #0x18
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0xa
	mov r3, #0xc
	bl ov12_02225E68
_02227694:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02227658

	thumb_func_start ov12_0222769C
ov12_0222769C: ; 0x0222769C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x48]
	mov r5, #0
	cmp r1, #4
	bhi _02227734
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022276B4: ; jump table
	.short _022276BE - _022276B4 - 2 ; case 0
	.short _022276E4 - _022276B4 - 2 ; case 1
	.short _022276F4 - _022276B4 - 2 ; case 2
	.short _02227722 - _022276B4 - 2 ; case 3
	.short _02227732 - _022276B4 - 2 ; case 4
_022276BE:
	mov r1, #0x4c
	ldrsh r3, [r4, r1]
	ldr r2, [r4, #0x3c]
	mov r1, #0x18
	mul r1, r2
	mov r2, #0x4e
	ldrsh r2, [r4, r2]
	add r1, r3, r1
	lsl r1, r1, #0x10
	sub r2, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02227620
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _02227734
_022276E4:
	bl ov12_02227658
	cmp r0, #0
	beq _02227734
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _02227734
_022276F4:
	ldr r1, [r4, #0x44]
	sub r1, r1, #1
	str r1, [r4, #0x44]
	bpl _02227734
	ldr r1, [r4, #0x48]
	add r1, r1, #1
	str r1, [r4, #0x48]
	mov r1, #0x4c
	ldrsh r3, [r4, r1]
	ldr r2, [r4, #0x3c]
	mov r1, #0x18
	mul r1, r2
	mov r2, #0x4e
	ldrsh r2, [r4, r2]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	sub r2, #0x18
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02227620
	b _02227734
_02227722:
	bl ov12_02227658
	cmp r0, #0
	beq _02227734
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _02227734
_02227732:
	mov r5, #1
_02227734:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222769C

	thumb_func_start ov12_02227738
ov12_02227738: ; 0x02227738
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0222774A
	cmp r0, #1
	beq _0222775C
	b _02227772
_0222774A:
	add r0, r4, #0
	bl ov12_0222769C
	cmp r0, #0
	beq _02227772
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02227772
_0222775C:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02227772:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02227738

	thumb_func_start ov12_0222777C
ov12_0222777C: ; 0x0222777C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x50
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	str r6, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #4
	str r0, [r4, #0x44]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x4e
	strh r0, [r1]
	ldr r0, [r4, #0]
	ldr r1, _02227804 ; =ov12_02227738
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227804: .word ov12_02227738
	thumb_func_end ov12_0222777C

	thumb_func_start ov12_02227808
ov12_02227808: ; 0x02227808
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200384C
	cmp r0, #0
	bne _02227826
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02227826:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02227808

	thumb_func_start ov12_02227828
ov12_02227828: ; 0x02227828
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #8
	add r5, r0, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r5, [r6, #0]
	add r0, r5, #0
	bl ov12_0222332C
	str r0, [r6, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	beq _02227856
	cmp r0, #1
	beq _02227862
	cmp r0, #2
	beq _02227868
	b _0222786E
_02227856:
	add r0, r5, #0
	bl ov12_02222354
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02227872
_02227862:
	mov r4, #1
	lsl r4, r4, #8
	b _02227872
_02227868:
	mov r4, #2
	lsl r4, r4, #8
	b _02227872
_0222786E:
	bl GF_AssertFail
_02227872:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x10]
	lsl r3, r7, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	mov r1, #1
	add r2, r4, #0
	asr r3, r3, #0x18
	bl sub_02003178
	ldr r0, [r6, #0]
	ldr r1, _022278CC ; =ov12_02227808
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022278CC: .word ov12_02227808
	thumb_func_end ov12_02227828

	thumb_func_start ov12_022278D0
ov12_022278D0: ; 0x022278D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _02227978
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022278E8: ; jump table
	.short _022278F4 - _022278E8 - 2 ; case 0
	.short _0222790C - _022278E8 - 2 ; case 1
	.short _0222791E - _022278E8 - 2 ; case 2
	.short _02227930 - _022278E8 - 2 ; case 3
	.short _02227948 - _022278E8 - 2 ; case 4
	.short _0222796A - _022278E8 - 2 ; case 5
_022278F4:
	ldr r0, [r4, #0x14]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x10]
	bl sub_020086FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222790C:
	ldr r0, [r4, #4]
	bl sub_020087B4
	cmp r0, #0
	bne _02227978
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222791E:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _0222792A
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227930
_0222792A:
	sub r0, r1, #1
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
_02227930:
	ldr r0, [r4, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #0x10]
	bl sub_020086FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02227948:
	ldr r0, [r4, #4]
	bl sub_020087B4
	cmp r0, #0
	bne _02227978
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	bgt _02227964
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02227964:
	mov r0, #0
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222796A:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02227978:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022278D0

	thumb_func_start ov12_0222797C
ov12_0222797C: ; 0x0222797C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x20
	add r4, r0, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	mov r1, #0
	add r0, r4, #0
	str r1, [r6, #4]
	bl ov12_02220280
	ldr r2, _02227B44 ; =0x00000802
	cmp r0, r2
	bgt _022279B6
	bge _02227A3C
	cmp r0, #8
	bgt _022279B0
	cmp r0, #2
	blt _022279AE
	beq _022279CE
	cmp r0, #4
	beq _022279E0
	cmp r0, #8
	beq _02227A06
_022279AE:
	b _02227AF4
_022279B0:
	cmp r0, #0x10
	beq _02227A18
	b _02227AF4
_022279B6:
	add r1, r2, #6
	cmp r0, r1
	bgt _022279C6
	bge _02227A98
	add r1, r2, #2
	cmp r0, r1
	beq _02227A6C
	b _02227AF4
_022279C6:
	add r2, #0xe
	cmp r0, r2
	beq _02227AC8
	b _02227AF4
_022279CE:
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_022279E0:
	add r0, r4, #0
	bl ov12_02223364
	cmp r0, #1
	beq _022279EC
	b _02227AF8
_022279EC:
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A06:
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A18:
	add r0, r4, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02227AF8
	ldr r0, [r6, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022352AC
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A3C:
	mov r7, #0xff
	mov r5, #0
_02227A40:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #0
	beq _02227A50
	cmp r0, #2
	bne _02227A54
_02227A50:
	add r7, r5, #0
	b _02227A5A
_02227A54:
	add r5, r5, #1
	cmp r5, #4
	blt _02227A40
_02227A5A:
	cmp r7, #0xff
	bne _02227A60
	mov r7, #0
_02227A60:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A6C:
	mov r7, #0xff
	mov r5, #0
_02227A70:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _02227A80
	add r7, r5, #0
	b _02227A86
_02227A80:
	add r5, r5, #1
	cmp r5, #4
	blt _02227A70
_02227A86:
	cmp r7, #0xff
	bne _02227A8C
	mov r7, #0
_02227A8C:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227A98:
	mov r7, #0xff
	mov r5, #0
_02227A9C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #1
	beq _02227AAC
	cmp r0, #3
	bne _02227AB0
_02227AAC:
	add r7, r5, #0
	b _02227AB6
_02227AB0:
	add r5, r5, #1
	cmp r5, #4
	blt _02227A9C
_02227AB6:
	cmp r7, #0xff
	bne _02227ABC
	mov r7, #0
_02227ABC:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227AC8:
	mov r7, #0xff
	mov r5, #0
_02227ACC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _02227ADC
	add r7, r5, #0
	b _02227AE2
_02227ADC:
	add r5, r5, #1
	cmp r5, #4
	blt _02227ACC
_02227AE2:
	cmp r7, #0xff
	bne _02227AE8
	mov r7, #0
_02227AE8:
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r6, #4]
	b _02227AF8
_02227AF4:
	bl GF_AssertFail
_02227AF8:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02227B06
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02227B06:
	add r0, r4, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r6, #0x10]
	add r0, r4, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r6, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r6, #0x14]
	add r0, r4, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r6, #0x18]
	add r0, r4, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0]
	ldr r1, _02227B48 ; =ov12_022278D0
	add r2, r6, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227B44: .word 0x00000802
_02227B48: .word ov12_022278D0
	thumb_func_end ov12_0222797C

	thumb_func_start ov12_02227B4C
ov12_02227B4C: ; 0x02227B4C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02227B5C
	b _02227CB0
_02227B5C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02227B68: ; jump table
	.short _02227B72 - _02227B68 - 2 ; case 0
	.short _02227BC0 - _02227B68 - 2 ; case 1
	.short _02227C12 - _02227B68 - 2 ; case 2
	.short _02227C3C - _02227B68 - 2 ; case 3
	.short _02227C9E - _02227B68 - 2 ; case 4
_02227B72:
	ldr r0, [r4, #0x4c]
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x44]
	ldr r3, [r4, #0x40]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225E68
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _02227BAE
	ldr r1, [sp, #8]
	mov r0, #0
	bl _f_sub
	str r0, [sp, #8]
_02227BAE:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227BC0:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _02227BE6
	ldr r1, [sp, #8]
	mov r0, #0
	bl _f_sub
	str r0, [sp, #8]
_02227BE6:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	cmp r5, #0
	beq _02227C0A
	mov r0, #0
	str r0, [sp]
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_0222605C
	b _02227CB0
_02227C0A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227C12:
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227C3C:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _02227C62
	ldr r1, [sp, #8]
	mov r0, #0
	bl _f_sub
	str r0, [sp, #8]
_02227C62:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	cmp r5, #0
	beq _02227C86
	mov r0, #0
	str r0, [sp]
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_0222605C
	b _02227CB0
_02227C86:
	ldr r0, [r4, #0x48]
	sub r0, r0, #1
	str r0, [r4, #0x48]
	cmp r0, #0
	bgt _02227C98
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02227CB0
_02227C98:
	mov r0, #0
	str r0, [r4, #8]
	b _02227CB0
_02227C9E:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add sp, #0xc
	pop {r4, r5, pc}
_02227CB0:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02227B4C

	thumb_func_start ov12_02227CBC
ov12_02227CBC: ; 0x02227CBC
	push {r4, r5, r6, lr}
	mov r1, #0x54
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	bne _02227CFE
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	b _02227D1C
_02227CFE:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
_02227D1C:
	strh r0, [r4, #0xe]
	add r0, r6, #0
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x38]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x40]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x4c]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022202C0
	str r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, [r4, #0x38]
	mov r2, #0x10
	ldr r0, [r4, #0]
	sub r2, r2, r1
	bl ov12_02235780
	ldr r0, [r4, #0]
	ldr r1, _02227DDC ; =ov12_02227B4C
	add r2, r4, #0
	bl ov12_022201E8
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	beq _02227DCA
	mov r1, #1
	b _02227DCC
_02227DCA:
	mov r1, #0
_02227DCC:
	ldr r0, [r4, #0]
	bl ov12_022234A8
	cmp r0, #1
	bne _02227DDA
	mov r0, #1
	str r0, [r4, #0x50]
_02227DDA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02227DDC: .word ov12_02227B4C
	thumb_func_end ov12_02227CBC

	thumb_func_start ov12_02227DE0
ov12_02227DE0: ; 0x02227DE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _02227DF0
	b _02227F2C
_02227DF0:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02227DFC: ; jump table
	.short _02227E08 - _02227DFC - 2 ; case 0
	.short _02227E4C - _02227DFC - 2 ; case 1
	.short _02227E7C - _02227DFC - 2 ; case 2
	.short _02227E90 - _02227DFC - 2 ; case 3
	.short _02227ED6 - _02227DFC - 2 ; case 4
	.short _02227F18 - _02227DFC - 2 ; case 5
_02227E08:
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x4c]
	asr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260C8
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227E4C:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260E8
	cmp r0, #0
	beq _02227E72
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_02227E72:
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227E7C:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	bne _02227E88
	add r0, r0, #1
	str r0, [r4, #4]
	b _02227E90
_02227E88:
	sub r0, r1, #1
	add sp, #0xc
	str r0, [r4, #0x50]
	pop {r4, r5, pc}
_02227E90:
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x40]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260E8
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227ED6:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260E8
	cmp r0, #0
	beq _02227EFC
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_02227EFC:
	ldr r0, [r4, #0x48]
	sub r0, r0, #1
	str r0, [r4, #0x48]
	cmp r0, #0
	bgt _02227F10
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227F10:
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02227F18:
	ldr r0, [r4, #0xc]
	bl ov12_02226B84
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02227F2C:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02227DE0

	thumb_func_start ov12_02227F30
ov12_02227F30: ; 0x02227F30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	mov r1, #0x54
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0]
	bl ov12_02220280
	ldr r2, _02228134 ; =0x00000802
	cmp r0, r2
	bgt _02227F74
	bge _02227FE0
	mov r2, #0x42
	lsl r2, r2, #2
	cmp r0, r2
	bgt _02227F6C
	sub r1, r2, #6
	cmp r0, r1
	blt _02227F6A
	beq _02227F8C
	sub r1, r2, #4
	cmp r0, r1
	beq _02227F8C
	cmp r0, r2
	beq _02227FB6
_02227F6A:
	b _02228096
_02227F6C:
	add r2, #8
	cmp r0, r2
	beq _02227FB6
	b _02228096
_02227F74:
	add r1, r2, #6
	cmp r0, r1
	bgt _02227F84
	bge _0222803C
	add r1, r2, #2
	cmp r0, r1
	beq _02228010
	b _02228096
_02227F84:
	add r2, #0xe
	cmp r0, r2
	beq _0222806C
	b _02228096
_02227F8C:
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #4
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _02228096
_02227FB6:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #4
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _02228096
_02227FE0:
	mov r7, #0xff
	mov r6, #0
_02227FE4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #0
	beq _02227FF4
	cmp r0, #2
	bne _02227FF8
_02227FF4:
	add r7, r6, #0
	b _02227FFE
_02227FF8:
	add r6, r6, #1
	cmp r6, #4
	blt _02227FE4
_02227FFE:
	cmp r7, #0xff
	bne _02228004
	mov r7, #0
_02228004:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
	b _02228096
_02228010:
	mov r7, #0xff
	mov r6, #0
_02228014:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _02228024
	add r7, r6, #0
	b _0222802A
_02228024:
	add r6, r6, #1
	cmp r6, #4
	blt _02228014
_0222802A:
	cmp r7, #0xff
	bne _02228030
	mov r7, #0
_02228030:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
	b _02228096
_0222803C:
	mov r7, #0xff
	mov r6, #0
_02228040:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #1
	beq _02228050
	cmp r0, #3
	bne _02228054
_02228050:
	add r7, r6, #0
	b _0222805A
_02228054:
	add r6, r6, #1
	cmp r6, #4
	blt _02228040
_0222805A:
	cmp r7, #0xff
	bne _02228060
	mov r7, #0
_02228060:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
	b _02228096
_0222806C:
	mov r7, #0xff
	mov r6, #0
_02228070:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _02228080
	add r7, r6, #0
	b _02228086
_02228080:
	add r6, r6, #1
	cmp r6, #4
	blt _02228070
_02228086:
	cmp r7, #0xff
	bne _0222808C
	mov r7, #0
_0222808C:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_022232FC
	str r0, [r4, #0xc]
_02228096:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022280A6
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_022280A6:
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	strh r0, [r4, #0xa]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r1, #1
	add r0, #0x10
	strh r0, [r4, #0xa]
	add r0, r5, #0
	bl ov12_02220280
	str r0, [r4, #0x34]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x38]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x40]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	str r0, [r4, #0x4c]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	asr r0, r0, #0x10
	str r0, [r4, #0x50]
	ldr r0, [r4, #0]
	ldr r1, _02228138 ; =ov12_02227DE0
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_02227DE0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02228134: .word 0x00000802
_02228138: .word ov12_02227DE0
	thumb_func_end ov12_02227F30

	thumb_func_start ov12_0222813C
ov12_0222813C: ; 0x0222813C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov12_02226454
	cmp r0, #0
	beq _0222815E
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	pop {r3, r4, r5, pc}
_0222815E:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222813C

	thumb_func_start ov12_02228168
ov12_02228168: ; 0x02228168
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x30
	add r7, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r7, [r4, #0]
	add r0, r7, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	mov r5, #0
_0222818C:
	mov r0, #1
	lsl r0, r5
	tst r0, r6
	beq _022281A2
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_022202C0
	mov r1, #1
	bl sub_0200D810
_022281A2:
	add r5, r5, #1
	cmp r5, #4
	blt _0222818C
	add r0, r7, #0
	mov r1, #1
	bl ov12_02220280
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r2, [sp, #8]
	add r1, r5, #0
	bl ov12_02235780
	add r0, r7, #0
	mov r1, #2
	bl ov12_02220280
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #5
	bl ov12_02220280
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	lsl r3, r3, #0x10
	add r0, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02226424
	ldr r0, [r4, #0]
	ldr r1, _02228210 ; =ov12_0222813C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02228210: .word ov12_0222813C
	thumb_func_end ov12_02228168

	thumb_func_start ov12_02228214
ov12_02228214: ; 0x02228214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r1, #1
	bl ov12_02220280
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #4
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _02228262
	mov r7, #6
_02228240:
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov12_0222337C
	cmp r0, #1
	bne _02228250
	cmp r5, #0
	beq _0222825A
_02228250:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02007DEC
_0222825A:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _02228240
_02228262:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02228214

	thumb_func_start ov12_02228268
ov12_02228268: ; 0x02228268
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _022282B6
	ldr r0, [r4, #0]
	cmp r0, #0
	ldr r0, [r4, #0x14]
	bne _02228296
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0x3c]
	add r1, r5, #0
	bl ov12_02220220
	pop {r3, r4, r5, pc}
_02228296:
	mov r1, #6
	bl sub_020080C0
	add r3, r0, #0
	mov r2, #1
	ldr r0, [r4, #0x14]
	mov r1, #6
	eor r2, r3
	bl sub_02007DEC
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_022282B6:
	add r0, r1, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02228268

	thumb_func_start ov12_022282BC
ov12_022282BC: ; 0x022282BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x40
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4, #0x3c]
	bl ov12_02220280
	lsl r0, r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r1, r4, #0
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	ldr r1, _02228308 ; =ov12_02228268
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02228308: .word ov12_02228268
	thumb_func_end ov12_022282BC

	thumb_func_start ov12_0222830C
ov12_0222830C: ; 0x0222830C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _02228324
	cmp r0, #1
	beq _02228358
	b _02228382
_02228324:
	mov r0, #0x16
	ldrsh r3, [r4, r0]
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	mov r2, #0xc
	str r3, [sp]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0x40
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r4, #0x24
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_02228358:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	bne _02228372
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_02228372:
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_02228382:
	ldr r0, [r4, #0x64]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_0222830C

	thumb_func_start ov12_02228394
ov12_02228394: ; 0x02228394
	push {r4, r5, r6, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0x64]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	mov r6, #0xff
	add r1, r6, #0
	add r1, #9
	cmp r0, r1
	bgt _022283E0
	add r1, r6, #3
	cmp r0, r1
	blt _02228436
	beq _022283EA
	add r1, r6, #5
	cmp r0, r1
	beq _022283F4
	add r1, r6, #0
	add r1, #9
	cmp r0, r1
	beq _02228410
	b _02228436
_022283E0:
	add r1, r6, #0
	add r1, #0x11
	cmp r0, r1
	beq _0222841A
	b _02228436
_022283EA:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _0222843A
_022283F4:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _0222843A
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _0222843A
_02228410:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _0222843A
_0222841A:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _0222843A
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _0222843A
_02228436:
	bl GF_AssertFail
_0222843A:
	cmp r6, #0xff
	bne _02228446
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02228446:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x24
	bl ov12_0223595C
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	add r1, r4, #0
	add r1, #0x14
	str r0, [r4, #0x18]
	bl ov12_02235918
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	cmp r0, #0
	bgt _02228478
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	sub r0, #0xd
	mul r0, r1
	strh r0, [r4, #0xc]
_02228478:
	ldr r0, [r4, #0x64]
	ldr r1, _02228484 ; =ov12_0222830C
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02228484: .word ov12_0222830C
	thumb_func_end ov12_02228394

	thumb_func_start ov12_02228488
ov12_02228488: ; 0x02228488
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _022284A0
	cmp r0, #1
	beq _022284E2
	b _0222850C
_022284A0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022284B0
	mov r0, #0xff
	add r4, #0x20
	add sp, #8
	strb r0, [r4]
	pop {r4, pc}
_022284B0:
	mov r0, #0x12
	ldrsh r3, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r2, #0x64
	str r3, [sp]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0x3c
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_022284E2:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02225C14
	cmp r0, #0
	bne _022284FC
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_022284FC:
	mov r2, #0x3c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_0222850C:
	ldr r0, [r4, #0x60]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02228488

	thumb_func_start ov12_02228520
ov12_02228520: ; 0x02228520
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x64
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	mov r6, #0xff
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	bgt _0222857C
	add r0, r6, #3
	cmp r7, r0
	blt _022285D2
	beq _02228586
	add r0, r6, #5
	cmp r7, r0
	beq _02228590
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	beq _022285AC
	b _022285D2
_0222857C:
	add r0, r6, #0
	add r0, #0x11
	cmp r7, r0
	beq _022285B6
	b _022285D2
_02228586:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _022285D6
_02228590:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022285D6
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _022285D6
_022285AC:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _022285D6
_022285B6:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022285D6
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _022285D6
_022285D2:
	bl GF_AssertFail
_022285D6:
	cmp r6, #0xff
	bne _022285E2
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_022285E2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	add r1, r4, #0
	add r1, #0x10
	str r0, [r4, #0x14]
	bl ov12_02235918
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	cmp r0, #0
	bgt _02228610
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x64
	strh r2, [r0]
_02228610:
	add r0, r5, #0
	bl ov12_0221FDD4
	ldr r0, [r4, #0x60]
	ldr r1, _02228628 ; =ov12_02228488
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_02228488
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02228628: .word ov12_02228488
	thumb_func_end ov12_02228520

	thumb_func_start ov12_0222862C
ov12_0222862C: ; 0x0222862C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222863C
	b _022287BA
_0222863C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228648: ; jump table
	.short _02228650 - _02228648 - 2 ; case 0
	.short _022286B2 - _02228648 - 2 ; case 1
	.short _022286FC - _02228648 - 2 ; case 2
	.short _0222874A - _02228648 - 2 ; case 3
_02228650:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _022286A8
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02226138
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r2, #0x38
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02008274
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_022286A8:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022286B2:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	ldrb r1, [r4, #9]
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	bhi _022286C2
	b _022287C8
_022286C2:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov12_02220280
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r5, #0x10
	lsl r3, r6, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	mov r2, #0x64
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022286FC:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _02228740
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02228740:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222874A:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _0222878E
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222878E:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022287BA:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022287C8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_0222862C

	thumb_func_start ov12_022287CC
ov12_022287CC: ; 0x022287CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x5c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r0, #0
	strb r0, [r4, #9]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223354
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x64
	lsl r3, r6, #0x10
	add r0, #0x14
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225E68
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x38
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0xc]
	ldr r1, _02228864 ; =ov12_0222862C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02228864: .word ov12_0222862C
	thumb_func_end ov12_022287CC

	thumb_func_start ov12_02228868
ov12_02228868: ; 0x02228868
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _02228878
	b _022289F8
_02228878:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228884: ; jump table
	.short _0222888C - _02228884 - 2 ; case 0
	.short _022288EE - _02228884 - 2 ; case 1
	.short _0222893A - _02228884 - 2 ; case 2
	.short _02228988 - _02228884 - 2 ; case 3
_0222888C:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	bne _022288E4
	add r0, r4, #0
	add r0, #0x44
	bl ov12_02226138
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r2, #0x44
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02008274
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x34]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_022288E4:
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_022288EE:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	ldrb r1, [r4, #9]
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	bhi _022288FE
	b _02228A06
_022288FE:
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0xc]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	asr r1, r2, #0x10
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	asr r3, r3, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x20
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222893A:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222897E
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x34]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222897E:
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_02228988:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _022289CC
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x34]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_022289CC:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x1c]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_022289F8:
	ldr r0, [r4, #0x18]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02228A06:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02228868

	thumb_func_start ov12_02228A0C
ov12_02228A0C: ; 0x02228A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x68
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4]
	str r5, [r4, #0x18]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl ov12_022232FC
	str r0, [r4, #0x1c]
	mov r0, #0
	strb r0, [r4, #9]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	add r3, r4, #2
	bl ov12_02225898
	ldr r0, [r4, #0x18]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl ov12_02223354
	str r0, [r4, #4]
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r0, r1, r0
	strh r0, [r4, #2]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r6, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, #0x20
	add r2, r7, #0
	bl ov12_02225EF0
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x44
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0x18]
	ldr r1, _02228B0C ; =ov12_02228868
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02228B0C: .word ov12_02228868
	thumb_func_end ov12_02228A0C

	thumb_func_start ov12_02228B10
ov12_02228B10: ; 0x02228B10
	push {r3, r4, r5, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r2, #0]
	ldr r0, _02228B3C ; =0xFFFF1FFF
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
	pop {r3, r4, r5, pc}
	nop
_02228B3C: .word 0xFFFF1FFF
	thumb_func_end ov12_02228B10

	thumb_func_start ov12_02228B40
ov12_02228B40: ; 0x02228B40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x28
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r0, r5, #0
	add r1, r4, #4
	bl ov12_0223595C
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_02222590
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x24]
	mov r1, #2
	bl sub_0200D810
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, _02228BC0 ; =0x3F99999A
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_0200D6E8
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _02228BC4 ; =0xFFFF1FFF
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
	ldr r1, _02228BC8 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #7
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _02228BCC ; =ov12_02228B10
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02228BC0: .word 0x3F99999A
_02228BC4: .word 0xFFFF1FFF
_02228BC8: .word 0xFFFFC0FF
_02228BCC: .word ov12_02228B10
	thumb_func_end ov12_02228B40

	thumb_func_start ov12_02228BD0
ov12_02228BD0: ; 0x02228BD0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _02228BE8
	cmp r0, #1
	beq _02228C24
	b _02228C5A
_02228BE8:
	mov r0, #0x12
	ldrsh r3, [r4, r0]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r0, #0x66
	ldrsh r0, [r4, r0]
	mov r2, #0x64
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0x3c
	add r2, r1, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_02228C24:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02225C14
	cmp r0, #0
	bne _02228C3E
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_02228C3E:
	mov r2, #0x3c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x3e
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_02228C5A:
	ldr r0, [r4, #0x60]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_02228BD0

	thumb_func_start ov12_02228C6C
ov12_02228C6C: ; 0x02228C6C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x64
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x66
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r1, r4, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	mov r6, #0xff
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	bgt _02228CD6
	add r0, r6, #3
	cmp r7, r0
	blt _02228D2C
	beq _02228CE0
	add r0, r6, #5
	cmp r7, r0
	beq _02228CEA
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	beq _02228D06
	b _02228D2C
_02228CD6:
	add r0, r6, #0
	add r0, #0x11
	cmp r7, r0
	beq _02228D10
	b _02228D2C
_02228CE0:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _02228D30
_02228CEA:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02228D30
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02228D30
_02228D06:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _02228D30
_02228D10:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02228D30
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02228D30
_02228D2C:
	bl GF_AssertFail
_02228D30:
	cmp r6, #0xff
	bne _02228D3C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02228D3C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _02228D52
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02228D52:
	add r1, r4, #0
	add r1, #0x10
	bl ov12_02235918
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	cmp r0, #0
	bgt _02228D86
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x64
	strh r2, [r0]
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	sub r0, #0x67
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x66
	strh r2, [r0]
_02228D86:
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02228DA0
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	sub r0, #0x67
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x66
	strh r2, [r0]
_02228DA0:
	ldr r0, [r4, #0x60]
	ldr r1, _02228DB4 ; =ov12_02228BD0
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_02228BD0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228DB4: .word ov12_02228BD0
	thumb_func_end ov12_02228C6C

	thumb_func_start ov12_02228DB8
ov12_02228DB8: ; 0x02228DB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x20
	mov r2, #0x22
	add r5, r0, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x24]
	add r0, #0x30
	bl ov12_02225BA0
	cmp r0, #0
	bne _02228DFC
	mov r2, #0x20
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x22
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #1
	sub r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02228DFC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02228DB8

	thumb_func_start ov12_02228E00
ov12_02228E00: ; 0x02228E00
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x54
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r2, r4, #0
	add r1, r0, #0
	add r0, r5, #0
	add r2, #0x1c
	add r3, sp, #0
	bl ov12_02235998
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r1, #1
	add r0, #8
	strh r0, [r4, #0x22]
	add r0, r5, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x30
	add r1, r6, #0
	bl ov12_022263A4
	ldr r1, [r4, #0x3c]
	add r2, r4, #0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x44]
	ldr r0, [r4, #4]
	ldr r1, _02228E74 ; =ov12_02228DB8
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02228E74: .word ov12_02228DB8
	thumb_func_end ov12_02228E00

	thumb_func_start ov12_02228E78
ov12_02228E78: ; 0x02228E78
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _02228EB0
	add r0, r4, #0
	add r0, #0x30
	bl ov12_02225C14
	cmp r0, #0
	bne _02228E96
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228E96:
	mov r2, #0x30
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x32
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_02007DEC
	pop {r4, pc}
_02228EB0:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02228E78

	thumb_func_start ov12_02228EC0
ov12_02228EC0: ; 0x02228EC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x5c
	add r6, r0, #0
	bl ov12_02235E50
	add r5, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223595C
	add r0, r6, #0
	mov r1, #0
	bl ov12_02220280
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02220280
	add r7, r0, #0
	cmp r4, #8
	bgt _02228EFE
	cmp r4, #2
	blt _02228F3C
	beq _02228F04
	cmp r4, #4
	beq _02228F0E
	cmp r4, #8
	beq _02228F20
	b _02228F3C
_02228EFE:
	cmp r4, #0x10
	beq _02228F2A
	b _02228F3C
_02228F04:
	add r0, r6, #0
	bl ov12_02220240
	str r0, [sp, #8]
	b _02228F40
_02228F0E:
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _02228F40
_02228F20:
	add r0, r6, #0
	bl ov12_02220248
	str r0, [sp, #8]
	b _02228F40
_02228F2A:
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _02228F40
_02228F3C:
	bl GF_AssertFail
_02228F40:
	add r2, r5, #0
	ldr r1, [sp, #8]
	add r0, r6, #0
	add r2, #0x54
	bl ov12_022353AC
	add r2, r5, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, #0x1c
	add r3, sp, #0xc
	bl ov12_02235998
	add r0, r5, #0
	mov r1, #0
	add r0, #0x58
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	bl ov12_0223525C
	cmp r0, #3
	bne _02228F7A
	mov r1, #0x4f
	mvn r1, r1
	b _02228F7E
_02228F7A:
	mov r1, #0x15
	lsl r1, r1, #4
_02228F7E:
	add r0, r5, #0
	add r0, #0x58
	strh r1, [r0]
	mov r0, #0x22
	ldrsh r3, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0x20
	mov r2, #0x58
	add r0, r5, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, #0x30
	bl ov12_02225BC8
	ldr r0, [r5, #4]
	ldr r1, _02228FB0 ; =ov12_02228E78
	add r2, r5, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228FB0: .word ov12_02228E78
	thumb_func_end ov12_02228EC0

	thumb_func_start ov12_02228FB4
ov12_02228FB4: ; 0x02228FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x5c
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r7, r0, #0
	cmp r6, #8
	bgt _02228FFC
	cmp r6, #2
	blt _0222903A
	beq _02229002
	cmp r6, #4
	beq _0222900C
	cmp r6, #8
	beq _0222901E
	b _0222903A
_02228FFC:
	cmp r6, #0x10
	beq _02229028
	b _0222903A
_02229002:
	add r0, r5, #0
	bl ov12_02220240
	str r0, [sp, #8]
	b _0222903E
_0222900C:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _0222903E
_0222901E:
	add r0, r5, #0
	bl ov12_02220248
	str r0, [sp, #8]
	b _0222903E
_02229028:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	b _0222903E
_0222903A:
	bl GF_AssertFail
_0222903E:
	add r2, r4, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, #0x54
	bl ov12_022353AC
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1c
	add r3, sp, #0x10
	bl ov12_02235998
	add r0, r4, #0
	mov r1, #0
	add r0, #0x58
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	bl ov12_0223525C
	cmp r0, #3
	bne _02229078
	mov r1, #0x4f
	mvn r1, r1
	b _0222907C
_02229078:
	mov r1, #0x15
	lsl r1, r1, #4
_0222907C:
	add r0, r4, #0
	add r0, #0x58
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _022290A6
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0x20
	mov r2, #0x58
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x30
	bl ov12_02225BC8
	b _022290CA
_022290A6:
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov12_022258E0
	add r2, r0, #0
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0x58
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x30
	bl ov12_02225BC8
_022290CA:
	ldr r0, [r4, #4]
	ldr r1, _022290D8 ; =ov12_02228E78
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022290D8: .word ov12_02228E78
	thumb_func_end ov12_02228FB4

	thumb_func_start ov12_022290DC
ov12_022290DC: ; 0x022290DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0
	add r5, r0, #0
	bl ov12_02220280
	add r4, r0, #0
	cmp r4, #8
	bgt _022290FE
	cmp r4, #2
	blt _0222913C
	beq _02229104
	cmp r4, #4
	beq _0222910E
	cmp r4, #8
	beq _02229120
	b _0222913C
_022290FE:
	cmp r4, #0x10
	beq _0222912A
	b _0222913C
_02229104:
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	b _02229140
_0222910E:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02229140
_02229120:
	add r0, r5, #0
	bl ov12_02220248
	add r6, r0, #0
	b _02229140
_0222912A:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r6, r0, #0
	b _02229140
_0222913C:
	bl GF_AssertFail
_02229140:
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov12_022353AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	add r3, sp, #4
	bl ov12_02235998
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02223354
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	mov r1, #0
	add r2, sp, #0
	ldrsh r2, [r2, r1]
	ldr r0, [sp, #0x10]
	bl sub_02007DEC
	add r3, sp, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r2, r2, r4
	bl sub_02007DEC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022290DC

	thumb_func_start ov12_02229184
ov12_02229184: ; 0x02229184
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl ov12_02226848
	cmp r0, #0
	bne _022291A8
	ldr r0, [r4, #0x30]
	bl ov12_02226858
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022291A8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02229184

	thumb_func_start ov12_022291AC
ov12_022291AC: ; 0x022291AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x34
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	add r2, r4, #0
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, r7, #0
	add r2, #0x1c
	add r3, sp, #0x2c
	bl ov12_02235D74
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r6, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	lsl r3, r7, #0x14
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsr r3, r3, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _02229270 ; =0x0000044C
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl ov12_02226870
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldr r1, _02229274 ; =ov12_02229184
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229270: .word 0x0000044C
_02229274: .word ov12_02229184
	thumb_func_end ov12_022291AC

	thumb_func_start ov12_02229278
ov12_02229278: ; 0x02229278
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _022292EC
	ldr r0, [r4, #0x4c]
	add r1, r0, #1
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	blt _02229300
	mov r1, #0
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ldr r0, [r4, #0x54]
	bne _022292B0
	cmp r0, #0
	bge _022292A2
	str r1, [r4, #0x54]
_022292A2:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _022292C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022292C4
_022292B0:
	cmp r0, #0x50
	ble _022292B8
	mov r0, #0x50
	str r0, [r4, #0x54]
_022292B8:
	ldr r0, [r4, #0x54]
	cmp r0, #0x50
	bne _022292C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022292C4:
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x54]
	mov r1, #0x12
	bl sub_02007DEC
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x50]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x42
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x50]
	sub r1, r2, r1
	str r1, [r4, #0x50]
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_022292EC:
	ldr r0, [r4, #0x24]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02229300:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02229278

	thumb_func_start ov12_02229304
ov12_02229304: ; 0x02229304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x58
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1c
	add r3, sp, #4
	bl ov12_02235998
	cmp r6, #8
	bgt _02229346
	cmp r6, #2
	blt _02229384
	beq _0222934C
	cmp r6, #4
	beq _02229356
	cmp r6, #8
	beq _02229368
	b _02229384
_02229346:
	cmp r6, #0x10
	beq _02229372
	b _02229384
_0222934C:
	add r0, r5, #0
	bl ov12_02220240
	add r7, r0, #0
	b _02229388
_02229356:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r7, r0, #0
	b _02229388
_02229368:
	add r0, r5, #0
	bl ov12_02220248
	add r7, r0, #0
	b _02229388
_02229372:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r7, r0, #0
	b _02229388
_02229384:
	bl GF_AssertFail
_02229388:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x48]
	cmp r0, #0
	ldr r0, [r4, #0x24]
	bne _022293DC
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x24]
	mov r1, #0x12
	bl sub_020080C0
	mov r1, #0x50
	sub r0, r1, r0
	str r0, [r4, #0x54]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x40
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x42
	strh r0, [r1]
	mov r0, #0x42
	ldrsh r1, [r4, r0]
	sub r0, #0x43
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x42
	strh r2, [r0]
	b _0222940A
_022293DC:
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x24]
	mov r1, #0x12
	bl sub_020080C0
	str r0, [r4, #0x54]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x40
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	add r1, r4, #0
	add r1, #0x42
	strh r0, [r1]
_0222940A:
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	mov r0, #0x50
	str r0, [r4, #0x38]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02223354
	mov r1, #0x50
	sub r0, r1, r0
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x44]
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x3c]
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _02229450 ; =ov12_02229278
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229450: .word ov12_02229278
	thumb_func_end ov12_02229304

	thumb_func_start ov12_02229454
ov12_02229454: ; 0x02229454
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r1, #8
	bgt _0222946E
	cmp r1, #2
	blt _022294A4
	beq _02229474
	cmp r1, #4
	beq _0222947C
	cmp r1, #8
	beq _0222948C
	b _022294A4
_0222946E:
	cmp r1, #0x10
	beq _02229494
	b _022294A4
_02229474:
	bl ov12_02220240
	add r4, r0, #0
	b _022294A8
_0222947C:
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r4, r0, #0
	b _022294A8
_0222948C:
	bl ov12_02220248
	add r4, r0, #0
	b _022294A8
_02229494:
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022352AC
	add r4, r0, #0
	b _022294A8
_022294A4:
	bl GF_AssertFail
_022294A8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02229454

	thumb_func_start ov12_022294AC
ov12_022294AC: ; 0x022294AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022294BE
	cmp r0, #1
	beq _02229504
	pop {r3, r4, r5, pc}
_022294BE:
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02229536
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x44]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x3c]
	sub r1, r1, r0
	str r1, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _022294F8
	str r0, [r4, #0x3c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022294F8:
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	mov r1, #0x12
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02229504:
	ldr r0, [r4, #0x30]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x48]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x40]
	mov r1, #0x12
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02229536:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022294AC

	thumb_func_start ov12_02229538
ov12_02229538: ; 0x02229538
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222954A
	cmp r0, #1
	beq _0222958E
	pop {r3, r4, r5, pc}
_0222954A:
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _022295C0
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x44]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x3c]
	sub r0, r1, r0
	str r0, [r4, #0x3c]
	bpl _02229582
	mov r0, #0
	str r0, [r4, #0x3c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02229582:
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	mov r1, #0x12
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0222958E:
	ldr r0, [r4, #0x30]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x48]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x40]
	mov r1, #0x12
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022295C0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02229538

	thumb_func_start ov12_022295C4
ov12_022295C4: ; 0x022295C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022295D6
	cmp r0, #1
	beq _02229618
	pop {r3, r4, r5, pc}
_022295D6:
	ldr r0, [r4, #0x24]
	add r1, r0, #1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02229636
	mov r0, #0
	str r0, [r4, #0x24]
	mov r1, #0x1c
	ldrsh r2, [r4, r1]
	ldr r3, [r4, #0x3c]
	sub r2, r3, r2
	str r2, [r4, #0x3c]
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x40]
	add r1, r2, r1
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	bge _02229606
	str r0, [r4, #0x3c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02229606:
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	mov r3, #0x50
	bl sub_020086D4
	pop {r3, r4, r5, pc}
_02229618:
	ldr r0, [r4, #0x30]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x30]
	bl ov12_02226B84
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02229636:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022295C4

	thumb_func_start ov12_02229638
ov12_02229638: ; 0x02229638
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x50
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x28
	add r3, sp, #4
	bl ov12_02235998
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02229454
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	cmp r0, #0
	beq _022296BA
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02223354
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [r4, #0x3c]
	mov r1, #0
	str r1, [r4, #0x40]
	str r1, [sp]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _0222972C ; =ov12_022295C4
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r4, r5, r6, pc}
_022296BA:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02223354
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022296FA
	ldr r0, [r4, #0x3c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	add r2, r1, #0
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _02229730 ; =ov12_02229538
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r4, r5, r6, pc}
_022296FA:
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x40]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x3c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	add r2, r1, #0
	mov r3, #0x50
	bl sub_020086D4
	ldr r0, [r4, #4]
	ldr r1, _02229734 ; =ov12_022294AC
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222972C: .word ov12_022295C4
_02229730: .word ov12_02229538
_02229734: .word ov12_022294AC
	thumb_func_end ov12_02229638

	thumb_func_start ov12_02229738
ov12_02229738: ; 0x02229738
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222974C
	cmp r0, #1
	beq _0222976C
	b _022297FC
_0222974C:
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, [r4, #0xc]
	add r0, #0xd4
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02226108
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222976C:
	add r0, r4, #0
	add r0, #0xd4
	bl ov12_02226138
	cmp r0, #0
	bne _022297C0
	ldrb r1, [r4, #1]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	ldrb r0, [r4]
	blt _02229786
	add r0, r0, #1
	b _02229788
_02229786:
	sub r0, r0, #1
_02229788:
	strb r0, [r4]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022297A0
	ldr r1, [r4, #0x1c]
	mov r2, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x28]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
_022297A0:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _022297B6
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
_022297B6:
	ldrb r0, [r4, #1]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_022297C0:
	mov r3, #0xd4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _022297DC
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	ldrsh r3, [r4, r3]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x28]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
_022297DC:
	mov r3, #0xd6
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0222980A
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	ldrsh r3, [r4, r3]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x28]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	add sp, #4
	pop {r3, r4, pc}
_022297FC:
	ldr r0, [r4, #0x2c]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222980A:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02229738

	thumb_func_start ov12_02229810
ov12_02229810: ; 0x02229810
	push {r3, r4, r5, lr}
	mov r1, #0xf8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #0x2c]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl ov12_02220278
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	cmp r0, #0
	bne _02229876
	mov r0, #3
	b _02229878
_02229876:
	mov r0, #2
_02229878:
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x2c]
	ldr r1, _02229888 ; =ov12_02229738
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02229888: .word ov12_02229738
	thumb_func_end ov12_02229810

	thumb_func_start ov12_0222988C
ov12_0222988C: ; 0x0222988C
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x24]
	cmp r3, r0
	beq _022298A0
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _022298B0
_022298A0:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
_022298B0:
	mov r1, #0x20
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bge _022298D2
	add r2, r3, r2
	cmp r2, #0
	ble _022298CA
	str r2, [r4, #0x24]
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r2, r0
	str r0, [r4, #0x28]
	b _022298EA
_022298CA:
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x28]
	b _022298EA
_022298D2:
	add r2, r3, r2
	cmp r2, #0xf
	bge _022298E4
	str r2, [r4, #0x24]
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r2, r0
	str r0, [r4, #0x28]
	b _022298EA
_022298E4:
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x28]
_022298EA:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	lsl r0, r0, #4
	orr r1, r0
	ldr r0, _02229904 ; =0x0400004D
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	pop {r4, pc}
	; .align 2, 0
_02229904: .word 0x0400004D
	thumb_func_end ov12_0222988C

	thumb_func_start ov12_02229908
ov12_02229908: ; 0x02229908
	push {r3, r4, r5, lr}
	mov r1, #0x30
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0x20]
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_02220280
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022202C0
	mov r1, #1
	str r0, [r4, #0x1c]
	bl sub_0200D3F4
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222995E
	mov r0, #0
	b _02229960
_0222995E:
	mov r0, #0xf
_02229960:
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D7FC
	ldr r0, [r4, #4]
	ldr r1, _0222997C ; =ov12_0222988C
	add r2, r4, #0
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_0222988C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222997C: .word ov12_0222988C
	thumb_func_end ov12_02229908

	thumb_func_start ov12_02229980
ov12_02229980: ; 0x02229980
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #4]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #8
	bl ov12_02220280
	str r0, [r4, #0x30]
	add r0, r5, #0
	mov r1, #7
	bl ov12_02220280
	ldr r2, _02229A4C ; =0xFFFF0000
	mov r1, #0
	and r2, r0
	lsl r0, r0, #0x10
	str r1, [r4, #0x1c]
	lsr r2, r2, #0x10
	str r2, [r4, #0x20]
	lsr r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _022299F6
	str r1, [r4, #0x20]
_022299F6:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02229A00
	mov r0, #0xff
	str r0, [r4, #0x24]
_02229A00:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov12_0222026C
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl ov12_02220250
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02229A2A
	add r0, r5, #0
	bl ov12_02220240
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220248
	str r0, [r4, #0x18]
	b _02229A3E
_02229A2A:
	cmp r0, #1
	bne _02229A3E
	add r0, r5, #0
	bl ov12_02220248
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220240
	str r0, [r4, #0x18]
_02229A3E:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _02229A48
	bl GF_AssertFail
_02229A48:
	pop {r3, r4, r5, pc}
	nop
_02229A4C: .word 0xFFFF0000
	thumb_func_end ov12_02229980

	thumb_func_start ov12_02229A50
ov12_02229A50: ; 0x02229A50
	ldr r0, [r0, #8]
	mov r1, #0
	cmp r0, #0
	beq _02229A62
_02229A58:
	ldrh r2, [r0, #0x26]
	ldrh r3, [r0, #0x24]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02229A58
_02229A62:
	cmp r2, r3
	beq _02229A68
	mov r1, #1
_02229A68:
	add r0, r1, #0
	bx lr
	thumb_func_end ov12_02229A50

	thumb_func_start ov12_02229A6C
ov12_02229A6C: ; 0x02229A6C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov12_02229A50
	add r4, r0, #0
	mov r0, #4
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0x28]
	cmp r1, r0
	bge _02229A8A
	add r0, r1, #1
	str r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
_02229A8A:
	add r0, r5, #0
	add r0, #0xa8
	bl ov12_02225C14
	cmp r0, #0
	bne _02229AB2
	cmp r4, #0
	bne _02229AB2
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_02014724
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r5, #0
	bl ov12_02235E80
	pop {r4, r5, r6, pc}
_02229AB2:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r0, r1
	bgt _02229AC0
	ldr r0, [r5, #0x24]
	cmp r0, r1
	bge _02229AC6
_02229AC0:
	ldr r0, [r5, #0x24]
	cmp r0, #0xff
	bne _02229B24
_02229AC6:
	mov r0, #0xa8
	ldrsh r2, [r5, r0]
	ldr r1, [r5, #0x38]
	mov r3, #0xac
	add r0, r2, #0
	ldr r2, [r1, #0x20]
	mul r0, r3
	ldr r2, [r2, #0]
	ldr r2, [r2, #4]
	add r0, r0, r2
	str r0, [r1, #0x28]
	mov r0, #0xaa
	ldrsh r4, [r5, r0]
	ldr r2, [r5, #0x38]
	add r1, r4, #0
	mul r1, r3
	ldr r3, [r2, #0x20]
	ldr r3, [r3, #0]
	ldr r3, [r3, #8]
	add r1, r1, r3
	str r1, [r2, #0x2c]
	ldr r1, [r5, #0x30]
	cmp r1, #0
	beq _02229B24
	mov r1, #6
	ldrsh r1, [r5, r1]
	add r0, #0xbe
	bl _s32_div_f
	ldr r1, [r5, #0x2c]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	mov r1, #0xaa
	ldrsh r2, [r5, r1]
	mov r1, #0xac
	mul r1, r2
	add r2, r1, r0
	ldr r1, [r5, #0x38]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r1, #0x2c]
_02229B24:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02229A6C

	thumb_func_start ov12_02229B28
ov12_02229B28: ; 0x02229B28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x41
	lsl r1, r1, #2
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02229980
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02225964
	add r5, r0, #0
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	add r2, sp, #0x18
	bl ov12_02235508
	ldr r1, [r4, #0x18]
	add r0, r6, #0
	add r2, sp, #0xc
	bl ov12_02235508
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0xac
	bl _s32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0xac
	bl _s32_div_f
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #0xac
	bl _s32_div_f
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	add r2, r1, #0
	mul r2, r5
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #6]
	lsl r1, r6, #0x10
	mov r2, #0xc
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r0, #0xa8
	add r3, r2, #0
	mul r3, r5
	add r2, r7, r3
	ldr r3, [sp, #8]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	cmp r5, #0
	ldr r2, _02229C4C ; =0x00005C71
	ble _02229BE0
	ldr r1, _02229C50 ; =0x00000E38
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
	b _02229BF0
_02229BE0:
	ldr r1, _02229C54 ; =0x00003FFF
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
_02229BF0:
	ldr r0, [r4, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02229C0A
	add r6, r4, #0
	add r6, #0xa8
_02229BFC:
	add r0, r6, #0
	bl ov12_02225C14
	ldr r0, [r4, #0x20]
	add r5, r5, #1
	cmp r5, r0
	blt _02229BFC
_02229C0A:
	ldr r0, [r4, #0x24]
	cmp r0, #0xff
	beq _02229C14
	add r0, r0, #1
	str r0, [r4, #0x1c]
_02229C14:
	mov r0, #0xa8
	ldrsh r3, [r4, r0]
	ldr r1, [r4, #0x38]
	mov r2, #0xac
	add r0, r3, #0
	ldr r3, [r1, #0x20]
	mul r0, r2
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	add r0, r0, r3
	str r0, [r1, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x40]
	ldr r1, _02229C58 ; =ov12_02229A6C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02229C4C: .word 0x00005C71
_02229C50: .word 0x00000E38
_02229C54: .word 0x00003FFF
_02229C58: .word ov12_02229A6C
	thumb_func_end ov12_02229B28

	thumb_func_start ov12_02229C5C
ov12_02229C5C: ; 0x02229C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x41
	lsl r1, r1, #2
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	ldr r2, _02229DE8 ; =0xFFFF0000
	mov r1, #0
	and r2, r0
	lsl r0, r0, #0x10
	str r1, [r4, #0x1c]
	lsr r2, r2, #0x10
	str r2, [r4, #0x20]
	lsr r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02229CCE
	str r1, [r4, #0x20]
_02229CCE:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02229CD8
	mov r0, #0xff
	str r0, [r4, #0x24]
_02229CD8:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov12_0222026C
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl ov12_02220250
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02229D00
	add r0, r5, #0
	bl ov12_02220240
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220240
	b _02229D0E
_02229D00:
	add r0, r5, #0
	bl ov12_02220248
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_02220248
_02229D0E:
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _02229D1A
	bl GF_AssertFail
_02229D1A:
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	add r2, sp, #0x14
	bl ov12_02235508
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	add r2, sp, #8
	bl ov12_02235508
	cmp r6, #0
	bne _02229D3E
	add r0, sp, #0x14
	bl ov12_02235748
	ldr r0, [sp, #8]
	str r0, [sp, #0x14]
	b _02229D48
_02229D3E:
	add r0, sp, #8
	bl ov12_02235748
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
_02229D48:
	ldr r0, [sp, #0x14]
	mov r1, #0xac
	bl _s32_div_f
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0xac
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	bl _s32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0xac
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #6]
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r7, #0x10
	add r0, #0xa8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02229DA6
	add r6, r4, #0
	add r6, #0xa8
_02229D98:
	add r0, r6, #0
	bl ov12_02225C14
	ldr r0, [r4, #0x20]
	add r5, r5, #1
	cmp r5, r0
	blt _02229D98
_02229DA6:
	ldr r0, [r4, #0x24]
	cmp r0, #0xff
	beq _02229DB0
	add r0, r0, #1
	str r0, [r4, #0x1c]
_02229DB0:
	mov r0, #0xa8
	ldrsh r3, [r4, r0]
	ldr r1, [r4, #0x38]
	mov r2, #0xac
	add r0, r3, #0
	ldr r3, [r1, #0x20]
	mul r0, r2
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	add r0, r0, r3
	str r0, [r1, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x40]
	ldr r1, _02229DEC ; =ov12_02229A6C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229DE8: .word 0xFFFF0000
_02229DEC: .word ov12_02229A6C
	thumb_func_end ov12_02229C5C

	thumb_func_start ov12_02229DF0
ov12_02229DF0: ; 0x02229DF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov12_02229A50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xcc
	bl ov12_02225CE4
	cmp r0, #0
	bne _02229E2A
	cmp r4, #0
	bne _02229E2A
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_02014724
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r5, #0
	bl ov12_02235E80
	pop {r4, r5, r6, pc}
_02229E2A:
	mov r1, #0xa8
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x38]
	mov r2, #0xac
	add r3, r1, #0
	ldr r1, [r0, #0x20]
	mul r3, r2
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r3, r1
	str r1, [r0, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02229DF0

	thumb_func_start ov12_02229E54
ov12_02229E54: ; 0x02229E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0x41
	lsl r1, r1, #2
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02229980
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02225964
	add r5, r0, #0
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	add r2, sp, #0x20
	bl ov12_02235508
	ldr r1, [r4, #0x18]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov12_02235508
	ldr r0, [sp, #0x20]
	mov r1, #0xac
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0xac
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	mov r1, #0xac
	bl _s32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	bl _s32_div_f
	lsl r1, r7, #0x10
	asr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	mov r3, #0xc
	add r2, r1, #0
	mul r2, r5
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r2, r6, #0x10
	add r1, r4, #0
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	add r1, #0xcc
	lsl r0, r0, #0xc
	neg r0, r0
	str r0, [sp, #0xc]
	ldrsh r6, [r4, r3]
	add r0, r4, #0
	add r0, #0xa8
	add r3, r6, #0
	ldr r6, [sp, #0x10]
	mul r3, r5
	add r3, r6, r3
	lsl r3, r3, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225C98
	cmp r5, #0
	ldr r2, _02229F8C ; =0x00005C71
	ble _02229F1A
	ldr r1, _02229F90 ; =0x00000E38
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
	b _02229F2A
_02229F1A:
	ldr r1, _02229F94 ; =0x00003FFF
	add r0, r4, #0
	add r0, #0xf0
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
_02229F2A:
	ldr r0, [r4, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02229F4A
	add r6, r4, #0
	add r7, r4, #0
	add r6, #0xa8
	add r7, #0xcc
_02229F3A:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02225CE4
	ldr r0, [r4, #0x20]
	add r5, r5, #1
	cmp r5, r0
	blt _02229F3A
_02229F4A:
	ldr r0, [r4, #0x24]
	cmp r0, #0xff
	beq _02229F54
	add r0, r0, #1
	str r0, [r4, #0x1c]
_02229F54:
	mov r0, #0xa8
	ldrsh r3, [r4, r0]
	ldr r1, [r4, #0x38]
	mov r2, #0xac
	add r0, r3, #0
	ldr r3, [r1, #0x20]
	mul r0, r2
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	add r0, r0, r3
	str r0, [r1, #0x28]
	mov r1, #0xaa
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	mul r2, r1
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x40]
	ldr r1, _02229F98 ; =ov12_02229DF0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02229F8C: .word 0x00005C71
_02229F90: .word 0x00000E38
_02229F94: .word 0x00003FFF
_02229F98: .word ov12_02229DF0
	thumb_func_end ov12_02229E54

	thumb_func_start ov12_02229F9C
ov12_02229F9C: ; 0x02229F9C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov12_02229A50
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x58
	bl ov12_02225AE0
	cmp r0, #0
	bne _02229FD2
	cmp r4, #0
	bne _02229FD2
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_02014724
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02229FD2:
	add r0, r5, #0
	add r0, #0x8c
	ldr r2, [r0, #0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	mov r3, #0xac
	add r1, r0, #0
	mul r1, r3
	add r1, r2, r1
	add r2, r5, #0
	add r2, #0x88
	ldr r4, [r2, #0]
	mov r2, #0x58
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0x38]
	mul r3, r2
	ldr r2, [r0, #0x20]
	add r3, r4, r3
	ldr r2, [r2, #0]
	ldr r2, [r2, #4]
	add r2, r3, r2
	str r2, [r0, #0x28]
	ldr r2, [r5, #0x38]
	ldr r0, [r2, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r2, #0x2c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02229F9C

	thumb_func_start ov12_0222A00C
ov12_0222A00C: ; 0x0222A00C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x94
	add r4, r0, #0
	bl ov12_02235E50
	add r5, r0, #0
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x3c
	bl ov12_0223595C
	add r0, r4, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #4
	bl ov12_02220280
	str r0, [r5, #0x10]
	add r0, r4, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r5, #0x18]
	add r0, r4, #0
	mov r1, #7
	bl ov12_02220280
	str r0, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #8
	bl ov12_02220280
	str r0, [r5, #0x20]
	cmp r0, #0
	bne _0222A08A
	add r0, r4, #0
	bl ov12_02220240
	b _0222A090
_0222A08A:
	add r0, r4, #0
	bl ov12_02220248
_0222A090:
	str r0, [r5, #0x24]
	add r2, r5, #0
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	add r2, #0x88
	bl ov12_02235508
	ldr r1, [r5, #0]
	add r0, r4, #0
	bl ov12_0222026C
	str r0, [r5, #0x38]
	add r0, r4, #0
	mov r1, #9
	bl ov12_02220280
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_02220260
	str r0, [r5, #0x34]
	ldr r1, [r5, #4]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r7, r0, #0
	ldr r1, [r5, #0x10]
	ldr r0, _0222A170 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r1, r4, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsl r2, r6, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	lsl r3, r7, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x58
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov12_02225A5C
	add r0, r5, #0
	add r0, #0x58
	bl ov12_02225AE0
	add r0, r5, #0
	add r0, #0x8c
	ldr r2, [r0, #0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	mov r3, #0x58
	mov r4, #0xac
	add r1, r0, #0
	add r0, r5, #0
	mul r1, r4
	ldrsh r3, [r5, r3]
	add r0, #0x88
	add r2, r2, r1
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0]
	mul r4, r3
	add r3, r0, r4
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r3, r0
	str r0, [r1, #0x28]
	ldr r1, [r5, #0x38]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r2, r0
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x40]
	ldr r1, _0222A174 ; =ov12_02229F9C
	add r2, r5, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222A170: .word 0x0000FFFF
_0222A174: .word ov12_02229F9C
	thumb_func_end ov12_0222A00C

	thumb_func_start ov12_0222A178
ov12_0222A178: ; 0x0222A178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D3B8
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	bne _0222A19E
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0222A19E:
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222A178

	thumb_func_start ov12_0222A1AC
ov12_0222A1AC: ; 0x0222A1AC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x20
	add r5, r0, #0
	add r4, r3, #0
	bl ov12_02235E50
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	str r4, [r7, #0x1c]
	bl ov12_02220280
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200D5DC
	ldr r0, [r7, #4]
	ldr r1, _0222A1F0 ; =ov12_0222A178
	add r2, r7, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222A1F0: .word ov12_0222A178
	thumb_func_end ov12_0222A1AC

	thumb_func_start ov12_0222A1F4
ov12_0222A1F4: ; 0x0222A1F4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222A206
	cmp r0, #1
	beq _0222A284
	b _0222A31C
_0222A206:
	ldr r1, [r4, #0x34]
	ldr r0, _0222A340 ; =0x0223A03C
	lsl r2, r1, #1
	ldrsh r6, [r0, r2]
	add r0, r1, #1
	str r0, [r4, #0x34]
	cmp r6, #0xff
	beq _0222A256
	cmp r6, #0
	bne _0222A24A
	ldr r0, [r4, #0x1c]
	bl sub_0200D454
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222339C
	cmp r5, r0
	ldr r0, [r4, #4]
	bne _0222A23E
	mov r1, #2
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	b _0222A24A
_0222A23E:
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
_0222A24A:
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	mov r2, #0
	bl sub_0200D5DC
	b _0222A332
_0222A256:
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	add r0, r4, #0
	ldr r2, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r1, #0
	mov r3, #4
	bl ov12_02225D50
	mov r1, #7
	ldr r0, [r4, #0x1c]
	mvn r1, r1
	mov r2, #0x10
	bl sub_0200D7E0
	mov r0, #0
	str r0, [r4, #0x34]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A332
_0222A284:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225DA0
	cmp r0, #1
	bne _0222A29E
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
	b _0222A332
_0222A29E:
	ldr r0, [r4, #0x34]
	cmp r0, #5
	ble _0222A2AC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A332
_0222A2AC:
	add r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #5
	bhi _0222A332
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222A2C0: ; jump table
	.short _0222A332 - _0222A2C0 - 2 ; case 0
	.short _0222A2CC - _0222A2C0 - 2 ; case 1
	.short _0222A2DC - _0222A2C0 - 2 ; case 2
	.short _0222A2EC - _0222A2C0 - 2 ; case 3
	.short _0222A2FC - _0222A2C0 - 2 ; case 4
	.short _0222A30C - _0222A2C0 - 2 ; case 5
_0222A2CC:
	add r0, r4, #0
	ldr r1, _0222A344 ; =0x00000E38
	ldr r2, _0222A348 ; =0xFFFFF1C8
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A2DC:
	add r0, r4, #0
	ldr r1, _0222A348 ; =0xFFFFF1C8
	ldr r2, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A2EC:
	add r0, r4, #0
	ldr r1, _0222A344 ; =0x00000E38
	ldr r2, _0222A348 ; =0xFFFFF1C8
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A2FC:
	add r0, r4, #0
	ldr r1, _0222A348 ; =0xFFFFF1C8
	ldr r2, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r3, #4
	bl ov12_02225D50
	b _0222A332
_0222A30C:
	add r0, r4, #0
	ldr r1, _0222A344 ; =0x00000E38
	add r0, #0x20
	mov r2, #0
	mov r3, #2
	bl ov12_02225D50
	b _0222A332
_0222A31C:
	ldr r0, [r4, #0x1c]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0222A332:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222A340: .word 0x0223A03C
_0222A344: .word 0x00000E38
_0222A348: .word 0xFFFFF1C8
	thumb_func_end ov12_0222A1F4

	thumb_func_start ov12_0222A34C
ov12_0222A34C: ; 0x0222A34C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x38
	add r5, r0, #0
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	str r6, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl ov12_02220248
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov12_022258E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov12_022258E0
	add r2, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	bl sub_0200D4C4
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	ldr r0, [r4, #0x1c]
	bne _0222A3AC
	mov r1, #1
	bl sub_0200D364
	b _0222A3B2
_0222A3AC:
	mov r1, #0
	bl sub_0200D364
_0222A3B2:
	ldr r0, [r4, #4]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0xc
	bl sub_0200D5DC
	ldr r0, [r4, #4]
	ldr r1, _0222A3D8 ; =ov12_0222A1F4
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A3D8: .word ov12_0222A1F4
	thumb_func_end ov12_0222A34C

	thumb_func_start ov12_0222A3DC
ov12_0222A3DC: ; 0x0222A3DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D3B8
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	bne _0222A402
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0222A402:
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222A3DC

	thumb_func_start ov12_0222A410
ov12_0222A410: ; 0x0222A410
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x38
	add r5, r0, #0
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	str r6, [r4, #0x1c]
	bl ov12_02220248
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov12_022258E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov12_022258E0
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222A458
	mov r6, #0x48
	mov r2, #0x20
	mov r5, #0
	b _0222A46E
_0222A458:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222A46A
	mov r2, #0x7e
	mov r5, #1
	b _0222A46E
_0222A46A:
	mov r2, #0x20
	mov r5, #0
_0222A46E:
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	ldr r0, [r4, #4]
	ldr r1, _0222A49C ; =ov12_0222A3DC
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A49C: .word ov12_0222A3DC
	thumb_func_end ov12_0222A410

	thumb_func_start ov12_0222A4A0
ov12_0222A4A0: ; 0x0222A4A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0222A592
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222A4BA: ; jump table
	.short _0222A4C2 - _0222A4BA - 2 ; case 0
	.short _0222A4E8 - _0222A4BA - 2 ; case 1
	.short _0222A500 - _0222A4BA - 2 ; case 2
	.short _0222A53C - _0222A4BA - 2 ; case 3
_0222A4C2:
	mov r0, #0xa0
	str r0, [sp]
	mov r3, #0x70
	mov r0, #1
	str r3, [sp, #4]
	mov r2, #0x15
	str r2, [sp, #8]
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x24
	add r1, #0x48
	sub r2, #0x33
	bl ov12_02225C98
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A4E8:
	add r0, r4, #0
	ldr r2, [r4, #0x1c]
	add r0, #0x24
	add r1, #0x48
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222A5AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A500:
	ldr r0, [r4, #0x1c]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0222A5AA
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #0x10
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x20
	add r2, #0x21
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #4]
	bl ov12_02235780
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A53C:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222A554
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_0222A554:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x10
	bhs _0222A56C
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
_0222A56C:
	add r0, r4, #0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222A5BC ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222A5AA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A5AA
_0222A592:
	ldr r0, [r4, #0x1c]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0222A5AA:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0222A5BC: .word 0x04000052
	thumb_func_end ov12_0222A4A0

	thumb_func_start ov12_0222A5C0
ov12_0222A5C0: ; 0x0222A5C0
	push {r4, r5, r6, lr}
	mov r1, #0x6c
	add r6, r0, #0
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223595C
	mov r1, #0x1d
	str r5, [r4, #0x1c]
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0xa0
	bl sub_0200D4C4
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
	ldr r0, [r4, #4]
	ldr r1, _0222A600 ; =ov12_0222A4A0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222A600: .word ov12_0222A4A0
	thumb_func_end ov12_0222A5C0

	thumb_func_start ov12_0222A604
ov12_0222A604: ; 0x0222A604
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov12_02220280
	cmp r0, #0
	beq _0222A61A
	add r0, r4, #0
	bl ov12_02226924
	pop {r4, pc}
_0222A61A:
	add r0, r4, #0
	bl ov12_02226954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222A604

	thumb_func_start ov12_0222A624
ov12_0222A624: ; 0x0222A624
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x18
	bls _0222A632
	b _0222A826
_0222A632:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222A63E: ; jump table
	.short _0222A670 - _0222A63E - 2 ; case 0
	.short _0222A826 - _0222A63E - 2 ; case 1
	.short _0222A826 - _0222A63E - 2 ; case 2
	.short _0222A826 - _0222A63E - 2 ; case 3
	.short _0222A826 - _0222A63E - 2 ; case 4
	.short _0222A71C - _0222A63E - 2 ; case 5
	.short _0222A71C - _0222A63E - 2 ; case 6
	.short _0222A746 - _0222A63E - 2 ; case 7
	.short _0222A826 - _0222A63E - 2 ; case 8
	.short _0222A826 - _0222A63E - 2 ; case 9
	.short _0222A760 - _0222A63E - 2 ; case 10
	.short _0222A760 - _0222A63E - 2 ; case 11
	.short _0222A78A - _0222A63E - 2 ; case 12
	.short _0222A826 - _0222A63E - 2 ; case 13
	.short _0222A826 - _0222A63E - 2 ; case 14
	.short _0222A7A2 - _0222A63E - 2 ; case 15
	.short _0222A7A2 - _0222A63E - 2 ; case 16
	.short _0222A7CC - _0222A63E - 2 ; case 17
	.short _0222A826 - _0222A63E - 2 ; case 18
	.short _0222A826 - _0222A63E - 2 ; case 19
	.short _0222A826 - _0222A63E - 2 ; case 20
	.short _0222A826 - _0222A63E - 2 ; case 21
	.short _0222A7E4 - _0222A63E - 2 ; case 22
	.short _0222A7E4 - _0222A63E - 2 ; case 23
	.short _0222A80E - _0222A63E - 2 ; case 24
_0222A670:
	ldr r0, [r4, #0x34]
	ldr r1, _0222A86C ; =0xFFFF1FFF
	cmp r0, #0
	bne _0222A6CA
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	add r5, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r3, [r5]
	mov r2, #0x3f
	mov r1, #0xf
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r5]
	add r5, r0, #0
	add r5, #0x4a
	ldrh r6, [r5]
	mov r1, #0x1f
	bic r6, r2
	orr r1, r6
	orr r1, r3
	strh r1, [r5]
	add r1, r0, #0
	mov r2, #0x80
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _0222A870 ; =0x0000A0C0
	add r0, #0x44
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r1, #0x23
	add sp, #4
	str r1, [r4, #0x3c]
	pop {r3, r4, r5, r6, pc}
_0222A6CA:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	add r5, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r3, [r5]
	mov r2, #0x3f
	mov r1, #0xf
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r5]
	add r5, r0, #0
	add r5, #0x4a
	ldrh r6, [r5]
	mov r1, #0x1f
	bic r6, r2
	orr r1, r6
	orr r1, r3
	strh r1, [r5]
	add r1, r0, #0
	lsl r2, r3, #0xa
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _0222A874 ; =0x000056C0
	add r0, #0x44
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	add r1, #0x23
	add sp, #4
	str r1, [r4, #0x3c]
	pop {r3, r4, r5, r6, pc}
_0222A71C:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A74C
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0222A74C
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A746:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _0222A74E
_0222A74C:
	b _0222A868
_0222A74E:
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A760:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A78A:
	ldr r0, [r4, #0x38]
	cmp r0, #2
	beq _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A7A2:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #2
	bne _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A7CC:
	ldr r0, [r4, #0x38]
	cmp r0, #3
	beq _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A7E4:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #3
	bne _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #8
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A80E:
	ldr r0, [r4, #0x38]
	cmp r0, #4
	beq _0222A868
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #8
	bl sub_0200D5DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222A826:
	ldr r1, [r4, #0x3c]
	cmp r0, r1
	ble _0222A868
	ldr r0, [r4, #0x38]
	cmp r0, #0x14
	ldr r0, [r4, #0x1c]
	bge _0222A862
	mov r1, #0
	mov r2, #4
	bl sub_0200D5DC
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r0, sp, #0
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x82
	ble _0222A858
	ldr r0, [r4, #0x1c]
	bl sub_0200D3F4
_0222A858:
	ldr r0, [r4, #0x38]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x38]
	pop {r3, r4, r5, r6, pc}
_0222A862:
	mov r1, #0
	bl sub_0200D3F4
_0222A868:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222A86C: .word 0xFFFF1FFF
_0222A870: .word 0x0000A0C0
_0222A874: .word 0x000056C0
	thumb_func_end ov12_0222A624

	thumb_func_start ov12_0222A878
ov12_0222A878: ; 0x0222A878
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0222A88A
	add r0, r4, #0
	bl ov12_0222A624
_0222A88A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	blt _0222A8E2
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0222A8F0 ; =0xFFFF1FFF
	and r1, r2
	add r2, r0, #0
	str r1, [r0, #0]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	bic r3, r1
	strh r3, [r2]
	add r2, r0, #0
	add r2, #0x4a
	ldrh r3, [r2]
	bic r3, r1
	strh r3, [r2]
	add r2, r0, #0
	mov r1, #0
	add r2, #0x40
	strh r1, [r2]
	add r0, #0x44
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0222A8E2:
	ldr r0, [r4, #0x1c]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222A8F0: .word 0xFFFF1FFF
	thumb_func_end ov12_0222A878

	thumb_func_start ov12_0222A8F4
ov12_0222A8F4: ; 0x0222A8F4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x40
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	str r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #0x2c]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x30]
	add r0, r5, #0
	mov r1, #6
	bl ov12_02220280
	str r0, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x20]
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x28]
	cmp r1, #0xff
	beq _0222A966
	add r0, r5, #0
	bl ov12_02223428
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0200D460
_0222A966:
	ldr r1, [r4, #0x2c]
	cmp r1, #0xff
	beq _0222A972
	ldr r0, [r4, #0x1c]
	bl sub_0200D474
_0222A972:
	add r0, r5, #0
	bl ov12_02223364
	cmp r0, #1
	beq _0222A9A4
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	cmp r0, #2
	beq _0222A994
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	cmp r0, #3
	bne _0222A9A4
_0222A994:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222A9A4:
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_02220248
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	cmp r0, #0xff
	beq _0222A9F2
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02235254
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02235254
	cmp r7, #3
	bhi _0222A9F2
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222A9E6: ; jump table
	.short _0222A9EE - _0222A9E6 - 2 ; case 0
	.short _0222AA78 - _0222A9E6 - 2 ; case 1
	.short _0222AA34 - _0222A9E6 - 2 ; case 2
	.short _0222AABC - _0222A9E6 - 2 ; case 3
_0222A9EE:
	cmp r6, #5
	bls _0222A9F4
_0222A9F2:
	b _0222AAFE
_0222A9F4:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AA00: ; jump table
	.short _0222AAFE - _0222AA00 - 2 ; case 0
	.short _0222AAFE - _0222AA00 - 2 ; case 1
	.short _0222AA0C - _0222AA00 - 2 ; case 2
	.short _0222AA16 - _0222AA00 - 2 ; case 3
	.short _0222AA20 - _0222AA00 - 2 ; case 4
	.short _0222AA2A - _0222AA00 - 2 ; case 5
_0222AA0C:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA16:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA20:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA2A:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA34:
	cmp r6, #5
	bhi _0222AAFE
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AA44: ; jump table
	.short _0222AAFE - _0222AA44 - 2 ; case 0
	.short _0222AAFE - _0222AA44 - 2 ; case 1
	.short _0222AA50 - _0222AA44 - 2 ; case 2
	.short _0222AA5A - _0222AA44 - 2 ; case 3
	.short _0222AA64 - _0222AA44 - 2 ; case 4
	.short _0222AA6E - _0222AA44 - 2 ; case 5
_0222AA50:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA5A:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA64:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA6E:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AA78:
	cmp r0, #5
	bhi _0222AAFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AA88: ; jump table
	.short _0222AAFE - _0222AA88 - 2 ; case 0
	.short _0222AAFE - _0222AA88 - 2 ; case 1
	.short _0222AA94 - _0222AA88 - 2 ; case 2
	.short _0222AA9E - _0222AA88 - 2 ; case 3
	.short _0222AAA8 - _0222AA88 - 2 ; case 4
	.short _0222AAB2 - _0222AA88 - 2 ; case 5
_0222AA94:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AA9E:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AAA8:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AAB2:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AABC:
	cmp r0, #5
	bhi _0222AAFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AACC: ; jump table
	.short _0222AAFE - _0222AACC - 2 ; case 0
	.short _0222AAFE - _0222AACC - 2 ; case 1
	.short _0222AAD8 - _0222AACC - 2 ; case 2
	.short _0222AAE2 - _0222AACC - 2 ; case 3
	.short _0222AAEC - _0222AACC - 2 ; case 4
	.short _0222AAF6 - _0222AACC - 2 ; case 5
_0222AAD8:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	b _0222AAFE
_0222AAE2:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AAEC:
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	b _0222AAFE
_0222AAF6:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
_0222AAFE:
	ldr r0, [r4, #4]
	ldr r1, _0222AB0C ; =ov12_0222A878
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222AB0C: .word ov12_0222A878
	thumb_func_end ov12_0222A8F4

	thumb_func_start ov12_0222AB10
ov12_0222AB10: ; 0x0222AB10
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r2, r0, #0
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne _0222AB2C
	ldr r0, [r6, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0222AB2C:
	sub r0, r0, #1
	str r0, [r6, #0x2c]
	mov r4, #0
	add r5, r6, #0
_0222AB34:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0222AB3E
	bl sub_0200D330
_0222AB3E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0222AB34
	ldr r0, [r6, #0xc]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_0222AB10

	thumb_func_start ov12_0222AB50
ov12_0222AB50: ; 0x0222AB50
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x34
	add r4, r0, #0
	bl ov12_02235E50
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223595C
	add r0, r4, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	bne _0222AB74
	mov r0, #3
	b _0222AB7C
_0222AB74:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02220280
_0222AB7C:
	ldr r5, _0222ABB4 ; =0x0223B120
	str r0, [r7, #0x2c]
	mov r6, #0
	add r4, r7, #0
_0222AB84:
	ldr r0, [r7, #4]
	add r1, r6, #0
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _0222AB98
	ldr r1, [r5, #0]
	bl sub_0200D474
_0222AB98:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0222AB84
	ldr r0, [r7, #4]
	ldr r1, _0222ABB8 ; =ov12_0222AB10
	add r2, r7, #0
	bl ov12_022201E8
	add r1, r7, #0
	bl ov12_0222AB10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222ABB4: .word 0x0223B120
_0222ABB8: .word ov12_0222AB10
	thumb_func_end ov12_0222AB50

	thumb_func_start ov12_0222ABBC
ov12_0222ABBC: ; 0x0222ABBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0222ABD0
	cmp r0, #1
	beq _0222AC16
	b _0222AC2E
_0222ABD0:
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ov12_022233EC
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov12_022266E8
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ov12_0221FDE4
	mov r1, #0xc8
	str r1, [sp]
	mov r3, #2
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0xa0
	mov r2, #0xb6
	lsl r3, r3, #0x10
	bl ov12_0222662C
	str r0, [r5, #0x24]
	ldrb r0, [r5, #8]
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_0222AC16:
	ldr r0, [r5, #0]
	add r1, r0, #1
	str r1, [r5, #0]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0222AC3C
	ldr r0, [r5, #0x24]
	bl ov12_0222669C
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
_0222AC2E:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
_0222AC3C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_0222ABBC

	thumb_func_start ov12_0222AC40
ov12_0222AC40: ; 0x0222AC40
	push {r3, r4, r5, lr}
	mov r1, #0x28
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r1, _0222AC6C ; =ov12_0222ABBC
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222AC6C: .word ov12_0222ABBC
	thumb_func_end ov12_0222AC40

	.rodata


	.global Unk_ov12_0223A03C
Unk_ov12_0223A03C: ; 0x0223A03C
	.incbin "incbin/overlay12_rodata.bin", 0x1AA8, 0x56


	.data


	.global Unk_ov12_0223B120
Unk_ov12_0223B120: ; 0x0223B120
	.incbin "incbin/overlay12_data.bin", 0x0, 0x10

