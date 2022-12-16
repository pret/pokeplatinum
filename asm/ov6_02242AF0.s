	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_02242AF0
ov6_02242AF0: ; 0x02242AF0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #6
	bl sub_02027F6C
	mov r1, #0x42
	lsl r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	beq _02242B20
	cmp r0, #1
	beq _02242B28
	cmp r0, #2
	beq _02242B30
	b _02242B36
_02242B20:
	mov r0, #0xa
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	b _02242B36
_02242B28:
	mov r0, #0x52
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	b _02242B36
_02242B30:
	mov r0, #0x1b
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
_02242B36:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x50]
	ldr r2, _02242B54 ; =0x000001DB
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x30]
	add r3, sp, #8
	bl ov5_021E19CC
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02242B54: .word 0x000001DB
	thumb_func_end ov6_02242AF0

	thumb_func_start ov6_02242B58
ov6_02242B58: ; 0x02242B58
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	str r2, [sp]
	bl sub_0203D174
	bl sub_02027860
	mov r1, #6
	bl sub_02027F6C
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x14
	mov r0, #0
_02242B80:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02242B80
	mov r0, #0
	strb r0, [r5, #5]
	ldrh r1, [r4]
	cmp r1, #0
	beq _02242B9C
	cmp r1, #1
	beq _02242BC2
	cmp r1, #2
	beq _02242BEA
	b _02242C0E
_02242B9C:
	mov r1, #1
	strb r1, [r5, #4]
	cmp r6, #1
	bne _02242BB2
	mov r0, #0x52
	lsl r0, r0, #0x10
	str r0, [r5, #0xc]
	strh r1, [r4]
	mov r0, #0x4a
	str r0, [r5, #0x10]
	b _02242C12
_02242BB2:
	mov r0, #0x1b
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	mov r0, #2
	strh r0, [r4]
	mov r0, #0x64
	str r0, [r5, #0x10]
	b _02242C12
_02242BC2:
	cmp r6, #0
	bne _02242BD6
	mov r1, #0xa
	strb r0, [r5, #4]
	lsl r1, r1, #0x12
	str r1, [r5, #0xc]
	strh r0, [r4]
	mov r0, #0x2e
	str r0, [r5, #0x10]
	b _02242C12
_02242BD6:
	mov r0, #1
	strb r0, [r5, #4]
	mov r0, #0x1b
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	mov r0, #2
	strh r0, [r4]
	mov r0, #0x64
	str r0, [r5, #0x10]
	b _02242C12
_02242BEA:
	strb r0, [r5, #4]
	cmp r6, #0
	bne _02242BFE
	mov r1, #0xa
	lsl r1, r1, #0x12
	str r1, [r5, #0xc]
	strh r0, [r4]
	mov r0, #0x2e
	str r0, [r5, #0x10]
	b _02242C12
_02242BFE:
	mov r0, #0x52
	lsl r0, r0, #0x10
	str r0, [r5, #0xc]
	mov r0, #1
	strh r0, [r4]
	mov r0, #0x58
	str r0, [r5, #0x10]
	b _02242C12
_02242C0E:
	bl sub_02022974
_02242C12:
	ldr r0, [sp]
	str r0, [r5, #8]
	ldr r0, [sp]
	cmp r0, #3
	bne _02242C20
	ldr r0, _02242C30 ; =ov6_02242D94
	b _02242C22
_02242C20:
	ldr r0, _02242C34 ; =ov6_02242E60
_02242C22:
	str r0, [r5, #0]
	ldr r0, [r7, #0x10]
	ldr r1, _02242C38 ; =ov6_02242C5C
	add r2, r5, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242C30: .word ov6_02242D94
_02242C34: .word ov6_02242E60
_02242C38: .word ov6_02242C5C
	thumb_func_end ov6_02242B58

	thumb_func_start ov6_02242C3C
ov6_02242C3C: ; 0x02242C3C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #6
	bl sub_02027F6C
	ldrh r0, [r0]
	cmp r0, r4
	bne _02242C58
	mov r0, #5
	pop {r4, pc}
_02242C58:
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ov6_02242C3C

	thumb_func_start ov6_02242C5C
ov6_02242C5C: ; 0x02242C5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #5]
	cmp r1, #5
	bls _02242C78
	b _02242D84
_02242C78:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242C84: ; jump table
	.short _02242C90 - _02242C84 - 2 ; case 0
	.short _02242D0C - _02242C84 - 2 ; case 1
	.short _02242D1E - _02242C84 - 2 ; case 2
	.short _02242D30 - _02242C84 - 2 ; case 3
	.short _02242D68 - _02242C84 - 2 ; case 4
	.short _02242D7A - _02242C84 - 2 ; case 5
_02242C90:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _02242D8C ; =0x000001DB
	bl ov5_021E18CC
	bl ov5_021E18BC
	add r7, r0, #0
	ldr r0, _02242D8C ; =0x000001DB
	ldr r1, [r5, #0x30]
	bl ov5_021EF9E8
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _02242CD4
	add r2, r0, #0
	add r2, #8
	beq _02242CC8
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02242CC8
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02242CCA
_02242CC8:
	mov r1, #0
_02242CCA:
	cmp r1, #0
	beq _02242CD4
	ldr r1, [r1, #0]
	add r6, r0, r1
	b _02242CD6
_02242CD4:
	mov r6, #0
_02242CD6:
	ldr r0, [r5, #0x30]
	bl ov5_021EFAA0
	str r7, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r3, #0xff
	str r3, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #0x10
	add r3, #0xdc
	bl ov5_021D41C8
	ldr r0, [r5, #0x54]
	mov r1, #0x10
	mov r2, #0
	bl ov5_021D4250
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02242D84
_02242D0C:
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _02242D18
	ldr r0, _02242D90 ; =0x000006DB
	bl sub_02005748
_02242D18:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02242D1E:
	ldr r0, _02242D90 ; =0x000006DB
	bl sub_020057D4
	cmp r0, #0
	bne _02242D84
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02242D84
_02242D30:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _02242D8C ; =0x000001DB
	bl ov5_021E18CC
	add r6, r0, #0
	add r0, sp, #0x18
	add r1, r6, #0
	bl ov5_021E1894
	add r0, r5, #0
	add r2, r4, #0
	ldr r5, [r4, #0]
	add r1, r4, #0
	add r2, #0xc
	add r3, sp, #0x18
	blx r5
	cmp r0, #0
	beq _02242D5E
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02242D5E:
	add r0, r6, #0
	add r1, sp, #0x18
	bl ov5_021E18A4
	b _02242D84
_02242D68:
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #0x10
	bl ov5_021D42B0
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02242D84
_02242D7A:
	bl sub_020181C4
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02242D84:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02242D8C: .word 0x000001DB
_02242D90: .word 0x000006DB
	thumb_func_end ov6_02242C5C

	thumb_func_start ov6_02242D94
ov6_02242D94: ; 0x02242D94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r0, [r5, #4]
	add r4, r3, #0
	add r6, r2, #0
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02242DF4
	ldrb r1, [r5, #6]
	lsl r2, r1, #2
	ldr r1, _02242E54 ; =0x02249074
	ldr r1, [r1, r2]
	sub r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #6]
	cmp r0, #6
	bhs _02242E42
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r1, r0, #0x10
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bgt _02242E42
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	ldrb r2, [r5, #6]
	ldr r0, _02242E58 ; =0x02249034
	ldrb r1, [r5, #7]
	ldrb r0, [r0, r2]
	cmp r1, r0
	blo _02242E42
	cmp r2, #0
	bne _02242DE8
	ldr r0, _02242E5C ; =0x000006DA
	bl sub_02005748
_02242DE8:
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #7]
	b _02242E42
_02242DF4:
	ldrb r1, [r5, #6]
	lsl r2, r1, #2
	ldr r1, _02242E54 ; =0x02249074
	ldr r1, [r1, r2]
	add r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #6]
	cmp r0, #6
	bhs _02242E42
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r1, r0, #0x10
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blt _02242E42
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	ldrb r2, [r5, #6]
	ldr r0, _02242E58 ; =0x02249034
	ldrb r1, [r5, #7]
	ldrb r0, [r0, r2]
	cmp r1, r0
	blo _02242E42
	cmp r2, #0
	bne _02242E38
	ldr r0, _02242E5C ; =0x000006DA
	bl sub_02005748
_02242E38:
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #7]
_02242E42:
	ldr r1, [r4, #8]
	ldr r0, [r6, #0]
	cmp r1, r0
	bne _02242E4E
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242E4E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02242E54: .word 0x02249074
_02242E58: .word 0x02249034
_02242E5C: .word 0x000006DA
	thumb_func_end ov6_02242D94

	thumb_func_start ov6_02242E60
ov6_02242E60: ; 0x02242E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r7, #0]
	cmp r1, r0
	bne _02242E94
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242E94:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02242EFC
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #1
	bne _02242F5C
	ldrb r1, [r4, #6]
	add r0, r6, #0
	lsl r2, r1, #2
	ldr r1, _02242F64 ; =0x02249058
	ldr r1, [r1, r2]
	bl sub_02065638
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhs _02242ED8
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	ble _02242ED8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02242ED0
	ldr r0, _02242F68 ; =0x000006D9
	bl sub_02005748
_02242ED0:
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _02242F5C
_02242ED8:
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bgt _02242F5C
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02242F5C
	cmp r0, #6
	bne _02242EF4
	ldr r0, _02242F6C ; =0x000006DA
	bl sub_02005748
_02242EF4:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	strb r0, [r4, #6]
	b _02242F5C
_02242EFC:
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #1
	bne _02242F5C
	ldrb r1, [r4, #6]
	add r0, r6, #0
	lsl r2, r1, #2
	ldr r1, _02242F70 ; =0x0224903C
	ldr r1, [r1, r2]
	bl sub_02065638
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhs _02242F3A
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bge _02242F3A
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02242F32
	ldr r0, _02242F68 ; =0x000006D9
	bl sub_02005748
_02242F32:
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _02242F5C
_02242F3A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	blt _02242F5C
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02242F5C
	cmp r0, #6
	bne _02242F56
	ldr r0, _02242F6C ; =0x000006DA
	bl sub_02005748
_02242F56:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	strb r0, [r4, #6]
_02242F5C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242F64: .word 0x02249058
_02242F68: .word 0x000006D9
_02242F6C: .word 0x000006DA
_02242F70: .word 0x0224903C
	thumb_func_end ov6_02242E60

	.rodata


	.global Unk_ov6_02249034
Unk_ov6_02249034: ; 0x02249034
	.incbin "incbin/overlay6_rodata.bin", 0x220, 0x228 - 0x220

	.global Unk_ov6_0224903C
Unk_ov6_0224903C: ; 0x0224903C
	.incbin "incbin/overlay6_rodata.bin", 0x228, 0x244 - 0x228

	.global Unk_ov6_02249058
Unk_ov6_02249058: ; 0x02249058
	.incbin "incbin/overlay6_rodata.bin", 0x244, 0x260 - 0x244

	.global Unk_ov6_02249074
Unk_ov6_02249074: ; 0x02249074
	.incbin "incbin/overlay6_rodata.bin", 0x260, 0x1C

